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
@.str15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"%s.ssi\00", align 1
@.str17 = private unnamed_addr constant [65 x i8] c"Can't autodetect alignment file format from a stdin or gzip pipe\00", align 1
@.str18 = private unnamed_addr constant [53 x i8] c"Can't determine format of multiple alignment file %s\00", align 1
@.str19 = private unnamed_addr constant [36 x i8] c"MSAFILE corrupted: bad format index\00", align 1
@.str20 = private unnamed_addr constant [42 x i8] c"can't write. no such alignment format %d\0A\00", align 1
@.str21 = private unnamed_addr constant [156 x i8] c"File %s does not appear to be an alignment file;\0Arather, it appears to be an unaligned file in %s format.\0AI'm expecting an alignment file in this context.\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @MSAAlloc(i32 %nseq, i32 %alen) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 68, i64 360) #6
  %0 = bitcast i8* %call to %struct.msa_struct*
  %conv = sext i32 %nseq to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 69, i64 %mul) #6
  %1 = bitcast i8* %call1 to i8**
  %aseq = bitcast i8* %call to i8***
  store i8** %1, i8*** %aseq, align 8, !tbaa !0
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 70, i64 %mul) #6
  %2 = bitcast i8* %call4 to i8**
  %sqname = getelementptr inbounds i8* %call, i64 8
  %3 = bitcast i8* %sqname to i8***
  store i8** %2, i8*** %3, align 8, !tbaa !0
  %mul6 = shl nsw i64 %conv, 2
  %call7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 71, i64 %mul6) #6
  %4 = bitcast i8* %call7 to i32*
  %sqlen = getelementptr inbounds i8* %call, i64 328
  %5 = bitcast i8* %sqlen to i32**
  store i32* %4, i32** %5, align 8, !tbaa !0
  %call10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 72, i64 %mul6) #6
  %6 = bitcast i8* %call10 to float*
  %wgt = getelementptr inbounds i8* %call, i64 16
  %7 = bitcast i8* %wgt to float**
  store float* %6, float** %7, align 8, !tbaa !0
  %cmp113 = icmp sgt i32 %nseq, 0
  br i1 %cmp113, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp19 = icmp eq i32 %alen, 0
  %add = add nsw i32 %alen, 1
  %conv21 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv115 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next116, %for.inc ]
  %8 = load i8*** %3, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %8, i64 %indvars.iv115
  store i8* null, i8** %arrayidx, align 8, !tbaa !0
  %9 = load i32** %5, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %9, i64 %indvars.iv115
  store i32 0, i32* %arrayidx15, align 4, !tbaa !3
  %10 = load float** %7, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds float* %10, i64 %indvars.iv115
  store float -1.000000e+00, float* %arrayidx18, align 4, !tbaa !4
  br i1 %cmp19, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call23 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 80, i64 %conv21) #6
  %11 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i8** %11, i64 %indvars.iv115
  store i8* %call23, i8** %arrayidx26, align 8, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %for.body
  %12 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i8** %12, i64 %indvars.iv115
  store i8* null, i8** %arrayidx29, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next116 = add i64 %indvars.iv115, 1
  %lftr.wideiv117 = trunc i64 %indvars.iv.next116 to i32
  %exitcond118 = icmp eq i32 %lftr.wideiv117, %nseq
  br i1 %exitcond118, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %alen30 = getelementptr inbounds i8* %call, i64 24
  %13 = bitcast i8* %alen30 to i32*
  store i32 %alen, i32* %13, align 4, !tbaa !3
  %nseq31 = getelementptr inbounds i8* %call, i64 28
  %14 = bitcast i8* %nseq31 to i32*
  store i32 0, i32* %14, align 4, !tbaa !3
  %nseqalloc = getelementptr inbounds i8* %call, i64 320
  %15 = bitcast i8* %nseqalloc to i32*
  store i32 %nseq, i32* %15, align 4, !tbaa !3
  %nseqlump = getelementptr inbounds i8* %call, i64 324
  %16 = bitcast i8* %nseqlump to i32*
  store i32 %nseq, i32* %16, align 4, !tbaa !3
  %flags = getelementptr inbounds i8* %call, i64 32
  %sslen = getelementptr inbounds i8* %call, i64 336
  call void @llvm.memset.p0i8.i64(i8* %flags, i8 0, i64 96, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %sslen, i8 0, i64 16, i32 8, i1 false)
  %call32 = tail call %struct.GKI* @GKIInit() #6
  %index = getelementptr inbounds i8* %call, i64 312
  %17 = bitcast i8* %index to %struct.GKI**
  store %struct.GKI* %call32, %struct.GKI** %17, align 8, !tbaa !0
  %lastidx = getelementptr inbounds i8* %call, i64 352
  %18 = bitcast i8* %lastidx to i32*
  store i32 0, i32* %18, align 4, !tbaa !3
  %cutoff = getelementptr inbounds i8* %call, i64 128
  %19 = bitcast i8* %cutoff to [6 x float]*
  %cutoff_is_set = getelementptr inbounds i8* %call, i64 152
  %20 = bitcast i8* %cutoff_is_set to [6 x i32]*
  br label %for.body36

for.body36:                                       ; preds = %for.body36, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body36 ]
  %arrayidx38 = getelementptr inbounds [6 x float]* %19, i64 0, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx38, align 4, !tbaa !4
  %arrayidx40 = getelementptr inbounds [6 x i32]* %20, i64 0, i64 %indvars.iv
  store i32 0, i32* %arrayidx40, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %for.end43, label %for.body36

for.end43:                                        ; preds = %for.body36
  %comment = getelementptr inbounds i8* %call, i64 176
  %gs_tag = getelementptr inbounds i8* %call, i64 216
  %gc_tag = getelementptr inbounds i8* %call, i64 248
  %gr_tag = getelementptr inbounds i8* %call, i64 280
  call void @llvm.memset.p0i8.i64(i8* %comment, i8 0, i64 36, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %gs_tag, i8 0, i64 28, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %gc_tag, i8 0, i64 28, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %gr_tag, i8 0, i64 28, i32 8, i1 false)
  ret %struct.msa_struct* %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare %struct.GKI* @GKIInit() #1

; Function Attrs: nounwind optsize uwtable
define void @MSAExpand(%struct.msa_struct* nocapture %msa) #0 {
entry:
  %nseqlump = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 41
  %0 = load i32* %nseqlump, align 4, !tbaa !3
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %1 = load i32* %nseqalloc, align 4, !tbaa !3
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %nseqalloc, align 4, !tbaa !3
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %2 = load i8*** %aseq, align 8, !tbaa !0
  %3 = bitcast i8** %2 to i8*
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 162, i8* %3, i64 %mul) #6
  %4 = bitcast i8* %call to i8**
  store i8** %4, i8*** %aseq, align 8, !tbaa !0
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %5 = load i8*** %sqname, align 8, !tbaa !0
  %6 = bitcast i8** %5 to i8*
  %7 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv4 = sext i32 %7 to i64
  %mul5 = shl nsw i64 %conv4, 3
  %call6 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 163, i8* %6, i64 %mul5) #6
  %8 = bitcast i8* %call6 to i8**
  store i8** %8, i8*** %sqname, align 8, !tbaa !0
  %sqlen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 42
  %9 = load i32** %sqlen, align 8, !tbaa !0
  %10 = bitcast i32* %9 to i8*
  %11 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv9 = sext i32 %11 to i64
  %mul10 = shl nsw i64 %conv9, 3
  %call11 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 164, i8* %10, i64 %mul10) #6
  %12 = bitcast i8* %call11 to i32*
  store i32* %12, i32** %sqlen, align 8, !tbaa !0
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %13 = load float** %wgt, align 8, !tbaa !0
  %14 = bitcast float* %13 to i8*
  %15 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv14 = sext i32 %15 to i64
  %mul15 = shl nsw i64 %conv14, 2
  %call16 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 165, i8* %14, i64 %mul15) #6
  %16 = bitcast i8* %call16 to float*
  store float* %16, float** %wgt, align 8, !tbaa !0
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %17 = load i8*** %ss, align 8, !tbaa !0
  %cmp = icmp eq i8** %17, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %18 = bitcast i8** %17 to i8*
  %19 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv21 = sext i32 %19 to i64
  %mul22 = shl nsw i64 %conv21, 3
  %call23 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 168, i8* %18, i64 %mul22) #6
  %20 = bitcast i8* %call23 to i8**
  store i8** %20, i8*** %ss, align 8, !tbaa !0
  %sslen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43
  %21 = load i32** %sslen, align 8, !tbaa !0
  %22 = bitcast i32* %21 to i8*
  %23 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv26 = sext i32 %23 to i64
  %mul27 = shl nsw i64 %conv26, 2
  %call28 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 169, i8* %22, i64 %mul27) #6
  %24 = bitcast i8* %call28 to i32*
  store i32* %24, i32** %sslen, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %25 = load i8*** %sa, align 8, !tbaa !0
  %cmp30 = icmp eq i8** %25, null
  br i1 %cmp30, label %if.end44, label %if.then32

if.then32:                                        ; preds = %if.end
  %26 = bitcast i8** %25 to i8*
  %27 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv35 = sext i32 %27 to i64
  %mul36 = shl nsw i64 %conv35, 3
  %call37 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 172, i8* %26, i64 %mul36) #6
  %28 = bitcast i8* %call37 to i8**
  store i8** %28, i8*** %sa, align 8, !tbaa !0
  %salen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44
  %29 = load i32** %salen, align 8, !tbaa !0
  %30 = bitcast i32* %29 to i8*
  %31 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv40 = sext i32 %31 to i64
  %mul41 = shl nsw i64 %conv40, 2
  %call42 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 173, i8* %30, i64 %mul41) #6
  %32 = bitcast i8* %call42 to i32*
  store i32* %32, i32** %salen, align 8, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then32
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %33 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp45 = icmp eq i8** %33, null
  br i1 %cmp45, label %if.end54, label %if.then47

if.then47:                                        ; preds = %if.end44
  %34 = bitcast i8** %33 to i8*
  %35 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv50 = sext i32 %35 to i64
  %mul51 = shl nsw i64 %conv50, 3
  %call52 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 176, i8* %34, i64 %mul51) #6
  %36 = bitcast i8* %call52 to i8**
  store i8** %36, i8*** %sqacc, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %if.end44, %if.then47
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %37 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp55 = icmp eq i8** %37, null
  br i1 %cmp55, label %if.end64, label %if.then57

if.then57:                                        ; preds = %if.end54
  %38 = bitcast i8** %37 to i8*
  %39 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv60 = sext i32 %39 to i64
  %mul61 = shl nsw i64 %conv60, 3
  %call62 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 178, i8* %38, i64 %mul61) #6
  %40 = bitcast i8* %call62 to i8**
  store i8** %40, i8*** %sqdesc, align 8, !tbaa !0
  br label %if.end64

if.end64:                                         ; preds = %if.end54, %if.then57
  %41 = load i32* %nseqlump, align 4, !tbaa !3
  %cmp68375 = icmp sgt i32 %41, 0
  br i1 %cmp68375, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end64
  %42 = load i32* %nseqalloc, align 4, !tbaa !3
  %sub = sub nsw i32 %42, %41
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %salen164 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44
  %sslen136 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43
  %43 = sext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv383 = phi i64 [ %43, %for.body.lr.ph ], [ %indvars.iv.next384, %for.inc ]
  %44 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %44, i64 %indvars.iv383
  store i8* null, i8** %arrayidx, align 8, !tbaa !0
  %45 = load float** %wgt, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds float* %45, i64 %indvars.iv383
  store float -1.000000e+00, float* %arrayidx73, align 4, !tbaa !4
  %46 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp75 = icmp eq i8** %46, null
  br i1 %cmp75, label %if.end81, label %if.then77

if.then77:                                        ; preds = %for.body
  %arrayidx80 = getelementptr inbounds i8** %46, i64 %indvars.iv383
  store i8* null, i8** %arrayidx80, align 8, !tbaa !0
  br label %if.end81

if.end81:                                         ; preds = %for.body, %if.then77
  %47 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp83 = icmp eq i8** %47, null
  br i1 %cmp83, label %if.end89, label %if.then85

if.then85:                                        ; preds = %if.end81
  %arrayidx88 = getelementptr inbounds i8** %47, i64 %indvars.iv383
  store i8* null, i8** %arrayidx88, align 8, !tbaa !0
  br label %if.end89

if.end89:                                         ; preds = %if.end81, %if.then85
  %48 = load i32* %alen, align 4, !tbaa !3
  %cmp90 = icmp eq i32 %48, 0
  %49 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i8** %49, i64 %indvars.iv383
  br i1 %cmp90, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end89
  %50 = load i8** %arrayidx95, align 8, !tbaa !0
  %add97 = add nsw i32 %48, 1
  %conv98 = sext i32 %add97 to i64
  %call100 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 189, i8* %50, i64 %conv98) #6
  %51 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i8** %51, i64 %indvars.iv383
  store i8* %call100, i8** %arrayidx103, align 8, !tbaa !0
  br label %if.end107

if.else:                                          ; preds = %if.end89
  store i8* null, i8** %arrayidx95, align 8, !tbaa !0
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then92
  %52 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32* %52, i64 %indvars.iv383
  store i32 0, i32* %arrayidx110, align 4, !tbaa !3
  %53 = load i8*** %ss, align 8, !tbaa !0
  %cmp112 = icmp eq i8** %53, null
  br i1 %cmp112, label %if.end138, label %if.then114

if.then114:                                       ; preds = %if.end107
  %54 = load i32* %alen, align 4, !tbaa !3
  %cmp116 = icmp eq i32 %54, 0
  %arrayidx121 = getelementptr inbounds i8** %53, i64 %indvars.iv383
  br i1 %cmp116, label %if.else130, label %if.then118

if.then118:                                       ; preds = %if.then114
  %55 = load i8** %arrayidx121, align 8, !tbaa !0
  %add123 = add nsw i32 %54, 1
  %conv124 = sext i32 %add123 to i64
  %call126 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 195, i8* %55, i64 %conv124) #6
  %56 = load i8*** %ss, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i8** %56, i64 %indvars.iv383
  store i8* %call126, i8** %arrayidx129, align 8, !tbaa !0
  br label %if.end134

if.else130:                                       ; preds = %if.then114
  store i8* null, i8** %arrayidx121, align 8, !tbaa !0
  br label %if.end134

if.end134:                                        ; preds = %if.else130, %if.then118
  %57 = load i32** %sslen136, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i32* %57, i64 %indvars.iv383
  store i32 0, i32* %arrayidx137, align 4, !tbaa !3
  br label %if.end138

if.end138:                                        ; preds = %if.end107, %if.end134
  %58 = load i8*** %sa, align 8, !tbaa !0
  %cmp140 = icmp eq i8** %58, null
  br i1 %cmp140, label %for.inc, label %if.then142

if.then142:                                       ; preds = %if.end138
  %59 = load i32* %alen, align 4, !tbaa !3
  %cmp144 = icmp eq i32 %59, 0
  br i1 %cmp144, label %if.else158, label %if.then146

if.then146:                                       ; preds = %if.then142
  %60 = load i8*** %ss, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i8** %60, i64 %indvars.iv383
  %61 = load i8** %arrayidx149, align 8, !tbaa !0
  %add151 = add nsw i32 %59, 1
  %conv152 = sext i32 %add151 to i64
  %call154 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 201, i8* %61, i64 %conv152) #6
  %62 = load i8*** %sa, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i8** %62, i64 %indvars.iv383
  store i8* %call154, i8** %arrayidx157, align 8, !tbaa !0
  br label %if.end162

if.else158:                                       ; preds = %if.then142
  %arrayidx161 = getelementptr inbounds i8** %58, i64 %indvars.iv383
  store i8* null, i8** %arrayidx161, align 8, !tbaa !0
  br label %if.end162

if.end162:                                        ; preds = %if.else158, %if.then146
  %63 = load i32** %salen164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i32* %63, i64 %indvars.iv383
  store i32 0, i32* %arrayidx165, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end138, %if.end162
  %indvars.iv.next384 = add i64 %indvars.iv383, 1
  %64 = load i32* %nseqalloc, align 4, !tbaa !3
  %65 = trunc i64 %indvars.iv.next384 to i32
  %cmp68 = icmp slt i32 %65, %64
  br i1 %cmp68, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end64
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28
  %66 = load i8**** %gs, align 8, !tbaa !0
  %cmp167 = icmp eq i8*** %66, null
  br i1 %cmp167, label %if.end210, label %for.cond170.preheader

for.cond170.preheader:                            ; preds = %for.end
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30
  %67 = load i32* %ngs, align 4, !tbaa !3
  %cmp171373 = icmp sgt i32 %67, 0
  br i1 %cmp171373, label %for.body173, label %if.end210

for.body173:                                      ; preds = %for.cond170.preheader, %for.inc207.for.body173_crit_edge
  %68 = phi i8*** [ %.pre387, %for.inc207.for.body173_crit_edge ], [ %66, %for.cond170.preheader ]
  %69 = phi i32 [ %81, %for.inc207.for.body173_crit_edge ], [ %67, %for.cond170.preheader ]
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc207.for.body173_crit_edge ], [ 0, %for.cond170.preheader ]
  %arrayidx176 = getelementptr inbounds i8*** %68, i64 %indvars.iv381
  %70 = load i8*** %arrayidx176, align 8, !tbaa !0
  %cmp177 = icmp eq i8** %70, null
  br i1 %cmp177, label %for.inc207, label %if.then179

if.then179:                                       ; preds = %for.body173
  %71 = bitcast i8** %70 to i8*
  %72 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv184 = sext i32 %72 to i64
  %mul185 = shl nsw i64 %conv184, 3
  %call186 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 217, i8* %71, i64 %mul185) #6
  %73 = bitcast i8* %call186 to i8**
  %74 = load i8**** %gs, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i8*** %74, i64 %indvars.iv381
  store i8** %73, i8*** %arrayidx189, align 8, !tbaa !0
  %75 = load i32* %nseqlump, align 4, !tbaa !3
  %cmp195371 = icmp sgt i32 %75, 0
  br i1 %cmp195371, label %for.body197.lr.ph, label %for.inc207.loopexit

for.body197.lr.ph:                                ; preds = %if.then179
  %76 = load i32* %nseqalloc, align 4, !tbaa !3
  %sub192 = sub nsw i32 %76, %75
  %77 = sext i32 %sub192 to i64
  br label %for.body197

for.body197:                                      ; preds = %for.body197.lr.ph, %for.body197
  %indvars.iv379 = phi i64 [ %77, %for.body197.lr.ph ], [ %indvars.iv.next380, %for.body197 ]
  %78 = load i8**** %gs, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i8*** %78, i64 %indvars.iv381
  %79 = load i8*** %arrayidx201, align 8, !tbaa !0
  %arrayidx202 = getelementptr inbounds i8** %79, i64 %indvars.iv379
  store i8* null, i8** %arrayidx202, align 8, !tbaa !0
  %indvars.iv.next380 = add i64 %indvars.iv379, 1
  %80 = trunc i64 %indvars.iv.next380 to i32
  %cmp195 = icmp slt i32 %80, %76
  br i1 %cmp195, label %for.body197, label %for.inc207.loopexit

for.inc207.loopexit:                              ; preds = %for.body197, %if.then179
  %.pre385 = load i32* %ngs, align 4, !tbaa !3
  br label %for.inc207

for.inc207:                                       ; preds = %for.inc207.loopexit, %for.body173
  %81 = phi i32 [ %.pre385, %for.inc207.loopexit ], [ %69, %for.body173 ]
  %indvars.iv.next382 = add i64 %indvars.iv381, 1
  %82 = trunc i64 %indvars.iv.next382 to i32
  %cmp171 = icmp slt i32 %82, %81
  br i1 %cmp171, label %for.inc207.for.body173_crit_edge, label %if.end210

for.inc207.for.body173_crit_edge:                 ; preds = %for.inc207
  %.pre387 = load i8**** %gs, align 8, !tbaa !0
  br label %for.body173

if.end210:                                        ; preds = %for.cond170.preheader, %for.inc207, %for.end
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  %83 = load i8**** %gr, align 8, !tbaa !0
  %cmp211 = icmp eq i8*** %83, null
  br i1 %cmp211, label %if.end254, label %for.cond214.preheader

for.cond214.preheader:                            ; preds = %if.end210
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %84 = load i32* %ngr, align 4, !tbaa !3
  %cmp215369 = icmp sgt i32 %84, 0
  br i1 %cmp215369, label %for.body217, label %if.end254

for.body217:                                      ; preds = %for.cond214.preheader, %for.inc251.for.body217_crit_edge
  %85 = phi i8*** [ %.pre386, %for.inc251.for.body217_crit_edge ], [ %83, %for.cond214.preheader ]
  %86 = phi i32 [ %98, %for.inc251.for.body217_crit_edge ], [ %84, %for.cond214.preheader ]
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.inc251.for.body217_crit_edge ], [ 0, %for.cond214.preheader ]
  %arrayidx220 = getelementptr inbounds i8*** %85, i64 %indvars.iv377
  %87 = load i8*** %arrayidx220, align 8, !tbaa !0
  %cmp221 = icmp eq i8** %87, null
  br i1 %cmp221, label %for.inc251, label %if.then223

if.then223:                                       ; preds = %for.body217
  %88 = bitcast i8** %87 to i8*
  %89 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv228 = sext i32 %89 to i64
  %mul229 = shl nsw i64 %conv228, 3
  %call230 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 232, i8* %88, i64 %mul229) #6
  %90 = bitcast i8* %call230 to i8**
  %91 = load i8**** %gr, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i8*** %91, i64 %indvars.iv377
  store i8** %90, i8*** %arrayidx233, align 8, !tbaa !0
  %92 = load i32* %nseqlump, align 4, !tbaa !3
  %cmp239367 = icmp sgt i32 %92, 0
  br i1 %cmp239367, label %for.body241.lr.ph, label %for.inc251.loopexit

for.body241.lr.ph:                                ; preds = %if.then223
  %93 = load i32* %nseqalloc, align 4, !tbaa !3
  %sub236 = sub nsw i32 %93, %92
  %94 = sext i32 %sub236 to i64
  br label %for.body241

for.body241:                                      ; preds = %for.body241.lr.ph, %for.body241
  %indvars.iv = phi i64 [ %94, %for.body241.lr.ph ], [ %indvars.iv.next, %for.body241 ]
  %95 = load i8**** %gr, align 8, !tbaa !0
  %arrayidx245 = getelementptr inbounds i8*** %95, i64 %indvars.iv377
  %96 = load i8*** %arrayidx245, align 8, !tbaa !0
  %arrayidx246 = getelementptr inbounds i8** %96, i64 %indvars.iv
  store i8* null, i8** %arrayidx246, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %97 = trunc i64 %indvars.iv.next to i32
  %cmp239 = icmp slt i32 %97, %93
  br i1 %cmp239, label %for.body241, label %for.inc251.loopexit

for.inc251.loopexit:                              ; preds = %for.body241, %if.then223
  %.pre = load i32* %ngr, align 4, !tbaa !3
  br label %for.inc251

for.inc251:                                       ; preds = %for.inc251.loopexit, %for.body217
  %98 = phi i32 [ %.pre, %for.inc251.loopexit ], [ %86, %for.body217 ]
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %99 = trunc i64 %indvars.iv.next378 to i32
  %cmp215 = icmp slt i32 %99, %98
  br i1 %cmp215, label %for.inc251.for.body217_crit_edge, label %if.end254

for.inc251.for.body217_crit_edge:                 ; preds = %for.inc251
  %.pre386 = load i8**** %gr, align 8, !tbaa !0
  br label %for.body217

if.end254:                                        ; preds = %for.cond214.preheader, %for.inc251, %if.end210
  ret void
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @MSAFree(%struct.msa_struct* %msa) #0 {
entry:
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %0 = load i8*** %aseq, align 8, !tbaa !0
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %1 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %0, i32 %1) #6
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %2 = load i8*** %sqname, align 8, !tbaa !0
  %3 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %2, i32 %3) #6
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %4 = load i8*** %sqacc, align 8, !tbaa !0
  %5 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %4, i32 %5) #6
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %6 = load i8*** %sqdesc, align 8, !tbaa !0
  %7 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %6, i32 %7) #6
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %8 = load i8*** %ss, align 8, !tbaa !0
  %9 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %8, i32 %9) #6
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %10 = load i8*** %sa, align 8, !tbaa !0
  %11 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %10, i32 %11) #6
  %sqlen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 42
  %12 = load i32** %sqlen, align 8, !tbaa !0
  %cmp = icmp eq i32* %12, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = bitcast i32* %12 to i8*
  tail call void @free(i8* %13) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %14 = load float** %wgt, align 8, !tbaa !0
  %cmp7 = icmp eq float* %14, null
  br i1 %cmp7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %15 = bitcast float* %14 to i8*
  tail call void @free(i8* %15) #6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %16 = load i8** %name, align 8, !tbaa !0
  %cmp11 = icmp eq i8* %16, null
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  tail call void @free(i8* %16) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.then12
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8
  %17 = load i8** %desc, align 8, !tbaa !0
  %cmp15 = icmp eq i8* %17, null
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  tail call void @free(i8* %17) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.then16
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9
  %18 = load i8** %acc, align 8, !tbaa !0
  %cmp19 = icmp eq i8* %18, null
  br i1 %cmp19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  tail call void @free(i8* %18) #6
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.then20
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10
  %19 = load i8** %au, align 8, !tbaa !0
  %cmp23 = icmp eq i8* %19, null
  br i1 %cmp23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end22
  tail call void @free(i8* %19) #6
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.then24
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %20 = load i8** %ss_cons, align 8, !tbaa !0
  %cmp27 = icmp eq i8* %20, null
  br i1 %cmp27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  tail call void @free(i8* %20) #6
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.then28
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %21 = load i8** %sa_cons, align 8, !tbaa !0
  %cmp31 = icmp eq i8* %21, null
  br i1 %cmp31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  tail call void @free(i8* %21) #6
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.then32
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %22 = load i8** %rf, align 8, !tbaa !0
  %cmp35 = icmp eq i8* %22, null
  br i1 %cmp35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  tail call void @free(i8* %22) #6
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then36
  %sslen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43
  %23 = load i32** %sslen, align 8, !tbaa !0
  %cmp39 = icmp eq i32* %23, null
  br i1 %cmp39, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end38
  %24 = bitcast i32* %23 to i8*
  tail call void @free(i8* %24) #6
  br label %if.end42

if.end42:                                         ; preds = %if.end38, %if.then40
  %salen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44
  %25 = load i32** %salen, align 8, !tbaa !0
  %cmp43 = icmp eq i32* %25, null
  br i1 %cmp43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end42
  %26 = bitcast i32* %25 to i8*
  tail call void @free(i8* %26) #6
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.then44
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20
  %27 = load i8*** %comment, align 8, !tbaa !0
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21
  %28 = load i32* %ncomment, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %27, i32 %28) #6
  %gf_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23
  %29 = load i8*** %gf_tag, align 8, !tbaa !0
  %ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25
  %30 = load i32* %ngf, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %29, i32 %30) #6
  %gf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24
  %31 = load i8*** %gf, align 8, !tbaa !0
  %32 = load i32* %ngf, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %31, i32 %32) #6
  %gs_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27
  %33 = load i8*** %gs_tag, align 8, !tbaa !0
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30
  %34 = load i32* %ngs, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %33, i32 %34) #6
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28
  %35 = load i8**** %gs, align 8, !tbaa !0
  %36 = load i32* %ngs, align 4, !tbaa !3
  %37 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free3DArray(i8*** %35, i32 %36, i32 %37) #6
  %gc_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31
  %38 = load i8*** %gc_tag, align 8, !tbaa !0
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34
  %39 = load i32* %ngc, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %38, i32 %39) #6
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  %40 = load i8*** %gc, align 8, !tbaa !0
  %41 = load i32* %ngc, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %40, i32 %41) #6
  %gr_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35
  %42 = load i8*** %gr_tag, align 8, !tbaa !0
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %43 = load i32* %ngr, align 4, !tbaa !3
  tail call void @Free2DArray(i8** %42, i32 %43) #6
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  %44 = load i8**** %gr, align 8, !tbaa !0
  %45 = load i32* %ngr, align 4, !tbaa !3
  %46 = load i32* %nseq, align 4, !tbaa !3
  tail call void @Free3DArray(i8*** %44, i32 %45, i32 %46) #6
  %index = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 39
  %47 = load %struct.GKI** %index, align 8, !tbaa !0
  tail call void @GKIFree(%struct.GKI* %47) #6
  %gs_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 29
  %48 = load %struct.GKI** %gs_idx, align 8, !tbaa !0
  tail call void @GKIFree(%struct.GKI* %48) #6
  %gc_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33
  %49 = load %struct.GKI** %gc_idx, align 8, !tbaa !0
  tail call void @GKIFree(%struct.GKI* %49) #6
  %gr_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 37
  %50 = load %struct.GKI** %gr_idx, align 8, !tbaa !0
  tail call void @GKIFree(%struct.GKI* %50) #6
  %51 = bitcast %struct.msa_struct* %msa to i8*
  tail call void @free(i8* %51) #6
  ret void
}

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @Free3DArray(i8***, i32, i32) #1

; Function Attrs: optsize
declare void @GKIFree(%struct.GKI*) #1

; Function Attrs: nounwind optsize uwtable
define void @MSASetSeqAccession(%struct.msa_struct* nocapture %msa, i32 %seqidx, i8* %acc) #0 {
entry:
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %0 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %1 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 310, i64 %mul) #6
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %sqacc, align 8, !tbaa !0
  %3 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp317 = icmp sgt i32 %3, 0
  br i1 %cmp317, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body.for.body_crit_edge
  %4 = phi i8** [ %.pre, %for.body.for.body_crit_edge ], [ %2, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv
  store i8* null, i8** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %5, %3
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i8*** %sqacc, align 8, !tbaa !0
  br label %for.body

if.end:                                           ; preds = %if.then, %for.body, %entry
  %call6 = tail call i8* @sre_strdup(i8* %acc, i32 -1) #6
  %idxprom7 = sext i32 %seqidx to i64
  %6 = load i8*** %sqacc, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %6, i64 %idxprom7
  store i8* %call6, i8** %arrayidx9, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @MSASetSeqDescription(%struct.msa_struct* nocapture %msa, i32 %seqidx, i8* %desc) #0 {
entry:
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %0 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %1 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 335, i64 %mul) #6
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %sqdesc, align 8, !tbaa !0
  %3 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp317 = icmp sgt i32 %3, 0
  br i1 %cmp317, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body.for.body_crit_edge
  %4 = phi i8** [ %.pre, %for.body.for.body_crit_edge ], [ %2, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv
  store i8* null, i8** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %5, %3
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i8*** %sqdesc, align 8, !tbaa !0
  br label %for.body

if.end:                                           ; preds = %if.then, %for.body, %entry
  %call6 = tail call i8* @sre_strdup(i8* %desc, i32 -1) #6
  %idxprom7 = sext i32 %seqidx to i64
  %6 = load i8*** %sqdesc, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %6, i64 %idxprom7
  store i8* %call6, i8** %arrayidx9, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAddComment(%struct.msa_struct* nocapture %msa, i8* %s) #0 {
entry:
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20
  %0 = load i8*** %comment, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %alloc_ncomment2.phi.trans.insert = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 22
  %.pre = load i32* %alloc_ncomment2.phi.trans.insert, align 4, !tbaa !3
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 362, i64 80) #6
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %comment, align 8, !tbaa !0
  %alloc_ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 22
  store i32 10, i32* %alloc_ncomment, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i32 [ 10, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %3 = phi i8** [ %1, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21
  %4 = load i32* %ncomment, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %4, %2
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %alloc_ncomment2 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 22
  %add = add nsw i32 %2, 10
  store i32 %add, i32* %alloc_ncomment2, align 4, !tbaa !3
  %5 = bitcast i8** %3 to i8*
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call8 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 367, i8* %5, i64 %mul) #6
  %6 = bitcast i8* %call8 to i8**
  store i8** %6, i8*** %comment, align 8, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end
  %call11 = tail call i8* @sre_strdup(i8* %s, i32 -1) #6
  %7 = load i32* %ncomment, align 4, !tbaa !3
  %idxprom = sext i32 %7 to i64
  %8 = load i8*** %comment, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %8, i64 %idxprom
  store i8* %call11, i8** %arrayidx, align 8, !tbaa !0
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ncomment, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAddGF(%struct.msa_struct* nocapture %msa, i8* %tag, i8* %value) #0 {
entry:
  %gf_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23
  %0 = load i8*** %gf_tag, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %alloc_ngf3.phi.trans.insert = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 26
  %.pre = load i32* %alloc_ngf3.phi.trans.insert, align 4, !tbaa !3
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 395, i64 80) #6
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %gf_tag, align 8, !tbaa !0
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 396, i64 80) #6
  %2 = bitcast i8* %call2 to i8**
  %gf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24
  store i8** %2, i8*** %gf, align 8, !tbaa !0
  %alloc_ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 26
  store i32 10, i32* %alloc_ngf, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ 10, %if.then ]
  %ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25
  %4 = load i32* %ngf, align 4, !tbaa !3
  %alloc_ngf3 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 26
  %cmp4 = icmp eq i32 %4, %3
  br i1 %cmp4, label %if.then5, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  %gf24.pre = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24
  br label %if.end17

if.then5:                                         ; preds = %if.end
  %add = add nsw i32 %3, 10
  store i32 %add, i32* %alloc_ngf3, align 4, !tbaa !3
  %5 = load i8*** %gf_tag, align 8, !tbaa !0
  %6 = bitcast i8** %5 to i8*
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call9 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 401, i8* %6, i64 %mul) #6
  %7 = bitcast i8* %call9 to i8**
  store i8** %7, i8*** %gf_tag, align 8, !tbaa !0
  %gf11 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24
  %8 = load i8*** %gf11, align 8, !tbaa !0
  %9 = bitcast i8** %8 to i8*
  %10 = load i32* %alloc_ngf3, align 4, !tbaa !3
  %conv13 = sext i32 %10 to i64
  %mul14 = shl nsw i64 %conv13, 3
  %call15 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 402, i8* %9, i64 %mul14) #6
  %11 = bitcast i8* %call15 to i8**
  store i8** %11, i8*** %gf11, align 8, !tbaa !0
  br label %if.end17

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %if.then5
  %gf24.pre-phi = phi i8*** [ %gf24.pre, %if.end.if.end17_crit_edge ], [ %gf11, %if.then5 ]
  %call18 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #6
  %12 = load i32* %ngf, align 4, !tbaa !3
  %idxprom = sext i32 %12 to i64
  %13 = load i8*** %gf_tag, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %13, i64 %idxprom
  store i8* %call18, i8** %arrayidx, align 8, !tbaa !0
  %call21 = tail call i8* @sre_strdup(i8* %value, i32 -1) #6
  %14 = load i32* %ngf, align 4, !tbaa !3
  %idxprom23 = sext i32 %14 to i64
  %15 = load i8*** %gf24.pre-phi, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i8** %15, i64 %idxprom23
  store i8* %call21, i8** %arrayidx25, align 8, !tbaa !0
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %ngf, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAddGS(%struct.msa_struct* nocapture %msa, i8* %tag, i32 %sqidx, i8* %value) #0 {
entry:
  %gs_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27
  %0 = load i8*** %gs_tag, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call %struct.GKI* @GKIInit() #6
  %gs_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 29
  store %struct.GKI* %call, %struct.GKI** %gs_idx, align 8, !tbaa !0
  %call2 = tail call i32 @GKIStoreKey(%struct.GKI* %call, i8* %tag) #6
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 447, i64 8) #6
  %1 = bitcast i8* %call3 to i8**
  store i8** %1, i8*** %gs_tag, align 8, !tbaa !0
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 448, i64 8) #6
  %2 = bitcast i8* %call5 to i8***
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28
  store i8*** %2, i8**** %gs, align 8, !tbaa !0
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %3 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 3
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 449, i64 %mul) #6
  %4 = bitcast i8* %call6 to i8**
  %5 = load i8**** %gs, align 8, !tbaa !0
  store i8** %4, i8*** %5, align 8, !tbaa !0
  %6 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp9150 = icmp sgt i32 %6, 0
  br i1 %cmp9150, label %for.body, label %if.end55

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %7 = load i8**** %gs, align 8, !tbaa !0
  %8 = load i8*** %7, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i8** %8, i64 %indvars.iv
  store i8* null, i8** %arrayidx13, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp9 = icmp slt i32 %9, %6
  br i1 %cmp9, label %for.body, label %if.end55

if.else:                                          ; preds = %entry
  %gs_idx14 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 29
  %10 = load %struct.GKI** %gs_idx14, align 8, !tbaa !0
  %call15 = tail call i32 @GKIKeyIndex(%struct.GKI* %10, i8* %tag) #6
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end55

if.then18:                                        ; preds = %if.else
  %11 = load %struct.GKI** %gs_idx14, align 8, !tbaa !0
  %call20 = tail call i32 @GKIStoreKey(%struct.GKI* %11, i8* %tag) #6
  %12 = load i8*** %gs_tag, align 8, !tbaa !0
  %13 = bitcast i8** %12 to i8*
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30
  %14 = load i32* %ngs, align 4, !tbaa !3
  %add = add nsw i32 %14, 1
  %conv22 = sext i32 %add to i64
  %mul23 = shl nsw i64 %conv22, 3
  %call24 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 463, i8* %13, i64 %mul23) #6
  %15 = bitcast i8* %call24 to i8**
  store i8** %15, i8*** %gs_tag, align 8, !tbaa !0
  %gs26 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28
  %16 = load i8**** %gs26, align 8, !tbaa !0
  %17 = bitcast i8*** %16 to i8*
  %18 = load i32* %ngs, align 4, !tbaa !3
  %add28 = add nsw i32 %18, 1
  %conv29 = sext i32 %add28 to i64
  %mul30 = shl nsw i64 %conv29, 3
  %call31 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 464, i8* %17, i64 %mul30) #6
  %19 = bitcast i8* %call31 to i8***
  store i8*** %19, i8**** %gs26, align 8, !tbaa !0
  %nseqalloc33 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %20 = load i32* %nseqalloc33, align 4, !tbaa !3
  %conv34 = sext i32 %20 to i64
  %mul35 = shl nsw i64 %conv34, 3
  %call36 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 465, i64 %mul35) #6
  %21 = bitcast i8* %call36 to i8**
  %22 = load i32* %ngs, align 4, !tbaa !3
  %idxprom38 = sext i32 %22 to i64
  %23 = load i8**** %gs26, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i8*** %23, i64 %idxprom38
  store i8** %21, i8*** %arrayidx40, align 8, !tbaa !0
  %24 = load i32* %nseqalloc33, align 4, !tbaa !3
  %cmp43153 = icmp sgt i32 %24, 0
  br i1 %cmp43153, label %for.body45, label %if.end55

for.body45:                                       ; preds = %if.then18, %for.body45
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body45 ], [ 0, %if.then18 ]
  %25 = load i8**** %gs26, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i8*** %25, i64 %idxprom38
  %26 = load i8*** %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8** %26, i64 %indvars.iv155
  store i8* null, i8** %arrayidx51, align 8, !tbaa !0
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %27 = trunc i64 %indvars.iv.next156 to i32
  %cmp43 = icmp slt i32 %27, %24
  br i1 %cmp43, label %for.body45, label %if.end55

if.end55:                                         ; preds = %if.then18, %for.body45, %if.then, %for.body, %if.else
  %tagidx.0 = phi i32 [ %call15, %if.else ], [ %call2, %for.body ], [ %call2, %if.then ], [ %call20, %for.body45 ], [ %call20, %if.then18 ]
  %ngs56 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30
  %28 = load i32* %ngs56, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %tagidx.0, %28
  br i1 %cmp57, label %if.then59, label %if.end55.if.end66_crit_edge

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  %idxprom68.pre = sext i32 %tagidx.0 to i64
  br label %if.end66

if.then59:                                        ; preds = %if.end55
  %call60 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #6
  %idxprom61 = sext i32 %tagidx.0 to i64
  %29 = load i8*** %gs_tag, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds i8** %29, i64 %idxprom61
  store i8* %call60, i8** %arrayidx63, align 8, !tbaa !0
  %30 = load i32* %ngs56, align 4, !tbaa !3
  %inc65 = add nsw i32 %30, 1
  store i32 %inc65, i32* %ngs56, align 4, !tbaa !3
  br label %if.end66

if.end66:                                         ; preds = %if.end55.if.end66_crit_edge, %if.then59
  %idxprom68.pre-phi = phi i64 [ %idxprom68.pre, %if.end55.if.end66_crit_edge ], [ %idxprom61, %if.then59 ]
  %idxprom67 = sext i32 %sqidx to i64
  %gs69 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28
  %31 = load i8**** %gs69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i8*** %31, i64 %idxprom68.pre-phi
  %32 = load i8*** %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i8** %32, i64 %idxprom67
  %33 = load i8** %arrayidx71, align 8, !tbaa !0
  %cmp72 = icmp eq i8* %33, null
  br i1 %cmp72, label %if.then74, label %if.else81

if.then74:                                        ; preds = %if.end66
  %call75 = tail call i8* @sre_strdup(i8* %value, i32 -1) #6
  %34 = load i8**** %gs69, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i8*** %34, i64 %idxprom68.pre-phi
  %35 = load i8*** %arrayidx79, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i8** %35, i64 %idxprom67
  store i8* %call75, i8** %arrayidx80, align 8, !tbaa !0
  br label %if.end102

if.else81:                                        ; preds = %if.end66
  %call87 = tail call i32 @sre_strcat(i8** %arrayidx71, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i32 1) #6
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.else81
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #6
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.else81
  %36 = load i8**** %gs69, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i8*** %36, i64 %idxprom68.pre-phi
  %37 = load i8*** %arrayidx95, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i8** %37, i64 %idxprom67
  %call97 = tail call i32 @sre_strcat(i8** %arrayidx96, i32 %call87, i8* %value, i32 -1) #6
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end91
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #6
  br label %if.end102

if.end102:                                        ; preds = %if.end91, %if.then100, %if.then74
  ret void
}

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #1

; Function Attrs: optsize
declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #1

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @MSAAppendGC(%struct.msa_struct* nocapture %msa, i8* %tag, i8* %value) #0 {
entry:
  %gc_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31
  %0 = load i8*** %gc_tag, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 517, i64 8) #6
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %gc_tag, align 8, !tbaa !0
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 518, i64 8) #6
  %2 = bitcast i8* %call2 to i8**
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  store i8** %2, i8*** %gc, align 8, !tbaa !0
  %call3 = tail call %struct.GKI* @GKIInit() #6
  %gc_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33
  store %struct.GKI* %call3, %struct.GKI** %gc_idx, align 8, !tbaa !0
  %call5 = tail call i32 @GKIStoreKey(%struct.GKI* %call3, i8* %tag) #6
  %3 = load i8*** %gc, align 8, !tbaa !0
  store i8* null, i8** %3, align 8, !tbaa !0
  br label %if.end25

if.else:                                          ; preds = %entry
  %gc_idx7 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33
  %4 = load %struct.GKI** %gc_idx7, align 8, !tbaa !0
  %call8 = tail call i32 @GKIKeyIndex(%struct.GKI* %4, i8* %tag) #6
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end25

if.then10:                                        ; preds = %if.else
  %5 = load %struct.GKI** %gc_idx7, align 8, !tbaa !0
  %call12 = tail call i32 @GKIStoreKey(%struct.GKI* %5, i8* %tag) #6
  %6 = load i8*** %gc_tag, align 8, !tbaa !0
  %7 = bitcast i8** %6 to i8*
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34
  %8 = load i32* %ngc, align 4, !tbaa !3
  %add = add nsw i32 %8, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call14 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 533, i8* %7, i64 %mul) #6
  %9 = bitcast i8* %call14 to i8**
  store i8** %9, i8*** %gc_tag, align 8, !tbaa !0
  %gc16 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  %10 = load i8*** %gc16, align 8, !tbaa !0
  %11 = bitcast i8** %10 to i8*
  %12 = load i32* %ngc, align 4, !tbaa !3
  %add18 = add nsw i32 %12, 1
  %conv19 = sext i32 %add18 to i64
  %mul20 = shl nsw i64 %conv19, 3
  %call21 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 534, i8* %11, i64 %mul20) #6
  %13 = bitcast i8* %call21 to i8**
  store i8** %13, i8*** %gc16, align 8, !tbaa !0
  %idxprom = sext i32 %call12 to i64
  %arrayidx24 = getelementptr inbounds i8** %13, i64 %idxprom
  store i8* null, i8** %arrayidx24, align 8, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then10, %if.then
  %tagidx.0 = phi i32 [ %call5, %if.then ], [ %call12, %if.then10 ], [ %call8, %if.else ]
  %ngc26 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34
  %14 = load i32* %ngc26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %tagidx.0, %14
  br i1 %cmp27, label %if.then29, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  %idxprom36.pre = sext i32 %tagidx.0 to i64
  br label %if.end35

if.then29:                                        ; preds = %if.end25
  %call30 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #6
  %idxprom31 = sext i32 %tagidx.0 to i64
  %15 = load i8*** %gc_tag, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i8** %15, i64 %idxprom31
  store i8* %call30, i8** %arrayidx33, align 8, !tbaa !0
  %16 = load i32* %ngc26, align 4, !tbaa !3
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ngc26, align 4, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %if.end25.if.end35_crit_edge, %if.then29
  %idxprom36.pre-phi = phi i64 [ %idxprom36.pre, %if.end25.if.end35_crit_edge ], [ %idxprom31, %if.then29 ]
  %gc37 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  %17 = load i8*** %gc37, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i8** %17, i64 %idxprom36.pre-phi
  %call39 = tail call i32 @sre_strcat(i8** %arrayidx38, i32 -1, i8* %value, i32 -1) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @MSAGetGC(%struct.msa_struct* nocapture %msa, i8* %tag) #0 {
entry:
  %gc_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 33
  %0 = load %struct.GKI** %gc_idx, align 8, !tbaa !0
  %cmp = icmp eq %struct.GKI* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @GKIKeyIndex(%struct.GKI* %0, i8* %tag) #6
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %call to i64
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  %1 = load i8*** %gc, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %2, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @MSAAppendGR(%struct.msa_struct* nocapture %msa, i8* %tag, i32 %sqidx, i8* %value) #0 {
entry:
  %gr_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35
  %0 = load i8*** %gr_tag, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 601, i64 8) #6
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %gr_tag, align 8, !tbaa !0
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 602, i64 8) #6
  %2 = bitcast i8* %call2 to i8***
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  store i8*** %2, i8**** %gr, align 8, !tbaa !0
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %3 = load i32* %nseqalloc, align 4, !tbaa !3
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 3
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 603, i64 %mul) #6
  %4 = bitcast i8* %call3 to i8**
  %5 = load i8**** %gr, align 8, !tbaa !0
  store i8** %4, i8*** %5, align 8, !tbaa !0
  %6 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp6110 = icmp sgt i32 %6, 0
  br i1 %cmp6110, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %7 = load i8**** %gr, align 8, !tbaa !0
  %8 = load i8*** %7, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8** %8, i64 %indvars.iv
  store i8* null, i8** %arrayidx10, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %9, %6
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %call11 = tail call %struct.GKI* @GKIInit() #6
  %gr_idx = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 37
  store %struct.GKI* %call11, %struct.GKI** %gr_idx, align 8, !tbaa !0
  %call13 = tail call i32 @GKIStoreKey(%struct.GKI* %call11, i8* %tag) #6
  br label %if.end55

if.else:                                          ; preds = %entry
  %gr_idx14 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 37
  %10 = load %struct.GKI** %gr_idx14, align 8, !tbaa !0
  %call15 = tail call i32 @GKIKeyIndex(%struct.GKI* %10, i8* %tag) #6
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end55

if.then18:                                        ; preds = %if.else
  %11 = load %struct.GKI** %gr_idx14, align 8, !tbaa !0
  %call20 = tail call i32 @GKIStoreKey(%struct.GKI* %11, i8* %tag) #6
  %12 = load i8*** %gr_tag, align 8, !tbaa !0
  %13 = bitcast i8** %12 to i8*
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %14 = load i32* %ngr, align 4, !tbaa !3
  %add = add nsw i32 %14, 1
  %conv22 = sext i32 %add to i64
  %mul23 = shl nsw i64 %conv22, 3
  %call24 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 620, i8* %13, i64 %mul23) #6
  %15 = bitcast i8* %call24 to i8**
  store i8** %15, i8*** %gr_tag, align 8, !tbaa !0
  %gr26 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  %16 = load i8**** %gr26, align 8, !tbaa !0
  %17 = bitcast i8*** %16 to i8*
  %18 = load i32* %ngr, align 4, !tbaa !3
  %add28 = add nsw i32 %18, 1
  %conv29 = sext i32 %add28 to i64
  %mul30 = shl nsw i64 %conv29, 3
  %call31 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 621, i8* %17, i64 %mul30) #6
  %19 = bitcast i8* %call31 to i8***
  store i8*** %19, i8**** %gr26, align 8, !tbaa !0
  %nseqalloc33 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %20 = load i32* %nseqalloc33, align 4, !tbaa !3
  %conv34 = sext i32 %20 to i64
  %mul35 = shl nsw i64 %conv34, 3
  %call36 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 622, i64 %mul35) #6
  %21 = bitcast i8* %call36 to i8**
  %22 = load i32* %ngr, align 4, !tbaa !3
  %idxprom38 = sext i32 %22 to i64
  %23 = load i8**** %gr26, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i8*** %23, i64 %idxprom38
  store i8** %21, i8*** %arrayidx40, align 8, !tbaa !0
  %24 = load i32* %nseqalloc33, align 4, !tbaa !3
  %cmp43112 = icmp sgt i32 %24, 0
  br i1 %cmp43112, label %for.body45, label %if.end55

for.body45:                                       ; preds = %if.then18, %for.body45
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body45 ], [ 0, %if.then18 ]
  %25 = load i8**** %gr26, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i8*** %25, i64 %idxprom38
  %26 = load i8*** %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8** %26, i64 %indvars.iv114
  store i8* null, i8** %arrayidx51, align 8, !tbaa !0
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %27 = trunc i64 %indvars.iv.next115 to i32
  %cmp43 = icmp slt i32 %27, %24
  br i1 %cmp43, label %for.body45, label %if.end55

if.end55:                                         ; preds = %if.then18, %for.body45, %if.else, %for.end
  %tagidx.0 = phi i32 [ %call13, %for.end ], [ %call15, %if.else ], [ %call20, %for.body45 ], [ %call20, %if.then18 ]
  %ngr56 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %28 = load i32* %ngr56, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %tagidx.0, %28
  br i1 %cmp57, label %if.then59, label %if.end55.if.end66_crit_edge

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  %idxprom68.pre = sext i32 %tagidx.0 to i64
  br label %if.end66

if.then59:                                        ; preds = %if.end55
  %call60 = tail call i8* @sre_strdup(i8* %tag, i32 -1) #6
  %idxprom61 = sext i32 %tagidx.0 to i64
  %29 = load i8*** %gr_tag, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds i8** %29, i64 %idxprom61
  store i8* %call60, i8** %arrayidx63, align 8, !tbaa !0
  %30 = load i32* %ngr56, align 4, !tbaa !3
  %inc65 = add nsw i32 %30, 1
  store i32 %inc65, i32* %ngr56, align 4, !tbaa !3
  br label %if.end66

if.end66:                                         ; preds = %if.end55.if.end66_crit_edge, %if.then59
  %idxprom68.pre-phi = phi i64 [ %idxprom68.pre, %if.end55.if.end66_crit_edge ], [ %idxprom61, %if.then59 ]
  %idxprom67 = sext i32 %sqidx to i64
  %gr69 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  %31 = load i8**** %gr69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i8*** %31, i64 %idxprom68.pre-phi
  %32 = load i8*** %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i8** %32, i64 %idxprom67
  %call72 = tail call i32 @sre_strcat(i8** %arrayidx71, i32 -1, i8* %value, i32 -1) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSAVerifyParse(%struct.msa_struct* %msa) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %1 = load i8** %name, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %1, null
  %. = select i1 %cmp1, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %1
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i8* %.) #6
  %.pre = load i32* %nseq, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %sqlen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 42
  %3 = load i32** %sqlen, align 8, !tbaa !0
  %4 = load i32* %3, align 4, !tbaa !3
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  store i32 %4, i32* %alen, align 4, !tbaa !3
  %cmp4309 = icmp sgt i32 %2, 0
  br i1 %cmp4309, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %name10 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %flags = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %salen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44
  %sslen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8** %5, i64 %indvars.iv
  %6 = load i8** %arrayidx5, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %6, null
  br i1 %cmp6, label %if.then7, label %if.end17

if.then7:                                         ; preds = %for.body
  %7 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %7, i64 %indvars.iv
  %8 = load i8** %arrayidx9, align 8, !tbaa !0
  %9 = load i8** %name10, align 8, !tbaa !0
  %cmp11 = icmp eq i8* %9, null
  %.301 = select i1 %cmp11, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %9
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), i8* %8, i8* %.301) #6
  br label %if.end17

if.end17:                                         ; preds = %for.body, %if.then7
  %10 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %10, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %11 = load float** %wgt, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds float* %11, i64 %indvars.iv
  %12 = load float* %arrayidx19, align 4, !tbaa !4
  %cmp20 = fcmp oeq float %12, -1.000000e+00
  br i1 %cmp20, label %if.then22, label %if.end34

if.then22:                                        ; preds = %land.lhs.true
  %13 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i8** %13, i64 %indvars.iv
  %14 = load i8** %arrayidx25, align 8, !tbaa !0
  %15 = load i8** %name10, align 8, !tbaa !0
  %cmp27 = icmp eq i8* %15, null
  %.302 = select i1 %cmp27, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %15
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([75 x i8]* @.str6, i64 0, i64 0), i8* %14, i8* %.302) #6
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true, %if.end17, %if.then22
  %16 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %16, i64 %indvars.iv
  %17 = load i32* %arrayidx37, align 4, !tbaa !3
  %18 = load i32* %alen, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %17, %18
  br i1 %cmp39, label %if.end57, label %if.then41

if.then41:                                        ; preds = %if.end34
  %19 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i8** %19, i64 %indvars.iv
  %20 = load i8** %arrayidx44, align 8, !tbaa !0
  %21 = load i8** %name10, align 8, !tbaa !0
  %cmp50 = icmp eq i8* %21, null
  %.303 = select i1 %cmp50, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %21
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str7, i64 0, i64 0), i8* %20, i32 %17, i32 %18, i8* %.303) #6
  br label %if.end57

if.end57:                                         ; preds = %if.end34, %if.then41
  %22 = load i8*** %ss, align 8, !tbaa !0
  %cmp58 = icmp eq i8** %22, null
  br i1 %cmp58, label %if.end88, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end57
  %arrayidx63 = getelementptr inbounds i8** %22, i64 %indvars.iv
  %23 = load i8** %arrayidx63, align 8, !tbaa !0
  %cmp64 = icmp eq i8* %23, null
  br i1 %cmp64, label %if.end88, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %24 = load i32** %sslen, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i32* %24, i64 %indvars.iv
  %25 = load i32* %arrayidx68, align 4, !tbaa !3
  %26 = load i32* %alen, align 4, !tbaa !3
  %cmp70 = icmp eq i32 %25, %26
  br i1 %cmp70, label %if.end88, label %if.then72

if.then72:                                        ; preds = %land.lhs.true66
  %27 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds i8** %27, i64 %indvars.iv
  %28 = load i8** %arrayidx75, align 8, !tbaa !0
  %29 = load i8** %name10, align 8, !tbaa !0
  %cmp81 = icmp eq i8* %29, null
  %.304 = select i1 %cmp81, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %29
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([79 x i8]* @.str8, i64 0, i64 0), i8* %28, i32 %25, i32 %26, i8* %.304) #6
  br label %if.end88

if.end88:                                         ; preds = %land.lhs.true66, %land.lhs.true60, %if.end57, %if.then72
  %30 = load i8*** %sa, align 8, !tbaa !0
  %cmp89 = icmp eq i8** %30, null
  br i1 %cmp89, label %for.inc, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end88
  %arrayidx94 = getelementptr inbounds i8** %30, i64 %indvars.iv
  %31 = load i8** %arrayidx94, align 8, !tbaa !0
  %cmp95 = icmp eq i8* %31, null
  br i1 %cmp95, label %for.inc, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %land.lhs.true91
  %32 = load i32** %salen, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %33 = load i32* %arrayidx99, align 4, !tbaa !3
  %34 = load i32* %alen, align 4, !tbaa !3
  %cmp101 = icmp eq i32 %33, %34
  br i1 %cmp101, label %for.inc, label %if.then103

if.then103:                                       ; preds = %land.lhs.true97
  %35 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds i8** %35, i64 %indvars.iv
  %36 = load i8** %arrayidx106, align 8, !tbaa !0
  %37 = load i8** %name10, align 8, !tbaa !0
  %cmp112 = icmp eq i8* %37, null
  %.305 = select i1 %cmp112, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %37
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([79 x i8]* @.str9, i64 0, i64 0), i8* %36, i32 %33, i32 %34, i8* %.305) #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true97, %land.lhs.true91, %if.end88, %if.then103
  %indvars.iv.next = add i64 %indvars.iv, 1
  %38 = load i32* %nseq, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %39, %38
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %40 = load i8** %ss_cons, align 8, !tbaa !0
  %cmp120 = icmp eq i8* %40, null
  br i1 %cmp120, label %if.end140, label %land.lhs.true122

land.lhs.true122:                                 ; preds = %for.end
  %call = tail call i64 @strlen(i8* %40) #7
  %41 = load i32* %alen, align 4, !tbaa !3
  %conv125 = sext i32 %41 to i64
  %cmp126 = icmp eq i64 %call, %conv125
  br i1 %cmp126, label %if.end140, label %if.then128

if.then128:                                       ; preds = %land.lhs.true122
  %name132 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %42 = load i8** %name132, align 8, !tbaa !0
  %cmp133 = icmp eq i8* %42, null
  %.306 = select i1 %cmp133, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %42
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0), i64 %call, i32 %41, i8* %.306) #6
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true122, %for.end, %if.then128
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %43 = load i8** %sa_cons, align 8, !tbaa !0
  %cmp141 = icmp eq i8* %43, null
  br i1 %cmp141, label %if.end162, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.end140
  %call145 = tail call i64 @strlen(i8* %43) #7
  %44 = load i32* %alen, align 4, !tbaa !3
  %conv147 = sext i32 %44 to i64
  %cmp148 = icmp eq i64 %call145, %conv147
  br i1 %cmp148, label %if.end162, label %if.then150

if.then150:                                       ; preds = %land.lhs.true143
  %name154 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %45 = load i8** %name154, align 8, !tbaa !0
  %cmp155 = icmp eq i8* %45, null
  %.307 = select i1 %cmp155, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %45
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([77 x i8]* @.str11, i64 0, i64 0), i64 %call145, i32 %44, i8* %.307) #6
  br label %if.end162

if.end162:                                        ; preds = %land.lhs.true143, %if.end140, %if.then150
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %46 = load i8** %rf, align 8, !tbaa !0
  %cmp163 = icmp eq i8* %46, null
  br i1 %cmp163, label %if.end184, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %if.end162
  %call167 = tail call i64 @strlen(i8* %46) #7
  %47 = load i32* %alen, align 4, !tbaa !3
  %conv169 = sext i32 %47 to i64
  %cmp170 = icmp eq i64 %call167, %conv169
  br i1 %cmp170, label %if.end184, label %if.then172

if.then172:                                       ; preds = %land.lhs.true165
  %name176 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %48 = load i8** %name176, align 8, !tbaa !0
  %cmp177 = icmp eq i8* %48, null
  %.308 = select i1 %cmp177, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %48
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), i64 %call167, i32 %47, i8* %.308) #6
  br label %if.end184

if.end184:                                        ; preds = %land.lhs.true165, %if.end162, %if.then172
  %flags185 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5
  %49 = load i32* %flags185, align 4, !tbaa !3
  %and186 = and i32 %49, 1
  %tobool187 = icmp eq i32 %and186, 0
  br i1 %tobool187, label %if.then188, label %if.end191

if.then188:                                       ; preds = %if.end184
  %wgt189 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %50 = load float** %wgt189, align 8, !tbaa !0
  %51 = load i32* %nseq, align 4, !tbaa !3
  tail call void @FSet(float* %50, i32 %51, float 1.000000e+00) #6
  br label %if.end191

if.end191:                                        ; preds = %if.end184, %if.then188
  %52 = load i32** %sqlen, align 8, !tbaa !0
  %cmp193 = icmp eq i32* %52, null
  br i1 %cmp193, label %if.end198, label %if.then195

if.then195:                                       ; preds = %if.end191
  %53 = bitcast i32* %52 to i8*
  tail call void @free(i8* %53) #6
  store i32* null, i32** %sqlen, align 8, !tbaa !0
  br label %if.end198

if.end198:                                        ; preds = %if.end191, %if.then195
  %sslen199 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 43
  %54 = load i32** %sslen199, align 8, !tbaa !0
  %cmp200 = icmp eq i32* %54, null
  br i1 %cmp200, label %if.end205, label %if.then202

if.then202:                                       ; preds = %if.end198
  %55 = bitcast i32* %54 to i8*
  tail call void @free(i8* %55) #6
  store i32* null, i32** %sslen199, align 8, !tbaa !0
  br label %if.end205

if.end205:                                        ; preds = %if.end198, %if.then202
  %salen206 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 44
  %56 = load i32** %salen206, align 8, !tbaa !0
  %cmp207 = icmp eq i32* %56, null
  br i1 %cmp207, label %if.end212, label %if.then209

if.then209:                                       ; preds = %if.end205
  %57 = bitcast i32* %56 to i8*
  tail call void @free(i8* %57) #6
  store i32* null, i32** %salen206, align 8, !tbaa !0
  br label %if.end212

if.end212:                                        ; preds = %if.end205, %if.then209
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define %struct.msafile_struct* @MSAFileOpen(i8* %filename, i32 %format, i8* %env) #0 {
entry:
  %dir = alloca i8*, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 760, i64 64) #6
  %0 = bitcast i8* %call to %struct.msafile_struct*
  %call1 = call i32 @strcmp(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stdin, align 8, !tbaa !0
  %f = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %1, %struct._IO_FILE** %f, align 8, !tbaa !0
  %do_stdin = getelementptr inbounds i8* %call, i64 52
  %2 = bitcast i8* %do_stdin to i32*
  store i32 1, i32* %2, align 4, !tbaa !3
  %do_gzip = getelementptr inbounds i8* %call, i64 48
  %3 = bitcast i8* %do_gzip to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %call2 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i32 -1) #6
  %fname = getelementptr inbounds i8* %call, i64 8
  %4 = bitcast i8* %fname to i8**
  store i8* %call2, i8** %4, align 8, !tbaa !0
  %ssi = getelementptr inbounds i8* %call, i64 40
  %5 = bitcast i8* %ssi to %struct.ssifile_s**
  store %struct.ssifile_s* null, %struct.ssifile_s** %5, align 8, !tbaa !0
  br label %if.end32

if.else:                                          ; preds = %entry
  %call3 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6
  %f4 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp5, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = call i64 @strlen(i8* %filename) #7
  %add = add i64 %call7, 5
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 806, i64 %add) #6
  %call9 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call8, i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i8* %filename) #6
  br label %if.end24

if.else10:                                        ; preds = %if.else
  %call11 = call %struct._IO_FILE* @EnvFileOpen(i8* %filename, i8* %env, i8** %dir) #6
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %f4, align 8, !tbaa !0
  %cmp13 = icmp eq %struct._IO_FILE* %call11, null
  br i1 %cmp13, label %return, label %if.then14

if.then14:                                        ; preds = %if.else10
  %6 = load i8** %dir, align 8, !tbaa !0
  %call15 = call i8* @FileConcat(i8* %6, i8* %filename) #6
  %call16 = call i64 @strlen(i8* %call15) #7
  %call17 = call i64 @strlen(i8* %filename) #7
  %add18 = add i64 %call16, 5
  %add19 = add i64 %add18, %call17
  %call21 = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 813, i64 %add19) #6
  %call22 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call21, i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i8* %call15) #6
  %7 = load i8** %dir, align 8, !tbaa !0
  call void @free(i8* %7) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.then6
  %ssifile.0 = phi i8* [ %call8, %if.then6 ], [ %call21, %if.then14 ]
  %do_stdin25 = getelementptr inbounds i8* %call, i64 52
  %8 = bitcast i8* %do_stdin25 to i32*
  store i32 0, i32* %8, align 4, !tbaa !3
  %do_gzip26 = getelementptr inbounds i8* %call, i64 48
  %9 = bitcast i8* %do_gzip26 to i32*
  store i32 0, i32* %9, align 4, !tbaa !3
  %call27 = call i8* @sre_strdup(i8* %filename, i32 -1) #6
  %fname28 = getelementptr inbounds i8* %call, i64 8
  %10 = bitcast i8* %fname28 to i8**
  store i8* %call27, i8** %10, align 8, !tbaa !0
  %ssi29 = getelementptr inbounds i8* %call, i64 40
  %11 = bitcast i8* %ssi29 to %struct.ssifile_s**
  store %struct.ssifile_s* null, %struct.ssifile_s** %11, align 8, !tbaa !0
  %call31 = call i32 @SSIOpen(i8* %ssifile.0, %struct.ssifile_s** %11) #6
  call void @free(i8* %ssifile.0) #6
  br label %if.end32

if.end32:                                         ; preds = %if.end24, %if.then
  %cmp33 = icmp eq i32 %format, 0
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.end32
  %do_stdin35 = getelementptr inbounds i8* %call, i64 52
  %12 = bitcast i8* %do_stdin35 to i32*
  %13 = load i32* %12, align 4, !tbaa !3
  %cmp36 = icmp eq i32 %13, 1
  br i1 %cmp36, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then34
  %do_gzip37 = getelementptr inbounds i8* %call, i64 48
  %14 = bitcast i8* %do_gzip37 to i32*
  %15 = load i32* %14, align 4, !tbaa !3
  %tobool = icmp eq i32 %15, 0
  br i1 %tobool, label %if.end39, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false, %if.then34
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str17, i64 0, i64 0)) #6
  br label %if.end39

if.end39:                                         ; preds = %lor.lhs.false, %if.then38
  %call40 = call i32 @MSAFileFormat(%struct.msafile_struct* %0) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  %fname43 = getelementptr inbounds i8* %call, i64 8
  %16 = bitcast i8* %fname43 to i8**
  %17 = load i8** %16, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i8* %17) #6
  br label %if.end45

if.end45:                                         ; preds = %if.end39, %if.then42, %if.end32
  %format.addr.0 = phi i32 [ 0, %if.then42 ], [ %call40, %if.end39 ], [ %format, %if.end32 ]
  %format46 = getelementptr inbounds i8* %call, i64 56
  %18 = bitcast i8* %format46 to i32*
  store i32 %format.addr.0, i32* %18, align 4, !tbaa !3
  %linenumber = getelementptr inbounds i8* %call, i64 16
  %19 = bitcast i8* %linenumber to i32*
  store i32 0, i32* %19, align 4, !tbaa !3
  %buf = getelementptr inbounds i8* %call, i64 24
  %20 = bitcast i8* %buf to i8**
  store i8* null, i8** %20, align 8, !tbaa !0
  %buflen = getelementptr inbounds i8* %call, i64 32
  %21 = bitcast i8* %buflen to i32*
  store i32 0, i32* %21, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.else10, %if.end45
  %retval.0 = phi %struct.msafile_struct* [ %0, %if.end45 ], [ null, %if.else10 ]
  ret %struct.msafile_struct* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #1

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFileFormat(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = tail call i32 @SeqfileFormat(%struct._IO_FILE* %0) #6
  %cmp = icmp eq i32 %call, 7
  %.call = select i1 %cmp, i32 105, i32 %call
  %cmp1 = icmp eq i32 %.call, 0
  %cmp2 = icmp sgt i32 %.call, 100
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %1 = load i8** %fname, align 8, !tbaa !0
  %call4 = tail call i8* @SeqfileFormat2String(i32 %.call) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([156 x i8]* @.str21, i64 0, i64 0), i8* %1, i8* %call4) #6
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then3
  ret i32 %.call
}

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFileRewind(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  %do_gzip = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 6
  %0 = load i32* %do_gzip, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %do_stdin = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7
  %1 = load i32* %do_stdin, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  tail call void @rewind(%struct._IO_FILE* %2) #6
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFilePositionByKey(%struct.msafile_struct* nocapture %afp, i8* %key) #0 {
entry:
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  %ssi = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 5
  %0 = load %struct.ssifile_s** %ssi, align 8, !tbaa !0
  %cmp = icmp eq %struct.ssifile_s* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %0, i8* %key, i32* %fh, %struct.ssioffset_s* %offset) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #6
  %cmp6 = icmp eq i32 %call5, 0
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #1

; Function Attrs: optsize
declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @MSAFilePositionByIndex(%struct.msafile_struct* nocapture %afp, i32 %idx) #0 {
entry:
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  %ssi = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 5
  %0 = load %struct.ssifile_s** %ssi, align 8, !tbaa !0
  %cmp = icmp eq %struct.ssifile_s* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %0, i32 %idx, i32* %fh, %struct.ssioffset_s* %offset) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #6
  %cmp6 = icmp eq i32 %call5, 0
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %afp) #0 {
entry:
  %format = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 8
  %0 = load i32* %format, align 4, !tbaa !3
  switch i32 %0, label %sw.default [
    i32 101, label %sw.bb
    i32 103, label %sw.bb1
    i32 105, label %sw.bb3
    i32 104, label %sw.bb5
    i32 102, label %sw.bb7
    i32 106, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %afp) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %afp) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %afp) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %afp) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = tail call %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* %afp) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = tail call %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %afp) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str19, i64 0, i64 0)) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %msa.0 = phi %struct.msa_struct* [ null, %sw.default ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret %struct.msa_struct* %msa.0
}

; Function Attrs: optsize
declare %struct.msa_struct* @ReadStockholm(%struct.msafile_struct*) #1

; Function Attrs: optsize
declare %struct.msa_struct* @ReadMSF(%struct.msafile_struct*) #1

; Function Attrs: optsize
declare %struct.msa_struct* @ReadA2M(%struct.msafile_struct*) #1

; Function Attrs: optsize
declare %struct.msa_struct* @ReadClustal(%struct.msafile_struct*) #1

; Function Attrs: optsize
declare %struct.msa_struct* @ReadSELEX(%struct.msafile_struct*) #1

; Function Attrs: optsize
declare %struct.msa_struct* @ReadPhylip(%struct.msafile_struct*) #1

; Function Attrs: nounwind optsize uwtable
define void @MSAFileClose(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  %do_stdin = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7
  %0 = load i32* %do_stdin, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = tail call i32 @fclose(%struct._IO_FILE* %1) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %buf = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 3
  %2 = load i8** %buf, align 8, !tbaa !0
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @free(i8* %2) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then1
  %ssi = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 5
  %3 = load %struct.ssifile_s** %ssi, align 8, !tbaa !0
  %cmp4 = icmp eq %struct.ssifile_s* %3, null
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @SSIClose(%struct.ssifile_s* %3) #6
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %4 = load i8** %fname, align 8, !tbaa !0
  %cmp8 = icmp eq i8* %4, null
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  tail call void @free(i8* %4) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.then9
  %5 = bitcast %struct.msafile_struct* %afp to i8*
  tail call void @free(i8* %5) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @SSIClose(%struct.ssifile_s*) #1

; Function Attrs: nounwind optsize uwtable
define i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #0 {
entry:
  %buf = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 3
  %buflen = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 4
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = tail call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %0) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2
  %1 = load i32* %linenumber, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %linenumber, align 4, !tbaa !3
  %2 = load i8** %buf, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @MSAFileWrite(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %outfmt, i32 %do_oneline) #0 {
entry:
  switch i32 %outfmt, label %sw.default [
    i32 105, label %sw.bb
    i32 104, label %sw.bb1
    i32 103, label %sw.bb2
    i32 106, label %sw.bb3
    i32 102, label %sw.bb4
    i32 101, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  tail call void @WriteA2M(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call void @WriteClustal(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void @WriteMSF(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void @WritePhylip(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  tail call void @WriteSELEX(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %tobool = icmp eq i32 %do_oneline, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb5
  tail call void @WriteStockholmOneBlock(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  tail call void @WriteStockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0), i32 %outfmt) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.else, %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: optsize
declare void @WriteA2M(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: optsize
declare void @WriteClustal(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: optsize
declare void @WriteMSF(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: optsize
declare void @WritePhylip(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: optsize
declare void @WriteSELEX(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: optsize
declare void @WriteStockholmOneBlock(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: optsize
declare void @WriteStockholm(%struct._IO_FILE*, %struct.msa_struct*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @MSAGetSeqidx(%struct.msa_struct* nocapture %msa, i8* %name, i32 %guess) #0 {
entry:
  %cmp = icmp sgt i32 %guess, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %0, %guess
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %guess to i64
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %1 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %name, i8* %2) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %index = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 39
  %3 = load %struct.GKI** %index, align 8, !tbaa !0
  %call4 = tail call i32 @GKIKeyIndex(%struct.GKI* %3, i8* %name) #6
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %4 = load %struct.GKI** %index, align 8, !tbaa !0
  %call9 = tail call i32 @GKIStoreKey(%struct.GKI* %4, i8* %name) #6
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 40
  %5 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %call9, %5
  br i1 %cmp10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  tail call void @MSAExpand(%struct.msa_struct* %msa) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.then11
  %call13 = tail call i8* @sre_strdup(i8* %name, i32 -1) #6
  %idxprom14 = sext i32 %call9 to i64
  %sqname15 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %6 = load i8*** %sqname15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i8** %6, i64 %idxprom14
  store i8* %call13, i8** %arrayidx16, align 8, !tbaa !0
  %nseq17 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %7 = load i32* %nseq17, align 4, !tbaa !3
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nseq17, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true2, %if.end12
  %retval.0 = phi i32 [ %call9, %if.end12 ], [ %guess, %land.lhs.true2 ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @MSAFromAINFO(i8** nocapture %aseq, %struct.aliinfo_s* nocapture %ainfo) #0 {
entry:
  %nseq = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2
  %0 = load i32* %nseq, align 4, !tbaa !3
  %alen = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1
  %1 = load i32* %alen, align 4, !tbaa !3
  %call = tail call %struct.msa_struct* @MSAAlloc(i32 %0, i32 %1) #8
  %2 = load i32* %nseq, align 4, !tbaa !3
  %cmp315 = icmp sgt i32 %2, 0
  br i1 %cmp315, label %for.body.lr.ph, label %for.end139

for.body.lr.ph:                                   ; preds = %entry
  %aseq2 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 0
  %wgt = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3
  %wgt9 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 2
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  %sqname = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 1
  %alen16 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 3
  %sqlen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 42
  %index = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 39
  %sa = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 17
  %nseqalloc96 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 40
  %salen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 44
  %ss = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 16
  %sslen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc137
  %indvars.iv319 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next320, %for.inc137 ]
  %3 = load i8*** %aseq2, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %3, i64 %indvars.iv319
  %4 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i8** %aseq, i64 %indvars.iv319
  %5 = load i8** %arrayidx4, align 8, !tbaa !0
  %call5 = tail call i8* @strcpy(i8* %4, i8* %5) #6
  %6 = load float** %wgt, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds float* %6, i64 %indvars.iv319
  %7 = load float* %arrayidx7, align 4, !tbaa !4
  %8 = load float** %wgt9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds float* %8, i64 %indvars.iv319
  store float %7, float* %arrayidx10, align 4, !tbaa !4
  %9 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %9, i64 %indvars.iv319, i32 1, i64 0
  %call13 = tail call i8* @sre_strdup(i8* %arraydecay, i32 -1) #6
  %10 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8** %10, i64 %indvars.iv319
  store i8* %call13, i8** %arrayidx15, align 8, !tbaa !0
  %11 = load i32* %alen16, align 4, !tbaa !3
  %12 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %12, i64 %indvars.iv319
  store i32 %11, i32* %arrayidx18, align 4, !tbaa !3
  %13 = load %struct.GKI** %index, align 8, !tbaa !0
  %14 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i8** %14, i64 %indvars.iv319
  %15 = load i8** %arrayidx21, align 8, !tbaa !0
  %call22 = tail call i32 @GKIStoreKey(%struct.GKI* %13, i8* %15) #6
  %16 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv319, i32 0
  %17 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %17, 4
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arraydecay29 = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv319, i32 3, i64 0
  %18 = trunc i64 %indvars.iv319 to i32
  tail call void @MSASetSeqAccession(%struct.msa_struct* %call, i32 %18, i8* %arraydecay29) #8
  %.pre322 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags33.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre322, i64 %indvars.iv319, i32 0
  %.pre323 = load i32* %flags33.phi.trans.insert, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %19 = phi i32 [ %17, %for.body ], [ %.pre323, %if.then ]
  %20 = phi %struct.seqinfo_s* [ %16, %for.body ], [ %.pre322, %if.then ]
  %and34 = and i32 %19, 8
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end
  %arraydecay40 = getelementptr inbounds %struct.seqinfo_s* %20, i64 %indvars.iv319, i32 4, i64 0
  %21 = trunc i64 %indvars.iv319 to i32
  tail call void @MSASetSeqDescription(%struct.msa_struct* %call, i32 %21, i8* %arraydecay40) #8
  %.pre324 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags45.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre324, i64 %indvars.iv319, i32 0
  %.pre325 = load i32* %flags45.phi.trans.insert, align 4, !tbaa !3
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then36
  %22 = phi i32 [ %19, %if.end ], [ %.pre325, %if.then36 ]
  %23 = phi %struct.seqinfo_s* [ %20, %if.end ], [ %.pre324, %if.then36 ]
  %and46 = and i32 %22, 512
  %tobool47 = icmp eq i32 %and46, 0
  br i1 %tobool47, label %if.end85, label %if.then48

if.then48:                                        ; preds = %if.end41
  %24 = load i8*** %ss, align 8, !tbaa !0
  %cmp49 = icmp eq i8** %24, null
  br i1 %cmp49, label %if.then50, label %if.end68

if.then50:                                        ; preds = %if.then48
  %25 = load i32* %nseqalloc96, align 4, !tbaa !3
  %conv = sext i32 %25 to i64
  %mul = shl nsw i64 %conv, 3
  %call51 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1055, i64 %mul) #6
  %26 = bitcast i8* %call51 to i8**
  store i8** %26, i8*** %ss, align 8, !tbaa !0
  %27 = load i32* %nseqalloc96, align 4, !tbaa !3
  %conv54 = sext i32 %27 to i64
  %mul55 = shl nsw i64 %conv54, 2
  %call56 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1056, i64 %mul55) #6
  %28 = bitcast i8* %call56 to i32*
  store i32* %28, i32** %sslen, align 8, !tbaa !0
  %29 = load i32* %nseqalloc96, align 4, !tbaa !3
  %cmp59311 = icmp sgt i32 %29, 0
  br i1 %cmp59311, label %for.body61, label %if.end68.loopexit

for.body61:                                       ; preds = %if.then50, %for.body61
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body61 ], [ 0, %if.then50 ]
  %30 = load i8*** %ss, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i8** %30, i64 %indvars.iv
  store i8* null, i8** %arrayidx64, align 8, !tbaa !0
  %31 = load i32** %sslen, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i32* %31, i64 %indvars.iv
  store i32 0, i32* %arrayidx67, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %32 = load i32* %nseqalloc96, align 4, !tbaa !3
  %33 = trunc i64 %indvars.iv.next to i32
  %cmp59 = icmp slt i32 %33, %32
  br i1 %cmp59, label %for.body61, label %if.end68.loopexit

if.end68.loopexit:                                ; preds = %for.body61, %if.then50
  %.pre330 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %.pre331 = load i8*** %ss, align 8, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %if.end68.loopexit, %if.then48
  %34 = phi i8** [ %.pre331, %if.end68.loopexit ], [ %24, %if.then48 ]
  %35 = phi %struct.seqinfo_s* [ %.pre330, %if.end68.loopexit ], [ %23, %if.then48 ]
  %36 = load i8*** %aseq2, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i8** %36, i64 %indvars.iv319
  %37 = load i8** %arrayidx71, align 8, !tbaa !0
  %38 = load i32* %alen16, align 4, !tbaa !3
  %ss76 = getelementptr inbounds %struct.seqinfo_s* %35, i64 %indvars.iv319, i32 10
  %39 = load i8** %ss76, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i8** %34, i64 %indvars.iv319
  %call80 = tail call i32 @MakeAlignedString(i8* %37, i32 %38, i8* %39, i8** %arrayidx79) #6
  %40 = load i32* %alen16, align 4, !tbaa !3
  %41 = load i32** %sslen, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds i32* %41, i64 %indvars.iv319
  store i32 %40, i32* %arrayidx84, align 4, !tbaa !3
  %.pre326 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags89.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre326, i64 %indvars.iv319, i32 0
  %.pre327 = load i32* %flags89.phi.trans.insert, align 4, !tbaa !3
  br label %if.end85

if.end85:                                         ; preds = %if.end41, %if.end68
  %42 = phi i32 [ %22, %if.end41 ], [ %.pre327, %if.end68 ]
  %43 = phi %struct.seqinfo_s* [ %23, %if.end41 ], [ %.pre326, %if.end68 ]
  %and90 = and i32 %42, 1024
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %for.inc137, label %if.then92

if.then92:                                        ; preds = %if.end85
  %44 = load i8*** %sa, align 8, !tbaa !0
  %cmp93 = icmp eq i8** %44, null
  br i1 %cmp93, label %if.then95, label %if.end119

if.then95:                                        ; preds = %if.then92
  %45 = load i32* %nseqalloc96, align 4, !tbaa !3
  %conv97 = sext i32 %45 to i64
  %mul98 = shl nsw i64 %conv97, 3
  %call99 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1068, i64 %mul98) #6
  %46 = bitcast i8* %call99 to i8**
  store i8** %46, i8*** %sa, align 8, !tbaa !0
  %47 = load i32* %nseqalloc96, align 4, !tbaa !3
  %conv102 = sext i32 %47 to i64
  %mul103 = shl nsw i64 %conv102, 2
  %call104 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1069, i64 %mul103) #6
  %48 = bitcast i8* %call104 to i32*
  store i32* %48, i32** %salen, align 8, !tbaa !0
  %49 = load i32* %nseqalloc96, align 4, !tbaa !3
  %cmp107313 = icmp sgt i32 %49, 0
  br i1 %cmp107313, label %for.body109, label %if.end119.loopexit

for.body109:                                      ; preds = %if.then95, %for.body109
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %for.body109 ], [ 0, %if.then95 ]
  %50 = load i8*** %sa, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i8** %50, i64 %indvars.iv317
  store i8* null, i8** %arrayidx112, align 8, !tbaa !0
  %51 = load i32** %salen, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32* %51, i64 %indvars.iv317
  store i32 0, i32* %arrayidx115, align 4, !tbaa !3
  %indvars.iv.next318 = add i64 %indvars.iv317, 1
  %52 = load i32* %nseqalloc96, align 4, !tbaa !3
  %53 = trunc i64 %indvars.iv.next318 to i32
  %cmp107 = icmp slt i32 %53, %52
  br i1 %cmp107, label %for.body109, label %if.end119.loopexit

if.end119.loopexit:                               ; preds = %for.body109, %if.then95
  %.pre328 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %.pre329 = load i8*** %sa, align 8, !tbaa !0
  br label %if.end119

if.end119:                                        ; preds = %if.end119.loopexit, %if.then92
  %54 = phi i8** [ %.pre329, %if.end119.loopexit ], [ %44, %if.then92 ]
  %55 = phi %struct.seqinfo_s* [ %.pre328, %if.end119.loopexit ], [ %43, %if.then92 ]
  %56 = load i8*** %aseq2, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i8** %56, i64 %indvars.iv319
  %57 = load i8** %arrayidx122, align 8, !tbaa !0
  %58 = load i32* %alen16, align 4, !tbaa !3
  %sa127 = getelementptr inbounds %struct.seqinfo_s* %55, i64 %indvars.iv319, i32 11
  %59 = load i8** %sa127, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i8** %54, i64 %indvars.iv319
  %call131 = tail call i32 @MakeAlignedString(i8* %57, i32 %58, i8* %59, i8** %arrayidx130) #6
  %60 = load i32* %alen16, align 4, !tbaa !3
  %61 = load i32** %salen, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %61, i64 %indvars.iv319
  store i32 %60, i32* %arrayidx135, align 4, !tbaa !3
  br label %for.inc137

for.inc137:                                       ; preds = %if.end85, %if.end119
  %indvars.iv.next320 = add i64 %indvars.iv319, 1
  %62 = load i32* %nseq, align 4, !tbaa !3
  %63 = trunc i64 %indvars.iv.next320 to i32
  %cmp = icmp slt i32 %63, %62
  br i1 %cmp, label %for.body, label %for.end139

for.end139:                                       ; preds = %for.inc137, %entry
  %name140 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7
  %64 = load i8** %name140, align 8, !tbaa !0
  %call141 = tail call i8* @sre_strdup(i8* %64, i32 -1) #6
  %name142 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 7
  store i8* %call141, i8** %name142, align 8, !tbaa !0
  %desc143 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 8
  %65 = load i8** %desc143, align 8, !tbaa !0
  %call144 = tail call i8* @sre_strdup(i8* %65, i32 -1) #6
  %desc145 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 8
  store i8* %call144, i8** %desc145, align 8, !tbaa !0
  %acc146 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 9
  %66 = load i8** %acc146, align 8, !tbaa !0
  %call147 = tail call i8* @sre_strdup(i8* %66, i32 -1) #6
  %acc148 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 9
  store i8* %call147, i8** %acc148, align 8, !tbaa !0
  %au = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 10
  %67 = load i8** %au, align 8, !tbaa !0
  %call149 = tail call i8* @sre_strdup(i8* %67, i32 -1) #6
  %au150 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 10
  store i8* %call149, i8** %au150, align 8, !tbaa !0
  %cs = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4
  %68 = load i8** %cs, align 8, !tbaa !0
  %call151 = tail call i8* @sre_strdup(i8* %68, i32 -1) #6
  %ss_cons = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 11
  store i8* %call151, i8** %ss_cons, align 8, !tbaa !0
  %rf = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5
  %69 = load i8** %rf, align 8, !tbaa !0
  %call152 = tail call i8* @sre_strdup(i8* %69, i32 -1) #6
  %rf153 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 13
  store i8* %call152, i8** %rf153, align 8, !tbaa !0
  %flags154 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0
  %70 = load i32* %flags154, align 4, !tbaa !3
  %and155 = and i32 %70, 1
  %tobool156 = icmp eq i32 %and155, 0
  br i1 %tobool156, label %if.end164, label %if.then157

if.then157:                                       ; preds = %for.end139
  %tc1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 11
  %71 = load float* %tc1, align 4, !tbaa !4
  %arrayidx158 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 0
  store float %71, float* %arrayidx158, align 4, !tbaa !4
  %arrayidx159 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 0
  store i32 1, i32* %arrayidx159, align 4, !tbaa !3
  %tc2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 12
  %72 = load float* %tc2, align 4, !tbaa !4
  %arrayidx161 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 1
  store float %72, float* %arrayidx161, align 4, !tbaa !4
  %arrayidx163 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 1
  store i32 1, i32* %arrayidx163, align 4, !tbaa !3
  %.pre = load i32* %flags154, align 4, !tbaa !3
  br label %if.end164

if.end164:                                        ; preds = %for.end139, %if.then157
  %73 = phi i32 [ %70, %for.end139 ], [ %.pre, %if.then157 ]
  %and166 = and i32 %73, 2
  %tobool167 = icmp eq i32 %and166, 0
  br i1 %tobool167, label %if.end177, label %if.then168

if.then168:                                       ; preds = %if.end164
  %nc1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 13
  %74 = load float* %nc1, align 4, !tbaa !4
  %arrayidx170 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 4
  store float %74, float* %arrayidx170, align 4, !tbaa !4
  %arrayidx172 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 4
  store i32 1, i32* %arrayidx172, align 4, !tbaa !3
  %nc2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 14
  %75 = load float* %nc2, align 4, !tbaa !4
  %arrayidx174 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 5
  store float %75, float* %arrayidx174, align 4, !tbaa !4
  %arrayidx176 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 5
  store i32 1, i32* %arrayidx176, align 4, !tbaa !3
  %.pre321 = load i32* %flags154, align 4, !tbaa !3
  br label %if.end177

if.end177:                                        ; preds = %if.end164, %if.then168
  %76 = phi i32 [ %73, %if.end164 ], [ %.pre321, %if.then168 ]
  %and179 = and i32 %76, 4
  %tobool180 = icmp eq i32 %and179, 0
  br i1 %tobool180, label %if.end190, label %if.then181

if.then181:                                       ; preds = %if.end177
  %ga1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 15
  %77 = load float* %ga1, align 4, !tbaa !4
  %arrayidx183 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 2
  store float %77, float* %arrayidx183, align 4, !tbaa !4
  %arrayidx185 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 2
  store i32 1, i32* %arrayidx185, align 4, !tbaa !3
  %ga2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 16
  %78 = load float* %ga2, align 4, !tbaa !4
  %arrayidx187 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 3
  store float %78, float* %arrayidx187, align 4, !tbaa !4
  %arrayidx189 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 3
  store i32 1, i32* %arrayidx189, align 4, !tbaa !3
  br label %if.end190

if.end190:                                        ; preds = %if.end177, %if.then181
  %79 = load i32* %nseq, align 4, !tbaa !3
  %nseq192 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 4
  store i32 %79, i32* %nseq192, align 4, !tbaa !3
  %80 = load i32* %alen, align 4, !tbaa !3
  %alen194 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 3
  store i32 %80, i32* %alen194, align 4, !tbaa !3
  ret %struct.msa_struct* %call
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #1

; Function Attrs: optsize
declare i32 @SeqfileFormat(%struct._IO_FILE*) #1

; Function Attrs: optsize
declare i8* @SeqfileFormat2String(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @MSAMingap(%struct.msa_struct* %msa) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1157, i64 %mul) #6
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %alen, align 4, !tbaa !3
  %cmp87 = icmp sgt i32 %2, 0
  br i1 %cmp87, label %for.cond3.preheader.lr.ph, label %for.end58

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.end
  %indvars.iv90 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next91, %for.end ]
  %3 = load i32* %nseq, align 4, !tbaa !3
  %cmp484 = icmp sgt i32 %3, 0
  br i1 %cmp484, label %for.body6.lr.ph, label %for.end

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %4 = load i8*** %aseq, align 8, !tbaa !0
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %idx.085 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv
  %5 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8* %5, i64 %indvars.iv90
  %6 = load i8* %arrayidx8, align 1, !tbaa !1
  switch i8 %6, label %for.end [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

for.inc:                                          ; preds = %for.body6, %for.body6, %for.body6, %for.body6, %for.body6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.085, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %7, %3
  br i1 %cmp4, label %for.body6, label %for.end

for.end:                                          ; preds = %for.inc, %for.body6, %for.cond3.preheader
  %idx.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %idx.085, %for.body6 ], [ %inc, %for.inc ]
  %arrayidx52 = getelementptr inbounds i32* %1, i64 %indvars.iv90
  %not.cmp48 = icmp ne i32 %idx.0.lcssa, %3
  %. = zext i1 %not.cmp48 to i32
  store i32 %., i32* %arrayidx52, align 4, !tbaa !3
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %8 = load i32* %alen, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next91 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.cond3.preheader, label %for.end58

for.end58:                                        ; preds = %for.end, %entry
  tail call void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* %1) #8
  tail call void @free(i8* %call) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* nocapture %useme) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  %cmp343 = icmp sgt i32 %0, 0
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  br i1 %cmp343, label %for.body.lr.ph, label %for.end124

for.body.lr.ph:                                   ; preds = %entry
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc122
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %36, %for.inc122 ]
  %indvars.iv357 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next358, %for.inc122 ]
  %mpos.0345 = phi i32 [ 0, %for.body.lr.ph ], [ %mpos.1, %for.inc122 ]
  %arrayidx = getelementptr inbounds i32* %useme, i64 %indvars.iv357
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %for.inc122, label %if.end

if.end:                                           ; preds = %for.body
  %3 = trunc i64 %indvars.iv357 to i32
  %cmp2 = icmp eq i32 %mpos.0345, %3
  br i1 %cmp2, label %if.end120, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %if.end
  %4 = load i32* %nseq, align 4, !tbaa !3
  %cmp5339 = icmp sgt i32 %4, 0
  br i1 %cmp5339, label %for.body6.lr.ph, label %for.end77

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %idxprom11 = sext i32 %mpos.0345 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc75
  %indvars.iv353 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next354, %for.inc75 ]
  %5 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %5, i64 %indvars.iv353
  %6 = load i8** %arrayidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8* %6, i64 %indvars.iv357
  %7 = load i8* %arrayidx10, align 1, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8* %6, i64 %idxprom11
  store i8 %7, i8* %arrayidx15, align 1, !tbaa !1
  %8 = load i8*** %ss, align 8, !tbaa !0
  %cmp16 = icmp eq i8** %8, null
  br i1 %cmp16, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  %arrayidx19 = getelementptr inbounds i8** %8, i64 %indvars.iv353
  %9 = load i8** %arrayidx19, align 8, !tbaa !0
  %cmp20 = icmp eq i8* %9, null
  br i1 %cmp20, label %if.end32, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %arrayidx26 = getelementptr inbounds i8* %9, i64 %indvars.iv357
  %10 = load i8* %arrayidx26, align 1, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8* %9, i64 %idxprom11
  store i8 %10, i8* %arrayidx31, align 1, !tbaa !1
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %for.body6, %if.then21
  %11 = load i8*** %sa, align 8, !tbaa !0
  %cmp33 = icmp eq i8** %11, null
  br i1 %cmp33, label %for.cond51.preheader, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end32
  %arrayidx37 = getelementptr inbounds i8** %11, i64 %indvars.iv353
  %12 = load i8** %arrayidx37, align 8, !tbaa !0
  %cmp38 = icmp eq i8* %12, null
  br i1 %cmp38, label %for.cond51.preheader, label %if.then39

if.then39:                                        ; preds = %land.lhs.true34
  %arrayidx44 = getelementptr inbounds i8* %12, i64 %indvars.iv357
  %13 = load i8* %arrayidx44, align 1, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8* %12, i64 %idxprom11
  store i8 %13, i8* %arrayidx49, align 1, !tbaa !1
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %land.lhs.true34, %if.end32, %if.then39
  %14 = load i32* %ngr, align 4, !tbaa !3
  %cmp52337 = icmp sgt i32 %14, 0
  br i1 %cmp52337, label %for.body53, label %for.inc75

for.body53:                                       ; preds = %for.inc, %for.cond51.preheader
  %15 = phi i32 [ %14, %for.cond51.preheader ], [ %20, %for.inc ]
  %indvars.iv351 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next352, %for.inc ]
  %16 = load i8**** %gr, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i8*** %16, i64 %indvars.iv351
  %17 = load i8*** %arrayidx56, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i8** %17, i64 %indvars.iv353
  %18 = load i8** %arrayidx57, align 8, !tbaa !0
  %cmp58 = icmp eq i8* %18, null
  br i1 %cmp58, label %for.inc, label %if.then59

if.then59:                                        ; preds = %for.body53
  %arrayidx66 = getelementptr inbounds i8* %18, i64 %indvars.iv357
  %19 = load i8* %arrayidx66, align 1, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8* %18, i64 %idxprom11
  store i8 %19, i8* %arrayidx73, align 1, !tbaa !1
  %.pre361 = load i32* %ngr, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body53, %if.then59
  %20 = phi i32 [ %15, %for.body53 ], [ %.pre361, %if.then59 ]
  %indvars.iv.next352 = add i64 %indvars.iv351, 1
  %21 = trunc i64 %indvars.iv.next352 to i32
  %cmp52 = icmp slt i32 %21, %20
  br i1 %cmp52, label %for.body53, label %for.inc75

for.inc75:                                        ; preds = %for.inc, %for.cond51.preheader
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  %22 = load i32* %nseq, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv.next354 to i32
  %cmp5 = icmp slt i32 %23, %22
  br i1 %cmp5, label %for.body6, label %for.end77

for.end77:                                        ; preds = %for.inc75, %for.cond4.preheader
  %24 = load i8** %ss_cons, align 8, !tbaa !0
  %cmp78 = icmp eq i8* %24, null
  br i1 %cmp78, label %if.end86, label %if.then79

if.then79:                                        ; preds = %for.end77
  %arrayidx82 = getelementptr inbounds i8* %24, i64 %indvars.iv357
  %25 = load i8* %arrayidx82, align 1, !tbaa !1
  %idxprom83 = sext i32 %mpos.0345 to i64
  %arrayidx85 = getelementptr inbounds i8* %24, i64 %idxprom83
  store i8 %25, i8* %arrayidx85, align 1, !tbaa !1
  br label %if.end86

if.end86:                                         ; preds = %for.end77, %if.then79
  %26 = load i8** %sa_cons, align 8, !tbaa !0
  %cmp87 = icmp eq i8* %26, null
  br i1 %cmp87, label %if.end95, label %if.then88

if.then88:                                        ; preds = %if.end86
  %arrayidx91 = getelementptr inbounds i8* %26, i64 %indvars.iv357
  %27 = load i8* %arrayidx91, align 1, !tbaa !1
  %idxprom92 = sext i32 %mpos.0345 to i64
  %arrayidx94 = getelementptr inbounds i8* %26, i64 %idxprom92
  store i8 %27, i8* %arrayidx94, align 1, !tbaa !1
  br label %if.end95

if.end95:                                         ; preds = %if.end86, %if.then88
  %28 = load i8** %rf, align 8, !tbaa !0
  %cmp96 = icmp eq i8* %28, null
  br i1 %cmp96, label %for.cond105.preheader, label %if.then97

if.then97:                                        ; preds = %if.end95
  %arrayidx100 = getelementptr inbounds i8* %28, i64 %indvars.iv357
  %29 = load i8* %arrayidx100, align 1, !tbaa !1
  %idxprom101 = sext i32 %mpos.0345 to i64
  %arrayidx103 = getelementptr inbounds i8* %28, i64 %idxprom101
  store i8 %29, i8* %arrayidx103, align 1, !tbaa !1
  br label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %if.end95, %if.then97
  %30 = load i32* %ngc, align 4, !tbaa !3
  %cmp106341 = icmp sgt i32 %30, 0
  br i1 %cmp106341, label %for.body107.lr.ph, label %if.end120.loopexit

for.body107.lr.ph:                                ; preds = %for.cond105.preheader
  %idxprom112 = sext i32 %mpos.0345 to i64
  br label %for.body107

for.body107:                                      ; preds = %for.body107.lr.ph, %for.body107
  %indvars.iv355 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next356, %for.body107 ]
  %31 = load i8*** %gc, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i8** %31, i64 %indvars.iv355
  %32 = load i8** %arrayidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i8* %32, i64 %indvars.iv357
  %33 = load i8* %arrayidx111, align 1, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8* %32, i64 %idxprom112
  store i8 %33, i8* %arrayidx116, align 1, !tbaa !1
  %indvars.iv.next356 = add i64 %indvars.iv355, 1
  %34 = load i32* %ngc, align 4, !tbaa !3
  %35 = trunc i64 %indvars.iv.next356 to i32
  %cmp106 = icmp slt i32 %35, %34
  br i1 %cmp106, label %for.body107, label %if.end120.loopexit

if.end120.loopexit:                               ; preds = %for.body107, %for.cond105.preheader
  %.pre359.pre = load i32* %alen, align 4, !tbaa !3
  br label %if.end120

if.end120:                                        ; preds = %if.end120.loopexit, %if.end
  %.pre359 = phi i32 [ %.pre359.pre, %if.end120.loopexit ], [ %1, %if.end ]
  %inc121 = add nsw i32 %mpos.0345, 1
  br label %for.inc122

for.inc122:                                       ; preds = %for.body, %if.end120
  %36 = phi i32 [ %1, %for.body ], [ %.pre359, %if.end120 ]
  %mpos.1 = phi i32 [ %mpos.0345, %for.body ], [ %inc121, %if.end120 ]
  %indvars.iv.next358 = add i64 %indvars.iv357, 1
  %37 = trunc i64 %indvars.iv.next358 to i32
  %cmp = icmp slt i32 %37, %36
  br i1 %cmp, label %for.body, label %for.end124

for.end124:                                       ; preds = %entry, %for.inc122
  %mpos.0.lcssa = phi i32 [ %mpos.1, %for.inc122 ], [ 0, %entry ]
  store i32 %mpos.0.lcssa, i32* %alen, align 4, !tbaa !3
  %38 = load i32* %nseq, align 4, !tbaa !3
  %cmp128335 = icmp sgt i32 %38, 0
  br i1 %cmp128335, label %for.body129.lr.ph, label %for.end187

for.body129.lr.ph:                                ; preds = %for.end124
  %idxprom130 = sext i32 %mpos.0.lcssa to i64
  %aseq132 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %ss135 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %sa149 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %ngr164 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %gr169 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  br label %for.body129

for.body129:                                      ; preds = %for.body129.lr.ph, %for.inc185
  %indvars.iv349 = phi i64 [ 0, %for.body129.lr.ph ], [ %indvars.iv.next350, %for.inc185 ]
  %39 = load i8*** %aseq132, align 8, !tbaa !0
  %arrayidx133 = getelementptr inbounds i8** %39, i64 %indvars.iv349
  %40 = load i8** %arrayidx133, align 8, !tbaa !0
  %arrayidx134 = getelementptr inbounds i8* %40, i64 %idxprom130
  store i8 0, i8* %arrayidx134, align 1, !tbaa !1
  %41 = load i8*** %ss135, align 8, !tbaa !0
  %cmp136 = icmp eq i8** %41, null
  br i1 %cmp136, label %if.end148, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %for.body129
  %arrayidx140 = getelementptr inbounds i8** %41, i64 %indvars.iv349
  %42 = load i8** %arrayidx140, align 8, !tbaa !0
  %cmp141 = icmp eq i8* %42, null
  br i1 %cmp141, label %if.end148, label %if.then142

if.then142:                                       ; preds = %land.lhs.true137
  %arrayidx147 = getelementptr inbounds i8* %42, i64 %idxprom130
  store i8 0, i8* %arrayidx147, align 1, !tbaa !1
  br label %if.end148

if.end148:                                        ; preds = %land.lhs.true137, %for.body129, %if.then142
  %43 = load i8*** %sa149, align 8, !tbaa !0
  %cmp150 = icmp eq i8** %43, null
  br i1 %cmp150, label %for.cond163.preheader, label %land.lhs.true151

land.lhs.true151:                                 ; preds = %if.end148
  %arrayidx154 = getelementptr inbounds i8** %43, i64 %indvars.iv349
  %44 = load i8** %arrayidx154, align 8, !tbaa !0
  %cmp155 = icmp eq i8* %44, null
  br i1 %cmp155, label %for.cond163.preheader, label %if.then156

if.then156:                                       ; preds = %land.lhs.true151
  %arrayidx161 = getelementptr inbounds i8* %44, i64 %idxprom130
  store i8 0, i8* %arrayidx161, align 1, !tbaa !1
  br label %for.cond163.preheader

for.cond163.preheader:                            ; preds = %land.lhs.true151, %if.end148, %if.then156
  %45 = load i32* %ngr164, align 4, !tbaa !3
  %cmp165333 = icmp sgt i32 %45, 0
  br i1 %cmp165333, label %for.body166, label %for.inc185

for.body166:                                      ; preds = %for.inc182, %for.cond163.preheader
  %46 = phi i32 [ %45, %for.cond163.preheader ], [ %50, %for.inc182 ]
  %indvars.iv347 = phi i64 [ 0, %for.cond163.preheader ], [ %indvars.iv.next348, %for.inc182 ]
  %47 = load i8**** %gr169, align 8, !tbaa !0
  %arrayidx170 = getelementptr inbounds i8*** %47, i64 %indvars.iv347
  %48 = load i8*** %arrayidx170, align 8, !tbaa !0
  %arrayidx171 = getelementptr inbounds i8** %48, i64 %indvars.iv349
  %49 = load i8** %arrayidx171, align 8, !tbaa !0
  %cmp172 = icmp eq i8* %49, null
  br i1 %cmp172, label %for.inc182, label %if.then173

if.then173:                                       ; preds = %for.body166
  %arrayidx180 = getelementptr inbounds i8* %49, i64 %idxprom130
  store i8 0, i8* %arrayidx180, align 1, !tbaa !1
  %.pre = load i32* %ngr164, align 4, !tbaa !3
  br label %for.inc182

for.inc182:                                       ; preds = %for.body166, %if.then173
  %50 = phi i32 [ %46, %for.body166 ], [ %.pre, %if.then173 ]
  %indvars.iv.next348 = add i64 %indvars.iv347, 1
  %51 = trunc i64 %indvars.iv.next348 to i32
  %cmp165 = icmp slt i32 %51, %50
  br i1 %cmp165, label %for.body166, label %for.inc185

for.inc185:                                       ; preds = %for.inc182, %for.cond163.preheader
  %indvars.iv.next350 = add i64 %indvars.iv349, 1
  %52 = load i32* %nseq, align 4, !tbaa !3
  %53 = trunc i64 %indvars.iv.next350 to i32
  %cmp128 = icmp slt i32 %53, %52
  br i1 %cmp128, label %for.body129, label %for.end187

for.end187:                                       ; preds = %for.inc185, %for.end124
  %ss_cons188 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %54 = load i8** %ss_cons188, align 8, !tbaa !0
  %cmp189 = icmp eq i8* %54, null
  br i1 %cmp189, label %if.end194, label %if.then190

if.then190:                                       ; preds = %for.end187
  %idxprom191 = sext i32 %mpos.0.lcssa to i64
  %arrayidx193 = getelementptr inbounds i8* %54, i64 %idxprom191
  store i8 0, i8* %arrayidx193, align 1, !tbaa !1
  br label %if.end194

if.end194:                                        ; preds = %for.end187, %if.then190
  %sa_cons195 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %55 = load i8** %sa_cons195, align 8, !tbaa !0
  %cmp196 = icmp eq i8* %55, null
  br i1 %cmp196, label %if.end201, label %if.then197

if.then197:                                       ; preds = %if.end194
  %idxprom198 = sext i32 %mpos.0.lcssa to i64
  %arrayidx200 = getelementptr inbounds i8* %55, i64 %idxprom198
  store i8 0, i8* %arrayidx200, align 1, !tbaa !1
  br label %if.end201

if.end201:                                        ; preds = %if.end194, %if.then197
  %rf202 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %56 = load i8** %rf202, align 8, !tbaa !0
  %cmp203 = icmp eq i8* %56, null
  br i1 %cmp203, label %for.cond209.preheader, label %if.then204

if.then204:                                       ; preds = %if.end201
  %idxprom205 = sext i32 %mpos.0.lcssa to i64
  %arrayidx207 = getelementptr inbounds i8* %56, i64 %idxprom205
  store i8 0, i8* %arrayidx207, align 1, !tbaa !1
  br label %for.cond209.preheader

for.cond209.preheader:                            ; preds = %if.end201, %if.then204
  %ngc210 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34
  %57 = load i32* %ngc210, align 4, !tbaa !3
  %cmp211331 = icmp sgt i32 %57, 0
  br i1 %cmp211331, label %for.body212.lr.ph, label %for.end220

for.body212.lr.ph:                                ; preds = %for.cond209.preheader
  %idxprom213 = sext i32 %mpos.0.lcssa to i64
  %gc215 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  br label %for.body212

for.body212:                                      ; preds = %for.body212.lr.ph, %for.body212
  %indvars.iv = phi i64 [ 0, %for.body212.lr.ph ], [ %indvars.iv.next, %for.body212 ]
  %58 = load i8*** %gc215, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i8** %58, i64 %indvars.iv
  %59 = load i8** %arrayidx216, align 8, !tbaa !0
  %arrayidx217 = getelementptr inbounds i8* %59, i64 %idxprom213
  store i8 0, i8* %arrayidx217, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %60 = load i32* %ngc210, align 4, !tbaa !3
  %61 = trunc i64 %indvars.iv.next to i32
  %cmp211 = icmp slt i32 %61, %60
  br i1 %cmp211, label %for.body212, label %for.end220

for.end220:                                       ; preds = %for.body212, %for.cond209.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSANogap(%struct.msa_struct* %msa) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1189, i64 %mul) #6
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %alen, align 4, !tbaa !3
  %cmp87 = icmp sgt i32 %2, 0
  br i1 %cmp87, label %for.cond3.preheader.lr.ph, label %for.end58

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.end
  %indvars.iv90 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next91, %for.end ]
  %3 = load i32* %nseq, align 4, !tbaa !3
  %cmp484 = icmp sgt i32 %3, 0
  br i1 %cmp484, label %for.body6.lr.ph, label %for.end

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %4 = load i8*** %aseq, align 8, !tbaa !0
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %idx.085 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv
  %5 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8* %5, i64 %indvars.iv90
  %6 = load i8* %arrayidx8, align 1, !tbaa !1
  switch i8 %6, label %for.inc [
    i8 32, label %for.end
    i8 46, label %for.end
    i8 95, label %for.end
    i8 45, label %for.end
    i8 126, label %for.end
  ]

for.inc:                                          ; preds = %for.body6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.085, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %7, %3
  br i1 %cmp4, label %for.body6, label %for.end

for.end:                                          ; preds = %for.inc, %for.body6, %for.body6, %for.body6, %for.body6, %for.body6, %for.cond3.preheader
  %idx.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %idx.085, %for.body6 ], [ %inc, %for.inc ]
  %cmp48 = icmp eq i32 %idx.0.lcssa, %3
  %arrayidx52 = getelementptr inbounds i32* %1, i64 %indvars.iv90
  %. = zext i1 %cmp48 to i32
  store i32 %., i32* %arrayidx52, align 4, !tbaa !3
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %8 = load i32* %alen, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next91 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.cond3.preheader, label %for.end58

for.end58:                                        ; preds = %for.end, %entry
  tail call void @MSAShorterAlignment(%struct.msa_struct* %msa, i32* %1) #8
  tail call void @free(i8* %call) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* nocapture %useme, %struct.msa_struct** nocapture %ret_new) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !3
  %cmp230 = icmp sgt i32 %0, 0
  br i1 %cmp230, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %for.body ], [ 0, %entry ]
  %nnew.0231 = phi i32 [ %nnew.0.inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %useme, i64 %indvars.iv238
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %not.tobool = icmp ne i32 %1, 0
  %inc = zext i1 %not.tobool to i32
  %nnew.0.inc = add nsw i32 %inc, %nnew.0231
  %indvars.iv.next239 = add i64 %indvars.iv238, 1
  %2 = trunc i64 %indvars.iv.next239 to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp2 = icmp eq i32 %nnew.0.inc, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %for.end
  %call = tail call %struct.msa_struct* @MSAAlloc(i32 %nnew.0.inc, i32 0) #8
  %3 = load i32* %nseq, align 4, !tbaa !3
  %cmp7227 = icmp sgt i32 %3, 0
  br i1 %cmp7227, label %for.body8.lr.ph, label %if.end4.for.end99_crit_edge

if.end4.for.end99_crit_edge:                      ; preds = %if.end4
  %nseq100.pre = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 4
  %alen101.pre = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  br label %for.end99

for.body8.lr.ph:                                  ; preds = %if.end4
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %aseq17 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 0
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %sqname24 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 1
  %index = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 39
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %wgt33 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 2
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %sa77 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 17
  %nseq81 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 4
  %ss53 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 16
  br label %for.body8

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc97
  %4 = phi i32 [ %3, %for.body8.lr.ph ], [ %38, %for.inc97 ]
  %indvars.iv236 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next237, %for.inc97 ]
  %nidx.0229 = phi i32 [ 0, %for.body8.lr.ph ], [ %nidx.1, %for.inc97 ]
  %arrayidx10 = getelementptr inbounds i32* %useme, i64 %indvars.iv236
  %5 = load i32* %arrayidx10, align 4, !tbaa !3
  %tobool11 = icmp eq i32 %5, 0
  br i1 %tobool11, label %for.inc97, label %if.then12

if.then12:                                        ; preds = %for.body8
  %6 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i8** %6, i64 %indvars.iv236
  %7 = load i8** %arrayidx14, align 8, !tbaa !0
  %8 = load i32* %alen, align 4, !tbaa !3
  %call15 = tail call i8* @sre_strdup(i8* %7, i32 %8) #6
  %idxprom16 = sext i32 %nidx.0229 to i64
  %9 = load i8*** %aseq17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i8** %9, i64 %idxprom16
  store i8* %call15, i8** %arrayidx18, align 8, !tbaa !0
  %10 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i8** %10, i64 %indvars.iv236
  %11 = load i8** %arrayidx20, align 8, !tbaa !0
  %12 = load i32* %alen, align 4, !tbaa !3
  %call22 = tail call i8* @sre_strdup(i8* %11, i32 %12) #6
  %13 = load i8*** %sqname24, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i8** %13, i64 %idxprom16
  store i8* %call22, i8** %arrayidx25, align 8, !tbaa !0
  %14 = load %struct.GKI** %index, align 8, !tbaa !0
  %15 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i8** %15, i64 %indvars.iv236
  %16 = load i8** %arrayidx28, align 8, !tbaa !0
  %call29 = tail call i32 @GKIStoreKey(%struct.GKI* %14, i8* %16) #6
  %17 = load float** %wgt, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds float* %17, i64 %indvars.iv236
  %18 = load float* %arrayidx31, align 4, !tbaa !4
  %19 = load float** %wgt33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds float* %19, i64 %idxprom16
  store float %18, float* %arrayidx34, align 4, !tbaa !4
  %20 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp35 = icmp eq i8** %20, null
  br i1 %cmp35, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.then12
  %arrayidx39 = getelementptr inbounds i8** %20, i64 %indvars.iv236
  %21 = load i8** %arrayidx39, align 8, !tbaa !0
  tail call void @MSASetSeqAccession(%struct.msa_struct* %call, i32 %nidx.0229, i8* %21) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then12, %if.then36
  %22 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp41 = icmp eq i8** %22, null
  br i1 %cmp41, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end40
  %arrayidx45 = getelementptr inbounds i8** %22, i64 %indvars.iv236
  %23 = load i8** %arrayidx45, align 8, !tbaa !0
  tail call void @MSASetSeqDescription(%struct.msa_struct* %call, i32 %nidx.0229, i8* %23) #8
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.then42
  %24 = load i8*** %ss, align 8, !tbaa !0
  %cmp47 = icmp eq i8** %24, null
  br i1 %cmp47, label %if.end67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end46
  %arrayidx50 = getelementptr inbounds i8** %24, i64 %indvars.iv236
  %25 = load i8** %arrayidx50, align 8, !tbaa !0
  %cmp51 = icmp eq i8* %25, null
  br i1 %cmp51, label %if.end67, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  %26 = load i8*** %ss53, align 8, !tbaa !0
  %cmp54 = icmp eq i8** %26, null
  br i1 %cmp54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.then52
  %27 = load i32* %nseq81, align 4, !tbaa !3
  %conv = sext i32 %27 to i64
  %mul = shl nsw i64 %conv, 3
  %call57 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1333, i64 %mul) #6
  %28 = bitcast i8* %call57 to i8**
  store i8** %28, i8*** %ss53, align 8, !tbaa !0
  %.pre242 = load i8*** %ss, align 8, !tbaa !0
  %arrayidx62.phi.trans.insert = getelementptr inbounds i8** %.pre242, i64 %indvars.iv236
  %.pre243 = load i8** %arrayidx62.phi.trans.insert, align 8, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then52
  %29 = phi i8* [ %.pre243, %if.then55 ], [ %25, %if.then52 ]
  %call63 = tail call i8* @sre_strdup(i8* %29, i32 -1) #6
  %30 = load i8*** %ss53, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i8** %30, i64 %idxprom16
  store i8* %call63, i8** %arrayidx66, align 8, !tbaa !0
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true, %if.end46, %if.end59
  %31 = load i8*** %sa, align 8, !tbaa !0
  %cmp68 = icmp eq i8** %31, null
  br i1 %cmp68, label %if.end94, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end67
  %arrayidx73 = getelementptr inbounds i8** %31, i64 %indvars.iv236
  %32 = load i8** %arrayidx73, align 8, !tbaa !0
  %cmp74 = icmp eq i8* %32, null
  br i1 %cmp74, label %if.end94, label %if.then76

if.then76:                                        ; preds = %land.lhs.true70
  %33 = load i8*** %sa77, align 8, !tbaa !0
  %cmp78 = icmp eq i8** %33, null
  br i1 %cmp78, label %if.then80, label %if.end86

if.then80:                                        ; preds = %if.then76
  %34 = load i32* %nseq81, align 4, !tbaa !3
  %conv82 = sext i32 %34 to i64
  %mul83 = shl nsw i64 %conv82, 3
  %call84 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 1338, i64 %mul83) #6
  %35 = bitcast i8* %call84 to i8**
  store i8** %35, i8*** %sa77, align 8, !tbaa !0
  %.pre240 = load i8*** %sa, align 8, !tbaa !0
  %arrayidx89.phi.trans.insert = getelementptr inbounds i8** %.pre240, i64 %indvars.iv236
  %.pre241 = load i8** %arrayidx89.phi.trans.insert, align 8, !tbaa !0
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %if.then76
  %36 = phi i8* [ %.pre241, %if.then80 ], [ %32, %if.then76 ]
  %call90 = tail call i8* @sre_strdup(i8* %36, i32 -1) #6
  %37 = load i8*** %sa77, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i8** %37, i64 %idxprom16
  store i8* %call90, i8** %arrayidx93, align 8, !tbaa !0
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true70, %if.end67, %if.end86
  %inc95 = add nsw i32 %nidx.0229, 1
  %.pre = load i32* %nseq, align 4, !tbaa !3
  br label %for.inc97

for.inc97:                                        ; preds = %for.body8, %if.end94
  %38 = phi i32 [ %.pre, %if.end94 ], [ %4, %for.body8 ]
  %nidx.1 = phi i32 [ %inc95, %if.end94 ], [ %nidx.0229, %for.body8 ]
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %39 = trunc i64 %indvars.iv.next237 to i32
  %cmp7 = icmp slt i32 %39, %38
  br i1 %cmp7, label %for.body8, label %for.end99

for.end99:                                        ; preds = %for.inc97, %if.end4.for.end99_crit_edge
  %alen101.pre-phi = phi i32* [ %alen101.pre, %if.end4.for.end99_crit_edge ], [ %alen, %for.inc97 ]
  %nseq100.pre-phi = phi i32* [ %nseq100.pre, %if.end4.for.end99_crit_edge ], [ %nseq81, %for.inc97 ]
  store i32 %nnew.0.inc, i32* %nseq100.pre-phi, align 4, !tbaa !3
  %40 = load i32* %alen101.pre-phi, align 4, !tbaa !3
  %alen102 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 3
  store i32 %40, i32* %alen102, align 4, !tbaa !3
  %flags = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5
  %41 = load i32* %flags, align 4, !tbaa !3
  %flags103 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 5
  store i32 %41, i32* %flags103, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 6
  %42 = load i32* %type, align 4, !tbaa !3
  %type104 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 6
  store i32 %42, i32* %type104, align 4, !tbaa !3
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %43 = load i8** %name, align 8, !tbaa !0
  %call105 = tail call i8* @sre_strdup(i8* %43, i32 -1) #6
  %name106 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 7
  store i8* %call105, i8** %name106, align 8, !tbaa !0
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8
  %44 = load i8** %desc, align 8, !tbaa !0
  %call107 = tail call i8* @sre_strdup(i8* %44, i32 -1) #6
  %desc108 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 8
  store i8* %call107, i8** %desc108, align 8, !tbaa !0
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9
  %45 = load i8** %acc, align 8, !tbaa !0
  %call109 = tail call i8* @sre_strdup(i8* %45, i32 -1) #6
  %acc110 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 9
  store i8* %call109, i8** %acc110, align 8, !tbaa !0
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10
  %46 = load i8** %au, align 8, !tbaa !0
  %call111 = tail call i8* @sre_strdup(i8* %46, i32 -1) #6
  %au112 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 10
  store i8* %call111, i8** %au112, align 8, !tbaa !0
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %47 = load i8** %ss_cons, align 8, !tbaa !0
  %call113 = tail call i8* @sre_strdup(i8* %47, i32 -1) #6
  %ss_cons114 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 11
  store i8* %call113, i8** %ss_cons114, align 8, !tbaa !0
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %48 = load i8** %sa_cons, align 8, !tbaa !0
  %call115 = tail call i8* @sre_strdup(i8* %48, i32 -1) #6
  %sa_cons116 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 12
  store i8* %call115, i8** %sa_cons116, align 8, !tbaa !0
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %49 = load i8** %rf, align 8, !tbaa !0
  %call117 = tail call i8* @sre_strdup(i8* %49, i32 -1) #6
  %rf118 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 13
  store i8* %call117, i8** %rf118, align 8, !tbaa !0
  br label %for.body122

for.body122:                                      ; preds = %for.body122, %for.end99
  %indvars.iv = phi i64 [ 0, %for.end99 ], [ %indvars.iv.next, %for.body122 ]
  %arrayidx124 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 %indvars.iv
  %50 = load float* %arrayidx124, align 4, !tbaa !4
  %arrayidx127 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 18, i64 %indvars.iv
  store float %50, float* %arrayidx127, align 4, !tbaa !4
  %arrayidx129 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 %indvars.iv
  %51 = load i32* %arrayidx129, align 4, !tbaa !3
  %arrayidx132 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 19, i64 %indvars.iv
  store i32 %51, i32* %arrayidx132, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %for.end135, label %for.body122

for.end135:                                       ; preds = %for.body122
  %sqlen = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 42
  %52 = load i32** %sqlen, align 8, !tbaa !0
  %53 = bitcast i32* %52 to i8*
  tail call void @free(i8* %53) #6
  tail call void @MSAMingap(%struct.msa_struct* %call) #8
  br label %return

return:                                           ; preds = %entry, %for.end, %for.end135
  %storemerge = phi %struct.msa_struct* [ %call, %for.end135 ], [ null, %for.end ], [ null, %entry ]
  store %struct.msa_struct* %storemerge, %struct.msa_struct** %ret_new, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqAccession(%struct.msa_struct* nocapture %msa, i32 %idx) #4 {
entry:
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %0 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqDescription(%struct.msa_struct* nocapture %msa, i32 %idx) #4 {
entry:
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %0 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqSS(%struct.msa_struct* nocapture %msa, i32 %idx) #4 {
entry:
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %0 = load i8*** %ss, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @MSAGetSeqSA(%struct.msa_struct* nocapture %msa, i32 %idx) #4 {
entry:
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %0 = load i8*** %sa, align 8, !tbaa !0
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8* [ null, %if.else ], [ %1, %land.lhs.true ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @MSAAverageSequenceLength(%struct.msa_struct* nocapture %msa) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %0, 0
  br i1 %cmp12, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %avg.014 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.body ]
  %1 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call = tail call i32 @DealignedLength(i8* %2) #6
  %conv = sitofp i32 %call to float
  %add = fadd float %avg.014, %conv
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i32* %nseq, align 4, !tbaa !3
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %4, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %3, %for.body ]
  %avg.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %cmp2 = icmp eq i32 %.lcssa, 0
  br i1 %cmp2, label %return, label %if.else

if.else:                                          ; preds = %for.end
  %conv5 = sitofp i32 %.lcssa to float
  %div = fdiv float %avg.0.lcssa, %conv5
  br label %return

return:                                           ; preds = %for.end, %if.else
  %retval.0 = phi float [ %div, %if.else ], [ 0.000000e+00, %for.end ]
  ret float %retval.0
}

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
