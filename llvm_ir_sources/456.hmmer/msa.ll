; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [49 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"failed to sre_strcat()\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"Parse error: no sequences were found for alignment %s\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str5 = private unnamed_addr constant [48 x i8] c"Parse error: No sequence for %s in alignment %s\00", align 1
@.str6 = private unnamed_addr constant [75 x i8] c"Parse error: some weights are set, but %s doesn't have one in alignment %s\00", align 1
@.str7 = private unnamed_addr constant [65 x i8] c"Parse error: sequence %s: length %d, expected %d in alignment %s\00", align 1
@.str8 = private unnamed_addr constant [79 x i8] c"Parse error: #=GR SS annotation for %s: length %d, expected %d in alignment %s\00", align 1
@.str9 = private unnamed_addr constant [79 x i8] c"Parse error: #=GR SA annotation for %s: length %d, expected %d in alignment %s\00", align 1
@.str10 = private unnamed_addr constant [77 x i8] c"Parse error: #=GC SS_cons annotation: length %d, expected %d in alignment %s\00", align 1
@.str11 = private unnamed_addr constant [77 x i8] c"Parse error: #=GC SA_cons annotation: length %d, expected %d in alignment %s\00", align 1
@.str12 = private unnamed_addr constant [72 x i8] c"Parse error: #=GC RF annotation: length %d, expected %d in alignment %s\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*
@.str14 = private unnamed_addr constant [8 x i8] c"[STDIN]\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"^.*\5C.gz$\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"%s: file does not exist\00", align 1
@.str17 = private unnamed_addr constant [37 x i8] c"filename > 255 char in MSAFileOpen()\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"gzip -dc %s\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"%s.ssi\00", align 1
@.str21 = private unnamed_addr constant [65 x i8] c"Can't autodetect alignment file format from a stdin or gzip pipe\00", align 1
@.str22 = private unnamed_addr constant [53 x i8] c"Can't determine format of multiple alignment file %s\00", align 1
@.str23 = private unnamed_addr constant [36 x i8] c"MSAFILE corrupted: bad format index\00", align 1
@.str24 = private unnamed_addr constant [42 x i8] c"can't write. no such alignment format %d\0A\00", align 1
@.str25 = private unnamed_addr constant [156 x i8] c"File %s does not appear to be an alignment file;\0Arather, it appears to be an unaligned file in %s format.\0AI'm expecting an alignment file in this context.\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @MSAAlloc(i32 %nseq, i32 %alen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !88), !dbg !463
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !89), !dbg !463
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 68, i64 360) #7, !dbg !464
  %0 = bitcast i8* %call to %struct.msa_struct*, !dbg !464
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %0}, i64 0, metadata !90), !dbg !464
  %conv = sext i32 %nseq to i64, !dbg !465
  %mul = shl nsw i64 %conv, 3, !dbg !465
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 69, i64 %mul) #7, !dbg !465
  %1 = bitcast i8* %call1 to i8**, !dbg !465
  %aseq = bitcast i8* %call to i8***, !dbg !465
  store i8** %1, i8*** %aseq, align 8, !dbg !465, !tbaa !466
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 70, i64 %mul) #7, !dbg !469
  %2 = bitcast i8* %call4 to i8**, !dbg !469
  %sqname = getelementptr inbounds i8* %call, i64 8, !dbg !469
  %3 = bitcast i8* %sqname to i8***, !dbg !469
  store i8** %2, i8*** %3, align 8, !dbg !469, !tbaa !466
  %mul6 = shl nsw i64 %conv, 2, !dbg !470
  %call7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 71, i64 %mul6) #7, !dbg !470
  %4 = bitcast i8* %call7 to i32*, !dbg !470
  %sqlen = getelementptr inbounds i8* %call, i64 328, !dbg !470
  %5 = bitcast i8* %sqlen to i32**, !dbg !470
  store i32* %4, i32** %5, align 8, !dbg !470, !tbaa !466
  %call10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 72, i64 %mul6) #7, !dbg !471
  %6 = bitcast i8* %call10 to float*, !dbg !471
  %wgt = getelementptr inbounds i8* %call, i64 16, !dbg !471
  %7 = bitcast i8* %wgt to float**, !dbg !471
  store float* %6, float** %7, align 8, !dbg !471, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !472
  %cmp113 = icmp sgt i32 %nseq, 0, !dbg !472
  br i1 %cmp113, label %for.body.lr.ph, label %for.end, !dbg !472

for.body.lr.ph:                                   ; preds = %entry
  %cmp19 = icmp eq i32 %alen, 0, !dbg !474
  %add = add nsw i32 %alen, 1, !dbg !474
  %conv21 = sext i32 %add to i64, !dbg !474
  br label %for.body, !dbg !472

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv115 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next116, %for.inc ]
  %8 = load i8*** %3, align 8, !dbg !476, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %8, i64 %indvars.iv115, !dbg !476
  store i8* null, i8** %arrayidx, align 8, !dbg !476, !tbaa !466
  %9 = load i32** %5, align 8, !dbg !477, !tbaa !466
  %arrayidx15 = getelementptr inbounds i32* %9, i64 %indvars.iv115, !dbg !477
  store i32 0, i32* %arrayidx15, align 4, !dbg !477, !tbaa !478
  %10 = load float** %7, align 8, !dbg !479, !tbaa !466
  %arrayidx18 = getelementptr inbounds float* %10, i64 %indvars.iv115, !dbg !479
  store float -1.000000e+00, float* %arrayidx18, align 4, !dbg !479, !tbaa !480
  br i1 %cmp19, label %if.else, label %if.then, !dbg !474

if.then:                                          ; preds = %for.body
  %call23 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 80, i64 %conv21) #7, !dbg !474
  %11 = load i8*** %aseq, align 8, !dbg !474, !tbaa !466
  %arrayidx26 = getelementptr inbounds i8** %11, i64 %indvars.iv115, !dbg !474
  store i8* %call23, i8** %arrayidx26, align 8, !dbg !474, !tbaa !466
  br label %for.inc, !dbg !474

if.else:                                          ; preds = %for.body
  %12 = load i8*** %aseq, align 8, !dbg !481, !tbaa !466
  %arrayidx29 = getelementptr inbounds i8** %12, i64 %indvars.iv115, !dbg !481
  store i8* null, i8** %arrayidx29, align 8, !dbg !481, !tbaa !466
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next116 = add i64 %indvars.iv115, 1, !dbg !472
  %lftr.wideiv117 = trunc i64 %indvars.iv.next116 to i32, !dbg !472
  %exitcond118 = icmp eq i32 %lftr.wideiv117, %nseq, !dbg !472
  br i1 %exitcond118, label %for.end, label %for.body, !dbg !472

for.end:                                          ; preds = %for.inc, %entry
  %alen30 = getelementptr inbounds i8* %call, i64 24, !dbg !482
  %13 = bitcast i8* %alen30 to i32*, !dbg !482
  store i32 %alen, i32* %13, align 4, !dbg !482, !tbaa !478
  %nseq31 = getelementptr inbounds i8* %call, i64 28, !dbg !483
  %14 = bitcast i8* %nseq31 to i32*, !dbg !483
  store i32 0, i32* %14, align 4, !dbg !483, !tbaa !478
  %nseqalloc = getelementptr inbounds i8* %call, i64 320, !dbg !484
  %15 = bitcast i8* %nseqalloc to i32*, !dbg !484
  store i32 %nseq, i32* %15, align 4, !dbg !484, !tbaa !478
  %nseqlump = getelementptr inbounds i8* %call, i64 324, !dbg !485
  %16 = bitcast i8* %nseqlump to i32*, !dbg !485
  store i32 %nseq, i32* %16, align 4, !dbg !485, !tbaa !478
  %flags = getelementptr inbounds i8* %call, i64 32, !dbg !486
  %sslen = getelementptr inbounds i8* %call, i64 336, !dbg !487
  call void @llvm.memset.p0i8.i64(i8* %flags, i8 0, i64 96, i32 4, i1 false), !dbg !488
  call void @llvm.memset.p0i8.i64(i8* %sslen, i8 0, i64 16, i32 8, i1 false), !dbg !487
  %call32 = tail call %struct.GKI* @GKIInit() #7, !dbg !489
  %index = getelementptr inbounds i8* %call, i64 312, !dbg !489
  %17 = bitcast i8* %index to %struct.GKI**, !dbg !489
  store %struct.GKI* %call32, %struct.GKI** %17, align 8, !dbg !489, !tbaa !466
  %lastidx = getelementptr inbounds i8* %call, i64 352, !dbg !490
  %18 = bitcast i8* %lastidx to i32*, !dbg !490
  store i32 0, i32* %18, align 4, !dbg !490, !tbaa !478
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !491
  %cutoff = getelementptr inbounds i8* %call, i64 128, !dbg !493
  %19 = bitcast i8* %cutoff to [6 x float]*, !dbg !493
  %cutoff_is_set = getelementptr inbounds i8* %call, i64 152, !dbg !495
  %20 = bitcast i8* %cutoff_is_set to [6 x i32]*, !dbg !495
  br label %for.body36, !dbg !491

for.body36:                                       ; preds = %for.body36, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body36 ]
  %arrayidx38 = getelementptr inbounds [6 x float]* %19, i64 0, i64 %indvars.iv, !dbg !493
  store float 0.000000e+00, float* %arrayidx38, align 4, !dbg !493, !tbaa !480
  %arrayidx40 = getelementptr inbounds [6 x i32]* %20, i64 0, i64 %indvars.iv, !dbg !495
  store i32 0, i32* %arrayidx40, align 4, !dbg !495, !tbaa !478
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !491
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !491
  %exitcond = icmp eq i32 %lftr.wideiv, 6, !dbg !491
  br i1 %exitcond, label %for.end43, label %for.body36, !dbg !491

for.end43:                                        ; preds = %for.body36
  %comment = getelementptr inbounds i8* %call, i64 176, !dbg !496
  %gs_tag = getelementptr inbounds i8* %call, i64 216, !dbg !497
  %gc_tag = getelementptr inbounds i8* %call, i64 248, !dbg !498
  %gr_tag = getelementptr inbounds i8* %call, i64 280, !dbg !499
  call void @llvm.memset.p0i8.i64(i8* %comment, i8 0, i64 36, i32 8, i1 false), !dbg !500
  call void @llvm.memset.p0i8.i64(i8* %gs_tag, i8 0, i64 28, i32 8, i1 false), !dbg !497
  call void @llvm.memset.p0i8.i64(i8* %gc_tag, i8 0, i64 28, i32 8, i1 false), !dbg !498
  call void @llvm.memset.p0i8.i64(i8* %gr_tag, i8 0, i64 28, i32 8, i1 false), !dbg !499
  ret %struct.msa_struct* %0, !dbg !501
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare %struct.GKI* @GKIInit() #2

; Function Attrs: nounwind optsize uwtable
define void @MSAExpand(%struct.msa_struct* nocapture %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !96), !dbg !502
  %nseqlump = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 41, !dbg !503
  %0 = load i32* %nseqlump, align 4, !dbg !503, !tbaa !478
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !503
  %1 = load i32* %nseqalloc, align 4, !dbg !503, !tbaa !478
  %add = add nsw i32 %1, %0, !dbg !503
  store i32 %add, i32* %nseqalloc, align 4, !dbg !503, !tbaa !478
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !504
  %2 = load i8*** %aseq, align 8, !dbg !504, !tbaa !466
  %3 = bitcast i8** %2 to i8*, !dbg !504
  %conv = sext i32 %add to i64, !dbg !504
  %mul = shl nsw i64 %conv, 3, !dbg !504
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 162, i8* %3, i64 %mul) #7, !dbg !504
  %4 = bitcast i8* %call to i8**, !dbg !504
  store i8** %4, i8*** %aseq, align 8, !dbg !504, !tbaa !466
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !505
  %5 = load i8*** %sqname, align 8, !dbg !505, !tbaa !466
  %6 = bitcast i8** %5 to i8*, !dbg !505
  %7 = load i32* %nseqalloc, align 4, !dbg !505, !tbaa !478
  %conv4 = sext i32 %7 to i64, !dbg !505
  %mul5 = shl nsw i64 %conv4, 3, !dbg !505
  %call6 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 163, i8* %6, i64 %mul5) #7, !dbg !505
  %8 = bitcast i8* %call6 to i8**, !dbg !505
  store i8** %8, i8*** %sqname, align 8, !dbg !505, !tbaa !466
  %sqlen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 42, !dbg !506
  %9 = load i32** %sqlen, align 8, !dbg !506, !tbaa !466
  %10 = bitcast i32* %9 to i8*, !dbg !506
  %11 = load i32* %nseqalloc, align 4, !dbg !506, !tbaa !478
  %conv9 = sext i32 %11 to i64, !dbg !506
  %mul10 = shl nsw i64 %conv9, 3, !dbg !506
  %call11 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 164, i8* %10, i64 %mul10) #7, !dbg !506
  %12 = bitcast i8* %call11 to i32*, !dbg !506
  store i32* %12, i32** %sqlen, align 8, !dbg !506, !tbaa !466
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !507
  %13 = load float** %wgt, align 8, !dbg !507, !tbaa !466
  %14 = bitcast float* %13 to i8*, !dbg !507
  %15 = load i32* %nseqalloc, align 4, !dbg !507, !tbaa !478
  %conv14 = sext i32 %15 to i64, !dbg !507
  %mul15 = shl nsw i64 %conv14, 2, !dbg !507
  %call16 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 165, i8* %14, i64 %mul15) #7, !dbg !507
  %16 = bitcast i8* %call16 to float*, !dbg !507
  store float* %16, float** %wgt, align 8, !dbg !507, !tbaa !466
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !508
  %17 = load i8*** %ss, align 8, !dbg !508, !tbaa !466
  %cmp = icmp eq i8** %17, null, !dbg !508
  br i1 %cmp, label %if.end, label %if.then, !dbg !508

if.then:                                          ; preds = %entry
  %18 = bitcast i8** %17 to i8*, !dbg !509
  %19 = load i32* %nseqalloc, align 4, !dbg !509, !tbaa !478
  %conv21 = sext i32 %19 to i64, !dbg !509
  %mul22 = shl nsw i64 %conv21, 3, !dbg !509
  %call23 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 168, i8* %18, i64 %mul22) #7, !dbg !509
  %20 = bitcast i8* %call23 to i8**, !dbg !509
  store i8** %20, i8*** %ss, align 8, !dbg !509, !tbaa !466
  %sslen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43, !dbg !511
  %21 = load i32** %sslen, align 8, !dbg !511, !tbaa !466
  %22 = bitcast i32* %21 to i8*, !dbg !511
  %23 = load i32* %nseqalloc, align 4, !dbg !511, !tbaa !478
  %conv26 = sext i32 %23 to i64, !dbg !511
  %mul27 = shl nsw i64 %conv26, 2, !dbg !511
  %call28 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 169, i8* %22, i64 %mul27) #7, !dbg !511
  %24 = bitcast i8* %call28 to i32*, !dbg !511
  store i32* %24, i32** %sslen, align 8, !dbg !511, !tbaa !466
  br label %if.end, !dbg !512

if.end:                                           ; preds = %entry, %if.then
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !513
  %25 = load i8*** %sa, align 8, !dbg !513, !tbaa !466
  %cmp30 = icmp eq i8** %25, null, !dbg !513
  br i1 %cmp30, label %if.end44, label %if.then32, !dbg !513

if.then32:                                        ; preds = %if.end
  %26 = bitcast i8** %25 to i8*, !dbg !514
  %27 = load i32* %nseqalloc, align 4, !dbg !514, !tbaa !478
  %conv35 = sext i32 %27 to i64, !dbg !514
  %mul36 = shl nsw i64 %conv35, 3, !dbg !514
  %call37 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 172, i8* %26, i64 %mul36) #7, !dbg !514
  %28 = bitcast i8* %call37 to i8**, !dbg !514
  store i8** %28, i8*** %sa, align 8, !dbg !514, !tbaa !466
  %salen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44, !dbg !516
  %29 = load i32** %salen, align 8, !dbg !516, !tbaa !466
  %30 = bitcast i32* %29 to i8*, !dbg !516
  %31 = load i32* %nseqalloc, align 4, !dbg !516, !tbaa !478
  %conv40 = sext i32 %31 to i64, !dbg !516
  %mul41 = shl nsw i64 %conv40, 2, !dbg !516
  %call42 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 173, i8* %30, i64 %mul41) #7, !dbg !516
  %32 = bitcast i8* %call42 to i32*, !dbg !516
  store i32* %32, i32** %salen, align 8, !dbg !516, !tbaa !466
  br label %if.end44, !dbg !517

if.end44:                                         ; preds = %if.end, %if.then32
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !518
  %33 = load i8*** %sqacc, align 8, !dbg !518, !tbaa !466
  %cmp45 = icmp eq i8** %33, null, !dbg !518
  br i1 %cmp45, label %if.end54, label %if.then47, !dbg !518

if.then47:                                        ; preds = %if.end44
  %34 = bitcast i8** %33 to i8*, !dbg !519
  %35 = load i32* %nseqalloc, align 4, !dbg !519, !tbaa !478
  %conv50 = sext i32 %35 to i64, !dbg !519
  %mul51 = shl nsw i64 %conv50, 3, !dbg !519
  %call52 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 176, i8* %34, i64 %mul51) #7, !dbg !519
  %36 = bitcast i8* %call52 to i8**, !dbg !519
  store i8** %36, i8*** %sqacc, align 8, !dbg !519, !tbaa !466
  br label %if.end54, !dbg !519

if.end54:                                         ; preds = %if.end44, %if.then47
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !520
  %37 = load i8*** %sqdesc, align 8, !dbg !520, !tbaa !466
  %cmp55 = icmp eq i8** %37, null, !dbg !520
  br i1 %cmp55, label %if.end64, label %if.then57, !dbg !520

if.then57:                                        ; preds = %if.end54
  %38 = bitcast i8** %37 to i8*, !dbg !521
  %39 = load i32* %nseqalloc, align 4, !dbg !521, !tbaa !478
  %conv60 = sext i32 %39 to i64, !dbg !521
  %mul61 = shl nsw i64 %conv60, 3, !dbg !521
  %call62 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 178, i8* %38, i64 %mul61) #7, !dbg !521
  %40 = bitcast i8* %call62 to i8**, !dbg !521
  store i8** %40, i8*** %sqdesc, align 8, !dbg !521, !tbaa !466
  br label %if.end64, !dbg !521

if.end64:                                         ; preds = %if.end54, %if.then57
  %41 = load i32* %nseqlump, align 4, !dbg !522, !tbaa !478
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !97), !dbg !522
  %cmp68375 = icmp sgt i32 %41, 0, !dbg !522
  br i1 %cmp68375, label %for.body.lr.ph, label %for.end, !dbg !522

for.body.lr.ph:                                   ; preds = %if.end64
  %42 = load i32* %nseqalloc, align 4, !dbg !522, !tbaa !478
  %sub = sub nsw i32 %42, %41, !dbg !522
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !524
  %salen164 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44, !dbg !526
  %sslen136 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43, !dbg !528
  %43 = sext i32 %sub to i64
  br label %for.body, !dbg !522

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv383 = phi i64 [ %43, %for.body.lr.ph ], [ %indvars.iv.next384, %for.inc ]
  %44 = load i8*** %sqname, align 8, !dbg !530, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %44, i64 %indvars.iv383, !dbg !530
  store i8* null, i8** %arrayidx, align 8, !dbg !530, !tbaa !466
  %45 = load float** %wgt, align 8, !dbg !531, !tbaa !466
  %arrayidx73 = getelementptr inbounds float* %45, i64 %indvars.iv383, !dbg !531
  store float -1.000000e+00, float* %arrayidx73, align 4, !dbg !531, !tbaa !480
  %46 = load i8*** %sqacc, align 8, !dbg !532, !tbaa !466
  %cmp75 = icmp eq i8** %46, null, !dbg !532
  br i1 %cmp75, label %if.end81, label %if.then77, !dbg !532

if.then77:                                        ; preds = %for.body
  %arrayidx80 = getelementptr inbounds i8** %46, i64 %indvars.iv383, !dbg !532
  store i8* null, i8** %arrayidx80, align 8, !dbg !532, !tbaa !466
  br label %if.end81, !dbg !532

if.end81:                                         ; preds = %for.body, %if.then77
  %47 = load i8*** %sqdesc, align 8, !dbg !533, !tbaa !466
  %cmp83 = icmp eq i8** %47, null, !dbg !533
  br i1 %cmp83, label %if.end89, label %if.then85, !dbg !533

if.then85:                                        ; preds = %if.end81
  %arrayidx88 = getelementptr inbounds i8** %47, i64 %indvars.iv383, !dbg !533
  store i8* null, i8** %arrayidx88, align 8, !dbg !533, !tbaa !466
  br label %if.end89, !dbg !533

if.end89:                                         ; preds = %if.end81, %if.then85
  %48 = load i32* %alen, align 4, !dbg !524, !tbaa !478
  %cmp90 = icmp eq i32 %48, 0, !dbg !524
  %49 = load i8*** %aseq, align 8, !dbg !534, !tbaa !466
  %arrayidx95 = getelementptr inbounds i8** %49, i64 %indvars.iv383, !dbg !534
  br i1 %cmp90, label %if.else, label %if.then92, !dbg !524

if.then92:                                        ; preds = %if.end89
  %50 = load i8** %arrayidx95, align 8, !dbg !534, !tbaa !466
  %add97 = add nsw i32 %48, 1, !dbg !534
  %conv98 = sext i32 %add97 to i64, !dbg !534
  %call100 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 189, i8* %50, i64 %conv98) #7, !dbg !534
  %51 = load i8*** %aseq, align 8, !dbg !534, !tbaa !466
  %arrayidx103 = getelementptr inbounds i8** %51, i64 %indvars.iv383, !dbg !534
  store i8* %call100, i8** %arrayidx103, align 8, !dbg !534, !tbaa !466
  br label %if.end107, !dbg !534

if.else:                                          ; preds = %if.end89
  store i8* null, i8** %arrayidx95, align 8, !dbg !535, !tbaa !466
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then92
  %52 = load i32** %sqlen, align 8, !dbg !536, !tbaa !466
  %arrayidx110 = getelementptr inbounds i32* %52, i64 %indvars.iv383, !dbg !536
  store i32 0, i32* %arrayidx110, align 4, !dbg !536, !tbaa !478
  %53 = load i8*** %ss, align 8, !dbg !537, !tbaa !466
  %cmp112 = icmp eq i8** %53, null, !dbg !537
  br i1 %cmp112, label %if.end138, label %if.then114, !dbg !537

if.then114:                                       ; preds = %if.end107
  %54 = load i32* %alen, align 4, !dbg !538, !tbaa !478
  %cmp116 = icmp eq i32 %54, 0, !dbg !538
  %arrayidx121 = getelementptr inbounds i8** %53, i64 %indvars.iv383, !dbg !539
  br i1 %cmp116, label %if.else130, label %if.then118, !dbg !538

if.then118:                                       ; preds = %if.then114
  %55 = load i8** %arrayidx121, align 8, !dbg !539, !tbaa !466
  %add123 = add nsw i32 %54, 1, !dbg !539
  %conv124 = sext i32 %add123 to i64, !dbg !539
  %call126 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 195, i8* %55, i64 %conv124) #7, !dbg !539
  %56 = load i8*** %ss, align 8, !dbg !539, !tbaa !466
  %arrayidx129 = getelementptr inbounds i8** %56, i64 %indvars.iv383, !dbg !539
  store i8* %call126, i8** %arrayidx129, align 8, !dbg !539, !tbaa !466
  br label %if.end134, !dbg !539

if.else130:                                       ; preds = %if.then114
  store i8* null, i8** %arrayidx121, align 8, !dbg !540, !tbaa !466
  br label %if.end134

if.end134:                                        ; preds = %if.else130, %if.then118
  %57 = load i32** %sslen136, align 8, !dbg !528, !tbaa !466
  %arrayidx137 = getelementptr inbounds i32* %57, i64 %indvars.iv383, !dbg !528
  store i32 0, i32* %arrayidx137, align 4, !dbg !528, !tbaa !478
  br label %if.end138, !dbg !541

if.end138:                                        ; preds = %if.end107, %if.end134
  %58 = load i8*** %sa, align 8, !dbg !542, !tbaa !466
  %cmp140 = icmp eq i8** %58, null, !dbg !542
  br i1 %cmp140, label %for.inc, label %if.then142, !dbg !542

if.then142:                                       ; preds = %if.end138
  %59 = load i32* %alen, align 4, !dbg !543, !tbaa !478
  %cmp144 = icmp eq i32 %59, 0, !dbg !543
  br i1 %cmp144, label %if.else158, label %if.then146, !dbg !543

if.then146:                                       ; preds = %if.then142
  %60 = load i8*** %ss, align 8, !dbg !544, !tbaa !466
  %arrayidx149 = getelementptr inbounds i8** %60, i64 %indvars.iv383, !dbg !544
  %61 = load i8** %arrayidx149, align 8, !dbg !544, !tbaa !466
  %add151 = add nsw i32 %59, 1, !dbg !544
  %conv152 = sext i32 %add151 to i64, !dbg !544
  %call154 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 201, i8* %61, i64 %conv152) #7, !dbg !544
  %62 = load i8*** %sa, align 8, !dbg !544, !tbaa !466
  %arrayidx157 = getelementptr inbounds i8** %62, i64 %indvars.iv383, !dbg !544
  store i8* %call154, i8** %arrayidx157, align 8, !dbg !544, !tbaa !466
  br label %if.end162, !dbg !544

if.else158:                                       ; preds = %if.then142
  %arrayidx161 = getelementptr inbounds i8** %58, i64 %indvars.iv383, !dbg !545
  store i8* null, i8** %arrayidx161, align 8, !dbg !545, !tbaa !466
  br label %if.end162

if.end162:                                        ; preds = %if.else158, %if.then146
  %63 = load i32** %salen164, align 8, !dbg !526, !tbaa !466
  %arrayidx165 = getelementptr inbounds i32* %63, i64 %indvars.iv383, !dbg !526
  store i32 0, i32* %arrayidx165, align 4, !dbg !526, !tbaa !478
  br label %for.inc, !dbg !546

for.inc:                                          ; preds = %if.end138, %if.end162
  %indvars.iv.next384 = add i64 %indvars.iv383, 1, !dbg !522
  %64 = load i32* %nseqalloc, align 4, !dbg !522, !tbaa !478
  %65 = trunc i64 %indvars.iv.next384 to i32, !dbg !522
  %cmp68 = icmp slt i32 %65, %64, !dbg !522
  br i1 %cmp68, label %for.body, label %for.end, !dbg !522

for.end:                                          ; preds = %for.inc, %if.end64
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !547
  %66 = load i8**** %gs, align 8, !dbg !547, !tbaa !466
  %cmp167 = icmp eq i8*** %66, null, !dbg !547
  br i1 %cmp167, label %if.end210, label %for.cond170.preheader, !dbg !547

for.cond170.preheader:                            ; preds = %for.end
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30, !dbg !548
  %67 = load i32* %ngs, align 4, !dbg !548, !tbaa !478
  %cmp171373 = icmp sgt i32 %67, 0, !dbg !548
  br i1 %cmp171373, label %for.body173, label %if.end210, !dbg !548

for.body173:                                      ; preds = %for.cond170.preheader, %for.inc207.for.body173_crit_edge
  %68 = phi i8*** [ %.pre387, %for.inc207.for.body173_crit_edge ], [ %66, %for.cond170.preheader ], !dbg !550
  %69 = phi i32 [ %81, %for.inc207.for.body173_crit_edge ], [ %67, %for.cond170.preheader ]
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc207.for.body173_crit_edge ], [ 0, %for.cond170.preheader ]
  %arrayidx176 = getelementptr inbounds i8*** %68, i64 %indvars.iv381, !dbg !550
  %70 = load i8*** %arrayidx176, align 8, !dbg !550, !tbaa !466
  %cmp177 = icmp eq i8** %70, null, !dbg !550
  br i1 %cmp177, label %for.inc207, label %if.then179, !dbg !550

if.then179:                                       ; preds = %for.body173
  %71 = bitcast i8** %70 to i8*, !dbg !552
  %72 = load i32* %nseqalloc, align 4, !dbg !552, !tbaa !478
  %conv184 = sext i32 %72 to i64, !dbg !552
  %mul185 = shl nsw i64 %conv184, 3, !dbg !552
  %call186 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 217, i8* %71, i64 %mul185) #7, !dbg !552
  %73 = bitcast i8* %call186 to i8**, !dbg !552
  %74 = load i8**** %gs, align 8, !dbg !552, !tbaa !466
  %arrayidx189 = getelementptr inbounds i8*** %74, i64 %indvars.iv381, !dbg !552
  store i8** %73, i8*** %arrayidx189, align 8, !dbg !552, !tbaa !466
  %75 = load i32* %nseqlump, align 4, !dbg !554, !tbaa !478
  tail call void @llvm.dbg.value(metadata !{i32 %sub192}, i64 0, metadata !98), !dbg !554
  %cmp195371 = icmp sgt i32 %75, 0, !dbg !554
  br i1 %cmp195371, label %for.body197.lr.ph, label %for.inc207.loopexit, !dbg !554

for.body197.lr.ph:                                ; preds = %if.then179
  %76 = load i32* %nseqalloc, align 4, !dbg !554, !tbaa !478
  %sub192 = sub nsw i32 %76, %75, !dbg !554
  %77 = sext i32 %sub192 to i64
  br label %for.body197, !dbg !554

for.body197:                                      ; preds = %for.body197.lr.ph, %for.body197
  %indvars.iv379 = phi i64 [ %77, %for.body197.lr.ph ], [ %indvars.iv.next380, %for.body197 ]
  %78 = load i8**** %gs, align 8, !dbg !556, !tbaa !466
  %arrayidx201 = getelementptr inbounds i8*** %78, i64 %indvars.iv381, !dbg !556
  %79 = load i8*** %arrayidx201, align 8, !dbg !556, !tbaa !466
  %arrayidx202 = getelementptr inbounds i8** %79, i64 %indvars.iv379, !dbg !556
  store i8* null, i8** %arrayidx202, align 8, !dbg !556, !tbaa !466
  %indvars.iv.next380 = add i64 %indvars.iv379, 1, !dbg !554
  %80 = trunc i64 %indvars.iv.next380 to i32, !dbg !554
  %cmp195 = icmp slt i32 %80, %76, !dbg !554
  br i1 %cmp195, label %for.body197, label %for.inc207.loopexit, !dbg !554

for.inc207.loopexit:                              ; preds = %for.body197, %if.then179
  %.pre385 = load i32* %ngs, align 4, !dbg !548, !tbaa !478
  br label %for.inc207

for.inc207:                                       ; preds = %for.inc207.loopexit, %for.body173
  %81 = phi i32 [ %.pre385, %for.inc207.loopexit ], [ %69, %for.body173 ], !dbg !548
  %indvars.iv.next382 = add i64 %indvars.iv381, 1, !dbg !548
  %82 = trunc i64 %indvars.iv.next382 to i32, !dbg !548
  %cmp171 = icmp slt i32 %82, %81, !dbg !548
  br i1 %cmp171, label %for.inc207.for.body173_crit_edge, label %if.end210, !dbg !548

for.inc207.for.body173_crit_edge:                 ; preds = %for.inc207
  %.pre387 = load i8**** %gs, align 8, !dbg !550, !tbaa !466
  br label %for.body173, !dbg !548

if.end210:                                        ; preds = %for.cond170.preheader, %for.inc207, %for.end
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !557
  %83 = load i8**** %gr, align 8, !dbg !557, !tbaa !466
  %cmp211 = icmp eq i8*** %83, null, !dbg !557
  br i1 %cmp211, label %if.end254, label %for.cond214.preheader, !dbg !557

for.cond214.preheader:                            ; preds = %if.end210
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !558
  %84 = load i32* %ngr, align 4, !dbg !558, !tbaa !478
  %cmp215369 = icmp sgt i32 %84, 0, !dbg !558
  br i1 %cmp215369, label %for.body217, label %if.end254, !dbg !558

for.body217:                                      ; preds = %for.cond214.preheader, %for.inc251.for.body217_crit_edge
  %85 = phi i8*** [ %.pre386, %for.inc251.for.body217_crit_edge ], [ %83, %for.cond214.preheader ], !dbg !560
  %86 = phi i32 [ %98, %for.inc251.for.body217_crit_edge ], [ %84, %for.cond214.preheader ]
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.inc251.for.body217_crit_edge ], [ 0, %for.cond214.preheader ]
  %arrayidx220 = getelementptr inbounds i8*** %85, i64 %indvars.iv377, !dbg !560
  %87 = load i8*** %arrayidx220, align 8, !dbg !560, !tbaa !466
  %cmp221 = icmp eq i8** %87, null, !dbg !560
  br i1 %cmp221, label %for.inc251, label %if.then223, !dbg !560

if.then223:                                       ; preds = %for.body217
  %88 = bitcast i8** %87 to i8*, !dbg !562
  %89 = load i32* %nseqalloc, align 4, !dbg !562, !tbaa !478
  %conv228 = sext i32 %89 to i64, !dbg !562
  %mul229 = shl nsw i64 %conv228, 3, !dbg !562
  %call230 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 232, i8* %88, i64 %mul229) #7, !dbg !562
  %90 = bitcast i8* %call230 to i8**, !dbg !562
  %91 = load i8**** %gr, align 8, !dbg !562, !tbaa !466
  %arrayidx233 = getelementptr inbounds i8*** %91, i64 %indvars.iv377, !dbg !562
  store i8** %90, i8*** %arrayidx233, align 8, !dbg !562, !tbaa !466
  %92 = load i32* %nseqlump, align 4, !dbg !564, !tbaa !478
  tail call void @llvm.dbg.value(metadata !{i32 %sub236}, i64 0, metadata !98), !dbg !564
  %cmp239367 = icmp sgt i32 %92, 0, !dbg !564
  br i1 %cmp239367, label %for.body241.lr.ph, label %for.inc251.loopexit, !dbg !564

for.body241.lr.ph:                                ; preds = %if.then223
  %93 = load i32* %nseqalloc, align 4, !dbg !564, !tbaa !478
  %sub236 = sub nsw i32 %93, %92, !dbg !564
  %94 = sext i32 %sub236 to i64
  br label %for.body241, !dbg !564

for.body241:                                      ; preds = %for.body241.lr.ph, %for.body241
  %indvars.iv = phi i64 [ %94, %for.body241.lr.ph ], [ %indvars.iv.next, %for.body241 ]
  %95 = load i8**** %gr, align 8, !dbg !566, !tbaa !466
  %arrayidx245 = getelementptr inbounds i8*** %95, i64 %indvars.iv377, !dbg !566
  %96 = load i8*** %arrayidx245, align 8, !dbg !566, !tbaa !466
  %arrayidx246 = getelementptr inbounds i8** %96, i64 %indvars.iv, !dbg !566
  store i8* null, i8** %arrayidx246, align 8, !dbg !566, !tbaa !466
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !564
  %97 = trunc i64 %indvars.iv.next to i32, !dbg !564
  %cmp239 = icmp slt i32 %97, %93, !dbg !564
  br i1 %cmp239, label %for.body241, label %for.inc251.loopexit, !dbg !564

for.inc251.loopexit:                              ; preds = %for.body241, %if.then223
  %.pre = load i32* %ngr, align 4, !dbg !558, !tbaa !478
  br label %for.inc251

for.inc251:                                       ; preds = %for.inc251.loopexit, %for.body217
  %98 = phi i32 [ %.pre, %for.inc251.loopexit ], [ %86, %for.body217 ], !dbg !558
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !558
  %99 = trunc i64 %indvars.iv.next378 to i32, !dbg !558
  %cmp215 = icmp slt i32 %99, %98, !dbg !558
  br i1 %cmp215, label %for.inc251.for.body217_crit_edge, label %if.end254, !dbg !558

for.inc251.for.body217_crit_edge:                 ; preds = %for.inc251
  %.pre386 = load i8**** %gr, align 8, !dbg !560, !tbaa !466
  br label %for.body217, !dbg !558

if.end254:                                        ; preds = %for.cond214.preheader, %for.inc251, %if.end210
  ret void, !dbg !567
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @MSAFree(%struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !101), !dbg !568
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !569
  %0 = load i8*** %aseq, align 8, !dbg !569, !tbaa !466
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !569
  %1 = load i32* %nseq, align 4, !dbg !569, !tbaa !478
  tail call void @Free2DArray(i8** %0, i32 %1) #7, !dbg !569
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !570
  %2 = load i8*** %sqname, align 8, !dbg !570, !tbaa !466
  %3 = load i32* %nseq, align 4, !dbg !570, !tbaa !478
  tail call void @Free2DArray(i8** %2, i32 %3) #7, !dbg !570
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !571
  %4 = load i8*** %sqacc, align 8, !dbg !571, !tbaa !466
  %5 = load i32* %nseq, align 4, !dbg !571, !tbaa !478
  tail call void @Free2DArray(i8** %4, i32 %5) #7, !dbg !571
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !572
  %6 = load i8*** %sqdesc, align 8, !dbg !572, !tbaa !466
  %7 = load i32* %nseq, align 4, !dbg !572, !tbaa !478
  tail call void @Free2DArray(i8** %6, i32 %7) #7, !dbg !572
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !573
  %8 = load i8*** %ss, align 8, !dbg !573, !tbaa !466
  %9 = load i32* %nseq, align 4, !dbg !573, !tbaa !478
  tail call void @Free2DArray(i8** %8, i32 %9) #7, !dbg !573
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !574
  %10 = load i8*** %sa, align 8, !dbg !574, !tbaa !466
  %11 = load i32* %nseq, align 4, !dbg !574, !tbaa !478
  tail call void @Free2DArray(i8** %10, i32 %11) #7, !dbg !574
  %sqlen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 42, !dbg !575
  %12 = load i32** %sqlen, align 8, !dbg !575, !tbaa !466
  %cmp = icmp eq i32* %12, null, !dbg !575
  br i1 %cmp, label %if.end, label %if.then, !dbg !575

if.then:                                          ; preds = %entry
  %13 = bitcast i32* %12 to i8*, !dbg !575
  tail call void @free(i8* %13) #7, !dbg !575
  br label %if.end, !dbg !575

if.end:                                           ; preds = %entry, %if.then
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !576
  %14 = load float** %wgt, align 8, !dbg !576, !tbaa !466
  %cmp7 = icmp eq float* %14, null, !dbg !576
  br i1 %cmp7, label %if.end10, label %if.then8, !dbg !576

if.then8:                                         ; preds = %if.end
  %15 = bitcast float* %14 to i8*, !dbg !576
  tail call void @free(i8* %15) #7, !dbg !576
  br label %if.end10, !dbg !576

if.end10:                                         ; preds = %if.end, %if.then8
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !577
  %16 = load i8** %name, align 8, !dbg !577, !tbaa !466
  %cmp11 = icmp eq i8* %16, null, !dbg !577
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !577

if.then12:                                        ; preds = %if.end10
  tail call void @free(i8* %16) #7, !dbg !577
  br label %if.end14, !dbg !577

if.end14:                                         ; preds = %if.end10, %if.then12
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8, !dbg !578
  %17 = load i8** %desc, align 8, !dbg !578, !tbaa !466
  %cmp15 = icmp eq i8* %17, null, !dbg !578
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !578

if.then16:                                        ; preds = %if.end14
  tail call void @free(i8* %17) #7, !dbg !578
  br label %if.end18, !dbg !578

if.end18:                                         ; preds = %if.end14, %if.then16
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9, !dbg !579
  %18 = load i8** %acc, align 8, !dbg !579, !tbaa !466
  %cmp19 = icmp eq i8* %18, null, !dbg !579
  br i1 %cmp19, label %if.end22, label %if.then20, !dbg !579

if.then20:                                        ; preds = %if.end18
  tail call void @free(i8* %18) #7, !dbg !579
  br label %if.end22, !dbg !579

if.end22:                                         ; preds = %if.end18, %if.then20
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10, !dbg !580
  %19 = load i8** %au, align 8, !dbg !580, !tbaa !466
  %cmp23 = icmp eq i8* %19, null, !dbg !580
  br i1 %cmp23, label %if.end26, label %if.then24, !dbg !580

if.then24:                                        ; preds = %if.end22
  tail call void @free(i8* %19) #7, !dbg !580
  br label %if.end26, !dbg !580

if.end26:                                         ; preds = %if.end22, %if.then24
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !581
  %20 = load i8** %ss_cons, align 8, !dbg !581, !tbaa !466
  %cmp27 = icmp eq i8* %20, null, !dbg !581
  br i1 %cmp27, label %if.end30, label %if.then28, !dbg !581

if.then28:                                        ; preds = %if.end26
  tail call void @free(i8* %20) #7, !dbg !581
  br label %if.end30, !dbg !581

if.end30:                                         ; preds = %if.end26, %if.then28
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !582
  %21 = load i8** %sa_cons, align 8, !dbg !582, !tbaa !466
  %cmp31 = icmp eq i8* %21, null, !dbg !582
  br i1 %cmp31, label %if.end34, label %if.then32, !dbg !582

if.then32:                                        ; preds = %if.end30
  tail call void @free(i8* %21) #7, !dbg !582
  br label %if.end34, !dbg !582

if.end34:                                         ; preds = %if.end30, %if.then32
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !583
  %22 = load i8** %rf, align 8, !dbg !583, !tbaa !466
  %cmp35 = icmp eq i8* %22, null, !dbg !583
  br i1 %cmp35, label %if.end38, label %if.then36, !dbg !583

if.then36:                                        ; preds = %if.end34
  tail call void @free(i8* %22) #7, !dbg !583
  br label %if.end38, !dbg !583

if.end38:                                         ; preds = %if.end34, %if.then36
  %sslen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43, !dbg !584
  %23 = load i32** %sslen, align 8, !dbg !584, !tbaa !466
  %cmp39 = icmp eq i32* %23, null, !dbg !584
  br i1 %cmp39, label %if.end42, label %if.then40, !dbg !584

if.then40:                                        ; preds = %if.end38
  %24 = bitcast i32* %23 to i8*, !dbg !584
  tail call void @free(i8* %24) #7, !dbg !584
  br label %if.end42, !dbg !584

if.end42:                                         ; preds = %if.end38, %if.then40
  %salen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44, !dbg !585
  %25 = load i32** %salen, align 8, !dbg !585, !tbaa !466
  %cmp43 = icmp eq i32* %25, null, !dbg !585
  br i1 %cmp43, label %if.end46, label %if.then44, !dbg !585

if.then44:                                        ; preds = %if.end42
  %26 = bitcast i32* %25 to i8*, !dbg !585
  tail call void @free(i8* %26) #7, !dbg !585
  br label %if.end46, !dbg !585

if.end46:                                         ; preds = %if.end42, %if.then44
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !586
  %27 = load i8*** %comment, align 8, !dbg !586, !tbaa !466
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !586
  %28 = load i32* %ncomment, align 4, !dbg !586, !tbaa !478
  tail call void @Free2DArray(i8** %27, i32 %28) #7, !dbg !586
  %gf_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23, !dbg !587
  %29 = load i8*** %gf_tag, align 8, !dbg !587, !tbaa !466
  %ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25, !dbg !587
  %30 = load i32* %ngf, align 4, !dbg !587, !tbaa !478
  tail call void @Free2DArray(i8** %29, i32 %30) #7, !dbg !587
  %gf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24, !dbg !588
  %31 = load i8*** %gf, align 8, !dbg !588, !tbaa !466
  %32 = load i32* %ngf, align 4, !dbg !588, !tbaa !478
  tail call void @Free2DArray(i8** %31, i32 %32) #7, !dbg !588
  %gs_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27, !dbg !589
  %33 = load i8*** %gs_tag, align 8, !dbg !589, !tbaa !466
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30, !dbg !589
  %34 = load i32* %ngs, align 4, !dbg !589, !tbaa !478
  tail call void @Free2DArray(i8** %33, i32 %34) #7, !dbg !589
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !590
  %35 = load i8**** %gs, align 8, !dbg !590, !tbaa !466
  %36 = load i32* %ngs, align 4, !dbg !590, !tbaa !478
  %37 = load i32* %nseq, align 4, !dbg !590, !tbaa !478
  tail call void @Free3DArray(i8*** %35, i32 %36, i32 %37) #7, !dbg !590
  %gc_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31, !dbg !591
  %38 = load i8*** %gc_tag, align 8, !dbg !591, !tbaa !466
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !591
  %39 = load i32* %ngc, align 4, !dbg !591, !tbaa !478
  tail call void @Free2DArray(i8** %38, i32 %39) #7, !dbg !591
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !592
  %40 = load i8*** %gc, align 8, !dbg !592, !tbaa !466
  %41 = load i32* %ngc, align 4, !dbg !592, !tbaa !478
  tail call void @Free2DArray(i8** %40, i32 %41) #7, !dbg !592
  %gr_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35, !dbg !593
  %42 = load i8*** %gr_tag, align 8, !dbg !593, !tbaa !466
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !593
  %43 = load i32* %ngr, align 4, !dbg !593, !tbaa !478
  tail call void @Free2DArray(i8** %42, i32 %43) #7, !dbg !593
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !594
  %44 = load i8**** %gr, align 8, !dbg !594, !tbaa !466
  %45 = load i32* %ngr, align 4, !dbg !594, !tbaa !478
  %46 = load i32* %nseq, align 4, !dbg !594, !tbaa !478
  tail call void @Free3DArray(i8*** %44, i32 %45, i32 %46) #7, !dbg !594
  %index = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 39, !dbg !595
  %47 = load %struct.GKI** %index, align 8, !dbg !595, !tbaa !466
  tail call void @GKIFree(%struct.GKI* %47) #7, !dbg !595
  %gs_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 29, !dbg !596
  %48 = load %struct.GKI** %gs_idx, align 8, !dbg !596, !tbaa !466
  tail call void @GKIFree(%struct.GKI* %48) #7, !dbg !596
  %gc_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33, !dbg !597
  %49 = load %struct.GKI** %gc_idx, align 8, !dbg !597, !tbaa !466
  tail call void @GKIFree(%struct.GKI* %49) #7, !dbg !597
  %gr_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 37, !dbg !598
  %50 = load %struct.GKI** %gr_idx, align 8, !dbg !598, !tbaa !466
  tail call void @GKIFree(%struct.GKI* %50) #7, !dbg !598
  %51 = bitcast %struct.msa_struct* %msa to i8*, !dbg !599
  tail call void @free(i8* %51) #7, !dbg !599
  ret void, !dbg !600
}

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @Free3DArray(i8***, i32, i32) #2

; Function Attrs: optsize
declare void @GKIFree(%struct.GKI*) #2

; Function Attrs: nounwind optsize uwtable
define void @MSASetSeqAccession(%struct.msa_struct* nocapture %msa, i32 %seqidx, i8* %acc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !106), !dbg !601
  tail call void @llvm.dbg.value(metadata !{i32 %seqidx}, i64 0, metadata !107), !dbg !601
  tail call void @llvm.dbg.value(metadata !{i8* %acc}, i64 0, metadata !108), !dbg !601
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !602
  %0 = load i8*** %sqacc, align 8, !dbg !602, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !602
  br i1 %cmp, label %if.then, label %if.end, !dbg !602

if.then:                                          ; preds = %entry
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !603
  %1 = load i32* %nseqalloc, align 4, !dbg !603, !tbaa !478
  %conv = sext i32 %1 to i64, !dbg !603
  %mul = shl nsw i64 %conv, 3, !dbg !603
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 310, i64 %mul) #7, !dbg !603
  %2 = bitcast i8* %call to i8**, !dbg !603
  store i8** %2, i8*** %sqacc, align 8, !dbg !603, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !605
  %3 = load i32* %nseqalloc, align 4, !dbg !605, !tbaa !478
  %cmp317 = icmp sgt i32 %3, 0, !dbg !605
  br i1 %cmp317, label %for.body, label %if.end, !dbg !605

for.body:                                         ; preds = %if.then, %for.body.for.body_crit_edge
  %4 = phi i8** [ %.pre, %for.body.for.body_crit_edge ], [ %2, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv, !dbg !607
  store i8* null, i8** %arrayidx, align 8, !dbg !607, !tbaa !466
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !605
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !605
  %cmp3 = icmp slt i32 %5, %3, !dbg !605
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %if.end, !dbg !605

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i8*** %sqacc, align 8, !dbg !607, !tbaa !466
  br label %for.body, !dbg !605

if.end:                                           ; preds = %if.then, %for.body, %entry
  %call6 = tail call i8* @sre_strdup(i8* %acc, i32 -1) #7, !dbg !608
  %idxprom7 = sext i32 %seqidx to i64, !dbg !608
  %6 = load i8*** %sqacc, align 8, !dbg !608, !tbaa !466
  %arrayidx9 = getelementptr inbounds i8** %6, i64 %idxprom7, !dbg !608
  store i8* %call6, i8** %arrayidx9, align 8, !dbg !608, !tbaa !466
  ret void, !dbg !609
}

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @MSASetSeqDescription(%struct.msa_struct* nocapture %msa, i32 %seqidx, i8* %desc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !112), !dbg !610
  tail call void @llvm.dbg.value(metadata !{i32 %seqidx}, i64 0, metadata !113), !dbg !610
  tail call void @llvm.dbg.value(metadata !{i8* %desc}, i64 0, metadata !114), !dbg !610
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !611
  %0 = load i8*** %sqdesc, align 8, !dbg !611, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !611
  br i1 %cmp, label %if.then, label %if.end, !dbg !611

if.then:                                          ; preds = %entry
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !612
  %1 = load i32* %nseqalloc, align 4, !dbg !612, !tbaa !478
  %conv = sext i32 %1 to i64, !dbg !612
  %mul = shl nsw i64 %conv, 3, !dbg !612
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 335, i64 %mul) #7, !dbg !612
  %2 = bitcast i8* %call to i8**, !dbg !612
  store i8** %2, i8*** %sqdesc, align 8, !dbg !612, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !614
  %3 = load i32* %nseqalloc, align 4, !dbg !614, !tbaa !478
  %cmp317 = icmp sgt i32 %3, 0, !dbg !614
  br i1 %cmp317, label %for.body, label %if.end, !dbg !614

for.body:                                         ; preds = %if.then, %for.body.for.body_crit_edge
  %4 = phi i8** [ %.pre, %for.body.for.body_crit_edge ], [ %2, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv, !dbg !616
  store i8* null, i8** %arrayidx, align 8, !dbg !616, !tbaa !466
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !614
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !614
  %cmp3 = icmp slt i32 %5, %3, !dbg !614
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %if.end, !dbg !614

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i8*** %sqdesc, align 8, !dbg !616, !tbaa !466
  br label %for.body, !dbg !614

if.end:                                           ; preds = %if.then, %for.body, %entry
  %call6 = tail call i8* @sre_strdup(i8* %desc, i32 -1) #7, !dbg !617
  %idxprom7 = sext i32 %seqidx to i64, !dbg !617
  %6 = load i8*** %sqdesc, align 8, !dbg !617, !tbaa !466
  %arrayidx9 = getelementptr inbounds i8** %6, i64 %idxprom7, !dbg !617
  store i8* %call6, i8** %arrayidx9, align 8, !dbg !617, !tbaa !466
  ret void, !dbg !618
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAddComment(%struct.msa_struct* nocapture %msa, i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !120), !dbg !619
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !121), !dbg !619
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !620
  %0 = load i8*** %comment, align 8, !dbg !620, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !620
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !620

entry.if.end_crit_edge:                           ; preds = %entry
  %alloc_ncomment2.phi.trans.insert = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 22
  %.pre = load i32* %alloc_ncomment2.phi.trans.insert, align 4, !dbg !621, !tbaa !478
  br label %if.end, !dbg !620

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 362, i64 80) #7, !dbg !622
  %1 = bitcast i8* %call to i8**, !dbg !622
  store i8** %1, i8*** %comment, align 8, !dbg !622, !tbaa !466
  %alloc_ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 22, !dbg !624
  store i32 10, i32* %alloc_ncomment, align 4, !dbg !624, !tbaa !478
  br label %if.end, !dbg !625

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i32 [ 10, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %3 = phi i8** [ %1, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !621
  %4 = load i32* %ncomment, align 4, !dbg !621, !tbaa !478
  %cmp3 = icmp eq i32 %4, %2, !dbg !621
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !621

if.then4:                                         ; preds = %if.end
  %alloc_ncomment2 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 22, !dbg !621
  %add = add nsw i32 %2, 10, !dbg !626
  store i32 %add, i32* %alloc_ncomment2, align 4, !dbg !626, !tbaa !478
  %5 = bitcast i8** %3 to i8*, !dbg !628
  %conv = sext i32 %add to i64, !dbg !628
  %mul = shl nsw i64 %conv, 3, !dbg !628
  %call8 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 367, i8* %5, i64 %mul) #7, !dbg !628
  %6 = bitcast i8* %call8 to i8**, !dbg !628
  store i8** %6, i8*** %comment, align 8, !dbg !628, !tbaa !466
  br label %if.end10, !dbg !629

if.end10:                                         ; preds = %if.then4, %if.end
  %call11 = tail call i8* @sre_strdup(i8* %s, i32 -1) #7, !dbg !630
  %7 = load i32* %ncomment, align 4, !dbg !630, !tbaa !478
  %idxprom = sext i32 %7 to i64, !dbg !630
  %8 = load i8*** %comment, align 8, !dbg !630, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %8, i64 %idxprom, !dbg !630
  store i8* %call11, i8** %arrayidx, align 8, !dbg !630, !tbaa !466
  %inc = add nsw i32 %7, 1, !dbg !631
  store i32 %inc, i32* %ncomment, align 4, !dbg !631, !tbaa !478
  ret void, !dbg !632
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAddGF(%struct.msa_struct* nocapture %msa, i8* %tag, i8* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !126), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i8* %tag}, i64 0, metadata !127), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !128), !dbg !633
  %gf_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23, !dbg !634
  %0 = load i8*** %gf_tag, align 8, !dbg !634, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !634
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !634

entry.if.end_crit_edge:                           ; preds = %entry
  %alloc_ngf3.phi.trans.insert = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 26
  %.pre = load i32* %alloc_ngf3.phi.trans.insert, align 4, !dbg !635, !tbaa !478
  br label %if.end, !dbg !634

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 395, i64 80) #7, !dbg !636
  %1 = bitcast i8* %call to i8**, !dbg !636
  store i8** %1, i8*** %gf_tag, align 8, !dbg !636, !tbaa !466
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 396, i64 80) #7, !dbg !638
  %2 = bitcast i8* %call2 to i8**, !dbg !638
  %gf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24, !dbg !638
  store i8** %2, i8*** %gf, align 8, !dbg !638, !tbaa !466
  %alloc_ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 26, !dbg !639
  store i32 10, i32* %alloc_ngf, align 4, !dbg !639, !tbaa !478
  br label %if.end, !dbg !640

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ 10, %if.then ]
  %ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25, !dbg !635
  %4 = load i32* %ngf, align 4, !dbg !635, !tbaa !478
  %alloc_ngf3 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 26, !dbg !635
  %cmp4 = icmp eq i32 %4, %3, !dbg !635
  br i1 %cmp4, label %if.then5, label %if.end.if.end17_crit_edge, !dbg !635

if.end.if.end17_crit_edge:                        ; preds = %if.end
  %gf24.pre = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24, !dbg !641
  br label %if.end17, !dbg !635

if.then5:                                         ; preds = %if.end
  %add = add nsw i32 %3, 10, !dbg !642
  store i32 %add, i32* %alloc_ngf3, align 4, !dbg !642, !tbaa !478
  %5 = load i8*** %gf_tag, align 8, !dbg !644, !tbaa !466
  %6 = bitcast i8** %5 to i8*, !dbg !644
  %conv = sext i32 %add to i64, !dbg !644
  %mul = shl nsw i64 %conv, 3, !dbg !644
  %call9 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 401, i8* %6, i64 %mul) #7, !dbg !644
  %7 = bitcast i8* %call9 to i8**, !dbg !644
  store i8** %7, i8*** %gf_tag, align 8, !dbg !644, !tbaa !466
  %gf11 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24, !dbg !645
  %8 = load i8*** %gf11, align 8, !dbg !645, !tbaa !466
  %9 = bitcast i8** %8 to i8*, !dbg !645
  %10 = load i32* %alloc_ngf3, align 4, !dbg !645, !tbaa !478
  %conv13 = sext i32 %10 to i64, !dbg !645
  %mul14 = shl nsw i64 %conv13, 3, !dbg !645
  %call15 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 402, i8* %9, i64 %mul14) #7, !dbg !645
  %11 = bitcast i8* %call15 to i8**, !dbg !645
  store i8** %11, i8*** %gf11, align 8, !dbg !645, !tbaa !466
  br label %if.end17, !dbg !646

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %if.then5
  %gf24.pre-phi = phi i8*** [ %gf24.pre, %if.end.if.end17_crit_edge ], [ %gf11, %if.then5 ], !dbg !641
  %call18 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #7, !dbg !647
  %12 = load i32* %ngf, align 4, !dbg !647, !tbaa !478
  %idxprom = sext i32 %12 to i64, !dbg !647
  %13 = load i8*** %gf_tag, align 8, !dbg !647, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %13, i64 %idxprom, !dbg !647
  store i8* %call18, i8** %arrayidx, align 8, !dbg !647, !tbaa !466
  %call21 = tail call i8* @sre_strdup(i8* %value, i32 -1) #7, !dbg !641
  %14 = load i32* %ngf, align 4, !dbg !641, !tbaa !478
  %idxprom23 = sext i32 %14 to i64, !dbg !641
  %15 = load i8*** %gf24.pre-phi, align 8, !dbg !641, !tbaa !466
  %arrayidx25 = getelementptr inbounds i8** %15, i64 %idxprom23, !dbg !641
  store i8* %call21, i8** %arrayidx25, align 8, !dbg !641, !tbaa !466
  %inc = add nsw i32 %14, 1, !dbg !648
  store i32 %inc, i32* %ngf, align 4, !dbg !648, !tbaa !478
  ret void, !dbg !649
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAddGS(%struct.msa_struct* nocapture %msa, i8* %tag, i32 %sqidx, i8* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !133), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i8* %tag}, i64 0, metadata !134), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i32 %sqidx}, i64 0, metadata !135), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !136), !dbg !650
  %gs_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27, !dbg !651
  %0 = load i8*** %gs_tag, align 8, !dbg !651, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !651
  br i1 %cmp, label %if.then, label %if.else, !dbg !651

if.then:                                          ; preds = %entry
  %call = tail call %struct.GKI* @GKIInit() #7, !dbg !652
  %gs_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 29, !dbg !652
  store %struct.GKI* %call, %struct.GKI** %gs_idx, align 8, !dbg !652, !tbaa !466
  %call2 = tail call i32 @GKIStoreKey(%struct.GKI* %call, i8* %tag) #7, !dbg !654
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !137), !dbg !654
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 447, i64 8) #7, !dbg !655
  %1 = bitcast i8* %call3 to i8**, !dbg !655
  store i8** %1, i8*** %gs_tag, align 8, !dbg !655, !tbaa !466
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 448, i64 8) #7, !dbg !656
  %2 = bitcast i8* %call5 to i8***, !dbg !656
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !656
  store i8*** %2, i8**** %gs, align 8, !dbg !656, !tbaa !466
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !657
  %3 = load i32* %nseqalloc, align 4, !dbg !657, !tbaa !478
  %conv = sext i32 %3 to i64, !dbg !657
  %mul = shl nsw i64 %conv, 3, !dbg !657
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 449, i64 %mul) #7, !dbg !657
  %4 = bitcast i8* %call6 to i8**, !dbg !657
  %5 = load i8**** %gs, align 8, !dbg !657, !tbaa !466
  store i8** %4, i8*** %5, align 8, !dbg !657, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !658
  %6 = load i32* %nseqalloc, align 4, !dbg !658, !tbaa !478
  %cmp9150 = icmp sgt i32 %6, 0, !dbg !658
  br i1 %cmp9150, label %for.body, label %if.end55, !dbg !658

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %7 = load i8**** %gs, align 8, !dbg !660, !tbaa !466
  %8 = load i8*** %7, align 8, !dbg !660, !tbaa !466
  %arrayidx13 = getelementptr inbounds i8** %8, i64 %indvars.iv, !dbg !660
  store i8* null, i8** %arrayidx13, align 8, !dbg !660, !tbaa !466
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !658
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !658
  %cmp9 = icmp slt i32 %9, %6, !dbg !658
  br i1 %cmp9, label %for.body, label %if.end55, !dbg !658

if.else:                                          ; preds = %entry
  %gs_idx14 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 29, !dbg !661
  %10 = load %struct.GKI** %gs_idx14, align 8, !dbg !661, !tbaa !466
  %call15 = tail call i32 @GKIKeyIndex(%struct.GKI* %10, i8* %tag) #7, !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !137), !dbg !661
  %cmp16 = icmp slt i32 %call15, 0, !dbg !663
  br i1 %cmp16, label %if.then18, label %if.end55, !dbg !663

if.then18:                                        ; preds = %if.else
  %11 = load %struct.GKI** %gs_idx14, align 8, !dbg !664, !tbaa !466
  %call20 = tail call i32 @GKIStoreKey(%struct.GKI* %11, i8* %tag) #7, !dbg !664
  tail call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !137), !dbg !664
  %12 = load i8*** %gs_tag, align 8, !dbg !666, !tbaa !466
  %13 = bitcast i8** %12 to i8*, !dbg !666
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30, !dbg !666
  %14 = load i32* %ngs, align 4, !dbg !666, !tbaa !478
  %add = add nsw i32 %14, 1, !dbg !666
  %conv22 = sext i32 %add to i64, !dbg !666
  %mul23 = shl nsw i64 %conv22, 3, !dbg !666
  %call24 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 463, i8* %13, i64 %mul23) #7, !dbg !666
  %15 = bitcast i8* %call24 to i8**, !dbg !666
  store i8** %15, i8*** %gs_tag, align 8, !dbg !666, !tbaa !466
  %gs26 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !667
  %16 = load i8**** %gs26, align 8, !dbg !667, !tbaa !466
  %17 = bitcast i8*** %16 to i8*, !dbg !667
  %18 = load i32* %ngs, align 4, !dbg !667, !tbaa !478
  %add28 = add nsw i32 %18, 1, !dbg !667
  %conv29 = sext i32 %add28 to i64, !dbg !667
  %mul30 = shl nsw i64 %conv29, 3, !dbg !667
  %call31 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 464, i8* %17, i64 %mul30) #7, !dbg !667
  %19 = bitcast i8* %call31 to i8***, !dbg !667
  store i8*** %19, i8**** %gs26, align 8, !dbg !667, !tbaa !466
  %nseqalloc33 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !668
  %20 = load i32* %nseqalloc33, align 4, !dbg !668, !tbaa !478
  %conv34 = sext i32 %20 to i64, !dbg !668
  %mul35 = shl nsw i64 %conv34, 3, !dbg !668
  %call36 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 465, i64 %mul35) #7, !dbg !668
  %21 = bitcast i8* %call36 to i8**, !dbg !668
  %22 = load i32* %ngs, align 4, !dbg !668, !tbaa !478
  %idxprom38 = sext i32 %22 to i64, !dbg !668
  %23 = load i8**** %gs26, align 8, !dbg !668, !tbaa !466
  %arrayidx40 = getelementptr inbounds i8*** %23, i64 %idxprom38, !dbg !668
  store i8** %21, i8*** %arrayidx40, align 8, !dbg !668, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !669
  %24 = load i32* %nseqalloc33, align 4, !dbg !669, !tbaa !478
  %cmp43153 = icmp sgt i32 %24, 0, !dbg !669
  br i1 %cmp43153, label %for.body45, label %if.end55, !dbg !669

for.body45:                                       ; preds = %if.then18, %for.body45
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body45 ], [ 0, %if.then18 ]
  %25 = load i8**** %gs26, align 8, !dbg !671, !tbaa !466
  %arrayidx50 = getelementptr inbounds i8*** %25, i64 %idxprom38, !dbg !671
  %26 = load i8*** %arrayidx50, align 8, !dbg !671, !tbaa !466
  %arrayidx51 = getelementptr inbounds i8** %26, i64 %indvars.iv155, !dbg !671
  store i8* null, i8** %arrayidx51, align 8, !dbg !671, !tbaa !466
  %indvars.iv.next156 = add i64 %indvars.iv155, 1, !dbg !669
  %27 = trunc i64 %indvars.iv.next156 to i32, !dbg !669
  %cmp43 = icmp slt i32 %27, %24, !dbg !669
  br i1 %cmp43, label %for.body45, label %if.end55, !dbg !669

if.end55:                                         ; preds = %if.then18, %for.body45, %if.then, %for.body, %if.else
  %tagidx.0 = phi i32 [ %call15, %if.else ], [ %call2, %for.body ], [ %call2, %if.then ], [ %call20, %for.body45 ], [ %call20, %if.then18 ]
  %ngs56 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30, !dbg !672
  %28 = load i32* %ngs56, align 4, !dbg !672, !tbaa !478
  %cmp57 = icmp eq i32 %tagidx.0, %28, !dbg !672
  br i1 %cmp57, label %if.then59, label %if.end55.if.end66_crit_edge, !dbg !672

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  %idxprom68.pre = sext i32 %tagidx.0 to i64, !dbg !673
  br label %if.end66, !dbg !672

if.then59:                                        ; preds = %if.end55
  %call60 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #7, !dbg !674
  %idxprom61 = sext i32 %tagidx.0 to i64, !dbg !674
  %29 = load i8*** %gs_tag, align 8, !dbg !674, !tbaa !466
  %arrayidx63 = getelementptr inbounds i8** %29, i64 %idxprom61, !dbg !674
  store i8* %call60, i8** %arrayidx63, align 8, !dbg !674, !tbaa !466
  %30 = load i32* %ngs56, align 4, !dbg !676, !tbaa !478
  %inc65 = add nsw i32 %30, 1, !dbg !676
  store i32 %inc65, i32* %ngs56, align 4, !dbg !676, !tbaa !478
  br label %if.end66, !dbg !677

if.end66:                                         ; preds = %if.end55.if.end66_crit_edge, %if.then59
  %idxprom68.pre-phi = phi i64 [ %idxprom68.pre, %if.end55.if.end66_crit_edge ], [ %idxprom61, %if.then59 ], !dbg !673
  %idxprom67 = sext i32 %sqidx to i64, !dbg !673
  %gs69 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !673
  %31 = load i8**** %gs69, align 8, !dbg !673, !tbaa !466
  %arrayidx70 = getelementptr inbounds i8*** %31, i64 %idxprom68.pre-phi, !dbg !673
  %32 = load i8*** %arrayidx70, align 8, !dbg !673, !tbaa !466
  %arrayidx71 = getelementptr inbounds i8** %32, i64 %idxprom67, !dbg !673
  %33 = load i8** %arrayidx71, align 8, !dbg !673, !tbaa !466
  %cmp72 = icmp eq i8* %33, null, !dbg !673
  br i1 %cmp72, label %if.then74, label %if.else81, !dbg !673

if.then74:                                        ; preds = %if.end66
  %call75 = tail call i8* @sre_strdup(i8* %value, i32 -1) #7, !dbg !678
  %34 = load i8**** %gs69, align 8, !dbg !678, !tbaa !466
  %arrayidx79 = getelementptr inbounds i8*** %34, i64 %idxprom68.pre-phi, !dbg !678
  %35 = load i8*** %arrayidx79, align 8, !dbg !678, !tbaa !466
  %arrayidx80 = getelementptr inbounds i8** %35, i64 %idxprom67, !dbg !678
  store i8* %call75, i8** %arrayidx80, align 8, !dbg !678, !tbaa !466
  br label %if.end102, !dbg !678

if.else81:                                        ; preds = %if.end66
  %call87 = tail call i32 @sre_strcat(i8** %arrayidx71, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i32 1) #7, !dbg !679
  tail call void @llvm.dbg.value(metadata !{i32 %call87}, i64 0, metadata !139), !dbg !679
  %cmp88 = icmp slt i32 %call87, 0, !dbg !679
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !679

if.then90:                                        ; preds = %if.else81
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !680
  br label %if.end91, !dbg !680

if.end91:                                         ; preds = %if.then90, %if.else81
  %36 = load i8**** %gs69, align 8, !dbg !681, !tbaa !466
  %arrayidx95 = getelementptr inbounds i8*** %36, i64 %idxprom68.pre-phi, !dbg !681
  %37 = load i8*** %arrayidx95, align 8, !dbg !681, !tbaa !466
  %arrayidx96 = getelementptr inbounds i8** %37, i64 %idxprom67, !dbg !681
  %call97 = tail call i32 @sre_strcat(i8** %arrayidx96, i32 %call87, i8* %value, i32 -1) #7, !dbg !681
  %cmp98 = icmp slt i32 %call97, 0, !dbg !681
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !681

if.then100:                                       ; preds = %if.end91
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !682
  br label %if.end102, !dbg !682

if.end102:                                        ; preds = %if.end91, %if.then100, %if.then74
  ret void, !dbg !683
}

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

; Function Attrs: optsize
declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @MSAAppendGC(%struct.msa_struct* nocapture %msa, i8* %tag, i8* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !143), !dbg !684
  tail call void @llvm.dbg.value(metadata !{i8* %tag}, i64 0, metadata !144), !dbg !684
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !145), !dbg !684
  %gc_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31, !dbg !685
  %0 = load i8*** %gc_tag, align 8, !dbg !685, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !685
  br i1 %cmp, label %if.then, label %if.else, !dbg !685

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 517, i64 8) #7, !dbg !686
  %1 = bitcast i8* %call to i8**, !dbg !686
  store i8** %1, i8*** %gc_tag, align 8, !dbg !686, !tbaa !466
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 518, i64 8) #7, !dbg !688
  %2 = bitcast i8* %call2 to i8**, !dbg !688
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !688
  store i8** %2, i8*** %gc, align 8, !dbg !688, !tbaa !466
  %call3 = tail call %struct.GKI* @GKIInit() #7, !dbg !689
  %gc_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33, !dbg !689
  store %struct.GKI* %call3, %struct.GKI** %gc_idx, align 8, !dbg !689, !tbaa !466
  %call5 = tail call i32 @GKIStoreKey(%struct.GKI* %call3, i8* %tag) #7, !dbg !690
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !146), !dbg !690
  %3 = load i8*** %gc, align 8, !dbg !691, !tbaa !466
  store i8* null, i8** %3, align 8, !dbg !691, !tbaa !466
  br label %if.end25, !dbg !692

if.else:                                          ; preds = %entry
  %gc_idx7 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33, !dbg !693
  %4 = load %struct.GKI** %gc_idx7, align 8, !dbg !693, !tbaa !466
  %call8 = tail call i32 @GKIKeyIndex(%struct.GKI* %4, i8* %tag) #7, !dbg !693
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !146), !dbg !693
  %cmp9 = icmp slt i32 %call8, 0, !dbg !695
  br i1 %cmp9, label %if.then10, label %if.end25, !dbg !695

if.then10:                                        ; preds = %if.else
  %5 = load %struct.GKI** %gc_idx7, align 8, !dbg !696, !tbaa !466
  %call12 = tail call i32 @GKIStoreKey(%struct.GKI* %5, i8* %tag) #7, !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !146), !dbg !696
  %6 = load i8*** %gc_tag, align 8, !dbg !698, !tbaa !466
  %7 = bitcast i8** %6 to i8*, !dbg !698
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !698
  %8 = load i32* %ngc, align 4, !dbg !698, !tbaa !478
  %add = add nsw i32 %8, 1, !dbg !698
  %conv = sext i32 %add to i64, !dbg !698
  %mul = shl nsw i64 %conv, 3, !dbg !698
  %call14 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 533, i8* %7, i64 %mul) #7, !dbg !698
  %9 = bitcast i8* %call14 to i8**, !dbg !698
  store i8** %9, i8*** %gc_tag, align 8, !dbg !698, !tbaa !466
  %gc16 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !699
  %10 = load i8*** %gc16, align 8, !dbg !699, !tbaa !466
  %11 = bitcast i8** %10 to i8*, !dbg !699
  %12 = load i32* %ngc, align 4, !dbg !699, !tbaa !478
  %add18 = add nsw i32 %12, 1, !dbg !699
  %conv19 = sext i32 %add18 to i64, !dbg !699
  %mul20 = shl nsw i64 %conv19, 3, !dbg !699
  %call21 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 534, i8* %11, i64 %mul20) #7, !dbg !699
  %13 = bitcast i8* %call21 to i8**, !dbg !699
  store i8** %13, i8*** %gc16, align 8, !dbg !699, !tbaa !466
  %idxprom = sext i32 %call12 to i64, !dbg !700
  %arrayidx24 = getelementptr inbounds i8** %13, i64 %idxprom, !dbg !700
  store i8* null, i8** %arrayidx24, align 8, !dbg !700, !tbaa !466
  br label %if.end25, !dbg !701

if.end25:                                         ; preds = %if.else, %if.then10, %if.then
  %tagidx.0 = phi i32 [ %call5, %if.then ], [ %call12, %if.then10 ], [ %call8, %if.else ]
  %ngc26 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !702
  %14 = load i32* %ngc26, align 4, !dbg !702, !tbaa !478
  %cmp27 = icmp eq i32 %tagidx.0, %14, !dbg !702
  br i1 %cmp27, label %if.then29, label %if.end25.if.end35_crit_edge, !dbg !702

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  %idxprom36.pre = sext i32 %tagidx.0 to i64, !dbg !703
  br label %if.end35, !dbg !702

if.then29:                                        ; preds = %if.end25
  %call30 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #7, !dbg !704
  %idxprom31 = sext i32 %tagidx.0 to i64, !dbg !704
  %15 = load i8*** %gc_tag, align 8, !dbg !704, !tbaa !466
  %arrayidx33 = getelementptr inbounds i8** %15, i64 %idxprom31, !dbg !704
  store i8* %call30, i8** %arrayidx33, align 8, !dbg !704, !tbaa !466
  %16 = load i32* %ngc26, align 4, !dbg !706, !tbaa !478
  %inc = add nsw i32 %16, 1, !dbg !706
  store i32 %inc, i32* %ngc26, align 4, !dbg !706, !tbaa !478
  br label %if.end35, !dbg !707

if.end35:                                         ; preds = %if.end25.if.end35_crit_edge, %if.then29
  %idxprom36.pre-phi = phi i64 [ %idxprom36.pre, %if.end25.if.end35_crit_edge ], [ %idxprom31, %if.then29 ], !dbg !703
  %gc37 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !703
  %17 = load i8*** %gc37, align 8, !dbg !703, !tbaa !466
  %arrayidx38 = getelementptr inbounds i8** %17, i64 %idxprom36.pre-phi, !dbg !703
  %call39 = tail call i32 @sre_strcat(i8** %arrayidx38, i32 -1, i8* %value, i32 -1) #7, !dbg !703
  ret void, !dbg !708
}

; Function Attrs: nounwind optsize uwtable
define i8* @MSAGetGC(%struct.msa_struct* nocapture %msa, i8* %tag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !151), !dbg !709
  tail call void @llvm.dbg.value(metadata !{i8* %tag}, i64 0, metadata !152), !dbg !709
  %gc_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33, !dbg !710
  %0 = load %struct.GKI** %gc_idx, align 8, !dbg !710, !tbaa !466
  %cmp = icmp eq %struct.GKI* %0, null, !dbg !710
  br i1 %cmp, label %return, label %if.end, !dbg !710

if.end:                                           ; preds = %entry
  %call = tail call i32 @GKIKeyIndex(%struct.GKI* %0, i8* %tag) #7, !dbg !711
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !153), !dbg !711
  %cmp2 = icmp slt i32 %call, 0, !dbg !711
  br i1 %cmp2, label %return, label %if.end4, !dbg !711

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %call to i64, !dbg !712
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !712
  %1 = load i8*** %gc, align 8, !dbg !712, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !712
  %2 = load i8** %arrayidx, align 8, !dbg !712, !tbaa !466
  br label %return, !dbg !712

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %2, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0, !dbg !713
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAppendGR(%struct.msa_struct* nocapture %msa, i8* %tag, i32 %sqidx, i8* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !156), !dbg !714
  tail call void @llvm.dbg.value(metadata !{i8* %tag}, i64 0, metadata !157), !dbg !714
  tail call void @llvm.dbg.value(metadata !{i32 %sqidx}, i64 0, metadata !158), !dbg !714
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !159), !dbg !714
  %gr_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35, !dbg !715
  %0 = load i8*** %gr_tag, align 8, !dbg !715, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !715
  br i1 %cmp, label %if.then, label %if.else, !dbg !715

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 601, i64 8) #7, !dbg !716
  %1 = bitcast i8* %call to i8**, !dbg !716
  store i8** %1, i8*** %gr_tag, align 8, !dbg !716, !tbaa !466
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 602, i64 8) #7, !dbg !718
  %2 = bitcast i8* %call2 to i8***, !dbg !718
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !718
  store i8*** %2, i8**** %gr, align 8, !dbg !718, !tbaa !466
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !719
  %3 = load i32* %nseqalloc, align 4, !dbg !719, !tbaa !478
  %conv = sext i32 %3 to i64, !dbg !719
  %mul = shl nsw i64 %conv, 3, !dbg !719
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 603, i64 %mul) #7, !dbg !719
  %4 = bitcast i8* %call3 to i8**, !dbg !719
  %5 = load i8**** %gr, align 8, !dbg !719, !tbaa !466
  store i8** %4, i8*** %5, align 8, !dbg !719, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !720
  %6 = load i32* %nseqalloc, align 4, !dbg !720, !tbaa !478
  %cmp6110 = icmp sgt i32 %6, 0, !dbg !720
  br i1 %cmp6110, label %for.body, label %for.end, !dbg !720

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %7 = load i8**** %gr, align 8, !dbg !722, !tbaa !466
  %8 = load i8*** %7, align 8, !dbg !722, !tbaa !466
  %arrayidx10 = getelementptr inbounds i8** %8, i64 %indvars.iv, !dbg !722
  store i8* null, i8** %arrayidx10, align 8, !dbg !722, !tbaa !466
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !720
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !720
  %cmp6 = icmp slt i32 %9, %6, !dbg !720
  br i1 %cmp6, label %for.body, label %for.end, !dbg !720

for.end:                                          ; preds = %for.body, %if.then
  %call11 = tail call %struct.GKI* @GKIInit() #7, !dbg !723
  %gr_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 37, !dbg !723
  store %struct.GKI* %call11, %struct.GKI** %gr_idx, align 8, !dbg !723, !tbaa !466
  %call13 = tail call i32 @GKIStoreKey(%struct.GKI* %call11, i8* %tag) #7, !dbg !724
  tail call void @llvm.dbg.value(metadata !{i32 %call13}, i64 0, metadata !160), !dbg !724
  br label %if.end55, !dbg !725

if.else:                                          ; preds = %entry
  %gr_idx14 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 37, !dbg !726
  %10 = load %struct.GKI** %gr_idx14, align 8, !dbg !726, !tbaa !466
  %call15 = tail call i32 @GKIKeyIndex(%struct.GKI* %10, i8* %tag) #7, !dbg !726
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !160), !dbg !726
  %cmp16 = icmp slt i32 %call15, 0, !dbg !728
  br i1 %cmp16, label %if.then18, label %if.end55, !dbg !728

if.then18:                                        ; preds = %if.else
  %11 = load %struct.GKI** %gr_idx14, align 8, !dbg !729, !tbaa !466
  %call20 = tail call i32 @GKIStoreKey(%struct.GKI* %11, i8* %tag) #7, !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !160), !dbg !729
  %12 = load i8*** %gr_tag, align 8, !dbg !731, !tbaa !466
  %13 = bitcast i8** %12 to i8*, !dbg !731
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !731
  %14 = load i32* %ngr, align 4, !dbg !731, !tbaa !478
  %add = add nsw i32 %14, 1, !dbg !731
  %conv22 = sext i32 %add to i64, !dbg !731
  %mul23 = shl nsw i64 %conv22, 3, !dbg !731
  %call24 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 620, i8* %13, i64 %mul23) #7, !dbg !731
  %15 = bitcast i8* %call24 to i8**, !dbg !731
  store i8** %15, i8*** %gr_tag, align 8, !dbg !731, !tbaa !466
  %gr26 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !732
  %16 = load i8**** %gr26, align 8, !dbg !732, !tbaa !466
  %17 = bitcast i8*** %16 to i8*, !dbg !732
  %18 = load i32* %ngr, align 4, !dbg !732, !tbaa !478
  %add28 = add nsw i32 %18, 1, !dbg !732
  %conv29 = sext i32 %add28 to i64, !dbg !732
  %mul30 = shl nsw i64 %conv29, 3, !dbg !732
  %call31 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 621, i8* %17, i64 %mul30) #7, !dbg !732
  %19 = bitcast i8* %call31 to i8***, !dbg !732
  store i8*** %19, i8**** %gr26, align 8, !dbg !732, !tbaa !466
  %nseqalloc33 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !733
  %20 = load i32* %nseqalloc33, align 4, !dbg !733, !tbaa !478
  %conv34 = sext i32 %20 to i64, !dbg !733
  %mul35 = shl nsw i64 %conv34, 3, !dbg !733
  %call36 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 622, i64 %mul35) #7, !dbg !733
  %21 = bitcast i8* %call36 to i8**, !dbg !733
  %22 = load i32* %ngr, align 4, !dbg !733, !tbaa !478
  %idxprom38 = sext i32 %22 to i64, !dbg !733
  %23 = load i8**** %gr26, align 8, !dbg !733, !tbaa !466
  %arrayidx40 = getelementptr inbounds i8*** %23, i64 %idxprom38, !dbg !733
  store i8** %21, i8*** %arrayidx40, align 8, !dbg !733, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !734
  %24 = load i32* %nseqalloc33, align 4, !dbg !734, !tbaa !478
  %cmp43112 = icmp sgt i32 %24, 0, !dbg !734
  br i1 %cmp43112, label %for.body45, label %if.end55, !dbg !734

for.body45:                                       ; preds = %if.then18, %for.body45
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body45 ], [ 0, %if.then18 ]
  %25 = load i8**** %gr26, align 8, !dbg !736, !tbaa !466
  %arrayidx50 = getelementptr inbounds i8*** %25, i64 %idxprom38, !dbg !736
  %26 = load i8*** %arrayidx50, align 8, !dbg !736, !tbaa !466
  %arrayidx51 = getelementptr inbounds i8** %26, i64 %indvars.iv114, !dbg !736
  store i8* null, i8** %arrayidx51, align 8, !dbg !736, !tbaa !466
  %indvars.iv.next115 = add i64 %indvars.iv114, 1, !dbg !734
  %27 = trunc i64 %indvars.iv.next115 to i32, !dbg !734
  %cmp43 = icmp slt i32 %27, %24, !dbg !734
  br i1 %cmp43, label %for.body45, label %if.end55, !dbg !734

if.end55:                                         ; preds = %if.then18, %for.body45, %if.else, %for.end
  %tagidx.0 = phi i32 [ %call13, %for.end ], [ %call15, %if.else ], [ %call20, %for.body45 ], [ %call20, %if.then18 ]
  %ngr56 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !737
  %28 = load i32* %ngr56, align 4, !dbg !737, !tbaa !478
  %cmp57 = icmp eq i32 %tagidx.0, %28, !dbg !737
  br i1 %cmp57, label %if.then59, label %if.end55.if.end66_crit_edge, !dbg !737

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  %idxprom68.pre = sext i32 %tagidx.0 to i64, !dbg !738
  br label %if.end66, !dbg !737

if.then59:                                        ; preds = %if.end55
  %call60 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #7, !dbg !739
  %idxprom61 = sext i32 %tagidx.0 to i64, !dbg !739
  %29 = load i8*** %gr_tag, align 8, !dbg !739, !tbaa !466
  %arrayidx63 = getelementptr inbounds i8** %29, i64 %idxprom61, !dbg !739
  store i8* %call60, i8** %arrayidx63, align 8, !dbg !739, !tbaa !466
  %30 = load i32* %ngr56, align 4, !dbg !741, !tbaa !478
  %inc65 = add nsw i32 %30, 1, !dbg !741
  store i32 %inc65, i32* %ngr56, align 4, !dbg !741, !tbaa !478
  br label %if.end66, !dbg !742

if.end66:                                         ; preds = %if.end55.if.end66_crit_edge, %if.then59
  %idxprom68.pre-phi = phi i64 [ %idxprom68.pre, %if.end55.if.end66_crit_edge ], [ %idxprom61, %if.then59 ], !dbg !738
  %idxprom67 = sext i32 %sqidx to i64, !dbg !738
  %gr69 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !738
  %31 = load i8**** %gr69, align 8, !dbg !738, !tbaa !466
  %arrayidx70 = getelementptr inbounds i8*** %31, i64 %idxprom68.pre-phi, !dbg !738
  %32 = load i8*** %arrayidx70, align 8, !dbg !738, !tbaa !466
  %arrayidx71 = getelementptr inbounds i8** %32, i64 %idxprom67, !dbg !738
  %call72 = tail call i32 @sre_strcat(i8** %arrayidx71, i32 -1, i8* %value, i32 -1) #7, !dbg !738
  ret void, !dbg !743
}

; Function Attrs: nounwind optsize uwtable
define void @MSAVerifyParse(%struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !164), !dbg !744
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !745
  %0 = load i32* %nseq, align 4, !dbg !745, !tbaa !478
  %cmp = icmp eq i32 %0, 0, !dbg !745
  br i1 %cmp, label %if.then, label %if.end, !dbg !745

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !745
  %1 = load i8** %name, align 8, !dbg !745, !tbaa !466
  %cmp1 = icmp eq i8* %1, null, !dbg !745
  %. = select i1 %cmp1, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %1, !dbg !745
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i8* %.) #7, !dbg !745
  %.pre = load i32* %nseq, align 4, !dbg !746, !tbaa !478
  br label %if.end, !dbg !745

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %sqlen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 42, !dbg !748
  %3 = load i32** %sqlen, align 8, !dbg !748, !tbaa !466
  %4 = load i32* %3, align 4, !dbg !748, !tbaa !478
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !748
  store i32 %4, i32* %alen, align 4, !dbg !748, !tbaa !478
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !165), !dbg !746
  %cmp4309 = icmp sgt i32 %2, 0, !dbg !746
  br i1 %cmp4309, label %for.body.lr.ph, label %for.end, !dbg !746

for.body.lr.ph:                                   ; preds = %if.end
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !749
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !751
  %name10 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !751
  %flags = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5, !dbg !752
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !753
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !754
  %salen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44, !dbg !754
  %sslen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43, !dbg !753
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !752
  br label %for.body, !dbg !746

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load i8*** %aseq, align 8, !dbg !749, !tbaa !466
  %arrayidx5 = getelementptr inbounds i8** %5, i64 %indvars.iv, !dbg !749
  %6 = load i8** %arrayidx5, align 8, !dbg !749, !tbaa !466
  %cmp6 = icmp eq i8* %6, null, !dbg !749
  br i1 %cmp6, label %if.then7, label %if.end17, !dbg !749

if.then7:                                         ; preds = %for.body
  %7 = load i8*** %sqname, align 8, !dbg !751, !tbaa !466
  %arrayidx9 = getelementptr inbounds i8** %7, i64 %indvars.iv, !dbg !751
  %8 = load i8** %arrayidx9, align 8, !dbg !751, !tbaa !466
  %9 = load i8** %name10, align 8, !dbg !751, !tbaa !466
  %cmp11 = icmp eq i8* %9, null, !dbg !751
  %.301 = select i1 %cmp11, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %9, !dbg !751
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), i8* %8, i8* %.301) #7, !dbg !751
  br label %if.end17, !dbg !751

if.end17:                                         ; preds = %for.body, %if.then7
  %10 = load i32* %flags, align 4, !dbg !752, !tbaa !478
  %and = and i32 %10, 1, !dbg !752
  %tobool = icmp eq i32 %and, 0, !dbg !752
  br i1 %tobool, label %if.end34, label %land.lhs.true, !dbg !752

land.lhs.true:                                    ; preds = %if.end17
  %11 = load float** %wgt, align 8, !dbg !752, !tbaa !466
  %arrayidx19 = getelementptr inbounds float* %11, i64 %indvars.iv, !dbg !752
  %12 = load float* %arrayidx19, align 4, !dbg !752, !tbaa !480
  %cmp20 = fcmp oeq float %12, -1.000000e+00, !dbg !752
  br i1 %cmp20, label %if.then22, label %if.end34, !dbg !752

if.then22:                                        ; preds = %land.lhs.true
  %13 = load i8*** %sqname, align 8, !dbg !755, !tbaa !466
  %arrayidx25 = getelementptr inbounds i8** %13, i64 %indvars.iv, !dbg !755
  %14 = load i8** %arrayidx25, align 8, !dbg !755, !tbaa !466
  %15 = load i8** %name10, align 8, !dbg !755, !tbaa !466
  %cmp27 = icmp eq i8* %15, null, !dbg !755
  %.302 = select i1 %cmp27, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %15, !dbg !755
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([75 x i8]* @.str6, i64 0, i64 0), i8* %14, i8* %.302) #7, !dbg !755
  br label %if.end34, !dbg !755

if.end34:                                         ; preds = %land.lhs.true, %if.end17, %if.then22
  %16 = load i32** %sqlen, align 8, !dbg !756, !tbaa !466
  %arrayidx37 = getelementptr inbounds i32* %16, i64 %indvars.iv, !dbg !756
  %17 = load i32* %arrayidx37, align 4, !dbg !756, !tbaa !478
  %18 = load i32* %alen, align 4, !dbg !756, !tbaa !478
  %cmp39 = icmp eq i32 %17, %18, !dbg !756
  br i1 %cmp39, label %if.end57, label %if.then41, !dbg !756

if.then41:                                        ; preds = %if.end34
  %19 = load i8*** %sqname, align 8, !dbg !757, !tbaa !466
  %arrayidx44 = getelementptr inbounds i8** %19, i64 %indvars.iv, !dbg !757
  %20 = load i8** %arrayidx44, align 8, !dbg !757, !tbaa !466
  %21 = load i8** %name10, align 8, !dbg !757, !tbaa !466
  %cmp50 = icmp eq i8* %21, null, !dbg !757
  %.303 = select i1 %cmp50, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %21, !dbg !757
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str7, i64 0, i64 0), i8* %20, i32 %17, i32 %18, i8* %.303) #7, !dbg !757
  br label %if.end57, !dbg !757

if.end57:                                         ; preds = %if.end34, %if.then41
  %22 = load i8*** %ss, align 8, !dbg !753, !tbaa !466
  %cmp58 = icmp eq i8** %22, null, !dbg !753
  br i1 %cmp58, label %if.end88, label %land.lhs.true60, !dbg !753

land.lhs.true60:                                  ; preds = %if.end57
  %arrayidx63 = getelementptr inbounds i8** %22, i64 %indvars.iv, !dbg !753
  %23 = load i8** %arrayidx63, align 8, !dbg !753, !tbaa !466
  %cmp64 = icmp eq i8* %23, null, !dbg !753
  br i1 %cmp64, label %if.end88, label %land.lhs.true66, !dbg !753

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %24 = load i32** %sslen, align 8, !dbg !753, !tbaa !466
  %arrayidx68 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !753
  %25 = load i32* %arrayidx68, align 4, !dbg !753, !tbaa !478
  %26 = load i32* %alen, align 4, !dbg !753, !tbaa !478
  %cmp70 = icmp eq i32 %25, %26, !dbg !753
  br i1 %cmp70, label %if.end88, label %if.then72, !dbg !753

if.then72:                                        ; preds = %land.lhs.true66
  %27 = load i8*** %sqname, align 8, !dbg !758, !tbaa !466
  %arrayidx75 = getelementptr inbounds i8** %27, i64 %indvars.iv, !dbg !758
  %28 = load i8** %arrayidx75, align 8, !dbg !758, !tbaa !466
  %29 = load i8** %name10, align 8, !dbg !758, !tbaa !466
  %cmp81 = icmp eq i8* %29, null, !dbg !758
  %.304 = select i1 %cmp81, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %29, !dbg !758
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([79 x i8]* @.str8, i64 0, i64 0), i8* %28, i32 %25, i32 %26, i8* %.304) #7, !dbg !758
  br label %if.end88, !dbg !758

if.end88:                                         ; preds = %land.lhs.true66, %land.lhs.true60, %if.end57, %if.then72
  %30 = load i8*** %sa, align 8, !dbg !754, !tbaa !466
  %cmp89 = icmp eq i8** %30, null, !dbg !754
  br i1 %cmp89, label %for.inc, label %land.lhs.true91, !dbg !754

land.lhs.true91:                                  ; preds = %if.end88
  %arrayidx94 = getelementptr inbounds i8** %30, i64 %indvars.iv, !dbg !754
  %31 = load i8** %arrayidx94, align 8, !dbg !754, !tbaa !466
  %cmp95 = icmp eq i8* %31, null, !dbg !754
  br i1 %cmp95, label %for.inc, label %land.lhs.true97, !dbg !754

land.lhs.true97:                                  ; preds = %land.lhs.true91
  %32 = load i32** %salen, align 8, !dbg !754, !tbaa !466
  %arrayidx99 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !754
  %33 = load i32* %arrayidx99, align 4, !dbg !754, !tbaa !478
  %34 = load i32* %alen, align 4, !dbg !754, !tbaa !478
  %cmp101 = icmp eq i32 %33, %34, !dbg !754
  br i1 %cmp101, label %for.inc, label %if.then103, !dbg !754

if.then103:                                       ; preds = %land.lhs.true97
  %35 = load i8*** %sqname, align 8, !dbg !759, !tbaa !466
  %arrayidx106 = getelementptr inbounds i8** %35, i64 %indvars.iv, !dbg !759
  %36 = load i8** %arrayidx106, align 8, !dbg !759, !tbaa !466
  %37 = load i8** %name10, align 8, !dbg !759, !tbaa !466
  %cmp112 = icmp eq i8* %37, null, !dbg !759
  %.305 = select i1 %cmp112, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %37, !dbg !759
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([79 x i8]* @.str9, i64 0, i64 0), i8* %36, i32 %33, i32 %34, i8* %.305) #7, !dbg !759
  br label %for.inc, !dbg !759

for.inc:                                          ; preds = %land.lhs.true97, %land.lhs.true91, %if.end88, %if.then103
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !746
  %38 = load i32* %nseq, align 4, !dbg !746, !tbaa !478
  %39 = trunc i64 %indvars.iv.next to i32, !dbg !746
  %cmp4 = icmp slt i32 %39, %38, !dbg !746
  br i1 %cmp4, label %for.body, label %for.end, !dbg !746

for.end:                                          ; preds = %for.inc, %if.end
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !760
  %40 = load i8** %ss_cons, align 8, !dbg !760, !tbaa !466
  %cmp120 = icmp eq i8* %40, null, !dbg !760
  br i1 %cmp120, label %if.end140, label %land.lhs.true122, !dbg !760

land.lhs.true122:                                 ; preds = %for.end
  %call = tail call i64 @strlen(i8* %40) #8, !dbg !760
  %41 = load i32* %alen, align 4, !dbg !760, !tbaa !478
  %conv125 = sext i32 %41 to i64, !dbg !760
  %cmp126 = icmp eq i64 %call, %conv125, !dbg !760
  br i1 %cmp126, label %if.end140, label %if.then128, !dbg !760

if.then128:                                       ; preds = %land.lhs.true122
  %name132 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !761
  %42 = load i8** %name132, align 8, !dbg !761, !tbaa !466
  %cmp133 = icmp eq i8* %42, null, !dbg !761
  %.306 = select i1 %cmp133, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %42, !dbg !761
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0), i64 %call, i32 %41, i8* %.306) #7, !dbg !761
  br label %if.end140, !dbg !761

if.end140:                                        ; preds = %land.lhs.true122, %for.end, %if.then128
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !762
  %43 = load i8** %sa_cons, align 8, !dbg !762, !tbaa !466
  %cmp141 = icmp eq i8* %43, null, !dbg !762
  br i1 %cmp141, label %if.end162, label %land.lhs.true143, !dbg !762

land.lhs.true143:                                 ; preds = %if.end140
  %call145 = tail call i64 @strlen(i8* %43) #8, !dbg !762
  %44 = load i32* %alen, align 4, !dbg !762, !tbaa !478
  %conv147 = sext i32 %44 to i64, !dbg !762
  %cmp148 = icmp eq i64 %call145, %conv147, !dbg !762
  br i1 %cmp148, label %if.end162, label %if.then150, !dbg !762

if.then150:                                       ; preds = %land.lhs.true143
  %name154 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !763
  %45 = load i8** %name154, align 8, !dbg !763, !tbaa !466
  %cmp155 = icmp eq i8* %45, null, !dbg !763
  %.307 = select i1 %cmp155, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %45, !dbg !763
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([77 x i8]* @.str11, i64 0, i64 0), i64 %call145, i32 %44, i8* %.307) #7, !dbg !763
  br label %if.end162, !dbg !763

if.end162:                                        ; preds = %land.lhs.true143, %if.end140, %if.then150
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !764
  %46 = load i8** %rf, align 8, !dbg !764, !tbaa !466
  %cmp163 = icmp eq i8* %46, null, !dbg !764
  br i1 %cmp163, label %if.end184, label %land.lhs.true165, !dbg !764

land.lhs.true165:                                 ; preds = %if.end162
  %call167 = tail call i64 @strlen(i8* %46) #8, !dbg !764
  %47 = load i32* %alen, align 4, !dbg !764, !tbaa !478
  %conv169 = sext i32 %47 to i64, !dbg !764
  %cmp170 = icmp eq i64 %call167, %conv169, !dbg !764
  br i1 %cmp170, label %if.end184, label %if.then172, !dbg !764

if.then172:                                       ; preds = %land.lhs.true165
  %name176 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !765
  %48 = load i8** %name176, align 8, !dbg !765, !tbaa !466
  %cmp177 = icmp eq i8* %48, null, !dbg !765
  %.308 = select i1 %cmp177, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %48, !dbg !765
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), i64 %call167, i32 %47, i8* %.308) #7, !dbg !765
  br label %if.end184, !dbg !765

if.end184:                                        ; preds = %land.lhs.true165, %if.end162, %if.then172
  %flags185 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5, !dbg !766
  %49 = load i32* %flags185, align 4, !dbg !766, !tbaa !478
  %and186 = and i32 %49, 1, !dbg !766
  %tobool187 = icmp eq i32 %and186, 0, !dbg !766
  br i1 %tobool187, label %if.then188, label %if.end191, !dbg !766

if.then188:                                       ; preds = %if.end184
  %wgt189 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !767
  %50 = load float** %wgt189, align 8, !dbg !767, !tbaa !466
  %51 = load i32* %nseq, align 4, !dbg !767, !tbaa !478
  tail call void @FSet(float* %50, i32 %51, float 1.000000e+00) #7, !dbg !767
  br label %if.end191, !dbg !767

if.end191:                                        ; preds = %if.end184, %if.then188
  %52 = load i32** %sqlen, align 8, !dbg !768, !tbaa !466
  %cmp193 = icmp eq i32* %52, null, !dbg !768
  br i1 %cmp193, label %if.end198, label %if.then195, !dbg !768

if.then195:                                       ; preds = %if.end191
  %53 = bitcast i32* %52 to i8*, !dbg !769
  tail call void @free(i8* %53) #7, !dbg !769
  store i32* null, i32** %sqlen, align 8, !dbg !769, !tbaa !466
  br label %if.end198, !dbg !769

if.end198:                                        ; preds = %if.end191, %if.then195
  %sslen199 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43, !dbg !771
  %54 = load i32** %sslen199, align 8, !dbg !771, !tbaa !466
  %cmp200 = icmp eq i32* %54, null, !dbg !771
  br i1 %cmp200, label %if.end205, label %if.then202, !dbg !771

if.then202:                                       ; preds = %if.end198
  %55 = bitcast i32* %54 to i8*, !dbg !772
  tail call void @free(i8* %55) #7, !dbg !772
  store i32* null, i32** %sslen199, align 8, !dbg !772, !tbaa !466
  br label %if.end205, !dbg !772

if.end205:                                        ; preds = %if.end198, %if.then202
  %salen206 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44, !dbg !774
  %56 = load i32** %salen206, align 8, !dbg !774, !tbaa !466
  %cmp207 = icmp eq i32* %56, null, !dbg !774
  br i1 %cmp207, label %if.end212, label %if.then209, !dbg !774

if.then209:                                       ; preds = %if.end205
  %57 = bitcast i32* %56 to i8*, !dbg !775
  tail call void @free(i8* %57) #7, !dbg !775
  store i32* null, i32** %salen206, align 8, !dbg !775, !tbaa !466
  br label %if.end212, !dbg !775

if.end212:                                        ; preds = %if.end205, %if.then209
  ret void, !dbg !777
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: nounwind optsize uwtable
define %struct.msafile_struct* @MSAFileOpen(i8* %filename, i32 %format, i8* %env) #0 {
entry:
  %cmd = alloca [256 x i8], align 16
  %dir = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !279), !dbg !778
  call void @llvm.dbg.value(metadata !{i32 %format}, i64 0, metadata !280), !dbg !778
  call void @llvm.dbg.value(metadata !{i8* %env}, i64 0, metadata !281), !dbg !778
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 760, i64 64) #7, !dbg !779
  %0 = bitcast i8* %call to %struct.msafile_struct*, !dbg !779
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %0}, i64 0, metadata !282), !dbg !779
  %call1 = call i32 @strcmp(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !780
  %cmp = icmp eq i32 %call1, 0, !dbg !780
  br i1 %cmp, label %if.then, label %if.else, !dbg !780

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stdin, align 8, !dbg !781, !tbaa !466
  %f = bitcast i8* %call to %struct._IO_FILE**, !dbg !781
  store %struct._IO_FILE* %1, %struct._IO_FILE** %f, align 8, !dbg !781, !tbaa !466
  %do_stdin = getelementptr inbounds i8* %call, i64 52, !dbg !783
  %2 = bitcast i8* %do_stdin to i32*, !dbg !783
  store i32 1, i32* %2, align 4, !dbg !783, !tbaa !478
  %do_gzip = getelementptr inbounds i8* %call, i64 48, !dbg !784
  %3 = bitcast i8* %do_gzip to i32*, !dbg !784
  store i32 0, i32* %3, align 4, !dbg !784, !tbaa !478
  %call2 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i32 -1) #7, !dbg !785
  %fname = getelementptr inbounds i8* %call, i64 8, !dbg !785
  %4 = bitcast i8* %fname to i8**, !dbg !785
  store i8* %call2, i8** %4, align 8, !dbg !785, !tbaa !466
  %ssi = getelementptr inbounds i8* %call, i64 40, !dbg !786
  %5 = bitcast i8* %ssi to %struct.ssifile_s**, !dbg !786
  store %struct.ssifile_s* null, %struct.ssifile_s** %5, align 8, !dbg !786, !tbaa !466
  br label %if.end57, !dbg !787

if.else:                                          ; preds = %entry
  %call3 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* %filename, i32 0) #7, !dbg !788
  %tobool = icmp eq i32 %call3, 0, !dbg !788
  br i1 %tobool, label %if.else24, label %if.then4, !dbg !788

if.then4:                                         ; preds = %if.else
  %6 = getelementptr inbounds [256 x i8]* %cmd, i64 0, i64 0, !dbg !789
  call void @llvm.lifetime.start(i64 256, i8* %6) #5, !dbg !789
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %cmd}, metadata !283), !dbg !789
  %call5 = call i32 @FileExists(i8* %filename) #7, !dbg !790
  %tobool6 = icmp eq i32 %call5, 0, !dbg !790
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !790

if.then7:                                         ; preds = %if.then4
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %filename) #7, !dbg !791
  br label %if.end, !dbg !791

if.end:                                           ; preds = %if.then4, %if.then7
  %call8 = call i64 @strlen(i8* %filename) #8, !dbg !792
  %add = add i64 %call8, 9, !dbg !792
  %cmp9 = icmp ugt i64 %add, 255, !dbg !792
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !792

if.then10:                                        ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !793
  br label %if.end11, !dbg !793

if.end11:                                         ; preds = %if.then10, %if.end
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %6, i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i8* %filename) #7, !dbg !794
  %call14 = call %struct._IO_FILE* @popen(i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !795
  %f15 = bitcast i8* %call to %struct._IO_FILE**, !dbg !795
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %f15, align 8, !dbg !795, !tbaa !466
  %cmp16 = icmp eq %struct._IO_FILE* %call14, null, !dbg !795
  br i1 %cmp16, label %return, label %if.end18, !dbg !795

if.end18:                                         ; preds = %if.end11
  %do_stdin19 = getelementptr inbounds i8* %call, i64 52, !dbg !796
  %7 = bitcast i8* %do_stdin19 to i32*, !dbg !796
  store i32 0, i32* %7, align 4, !dbg !796, !tbaa !478
  %do_gzip20 = getelementptr inbounds i8* %call, i64 48, !dbg !797
  %8 = bitcast i8* %do_gzip20 to i32*, !dbg !797
  store i32 1, i32* %8, align 4, !dbg !797, !tbaa !478
  %call21 = call i8* @sre_strdup(i8* %filename, i32 -1) #7, !dbg !798
  %fname22 = getelementptr inbounds i8* %call, i64 8, !dbg !798
  %9 = bitcast i8* %fname22 to i8**, !dbg !798
  store i8* %call21, i8** %9, align 8, !dbg !798, !tbaa !466
  %ssi23 = getelementptr inbounds i8* %call, i64 40, !dbg !799
  %10 = bitcast i8* %ssi23 to %struct.ssifile_s**, !dbg !799
  store %struct.ssifile_s* null, %struct.ssifile_s** %10, align 8, !dbg !799, !tbaa !466
  call void @llvm.lifetime.end(i64 256, i8* %6) #5, !dbg !800
  br label %if.end57

if.else24:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata !{i8** %dir}, metadata !290), !dbg !801
  %call25 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !802
  %f26 = bitcast i8* %call to %struct._IO_FILE**, !dbg !802
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %f26, align 8, !dbg !802, !tbaa !466
  %cmp27 = icmp eq %struct._IO_FILE* %call25, null, !dbg !802
  br i1 %cmp27, label %if.else33, label %if.then28, !dbg !802

if.then28:                                        ; preds = %if.else24
  %call29 = call i64 @strlen(i8* %filename) #8, !dbg !803
  %add30 = add i64 %call29, 5, !dbg !803
  %call31 = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 806, i64 %add30) #7, !dbg !803
  call void @llvm.dbg.value(metadata !{i8* %call31}, i64 0, metadata !288), !dbg !803
  %call32 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call31, i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* %filename) #7, !dbg !805
  br label %if.end48, !dbg !806

if.else33:                                        ; preds = %if.else24
  %call34 = call %struct._IO_FILE* @EnvFileOpen(i8* %filename, i8* %env, i8** %dir) #7, !dbg !807
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %f26, align 8, !dbg !807, !tbaa !466
  %cmp36 = icmp eq %struct._IO_FILE* %call34, null, !dbg !807
  br i1 %cmp36, label %return, label %if.then37, !dbg !807

if.then37:                                        ; preds = %if.else33
  call void @llvm.dbg.value(metadata !{i8** %dir}, i64 0, metadata !290), !dbg !808
  %11 = load i8** %dir, align 8, !dbg !808, !tbaa !466
  %call38 = call i8* @FileConcat(i8* %11, i8* %filename) #7, !dbg !808
  call void @llvm.dbg.value(metadata !{i8* %call38}, i64 0, metadata !291), !dbg !808
  %call39 = call i64 @strlen(i8* %call38) #8, !dbg !809
  %call40 = call i64 @strlen(i8* %filename) #8, !dbg !809
  %add41 = add i64 %call39, 5, !dbg !809
  %add42 = add i64 %add41, %call40, !dbg !809
  %call44 = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 813, i64 %add42) #7, !dbg !809
  call void @llvm.dbg.value(metadata !{i8* %call44}, i64 0, metadata !288), !dbg !809
  %call45 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call44, i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* %call38) #7, !dbg !810
  call void @llvm.dbg.value(metadata !{i8** %dir}, i64 0, metadata !290), !dbg !811
  %12 = load i8** %dir, align 8, !dbg !811, !tbaa !466
  call void @free(i8* %12) #7, !dbg !811
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %if.then28
  %ssifile.0 = phi i8* [ %call31, %if.then28 ], [ %call44, %if.then37 ]
  %do_stdin49 = getelementptr inbounds i8* %call, i64 52, !dbg !812
  %13 = bitcast i8* %do_stdin49 to i32*, !dbg !812
  store i32 0, i32* %13, align 4, !dbg !812, !tbaa !478
  %do_gzip50 = getelementptr inbounds i8* %call, i64 48, !dbg !813
  %14 = bitcast i8* %do_gzip50 to i32*, !dbg !813
  store i32 0, i32* %14, align 4, !dbg !813, !tbaa !478
  %call51 = call i8* @sre_strdup(i8* %filename, i32 -1) #7, !dbg !814
  %fname52 = getelementptr inbounds i8* %call, i64 8, !dbg !814
  %15 = bitcast i8* %fname52 to i8**, !dbg !814
  store i8* %call51, i8** %15, align 8, !dbg !814, !tbaa !466
  %ssi53 = getelementptr inbounds i8* %call, i64 40, !dbg !815
  %16 = bitcast i8* %ssi53 to %struct.ssifile_s**, !dbg !815
  store %struct.ssifile_s* null, %struct.ssifile_s** %16, align 8, !dbg !815, !tbaa !466
  %call55 = call i32 @SSIOpen(i8* %ssifile.0, %struct.ssifile_s** %16) #7, !dbg !816
  call void @free(i8* %ssifile.0) #7, !dbg !817
  br label %if.end57

if.end57:                                         ; preds = %if.end18, %if.end48, %if.then
  %cmp58 = icmp eq i32 %format, 0, !dbg !818
  br i1 %cmp58, label %if.then59, label %if.end71, !dbg !818

if.then59:                                        ; preds = %if.end57
  %do_stdin60 = getelementptr inbounds i8* %call, i64 52, !dbg !819
  %17 = bitcast i8* %do_stdin60 to i32*, !dbg !819
  %18 = load i32* %17, align 4, !dbg !819, !tbaa !478
  %cmp61 = icmp eq i32 %18, 1, !dbg !819
  br i1 %cmp61, label %if.then64, label %lor.lhs.false, !dbg !819

lor.lhs.false:                                    ; preds = %if.then59
  %do_gzip62 = getelementptr inbounds i8* %call, i64 48, !dbg !819
  %19 = bitcast i8* %do_gzip62 to i32*, !dbg !819
  %20 = load i32* %19, align 4, !dbg !819, !tbaa !478
  %tobool63 = icmp eq i32 %20, 0, !dbg !819
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !819

if.then64:                                        ; preds = %lor.lhs.false, %if.then59
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !821
  br label %if.end65, !dbg !821

if.end65:                                         ; preds = %lor.lhs.false, %if.then64
  %call66 = call i32 @MSAFileFormat(%struct.msafile_struct* %0) #9, !dbg !822
  call void @llvm.dbg.value(metadata !{i32 %call66}, i64 0, metadata !280), !dbg !822
  %cmp67 = icmp eq i32 %call66, 0, !dbg !823
  br i1 %cmp67, label %if.then68, label %if.end71, !dbg !823

if.then68:                                        ; preds = %if.end65
  %fname69 = getelementptr inbounds i8* %call, i64 8, !dbg !824
  %21 = bitcast i8* %fname69 to i8**, !dbg !824
  %22 = load i8** %21, align 8, !dbg !824, !tbaa !466
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([53 x i8]* @.str22, i64 0, i64 0), i8* %22) #7, !dbg !824
  br label %if.end71, !dbg !824

if.end71:                                         ; preds = %if.end65, %if.then68, %if.end57
  %format.addr.0 = phi i32 [ 0, %if.then68 ], [ %call66, %if.end65 ], [ %format, %if.end57 ]
  %format72 = getelementptr inbounds i8* %call, i64 56, !dbg !825
  %23 = bitcast i8* %format72 to i32*, !dbg !825
  store i32 %format.addr.0, i32* %23, align 4, !dbg !825, !tbaa !478
  %linenumber = getelementptr inbounds i8* %call, i64 16, !dbg !826
  %24 = bitcast i8* %linenumber to i32*, !dbg !826
  store i32 0, i32* %24, align 4, !dbg !826, !tbaa !478
  %buf = getelementptr inbounds i8* %call, i64 24, !dbg !827
  %25 = bitcast i8* %buf to i8**, !dbg !827
  store i8* null, i8** %25, align 8, !dbg !827, !tbaa !466
  %buflen = getelementptr inbounds i8* %call, i64 32, !dbg !828
  %26 = bitcast i8* %buflen to i32*, !dbg !828
  store i32 0, i32* %26, align 4, !dbg !828, !tbaa !478
  br label %return, !dbg !829

return:                                           ; preds = %if.else33, %if.end11, %if.end71
  %retval.1 = phi %struct.msafile_struct* [ %0, %if.end71 ], [ null, %if.end11 ], [ null, %if.else33 ]
  ret %struct.msafile_struct* %retval.1, !dbg !830
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @FileExists(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @popen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #2

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #2

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFileFormat(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !401), !dbg !831
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !832
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !832, !tbaa !466
  %call = tail call i32 @SeqfileFormat(%struct._IO_FILE* %0) #7, !dbg !832
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !402), !dbg !832
  %cmp = icmp eq i32 %call, 7, !dbg !833
  %.call = select i1 %cmp, i32 105, i32 %call, !dbg !833
  tail call void @llvm.dbg.value(metadata !{i32 %.call}, i64 0, metadata !402), !dbg !833
  %cmp1 = icmp eq i32 %.call, 0, !dbg !834
  %cmp2 = icmp sgt i32 %.call, 100, !dbg !834
  %or.cond = or i1 %cmp1, %cmp2, !dbg !834
  br i1 %or.cond, label %if.end5, label %if.then3, !dbg !834

if.then3:                                         ; preds = %entry
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !835
  %1 = load i8** %fname, align 8, !dbg !835, !tbaa !466
  %call4 = tail call i8* @SeqfileFormat2String(i32 %.call) #7, !dbg !836
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([156 x i8]* @.str25, i64 0, i64 0), i8* %1, i8* %call4) #7, !dbg !836
  br label %if.end5, !dbg !836

if.end5:                                          ; preds = %entry, %if.then3
  ret i32 %.call, !dbg !837
}

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFileRewind(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !297), !dbg !838
  %do_gzip = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 6, !dbg !839
  %0 = load i32* %do_gzip, align 4, !dbg !839, !tbaa !478
  %tobool = icmp eq i32 %0, 0, !dbg !839
  br i1 %tobool, label %lor.lhs.false, label %return, !dbg !839

lor.lhs.false:                                    ; preds = %entry
  %do_stdin = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7, !dbg !839
  %1 = load i32* %do_stdin, align 4, !dbg !839, !tbaa !478
  %tobool1 = icmp eq i32 %1, 0, !dbg !839
  br i1 %tobool1, label %if.end, label %return, !dbg !839

if.end:                                           ; preds = %lor.lhs.false
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !840
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !840, !tbaa !466
  tail call void @rewind(%struct._IO_FILE* %2) #7, !dbg !840
  br label %return, !dbg !841

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !841
}

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFilePositionByKey(%struct.msafile_struct* nocapture %afp, i8* %key) #0 {
entry:
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !302), !dbg !842
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !303), !dbg !842
  call void @llvm.dbg.declare(metadata !{i32* %fh}, metadata !304), !dbg !843
  call void @llvm.dbg.declare(metadata !{%struct.ssioffset_s* %offset}, metadata !305), !dbg !844
  %ssi = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 5, !dbg !845
  %0 = load %struct.ssifile_s** %ssi, align 8, !dbg !845, !tbaa !466
  %cmp = icmp eq %struct.ssifile_s* %0, null, !dbg !845
  br i1 %cmp, label %return, label %if.end, !dbg !845

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %0, i8* %key, i32* %fh, %struct.ssioffset_s* %offset) #7, !dbg !846
  %cmp2 = icmp eq i32 %call, 0, !dbg !846
  br i1 %cmp2, label %if.end4, label %return, !dbg !846

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !847
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !847, !tbaa !466
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #7, !dbg !847
  %cmp6 = icmp eq i32 %call5, 0, !dbg !847
  %. = zext i1 %cmp6 to i32, !dbg !848
  br label %return, !dbg !848

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0, !dbg !848
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #2

; Function Attrs: optsize
declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFilePositionByIndex(%struct.msafile_struct* nocapture %afp, i32 %idx) #0 {
entry:
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !310), !dbg !849
  call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !311), !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %fh}, metadata !312), !dbg !850
  call void @llvm.dbg.declare(metadata !{%struct.ssioffset_s* %offset}, metadata !313), !dbg !851
  %ssi = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 5, !dbg !852
  %0 = load %struct.ssifile_s** %ssi, align 8, !dbg !852, !tbaa !466
  %cmp = icmp eq %struct.ssifile_s* %0, null, !dbg !852
  br i1 %cmp, label %return, label %if.end, !dbg !852

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %0, i32 %idx, i32* %fh, %struct.ssioffset_s* %offset) #7, !dbg !853
  %cmp2 = icmp eq i32 %call, 0, !dbg !853
  br i1 %cmp2, label %if.end4, label %return, !dbg !853

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !854
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !854, !tbaa !466
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #7, !dbg !854
  %cmp6 = icmp eq i32 %call5, 0, !dbg !854
  %. = zext i1 %cmp6 to i32, !dbg !855
  br label %return, !dbg !855

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0, !dbg !855
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %afp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !318), !dbg !856
  tail call void @llvm.dbg.value(metadata !857, i64 0, metadata !319), !dbg !858
  %format = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 8, !dbg !859
  %0 = load i32* %format, align 4, !dbg !859, !tbaa !478
  switch i32 %0, label %sw.default [
    i32 101, label %sw.bb
    i32 103, label %sw.bb1
    i32 105, label %sw.bb3
    i32 104, label %sw.bb5
    i32 102, label %sw.bb7
    i32 106, label %sw.bb9
  ], !dbg !859

sw.bb:                                            ; preds = %entry
  %call = tail call %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %afp) #7, !dbg !860
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call}, i64 0, metadata !319), !dbg !860
  br label %sw.epilog, !dbg !860

sw.bb1:                                           ; preds = %entry
  %call2 = tail call %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %afp) #7, !dbg !862
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call2}, i64 0, metadata !319), !dbg !862
  br label %sw.epilog, !dbg !862

sw.bb3:                                           ; preds = %entry
  %call4 = tail call %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %afp) #7, !dbg !863
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call4}, i64 0, metadata !319), !dbg !863
  br label %sw.epilog, !dbg !863

sw.bb5:                                           ; preds = %entry
  %call6 = tail call %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %afp) #7, !dbg !864
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call6}, i64 0, metadata !319), !dbg !864
  br label %sw.epilog, !dbg !864

sw.bb7:                                           ; preds = %entry
  %call8 = tail call %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* %afp) #7, !dbg !865
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call8}, i64 0, metadata !319), !dbg !865
  br label %sw.epilog, !dbg !865

sw.bb9:                                           ; preds = %entry
  %call10 = tail call %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %afp) #7, !dbg !866
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call10}, i64 0, metadata !319), !dbg !866
  br label %sw.epilog, !dbg !866

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !867
  br label %sw.epilog, !dbg !868

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %msa.0 = phi %struct.msa_struct* [ null, %sw.default ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret %struct.msa_struct* %msa.0, !dbg !869
}

; Function Attrs: optsize
declare %struct.msa_struct* @ReadStockholm(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare %struct.msa_struct* @ReadMSF(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare %struct.msa_struct* @ReadA2M(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare %struct.msa_struct* @ReadClustal(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare %struct.msa_struct* @ReadSELEX(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare %struct.msa_struct* @ReadPhylip(%struct.msafile_struct*) #2

; Function Attrs: nounwind optsize uwtable
define void @MSAFileClose(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !324), !dbg !870
  %do_gzip = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 6, !dbg !871
  %0 = load i32* %do_gzip, align 4, !dbg !871, !tbaa !478
  %tobool = icmp eq i32 %0, 0, !dbg !871
  br i1 %tobool, label %if.end, label %if.then, !dbg !871

if.then:                                          ; preds = %entry
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !871
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !871, !tbaa !466
  %call = tail call i32 @pclose(%struct._IO_FILE* %1) #7, !dbg !871
  br label %if.end, !dbg !871

if.end:                                           ; preds = %entry, %if.then
  %do_stdin = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7, !dbg !872
  %2 = load i32* %do_stdin, align 4, !dbg !872, !tbaa !478
  %tobool1 = icmp eq i32 %2, 0, !dbg !872
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !872

if.then2:                                         ; preds = %if.end
  %f3 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !872
  %3 = load %struct._IO_FILE** %f3, align 8, !dbg !872, !tbaa !466
  %call4 = tail call i32 @fclose(%struct._IO_FILE* %3) #7, !dbg !872
  br label %if.end5, !dbg !872

if.end5:                                          ; preds = %if.end, %if.then2
  %buf = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 3, !dbg !873
  %4 = load i8** %buf, align 8, !dbg !873, !tbaa !466
  %cmp = icmp eq i8* %4, null, !dbg !873
  br i1 %cmp, label %if.end8, label %if.then6, !dbg !873

if.then6:                                         ; preds = %if.end5
  tail call void @free(i8* %4) #7, !dbg !873
  br label %if.end8, !dbg !873

if.end8:                                          ; preds = %if.end5, %if.then6
  %ssi = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 5, !dbg !874
  %5 = load %struct.ssifile_s** %ssi, align 8, !dbg !874, !tbaa !466
  %cmp9 = icmp eq %struct.ssifile_s* %5, null, !dbg !874
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !874

if.then10:                                        ; preds = %if.end8
  tail call void @SSIClose(%struct.ssifile_s* %5) #7, !dbg !874
  br label %if.end12, !dbg !874

if.end12:                                         ; preds = %if.end8, %if.then10
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !875
  %6 = load i8** %fname, align 8, !dbg !875, !tbaa !466
  %cmp13 = icmp eq i8* %6, null, !dbg !875
  br i1 %cmp13, label %if.end16, label %if.then14, !dbg !875

if.then14:                                        ; preds = %if.end12
  tail call void @free(i8* %6) #7, !dbg !875
  br label %if.end16, !dbg !875

if.end16:                                         ; preds = %if.end12, %if.then14
  %7 = bitcast %struct.msafile_struct* %afp to i8*, !dbg !876
  tail call void @free(i8* %7) #7, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: nounwind optsize
declare i32 @pclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @SSIClose(%struct.ssifile_s*) #2

; Function Attrs: nounwind optsize uwtable
define i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !329), !dbg !878
  %buf = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 3, !dbg !879
  %buflen = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 4, !dbg !879
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !879
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !879, !tbaa !466
  %call = tail call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %0) #7, !dbg !879
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !330), !dbg !879
  %cmp = icmp eq i8* %call, null, !dbg !879
  br i1 %cmp, label %return, label %if.end, !dbg !879

if.end:                                           ; preds = %entry
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !880
  %1 = load i32* %linenumber, align 4, !dbg !880, !tbaa !478
  %inc = add nsw i32 %1, 1, !dbg !880
  store i32 %inc, i32* %linenumber, align 4, !dbg !880, !tbaa !478
  %2 = load i8** %buf, align 8, !dbg !881, !tbaa !466
  br label %return, !dbg !881

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !882
}

; Function Attrs: optsize
declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @MSAFileWrite(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %outfmt, i32 %do_oneline) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !335), !dbg !883
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !336), !dbg !883
  tail call void @llvm.dbg.value(metadata !{i32 %outfmt}, i64 0, metadata !337), !dbg !883
  tail call void @llvm.dbg.value(metadata !{i32 %do_oneline}, i64 0, metadata !338), !dbg !883
  switch i32 %outfmt, label %sw.default [
    i32 105, label %sw.bb
    i32 104, label %sw.bb1
    i32 103, label %sw.bb2
    i32 106, label %sw.bb3
    i32 102, label %sw.bb4
    i32 101, label %sw.bb5
  ], !dbg !884

sw.bb:                                            ; preds = %entry
  tail call void @WriteA2M(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !885
  br label %sw.epilog, !dbg !885

sw.bb1:                                           ; preds = %entry
  tail call void @WriteClustal(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !887
  br label %sw.epilog, !dbg !887

sw.bb2:                                           ; preds = %entry
  tail call void @WriteMSF(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !888
  br label %sw.epilog, !dbg !888

sw.bb3:                                           ; preds = %entry
  tail call void @WritePhylip(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !889
  br label %sw.epilog, !dbg !889

sw.bb4:                                           ; preds = %entry
  tail call void @WriteSELEX(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !890
  br label %sw.epilog, !dbg !890

sw.bb5:                                           ; preds = %entry
  %tobool = icmp eq i32 %do_oneline, 0, !dbg !891
  br i1 %tobool, label %if.else, label %if.then, !dbg !891

if.then:                                          ; preds = %sw.bb5
  tail call void @WriteStockholmOneBlock(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !891
  br label %sw.epilog, !dbg !891

if.else:                                          ; preds = %sw.bb5
  tail call void @WriteStockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #7, !dbg !892
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str24, i64 0, i64 0), i32 %outfmt) #7, !dbg !893
  br label %sw.epilog, !dbg !894

sw.epilog:                                        ; preds = %if.then, %if.else, %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !895
}

; Function Attrs: optsize
declare void @WriteA2M(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: optsize
declare void @WriteClustal(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: optsize
declare void @WriteMSF(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: optsize
declare void @WritePhylip(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: optsize
declare void @WriteSELEX(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: optsize
declare void @WriteStockholmOneBlock(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: optsize
declare void @WriteStockholm(%struct._IO_FILE*, %struct.msa_struct*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @MSAGetSeqidx(%struct.msa_struct* nocapture %msa, i8* %name, i32 %guess) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !343), !dbg !896
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !344), !dbg !896
  tail call void @llvm.dbg.value(metadata !{i32 %guess}, i64 0, metadata !345), !dbg !896
  %cmp = icmp sgt i32 %guess, -1, !dbg !897
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !897

land.lhs.true:                                    ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !897
  %0 = load i32* %nseq, align 4, !dbg !897, !tbaa !478
  %cmp1 = icmp sgt i32 %0, %guess, !dbg !897
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !897

land.lhs.true2:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %guess to i64, !dbg !897
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !897
  %1 = load i8*** %sqname, align 8, !dbg !897, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !897
  %2 = load i8** %arrayidx, align 8, !dbg !897, !tbaa !466
  %call = tail call i32 @strcmp(i8* %name, i8* %2) #8, !dbg !897
  %cmp3 = icmp eq i32 %call, 0, !dbg !897
  br i1 %cmp3, label %return, label %if.end, !dbg !897

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %index = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 39, !dbg !898
  %3 = load %struct.GKI** %index, align 8, !dbg !898, !tbaa !466
  %call4 = tail call i32 @GKIKeyIndex(%struct.GKI* %3, i8* %name) #7, !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !346), !dbg !898
  %cmp5 = icmp sgt i32 %call4, -1, !dbg !898
  br i1 %cmp5, label %return, label %if.end7, !dbg !898

if.end7:                                          ; preds = %if.end
  %4 = load %struct.GKI** %index, align 8, !dbg !899, !tbaa !466
  %call9 = tail call i32 @GKIStoreKey(%struct.GKI* %4, i8* %name) #7, !dbg !899
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !346), !dbg !899
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40, !dbg !900
  %5 = load i32* %nseqalloc, align 4, !dbg !900, !tbaa !478
  %cmp10 = icmp slt i32 %call9, %5, !dbg !900
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !900

if.then11:                                        ; preds = %if.end7
  tail call void @MSAExpand(%struct.msa_struct* %msa) #9, !dbg !900
  br label %if.end12, !dbg !900

if.end12:                                         ; preds = %if.end7, %if.then11
  %call13 = tail call i8* @sre_strdup(i8* %name, i32 -1) #7, !dbg !901
  %idxprom14 = sext i32 %call9 to i64, !dbg !901
  %sqname15 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !901
  %6 = load i8*** %sqname15, align 8, !dbg !901, !tbaa !466
  %arrayidx16 = getelementptr inbounds i8** %6, i64 %idxprom14, !dbg !901
  store i8* %call13, i8** %arrayidx16, align 8, !dbg !901, !tbaa !466
  %nseq17 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !902
  %7 = load i32* %nseq17, align 4, !dbg !902, !tbaa !478
  %inc = add nsw i32 %7, 1, !dbg !902
  store i32 %inc, i32* %nseq17, align 4, !dbg !902, !tbaa !478
  br label %return, !dbg !903

return:                                           ; preds = %if.end, %land.lhs.true2, %if.end12
  %retval.0 = phi i32 [ %call9, %if.end12 ], [ %guess, %land.lhs.true2 ], [ %call4, %if.end ]
  ret i32 %retval.0, !dbg !904
}

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @MSAFromAINFO(i8** nocapture %aseq, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !394), !dbg !905
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !395), !dbg !905
  %nseq = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !906
  %0 = load i32* %nseq, align 4, !dbg !906, !tbaa !478
  %alen = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !906
  %1 = load i32* %alen, align 4, !dbg !906, !tbaa !478
  %call = tail call %struct.msa_struct* @MSAAlloc(i32 %0, i32 %1) #9, !dbg !906
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call}, i64 0, metadata !396), !dbg !906
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !397), !dbg !907
  %2 = load i32* %nseq, align 4, !dbg !907, !tbaa !478
  %cmp315 = icmp sgt i32 %2, 0, !dbg !907
  br i1 %cmp315, label %for.body.lr.ph, label %for.end139, !dbg !907

for.body.lr.ph:                                   ; preds = %entry
  %aseq2 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 0, !dbg !909
  %wgt = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3, !dbg !911
  %wgt9 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 2, !dbg !911
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !912
  %sqname = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 1, !dbg !912
  %alen16 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 3, !dbg !913
  %sqlen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 42, !dbg !913
  %index = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 39, !dbg !914
  %sa = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 17, !dbg !915
  %nseqalloc96 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 40, !dbg !917
  %salen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 44, !dbg !919
  %ss = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 16, !dbg !920
  %sslen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 43, !dbg !922
  br label %for.body, !dbg !907

for.body:                                         ; preds = %for.body.lr.ph, %for.inc137
  %indvars.iv319 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next320, %for.inc137 ]
  %3 = load i8*** %aseq2, align 8, !dbg !909, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %3, i64 %indvars.iv319, !dbg !909
  %4 = load i8** %arrayidx, align 8, !dbg !909, !tbaa !466
  %arrayidx4 = getelementptr inbounds i8** %aseq, i64 %indvars.iv319, !dbg !909
  %5 = load i8** %arrayidx4, align 8, !dbg !909, !tbaa !466
  %call5 = tail call i8* @strcpy(i8* %4, i8* %5) #7, !dbg !909
  %6 = load float** %wgt, align 8, !dbg !911, !tbaa !466
  %arrayidx7 = getelementptr inbounds float* %6, i64 %indvars.iv319, !dbg !911
  %7 = load float* %arrayidx7, align 4, !dbg !911, !tbaa !480
  %8 = load float** %wgt9, align 8, !dbg !911, !tbaa !466
  %arrayidx10 = getelementptr inbounds float* %8, i64 %indvars.iv319, !dbg !911
  store float %7, float* %arrayidx10, align 4, !dbg !911, !tbaa !480
  %9 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !912, !tbaa !466
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %9, i64 %indvars.iv319, i32 1, i64 0, !dbg !912
  %call13 = tail call i8* @sre_strdup(i8* %arraydecay, i32 -1) #7, !dbg !912
  %10 = load i8*** %sqname, align 8, !dbg !912, !tbaa !466
  %arrayidx15 = getelementptr inbounds i8** %10, i64 %indvars.iv319, !dbg !912
  store i8* %call13, i8** %arrayidx15, align 8, !dbg !912, !tbaa !466
  %11 = load i32* %alen16, align 4, !dbg !913, !tbaa !478
  %12 = load i32** %sqlen, align 8, !dbg !913, !tbaa !466
  %arrayidx18 = getelementptr inbounds i32* %12, i64 %indvars.iv319, !dbg !913
  store i32 %11, i32* %arrayidx18, align 4, !dbg !913, !tbaa !478
  %13 = load %struct.GKI** %index, align 8, !dbg !914, !tbaa !466
  %14 = load i8*** %sqname, align 8, !dbg !914, !tbaa !466
  %arrayidx21 = getelementptr inbounds i8** %14, i64 %indvars.iv319, !dbg !914
  %15 = load i8** %arrayidx21, align 8, !dbg !914, !tbaa !466
  %call22 = tail call i32 @GKIStoreKey(%struct.GKI* %13, i8* %15) #7, !dbg !914
  %16 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !924, !tbaa !466
  %flags = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv319, i32 0, !dbg !924
  %17 = load i32* %flags, align 4, !dbg !924, !tbaa !478
  %and = and i32 %17, 4, !dbg !924
  %tobool = icmp eq i32 %and, 0, !dbg !924
  br i1 %tobool, label %if.end, label %if.then, !dbg !924

if.then:                                          ; preds = %for.body
  %arraydecay29 = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv319, i32 3, i64 0, !dbg !925
  %18 = trunc i64 %indvars.iv319 to i32, !dbg !925
  tail call void @MSASetSeqAccession(%struct.msa_struct* %call, i32 %18, i8* %arraydecay29) #9, !dbg !925
  %.pre322 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !926, !tbaa !466
  %flags33.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre322, i64 %indvars.iv319, i32 0
  %.pre323 = load i32* %flags33.phi.trans.insert, align 4, !dbg !926, !tbaa !478
  br label %if.end, !dbg !925

if.end:                                           ; preds = %for.body, %if.then
  %19 = phi i32 [ %17, %for.body ], [ %.pre323, %if.then ]
  %20 = phi %struct.seqinfo_s* [ %16, %for.body ], [ %.pre322, %if.then ]
  %and34 = and i32 %19, 8, !dbg !926
  %tobool35 = icmp eq i32 %and34, 0, !dbg !926
  br i1 %tobool35, label %if.end41, label %if.then36, !dbg !926

if.then36:                                        ; preds = %if.end
  %arraydecay40 = getelementptr inbounds %struct.seqinfo_s* %20, i64 %indvars.iv319, i32 4, i64 0, !dbg !927
  %21 = trunc i64 %indvars.iv319 to i32, !dbg !927
  tail call void @MSASetSeqDescription(%struct.msa_struct* %call, i32 %21, i8* %arraydecay40) #9, !dbg !927
  %.pre324 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !928, !tbaa !466
  %flags45.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre324, i64 %indvars.iv319, i32 0
  %.pre325 = load i32* %flags45.phi.trans.insert, align 4, !dbg !928, !tbaa !478
  br label %if.end41, !dbg !927

if.end41:                                         ; preds = %if.end, %if.then36
  %22 = phi i32 [ %19, %if.end ], [ %.pre325, %if.then36 ]
  %23 = phi %struct.seqinfo_s* [ %20, %if.end ], [ %.pre324, %if.then36 ]
  %and46 = and i32 %22, 512, !dbg !928
  %tobool47 = icmp eq i32 %and46, 0, !dbg !928
  br i1 %tobool47, label %if.end85, label %if.then48, !dbg !928

if.then48:                                        ; preds = %if.end41
  %24 = load i8*** %ss, align 8, !dbg !920, !tbaa !466
  %cmp49 = icmp eq i8** %24, null, !dbg !920
  br i1 %cmp49, label %if.then50, label %if.end68, !dbg !920

if.then50:                                        ; preds = %if.then48
  %25 = load i32* %nseqalloc96, align 4, !dbg !929, !tbaa !478
  %conv = sext i32 %25 to i64, !dbg !929
  %mul = shl nsw i64 %conv, 3, !dbg !929
  %call51 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1055, i64 %mul) #7, !dbg !929
  %26 = bitcast i8* %call51 to i8**, !dbg !929
  store i8** %26, i8*** %ss, align 8, !dbg !929, !tbaa !466
  %27 = load i32* %nseqalloc96, align 4, !dbg !922, !tbaa !478
  %conv54 = sext i32 %27 to i64, !dbg !922
  %mul55 = shl nsw i64 %conv54, 2, !dbg !922
  %call56 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1056, i64 %mul55) #7, !dbg !922
  %28 = bitcast i8* %call56 to i32*, !dbg !922
  store i32* %28, i32** %sslen, align 8, !dbg !922, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !398), !dbg !930
  %29 = load i32* %nseqalloc96, align 4, !dbg !930, !tbaa !478
  %cmp59311 = icmp sgt i32 %29, 0, !dbg !930
  br i1 %cmp59311, label %for.body61, label %if.end68.loopexit, !dbg !930

for.body61:                                       ; preds = %if.then50, %for.body61
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body61 ], [ 0, %if.then50 ]
  %30 = load i8*** %ss, align 8, !dbg !932, !tbaa !466
  %arrayidx64 = getelementptr inbounds i8** %30, i64 %indvars.iv, !dbg !932
  store i8* null, i8** %arrayidx64, align 8, !dbg !932, !tbaa !466
  %31 = load i32** %sslen, align 8, !dbg !934, !tbaa !466
  %arrayidx67 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !934
  store i32 0, i32* %arrayidx67, align 4, !dbg !934, !tbaa !478
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !930
  %32 = load i32* %nseqalloc96, align 4, !dbg !930, !tbaa !478
  %33 = trunc i64 %indvars.iv.next to i32, !dbg !930
  %cmp59 = icmp slt i32 %33, %32, !dbg !930
  br i1 %cmp59, label %for.body61, label %if.end68.loopexit, !dbg !930

if.end68.loopexit:                                ; preds = %for.body61, %if.then50
  %.pre330 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !935, !tbaa !466
  %.pre331 = load i8*** %ss, align 8, !dbg !935, !tbaa !466
  br label %if.end68

if.end68:                                         ; preds = %if.end68.loopexit, %if.then48
  %34 = phi i8** [ %.pre331, %if.end68.loopexit ], [ %24, %if.then48 ]
  %35 = phi %struct.seqinfo_s* [ %.pre330, %if.end68.loopexit ], [ %23, %if.then48 ]
  %36 = load i8*** %aseq2, align 8, !dbg !935, !tbaa !466
  %arrayidx71 = getelementptr inbounds i8** %36, i64 %indvars.iv319, !dbg !935
  %37 = load i8** %arrayidx71, align 8, !dbg !935, !tbaa !466
  %38 = load i32* %alen16, align 4, !dbg !935, !tbaa !478
  %ss76 = getelementptr inbounds %struct.seqinfo_s* %35, i64 %indvars.iv319, i32 10, !dbg !935
  %39 = load i8** %ss76, align 8, !dbg !935, !tbaa !466
  %arrayidx79 = getelementptr inbounds i8** %34, i64 %indvars.iv319, !dbg !935
  %call80 = tail call i32 @MakeAlignedString(i8* %37, i32 %38, i8* %39, i8** %arrayidx79) #7, !dbg !935
  %40 = load i32* %alen16, align 4, !dbg !936, !tbaa !478
  %41 = load i32** %sslen, align 8, !dbg !936, !tbaa !466
  %arrayidx84 = getelementptr inbounds i32* %41, i64 %indvars.iv319, !dbg !936
  store i32 %40, i32* %arrayidx84, align 4, !dbg !936, !tbaa !478
  %.pre326 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !937, !tbaa !466
  %flags89.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre326, i64 %indvars.iv319, i32 0
  %.pre327 = load i32* %flags89.phi.trans.insert, align 4, !dbg !937, !tbaa !478
  br label %if.end85, !dbg !938

if.end85:                                         ; preds = %if.end41, %if.end68
  %42 = phi i32 [ %22, %if.end41 ], [ %.pre327, %if.end68 ]
  %43 = phi %struct.seqinfo_s* [ %23, %if.end41 ], [ %.pre326, %if.end68 ]
  %and90 = and i32 %42, 1024, !dbg !937
  %tobool91 = icmp eq i32 %and90, 0, !dbg !937
  br i1 %tobool91, label %for.inc137, label %if.then92, !dbg !937

if.then92:                                        ; preds = %if.end85
  %44 = load i8*** %sa, align 8, !dbg !915, !tbaa !466
  %cmp93 = icmp eq i8** %44, null, !dbg !915
  br i1 %cmp93, label %if.then95, label %if.end119, !dbg !915

if.then95:                                        ; preds = %if.then92
  %45 = load i32* %nseqalloc96, align 4, !dbg !917, !tbaa !478
  %conv97 = sext i32 %45 to i64, !dbg !917
  %mul98 = shl nsw i64 %conv97, 3, !dbg !917
  %call99 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1068, i64 %mul98) #7, !dbg !917
  %46 = bitcast i8* %call99 to i8**, !dbg !917
  store i8** %46, i8*** %sa, align 8, !dbg !917, !tbaa !466
  %47 = load i32* %nseqalloc96, align 4, !dbg !919, !tbaa !478
  %conv102 = sext i32 %47 to i64, !dbg !919
  %mul103 = shl nsw i64 %conv102, 2, !dbg !919
  %call104 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1069, i64 %mul103) #7, !dbg !919
  %48 = bitcast i8* %call104 to i32*, !dbg !919
  store i32* %48, i32** %salen, align 8, !dbg !919, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !398), !dbg !939
  %49 = load i32* %nseqalloc96, align 4, !dbg !939, !tbaa !478
  %cmp107313 = icmp sgt i32 %49, 0, !dbg !939
  br i1 %cmp107313, label %for.body109, label %if.end119.loopexit, !dbg !939

for.body109:                                      ; preds = %if.then95, %for.body109
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %for.body109 ], [ 0, %if.then95 ]
  %50 = load i8*** %sa, align 8, !dbg !941, !tbaa !466
  %arrayidx112 = getelementptr inbounds i8** %50, i64 %indvars.iv317, !dbg !941
  store i8* null, i8** %arrayidx112, align 8, !dbg !941, !tbaa !466
  %51 = load i32** %salen, align 8, !dbg !943, !tbaa !466
  %arrayidx115 = getelementptr inbounds i32* %51, i64 %indvars.iv317, !dbg !943
  store i32 0, i32* %arrayidx115, align 4, !dbg !943, !tbaa !478
  %indvars.iv.next318 = add i64 %indvars.iv317, 1, !dbg !939
  %52 = load i32* %nseqalloc96, align 4, !dbg !939, !tbaa !478
  %53 = trunc i64 %indvars.iv.next318 to i32, !dbg !939
  %cmp107 = icmp slt i32 %53, %52, !dbg !939
  br i1 %cmp107, label %for.body109, label %if.end119.loopexit, !dbg !939

if.end119.loopexit:                               ; preds = %for.body109, %if.then95
  %.pre328 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !944, !tbaa !466
  %.pre329 = load i8*** %sa, align 8, !dbg !944, !tbaa !466
  br label %if.end119

if.end119:                                        ; preds = %if.end119.loopexit, %if.then92
  %54 = phi i8** [ %.pre329, %if.end119.loopexit ], [ %44, %if.then92 ]
  %55 = phi %struct.seqinfo_s* [ %.pre328, %if.end119.loopexit ], [ %43, %if.then92 ]
  %56 = load i8*** %aseq2, align 8, !dbg !944, !tbaa !466
  %arrayidx122 = getelementptr inbounds i8** %56, i64 %indvars.iv319, !dbg !944
  %57 = load i8** %arrayidx122, align 8, !dbg !944, !tbaa !466
  %58 = load i32* %alen16, align 4, !dbg !944, !tbaa !478
  %sa127 = getelementptr inbounds %struct.seqinfo_s* %55, i64 %indvars.iv319, i32 11, !dbg !944
  %59 = load i8** %sa127, align 8, !dbg !944, !tbaa !466
  %arrayidx130 = getelementptr inbounds i8** %54, i64 %indvars.iv319, !dbg !944
  %call131 = tail call i32 @MakeAlignedString(i8* %57, i32 %58, i8* %59, i8** %arrayidx130) #7, !dbg !944
  %60 = load i32* %alen16, align 4, !dbg !945, !tbaa !478
  %61 = load i32** %salen, align 8, !dbg !945, !tbaa !466
  %arrayidx135 = getelementptr inbounds i32* %61, i64 %indvars.iv319, !dbg !945
  store i32 %60, i32* %arrayidx135, align 4, !dbg !945, !tbaa !478
  br label %for.inc137, !dbg !946

for.inc137:                                       ; preds = %if.end85, %if.end119
  %indvars.iv.next320 = add i64 %indvars.iv319, 1, !dbg !907
  %62 = load i32* %nseq, align 4, !dbg !907, !tbaa !478
  %63 = trunc i64 %indvars.iv.next320 to i32, !dbg !907
  %cmp = icmp slt i32 %63, %62, !dbg !907
  br i1 %cmp, label %for.body, label %for.end139, !dbg !907

for.end139:                                       ; preds = %for.inc137, %entry
  %name140 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !947
  %64 = load i8** %name140, align 8, !dbg !947, !tbaa !466
  %call141 = tail call i8* @sre_strdup(i8* %64, i32 -1) #7, !dbg !947
  %name142 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 7, !dbg !947
  store i8* %call141, i8** %name142, align 8, !dbg !947, !tbaa !466
  %desc143 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 8, !dbg !948
  %65 = load i8** %desc143, align 8, !dbg !948, !tbaa !466
  %call144 = tail call i8* @sre_strdup(i8* %65, i32 -1) #7, !dbg !948
  %desc145 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 8, !dbg !948
  store i8* %call144, i8** %desc145, align 8, !dbg !948, !tbaa !466
  %acc146 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 9, !dbg !949
  %66 = load i8** %acc146, align 8, !dbg !949, !tbaa !466
  %call147 = tail call i8* @sre_strdup(i8* %66, i32 -1) #7, !dbg !949
  %acc148 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 9, !dbg !949
  store i8* %call147, i8** %acc148, align 8, !dbg !949, !tbaa !466
  %au = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 10, !dbg !950
  %67 = load i8** %au, align 8, !dbg !950, !tbaa !466
  %call149 = tail call i8* @sre_strdup(i8* %67, i32 -1) #7, !dbg !950
  %au150 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 10, !dbg !950
  store i8* %call149, i8** %au150, align 8, !dbg !950, !tbaa !466
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !951
  %68 = load i8** %cs, align 8, !dbg !951, !tbaa !466
  %call151 = tail call i8* @sre_strdup(i8* %68, i32 -1) #7, !dbg !951
  %ss_cons = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 11, !dbg !951
  store i8* %call151, i8** %ss_cons, align 8, !dbg !951, !tbaa !466
  %rf = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !952
  %69 = load i8** %rf, align 8, !dbg !952, !tbaa !466
  %call152 = tail call i8* @sre_strdup(i8* %69, i32 -1) #7, !dbg !952
  %rf153 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 13, !dbg !952
  store i8* %call152, i8** %rf153, align 8, !dbg !952, !tbaa !466
  %flags154 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !953
  %70 = load i32* %flags154, align 4, !dbg !953, !tbaa !478
  %and155 = and i32 %70, 1, !dbg !953
  %tobool156 = icmp eq i32 %and155, 0, !dbg !953
  br i1 %tobool156, label %if.end164, label %if.then157, !dbg !953

if.then157:                                       ; preds = %for.end139
  %tc1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 11, !dbg !954
  %71 = load float* %tc1, align 4, !dbg !954, !tbaa !480
  %arrayidx158 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 0, !dbg !954
  store float %71, float* %arrayidx158, align 4, !dbg !954, !tbaa !480
  %arrayidx159 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 0, !dbg !954
  store i32 1, i32* %arrayidx159, align 4, !dbg !954, !tbaa !478
  %tc2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 12, !dbg !956
  %72 = load float* %tc2, align 4, !dbg !956, !tbaa !480
  %arrayidx161 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 1, !dbg !956
  store float %72, float* %arrayidx161, align 4, !dbg !956, !tbaa !480
  %arrayidx163 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 1, !dbg !956
  store i32 1, i32* %arrayidx163, align 4, !dbg !956, !tbaa !478
  %.pre = load i32* %flags154, align 4, !dbg !957, !tbaa !478
  br label %if.end164, !dbg !958

if.end164:                                        ; preds = %for.end139, %if.then157
  %73 = phi i32 [ %70, %for.end139 ], [ %.pre, %if.then157 ]
  %and166 = and i32 %73, 2, !dbg !957
  %tobool167 = icmp eq i32 %and166, 0, !dbg !957
  br i1 %tobool167, label %if.end177, label %if.then168, !dbg !957

if.then168:                                       ; preds = %if.end164
  %nc1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 13, !dbg !959
  %74 = load float* %nc1, align 4, !dbg !959, !tbaa !480
  %arrayidx170 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 4, !dbg !959
  store float %74, float* %arrayidx170, align 4, !dbg !959, !tbaa !480
  %arrayidx172 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 4, !dbg !959
  store i32 1, i32* %arrayidx172, align 4, !dbg !959, !tbaa !478
  %nc2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 14, !dbg !961
  %75 = load float* %nc2, align 4, !dbg !961, !tbaa !480
  %arrayidx174 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 5, !dbg !961
  store float %75, float* %arrayidx174, align 4, !dbg !961, !tbaa !480
  %arrayidx176 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 5, !dbg !961
  store i32 1, i32* %arrayidx176, align 4, !dbg !961, !tbaa !478
  %.pre321 = load i32* %flags154, align 4, !dbg !962, !tbaa !478
  br label %if.end177, !dbg !963

if.end177:                                        ; preds = %if.end164, %if.then168
  %76 = phi i32 [ %73, %if.end164 ], [ %.pre321, %if.then168 ]
  %and179 = and i32 %76, 4, !dbg !962
  %tobool180 = icmp eq i32 %and179, 0, !dbg !962
  br i1 %tobool180, label %if.end190, label %if.then181, !dbg !962

if.then181:                                       ; preds = %if.end177
  %ga1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 15, !dbg !964
  %77 = load float* %ga1, align 4, !dbg !964, !tbaa !480
  %arrayidx183 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 2, !dbg !964
  store float %77, float* %arrayidx183, align 4, !dbg !964, !tbaa !480
  %arrayidx185 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 2, !dbg !964
  store i32 1, i32* %arrayidx185, align 4, !dbg !964, !tbaa !478
  %ga2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 16, !dbg !966
  %78 = load float* %ga2, align 4, !dbg !966, !tbaa !480
  %arrayidx187 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 3, !dbg !966
  store float %78, float* %arrayidx187, align 4, !dbg !966, !tbaa !480
  %arrayidx189 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 3, !dbg !966
  store i32 1, i32* %arrayidx189, align 4, !dbg !966, !tbaa !478
  br label %if.end190, !dbg !967

if.end190:                                        ; preds = %if.end177, %if.then181
  %79 = load i32* %nseq, align 4, !dbg !968, !tbaa !478
  %nseq192 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 4, !dbg !968
  store i32 %79, i32* %nseq192, align 4, !dbg !968, !tbaa !478
  %80 = load i32* %alen, align 4, !dbg !969, !tbaa !478
  %alen194 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 3, !dbg !969
  store i32 %80, i32* %alen194, align 4, !dbg !969, !tbaa !478
  ret %struct.msa_struct* %call, !dbg !970
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #2

; Function Attrs: optsize
declare i32 @SeqfileFormat(%struct._IO_FILE*) #2

; Function Attrs: optsize
declare i8* @SeqfileFormat2String(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @MSAMingap(%struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !405), !dbg !971
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !972
  %0 = load i32* %alen, align 4, !dbg !972, !tbaa !478
  %conv = sext i32 %0 to i64, !dbg !972
  %mul = shl nsw i64 %conv, 2, !dbg !972
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1157, i64 %mul) #7, !dbg !972
  %1 = bitcast i8* %call to i32*, !dbg !972
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !406), !dbg !972
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !407), !dbg !973
  %2 = load i32* %alen, align 4, !dbg !973, !tbaa !478
  %cmp87 = icmp sgt i32 %2, 0, !dbg !973
  br i1 %cmp87, label %for.cond3.preheader.lr.ph, label %for.end58, !dbg !973

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !975
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !978
  br label %for.cond3.preheader, !dbg !973

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.end
  %indvars.iv90 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next91, %for.end ]
  %3 = load i32* %nseq, align 4, !dbg !975, !tbaa !478
  %cmp484 = icmp sgt i32 %3, 0, !dbg !975
  br i1 %cmp484, label %for.body6.lr.ph, label %for.end, !dbg !975

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %4 = load i8*** %aseq, align 8, !dbg !978, !tbaa !466
  br label %for.body6, !dbg !975

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %idx.085 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv, !dbg !978
  %5 = load i8** %arrayidx, align 8, !dbg !978, !tbaa !466
  %arrayidx8 = getelementptr inbounds i8* %5, i64 %indvars.iv90, !dbg !978
  %6 = load i8* %arrayidx8, align 1, !dbg !978, !tbaa !467
  switch i8 %6, label %for.end [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !978

for.inc:                                          ; preds = %for.body6, %for.body6, %for.body6, %for.body6, %for.body6
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !975
  %inc = add nsw i32 %idx.085, 1, !dbg !975
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !408), !dbg !975
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !975
  %cmp4 = icmp slt i32 %7, %3, !dbg !975
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !975

for.end:                                          ; preds = %for.inc, %for.body6, %for.cond3.preheader
  %idx.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %idx.085, %for.body6 ], [ %inc, %for.inc ]
  %arrayidx52 = getelementptr inbounds i32* %1, i64 %indvars.iv90, !dbg !979
  %not.cmp48 = icmp ne i32 %idx.0.lcssa, %3, !dbg !979
  %. = zext i1 %not.cmp48 to i32, !dbg !979
  store i32 %., i32* %arrayidx52, align 4, !dbg !979, !tbaa !478
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !973
  %8 = load i32* %alen, align 4, !dbg !973, !tbaa !478
  %9 = trunc i64 %indvars.iv.next91 to i32, !dbg !973
  %cmp = icmp slt i32 %9, %8, !dbg !973
  br i1 %cmp, label %for.cond3.preheader, label %for.end58, !dbg !973

for.end58:                                        ; preds = %for.end, %entry
  tail call void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* %1) #9, !dbg !980
  tail call void @free(i8* %call) #7, !dbg !981
  ret void, !dbg !982
}

; Function Attrs: nounwind optsize uwtable
define void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* nocapture %useme) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !419), !dbg !983
  tail call void @llvm.dbg.value(metadata !{i32* %useme}, i64 0, metadata !420), !dbg !983
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !421), !dbg !984
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !422), !dbg !984
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !984
  %0 = load i32* %alen, align 4, !dbg !984, !tbaa !478
  %cmp343 = icmp sgt i32 %0, 0, !dbg !984
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !986
  br i1 %cmp343, label %for.body.lr.ph, label %for.end124, !dbg !984

for.body.lr.ph:                                   ; preds = %entry
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !990
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !991
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !992
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !993
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !995
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !996
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !998
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !999
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !1000
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !1002
  br label %for.body, !dbg !984

for.body:                                         ; preds = %for.body.lr.ph, %for.inc122
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %36, %for.inc122 ]
  %indvars.iv357 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next358, %for.inc122 ]
  %mpos.0345 = phi i32 [ 0, %for.body.lr.ph ], [ %mpos.1, %for.inc122 ]
  %arrayidx = getelementptr inbounds i32* %useme, i64 %indvars.iv357, !dbg !1003
  %2 = load i32* %arrayidx, align 4, !dbg !1003, !tbaa !478
  %cmp1 = icmp eq i32 %2, 0, !dbg !1003
  br i1 %cmp1, label %for.inc122, label %if.end, !dbg !1003

if.end:                                           ; preds = %for.body
  %3 = trunc i64 %indvars.iv357 to i32, !dbg !1004
  %cmp2 = icmp eq i32 %mpos.0345, %3, !dbg !1004
  br i1 %cmp2, label %if.end120, label %for.cond4.preheader, !dbg !1004

for.cond4.preheader:                              ; preds = %if.end
  %4 = load i32* %nseq, align 4, !dbg !986, !tbaa !478
  %cmp5339 = icmp sgt i32 %4, 0, !dbg !986
  br i1 %cmp5339, label %for.body6.lr.ph, label %for.end77, !dbg !986

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %idxprom11 = sext i32 %mpos.0345 to i64, !dbg !996
  br label %for.body6, !dbg !986

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc75
  %indvars.iv353 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next354, %for.inc75 ]
  %5 = load i8*** %aseq, align 8, !dbg !996, !tbaa !466
  %arrayidx9 = getelementptr inbounds i8** %5, i64 %indvars.iv353, !dbg !996
  %6 = load i8** %arrayidx9, align 8, !dbg !996, !tbaa !466
  %arrayidx10 = getelementptr inbounds i8* %6, i64 %indvars.iv357, !dbg !996
  %7 = load i8* %arrayidx10, align 1, !dbg !996, !tbaa !467
  %arrayidx15 = getelementptr inbounds i8* %6, i64 %idxprom11, !dbg !996
  store i8 %7, i8* %arrayidx15, align 1, !dbg !996, !tbaa !467
  %8 = load i8*** %ss, align 8, !dbg !998, !tbaa !466
  %cmp16 = icmp eq i8** %8, null, !dbg !998
  br i1 %cmp16, label %if.end32, label %land.lhs.true, !dbg !998

land.lhs.true:                                    ; preds = %for.body6
  %arrayidx19 = getelementptr inbounds i8** %8, i64 %indvars.iv353, !dbg !998
  %9 = load i8** %arrayidx19, align 8, !dbg !998, !tbaa !466
  %cmp20 = icmp eq i8* %9, null, !dbg !998
  br i1 %cmp20, label %if.end32, label %if.then21, !dbg !998

if.then21:                                        ; preds = %land.lhs.true
  %arrayidx26 = getelementptr inbounds i8* %9, i64 %indvars.iv357, !dbg !998
  %10 = load i8* %arrayidx26, align 1, !dbg !998, !tbaa !467
  %arrayidx31 = getelementptr inbounds i8* %9, i64 %idxprom11, !dbg !998
  store i8 %10, i8* %arrayidx31, align 1, !dbg !998, !tbaa !467
  br label %if.end32, !dbg !998

if.end32:                                         ; preds = %land.lhs.true, %for.body6, %if.then21
  %11 = load i8*** %sa, align 8, !dbg !999, !tbaa !466
  %cmp33 = icmp eq i8** %11, null, !dbg !999
  br i1 %cmp33, label %for.cond51.preheader, label %land.lhs.true34, !dbg !999

land.lhs.true34:                                  ; preds = %if.end32
  %arrayidx37 = getelementptr inbounds i8** %11, i64 %indvars.iv353, !dbg !999
  %12 = load i8** %arrayidx37, align 8, !dbg !999, !tbaa !466
  %cmp38 = icmp eq i8* %12, null, !dbg !999
  br i1 %cmp38, label %for.cond51.preheader, label %if.then39, !dbg !999

if.then39:                                        ; preds = %land.lhs.true34
  %arrayidx44 = getelementptr inbounds i8* %12, i64 %indvars.iv357, !dbg !999
  %13 = load i8* %arrayidx44, align 1, !dbg !999, !tbaa !467
  %arrayidx49 = getelementptr inbounds i8* %12, i64 %idxprom11, !dbg !999
  store i8 %13, i8* %arrayidx49, align 1, !dbg !999, !tbaa !467
  br label %for.cond51.preheader, !dbg !999

for.cond51.preheader:                             ; preds = %land.lhs.true34, %if.end32, %if.then39
  %14 = load i32* %ngr, align 4, !dbg !1000, !tbaa !478
  %cmp52337 = icmp sgt i32 %14, 0, !dbg !1000
  br i1 %cmp52337, label %for.body53, label %for.inc75, !dbg !1000

for.body53:                                       ; preds = %for.inc, %for.cond51.preheader
  %15 = phi i32 [ %14, %for.cond51.preheader ], [ %20, %for.inc ]
  %indvars.iv351 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next352, %for.inc ]
  %16 = load i8**** %gr, align 8, !dbg !1002, !tbaa !466
  %arrayidx56 = getelementptr inbounds i8*** %16, i64 %indvars.iv351, !dbg !1002
  %17 = load i8*** %arrayidx56, align 8, !dbg !1002, !tbaa !466
  %arrayidx57 = getelementptr inbounds i8** %17, i64 %indvars.iv353, !dbg !1002
  %18 = load i8** %arrayidx57, align 8, !dbg !1002, !tbaa !466
  %cmp58 = icmp eq i8* %18, null, !dbg !1002
  br i1 %cmp58, label %for.inc, label %if.then59, !dbg !1002

if.then59:                                        ; preds = %for.body53
  %arrayidx66 = getelementptr inbounds i8* %18, i64 %indvars.iv357, !dbg !1002
  %19 = load i8* %arrayidx66, align 1, !dbg !1002, !tbaa !467
  %arrayidx73 = getelementptr inbounds i8* %18, i64 %idxprom11, !dbg !1002
  store i8 %19, i8* %arrayidx73, align 1, !dbg !1002, !tbaa !467
  %.pre361 = load i32* %ngr, align 4, !dbg !1000, !tbaa !478
  br label %for.inc, !dbg !1002

for.inc:                                          ; preds = %for.body53, %if.then59
  %20 = phi i32 [ %15, %for.body53 ], [ %.pre361, %if.then59 ], !dbg !1000
  %indvars.iv.next352 = add i64 %indvars.iv351, 1, !dbg !1000
  %21 = trunc i64 %indvars.iv.next352 to i32, !dbg !1000
  %cmp52 = icmp slt i32 %21, %20, !dbg !1000
  br i1 %cmp52, label %for.body53, label %for.inc75, !dbg !1000

for.inc75:                                        ; preds = %for.inc, %for.cond51.preheader
  %indvars.iv.next354 = add i64 %indvars.iv353, 1, !dbg !986
  %22 = load i32* %nseq, align 4, !dbg !986, !tbaa !478
  %23 = trunc i64 %indvars.iv.next354 to i32, !dbg !986
  %cmp5 = icmp slt i32 %23, %22, !dbg !986
  br i1 %cmp5, label %for.body6, label %for.end77, !dbg !986

for.end77:                                        ; preds = %for.inc75, %for.cond4.preheader
  %24 = load i8** %ss_cons, align 8, !dbg !990, !tbaa !466
  %cmp78 = icmp eq i8* %24, null, !dbg !990
  br i1 %cmp78, label %if.end86, label %if.then79, !dbg !990

if.then79:                                        ; preds = %for.end77
  %arrayidx82 = getelementptr inbounds i8* %24, i64 %indvars.iv357, !dbg !990
  %25 = load i8* %arrayidx82, align 1, !dbg !990, !tbaa !467
  %idxprom83 = sext i32 %mpos.0345 to i64, !dbg !990
  %arrayidx85 = getelementptr inbounds i8* %24, i64 %idxprom83, !dbg !990
  store i8 %25, i8* %arrayidx85, align 1, !dbg !990, !tbaa !467
  br label %if.end86, !dbg !990

if.end86:                                         ; preds = %for.end77, %if.then79
  %26 = load i8** %sa_cons, align 8, !dbg !991, !tbaa !466
  %cmp87 = icmp eq i8* %26, null, !dbg !991
  br i1 %cmp87, label %if.end95, label %if.then88, !dbg !991

if.then88:                                        ; preds = %if.end86
  %arrayidx91 = getelementptr inbounds i8* %26, i64 %indvars.iv357, !dbg !991
  %27 = load i8* %arrayidx91, align 1, !dbg !991, !tbaa !467
  %idxprom92 = sext i32 %mpos.0345 to i64, !dbg !991
  %arrayidx94 = getelementptr inbounds i8* %26, i64 %idxprom92, !dbg !991
  store i8 %27, i8* %arrayidx94, align 1, !dbg !991, !tbaa !467
  br label %if.end95, !dbg !991

if.end95:                                         ; preds = %if.end86, %if.then88
  %28 = load i8** %rf, align 8, !dbg !992, !tbaa !466
  %cmp96 = icmp eq i8* %28, null, !dbg !992
  br i1 %cmp96, label %for.cond105.preheader, label %if.then97, !dbg !992

if.then97:                                        ; preds = %if.end95
  %arrayidx100 = getelementptr inbounds i8* %28, i64 %indvars.iv357, !dbg !992
  %29 = load i8* %arrayidx100, align 1, !dbg !992, !tbaa !467
  %idxprom101 = sext i32 %mpos.0345 to i64, !dbg !992
  %arrayidx103 = getelementptr inbounds i8* %28, i64 %idxprom101, !dbg !992
  store i8 %29, i8* %arrayidx103, align 1, !dbg !992, !tbaa !467
  br label %for.cond105.preheader, !dbg !992

for.cond105.preheader:                            ; preds = %if.end95, %if.then97
  %30 = load i32* %ngc, align 4, !dbg !993, !tbaa !478
  %cmp106341 = icmp sgt i32 %30, 0, !dbg !993
  br i1 %cmp106341, label %for.body107.lr.ph, label %if.end120.loopexit, !dbg !993

for.body107.lr.ph:                                ; preds = %for.cond105.preheader
  %idxprom112 = sext i32 %mpos.0345 to i64, !dbg !995
  br label %for.body107, !dbg !993

for.body107:                                      ; preds = %for.body107.lr.ph, %for.body107
  %indvars.iv355 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next356, %for.body107 ]
  %31 = load i8*** %gc, align 8, !dbg !995, !tbaa !466
  %arrayidx110 = getelementptr inbounds i8** %31, i64 %indvars.iv355, !dbg !995
  %32 = load i8** %arrayidx110, align 8, !dbg !995, !tbaa !466
  %arrayidx111 = getelementptr inbounds i8* %32, i64 %indvars.iv357, !dbg !995
  %33 = load i8* %arrayidx111, align 1, !dbg !995, !tbaa !467
  %arrayidx116 = getelementptr inbounds i8* %32, i64 %idxprom112, !dbg !995
  store i8 %33, i8* %arrayidx116, align 1, !dbg !995, !tbaa !467
  %indvars.iv.next356 = add i64 %indvars.iv355, 1, !dbg !993
  %34 = load i32* %ngc, align 4, !dbg !993, !tbaa !478
  %35 = trunc i64 %indvars.iv.next356 to i32, !dbg !993
  %cmp106 = icmp slt i32 %35, %34, !dbg !993
  br i1 %cmp106, label %for.body107, label %if.end120.loopexit, !dbg !993

if.end120.loopexit:                               ; preds = %for.body107, %for.cond105.preheader
  %.pre359.pre = load i32* %alen, align 4, !dbg !984, !tbaa !478
  br label %if.end120

if.end120:                                        ; preds = %if.end120.loopexit, %if.end
  %.pre359 = phi i32 [ %.pre359.pre, %if.end120.loopexit ], [ %1, %if.end ], !dbg !1005
  %inc121 = add nsw i32 %mpos.0345, 1, !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i32 %inc121}, i64 0, metadata !422), !dbg !1005
  br label %for.inc122, !dbg !1006

for.inc122:                                       ; preds = %for.body, %if.end120
  %36 = phi i32 [ %1, %for.body ], [ %.pre359, %if.end120 ], !dbg !984
  %mpos.1 = phi i32 [ %mpos.0345, %for.body ], [ %inc121, %if.end120 ]
  %indvars.iv.next358 = add i64 %indvars.iv357, 1, !dbg !984
  %37 = trunc i64 %indvars.iv.next358 to i32, !dbg !984
  %cmp = icmp slt i32 %37, %36, !dbg !984
  br i1 %cmp, label %for.body, label %for.end124, !dbg !984

for.end124:                                       ; preds = %entry, %for.inc122
  %mpos.0.lcssa = phi i32 [ %mpos.1, %for.inc122 ], [ 0, %entry ]
  store i32 %mpos.0.lcssa, i32* %alen, align 4, !dbg !1007, !tbaa !478
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !423), !dbg !1008
  %38 = load i32* %nseq, align 4, !dbg !1008, !tbaa !478
  %cmp128335 = icmp sgt i32 %38, 0, !dbg !1008
  br i1 %cmp128335, label %for.body129.lr.ph, label %for.end187, !dbg !1008

for.body129.lr.ph:                                ; preds = %for.end124
  %idxprom130 = sext i32 %mpos.0.lcssa to i64, !dbg !1010
  %aseq132 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1010
  %ss135 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !1012
  %sa149 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !1013
  %ngr164 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !1014
  %gr169 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !1016
  br label %for.body129, !dbg !1008

for.body129:                                      ; preds = %for.body129.lr.ph, %for.inc185
  %indvars.iv349 = phi i64 [ 0, %for.body129.lr.ph ], [ %indvars.iv.next350, %for.inc185 ]
  %39 = load i8*** %aseq132, align 8, !dbg !1010, !tbaa !466
  %arrayidx133 = getelementptr inbounds i8** %39, i64 %indvars.iv349, !dbg !1010
  %40 = load i8** %arrayidx133, align 8, !dbg !1010, !tbaa !466
  %arrayidx134 = getelementptr inbounds i8* %40, i64 %idxprom130, !dbg !1010
  store i8 0, i8* %arrayidx134, align 1, !dbg !1010, !tbaa !467
  %41 = load i8*** %ss135, align 8, !dbg !1012, !tbaa !466
  %cmp136 = icmp eq i8** %41, null, !dbg !1012
  br i1 %cmp136, label %if.end148, label %land.lhs.true137, !dbg !1012

land.lhs.true137:                                 ; preds = %for.body129
  %arrayidx140 = getelementptr inbounds i8** %41, i64 %indvars.iv349, !dbg !1012
  %42 = load i8** %arrayidx140, align 8, !dbg !1012, !tbaa !466
  %cmp141 = icmp eq i8* %42, null, !dbg !1012
  br i1 %cmp141, label %if.end148, label %if.then142, !dbg !1012

if.then142:                                       ; preds = %land.lhs.true137
  %arrayidx147 = getelementptr inbounds i8* %42, i64 %idxprom130, !dbg !1012
  store i8 0, i8* %arrayidx147, align 1, !dbg !1012, !tbaa !467
  br label %if.end148, !dbg !1012

if.end148:                                        ; preds = %land.lhs.true137, %for.body129, %if.then142
  %43 = load i8*** %sa149, align 8, !dbg !1013, !tbaa !466
  %cmp150 = icmp eq i8** %43, null, !dbg !1013
  br i1 %cmp150, label %for.cond163.preheader, label %land.lhs.true151, !dbg !1013

land.lhs.true151:                                 ; preds = %if.end148
  %arrayidx154 = getelementptr inbounds i8** %43, i64 %indvars.iv349, !dbg !1013
  %44 = load i8** %arrayidx154, align 8, !dbg !1013, !tbaa !466
  %cmp155 = icmp eq i8* %44, null, !dbg !1013
  br i1 %cmp155, label %for.cond163.preheader, label %if.then156, !dbg !1013

if.then156:                                       ; preds = %land.lhs.true151
  %arrayidx161 = getelementptr inbounds i8* %44, i64 %idxprom130, !dbg !1013
  store i8 0, i8* %arrayidx161, align 1, !dbg !1013, !tbaa !467
  br label %for.cond163.preheader, !dbg !1013

for.cond163.preheader:                            ; preds = %land.lhs.true151, %if.end148, %if.then156
  %45 = load i32* %ngr164, align 4, !dbg !1014, !tbaa !478
  %cmp165333 = icmp sgt i32 %45, 0, !dbg !1014
  br i1 %cmp165333, label %for.body166, label %for.inc185, !dbg !1014

for.body166:                                      ; preds = %for.inc182, %for.cond163.preheader
  %46 = phi i32 [ %45, %for.cond163.preheader ], [ %50, %for.inc182 ]
  %indvars.iv347 = phi i64 [ 0, %for.cond163.preheader ], [ %indvars.iv.next348, %for.inc182 ]
  %47 = load i8**** %gr169, align 8, !dbg !1016, !tbaa !466
  %arrayidx170 = getelementptr inbounds i8*** %47, i64 %indvars.iv347, !dbg !1016
  %48 = load i8*** %arrayidx170, align 8, !dbg !1016, !tbaa !466
  %arrayidx171 = getelementptr inbounds i8** %48, i64 %indvars.iv349, !dbg !1016
  %49 = load i8** %arrayidx171, align 8, !dbg !1016, !tbaa !466
  %cmp172 = icmp eq i8* %49, null, !dbg !1016
  br i1 %cmp172, label %for.inc182, label %if.then173, !dbg !1016

if.then173:                                       ; preds = %for.body166
  %arrayidx180 = getelementptr inbounds i8* %49, i64 %idxprom130, !dbg !1016
  store i8 0, i8* %arrayidx180, align 1, !dbg !1016, !tbaa !467
  %.pre = load i32* %ngr164, align 4, !dbg !1014, !tbaa !478
  br label %for.inc182, !dbg !1016

for.inc182:                                       ; preds = %for.body166, %if.then173
  %50 = phi i32 [ %46, %for.body166 ], [ %.pre, %if.then173 ], !dbg !1014
  %indvars.iv.next348 = add i64 %indvars.iv347, 1, !dbg !1014
  %51 = trunc i64 %indvars.iv.next348 to i32, !dbg !1014
  %cmp165 = icmp slt i32 %51, %50, !dbg !1014
  br i1 %cmp165, label %for.body166, label %for.inc185, !dbg !1014

for.inc185:                                       ; preds = %for.inc182, %for.cond163.preheader
  %indvars.iv.next350 = add i64 %indvars.iv349, 1, !dbg !1008
  %52 = load i32* %nseq, align 4, !dbg !1008, !tbaa !478
  %53 = trunc i64 %indvars.iv.next350 to i32, !dbg !1008
  %cmp128 = icmp slt i32 %53, %52, !dbg !1008
  br i1 %cmp128, label %for.body129, label %for.end187, !dbg !1008

for.end187:                                       ; preds = %for.inc185, %for.end124
  %ss_cons188 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !1017
  %54 = load i8** %ss_cons188, align 8, !dbg !1017, !tbaa !466
  %cmp189 = icmp eq i8* %54, null, !dbg !1017
  br i1 %cmp189, label %if.end194, label %if.then190, !dbg !1017

if.then190:                                       ; preds = %for.end187
  %idxprom191 = sext i32 %mpos.0.lcssa to i64, !dbg !1017
  %arrayidx193 = getelementptr inbounds i8* %54, i64 %idxprom191, !dbg !1017
  store i8 0, i8* %arrayidx193, align 1, !dbg !1017, !tbaa !467
  br label %if.end194, !dbg !1017

if.end194:                                        ; preds = %for.end187, %if.then190
  %sa_cons195 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !1018
  %55 = load i8** %sa_cons195, align 8, !dbg !1018, !tbaa !466
  %cmp196 = icmp eq i8* %55, null, !dbg !1018
  br i1 %cmp196, label %if.end201, label %if.then197, !dbg !1018

if.then197:                                       ; preds = %if.end194
  %idxprom198 = sext i32 %mpos.0.lcssa to i64, !dbg !1018
  %arrayidx200 = getelementptr inbounds i8* %55, i64 %idxprom198, !dbg !1018
  store i8 0, i8* %arrayidx200, align 1, !dbg !1018, !tbaa !467
  br label %if.end201, !dbg !1018

if.end201:                                        ; preds = %if.end194, %if.then197
  %rf202 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !1019
  %56 = load i8** %rf202, align 8, !dbg !1019, !tbaa !466
  %cmp203 = icmp eq i8* %56, null, !dbg !1019
  br i1 %cmp203, label %for.cond209.preheader, label %if.then204, !dbg !1019

if.then204:                                       ; preds = %if.end201
  %idxprom205 = sext i32 %mpos.0.lcssa to i64, !dbg !1019
  %arrayidx207 = getelementptr inbounds i8* %56, i64 %idxprom205, !dbg !1019
  store i8 0, i8* %arrayidx207, align 1, !dbg !1019, !tbaa !467
  br label %for.cond209.preheader, !dbg !1019

for.cond209.preheader:                            ; preds = %if.end201, %if.then204
  %ngc210 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !1020
  %57 = load i32* %ngc210, align 4, !dbg !1020, !tbaa !478
  %cmp211331 = icmp sgt i32 %57, 0, !dbg !1020
  br i1 %cmp211331, label %for.body212.lr.ph, label %for.end220, !dbg !1020

for.body212.lr.ph:                                ; preds = %for.cond209.preheader
  %idxprom213 = sext i32 %mpos.0.lcssa to i64, !dbg !1022
  %gc215 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !1022
  br label %for.body212, !dbg !1020

for.body212:                                      ; preds = %for.body212.lr.ph, %for.body212
  %indvars.iv = phi i64 [ 0, %for.body212.lr.ph ], [ %indvars.iv.next, %for.body212 ]
  %58 = load i8*** %gc215, align 8, !dbg !1022, !tbaa !466
  %arrayidx216 = getelementptr inbounds i8** %58, i64 %indvars.iv, !dbg !1022
  %59 = load i8** %arrayidx216, align 8, !dbg !1022, !tbaa !466
  %arrayidx217 = getelementptr inbounds i8* %59, i64 %idxprom213, !dbg !1022
  store i8 0, i8* %arrayidx217, align 1, !dbg !1022, !tbaa !467
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1020
  %60 = load i32* %ngc210, align 4, !dbg !1020, !tbaa !478
  %61 = trunc i64 %indvars.iv.next to i32, !dbg !1020
  %cmp211 = icmp slt i32 %61, %60, !dbg !1020
  br i1 %cmp211, label %for.body212, label %for.end220, !dbg !1020

for.end220:                                       ; preds = %for.body212, %for.cond209.preheader
  ret void, !dbg !1023
}

; Function Attrs: nounwind optsize uwtable
define void @MSANogap(%struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !411), !dbg !1024
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1025
  %0 = load i32* %alen, align 4, !dbg !1025, !tbaa !478
  %conv = sext i32 %0 to i64, !dbg !1025
  %mul = shl nsw i64 %conv, 2, !dbg !1025
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1189, i64 %mul) #7, !dbg !1025
  %1 = bitcast i8* %call to i32*, !dbg !1025
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !412), !dbg !1025
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !413), !dbg !1026
  %2 = load i32* %alen, align 4, !dbg !1026, !tbaa !478
  %cmp87 = icmp sgt i32 %2, 0, !dbg !1026
  br i1 %cmp87, label %for.cond3.preheader.lr.ph, label %for.end58, !dbg !1026

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1028
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1031
  br label %for.cond3.preheader, !dbg !1026

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.end
  %indvars.iv90 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next91, %for.end ]
  %3 = load i32* %nseq, align 4, !dbg !1028, !tbaa !478
  %cmp484 = icmp sgt i32 %3, 0, !dbg !1028
  br i1 %cmp484, label %for.body6.lr.ph, label %for.end, !dbg !1028

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %4 = load i8*** %aseq, align 8, !dbg !1031, !tbaa !466
  br label %for.body6, !dbg !1028

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %idx.085 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv, !dbg !1031
  %5 = load i8** %arrayidx, align 8, !dbg !1031, !tbaa !466
  %arrayidx8 = getelementptr inbounds i8* %5, i64 %indvars.iv90, !dbg !1031
  %6 = load i8* %arrayidx8, align 1, !dbg !1031, !tbaa !467
  switch i8 %6, label %for.inc [
    i8 32, label %for.end
    i8 46, label %for.end
    i8 95, label %for.end
    i8 45, label %for.end
    i8 126, label %for.end
  ], !dbg !1031

for.inc:                                          ; preds = %for.body6
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1028
  %inc = add nsw i32 %idx.085, 1, !dbg !1028
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !414), !dbg !1028
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !1028
  %cmp4 = icmp slt i32 %7, %3, !dbg !1028
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !1028

for.end:                                          ; preds = %for.inc, %for.body6, %for.body6, %for.body6, %for.body6, %for.body6, %for.cond3.preheader
  %idx.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %inc, %for.inc ]
  %cmp48 = icmp eq i32 %idx.0.lcssa, %3, !dbg !1032
  %arrayidx52 = getelementptr inbounds i32* %1, i64 %indvars.iv90, !dbg !1032
  %. = zext i1 %cmp48 to i32, !dbg !1032
  store i32 %., i32* %arrayidx52, align 4, !dbg !1032, !tbaa !478
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !1026
  %8 = load i32* %alen, align 4, !dbg !1026, !tbaa !478
  %9 = trunc i64 %indvars.iv.next91 to i32, !dbg !1026
  %cmp = icmp slt i32 %9, %8, !dbg !1026
  br i1 %cmp, label %for.cond3.preheader, label %for.end58, !dbg !1026

for.end58:                                        ; preds = %for.end, %entry
  tail call void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* %1) #9, !dbg !1033
  tail call void @free(i8* %call) #7, !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: nounwind optsize uwtable
define void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* nocapture %useme, %struct.msa_struct** nocapture %ret_new) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !430), !dbg !1036
  tail call void @llvm.dbg.value(metadata !{i32* %useme}, i64 0, metadata !431), !dbg !1036
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct** %ret_new}, i64 0, metadata !432), !dbg !1036
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !434), !dbg !1037
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !435), !dbg !1038
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1038
  %0 = load i32* %nseq, align 4, !dbg !1038, !tbaa !478
  %cmp230 = icmp sgt i32 %0, 0, !dbg !1038
  br i1 %cmp230, label %for.body, label %return, !dbg !1038

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %for.body ], [ 0, %entry ]
  %nnew.0231 = phi i32 [ %nnew.0.inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %useme, i64 %indvars.iv238, !dbg !1040
  %1 = load i32* %arrayidx, align 4, !dbg !1040, !tbaa !478
  %not.tobool = icmp ne i32 %1, 0, !dbg !1040
  %inc = zext i1 %not.tobool to i32, !dbg !1040
  %nnew.0.inc = add nsw i32 %inc, %nnew.0231, !dbg !1040
  %indvars.iv.next239 = add i64 %indvars.iv238, 1, !dbg !1038
  %2 = trunc i64 %indvars.iv.next239 to i32, !dbg !1038
  %cmp = icmp slt i32 %2, %0, !dbg !1038
  br i1 %cmp, label %for.body, label %for.end, !dbg !1038

for.end:                                          ; preds = %for.body
  %cmp2 = icmp eq i32 %nnew.0.inc, 0, !dbg !1041
  br i1 %cmp2, label %return, label %if.end4, !dbg !1041

if.end4:                                          ; preds = %for.end
  %call = tail call %struct.msa_struct* @MSAAlloc(i32 %nnew.0.inc, i32 0) #9, !dbg !1042
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call}, i64 0, metadata !433), !dbg !1042
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !436), !dbg !1043
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !435), !dbg !1044
  %3 = load i32* %nseq, align 4, !dbg !1044, !tbaa !478
  %cmp7227 = icmp sgt i32 %3, 0, !dbg !1044
  br i1 %cmp7227, label %for.body8.lr.ph, label %if.end4.for.end99_crit_edge, !dbg !1044

if.end4.for.end99_crit_edge:                      ; preds = %if.end4
  %nseq100.pre = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 4, !dbg !1046
  %alen101.pre = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1047
  br label %for.end99, !dbg !1044

for.body8.lr.ph:                                  ; preds = %if.end4
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1048
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1048
  %aseq17 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 0, !dbg !1048
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1050
  %sqname24 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 1, !dbg !1050
  %index = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 39, !dbg !1051
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !1052
  %wgt33 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 2, !dbg !1052
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !1053
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !1054
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !1055
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !1056
  %sa77 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 17, !dbg !1057
  %nseq81 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 4, !dbg !1057
  %ss53 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 16, !dbg !1059
  br label %for.body8, !dbg !1044

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc97
  %4 = phi i32 [ %3, %for.body8.lr.ph ], [ %38, %for.inc97 ]
  %indvars.iv236 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next237, %for.inc97 ]
  %nidx.0229 = phi i32 [ 0, %for.body8.lr.ph ], [ %nidx.1, %for.inc97 ]
  %arrayidx10 = getelementptr inbounds i32* %useme, i64 %indvars.iv236, !dbg !1061
  %5 = load i32* %arrayidx10, align 4, !dbg !1061, !tbaa !478
  %tobool11 = icmp eq i32 %5, 0, !dbg !1061
  br i1 %tobool11, label %for.inc97, label %if.then12, !dbg !1061

if.then12:                                        ; preds = %for.body8
  %6 = load i8*** %aseq, align 8, !dbg !1048, !tbaa !466
  %arrayidx14 = getelementptr inbounds i8** %6, i64 %indvars.iv236, !dbg !1048
  %7 = load i8** %arrayidx14, align 8, !dbg !1048, !tbaa !466
  %8 = load i32* %alen, align 4, !dbg !1048, !tbaa !478
  %call15 = tail call i8* @sre_strdup(i8* %7, i32 %8) #7, !dbg !1048
  %idxprom16 = sext i32 %nidx.0229 to i64, !dbg !1048
  %9 = load i8*** %aseq17, align 8, !dbg !1048, !tbaa !466
  %arrayidx18 = getelementptr inbounds i8** %9, i64 %idxprom16, !dbg !1048
  store i8* %call15, i8** %arrayidx18, align 8, !dbg !1048, !tbaa !466
  %10 = load i8*** %sqname, align 8, !dbg !1050, !tbaa !466
  %arrayidx20 = getelementptr inbounds i8** %10, i64 %indvars.iv236, !dbg !1050
  %11 = load i8** %arrayidx20, align 8, !dbg !1050, !tbaa !466
  %12 = load i32* %alen, align 4, !dbg !1050, !tbaa !478
  %call22 = tail call i8* @sre_strdup(i8* %11, i32 %12) #7, !dbg !1050
  %13 = load i8*** %sqname24, align 8, !dbg !1050, !tbaa !466
  %arrayidx25 = getelementptr inbounds i8** %13, i64 %idxprom16, !dbg !1050
  store i8* %call22, i8** %arrayidx25, align 8, !dbg !1050, !tbaa !466
  %14 = load %struct.GKI** %index, align 8, !dbg !1051, !tbaa !466
  %15 = load i8*** %sqname, align 8, !dbg !1051, !tbaa !466
  %arrayidx28 = getelementptr inbounds i8** %15, i64 %indvars.iv236, !dbg !1051
  %16 = load i8** %arrayidx28, align 8, !dbg !1051, !tbaa !466
  %call29 = tail call i32 @GKIStoreKey(%struct.GKI* %14, i8* %16) #7, !dbg !1051
  %17 = load float** %wgt, align 8, !dbg !1052, !tbaa !466
  %arrayidx31 = getelementptr inbounds float* %17, i64 %indvars.iv236, !dbg !1052
  %18 = load float* %arrayidx31, align 4, !dbg !1052, !tbaa !480
  %19 = load float** %wgt33, align 8, !dbg !1052, !tbaa !466
  %arrayidx34 = getelementptr inbounds float* %19, i64 %idxprom16, !dbg !1052
  store float %18, float* %arrayidx34, align 4, !dbg !1052, !tbaa !480
  %20 = load i8*** %sqacc, align 8, !dbg !1053, !tbaa !466
  %cmp35 = icmp eq i8** %20, null, !dbg !1053
  br i1 %cmp35, label %if.end40, label %if.then36, !dbg !1053

if.then36:                                        ; preds = %if.then12
  %arrayidx39 = getelementptr inbounds i8** %20, i64 %indvars.iv236, !dbg !1062
  %21 = load i8** %arrayidx39, align 8, !dbg !1062, !tbaa !466
  tail call void @MSASetSeqAccession(%struct.msa_struct* %call, i32 %nidx.0229, i8* %21) #9, !dbg !1062
  br label %if.end40, !dbg !1062

if.end40:                                         ; preds = %if.then12, %if.then36
  %22 = load i8*** %sqdesc, align 8, !dbg !1054, !tbaa !466
  %cmp41 = icmp eq i8** %22, null, !dbg !1054
  br i1 %cmp41, label %if.end46, label %if.then42, !dbg !1054

if.then42:                                        ; preds = %if.end40
  %arrayidx45 = getelementptr inbounds i8** %22, i64 %indvars.iv236, !dbg !1063
  %23 = load i8** %arrayidx45, align 8, !dbg !1063, !tbaa !466
  tail call void @MSASetSeqDescription(%struct.msa_struct* %call, i32 %nidx.0229, i8* %23) #9, !dbg !1063
  br label %if.end46, !dbg !1063

if.end46:                                         ; preds = %if.end40, %if.then42
  %24 = load i8*** %ss, align 8, !dbg !1055, !tbaa !466
  %cmp47 = icmp eq i8** %24, null, !dbg !1055
  br i1 %cmp47, label %if.end67, label %land.lhs.true, !dbg !1055

land.lhs.true:                                    ; preds = %if.end46
  %arrayidx50 = getelementptr inbounds i8** %24, i64 %indvars.iv236, !dbg !1055
  %25 = load i8** %arrayidx50, align 8, !dbg !1055, !tbaa !466
  %cmp51 = icmp eq i8* %25, null, !dbg !1055
  br i1 %cmp51, label %if.end67, label %if.then52, !dbg !1055

if.then52:                                        ; preds = %land.lhs.true
  %26 = load i8*** %ss53, align 8, !dbg !1059, !tbaa !466
  %cmp54 = icmp eq i8** %26, null, !dbg !1059
  br i1 %cmp54, label %if.then55, label %if.end59, !dbg !1059

if.then55:                                        ; preds = %if.then52
  %27 = load i32* %nseq81, align 4, !dbg !1059, !tbaa !478
  %conv = sext i32 %27 to i64, !dbg !1059
  %mul = shl nsw i64 %conv, 3, !dbg !1059
  %call57 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1333, i64 %mul) #7, !dbg !1059
  %28 = bitcast i8* %call57 to i8**, !dbg !1059
  store i8** %28, i8*** %ss53, align 8, !dbg !1059, !tbaa !466
  %.pre242 = load i8*** %ss, align 8, !dbg !1064, !tbaa !466
  %arrayidx62.phi.trans.insert = getelementptr inbounds i8** %.pre242, i64 %indvars.iv236
  %.pre243 = load i8** %arrayidx62.phi.trans.insert, align 8, !dbg !1064, !tbaa !466
  br label %if.end59, !dbg !1059

if.end59:                                         ; preds = %if.then55, %if.then52
  %29 = phi i8* [ %.pre243, %if.then55 ], [ %25, %if.then52 ]
  %call63 = tail call i8* @sre_strdup(i8* %29, i32 -1) #7, !dbg !1064
  %30 = load i8*** %ss53, align 8, !dbg !1064, !tbaa !466
  %arrayidx66 = getelementptr inbounds i8** %30, i64 %idxprom16, !dbg !1064
  store i8* %call63, i8** %arrayidx66, align 8, !dbg !1064, !tbaa !466
  br label %if.end67, !dbg !1065

if.end67:                                         ; preds = %land.lhs.true, %if.end46, %if.end59
  %31 = load i8*** %sa, align 8, !dbg !1056, !tbaa !466
  %cmp68 = icmp eq i8** %31, null, !dbg !1056
  br i1 %cmp68, label %if.end94, label %land.lhs.true70, !dbg !1056

land.lhs.true70:                                  ; preds = %if.end67
  %arrayidx73 = getelementptr inbounds i8** %31, i64 %indvars.iv236, !dbg !1056
  %32 = load i8** %arrayidx73, align 8, !dbg !1056, !tbaa !466
  %cmp74 = icmp eq i8* %32, null, !dbg !1056
  br i1 %cmp74, label %if.end94, label %if.then76, !dbg !1056

if.then76:                                        ; preds = %land.lhs.true70
  %33 = load i8*** %sa77, align 8, !dbg !1057, !tbaa !466
  %cmp78 = icmp eq i8** %33, null, !dbg !1057
  br i1 %cmp78, label %if.then80, label %if.end86, !dbg !1057

if.then80:                                        ; preds = %if.then76
  %34 = load i32* %nseq81, align 4, !dbg !1057, !tbaa !478
  %conv82 = sext i32 %34 to i64, !dbg !1057
  %mul83 = shl nsw i64 %conv82, 3, !dbg !1057
  %call84 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1338, i64 %mul83) #7, !dbg !1057
  %35 = bitcast i8* %call84 to i8**, !dbg !1057
  store i8** %35, i8*** %sa77, align 8, !dbg !1057, !tbaa !466
  %.pre240 = load i8*** %sa, align 8, !dbg !1066, !tbaa !466
  %arrayidx89.phi.trans.insert = getelementptr inbounds i8** %.pre240, i64 %indvars.iv236
  %.pre241 = load i8** %arrayidx89.phi.trans.insert, align 8, !dbg !1066, !tbaa !466
  br label %if.end86, !dbg !1057

if.end86:                                         ; preds = %if.then80, %if.then76
  %36 = phi i8* [ %.pre241, %if.then80 ], [ %32, %if.then76 ]
  %call90 = tail call i8* @sre_strdup(i8* %36, i32 -1) #7, !dbg !1066
  %37 = load i8*** %sa77, align 8, !dbg !1066, !tbaa !466
  %arrayidx93 = getelementptr inbounds i8** %37, i64 %idxprom16, !dbg !1066
  store i8* %call90, i8** %arrayidx93, align 8, !dbg !1066, !tbaa !466
  br label %if.end94, !dbg !1067

if.end94:                                         ; preds = %land.lhs.true70, %if.end67, %if.end86
  %inc95 = add nsw i32 %nidx.0229, 1, !dbg !1068
  tail call void @llvm.dbg.value(metadata !{i32 %inc95}, i64 0, metadata !436), !dbg !1068
  %.pre = load i32* %nseq, align 4, !dbg !1044, !tbaa !478
  br label %for.inc97, !dbg !1069

for.inc97:                                        ; preds = %for.body8, %if.end94
  %38 = phi i32 [ %.pre, %if.end94 ], [ %4, %for.body8 ], !dbg !1044
  %nidx.1 = phi i32 [ %inc95, %if.end94 ], [ %nidx.0229, %for.body8 ]
  %indvars.iv.next237 = add i64 %indvars.iv236, 1, !dbg !1044
  %39 = trunc i64 %indvars.iv.next237 to i32, !dbg !1044
  %cmp7 = icmp slt i32 %39, %38, !dbg !1044
  br i1 %cmp7, label %for.body8, label %for.end99, !dbg !1044

for.end99:                                        ; preds = %for.inc97, %if.end4.for.end99_crit_edge
  %alen101.pre-phi = phi i32* [ %alen101.pre, %if.end4.for.end99_crit_edge ], [ %alen, %for.inc97 ], !dbg !1047
  %nseq100.pre-phi = phi i32* [ %nseq100.pre, %if.end4.for.end99_crit_edge ], [ %nseq81, %for.inc97 ], !dbg !1046
  store i32 %nnew.0.inc, i32* %nseq100.pre-phi, align 4, !dbg !1046, !tbaa !478
  %40 = load i32* %alen101.pre-phi, align 4, !dbg !1047, !tbaa !478
  %alen102 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 3, !dbg !1047
  store i32 %40, i32* %alen102, align 4, !dbg !1047, !tbaa !478
  %flags = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5, !dbg !1070
  %41 = load i32* %flags, align 4, !dbg !1070, !tbaa !478
  %flags103 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 5, !dbg !1070
  store i32 %41, i32* %flags103, align 4, !dbg !1070, !tbaa !478
  %type = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 6, !dbg !1071
  %42 = load i32* %type, align 4, !dbg !1071, !tbaa !478
  %type104 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 6, !dbg !1071
  store i32 %42, i32* %type104, align 4, !dbg !1071, !tbaa !478
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !1072
  %43 = load i8** %name, align 8, !dbg !1072, !tbaa !466
  %call105 = tail call i8* @sre_strdup(i8* %43, i32 -1) #7, !dbg !1072
  %name106 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 7, !dbg !1072
  store i8* %call105, i8** %name106, align 8, !dbg !1072, !tbaa !466
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8, !dbg !1073
  %44 = load i8** %desc, align 8, !dbg !1073, !tbaa !466
  %call107 = tail call i8* @sre_strdup(i8* %44, i32 -1) #7, !dbg !1073
  %desc108 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 8, !dbg !1073
  store i8* %call107, i8** %desc108, align 8, !dbg !1073, !tbaa !466
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9, !dbg !1074
  %45 = load i8** %acc, align 8, !dbg !1074, !tbaa !466
  %call109 = tail call i8* @sre_strdup(i8* %45, i32 -1) #7, !dbg !1074
  %acc110 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 9, !dbg !1074
  store i8* %call109, i8** %acc110, align 8, !dbg !1074, !tbaa !466
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10, !dbg !1075
  %46 = load i8** %au, align 8, !dbg !1075, !tbaa !466
  %call111 = tail call i8* @sre_strdup(i8* %46, i32 -1) #7, !dbg !1075
  %au112 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 10, !dbg !1075
  store i8* %call111, i8** %au112, align 8, !dbg !1075, !tbaa !466
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !1076
  %47 = load i8** %ss_cons, align 8, !dbg !1076, !tbaa !466
  %call113 = tail call i8* @sre_strdup(i8* %47, i32 -1) #7, !dbg !1076
  %ss_cons114 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 11, !dbg !1076
  store i8* %call113, i8** %ss_cons114, align 8, !dbg !1076, !tbaa !466
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !1077
  %48 = load i8** %sa_cons, align 8, !dbg !1077, !tbaa !466
  %call115 = tail call i8* @sre_strdup(i8* %48, i32 -1) #7, !dbg !1077
  %sa_cons116 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 12, !dbg !1077
  store i8* %call115, i8** %sa_cons116, align 8, !dbg !1077, !tbaa !466
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !1078
  %49 = load i8** %rf, align 8, !dbg !1078, !tbaa !466
  %call117 = tail call i8* @sre_strdup(i8* %49, i32 -1) #7, !dbg !1078
  %rf118 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 13, !dbg !1078
  store i8* %call117, i8** %rf118, align 8, !dbg !1078, !tbaa !466
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !437), !dbg !1079
  br label %for.body122, !dbg !1079

for.body122:                                      ; preds = %for.body122, %for.end99
  %indvars.iv = phi i64 [ 0, %for.end99 ], [ %indvars.iv.next, %for.body122 ]
  %arrayidx124 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 %indvars.iv, !dbg !1081
  %50 = load float* %arrayidx124, align 4, !dbg !1081, !tbaa !480
  %arrayidx127 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 %indvars.iv, !dbg !1081
  store float %50, float* %arrayidx127, align 4, !dbg !1081, !tbaa !480
  %arrayidx129 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 %indvars.iv, !dbg !1083
  %51 = load i32* %arrayidx129, align 4, !dbg !1083, !tbaa !478
  %arrayidx132 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 %indvars.iv, !dbg !1083
  store i32 %51, i32* %arrayidx132, align 4, !dbg !1083, !tbaa !478
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1079
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1079
  %exitcond = icmp eq i32 %lftr.wideiv, 6, !dbg !1079
  br i1 %exitcond, label %for.end135, label %for.body122, !dbg !1079

for.end135:                                       ; preds = %for.body122
  %sqlen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 42, !dbg !1084
  %52 = load i32** %sqlen, align 8, !dbg !1084, !tbaa !466
  %53 = bitcast i32* %52 to i8*, !dbg !1084
  tail call void @free(i8* %53) #7, !dbg !1084
  tail call void @MSAMingap(%struct.msa_struct* %call) #9, !dbg !1085
  br label %return, !dbg !1086

return:                                           ; preds = %entry, %for.end, %for.end135
  %storemerge = phi %struct.msa_struct* [ %call, %for.end135 ], [ null, %for.end ], [ null, %entry ]
  store %struct.msa_struct* %storemerge, %struct.msa_struct** %ret_new, align 8, !dbg !1087, !tbaa !466
  ret void, !dbg !1086
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqAccession(%struct.msa_struct* nocapture %msa, i32 %idx) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !442), !dbg !1089
  tail call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !443), !dbg !1089
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !1090
  %0 = load i8*** %sqacc, align 8, !dbg !1090, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !1090
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1090

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64, !dbg !1090
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom, !dbg !1090
  %1 = load i8** %arrayidx, align 8, !dbg !1090, !tbaa !466
  %cmp2 = icmp eq i8* %1, null, !dbg !1090
  br i1 %cmp2, label %if.else, label %return, !dbg !1090

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return, !dbg !1091

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0, !dbg !1092
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqDescription(%struct.msa_struct* nocapture %msa, i32 %idx) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !446), !dbg !1093
  tail call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !447), !dbg !1093
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !1094
  %0 = load i8*** %sqdesc, align 8, !dbg !1094, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !1094
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1094

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64, !dbg !1094
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom, !dbg !1094
  %1 = load i8** %arrayidx, align 8, !dbg !1094, !tbaa !466
  %cmp2 = icmp eq i8* %1, null, !dbg !1094
  br i1 %cmp2, label %if.else, label %return, !dbg !1094

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return, !dbg !1095

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0, !dbg !1096
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqSS(%struct.msa_struct* nocapture %msa, i32 %idx) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !450), !dbg !1097
  tail call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !451), !dbg !1097
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !1098
  %0 = load i8*** %ss, align 8, !dbg !1098, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !1098
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1098

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64, !dbg !1098
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom, !dbg !1098
  %1 = load i8** %arrayidx, align 8, !dbg !1098, !tbaa !466
  %cmp2 = icmp eq i8* %1, null, !dbg !1098
  br i1 %cmp2, label %if.else, label %return, !dbg !1098

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return, !dbg !1099

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0, !dbg !1100
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqSA(%struct.msa_struct* nocapture %msa, i32 %idx) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !454), !dbg !1101
  tail call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !455), !dbg !1101
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !1102
  %0 = load i8*** %sa, align 8, !dbg !1102, !tbaa !466
  %cmp = icmp eq i8** %0, null, !dbg !1102
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1102

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64, !dbg !1102
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom, !dbg !1102
  %1 = load i8** %arrayidx, align 8, !dbg !1102, !tbaa !466
  %cmp2 = icmp eq i8* %1, null, !dbg !1102
  br i1 %cmp2, label %if.else, label %return, !dbg !1102

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return, !dbg !1103

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0, !dbg !1104
}

; Function Attrs: nounwind optsize uwtable
define float @MSAAverageSequenceLength(%struct.msa_struct* nocapture %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !460), !dbg !1105
  tail call void @llvm.dbg.value(metadata !1106, i64 0, metadata !462), !dbg !1107
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !461), !dbg !1108
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1108
  %0 = load i32* %nseq, align 4, !dbg !1108, !tbaa !478
  %cmp12 = icmp sgt i32 %0, 0, !dbg !1108
  br i1 %cmp12, label %for.body.lr.ph, label %for.end, !dbg !1108

for.body.lr.ph:                                   ; preds = %entry
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1110
  br label %for.body, !dbg !1108

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %avg.014 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.body ]
  %1 = load i8*** %aseq, align 8, !dbg !1110, !tbaa !466
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv, !dbg !1110
  %2 = load i8** %arrayidx, align 8, !dbg !1110, !tbaa !466
  %call = tail call i32 @DealignedLength(i8* %2) #7, !dbg !1110
  %conv = sitofp i32 %call to float, !dbg !1110
  %add = fadd float %avg.014, %conv, !dbg !1110
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !462), !dbg !1110
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1108
  %3 = load i32* %nseq, align 4, !dbg !1108, !tbaa !478
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !1108
  %cmp = icmp slt i32 %4, %3, !dbg !1108
  br i1 %cmp, label %for.body, label %for.end, !dbg !1108

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %3, %for.body ]
  %avg.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %cmp2 = icmp eq i32 %.lcssa, 0, !dbg !1111
  br i1 %cmp2, label %return, label %if.else, !dbg !1111

if.else:                                          ; preds = %for.end
  %conv5 = sitofp i32 %.lcssa to float, !dbg !1112
  %div = fdiv float %avg.0.lcssa, %conv5, !dbg !1112
  br label %return, !dbg !1112

return:                                           ; preds = %for.end, %if.else
  %retval.0 = phi float [ %div, %if.else ], [ 0.000000e+00, %for.end ]
  ret float %retval.0, !dbg !1113
}

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !92, metadata !99, metadata !102, metadata !110, metadata !116, metadata !122, metadata !129, metadata !141, metadata !147, metadata !154, metadata !162, metadata !166, metadata !293, metadata !298, metadata !306, metadata !314, metadata !320, metadata !325, metadata !331, metadata !339, metadata !347, metadata !399, metadata !403, metadata !409, metadata !415, metadata !425, metadata !438, metadata !444, metadata !448, metadata !452, metadata !456}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAlloc", metadata !"MSAAlloc", metadata !"", i32 63, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (i32, i32)* @MSAAlloc, null, null, metadata !87, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [MSAAlloc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !22, metadata !22}
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
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91}
!88 = metadata !{i32 786689, metadata !4, metadata !"nseq", metadata !5, i32 16777279, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 63]
!89 = metadata !{i32 786689, metadata !4, metadata !"alen", metadata !5, i32 33554495, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 63]
!90 = metadata !{i32 786688, metadata !4, metadata !"msa", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 65]
!91 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 66, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 66]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAExpand", metadata !"MSAExpand", metadata !"", i32 156, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*)* @MSAExpand, null, null, metadata !95, i32 157} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 157] [MSAExpand]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{null, metadata !8}
!95 = metadata !{metadata !96, metadata !97, metadata !98}
!96 = metadata !{i32 786689, metadata !92, metadata !"msa", metadata !5, i32 16777372, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 156]
!97 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !5, i32 158, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 158]
!98 = metadata !{i32 786688, metadata !92, metadata !"j", metadata !5, i32 158, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 158]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFree", metadata !"MSAFree", metadata !"", i32 251, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*)* @MSAFree, null, null, metadata !100, i32 252} ; [ DW_TAG_subprogram ] [line 251] [def] [scope 252] [MSAFree]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786689, metadata !99, metadata !"msa", metadata !5, i32 16777467, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 251]
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSASetSeqAccession", metadata !"MSASetSeqAccession", metadata !"", i32 305, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i32, i8*)* @MSASetSeqAccession, null, null, metadata !105, i32 306} ; [ DW_TAG_subprogram ] [line 305] [def] [scope 306] [MSASetSeqAccession]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !8, metadata !22, metadata !15}
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109}
!106 = metadata !{i32 786689, metadata !102, metadata !"msa", metadata !5, i32 16777521, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 305]
!107 = metadata !{i32 786689, metadata !102, metadata !"seqidx", metadata !5, i32 33554737, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqidx] [line 305]
!108 = metadata !{i32 786689, metadata !102, metadata !"acc", metadata !5, i32 50331953, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acc] [line 305]
!109 = metadata !{i32 786688, metadata !102, metadata !"x", metadata !5, i32 307, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 307]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSASetSeqDescription", metadata !"MSASetSeqDescription", metadata !"", i32 330, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i32, i8*)* @MSASetSeqDescription, null, null, metadata !111, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [MSASetSeqDescription]
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115}
!112 = metadata !{i32 786689, metadata !110, metadata !"msa", metadata !5, i32 16777546, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 330]
!113 = metadata !{i32 786689, metadata !110, metadata !"seqidx", metadata !5, i32 33554762, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqidx] [line 330]
!114 = metadata !{i32 786689, metadata !110, metadata !"desc", metadata !5, i32 50331978, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 330]
!115 = metadata !{i32 786688, metadata !110, metadata !"x", metadata !5, i32 332, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 332]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAddComment", metadata !"MSAAddComment", metadata !"", i32 355, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8*)* @MSAAddComment, null, null, metadata !119, i32 356} ; [ DW_TAG_subprogram ] [line 355] [def] [scope 356] [MSAAddComment]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{null, metadata !8, metadata !15}
!119 = metadata !{metadata !120, metadata !121}
!120 = metadata !{i32 786689, metadata !116, metadata !"msa", metadata !5, i32 16777571, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 355]
!121 = metadata !{i32 786689, metadata !116, metadata !"s", metadata !5, i32 33554787, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 355]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAddGF", metadata !"MSAAddGF", metadata !"", i32 388, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8*, i8*)* @MSAAddGF, null, null, metadata !125, i32 389} ; [ DW_TAG_subprogram ] [line 388] [def] [scope 389] [MSAAddGF]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{null, metadata !8, metadata !15, metadata !15}
!125 = metadata !{metadata !126, metadata !127, metadata !128}
!126 = metadata !{i32 786689, metadata !122, metadata !"msa", metadata !5, i32 16777604, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 388]
!127 = metadata !{i32 786689, metadata !122, metadata !"tag", metadata !5, i32 33554820, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 388]
!128 = metadata !{i32 786689, metadata !122, metadata !"value", metadata !5, i32 50332036, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 388]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAddGS", metadata !"MSAAddGS", metadata !"", i32 433, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8*, i32, i8*)* @MSAAddGS, null, null, metadata !132, i32 434} ; [ DW_TAG_subprogram ] [line 433] [def] [scope 434] [MSAAddGS]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{null, metadata !8, metadata !15, metadata !22, metadata !15}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139}
!133 = metadata !{i32 786689, metadata !129, metadata !"msa", metadata !5, i32 16777649, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 433]
!134 = metadata !{i32 786689, metadata !129, metadata !"tag", metadata !5, i32 33554865, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 433]
!135 = metadata !{i32 786689, metadata !129, metadata !"sqidx", metadata !5, i32 50332081, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqidx] [line 433]
!136 = metadata !{i32 786689, metadata !129, metadata !"value", metadata !5, i32 67109297, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 433]
!137 = metadata !{i32 786688, metadata !129, metadata !"tagidx", metadata !5, i32 435, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tagidx] [line 435]
!138 = metadata !{i32 786688, metadata !129, metadata !"i", metadata !5, i32 436, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 436]
!139 = metadata !{i32 786688, metadata !140, metadata !"len", metadata !5, i32 480, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 480]
!140 = metadata !{i32 786443, metadata !1, metadata !129, i32 478, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAppendGC", metadata !"MSAAppendGC", metadata !"", i32 507, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8*, i8*)* @MSAAppendGC, null, null, metadata !142, i32 508} ; [ DW_TAG_subprogram ] [line 507] [def] [scope 508] [MSAAppendGC]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146}
!143 = metadata !{i32 786689, metadata !141, metadata !"msa", metadata !5, i32 16777723, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 507]
!144 = metadata !{i32 786689, metadata !141, metadata !"tag", metadata !5, i32 33554939, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 507]
!145 = metadata !{i32 786689, metadata !141, metadata !"value", metadata !5, i32 50332155, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 507]
!146 = metadata !{i32 786688, metadata !141, metadata !"tagidx", metadata !5, i32 509, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tagidx] [line 509]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAGetGC", metadata !"MSAGetGC", metadata !"", i32 561, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.msa_struct*, i8*)* @MSAGetGC, null, null, metadata !150, i32 562} ; [ DW_TAG_subprogram ] [line 561] [def] [scope 562] [MSAGetGC]
!148 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{metadata !15, metadata !8, metadata !15}
!150 = metadata !{metadata !151, metadata !152, metadata !153}
!151 = metadata !{i32 786689, metadata !147, metadata !"msa", metadata !5, i32 16777777, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 561]
!152 = metadata !{i32 786689, metadata !147, metadata !"tag", metadata !5, i32 33554993, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 561]
!153 = metadata !{i32 786688, metadata !147, metadata !"tagidx", metadata !5, i32 563, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tagidx] [line 563]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAppendGR", metadata !"MSAAppendGR", metadata !"", i32 590, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8*, i32, i8*)* @MSAAppendGR, null, null, metadata !155, i32 591} ; [ DW_TAG_subprogram ] [line 590] [def] [scope 591] [MSAAppendGR]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!156 = metadata !{i32 786689, metadata !154, metadata !"msa", metadata !5, i32 16777806, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 590]
!157 = metadata !{i32 786689, metadata !154, metadata !"tag", metadata !5, i32 33555022, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 590]
!158 = metadata !{i32 786689, metadata !154, metadata !"sqidx", metadata !5, i32 50332238, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqidx] [line 590]
!159 = metadata !{i32 786689, metadata !154, metadata !"value", metadata !5, i32 67109454, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 590]
!160 = metadata !{i32 786688, metadata !154, metadata !"tagidx", metadata !5, i32 592, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tagidx] [line 592]
!161 = metadata !{i32 786688, metadata !154, metadata !"i", metadata !5, i32 593, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 593]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAVerifyParse", metadata !"MSAVerifyParse", metadata !"", i32 662, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*)* @MSAVerifyParse, null, null, metadata !163, i32 663} ; [ DW_TAG_subprogram ] [line 662] [def] [scope 663] [MSAVerifyParse]
!163 = metadata !{metadata !164, metadata !165}
!164 = metadata !{i32 786689, metadata !162, metadata !"msa", metadata !5, i32 16777878, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 662]
!165 = metadata !{i32 786688, metadata !162, metadata !"idx", metadata !5, i32 664, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 664]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileOpen", metadata !"MSAFileOpen", metadata !"", i32 756, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msafile_struct* (i8*, i32, i8*)* @MSAFileOpen, null, null, metadata !278, i32 757} ; [ DW_TAG_subprogram ] [line 756] [def] [scope 757] [MSAFileOpen]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{metadata !169, metadata !15, metadata !22, metadata !15}
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!170 = metadata !{i32 786454, metadata !1, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!171 = metadata !{i32 786451, metadata !11, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !172, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !275, metadata !276, metadata !277}
!173 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!175 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!176 = metadata !{i32 786451, metadata !177, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !178, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!177 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !199, metadata !200, metadata !201, metadata !202, metadata !205, metadata !207, metadata !209, metadata !213, metadata !215, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !224, metadata !225}
!179 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!180 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!181 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!182 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!183 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!184 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!185 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!186 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!187 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!188 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!189 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!190 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!191 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !192} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!193 = metadata !{i32 786451, metadata !177, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !194, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!194 = metadata !{metadata !195, metadata !196, metadata !198}
!195 = metadata !{i32 786445, metadata !177, metadata !193, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!196 = metadata !{i32 786445, metadata !177, metadata !193, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !197} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!198 = metadata !{i32 786445, metadata !177, metadata !193, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!199 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !197} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!200 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!201 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!202 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !203} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!203 = metadata !{i32 786454, metadata !177, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!204 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!205 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !206} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!206 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!207 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !208} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!208 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!209 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !210} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!210 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!213 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !214} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !216} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!216 = metadata !{i32 786454, metadata !177, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!217 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !214} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!218 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !214} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!219 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !214} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!220 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !214} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!221 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !222} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!222 = metadata !{i32 786454, metadata !177, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!223 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!224 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !22} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!225 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !226} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!226 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !16, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!229 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!230 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!231 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!232 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!233 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !234} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!234 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!235 = metadata !{i32 786454, metadata !11, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!236 = metadata !{i32 786451, metadata !237, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !238, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!237 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!238 = metadata !{metadata !239, metadata !240, metadata !243, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !272, metadata !273, metadata !274}
!239 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!240 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !241} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!241 = metadata !{i32 786454, metadata !237, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!242 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!243 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !244} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!244 = metadata !{i32 786454, metadata !237, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!245 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !241} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!246 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !241} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!247 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !241} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!248 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !241} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!249 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !241} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!250 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !241} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!251 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !241} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!252 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !241} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!253 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !254} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!254 = metadata !{i32 786454, metadata !237, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !255} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!255 = metadata !{i32 786451, metadata !237, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !256, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!256 = metadata !{metadata !257, metadata !258}
!257 = metadata !{i32 786445, metadata !237, metadata !255, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!258 = metadata !{i32 786445, metadata !237, metadata !255, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !259} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!259 = metadata !{i32 786455, metadata !237, metadata !255, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !260, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!260 = metadata !{metadata !261, metadata !262}
!261 = metadata !{i32 786445, metadata !237, metadata !259, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!262 = metadata !{i32 786445, metadata !237, metadata !259, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!263 = metadata !{i32 786454, metadata !237, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!264 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!265 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !254} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!266 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !254} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!267 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !16} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!268 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !16} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!269 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!270 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !271} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!272 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !271} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!273 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !271} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!274 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !271} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!275 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!276 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !22} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!277 = metadata !{i32 786445, metadata !11, metadata !171, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !288, metadata !290, metadata !291}
!279 = metadata !{i32 786689, metadata !166, metadata !"filename", metadata !5, i32 16777972, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 756]
!280 = metadata !{i32 786689, metadata !166, metadata !"format", metadata !5, i32 33555188, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 756]
!281 = metadata !{i32 786689, metadata !166, metadata !"env", metadata !5, i32 50332404, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 756]
!282 = metadata !{i32 786688, metadata !166, metadata !"afp", metadata !5, i32 758, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [afp] [line 758]
!283 = metadata !{i32 786688, metadata !284, metadata !"cmd", metadata !5, i32 773, metadata !285, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmd] [line 773]
!284 = metadata !{i32 786443, metadata !1, metadata !166, i32 772, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!285 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !16, metadata !286, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!286 = metadata !{metadata !287}
!287 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!288 = metadata !{i32 786688, metadata !289, metadata !"ssifile", metadata !5, i32 797, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ssifile] [line 797]
!289 = metadata !{i32 786443, metadata !1, metadata !166, i32 796, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!290 = metadata !{i32 786688, metadata !289, metadata !"dir", metadata !5, i32 798, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 798]
!291 = metadata !{i32 786688, metadata !292, metadata !"full", metadata !5, i32 811, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full] [line 811]
!292 = metadata !{i32 786443, metadata !1, metadata !289, i32 810, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!293 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileRewind", metadata !"MSAFileRewind", metadata !"", i32 873, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.msafile_struct*)* @MSAFileRewind, null, null, metadata !296, i32 874} ; [ DW_TAG_subprogram ] [line 873] [def] [scope 874] [MSAFileRewind]
!294 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{metadata !22, metadata !169}
!296 = metadata !{metadata !297}
!297 = metadata !{i32 786689, metadata !293, metadata !"afp", metadata !5, i32 16778089, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 873]
!298 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFilePositionByKey", metadata !"MSAFilePositionByKey", metadata !"", i32 880, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.msafile_struct*, i8*)* @MSAFilePositionByKey, null, null, metadata !301, i32 881} ; [ DW_TAG_subprogram ] [line 880] [def] [scope 881] [MSAFilePositionByKey]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{metadata !22, metadata !169, metadata !15}
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305}
!302 = metadata !{i32 786689, metadata !298, metadata !"afp", metadata !5, i32 16778096, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 880]
!303 = metadata !{i32 786689, metadata !298, metadata !"key", metadata !5, i32 33555312, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 880]
!304 = metadata !{i32 786688, metadata !298, metadata !"fh", metadata !5, i32 882, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fh] [line 882]
!305 = metadata !{i32 786688, metadata !298, metadata !"offset", metadata !5, i32 883, metadata !254, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 883]
!306 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFilePositionByIndex", metadata !"MSAFilePositionByIndex", metadata !"", i32 891, metadata !307, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.msafile_struct*, i32)* @MSAFilePositionByIndex, null, null, metadata !309, i32 892} ; [ DW_TAG_subprogram ] [line 891] [def] [scope 892] [MSAFilePositionByIndex]
!307 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!308 = metadata !{metadata !22, metadata !169, metadata !22}
!309 = metadata !{metadata !310, metadata !311, metadata !312, metadata !313}
!310 = metadata !{i32 786689, metadata !306, metadata !"afp", metadata !5, i32 16778107, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 891]
!311 = metadata !{i32 786689, metadata !306, metadata !"idx", metadata !5, i32 33555323, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 891]
!312 = metadata !{i32 786688, metadata !306, metadata !"fh", metadata !5, i32 893, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fh] [line 893]
!313 = metadata !{i32 786688, metadata !306, metadata !"offset", metadata !5, i32 894, metadata !254, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 894]
!314 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileRead", metadata !"MSAFileRead", metadata !"", i32 914, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (%struct.msafile_struct*)* @MSAFileRead, null, null, metadata !317, i32 915} ; [ DW_TAG_subprogram ] [line 914] [def] [scope 915] [MSAFileRead]
!315 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!316 = metadata !{metadata !8, metadata !169}
!317 = metadata !{metadata !318, metadata !319}
!318 = metadata !{i32 786689, metadata !314, metadata !"afp", metadata !5, i32 16778130, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 914]
!319 = metadata !{i32 786688, metadata !314, metadata !"msa", metadata !5, i32 916, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 916]
!320 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileClose", metadata !"MSAFileClose", metadata !"", i32 941, metadata !321, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msafile_struct*)* @MSAFileClose, null, null, metadata !323, i32 942} ; [ DW_TAG_subprogram ] [line 941] [def] [scope 942] [MSAFileClose]
!321 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{null, metadata !169}
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786689, metadata !320, metadata !"afp", metadata !5, i32 16778157, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 941]
!325 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileGetLine", metadata !"MSAFileGetLine", metadata !"", i32 955, metadata !326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.msafile_struct*)* @MSAFileGetLine, null, null, metadata !328, i32 956} ; [ DW_TAG_subprogram ] [line 955] [def] [scope 956] [MSAFileGetLine]
!326 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!327 = metadata !{metadata !15, metadata !169}
!328 = metadata !{metadata !329, metadata !330}
!329 = metadata !{i32 786689, metadata !325, metadata !"afp", metadata !5, i32 16778171, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 955]
!330 = metadata !{i32 786688, metadata !325, metadata !"s", metadata !5, i32 957, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 957]
!331 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileWrite", metadata !"MSAFileWrite", metadata !"", i32 965, metadata !332, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*, i32, i32)* @MSAFileWrite, null, null, metadata !334, i32 966} ; [ DW_TAG_subprogram ] [line 965] [def] [scope 966] [MSAFileWrite]
!332 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = metadata !{null, metadata !174, metadata !8, metadata !22, metadata !22}
!334 = metadata !{metadata !335, metadata !336, metadata !337, metadata !338}
!335 = metadata !{i32 786689, metadata !331, metadata !"fp", metadata !5, i32 16778181, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 965]
!336 = metadata !{i32 786689, metadata !331, metadata !"msa", metadata !5, i32 33555397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 965]
!337 = metadata !{i32 786689, metadata !331, metadata !"outfmt", metadata !5, i32 50332613, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outfmt] [line 965]
!338 = metadata !{i32 786689, metadata !331, metadata !"do_oneline", metadata !5, i32 67109829, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_oneline] [line 965]
!339 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAGetSeqidx", metadata !"MSAGetSeqidx", metadata !"", i32 1001, metadata !340, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.msa_struct*, i8*, i32)* @MSAGetSeqidx, null, null, metadata !342, i32 1002} ; [ DW_TAG_subprogram ] [line 1001] [def] [scope 1002] [MSAGetSeqidx]
!340 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!341 = metadata !{metadata !22, metadata !8, metadata !15, metadata !22}
!342 = metadata !{metadata !343, metadata !344, metadata !345, metadata !346}
!343 = metadata !{i32 786689, metadata !339, metadata !"msa", metadata !5, i32 16778217, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1001]
!344 = metadata !{i32 786689, metadata !339, metadata !"name", metadata !5, i32 33555433, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1001]
!345 = metadata !{i32 786689, metadata !339, metadata !"guess", metadata !5, i32 50332649, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [guess] [line 1001]
!346 = metadata !{i32 786688, metadata !339, metadata !"seqidx", metadata !5, i32 1003, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqidx] [line 1003]
!347 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFromAINFO", metadata !"MSAFromAINFO", metadata !"", i32 1033, metadata !348, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (i8**, %struct.aliinfo_s*)* @MSAFromAINFO, null, null, metadata !393, i32 1034} ; [ DW_TAG_subprogram ] [line 1033] [def] [scope 1034] [MSAFromAINFO]
!348 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!349 = metadata !{metadata !8, metadata !14, metadata !350}
!350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !351} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from AINFO]
!351 = metadata !{i32 786454, metadata !1, null, metadata !"AINFO", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_typedef ] [AINFO] [line 83, size 0, align 0, offset 0] [from aliinfo_s]
!352 = metadata !{i32 786451, metadata !11, null, metadata !"aliinfo_s", i32 65, i64 832, i64 64, i32 0, i32 0, null, metadata !353, i32 0, null, null} ; [ DW_TAG_structure_type ] [aliinfo_s] [line 65, size 832, align 64, offset 0] [from ]
!353 = metadata !{metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392}
!354 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"flags", i32 66, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 66, size 32, align 32, offset 0] [from int]
!355 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"alen", i32 67, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [alen] [line 67, size 32, align 32, offset 32] [from int]
!356 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"nseq", i32 68, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [nseq] [line 68, size 32, align 32, offset 64] [from int]
!357 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"wgt", i32 69, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [wgt] [line 69, size 64, align 64, offset 128] [from ]
!358 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"cs", i32 70, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [cs] [line 70, size 64, align 64, offset 192] [from ]
!359 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"rf", i32 71, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [rf] [line 71, size 64, align 64, offset 256] [from ]
!360 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"sqinfo", i32 72, i64 64, i64 64, i64 320, i32 0, metadata !361} ; [ DW_TAG_member ] [sqinfo] [line 72, size 64, align 64, offset 320] [from ]
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !362} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seqinfo_s]
!362 = metadata !{i32 786451, metadata !363, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!363 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!364 = metadata !{metadata !365, metadata !366, metadata !370, metadata !371, metadata !372, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382}
!365 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!366 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !367} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!367 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !16, metadata !368, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!368 = metadata !{metadata !369}
!369 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!370 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !367} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!371 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !367} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!372 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !373} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!373 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !16, metadata !374, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!374 = metadata !{metadata !375}
!375 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!376 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !22} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!377 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !22} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!378 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !22} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!379 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !22} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!380 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!381 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !15} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!382 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !15} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!383 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"name", i32 75, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [name] [line 75, size 64, align 64, offset 384] [from ]
!384 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"desc", i32 76, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [desc] [line 76, size 64, align 64, offset 448] [from ]
!385 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"acc", i32 77, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [acc] [line 77, size 64, align 64, offset 512] [from ]
!386 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"au", i32 78, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [au] [line 78, size 64, align 64, offset 576] [from ]
!387 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"tc1", i32 79, i64 32, i64 32, i64 640, i32 0, metadata !20} ; [ DW_TAG_member ] [tc1] [line 79, size 32, align 32, offset 640] [from float]
!388 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"tc2", i32 79, i64 32, i64 32, i64 672, i32 0, metadata !20} ; [ DW_TAG_member ] [tc2] [line 79, size 32, align 32, offset 672] [from float]
!389 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"nc1", i32 80, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [nc1] [line 80, size 32, align 32, offset 704] [from float]
!390 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"nc2", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !20} ; [ DW_TAG_member ] [nc2] [line 80, size 32, align 32, offset 736] [from float]
!391 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"ga1", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [ga1] [line 81, size 32, align 32, offset 768] [from float]
!392 = metadata !{i32 786445, metadata !11, metadata !352, metadata !"ga2", i32 81, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [ga2] [line 81, size 32, align 32, offset 800] [from float]
!393 = metadata !{metadata !394, metadata !395, metadata !396, metadata !397, metadata !398}
!394 = metadata !{i32 786689, metadata !347, metadata !"aseq", metadata !5, i32 16778249, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 1033]
!395 = metadata !{i32 786689, metadata !347, metadata !"ainfo", metadata !5, i32 33555465, metadata !350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 1033]
!396 = metadata !{i32 786688, metadata !347, metadata !"msa", metadata !5, i32 1035, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 1035]
!397 = metadata !{i32 786688, metadata !347, metadata !"i", metadata !5, i32 1036, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1036]
!398 = metadata !{i32 786688, metadata !347, metadata !"j", metadata !5, i32 1036, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1036]
!399 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAFileFormat", metadata !"MSAFileFormat", metadata !"", i32 1122, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.msafile_struct*)* @MSAFileFormat, null, null, metadata !400, i32 1123} ; [ DW_TAG_subprogram ] [line 1122] [def] [scope 1123] [MSAFileFormat]
!400 = metadata !{metadata !401, metadata !402}
!401 = metadata !{i32 786689, metadata !399, metadata !"afp", metadata !5, i32 16778338, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 1122]
!402 = metadata !{i32 786688, metadata !399, metadata !"fmt", metadata !5, i32 1124, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 1124]
!403 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAMingap", metadata !"MSAMingap", metadata !"", i32 1151, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*)* @MSAMingap, null, null, metadata !404, i32 1152} ; [ DW_TAG_subprogram ] [line 1151] [def] [scope 1152] [MSAMingap]
!404 = metadata !{metadata !405, metadata !406, metadata !407, metadata !408}
!405 = metadata !{i32 786689, metadata !403, metadata !"msa", metadata !5, i32 16778367, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1151]
!406 = metadata !{i32 786688, metadata !403, metadata !"useme", metadata !5, i32 1153, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [useme] [line 1153]
!407 = metadata !{i32 786688, metadata !403, metadata !"apos", metadata !5, i32 1154, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 1154]
!408 = metadata !{i32 786688, metadata !403, metadata !"idx", metadata !5, i32 1155, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1155]
!409 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSANogap", metadata !"MSANogap", metadata !"", i32 1183, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*)* @MSANogap, null, null, metadata !410, i32 1184} ; [ DW_TAG_subprogram ] [line 1183] [def] [scope 1184] [MSANogap]
!410 = metadata !{metadata !411, metadata !412, metadata !413, metadata !414}
!411 = metadata !{i32 786689, metadata !409, metadata !"msa", metadata !5, i32 16778399, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1183]
!412 = metadata !{i32 786688, metadata !409, metadata !"useme", metadata !5, i32 1185, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [useme] [line 1185]
!413 = metadata !{i32 786688, metadata !409, metadata !"apos", metadata !5, i32 1186, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 1186]
!414 = metadata !{i32 786688, metadata !409, metadata !"idx", metadata !5, i32 1187, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1187]
!415 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAShorterAlignment", metadata !"MSAShorterAlignment", metadata !"", i32 1219, metadata !416, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i32*)* @MSAShorterAlignment, null, null, metadata !418, i32 1220} ; [ DW_TAG_subprogram ] [line 1219] [def] [scope 1220] [MSAShorterAlignment]
!416 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !417, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!417 = metadata !{null, metadata !8, metadata !83}
!418 = metadata !{metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424}
!419 = metadata !{i32 786689, metadata !415, metadata !"msa", metadata !5, i32 16778435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1219]
!420 = metadata !{i32 786689, metadata !415, metadata !"useme", metadata !5, i32 33555651, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [useme] [line 1219]
!421 = metadata !{i32 786688, metadata !415, metadata !"apos", metadata !5, i32 1221, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 1221]
!422 = metadata !{i32 786688, metadata !415, metadata !"mpos", metadata !5, i32 1222, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpos] [line 1222]
!423 = metadata !{i32 786688, metadata !415, metadata !"idx", metadata !5, i32 1223, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1223]
!424 = metadata !{i32 786688, metadata !415, metadata !"i", metadata !5, i32 1224, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1224]
!425 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSASmallerAlignment", metadata !"MSASmallerAlignment", metadata !"", i32 1306, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i32*, %struct.msa_struct**)* @MSASmallerAlignment, null, null, metadata !429, i32 1307} ; [ DW_TAG_subprogram ] [line 1306] [def] [scope 1307] [MSASmallerAlignment]
!426 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!427 = metadata !{null, metadata !8, metadata !83, metadata !428}
!428 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437}
!430 = metadata !{i32 786689, metadata !425, metadata !"msa", metadata !5, i32 16778522, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1306]
!431 = metadata !{i32 786689, metadata !425, metadata !"useme", metadata !5, i32 33555738, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [useme] [line 1306]
!432 = metadata !{i32 786689, metadata !425, metadata !"ret_new", metadata !5, i32 50332954, metadata !428, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_new] [line 1306]
!433 = metadata !{i32 786688, metadata !425, metadata !"new", metadata !5, i32 1308, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 1308]
!434 = metadata !{i32 786688, metadata !425, metadata !"nnew", metadata !5, i32 1309, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnew] [line 1309]
!435 = metadata !{i32 786688, metadata !425, metadata !"oidx", metadata !5, i32 1310, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oidx] [line 1310]
!436 = metadata !{i32 786688, metadata !425, metadata !"nidx", metadata !5, i32 1310, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nidx] [line 1310]
!437 = metadata !{i32 786688, metadata !425, metadata !"i", metadata !5, i32 1311, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1311]
!438 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAGetSeqAccession", metadata !"MSAGetSeqAccession", metadata !"", i32 1378, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.msa_struct*, i32)* @MSAGetSeqAccession, null, null, metadata !441, i32 1379} ; [ DW_TAG_subprogram ] [line 1378] [def] [scope 1379] [MSAGetSeqAccession]
!439 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!440 = metadata !{metadata !15, metadata !8, metadata !22}
!441 = metadata !{metadata !442, metadata !443}
!442 = metadata !{i32 786689, metadata !438, metadata !"msa", metadata !5, i32 16778594, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1378]
!443 = metadata !{i32 786689, metadata !438, metadata !"idx", metadata !5, i32 33555810, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 1378]
!444 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAGetSeqDescription", metadata !"MSAGetSeqDescription", metadata !"", i32 1386, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.msa_struct*, i32)* @MSAGetSeqDescription, null, null, metadata !445, i32 1387} ; [ DW_TAG_subprogram ] [line 1386] [def] [scope 1387] [MSAGetSeqDescription]
!445 = metadata !{metadata !446, metadata !447}
!446 = metadata !{i32 786689, metadata !444, metadata !"msa", metadata !5, i32 16778602, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1386]
!447 = metadata !{i32 786689, metadata !444, metadata !"idx", metadata !5, i32 33555818, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 1386]
!448 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAGetSeqSS", metadata !"MSAGetSeqSS", metadata !"", i32 1394, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.msa_struct*, i32)* @MSAGetSeqSS, null, null, metadata !449, i32 1395} ; [ DW_TAG_subprogram ] [line 1394] [def] [scope 1395] [MSAGetSeqSS]
!449 = metadata !{metadata !450, metadata !451}
!450 = metadata !{i32 786689, metadata !448, metadata !"msa", metadata !5, i32 16778610, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1394]
!451 = metadata !{i32 786689, metadata !448, metadata !"idx", metadata !5, i32 33555826, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 1394]
!452 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAGetSeqSA", metadata !"MSAGetSeqSA", metadata !"", i32 1402, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.msa_struct*, i32)* @MSAGetSeqSA, null, null, metadata !453, i32 1403} ; [ DW_TAG_subprogram ] [line 1402] [def] [scope 1403] [MSAGetSeqSA]
!453 = metadata !{metadata !454, metadata !455}
!454 = metadata !{i32 786689, metadata !452, metadata !"msa", metadata !5, i32 16778618, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1402]
!455 = metadata !{i32 786689, metadata !452, metadata !"idx", metadata !5, i32 33555834, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 1402]
!456 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSAAverageSequenceLength", metadata !"MSAAverageSequenceLength", metadata !"", i32 1428, metadata !457, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.msa_struct*)* @MSAAverageSequenceLength, null, null, metadata !459, i32 1429} ; [ DW_TAG_subprogram ] [line 1428] [def] [scope 1429] [MSAAverageSequenceLength]
!457 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!458 = metadata !{metadata !20, metadata !8}
!459 = metadata !{metadata !460, metadata !461, metadata !462}
!460 = metadata !{i32 786689, metadata !456, metadata !"msa", metadata !5, i32 16778644, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1428]
!461 = metadata !{i32 786688, metadata !456, metadata !"i", metadata !5, i32 1430, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1430]
!462 = metadata !{i32 786688, metadata !456, metadata !"avg", metadata !5, i32 1431, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avg] [line 1431]
!463 = metadata !{i32 63, i32 0, metadata !4, null}
!464 = metadata !{i32 68, i32 0, metadata !4, null}
!465 = metadata !{i32 69, i32 0, metadata !4, null}
!466 = metadata !{metadata !"any pointer", metadata !467}
!467 = metadata !{metadata !"omnipotent char", metadata !468}
!468 = metadata !{metadata !"Simple C/C++ TBAA"}
!469 = metadata !{i32 70, i32 0, metadata !4, null}
!470 = metadata !{i32 71, i32 0, metadata !4, null}
!471 = metadata !{i32 72, i32 0, metadata !4, null}
!472 = metadata !{i32 74, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!474 = metadata !{i32 80, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !473, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!476 = metadata !{i32 76, i32 0, metadata !475, null}
!477 = metadata !{i32 77, i32 0, metadata !475, null}
!478 = metadata !{metadata !"int", metadata !467}
!479 = metadata !{i32 78, i32 0, metadata !475, null}
!480 = metadata !{metadata !"float", metadata !467}
!481 = metadata !{i32 81, i32 0, metadata !475, null}
!482 = metadata !{i32 84, i32 0, metadata !4, null}
!483 = metadata !{i32 85, i32 0, metadata !4, null}
!484 = metadata !{i32 86, i32 0, metadata !4, null}
!485 = metadata !{i32 87, i32 0, metadata !4, null}
!486 = metadata !{i32 89, i32 0, metadata !4, null}
!487 = metadata !{i32 101, i32 0, metadata !4, null}
!488 = metadata !{i32 90, i32 0, metadata !4, null}
!489 = metadata !{i32 104, i32 0, metadata !4, null}
!490 = metadata !{i32 105, i32 0, metadata !4, null}
!491 = metadata !{i32 107, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!493 = metadata !{i32 108, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !492, i32 107, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!495 = metadata !{i32 109, i32 0, metadata !494, null}
!496 = metadata !{i32 114, i32 0, metadata !4, null}
!497 = metadata !{i32 122, i32 0, metadata !4, null}
!498 = metadata !{i32 127, i32 0, metadata !4, null}
!499 = metadata !{i32 132, i32 0, metadata !4, null}
!500 = metadata !{i32 115, i32 0, metadata !4, null}
!501 = metadata !{i32 139, i32 0, metadata !4, null}
!502 = metadata !{i32 156, i32 0, metadata !92, null}
!503 = metadata !{i32 160, i32 0, metadata !92, null}
!504 = metadata !{i32 162, i32 0, metadata !92, null}
!505 = metadata !{i32 163, i32 0, metadata !92, null}
!506 = metadata !{i32 164, i32 0, metadata !92, null}
!507 = metadata !{i32 165, i32 0, metadata !92, null}
!508 = metadata !{i32 167, i32 0, metadata !92, null}
!509 = metadata !{i32 168, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !92, i32 167, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!511 = metadata !{i32 169, i32 0, metadata !510, null}
!512 = metadata !{i32 170, i32 0, metadata !510, null}
!513 = metadata !{i32 171, i32 0, metadata !92, null}
!514 = metadata !{i32 172, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !92, i32 171, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!516 = metadata !{i32 173, i32 0, metadata !515, null}
!517 = metadata !{i32 174, i32 0, metadata !515, null}
!518 = metadata !{i32 175, i32 0, metadata !92, null}
!519 = metadata !{i32 176, i32 0, metadata !92, null}
!520 = metadata !{i32 177, i32 0, metadata !92, null}
!521 = metadata !{i32 178, i32 0, metadata !92, null}
!522 = metadata !{i32 180, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !92, i32 180, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!524 = metadata !{i32 188, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !523, i32 181, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!526 = metadata !{i32 204, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !525, i32 199, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!528 = metadata !{i32 197, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !525, i32 193, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!530 = metadata !{i32 182, i32 0, metadata !525, null}
!531 = metadata !{i32 183, i32 0, metadata !525, null}
!532 = metadata !{i32 185, i32 0, metadata !525, null}
!533 = metadata !{i32 186, i32 0, metadata !525, null}
!534 = metadata !{i32 189, i32 0, metadata !525, null}
!535 = metadata !{i32 190, i32 0, metadata !525, null}
!536 = metadata !{i32 191, i32 0, metadata !525, null}
!537 = metadata !{i32 193, i32 0, metadata !525, null}
!538 = metadata !{i32 194, i32 0, metadata !529, null}
!539 = metadata !{i32 195, i32 0, metadata !529, null}
!540 = metadata !{i32 196, i32 0, metadata !529, null}
!541 = metadata !{i32 198, i32 0, metadata !529, null}
!542 = metadata !{i32 199, i32 0, metadata !525, null}
!543 = metadata !{i32 200, i32 0, metadata !527, null}
!544 = metadata !{i32 201, i32 0, metadata !527, null}
!545 = metadata !{i32 203, i32 0, metadata !527, null}
!546 = metadata !{i32 205, i32 0, metadata !527, null}
!547 = metadata !{i32 212, i32 0, metadata !92, null}
!548 = metadata !{i32 213, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !92, i32 213, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!550 = metadata !{i32 215, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !549, i32 214, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!552 = metadata !{i32 217, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !551, i32 216, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!554 = metadata !{i32 218, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !553, i32 218, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!556 = metadata !{i32 219, i32 0, metadata !555, null}
!557 = metadata !{i32 227, i32 0, metadata !92, null}
!558 = metadata !{i32 228, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !92, i32 228, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!560 = metadata !{i32 230, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !559, i32 229, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!562 = metadata !{i32 232, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !561, i32 231, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!564 = metadata !{i32 233, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !563, i32 233, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!566 = metadata !{i32 234, i32 0, metadata !565, null}
!567 = metadata !{i32 238, i32 0, metadata !92, null}
!568 = metadata !{i32 251, i32 0, metadata !99, null}
!569 = metadata !{i32 253, i32 0, metadata !99, null}
!570 = metadata !{i32 254, i32 0, metadata !99, null}
!571 = metadata !{i32 255, i32 0, metadata !99, null}
!572 = metadata !{i32 256, i32 0, metadata !99, null}
!573 = metadata !{i32 257, i32 0, metadata !99, null}
!574 = metadata !{i32 258, i32 0, metadata !99, null}
!575 = metadata !{i32 260, i32 0, metadata !99, null}
!576 = metadata !{i32 261, i32 0, metadata !99, null}
!577 = metadata !{i32 263, i32 0, metadata !99, null}
!578 = metadata !{i32 264, i32 0, metadata !99, null}
!579 = metadata !{i32 265, i32 0, metadata !99, null}
!580 = metadata !{i32 266, i32 0, metadata !99, null}
!581 = metadata !{i32 267, i32 0, metadata !99, null}
!582 = metadata !{i32 268, i32 0, metadata !99, null}
!583 = metadata !{i32 269, i32 0, metadata !99, null}
!584 = metadata !{i32 270, i32 0, metadata !99, null}
!585 = metadata !{i32 271, i32 0, metadata !99, null}
!586 = metadata !{i32 273, i32 0, metadata !99, null}
!587 = metadata !{i32 274, i32 0, metadata !99, null}
!588 = metadata !{i32 275, i32 0, metadata !99, null}
!589 = metadata !{i32 276, i32 0, metadata !99, null}
!590 = metadata !{i32 277, i32 0, metadata !99, null}
!591 = metadata !{i32 278, i32 0, metadata !99, null}
!592 = metadata !{i32 279, i32 0, metadata !99, null}
!593 = metadata !{i32 280, i32 0, metadata !99, null}
!594 = metadata !{i32 281, i32 0, metadata !99, null}
!595 = metadata !{i32 283, i32 0, metadata !99, null}
!596 = metadata !{i32 284, i32 0, metadata !99, null}
!597 = metadata !{i32 285, i32 0, metadata !99, null}
!598 = metadata !{i32 286, i32 0, metadata !99, null}
!599 = metadata !{i32 288, i32 0, metadata !99, null}
!600 = metadata !{i32 289, i32 0, metadata !99, null}
!601 = metadata !{i32 305, i32 0, metadata !102, null}
!602 = metadata !{i32 309, i32 0, metadata !102, null}
!603 = metadata !{i32 310, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !102, i32 309, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!605 = metadata !{i32 311, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !604, i32 311, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!607 = metadata !{i32 312, i32 0, metadata !606, null}
!608 = metadata !{i32 314, i32 0, metadata !102, null}
!609 = metadata !{i32 315, i32 0, metadata !102, null}
!610 = metadata !{i32 330, i32 0, metadata !110, null}
!611 = metadata !{i32 334, i32 0, metadata !110, null}
!612 = metadata !{i32 335, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !110, i32 334, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!614 = metadata !{i32 336, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !1, metadata !613, i32 336, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!616 = metadata !{i32 337, i32 0, metadata !615, null}
!617 = metadata !{i32 339, i32 0, metadata !110, null}
!618 = metadata !{i32 340, i32 0, metadata !110, null}
!619 = metadata !{i32 355, i32 0, metadata !116, null}
!620 = metadata !{i32 361, i32 0, metadata !116, null}
!621 = metadata !{i32 365, i32 0, metadata !116, null}
!622 = metadata !{i32 362, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !116, i32 361, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!624 = metadata !{i32 363, i32 0, metadata !623, null}
!625 = metadata !{i32 364, i32 0, metadata !623, null}
!626 = metadata !{i32 366, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !116, i32 365, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!628 = metadata !{i32 367, i32 0, metadata !627, null}
!629 = metadata !{i32 368, i32 0, metadata !627, null}
!630 = metadata !{i32 370, i32 0, metadata !116, null}
!631 = metadata !{i32 371, i32 0, metadata !116, null}
!632 = metadata !{i32 372, i32 0, metadata !116, null}
!633 = metadata !{i32 388, i32 0, metadata !122, null}
!634 = metadata !{i32 394, i32 0, metadata !122, null}
!635 = metadata !{i32 399, i32 0, metadata !122, null}
!636 = metadata !{i32 395, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !122, i32 394, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!638 = metadata !{i32 396, i32 0, metadata !637, null}
!639 = metadata !{i32 397, i32 0, metadata !637, null}
!640 = metadata !{i32 398, i32 0, metadata !637, null}
!641 = metadata !{i32 406, i32 0, metadata !122, null}
!642 = metadata !{i32 400, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !122, i32 399, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!644 = metadata !{i32 401, i32 0, metadata !643, null}
!645 = metadata !{i32 402, i32 0, metadata !643, null}
!646 = metadata !{i32 403, i32 0, metadata !643, null}
!647 = metadata !{i32 405, i32 0, metadata !122, null}
!648 = metadata !{i32 407, i32 0, metadata !122, null}
!649 = metadata !{i32 409, i32 0, metadata !122, null}
!650 = metadata !{i32 433, i32 0, metadata !129, null}
!651 = metadata !{i32 442, i32 0, metadata !129, null}
!652 = metadata !{i32 444, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !129, i32 443, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!654 = metadata !{i32 445, i32 0, metadata !653, null}
!655 = metadata !{i32 447, i32 0, metadata !653, null}
!656 = metadata !{i32 448, i32 0, metadata !653, null}
!657 = metadata !{i32 449, i32 0, metadata !653, null}
!658 = metadata !{i32 450, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !653, i32 450, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!660 = metadata !{i32 451, i32 0, metadata !659, null}
!661 = metadata !{i32 456, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !129, i32 454, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!663 = metadata !{i32 457, i32 0, metadata !662, null}
!664 = metadata !{i32 458, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !662, i32 457, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!666 = metadata !{i32 463, i32 0, metadata !665, null}
!667 = metadata !{i32 464, i32 0, metadata !665, null}
!668 = metadata !{i32 465, i32 0, metadata !665, null}
!669 = metadata !{i32 466, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !665, i32 466, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!671 = metadata !{i32 467, i32 0, metadata !670, null}
!672 = metadata !{i32 471, i32 0, metadata !129, null}
!673 = metadata !{i32 476, i32 0, metadata !129, null}
!674 = metadata !{i32 472, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !129, i32 471, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!676 = metadata !{i32 473, i32 0, metadata !675, null}
!677 = metadata !{i32 474, i32 0, metadata !675, null}
!678 = metadata !{i32 477, i32 0, metadata !129, null}
!679 = metadata !{i32 481, i32 0, metadata !140, null}
!680 = metadata !{i32 482, i32 0, metadata !140, null}
!681 = metadata !{i32 483, i32 0, metadata !140, null}
!682 = metadata !{i32 484, i32 0, metadata !140, null}
!683 = metadata !{i32 486, i32 0, metadata !129, null}
!684 = metadata !{i32 507, i32 0, metadata !141, null}
!685 = metadata !{i32 515, i32 0, metadata !141, null}
!686 = metadata !{i32 517, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !141, i32 516, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!688 = metadata !{i32 518, i32 0, metadata !687, null}
!689 = metadata !{i32 519, i32 0, metadata !687, null}
!690 = metadata !{i32 520, i32 0, metadata !687, null}
!691 = metadata !{i32 522, i32 0, metadata !687, null}
!692 = metadata !{i32 523, i32 0, metadata !687, null}
!693 = metadata !{i32 526, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !141, i32 525, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!695 = metadata !{i32 527, i32 0, metadata !694, null}
!696 = metadata !{i32 528, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !694, i32 527, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!698 = metadata !{i32 533, i32 0, metadata !697, null}
!699 = metadata !{i32 534, i32 0, metadata !697, null}
!700 = metadata !{i32 535, i32 0, metadata !697, null}
!701 = metadata !{i32 536, i32 0, metadata !697, null}
!702 = metadata !{i32 539, i32 0, metadata !141, null}
!703 = metadata !{i32 543, i32 0, metadata !141, null}
!704 = metadata !{i32 540, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !141, i32 539, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!706 = metadata !{i32 541, i32 0, metadata !705, null}
!707 = metadata !{i32 542, i32 0, metadata !705, null}
!708 = metadata !{i32 544, i32 0, metadata !141, null}
!709 = metadata !{i32 561, i32 0, metadata !147, null}
!710 = metadata !{i32 565, i32 0, metadata !147, null}
!711 = metadata !{i32 566, i32 0, metadata !147, null}
!712 = metadata !{i32 567, i32 0, metadata !147, null}
!713 = metadata !{i32 568, i32 0, metadata !147, null}
!714 = metadata !{i32 590, i32 0, metadata !154, null}
!715 = metadata !{i32 599, i32 0, metadata !154, null}
!716 = metadata !{i32 601, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !154, i32 600, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!718 = metadata !{i32 602, i32 0, metadata !717, null}
!719 = metadata !{i32 603, i32 0, metadata !717, null}
!720 = metadata !{i32 604, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !717, i32 604, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!722 = metadata !{i32 605, i32 0, metadata !721, null}
!723 = metadata !{i32 606, i32 0, metadata !717, null}
!724 = metadata !{i32 607, i32 0, metadata !717, null}
!725 = metadata !{i32 609, i32 0, metadata !717, null}
!726 = metadata !{i32 613, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !154, i32 611, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!728 = metadata !{i32 614, i32 0, metadata !727, null}
!729 = metadata !{i32 615, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !727, i32 614, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!731 = metadata !{i32 620, i32 0, metadata !730, null}
!732 = metadata !{i32 621, i32 0, metadata !730, null}
!733 = metadata !{i32 622, i32 0, metadata !730, null}
!734 = metadata !{i32 623, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !730, i32 623, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!736 = metadata !{i32 624, i32 0, metadata !735, null}
!737 = metadata !{i32 628, i32 0, metadata !154, null}
!738 = metadata !{i32 632, i32 0, metadata !154, null}
!739 = metadata !{i32 629, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !154, i32 628, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!741 = metadata !{i32 630, i32 0, metadata !740, null}
!742 = metadata !{i32 631, i32 0, metadata !740, null}
!743 = metadata !{i32 633, i32 0, metadata !154, null}
!744 = metadata !{i32 662, i32 0, metadata !162, null}
!745 = metadata !{i32 666, i32 0, metadata !162, null}
!746 = metadata !{i32 675, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !162, i32 675, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!748 = metadata !{i32 669, i32 0, metadata !162, null}
!749 = metadata !{i32 678, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !747, i32 676, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!751 = metadata !{i32 679, i32 0, metadata !750, null}
!752 = metadata !{i32 682, i32 0, metadata !750, null}
!753 = metadata !{i32 692, i32 0, metadata !750, null}
!754 = metadata !{i32 697, i32 0, metadata !750, null}
!755 = metadata !{i32 683, i32 0, metadata !750, null}
!756 = metadata !{i32 687, i32 0, metadata !750, null}
!757 = metadata !{i32 688, i32 0, metadata !750, null}
!758 = metadata !{i32 693, i32 0, metadata !750, null}
!759 = metadata !{i32 698, i32 0, metadata !750, null}
!760 = metadata !{i32 704, i32 0, metadata !162, null}
!761 = metadata !{i32 706, i32 0, metadata !162, null}
!762 = metadata !{i32 710, i32 0, metadata !162, null}
!763 = metadata !{i32 712, i32 0, metadata !162, null}
!764 = metadata !{i32 716, i32 0, metadata !162, null}
!765 = metadata !{i32 718, i32 0, metadata !162, null}
!766 = metadata !{i32 722, i32 0, metadata !162, null}
!767 = metadata !{i32 723, i32 0, metadata !162, null}
!768 = metadata !{i32 726, i32 0, metadata !162, null}
!769 = metadata !{i32 726, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !162, i32 726, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!771 = metadata !{i32 727, i32 0, metadata !162, null}
!772 = metadata !{i32 727, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !162, i32 727, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!774 = metadata !{i32 728, i32 0, metadata !162, null}
!775 = metadata !{i32 728, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !162, i32 728, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!777 = metadata !{i32 730, i32 0, metadata !162, null}
!778 = metadata !{i32 756, i32 0, metadata !166, null}
!779 = metadata !{i32 760, i32 0, metadata !166, null}
!780 = metadata !{i32 761, i32 0, metadata !166, null}
!781 = metadata !{i32 763, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !166, i32 762, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!783 = metadata !{i32 764, i32 0, metadata !782, null}
!784 = metadata !{i32 765, i32 0, metadata !782, null}
!785 = metadata !{i32 766, i32 0, metadata !782, null}
!786 = metadata !{i32 767, i32 0, metadata !782, null}
!787 = metadata !{i32 768, i32 0, metadata !782, null}
!788 = metadata !{i32 771, i32 0, metadata !166, null}
!789 = metadata !{i32 773, i32 0, metadata !284, null}
!790 = metadata !{i32 780, i32 0, metadata !284, null}
!791 = metadata !{i32 781, i32 0, metadata !284, null}
!792 = metadata !{i32 782, i32 0, metadata !284, null}
!793 = metadata !{i32 783, i32 0, metadata !284, null}
!794 = metadata !{i32 784, i32 0, metadata !284, null}
!795 = metadata !{i32 785, i32 0, metadata !284, null}
!796 = metadata !{i32 788, i32 0, metadata !284, null}
!797 = metadata !{i32 789, i32 0, metadata !284, null}
!798 = metadata !{i32 790, i32 0, metadata !284, null}
!799 = metadata !{i32 792, i32 0, metadata !284, null}
!800 = metadata !{i32 793, i32 0, metadata !284, null}
!801 = metadata !{i32 798, i32 0, metadata !289, null}
!802 = metadata !{i32 804, i32 0, metadata !289, null}
!803 = metadata !{i32 806, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !289, i32 805, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!805 = metadata !{i32 807, i32 0, metadata !804, null}
!806 = metadata !{i32 808, i32 0, metadata !804, null}
!807 = metadata !{i32 809, i32 0, metadata !289, null}
!808 = metadata !{i32 812, i32 0, metadata !292, null}
!809 = metadata !{i32 813, i32 0, metadata !292, null}
!810 = metadata !{i32 814, i32 0, metadata !292, null}
!811 = metadata !{i32 815, i32 0, metadata !292, null}
!812 = metadata !{i32 819, i32 0, metadata !289, null}
!813 = metadata !{i32 820, i32 0, metadata !289, null}
!814 = metadata !{i32 821, i32 0, metadata !289, null}
!815 = metadata !{i32 822, i32 0, metadata !289, null}
!816 = metadata !{i32 827, i32 0, metadata !289, null}
!817 = metadata !{i32 828, i32 0, metadata !289, null}
!818 = metadata !{i32 834, i32 0, metadata !166, null}
!819 = metadata !{i32 836, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !166, i32 835, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!821 = metadata !{i32 837, i32 0, metadata !820, null}
!822 = metadata !{i32 838, i32 0, metadata !820, null}
!823 = metadata !{i32 839, i32 0, metadata !820, null}
!824 = metadata !{i32 840, i32 0, metadata !820, null}
!825 = metadata !{i32 843, i32 0, metadata !166, null}
!826 = metadata !{i32 844, i32 0, metadata !166, null}
!827 = metadata !{i32 845, i32 0, metadata !166, null}
!828 = metadata !{i32 846, i32 0, metadata !166, null}
!829 = metadata !{i32 848, i32 0, metadata !166, null}
!830 = metadata !{i32 849, i32 0, metadata !166, null}
!831 = metadata !{i32 1122, i32 0, metadata !399, null}
!832 = metadata !{i32 1126, i32 0, metadata !399, null}
!833 = metadata !{i32 1128, i32 0, metadata !399, null}
!834 = metadata !{i32 1130, i32 0, metadata !399, null}
!835 = metadata !{i32 1131, i32 0, metadata !399, null}
!836 = metadata !{i32 1135, i32 0, metadata !399, null}
!837 = metadata !{i32 1136, i32 0, metadata !399, null}
!838 = metadata !{i32 873, i32 0, metadata !293, null}
!839 = metadata !{i32 875, i32 0, metadata !293, null}
!840 = metadata !{i32 876, i32 0, metadata !293, null}
!841 = metadata !{i32 877, i32 0, metadata !293, null}
!842 = metadata !{i32 880, i32 0, metadata !298, null}
!843 = metadata !{i32 882, i32 0, metadata !298, null}
!844 = metadata !{i32 883, i32 0, metadata !298, null}
!845 = metadata !{i32 885, i32 0, metadata !298, null}
!846 = metadata !{i32 886, i32 0, metadata !298, null}
!847 = metadata !{i32 887, i32 0, metadata !298, null}
!848 = metadata !{i32 888, i32 0, metadata !298, null}
!849 = metadata !{i32 891, i32 0, metadata !306, null}
!850 = metadata !{i32 893, i32 0, metadata !306, null}
!851 = metadata !{i32 894, i32 0, metadata !306, null}
!852 = metadata !{i32 896, i32 0, metadata !306, null}
!853 = metadata !{i32 897, i32 0, metadata !306, null}
!854 = metadata !{i32 898, i32 0, metadata !306, null}
!855 = metadata !{i32 899, i32 0, metadata !306, null}
!856 = metadata !{i32 914, i32 0, metadata !314, null}
!857 = metadata !{%struct.msa_struct* null}
!858 = metadata !{i32 916, i32 0, metadata !314, null}
!859 = metadata !{i32 918, i32 0, metadata !314, null}
!860 = metadata !{i32 919, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !314, i32 918, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!862 = metadata !{i32 920, i32 0, metadata !861, null}
!863 = metadata !{i32 921, i32 0, metadata !861, null}
!864 = metadata !{i32 922, i32 0, metadata !861, null}
!865 = metadata !{i32 923, i32 0, metadata !861, null}
!866 = metadata !{i32 924, i32 0, metadata !861, null}
!867 = metadata !{i32 926, i32 0, metadata !861, null}
!868 = metadata !{i32 927, i32 0, metadata !861, null}
!869 = metadata !{i32 928, i32 0, metadata !314, null}
!870 = metadata !{i32 941, i32 0, metadata !320, null}
!871 = metadata !{i32 945, i32 0, metadata !320, null}
!872 = metadata !{i32 947, i32 0, metadata !320, null}
!873 = metadata !{i32 948, i32 0, metadata !320, null}
!874 = metadata !{i32 949, i32 0, metadata !320, null}
!875 = metadata !{i32 950, i32 0, metadata !320, null}
!876 = metadata !{i32 951, i32 0, metadata !320, null}
!877 = metadata !{i32 952, i32 0, metadata !320, null}
!878 = metadata !{i32 955, i32 0, metadata !325, null}
!879 = metadata !{i32 958, i32 0, metadata !325, null}
!880 = metadata !{i32 960, i32 0, metadata !325, null}
!881 = metadata !{i32 961, i32 0, metadata !325, null}
!882 = metadata !{i32 962, i32 0, metadata !325, null}
!883 = metadata !{i32 965, i32 0, metadata !331, null}
!884 = metadata !{i32 967, i32 0, metadata !331, null}
!885 = metadata !{i32 968, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !331, i32 967, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!887 = metadata !{i32 969, i32 0, metadata !886, null}
!888 = metadata !{i32 970, i32 0, metadata !886, null}
!889 = metadata !{i32 971, i32 0, metadata !886, null}
!890 = metadata !{i32 972, i32 0, metadata !886, null}
!891 = metadata !{i32 974, i32 0, metadata !886, null}
!892 = metadata !{i32 975, i32 0, metadata !886, null}
!893 = metadata !{i32 978, i32 0, metadata !886, null}
!894 = metadata !{i32 979, i32 0, metadata !886, null}
!895 = metadata !{i32 980, i32 0, metadata !331, null}
!896 = metadata !{i32 1001, i32 0, metadata !339, null}
!897 = metadata !{i32 1005, i32 0, metadata !339, null}
!898 = metadata !{i32 1008, i32 0, metadata !339, null}
!899 = metadata !{i32 1011, i32 0, metadata !339, null}
!900 = metadata !{i32 1012, i32 0, metadata !339, null}
!901 = metadata !{i32 1014, i32 0, metadata !339, null}
!902 = metadata !{i32 1015, i32 0, metadata !339, null}
!903 = metadata !{i32 1016, i32 0, metadata !339, null}
!904 = metadata !{i32 1017, i32 0, metadata !339, null}
!905 = metadata !{i32 1033, i32 0, metadata !347, null}
!906 = metadata !{i32 1038, i32 0, metadata !347, null}
!907 = metadata !{i32 1039, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !347, i32 1039, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!909 = metadata !{i32 1041, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !908, i32 1040, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!911 = metadata !{i32 1042, i32 0, metadata !910, null}
!912 = metadata !{i32 1043, i32 0, metadata !910, null}
!913 = metadata !{i32 1044, i32 0, metadata !910, null}
!914 = metadata !{i32 1045, i32 0, metadata !910, null}
!915 = metadata !{i32 1067, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !910, i32 1066, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!917 = metadata !{i32 1068, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !916, i32 1067, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!919 = metadata !{i32 1069, i32 0, metadata !918, null}
!920 = metadata !{i32 1054, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !910, i32 1053, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!922 = metadata !{i32 1056, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !921, i32 1054, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!924 = metadata !{i32 1047, i32 0, metadata !910, null}
!925 = metadata !{i32 1048, i32 0, metadata !910, null}
!926 = metadata !{i32 1050, i32 0, metadata !910, null}
!927 = metadata !{i32 1051, i32 0, metadata !910, null}
!928 = metadata !{i32 1053, i32 0, metadata !910, null}
!929 = metadata !{i32 1055, i32 0, metadata !923, null}
!930 = metadata !{i32 1057, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !923, i32 1057, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!932 = metadata !{i32 1058, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !931, i32 1057, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!934 = metadata !{i32 1059, i32 0, metadata !933, null}
!935 = metadata !{i32 1062, i32 0, metadata !921, null}
!936 = metadata !{i32 1063, i32 0, metadata !921, null}
!937 = metadata !{i32 1066, i32 0, metadata !910, null}
!938 = metadata !{i32 1064, i32 0, metadata !921, null}
!939 = metadata !{i32 1070, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !918, i32 1070, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!941 = metadata !{i32 1071, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !940, i32 1070, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!943 = metadata !{i32 1072, i32 0, metadata !942, null}
!944 = metadata !{i32 1075, i32 0, metadata !916, null}
!945 = metadata !{i32 1076, i32 0, metadata !916, null}
!946 = metadata !{i32 1077, i32 0, metadata !916, null}
!947 = metadata !{i32 1080, i32 0, metadata !347, null}
!948 = metadata !{i32 1081, i32 0, metadata !347, null}
!949 = metadata !{i32 1082, i32 0, metadata !347, null}
!950 = metadata !{i32 1083, i32 0, metadata !347, null}
!951 = metadata !{i32 1084, i32 0, metadata !347, null}
!952 = metadata !{i32 1085, i32 0, metadata !347, null}
!953 = metadata !{i32 1086, i32 0, metadata !347, null}
!954 = metadata !{i32 1087, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !1, metadata !347, i32 1086, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!956 = metadata !{i32 1088, i32 0, metadata !955, null}
!957 = metadata !{i32 1090, i32 0, metadata !347, null}
!958 = metadata !{i32 1089, i32 0, metadata !955, null}
!959 = metadata !{i32 1091, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !347, i32 1090, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!961 = metadata !{i32 1092, i32 0, metadata !960, null}
!962 = metadata !{i32 1094, i32 0, metadata !347, null}
!963 = metadata !{i32 1093, i32 0, metadata !960, null}
!964 = metadata !{i32 1095, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !347, i32 1094, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!966 = metadata !{i32 1096, i32 0, metadata !965, null}
!967 = metadata !{i32 1097, i32 0, metadata !965, null}
!968 = metadata !{i32 1098, i32 0, metadata !347, null}
!969 = metadata !{i32 1099, i32 0, metadata !347, null}
!970 = metadata !{i32 1100, i32 0, metadata !347, null}
!971 = metadata !{i32 1151, i32 0, metadata !403, null}
!972 = metadata !{i32 1157, i32 0, metadata !403, null}
!973 = metadata !{i32 1158, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !403, i32 1158, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!975 = metadata !{i32 1160, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !977, i32 1160, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!977 = metadata !{i32 786443, metadata !1, metadata !974, i32 1159, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!978 = metadata !{i32 1161, i32 0, metadata !976, null}
!979 = metadata !{i32 1163, i32 0, metadata !977, null}
!980 = metadata !{i32 1165, i32 0, metadata !403, null}
!981 = metadata !{i32 1166, i32 0, metadata !403, null}
!982 = metadata !{i32 1167, i32 0, metadata !403, null}
!983 = metadata !{i32 1219, i32 0, metadata !415, null}
!984 = metadata !{i32 1229, i32 0, metadata !985, null}
!985 = metadata !{i32 786443, metadata !1, metadata !415, i32 1229, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!986 = metadata !{i32 1236, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !988, i32 1236, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!988 = metadata !{i32 786443, metadata !1, metadata !989, i32 1235, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!989 = metadata !{i32 786443, metadata !1, metadata !985, i32 1230, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!990 = metadata !{i32 1246, i32 0, metadata !988, null}
!991 = metadata !{i32 1247, i32 0, metadata !988, null}
!992 = metadata !{i32 1248, i32 0, metadata !988, null}
!993 = metadata !{i32 1250, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !988, i32 1250, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!995 = metadata !{i32 1251, i32 0, metadata !994, null}
!996 = metadata !{i32 1238, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !987, i32 1237, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!998 = metadata !{i32 1239, i32 0, metadata !997, null}
!999 = metadata !{i32 1240, i32 0, metadata !997, null}
!1000 = metadata !{i32 1242, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !997, i32 1242, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1002 = metadata !{i32 1243, i32 0, metadata !1001, null}
!1003 = metadata !{i32 1231, i32 0, metadata !989, null}
!1004 = metadata !{i32 1234, i32 0, metadata !989, null}
!1005 = metadata !{i32 1253, i32 0, metadata !989, null}
!1006 = metadata !{i32 1254, i32 0, metadata !989, null}
!1007 = metadata !{i32 1256, i32 0, metadata !415, null}
!1008 = metadata !{i32 1258, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1, metadata !415, i32 1258, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1010 = metadata !{i32 1260, i32 0, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !1, metadata !1009, i32 1259, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1012 = metadata !{i32 1261, i32 0, metadata !1011, null}
!1013 = metadata !{i32 1262, i32 0, metadata !1011, null}
!1014 = metadata !{i32 1264, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !1011, i32 1264, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1016 = metadata !{i32 1265, i32 0, metadata !1015, null}
!1017 = metadata !{i32 1268, i32 0, metadata !415, null}
!1018 = metadata !{i32 1269, i32 0, metadata !415, null}
!1019 = metadata !{i32 1270, i32 0, metadata !415, null}
!1020 = metadata !{i32 1272, i32 0, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !1, metadata !415, i32 1272, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1022 = metadata !{i32 1273, i32 0, metadata !1021, null}
!1023 = metadata !{i32 1275, i32 0, metadata !415, null}
!1024 = metadata !{i32 1183, i32 0, metadata !409, null}
!1025 = metadata !{i32 1189, i32 0, metadata !409, null}
!1026 = metadata !{i32 1190, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !409, i32 1190, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1028 = metadata !{i32 1192, i32 0, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !1030, i32 1192, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1030 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1191, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1031 = metadata !{i32 1193, i32 0, metadata !1029, null}
!1032 = metadata !{i32 1195, i32 0, metadata !1030, null}
!1033 = metadata !{i32 1197, i32 0, metadata !409, null}
!1034 = metadata !{i32 1198, i32 0, metadata !409, null}
!1035 = metadata !{i32 1199, i32 0, metadata !409, null}
!1036 = metadata !{i32 1306, i32 0, metadata !425, null}
!1037 = metadata !{i32 1313, i32 0, metadata !425, null}
!1038 = metadata !{i32 1314, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !425, i32 1314, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1040 = metadata !{i32 1315, i32 0, metadata !1039, null}
!1041 = metadata !{i32 1316, i32 0, metadata !425, null}
!1042 = metadata !{i32 1318, i32 0, metadata !425, null}
!1043 = metadata !{i32 1319, i32 0, metadata !425, null}
!1044 = metadata !{i32 1320, i32 0, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !1, metadata !425, i32 1320, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1046 = metadata !{i32 1344, i32 0, metadata !425, null}
!1047 = metadata !{i32 1345, i32 0, metadata !425, null}
!1048 = metadata !{i32 1323, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !1045, i32 1322, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1050 = metadata !{i32 1324, i32 0, metadata !1049, null}
!1051 = metadata !{i32 1325, i32 0, metadata !1049, null}
!1052 = metadata !{i32 1326, i32 0, metadata !1049, null}
!1053 = metadata !{i32 1327, i32 0, metadata !1049, null}
!1054 = metadata !{i32 1329, i32 0, metadata !1049, null}
!1055 = metadata !{i32 1331, i32 0, metadata !1049, null}
!1056 = metadata !{i32 1336, i32 0, metadata !1049, null}
!1057 = metadata !{i32 1338, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1337, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1059 = metadata !{i32 1333, i32 0, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1332, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1061 = metadata !{i32 1321, i32 0, metadata !1045, null}
!1062 = metadata !{i32 1328, i32 0, metadata !1049, null}
!1063 = metadata !{i32 1330, i32 0, metadata !1049, null}
!1064 = metadata !{i32 1334, i32 0, metadata !1060, null}
!1065 = metadata !{i32 1335, i32 0, metadata !1060, null}
!1066 = metadata !{i32 1339, i32 0, metadata !1058, null}
!1067 = metadata !{i32 1340, i32 0, metadata !1058, null}
!1068 = metadata !{i32 1341, i32 0, metadata !1049, null}
!1069 = metadata !{i32 1342, i32 0, metadata !1049, null}
!1070 = metadata !{i32 1346, i32 0, metadata !425, null}
!1071 = metadata !{i32 1347, i32 0, metadata !425, null}
!1072 = metadata !{i32 1348, i32 0, metadata !425, null}
!1073 = metadata !{i32 1349, i32 0, metadata !425, null}
!1074 = metadata !{i32 1350, i32 0, metadata !425, null}
!1075 = metadata !{i32 1351, i32 0, metadata !425, null}
!1076 = metadata !{i32 1352, i32 0, metadata !425, null}
!1077 = metadata !{i32 1353, i32 0, metadata !425, null}
!1078 = metadata !{i32 1354, i32 0, metadata !425, null}
!1079 = metadata !{i32 1355, i32 0, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !1, metadata !425, i32 1355, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1081 = metadata !{i32 1356, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1, metadata !1080, i32 1355, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1083 = metadata !{i32 1357, i32 0, metadata !1082, null}
!1084 = metadata !{i32 1359, i32 0, metadata !425, null}
!1085 = metadata !{i32 1361, i32 0, metadata !425, null}
!1086 = metadata !{i32 1363, i32 0, metadata !425, null}
!1087 = metadata !{i32 1316, i32 0, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !1, metadata !425, i32 1316, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1089 = metadata !{i32 1378, i32 0, metadata !438, null}
!1090 = metadata !{i32 1380, i32 0, metadata !438, null}
!1091 = metadata !{i32 1383, i32 0, metadata !438, null}
!1092 = metadata !{i32 1384, i32 0, metadata !438, null}
!1093 = metadata !{i32 1386, i32 0, metadata !444, null}
!1094 = metadata !{i32 1388, i32 0, metadata !444, null}
!1095 = metadata !{i32 1391, i32 0, metadata !444, null}
!1096 = metadata !{i32 1392, i32 0, metadata !444, null}
!1097 = metadata !{i32 1394, i32 0, metadata !448, null}
!1098 = metadata !{i32 1396, i32 0, metadata !448, null}
!1099 = metadata !{i32 1399, i32 0, metadata !448, null}
!1100 = metadata !{i32 1400, i32 0, metadata !448, null}
!1101 = metadata !{i32 1402, i32 0, metadata !452, null}
!1102 = metadata !{i32 1404, i32 0, metadata !452, null}
!1103 = metadata !{i32 1407, i32 0, metadata !452, null}
!1104 = metadata !{i32 1408, i32 0, metadata !452, null}
!1105 = metadata !{i32 1428, i32 0, metadata !456, null}
!1106 = metadata !{float 0.000000e+00}
!1107 = metadata !{i32 1433, i32 0, metadata !456, null}
!1108 = metadata !{i32 1434, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !456, i32 1434, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.c]
!1110 = metadata !{i32 1435, i32 0, metadata !1109, null}
!1111 = metadata !{i32 1437, i32 0, metadata !456, null}
!1112 = metadata !{i32 1438, i32 0, metadata !456, null}
!1113 = metadata !{i32 1439, i32 0, metadata !456, null}
