; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/feat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_s = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i32, void (%struct.feat_s*, float**, float**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/feat.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Reading feature file: '%s'[%d..%d]\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"%s: End frame (%d) <= Start frame (%d)\0A\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"bio_readhdr(%s) failed\0A\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str11 = private unnamed_addr constant [40 x i8] c"%s: Version mismatch: %s, expecting %s\0A\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"%s: fread(#frames) failed\0A\00", align 1
@.str14 = private unnamed_addr constant [37 x i8] c"%s: Missing or bad #feature streams\0A\00", align 1
@.str15 = private unnamed_addr constant [40 x i8] c"%s: Missing or bad feature stream size\0A\00", align 1
@.str16 = private unnamed_addr constant [44 x i8] c"%s: Start frame (%d) beyond file size (%d)\0A\00", align 1
@.str17 = private unnamed_addr constant [57 x i8] c"%s: Feature buffer size(%d frames) < actual #frames(%d)\0A\00", align 1
@.str18 = private unnamed_addr constant [40 x i8] c"%s: fread(%dx%d) (feature data) failed\0A\00", align 1
@.str19 = private unnamed_addr constant [28 x i8] c"Writing feature file: '%s'\0A\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str21 = private unnamed_addr constant [21 x i8] c"fopen(%s,wb) failed\0A\00", align 1
@.str22 = private unnamed_addr constant [39 x i8] c"%s: fwrite(%dx%d feature data) failed\0A\00", align 1
@.str23 = private unnamed_addr constant [32 x i8] c"Reading mfc file: '%s'[%d..%d]\0A\00", align 1
@.str24 = private unnamed_addr constant [29 x i8] c"stat_retry/fopen(%s) failed\0A\00", align 1
@.str25 = private unnamed_addr constant [27 x i8] c"%s: fread(#floats) failed\0A\00", align 1
@.str26 = private unnamed_addr constant [53 x i8] c"%s: Header size field: %d(%08x); filesize: %d(%08x)\0A\00", align 1
@.str27 = private unnamed_addr constant [38 x i8] c"%s: Header size field (#floats) = %d\0A\00", align 1
@.str28 = private unnamed_addr constant [43 x i8] c"Header size field: %d; not multiple of %d\0A\00", align 1
@.str29 = private unnamed_addr constant [53 x i8] c"%s: MFC buffer size(%d frames) < actual #frames(%d)\0A\00", align 1
@.str30 = private unnamed_addr constant [36 x i8] c"%s: fread(%dx%d) (MFC data) failed\0A\00", align 1
@.str31 = private unnamed_addr constant [34 x i8] c"Sum(feature stream lengths) = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [77 x i8] c"Initializing feature stream to type: '%s', CMN='%s', VARNORM='%s', AGC='%s'\0A\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"s2_4x\00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"s3_1x39\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"1s_c_d_dd\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"cep_dcep\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str39 = private unnamed_addr constant [33 x i8] c"Bad feature type argument: '%s'\0A\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"cep\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str43 = private unnamed_addr constant [27 x i8] c"Bad feature type argument\0A\00", align 1
@.str44 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str46 = private unnamed_addr constant [27 x i8] c"Unsupported CMN type '%s'\0A\00", align 1
@.str47 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str49 = private unnamed_addr constant [31 x i8] c"Unsupported VARNORM type '%s'\0A\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str51 = private unnamed_addr constant [27 x i8] c"Unsupported AGC type '%s'\0A\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"%8d:\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"\09%2d:\00", align 1
@.str54 = private unnamed_addr constant [7 x i8] c" %8.4f\00", align 1
@.str56 = private unnamed_addr constant [17 x i8] c"Bad cepsize: %d\0A\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c".mfc\00", align 1
@.str58 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str59 = private unnamed_addr constant [10 x i8] c"%s/%s.mfc\00", align 1
@.str60 = private unnamed_addr constant [7 x i8] c"%s.mfc\00", align 1
@.str61 = private unnamed_addr constant [63 x i8] c"%s: MFC file/segment too short to compute features: %d frames\0A\00", align 1
@.str62 = private unnamed_addr constant [51 x i8] c"%s: Feature buffer size(%d frames) < required(%d)\0A\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c"CMN\0A\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"AGC\0A\00", align 1
@feat_s2mfc2feat_block.cepbuf = internal unnamed_addr global float** null, align 8
@feat_s2mfc2feat_block.tmpcepbuf = internal unnamed_addr global float** null, align 8
@feat_s2mfc2feat_block.bufpos = internal unnamed_addr global i32 0, align 4
@feat_s2mfc2feat_block.curpos = internal unnamed_addr global i32 0, align 4
@.str65 = private unnamed_addr constant [52 x i8] c"Unable to allocate cepbuf ckd_calloc_2d(%ld,%d,%d)\0A\00", align 1
@.str66 = private unnamed_addr constant [43 x i8] c"Feature buffers initialized to %d vectors\0A\00", align 1
@.str67 = private unnamed_addr constant [55 x i8] c"Unable to allocate tmpcepbuf ckd_calloc_2d(%ld,%d,%d)\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @feat_readfile(%struct.feat_s* nocapture %fcb, i8* %file, i32 %sf, i32 %ef, float*** nocapture %feat, i32 %maxfr) #0 {
entry:
  %l = alloca i32, align 4
  %nfr = alloca i32, align 4
  %byteswap = alloca i32, align 4
  %chksum = alloca i32, align 4
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 127, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), i8* %file, i32 %sf, i32 %ef) #7
  %cmp = icmp sgt i32 %ef, %sf
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 131, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %file, i32 %ef, i32 %sf) #7
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)) #7
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 136, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0), i8* %file) #7
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @bio_readhdr(%struct._IO_FILE* %call, i8*** %argname, i8*** %argval, i32* %byteswap) #7
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %0 = load i8*** %argname, align 8, !tbaa !0
  %1 = load i8** %0, align 8, !tbaa !0
  %tobool146 = icmp eq i8* %1, null
  br i1 %tobool146, label %for.end, label %for.body

if.then6:                                         ; preds = %if.end3
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 142, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* %file) #7
  %call7 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8** [ %8, %for.inc ], [ %0, %for.cond.preheader ]
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = phi i8* [ %9, %for.inc ], [ %1, %for.cond.preheader ]
  %call11 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  %4 = load i8*** %argval, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8** %4, i64 %indvars.iv151
  %5 = load i8** %arrayidx15, align 8, !tbaa !0
  %call16 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0)) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %for.inc, label %if.then18

if.then18:                                        ; preds = %if.then13
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 152, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0)) #7
  %6 = load i8*** %argval, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i8** %6, i64 %indvars.iv151
  %7 = load i8** %arrayidx20, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* %file, i8* %7, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0)) #7
  %.pre153 = load i8*** %argname, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then13, %if.then18
  %8 = phi i8** [ %2, %for.body ], [ %2, %if.then13 ], [ %.pre153, %if.then18 ]
  %indvars.iv.next152 = add i64 %indvars.iv151, 1
  %arrayidx = getelementptr inbounds i8** %8, i64 %indvars.iv.next152
  %9 = load i8** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq i8* %9, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %.lcssa = phi i8** [ %0, %for.cond.preheader ], [ %8, %for.inc ]
  %10 = load i8*** %argval, align 8, !tbaa !0
  call void @bio_hdrarg_free(i8** %.lcssa, i8** %10) #7
  store i8** null, i8*** %argval, align 8, !tbaa !0
  store i8** null, i8*** %argname, align 8, !tbaa !0
  store i32 0, i32* %chksum, align 4, !tbaa !3
  %11 = bitcast i32* %nfr to i8*
  %12 = load i32* %byteswap, align 4, !tbaa !3
  %call29 = call i32 @bio_fread(i8* %11, i32 4, i32 1, %struct._IO_FILE* %call, i32 %12, i32* %chksum) #7
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 166, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %file) #7
  %call32 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

if.end33:                                         ; preds = %for.end
  %13 = bitcast i32* %l to i8*
  %14 = load i32* %byteswap, align 4, !tbaa !3
  %call34 = call i32 @bio_fread(i8* %13, i32 4, i32 1, %struct._IO_FILE* %call, i32 %14, i32* %chksum) #7
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %lor.lhs.false, label %if.then37

lor.lhs.false:                                    ; preds = %if.end33
  %15 = load i32* %l, align 4, !tbaa !3
  %n_stream = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 3
  %16 = load i32* %n_stream, align 4, !tbaa !3
  %cmp36 = icmp eq i32 %15, %16
  br i1 %cmp36, label %for.cond40.preheader, label %if.then37

for.cond40.preheader:                             ; preds = %lor.lhs.false
  %cmp42143 = icmp sgt i32 %15, 0
  br i1 %cmp42143, label %for.body43.lr.ph, label %for.end55

for.body43.lr.ph:                                 ; preds = %for.cond40.preheader
  %stream_len = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 4
  br label %for.body43

if.then37:                                        ; preds = %lor.lhs.false, %if.end33
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 174, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([37 x i8]* @.str14, i64 0, i64 0), i8* %file) #7
  %call38 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

for.body43:                                       ; preds = %for.body43.lr.ph, %if.end52
  %indvars.iv = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next, %if.end52 ]
  %k.0145 = phi i32 [ 0, %for.body43.lr.ph ], [ %add, %if.end52 ]
  %17 = load i32* %byteswap, align 4, !tbaa !3
  %call44 = call i32 @bio_fread(i8* %13, i32 4, i32 1, %struct._IO_FILE* %call, i32 %17, i32* %chksum) #7
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %lor.lhs.false46, label %if.then50

lor.lhs.false46:                                  ; preds = %for.body43
  %18 = load i32* %l, align 4, !tbaa !3
  %19 = load i32** %stream_len, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i32* %19, i64 %indvars.iv
  %20 = load i32* %arrayidx48, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %18, %20
  br i1 %cmp49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %lor.lhs.false46, %for.body43
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 184, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str15, i64 0, i64 0), i8* %file) #7
  %call51 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

if.end52:                                         ; preds = %lor.lhs.false46
  %add = add nsw i32 %18, %k.0145
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = load i32* %n_stream, align 4, !tbaa !3
  %22 = trunc i64 %indvars.iv.next to i32
  %cmp42 = icmp slt i32 %22, %21
  br i1 %cmp42, label %for.body43, label %for.end55

for.end55:                                        ; preds = %if.end52, %for.cond40.preheader
  %k.0.lcssa = phi i32 [ 0, %for.cond40.preheader ], [ %add, %if.end52 ]
  %cmp56 = icmp sgt i32 %sf, 0
  %23 = load i32* %nfr, align 4, !tbaa !3
  br i1 %cmp56, label %if.then57, label %if.end62

if.then57:                                        ; preds = %for.end55
  %cmp58 = icmp sgt i32 %23, %sf
  br i1 %cmp58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.then57
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 194, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %24 = load i32* %nfr, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([44 x i8]* @.str16, i64 0, i64 0), i8* %file, i32 %sf, i32 %24) #7
  %call60 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

if.end61:                                         ; preds = %if.then57
  %sub = sub nsw i32 %23, %sf
  store i32 %sub, i32* %nfr, align 4, !tbaa !3
  br label %if.end62

if.end62:                                         ; preds = %for.end55, %if.end61
  %25 = phi i32 [ %sub, %if.end61 ], [ %23, %for.end55 ]
  %sub63 = sub nsw i32 %ef, %sf
  %add64 = add nsw i32 %sub63, 1
  %cmp65 = icmp slt i32 %add64, %25
  br i1 %cmp65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end62
  store i32 %add64, i32* %nfr, align 4, !tbaa !3
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end62
  %26 = phi i32 [ %add64, %if.then66 ], [ %25, %if.end62 ]
  %cmp70 = icmp sgt i32 %26, %maxfr
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end69
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 205, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %27 = load i32* %nfr, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([57 x i8]* @.str17, i64 0, i64 0), i8* %file, i32 %maxfr, i32 %27) #7
  %call72 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

if.end73:                                         ; preds = %if.end69
  br i1 %cmp56, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end73
  %mul = mul nsw i32 %k.0.lcssa, %sf
  %conv = sext i32 %mul to i64
  %mul76 = shl nsw i64 %conv, 2
  %call77 = call i32 @fseek(%struct._IO_FILE* %call, i64 %mul76, i32 1) #7
  %.pre = load i32* %nfr, align 4, !tbaa !3
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end73
  %28 = phi i32 [ %.pre, %if.then75 ], [ %26, %if.end73 ]
  %29 = load float*** %feat, align 8, !tbaa !0
  %30 = load float** %29, align 8, !tbaa !0
  %31 = bitcast float* %30 to i8*
  %mul81 = mul nsw i32 %28, %k.0.lcssa
  %32 = load i32* %byteswap, align 4, !tbaa !3
  %call82 = call i32 @bio_fread(i8* %31, i32 4, i32 %mul81, %struct._IO_FILE* %call, i32 %32, i32* %chksum) #7
  %33 = load i32* %nfr, align 4, !tbaa !3
  %mul83 = mul nsw i32 %33, %k.0.lcssa
  %cmp84 = icmp eq i32 %call82, %mul83
  br i1 %cmp84, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end78
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 215, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %34 = load i32* %nfr, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0), i8* %file, i32 %34, i32 %k.0.lcssa) #7
  %call87 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

if.end88:                                         ; preds = %if.end78
  %call89 = call i32 @fclose(%struct._IO_FILE* %call) #7
  %35 = load i32* %nfr, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end88, %if.then86, %if.then71, %if.then59, %if.then50, %if.then37, %if.then31, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then31 ], [ -1, %if.then37 ], [ -1, %if.then50 ], [ -1, %if.then59 ], [ -1, %if.then71 ], [ -1, %if.then86 ], [ %35, %if.end88 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @bio_readhdr(%struct._IO_FILE*, i8***, i8***, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare void @bio_hdrarg_free(i8**, i8**) #1

; Function Attrs: optsize
declare i32 @bio_fread(i8*, i32, i32, %struct._IO_FILE*, i32, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @feat_writefile(%struct.feat_s* nocapture %fcb, i8* %file, float*** nocapture %feat, i32 %nfr) #0 {
entry:
  %nfr.addr = alloca i32, align 4
  store i32 %nfr, i32* %nfr.addr, align 4, !tbaa !3
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 231, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str19, i64 0, i64 0), i8* %file) #7
  %call = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #7
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 235, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([21 x i8]* @.str21, i64 0, i64 0), i8* %file) #7
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @bio_writehdr_version(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0)) #7
  %0 = bitcast i32* %nfr.addr to i8*
  %call2 = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %call) #7
  %n_stream = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 3
  %1 = bitcast i32* %n_stream to i8*
  %call3 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %call) #7
  %2 = load i32* %n_stream, align 4, !tbaa !3
  %cmp539 = icmp sgt i32 %2, 0
  br i1 %cmp539, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %stream_len = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 4
  %.pre = load i32** %stream_len, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i32* [ %.pre, %for.body.lr.ph ], [ %5, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %k.041 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  %4 = bitcast i32* %arrayidx to i8*
  %call6 = call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %call) #7
  %5 = load i32** %stream_len, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %6 = load i32* %arrayidx9, align 4, !tbaa !3
  %add = add nsw i32 %6, %k.041
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load i32* %n_stream, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %8, %7
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %k.0.lcssa = phi i32 [ 0, %if.end ], [ %add, %for.body ]
  %9 = load float*** %feat, align 8, !tbaa !0
  %10 = load float** %9, align 8, !tbaa !0
  %11 = bitcast float* %10 to i8*
  %12 = load i32* %nfr.addr, align 4, !tbaa !3
  %mul = mul nsw i32 %12, %k.0.lcssa
  %conv = sext i32 %mul to i64
  %call12 = call i64 @fwrite(i8* %11, i64 4, i64 %conv, %struct._IO_FILE* %call) #7
  %conv13 = trunc i64 %call12 to i32
  %cmp15 = icmp eq i32 %conv13, %mul
  br i1 %cmp15, label %if.end19, label %if.then17

if.then17:                                        ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 252, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([39 x i8]* @.str22, i64 0, i64 0), i8* %file, i32 %12, i32 %k.0.lcssa) #7
  %call18 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

if.end19:                                         ; preds = %for.end
  %call20 = call i32 @fclose(%struct._IO_FILE* %call) #7
  br label %return

return:                                           ; preds = %if.end19, %if.then17, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then17 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @bio_writehdr_version(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @feat_s2mfc_read(i8* %file, i32 %sf, i32 %ef, float** nocapture %mfc, i32 %maxfr) #0 {
entry:
  %n_float32 = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #4
  %cmp = icmp slt i32 %ef, 0
  %.ef = select i1 %cmp, i32 2147418112, i32 %ef
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 277, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([32 x i8]* @.str23, i64 0, i64 0), i8* %file, i32 %sf, i32 %.ef) #7
  %cmp1 = icmp sgt i32 %.ef, %sf
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 279, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %file, i32 %.ef, i32 %sf) #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = call i32 @stat_retry(i8* %file, %struct.stat* %statbuf) #7
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call5 = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)) #7
  %cmp6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 287, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([29 x i8]* @.str24, i64 0, i64 0), i8* %file) #7
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %1 = bitcast i32* %n_float32 to i8*
  %call9 = call i32 @fread_retry(i8* %1, i32 4, i32 1, %struct._IO_FILE* %call5) #7
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 293, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([27 x i8]* @.str25, i64 0, i64 0), i8* %file) #7
  %call12 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %2 = load i32* %n_float32, align 4, !tbaa !3
  %mul = shl i32 %2, 2
  %add = add i32 %mul, 4
  %st_size = getelementptr inbounds %struct.stat* %statbuf, i64 0, i32 8
  %3 = load i64* %st_size, align 8, !tbaa !4
  %conv15 = trunc i64 %3 to i32
  %cmp16 = icmp eq i32 %add, %conv15
  br i1 %cmp16, label %if.end39, label %if.then18

if.then18:                                        ; preds = %if.end13
  %or25 = call i32 @llvm.bswap.i32(i32 %2)
  %mul27 = shl i32 %or25, 2
  %add28 = add i32 %mul27, 4
  %cmp32 = icmp eq i32 %add28, %conv15
  br i1 %cmp32, label %if.end38, label %if.then34

if.then34:                                        ; preds = %if.then18
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 305, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %4 = load i32* %n_float32, align 4, !tbaa !3
  %5 = load i64* %st_size, align 8, !tbaa !4
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([53 x i8]* @.str26, i64 0, i64 0), i8* %file, i32 %4, i32 %4, i64 %5, i64 %5) #7
  %call37 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end38:                                         ; preds = %if.then18
  store i32 %or25, i32* %n_float32, align 4, !tbaa !3
  br label %if.end39

if.end39:                                         ; preds = %if.end13, %if.end38
  %6 = phi i32 [ %or25, %if.end38 ], [ %2, %if.end13 ]
  %byterev.0 = phi i32 [ 1, %if.end38 ], [ 0, %if.end13 ]
  %cmp40 = icmp slt i32 %6, 1
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 315, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %7 = load i32* %n_float32, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([38 x i8]* @.str27, i64 0, i64 0), i8* %file, i32 %7) #7
  %call43 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %div = sdiv i32 %6, 13
  %mul45 = mul nsw i32 %div, 13
  %cmp46 = icmp eq i32 %mul45, %6
  br i1 %cmp46, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 323, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %8 = load i32* %n_float32, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([43 x i8]* @.str28, i64 0, i64 0), i32 %8, i32 13) #7
  %call49 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %cmp51 = icmp sgt i32 %sf, 0
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end50
  %cmp54 = icmp sgt i32 %div, %sf
  br i1 %cmp54, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.then53
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 331, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([44 x i8]* @.str16, i64 0, i64 0), i8* %file, i32 %sf, i32 %div) #7
  %call57 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end58:                                         ; preds = %if.then53
  %sub = sub nsw i32 %div, %sf
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end50
  %n.0 = phi i32 [ %sub, %if.end58 ], [ %div, %if.end50 ]
  %sub60 = sub nsw i32 %.ef, %sf
  %add61 = add nsw i32 %sub60, 1
  %cmp62 = icmp slt i32 %add61, %n.0
  %add61.n.0 = select i1 %cmp62, i32 %add61, i32 %n.0
  %cmp68 = icmp sgt i32 %add61.n.0, %maxfr
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end59
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 342, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([53 x i8]* @.str29, i64 0, i64 0), i8* %file, i32 %maxfr, i32 %add61.n.0) #7
  %call71 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end72:                                         ; preds = %if.end59
  br i1 %cmp51, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.end72
  %mul76 = mul nsw i32 %sf, 13
  %conv77 = sext i32 %mul76 to i64
  %mul78 = shl nsw i64 %conv77, 2
  %call79 = call i32 @fseek(%struct._IO_FILE* %call5, i64 %mul78, i32 1) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end72
  %mul81 = mul nsw i32 %add61.n.0, 13
  store i32 %mul81, i32* %n_float32, align 4, !tbaa !3
  %9 = load float** %mfc, align 8, !tbaa !0
  %10 = bitcast float* %9 to i8*
  %call82 = call i32 @fread_retry(i8* %10, i32 4, i32 %mul81, %struct._IO_FILE* %call5) #7
  %11 = load i32* %n_float32, align 4, !tbaa !3
  %cmp83 = icmp eq i32 %call82, %11
  br i1 %cmp83, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end80
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 352, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([36 x i8]* @.str30, i64 0, i64 0), i8* %file, i32 %add61.n.0, i32 13) #7
  %call86 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %tobool = icmp ne i32 %byterev.0, 0
  %cmp89189 = icmp sgt i32 %call82, 0
  %or.cond = and i1 %tobool, %cmp89189
  br i1 %or.cond, label %for.body.lr.ph, label %if.end116

for.body.lr.ph:                                   ; preds = %if.end87
  %12 = load float** %mfc, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx92 = getelementptr inbounds float* %12, i64 %indvars.iv
  %13 = bitcast float* %arrayidx92 to i32*
  %14 = load i32* %13, align 4, !tbaa !3
  %or112 = call i32 @llvm.bswap.i32(i32 %14)
  store i32 %or112, i32* %13, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load i32* %n_float32, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp89 = icmp slt i32 %16, %15
  br i1 %cmp89, label %for.body, label %if.end116

if.end116:                                        ; preds = %if.end87, %for.body
  %call117 = call i32 @fclose(%struct._IO_FILE* %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then85, %if.then70, %if.then56, %if.then48, %if.then42, %if.then34, %if.then11, %if.then7, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -1, %if.then7 ], [ -1, %if.then11 ], [ -1, %if.then34 ], [ -1, %if.then42 ], [ -1, %if.then48 ], [ -1, %if.then56 ], [ -1, %if.then70 ], [ -1, %if.then85 ], [ %add61.n.0, %if.end116 ]
  call void @llvm.lifetime.end(i64 144, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @stat_retry(i8*, %struct.stat*) #1

; Function Attrs: optsize
declare i32 @fread_retry(i8*, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define float** @feat_vector_alloc(%struct.feat_s* nocapture %fcb) #0 {
entry:
  %n_stream.i = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 3
  %0 = load i32* %n_stream.i, align 4, !tbaa !3
  %cmp5.i = icmp sgt i32 %0, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %stream_len.i = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 4
  %1 = load i32** %stream_len.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %k.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %indvars.iv.i
  %2 = load i32* %arrayidx.i, align 4, !tbaa !3
  %add.i = add nsw i32 %2, %k.07.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %feat_stream_len_sum.exit, label %for.body.i

feat_stream_len_sum.exit:                         ; preds = %for.body.i
  %cmp = icmp slt i32 %add.i, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %feat_stream_len_sum.exit
  %k.0.lcssa.i19 = phi i32 [ %add.i, %feat_stream_len_sum.exit ], [ 0, %entry ]
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 386, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i32 %k.0.lcssa.i19) #7
  br label %return

if.end:                                           ; preds = %feat_stream_len_sum.exit
  %conv = sext i32 %0 to i64
  %call1 = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 391) #7
  %3 = bitcast i8* %call1 to float**
  %conv2 = sext i32 %add.i to i64
  %call3 = tail call i8* @__ckd_calloc__(i64 %conv2, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 392) #7
  %4 = load i32* %n_stream.i, align 4, !tbaa !3
  %cmp520 = icmp sgt i32 %4, 0
  br i1 %cmp520, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end
  %5 = bitcast i8* %call3 to float*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %data.022 = phi float* [ %5, %for.body.lr.ph ], [ %add.ptr, %for.body ]
  %arrayidx = getelementptr inbounds float** %3, i64 %indvars.iv
  store float* %data.022, float** %arrayidx, align 8, !tbaa !0
  %6 = load i32** %stream_len.i, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx8, align 4, !tbaa !3
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds float* %data.022, i64 %idx.ext
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %8, %4
  br i1 %cmp5, label %for.body, label %return

return:                                           ; preds = %if.end, %for.body, %if.then
  %retval.0 = phi float** [ null, %if.then ], [ %3, %for.body ], [ %3, %if.end ]
  ret float** %retval.0
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define float*** @feat_array_alloc(%struct.feat_s* nocapture %fcb, i32 %nfr) #0 {
entry:
  %n_stream.i = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 3
  %0 = load i32* %n_stream.i, align 4, !tbaa !3
  %cmp5.i = icmp sgt i32 %0, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %stream_len.i = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 4
  %1 = load i32** %stream_len.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %k.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %indvars.iv.i
  %2 = load i32* %arrayidx.i, align 4, !tbaa !3
  %add.i = add nsw i32 %2, %k.07.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv42 = trunc i64 %indvars.iv.next.i to i32
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %0
  br i1 %exitcond43, label %feat_stream_len_sum.exit, label %for.body.i

feat_stream_len_sum.exit:                         ; preds = %for.body.i
  %cmp = icmp slt i32 %add.i, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %feat_stream_len_sum.exit
  %k.0.lcssa.i33 = phi i32 [ %add.i, %feat_stream_len_sum.exit ], [ 0, %entry ]
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 412, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i32 %k.0.lcssa.i33) #7
  br label %return

if.end:                                           ; preds = %feat_stream_len_sum.exit
  %call1 = tail call i8** @__ckd_calloc_2d__(i32 %nfr, i32 %0, i32 8, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 417) #7
  %3 = bitcast i8** %call1 to float***
  %mul = mul nsw i32 %add.i, %nfr
  %conv = sext i32 %mul to i64
  %call2 = tail call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 418) #7
  %cmp337 = icmp sgt i32 %nfr, 0
  br i1 %cmp337, label %for.cond5.preheader.lr.ph, label %return

for.cond5.preheader.lr.ph:                        ; preds = %if.end
  %4 = bitcast i8* %call2 to float*
  %.pre = load i32* %n_stream.i, align 4, !tbaa !3
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc14, %for.cond5.preheader.lr.ph
  %indvars.iv40 = phi i64 [ 0, %for.cond5.preheader.lr.ph ], [ %indvars.iv.next41, %for.inc14 ]
  %data.039 = phi float* [ %4, %for.cond5.preheader.lr.ph ], [ %data.1.lcssa, %for.inc14 ]
  %cmp734 = icmp sgt i32 %.pre, 0
  br i1 %cmp734, label %for.body9.lr.ph, label %for.inc14

for.body9.lr.ph:                                  ; preds = %for.cond5.preheader
  %arrayidx30 = getelementptr inbounds i8** %call1, i64 %indvars.iv40
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %data.136 = phi float* [ %data.039, %for.body9.lr.ph ], [ %add.ptr, %for.body9 ]
  %arrayidx31 = load i8** %arrayidx30, align 8
  %5 = bitcast i8* %arrayidx31 to float**
  %arrayidx11 = getelementptr inbounds float** %5, i64 %indvars.iv
  store float* %data.136, float** %arrayidx11, align 8, !tbaa !0
  %6 = load i32** %stream_len.i, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx13, align 4, !tbaa !3
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds float* %data.136, i64 %idx.ext
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %8, %.pre
  br i1 %cmp7, label %for.body9, label %for.inc14

for.inc14:                                        ; preds = %for.body9, %for.cond5.preheader
  %data.1.lcssa = phi float* [ %data.039, %for.cond5.preheader ], [ %add.ptr, %for.body9 ]
  %indvars.iv.next41 = add i64 %indvars.iv40, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next41 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nfr
  br i1 %exitcond, label %return, label %for.cond5.preheader

return:                                           ; preds = %if.end, %for.inc14, %if.then
  %retval.0 = phi float*** [ null, %if.then ], [ %3, %for.inc14 ], [ %3, %if.end ]
  ret float*** %retval.0
}

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @feat_1s_c_d_dd_cep2feat(%struct.feat_s* nocapture %fcb, float** nocapture %mfc, float** nocapture %feat) #0 {
entry:
  %0 = load float** %feat, align 8, !tbaa !0
  %1 = bitcast float* %0 to i8*
  %2 = load float** %mfc, align 8, !tbaa !0
  %3 = bitcast float* %2 to i8*
  %cepsize = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 1
  %4 = load i32* %cepsize, align 4, !tbaa !3
  %conv = sext i32 %4 to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 4, i1 false)
  %5 = load float** %feat, align 8, !tbaa !0
  %6 = load i32* %cepsize, align 4, !tbaa !3
  %idx.ext = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds float** %mfc, i64 2
  %7 = load float** %arrayidx4, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds float** %mfc, i64 -2
  %8 = load float** %arrayidx5, align 8, !tbaa !0
  %cmp68 = icmp sgt i32 %6, 0
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body ], [ 0, %entry ]
  %arrayidx8 = getelementptr inbounds float* %7, i64 %indvars.iv70
  %9 = load float* %arrayidx8, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds float* %8, i64 %indvars.iv70
  %10 = load float* %arrayidx10, align 4, !tbaa !5
  %sub = fsub float %9, %10
  %add.ptr.sum65 = add i64 %indvars.iv70, %idx.ext
  %arrayidx12 = getelementptr inbounds float* %5, i64 %add.ptr.sum65
  store float %sub, float* %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %11 = trunc i64 %indvars.iv.next71 to i32
  %cmp = icmp slt i32 %11, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %add.ptr.sum = shl nsw i64 %idx.ext, 1
  %arrayidx16 = getelementptr inbounds float** %mfc, i64 3
  %12 = load float** %arrayidx16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds float** %mfc, i64 -1
  %13 = load float** %arrayidx17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds float** %mfc, i64 1
  %14 = load float** %arrayidx18, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds float** %mfc, i64 -3
  %15 = load float** %arrayidx19, align 8, !tbaa !0
  br i1 %cmp68, label %for.body24, label %for.end40

for.body24:                                       ; preds = %for.end, %for.body24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body24 ], [ 0, %for.end ]
  %arrayidx26 = getelementptr inbounds float* %12, i64 %indvars.iv
  %16 = load float* %arrayidx26, align 4, !tbaa !5
  %arrayidx28 = getelementptr inbounds float* %13, i64 %indvars.iv
  %17 = load float* %arrayidx28, align 4, !tbaa !5
  %sub29 = fsub float %16, %17
  %arrayidx31 = getelementptr inbounds float* %14, i64 %indvars.iv
  %18 = load float* %arrayidx31, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds float* %15, i64 %indvars.iv
  %19 = load float* %arrayidx33, align 4, !tbaa !5
  %sub34 = fsub float %18, %19
  %sub35 = fsub float %sub29, %sub34
  %add.ptr15.sum = add i64 %add.ptr.sum, %indvars.iv
  %arrayidx37 = getelementptr inbounds float* %5, i64 %add.ptr15.sum
  store float %sub35, float* %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp22 = icmp slt i32 %20, %6
  br i1 %cmp22, label %for.body24, label %for.end40

for.end40:                                        ; preds = %for.body24, %for.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define %struct.feat_s* @feat_init(i8* %type, i8* %cmn, i8* %varnorm, i8* %agc) #0 {
entry:
  %l = alloca i32, align 4
  %wd = alloca [16384 x i8], align 16
  %0 = getelementptr inbounds [16384 x i8]* %wd, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %0) #4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 642, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([77 x i8]* @.str32, i64 0, i64 0), i8* %type, i8* %cmn, i8* %varnorm, i8* %agc) #7
  %call = call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 645) #7
  %1 = bitcast i8* %call to %struct.feat_s*
  %call1 = call i8* @__ckd_salloc__(i8* %type, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 647) #7
  %name = bitcast i8* %call to i8**
  store i8* %call1, i8** %name, align 8, !tbaa !0
  %call2 = call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0)) #8
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cepsize = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %cepsize to i32*
  store i32 13, i32* %2, align 4, !tbaa !3
  %cepsize_used = getelementptr inbounds i8* %call, i64 12
  %3 = bitcast i8* %cepsize_used to i32*
  store i32 13, i32* %3, align 4, !tbaa !3
  %n_stream = getelementptr inbounds i8* %call, i64 16
  %4 = bitcast i8* %n_stream to i32*
  store i32 4, i32* %4, align 4, !tbaa !3
  %call3 = call i8* @__ckd_calloc__(i64 4, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 653) #7
  %5 = bitcast i8* %call3 to i32*
  %stream_len = getelementptr inbounds i8* %call, i64 24
  %6 = bitcast i8* %stream_len to i32**
  store i32* %5, i32** %6, align 8, !tbaa !0
  store i32 12, i32* %5, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i8* %call3, i64 4
  %7 = bitcast i8* %arrayidx6 to i32*
  store i32 24, i32* %7, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds i8* %call3, i64 8
  %8 = bitcast i8* %arrayidx8 to i32*
  store i32 3, i32* %8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8* %call3, i64 12
  %9 = bitcast i8* %arrayidx10 to i32*
  store i32 12, i32* %9, align 4, !tbaa !3
  %window_size = getelementptr inbounds i8* %call, i64 32
  %10 = bitcast i8* %window_size to i32*
  store i32 4, i32* %10, align 4, !tbaa !3
  %compute_feat = getelementptr inbounds i8* %call, i64 48
  %11 = bitcast i8* %compute_feat to void (%struct.feat_s*, float**, float**)**
  store void (%struct.feat_s*, float**, float**)* @feat_s2_4x_cep2feat, void (%struct.feat_s*, float**, float**)** %11, align 8, !tbaa !0
  br label %if.end176

if.else:                                          ; preds = %entry
  %call11 = call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else23

if.then13:                                        ; preds = %if.else
  %cepsize14 = getelementptr inbounds i8* %call, i64 8
  %12 = bitcast i8* %cepsize14 to i32*
  store i32 13, i32* %12, align 4, !tbaa !3
  %cepsize_used15 = getelementptr inbounds i8* %call, i64 12
  %13 = bitcast i8* %cepsize_used15 to i32*
  store i32 13, i32* %13, align 4, !tbaa !3
  %n_stream16 = getelementptr inbounds i8* %call, i64 16
  %14 = bitcast i8* %n_stream16 to i32*
  store i32 1, i32* %14, align 4, !tbaa !3
  %call17 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 665) #7
  %15 = bitcast i8* %call17 to i32*
  %stream_len18 = getelementptr inbounds i8* %call, i64 24
  %16 = bitcast i8* %stream_len18 to i32**
  store i32* %15, i32** %16, align 8, !tbaa !0
  store i32 39, i32* %15, align 4, !tbaa !3
  %window_size21 = getelementptr inbounds i8* %call, i64 32
  %17 = bitcast i8* %window_size21 to i32*
  store i32 3, i32* %17, align 4, !tbaa !3
  %compute_feat22 = getelementptr inbounds i8* %call, i64 48
  %18 = bitcast i8* %compute_feat22 to void (%struct.feat_s*, float**, float**)**
  store void (%struct.feat_s*, float**, float**)* @feat_s3_1x39_cep2feat, void (%struct.feat_s*, float**, float**)** %18, align 8, !tbaa !0
  br label %if.end176

if.else23:                                        ; preds = %if.else
  %call24 = call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0)) #8
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else36

if.then26:                                        ; preds = %if.else23
  %cepsize27 = getelementptr inbounds i8* %call, i64 8
  %19 = bitcast i8* %cepsize27 to i32*
  store i32 13, i32* %19, align 4, !tbaa !3
  %cepsize_used28 = getelementptr inbounds i8* %call, i64 12
  %20 = bitcast i8* %cepsize_used28 to i32*
  store i32 13, i32* %20, align 4, !tbaa !3
  %n_stream29 = getelementptr inbounds i8* %call, i64 16
  %21 = bitcast i8* %n_stream29 to i32*
  store i32 1, i32* %21, align 4, !tbaa !3
  %call30 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 673) #7
  %22 = bitcast i8* %call30 to i32*
  %stream_len31 = getelementptr inbounds i8* %call, i64 24
  %23 = bitcast i8* %stream_len31 to i32**
  store i32* %22, i32** %23, align 8, !tbaa !0
  store i32 39, i32* %22, align 4, !tbaa !3
  %window_size34 = getelementptr inbounds i8* %call, i64 32
  %24 = bitcast i8* %window_size34 to i32*
  store i32 3, i32* %24, align 4, !tbaa !3
  %compute_feat35 = getelementptr inbounds i8* %call, i64 48
  %25 = bitcast i8* %compute_feat35 to void (%struct.feat_s*, float**, float**)**
  store void (%struct.feat_s*, float**, float**)* @feat_1s_c_d_dd_cep2feat, void (%struct.feat_s*, float**, float**)** %25, align 8, !tbaa !0
  br label %if.end176

if.else36:                                        ; preds = %if.else23
  %call37 = call i32 @strncmp(i8* %type, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i64 8) #8
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else74

if.then39:                                        ; preds = %if.else36
  %cepsize40 = getelementptr inbounds i8* %call, i64 8
  %26 = bitcast i8* %cepsize40 to i32*
  store i32 13, i32* %26, align 4, !tbaa !3
  %arrayidx41 = getelementptr inbounds i8* %type, i64 8
  %27 = load i8* %arrayidx41, align 1, !tbaa !1
  %cmp42 = icmp eq i8 %27, 44
  br i1 %cmp42, label %if.then44, label %if.else63

if.then44:                                        ; preds = %if.then39
  %add.ptr = getelementptr inbounds i8* %type, i64 9
  %cepsize_used45 = getelementptr inbounds i8* %call, i64 12
  %28 = bitcast i8* %cepsize_used45 to i32*
  %call46 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* %cepsize_used45, i32* %l) #7
  %cmp47 = icmp eq i32 %call46, 1
  br i1 %cmp47, label %lor.lhs.false, label %if.then62

lor.lhs.false:                                    ; preds = %if.then44
  %29 = load i32* %l, align 4, !tbaa !3
  %add = add nsw i32 %29, 9
  %idxprom = sext i32 %add to i64
  %arrayidx49 = getelementptr inbounds i8* %type, i64 %idxprom
  %30 = load i8* %arrayidx49, align 1, !tbaa !1
  %cmp51 = icmp eq i8 %30, 0
  br i1 %cmp51, label %lor.lhs.false53, label %if.then62

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %31 = load i32* %28, align 4, !tbaa !3
  %cmp55 = icmp slt i32 %31, 1
  br i1 %cmp55, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %32 = load i32* %26, align 4, !tbaa !3
  %cmp60 = icmp sgt i32 %31, %32
  br i1 %cmp60, label %if.then62, label %if.end65

if.then62:                                        ; preds = %lor.lhs.false, %if.then44, %lor.lhs.false57, %lor.lhs.false53
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 686, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str39, i64 0, i64 0), i8* %type) #7
  br label %if.end65

if.else63:                                        ; preds = %if.then39
  %cepsize_used64 = getelementptr inbounds i8* %call, i64 12
  %33 = bitcast i8* %cepsize_used64 to i32*
  store i32 13, i32* %33, align 4, !tbaa !3
  br label %if.end65

if.end65:                                         ; preds = %lor.lhs.false57, %if.then62, %if.else63
  %n_stream66 = getelementptr inbounds i8* %call, i64 16
  %34 = bitcast i8* %n_stream66 to i32*
  store i32 1, i32* %34, align 4, !tbaa !3
  %call67 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 690) #7
  %35 = bitcast i8* %call67 to i32*
  %stream_len68 = getelementptr inbounds i8* %call, i64 24
  %36 = bitcast i8* %stream_len68 to i32**
  store i32* %35, i32** %36, align 8, !tbaa !0
  %cepsize_used69 = getelementptr inbounds i8* %call, i64 12
  %37 = bitcast i8* %cepsize_used69 to i32*
  %38 = load i32* %37, align 4, !tbaa !3
  %mul = shl nsw i32 %38, 1
  store i32 %mul, i32* %35, align 4, !tbaa !3
  %window_size72 = getelementptr inbounds i8* %call, i64 32
  %39 = bitcast i8* %window_size72 to i32*
  store i32 2, i32* %39, align 4, !tbaa !3
  %compute_feat73 = getelementptr inbounds i8* %call, i64 48
  %40 = bitcast i8* %compute_feat73 to void (%struct.feat_s*, float**, float**)**
  store void (%struct.feat_s*, float**, float**)* @feat_s3_cep_dcep, void (%struct.feat_s*, float**, float**)** %40, align 8, !tbaa !0
  br label %if.end176

if.else74:                                        ; preds = %if.else36
  %call75 = call i32 @strncmp(i8* %type, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0), i64 3) #8
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else119

if.then78:                                        ; preds = %if.else74
  %cepsize79 = getelementptr inbounds i8* %call, i64 8
  %41 = bitcast i8* %cepsize79 to i32*
  store i32 13, i32* %41, align 4, !tbaa !3
  %arrayidx80 = getelementptr inbounds i8* %type, i64 3
  %42 = load i8* %arrayidx80, align 1, !tbaa !1
  %cmp82 = icmp eq i8 %42, 44
  br i1 %cmp82, label %if.then84, label %if.else108

if.then84:                                        ; preds = %if.then78
  %add.ptr85 = getelementptr inbounds i8* %type, i64 4
  %cepsize_used86 = getelementptr inbounds i8* %call, i64 12
  %43 = bitcast i8* %cepsize_used86 to i32*
  %call87 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr85, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* %cepsize_used86, i32* %l) #7
  %cmp88 = icmp eq i32 %call87, 1
  br i1 %cmp88, label %lor.lhs.false90, label %if.then106

lor.lhs.false90:                                  ; preds = %if.then84
  %44 = load i32* %l, align 4, !tbaa !3
  %add91 = add nsw i32 %44, 4
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds i8* %type, i64 %idxprom92
  %45 = load i8* %arrayidx93, align 1, !tbaa !1
  %cmp95 = icmp eq i8 %45, 0
  br i1 %cmp95, label %lor.lhs.false97, label %if.then106

lor.lhs.false97:                                  ; preds = %lor.lhs.false90
  %46 = load i32* %43, align 4, !tbaa !3
  %cmp99 = icmp slt i32 %46, 1
  br i1 %cmp99, label %if.then106, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %47 = load i32* %41, align 4, !tbaa !3
  %cmp104 = icmp sgt i32 %46, %47
  br i1 %cmp104, label %if.then106, label %if.end110

if.then106:                                       ; preds = %lor.lhs.false90, %if.then84, %lor.lhs.false101, %lor.lhs.false97
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 703, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str39, i64 0, i64 0), i8* %type) #7
  br label %if.end110

if.else108:                                       ; preds = %if.then78
  %cepsize_used109 = getelementptr inbounds i8* %call, i64 12
  %48 = bitcast i8* %cepsize_used109 to i32*
  store i32 13, i32* %48, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %lor.lhs.false101, %if.then106, %if.else108
  %n_stream111 = getelementptr inbounds i8* %call, i64 16
  %49 = bitcast i8* %n_stream111 to i32*
  store i32 1, i32* %49, align 4, !tbaa !3
  %call112 = call i8* @__ckd_calloc__(i64 1, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 707) #7
  %50 = bitcast i8* %call112 to i32*
  %stream_len113 = getelementptr inbounds i8* %call, i64 24
  %51 = bitcast i8* %stream_len113 to i32**
  store i32* %50, i32** %51, align 8, !tbaa !0
  %cepsize_used114 = getelementptr inbounds i8* %call, i64 12
  %52 = bitcast i8* %cepsize_used114 to i32*
  %53 = load i32* %52, align 4, !tbaa !3
  store i32 %53, i32* %50, align 4, !tbaa !3
  %window_size117 = getelementptr inbounds i8* %call, i64 32
  %54 = bitcast i8* %window_size117 to i32*
  store i32 0, i32* %54, align 4, !tbaa !3
  %compute_feat118 = getelementptr inbounds i8* %call, i64 48
  %55 = bitcast i8* %compute_feat118 to void (%struct.feat_s*, float**, float**)**
  store void (%struct.feat_s*, float**, float**)* @feat_s3_cep, void (%struct.feat_s*, float**, float**)** %55, align 8, !tbaa !0
  br label %if.end176

if.else119:                                       ; preds = %if.else74
  %call120 = call i64 @strlen(i8* %type) #8
  %conv121 = trunc i64 %call120 to i32
  store i32 %conv121, i32* %l, align 4, !tbaa !3
  %sub327 = add nsw i32 %conv121, -1
  %cmp122328 = icmp sgt i32 %sub327, 1
  br i1 %cmp122328, label %for.body, label %for.end

for.body:                                         ; preds = %if.else119, %for.inc
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %for.inc ], [ 1, %if.else119 ]
  %k.0329 = phi i32 [ %k.1, %for.inc ], [ 0, %if.else119 ]
  %arrayidx125 = getelementptr inbounds i8* %type, i64 %indvars.iv332
  %56 = load i8* %arrayidx125, align 1, !tbaa !1
  %cmp127 = icmp eq i8 %56, 44
  br i1 %cmp127, label %if.then129, label %for.inc

if.then129:                                       ; preds = %for.body
  store i8 32, i8* %arrayidx125, align 1, !tbaa !1
  %inc = add nsw i32 %k.0329, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then129
  %k.1 = phi i32 [ %inc, %if.then129 ], [ %k.0329, %for.body ]
  %indvars.iv.next333 = add i64 %indvars.iv332, 1
  %57 = trunc i64 %indvars.iv.next333 to i32
  %cmp122 = icmp slt i32 %57, %sub327
  br i1 %cmp122, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.else119
  %k.0.lcssa = phi i32 [ 0, %if.else119 ], [ %k.1, %for.inc ]
  %inc134 = add nsw i32 %k.0.lcssa, 1
  %n_stream135 = getelementptr inbounds i8* %call, i64 16
  %58 = bitcast i8* %n_stream135 to i32*
  store i32 %inc134, i32* %58, align 4, !tbaa !3
  %conv136 = sext i32 %inc134 to i64
  %call137 = call i8* @__ckd_calloc__(i64 %conv136, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 725) #7
  %59 = bitcast i8* %call137 to i32*
  %stream_len138 = getelementptr inbounds i8* %call, i64 24
  %60 = bitcast i8* %stream_len138 to i32**
  store i32* %59, i32** %60, align 8, !tbaa !0
  %call139323 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str41, i64 0, i64 0), i8* %0, i32* %l) #7
  %cmp140324 = icmp eq i32 %call139323, 1
  br i1 %cmp140324, label %while.body, label %while.end

while.body:                                       ; preds = %for.end, %if.end161
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end161 ], [ 0, %for.end ]
  %i.1326 = phi i32 [ %inc162, %if.end161 ], [ 0, %for.end ]
  %strp.0325 = phi i8* [ %add.ptr142, %if.end161 ], [ %type, %for.end ]
  %61 = load i32* %l, align 4, !tbaa !3
  %idx.ext = sext i32 %61 to i64
  %add.ptr142 = getelementptr inbounds i8* %strp.0325, i64 %idx.ext
  %62 = load i32* %58, align 4, !tbaa !3
  %63 = trunc i64 %indvars.iv to i32
  %cmp144 = icmp slt i32 %63, %62
  br i1 %cmp144, label %lor.lhs.false146, label %if.then160

lor.lhs.false146:                                 ; preds = %while.body
  %64 = load i32** %60, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i32* %64, i64 %indvars.iv
  %call151 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0), i32* %arrayidx150) #7
  %cmp152 = icmp eq i32 %call151, 1
  br i1 %cmp152, label %lor.lhs.false154, label %if.then160

lor.lhs.false154:                                 ; preds = %lor.lhs.false146
  %65 = load i32** %60, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i32* %65, i64 %indvars.iv
  %66 = load i32* %arrayidx157, align 4, !tbaa !3
  %cmp158 = icmp slt i32 %66, 1
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %lor.lhs.false146, %while.body, %lor.lhs.false154
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 734, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0)) #7
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %lor.lhs.false154
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc162 = add nsw i32 %i.1326, 1
  %call139 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr142, i8* getelementptr inbounds ([5 x i8]* @.str41, i64 0, i64 0), i8* %0, i32* %l) #7
  %cmp140 = icmp eq i32 %call139, 1
  br i1 %cmp140, label %while.body, label %while.end

while.end:                                        ; preds = %if.end161, %for.end
  %i.1.lcssa = phi i32 [ 0, %for.end ], [ %inc162, %if.end161 ]
  %67 = load i32* %58, align 4, !tbaa !3
  %cmp164 = icmp eq i32 %i.1.lcssa, %67
  br i1 %cmp164, label %if.end167, label %if.then166

if.then166:                                       ; preds = %while.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 738, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0)) #7
  br label %if.end167

if.end167:                                        ; preds = %while.end, %if.then166
  %cepsize168 = getelementptr inbounds i8* %call, i64 8
  %68 = bitcast i8* %cepsize168 to i32*
  store i32 -1, i32* %68, align 4, !tbaa !3
  %cepsize_used169 = getelementptr inbounds i8* %call, i64 12
  %69 = bitcast i8* %cepsize_used169 to i32*
  store i32 -1, i32* %69, align 4, !tbaa !3
  %window_size170 = getelementptr inbounds i8* %call, i64 32
  %70 = bitcast i8* %window_size170 to i32*
  store i32 0, i32* %70, align 4, !tbaa !3
  %compute_feat171 = getelementptr inbounds i8* %call, i64 48
  %71 = bitcast i8* %compute_feat171 to void (%struct.feat_s*, float**, float**)**
  store void (%struct.feat_s*, float**, float**)* null, void (%struct.feat_s*, float**, float**)** %71, align 8, !tbaa !0
  br label %if.end176

if.end176:                                        ; preds = %if.then13, %if.end65, %if.end167, %if.end110, %if.then26, %if.then
  %call177 = call i32 @strcmp(i8* %cmn, i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0)) #8
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.then180, label %if.else182

if.then180:                                       ; preds = %if.end176
  %cmn181 = getelementptr inbounds i8* %call, i64 36
  %72 = bitcast i8* %cmn181 to i32*
  store i32 1, i32* %72, align 4, !tbaa !3
  br label %if.end190

if.else182:                                       ; preds = %if.end176
  %call183 = call i32 @strcmp(i8* %cmn, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #8
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %if.else188

if.then186:                                       ; preds = %if.else182
  %cmn187 = getelementptr inbounds i8* %call, i64 36
  %73 = bitcast i8* %cmn187 to i32*
  store i32 0, i32* %73, align 4, !tbaa !3
  br label %if.end190

if.else188:                                       ; preds = %if.else182
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 752, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str46, i64 0, i64 0), i8* %cmn) #7
  br label %if.end190

if.end190:                                        ; preds = %if.then186, %if.else188, %if.then180
  %call191 = call i32 @strcmp(i8* %varnorm, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0)) #8
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.else196

if.then194:                                       ; preds = %if.end190
  %varnorm195 = getelementptr inbounds i8* %call, i64 40
  %74 = bitcast i8* %varnorm195 to i32*
  store i32 1, i32* %74, align 4, !tbaa !3
  br label %if.end204

if.else196:                                       ; preds = %if.end190
  %call197 = call i32 @strcmp(i8* %varnorm, i8* getelementptr inbounds ([3 x i8]* @.str48, i64 0, i64 0)) #8
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else202

if.then200:                                       ; preds = %if.else196
  %varnorm201 = getelementptr inbounds i8* %call, i64 40
  %75 = bitcast i8* %varnorm201 to i32*
  store i32 0, i32* %75, align 4, !tbaa !3
  br label %if.end204

if.else202:                                       ; preds = %if.else196
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 759, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str49, i64 0, i64 0), i8* %varnorm) #7
  br label %if.end204

if.end204:                                        ; preds = %if.then200, %if.else202, %if.then194
  %call205 = call i32 @strcmp(i8* %agc, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #8
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %if.then208, label %if.else210

if.then208:                                       ; preds = %if.end204
  %agc209 = getelementptr inbounds i8* %call, i64 44
  %76 = bitcast i8* %agc209 to i32*
  store i32 1, i32* %76, align 4, !tbaa !3
  br label %if.end218

if.else210:                                       ; preds = %if.end204
  %call211 = call i32 @strcmp(i8* %agc, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #8
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.then214, label %if.else216

if.then214:                                       ; preds = %if.else210
  %agc215 = getelementptr inbounds i8* %call, i64 44
  %77 = bitcast i8* %agc215 to i32*
  store i32 0, i32* %77, align 4, !tbaa !3
  br label %if.end218

if.else216:                                       ; preds = %if.else210
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 766, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str51, i64 0, i64 0), i8* %agc) #7
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %if.else216, %if.then208
  call void @llvm.lifetime.end(i64 16384, i8* %0) #4
  ret %struct.feat_s* %1
}

; Function Attrs: optsize
declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal void @feat_s2_4x_cep2feat(%struct.feat_s* nocapture %fcb, float** nocapture %mfc, float** nocapture %feat) #0 {
entry:
  %0 = load float** %feat, align 8, !tbaa !0
  %1 = bitcast float* %0 to i8*
  %2 = load float** %mfc, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds float* %2, i64 1
  %3 = bitcast float* %add.ptr to i8*
  %cepsize = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 1
  %4 = load i32* %cepsize, align 4, !tbaa !3
  %sub = add nsw i32 %4, -1
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 4, i1 false)
  %arrayidx2 = getelementptr inbounds float** %mfc, i64 2
  %5 = load float** %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds float** %mfc, i64 -2
  %6 = load float** %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds float** %feat, i64 1
  %7 = load float** %arrayidx6, align 8, !tbaa !0
  %8 = load i32* %cepsize, align 4, !tbaa !3
  %sub8143 = add nsw i32 %8, -1
  %cmp144 = icmp sgt i32 %sub8143, 0
  br i1 %cmp144, label %for.body.lr.ph, label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %9 = icmp sgt i32 %sub8143, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv150 = phi i64 [ 0, %for.body.lr.ph ], [ %add.ptr3.sum, %for.body ]
  %add.ptr3.sum = add i64 %indvars.iv150, 1
  %arrayidx10 = getelementptr inbounds float* %5, i64 %add.ptr3.sum
  %10 = load float* %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds float* %6, i64 %add.ptr3.sum
  %11 = load float* %arrayidx12, align 4, !tbaa !5
  %sub13 = fsub float %10, %11
  %arrayidx15 = getelementptr inbounds float* %7, i64 %indvars.iv150
  store float %sub13, float* %arrayidx15, align 4, !tbaa !5
  %12 = trunc i64 %add.ptr3.sum to i32
  %cmp = icmp slt i32 %12, %sub8143
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %13 = sext i32 %sub8143 to i64
  %phitmp = select i1 %9, i64 %13, i64 1
  %arrayidx16 = getelementptr inbounds float** %mfc, i64 4
  %14 = load float** %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds float** %mfc, i64 -4
  %15 = load float** %arrayidx18, align 8, !tbaa !0
  br i1 %cmp144, label %for.body25, label %for.end36

for.body25:                                       ; preds = %for.end, %for.body25
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %for.body25 ], [ %phitmp, %for.end ]
  %indvars.iv146 = phi i64 [ %add.ptr17.sum, %for.body25 ], [ 0, %for.end ]
  %add.ptr17.sum = add i64 %indvars.iv146, 1
  %arrayidx27 = getelementptr inbounds float* %14, i64 %add.ptr17.sum
  %16 = load float* %arrayidx27, align 4, !tbaa !5
  %arrayidx29 = getelementptr inbounds float* %15, i64 %add.ptr17.sum
  %17 = load float* %arrayidx29, align 4, !tbaa !5
  %sub30 = fsub float %16, %17
  %arrayidx32 = getelementptr inbounds float* %7, i64 %indvars.iv148
  store float %sub30, float* %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next149 = add i64 %indvars.iv148, 1
  %18 = trunc i64 %add.ptr17.sum to i32
  %cmp23 = icmp slt i32 %18, %sub8143
  br i1 %cmp23, label %for.body25, label %for.end36

for.end36:                                        ; preds = %entry, %for.body25, %for.end
  %arrayidx37 = getelementptr inbounds float** %mfc, i64 3
  %19 = load float** %arrayidx37, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds float** %mfc, i64 -1
  %20 = load float** %arrayidx39, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds float** %mfc, i64 1
  %21 = load float** %arrayidx41, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds float** %mfc, i64 -3
  %22 = load float** %arrayidx43, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds float** %feat, i64 3
  %23 = load float** %arrayidx45, align 8, !tbaa !0
  br i1 %cmp144, label %for.body51, label %for.end67

for.body51:                                       ; preds = %for.end36, %for.body51
  %indvars.iv = phi i64 [ %add.ptr38.sum, %for.body51 ], [ 0, %for.end36 ]
  %add.ptr38.sum = add i64 %indvars.iv, 1
  %arrayidx53 = getelementptr inbounds float* %19, i64 %add.ptr38.sum
  %24 = load float* %arrayidx53, align 4, !tbaa !5
  %arrayidx55 = getelementptr inbounds float* %20, i64 %add.ptr38.sum
  %25 = load float* %arrayidx55, align 4, !tbaa !5
  %sub56 = fsub float %24, %25
  %arrayidx58 = getelementptr inbounds float* %21, i64 %add.ptr38.sum
  %26 = load float* %arrayidx58, align 4, !tbaa !5
  %arrayidx60 = getelementptr inbounds float* %22, i64 %add.ptr38.sum
  %27 = load float* %arrayidx60, align 4, !tbaa !5
  %sub61 = fsub float %26, %27
  %sub62 = fsub float %sub56, %sub61
  %arrayidx64 = getelementptr inbounds float* %23, i64 %indvars.iv
  store float %sub62, float* %arrayidx64, align 4, !tbaa !5
  %28 = trunc i64 %add.ptr38.sum to i32
  %cmp49 = icmp slt i32 %28, %sub8143
  br i1 %cmp49, label %for.body51, label %for.end67

for.end67:                                        ; preds = %for.body51, %for.end36
  %arrayidx68 = getelementptr inbounds float** %feat, i64 2
  %29 = load float** %arrayidx68, align 8, !tbaa !0
  %30 = load float** %mfc, align 8, !tbaa !0
  %31 = load float* %30, align 4, !tbaa !5
  store float %31, float* %29, align 4, !tbaa !5
  %32 = load float* %5, align 4, !tbaa !5
  %33 = load float* %6, align 4, !tbaa !5
  %sub76 = fsub float %32, %33
  %arrayidx77 = getelementptr inbounds float* %29, i64 1
  store float %sub76, float* %arrayidx77, align 4, !tbaa !5
  %34 = load float* %19, align 4, !tbaa !5
  %35 = load float* %20, align 4, !tbaa !5
  %sub82 = fsub float %34, %35
  %36 = load float* %21, align 4, !tbaa !5
  %37 = load float* %22, align 4, !tbaa !5
  %sub87 = fsub float %36, %37
  %sub88 = fsub float %sub82, %sub87
  %arrayidx89 = getelementptr inbounds float* %29, i64 2
  store float %sub88, float* %arrayidx89, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @feat_s3_1x39_cep2feat(%struct.feat_s* nocapture %fcb, float** nocapture %mfc, float** nocapture %feat) #0 {
entry:
  %0 = load float** %feat, align 8, !tbaa !0
  %1 = bitcast float* %0 to i8*
  %2 = load float** %mfc, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds float* %2, i64 1
  %3 = bitcast float* %add.ptr to i8*
  %cepsize = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 1
  %4 = load i32* %cepsize, align 4, !tbaa !3
  %sub = add nsw i32 %4, -1
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 4, i1 false)
  %5 = load float** %feat, align 8, !tbaa !0
  %6 = load i32* %cepsize, align 4, !tbaa !3
  %idx.ext = sext i32 %6 to i64
  %add.ptr4.sum = add i64 %idx.ext, -1
  %arrayidx6 = getelementptr inbounds float** %mfc, i64 2
  %7 = load float** %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds float** %mfc, i64 -2
  %8 = load float** %arrayidx8, align 8, !tbaa !0
  %sub11118 = add nsw i32 %6, -1
  %cmp119 = icmp sgt i32 %sub11118, 0
  br i1 %cmp119, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv121 = phi i64 [ %add.ptr7.sum, %for.body ], [ 0, %entry ]
  %add.ptr7.sum = add i64 %indvars.iv121, 1
  %arrayidx13 = getelementptr inbounds float* %7, i64 %add.ptr7.sum
  %9 = load float* %arrayidx13, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds float* %8, i64 %add.ptr7.sum
  %10 = load float* %arrayidx15, align 4, !tbaa !5
  %sub16 = fsub float %9, %10
  %add.ptr5.sum114 = add i64 %indvars.iv121, %add.ptr4.sum
  %arrayidx18 = getelementptr inbounds float* %5, i64 %add.ptr5.sum114
  store float %sub16, float* %arrayidx18, align 4, !tbaa !5
  %11 = trunc i64 %add.ptr7.sum to i32
  %cmp = icmp slt i32 %11, %sub11118
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %idx.ext21 = sext i32 %sub11118 to i64
  %add.ptr5.sum = add i64 %idx.ext21, %add.ptr4.sum
  %add.ptr22 = getelementptr inbounds float* %5, i64 %add.ptr5.sum
  %12 = load float** %mfc, align 8, !tbaa !0
  %13 = load float* %12, align 4, !tbaa !5
  store float %13, float* %add.ptr22, align 4, !tbaa !5
  %14 = load float* %7, align 4, !tbaa !5
  %15 = load float* %8, align 4, !tbaa !5
  %sub30 = fsub float %14, %15
  %add.ptr22.sum = add i64 %idx.ext21, %idx.ext
  %arrayidx31 = getelementptr inbounds float* %5, i64 %add.ptr22.sum
  store float %sub30, float* %arrayidx31, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds float** %mfc, i64 3
  %16 = load float** %arrayidx32, align 8, !tbaa !0
  %17 = load float* %16, align 4, !tbaa !5
  %arrayidx34 = getelementptr inbounds float** %mfc, i64 -1
  %18 = load float** %arrayidx34, align 8, !tbaa !0
  %19 = load float* %18, align 4, !tbaa !5
  %sub36 = fsub float %17, %19
  %arrayidx37 = getelementptr inbounds float** %mfc, i64 1
  %20 = load float** %arrayidx37, align 8, !tbaa !0
  %21 = load float* %20, align 4, !tbaa !5
  %arrayidx39 = getelementptr inbounds float** %mfc, i64 -3
  %22 = load float** %arrayidx39, align 8, !tbaa !0
  %23 = load float* %22, align 4, !tbaa !5
  %sub41 = fsub float %21, %23
  %sub42 = fsub float %sub36, %sub41
  %add.ptr22.sum112 = add i64 %add.ptr5.sum, 2
  %arrayidx43 = getelementptr inbounds float* %5, i64 %add.ptr22.sum112
  store float %sub42, float* %arrayidx43, align 4, !tbaa !5
  %add.ptr22.sum113 = add i64 %add.ptr5.sum, 3
  br i1 %cmp119, label %for.body58, label %for.end74

for.body58:                                       ; preds = %for.end, %for.body58
  %indvars.iv = phi i64 [ %add.ptr46.sum, %for.body58 ], [ 0, %for.end ]
  %add.ptr46.sum = add i64 %indvars.iv, 1
  %arrayidx60 = getelementptr inbounds float* %16, i64 %add.ptr46.sum
  %24 = load float* %arrayidx60, align 4, !tbaa !5
  %arrayidx62 = getelementptr inbounds float* %18, i64 %add.ptr46.sum
  %25 = load float* %arrayidx62, align 4, !tbaa !5
  %sub63 = fsub float %24, %25
  %arrayidx65 = getelementptr inbounds float* %20, i64 %add.ptr46.sum
  %26 = load float* %arrayidx65, align 4, !tbaa !5
  %arrayidx67 = getelementptr inbounds float* %22, i64 %add.ptr46.sum
  %27 = load float* %arrayidx67, align 4, !tbaa !5
  %sub68 = fsub float %26, %27
  %sub69 = fsub float %sub63, %sub68
  %add.ptr44.sum = add i64 %add.ptr22.sum113, %indvars.iv
  %arrayidx71 = getelementptr inbounds float* %5, i64 %add.ptr44.sum
  store float %sub69, float* %arrayidx71, align 4, !tbaa !5
  %28 = trunc i64 %add.ptr46.sum to i32
  %cmp56 = icmp slt i32 %28, %sub11118
  br i1 %cmp56, label %for.body58, label %for.end74

for.end74:                                        ; preds = %for.body58, %for.end
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal void @feat_s3_cep_dcep(%struct.feat_s* nocapture %fcb, float** nocapture %mfc, float** nocapture %feat) #0 {
entry:
  %0 = load float** %feat, align 8, !tbaa !0
  %1 = bitcast float* %0 to i8*
  %2 = load float** %mfc, align 8, !tbaa !0
  %3 = bitcast float* %2 to i8*
  %cepsize_used = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 2
  %4 = load i32* %cepsize_used, align 4, !tbaa !3
  %conv = sext i32 %4 to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 4, i1 false)
  %5 = load float** %feat, align 8, !tbaa !0
  %6 = load i32* %cepsize_used, align 4, !tbaa !3
  %idx.ext = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds float** %mfc, i64 2
  %7 = load float** %arrayidx4, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds float** %mfc, i64 -2
  %8 = load float** %arrayidx5, align 8, !tbaa !0
  %cmp22 = icmp sgt i32 %6, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx8 = getelementptr inbounds float* %7, i64 %indvars.iv
  %9 = load float* %arrayidx8, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds float* %8, i64 %indvars.iv
  %10 = load float* %arrayidx10, align 4, !tbaa !5
  %sub = fsub float %9, %10
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext
  %arrayidx12 = getelementptr inbounds float* %5, i64 %add.ptr.sum
  store float %sub, float* %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %11, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @feat_s3_cep(%struct.feat_s* nocapture %fcb, float** nocapture %mfc, float** nocapture %feat) #0 {
entry:
  %0 = load float** %feat, align 8, !tbaa !0
  %1 = bitcast float* %0 to i8*
  %2 = load float** %mfc, align 8, !tbaa !0
  %3 = bitcast float* %2 to i8*
  %cepsize_used = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 2
  %4 = load i32* %cepsize_used, align 4, !tbaa !3
  %conv = sext i32 %4 to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @feat_print(%struct.feat_s* nocapture %fcb, float*** nocapture %feat, i32 %nfr, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %cmp40 = icmp sgt i32 %nfr, 0
  br i1 %cmp40, label %for.body.lr.ph, label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %n_stream = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 3
  %stream_len = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc19, %for.body.lr.ph
  %indvars.iv44 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next45, %for.inc19 ]
  %0 = trunc i64 %indvars.iv44 to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i32 %0) #7
  %1 = load i32* %n_stream, align 4, !tbaa !3
  %cmp238 = icmp sgt i32 %1, 0
  br i1 %cmp238, label %for.body3.lr.ph, label %for.inc19

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx11 = getelementptr inbounds float*** %feat, i64 %indvars.iv44
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.end
  %indvars.iv42 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next43, %for.end ]
  %2 = trunc i64 %indvars.iv42 to i32
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i32 %2) #7
  %3 = load i32** %stream_len, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32* %3, i64 %indvars.iv42
  %4 = load i32* %arrayidx35, align 4, !tbaa !3
  %cmp636 = icmp sgt i32 %4, 0
  br i1 %cmp636, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.body3, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.body3 ]
  %5 = load float*** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds float** %5, i64 %indvars.iv42
  %6 = load float** %arrayidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds float* %6, i64 %indvars.iv
  %7 = load float* %arrayidx13, align 4, !tbaa !5
  %conv = fpext float %7 to double
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), double %conv) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32** %stream_len, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv42
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %10, %9
  br i1 %cmp6, label %for.body7, label %for.end

for.end:                                          ; preds = %for.body7, %for.body3
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %11 = load i32* %n_stream, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next43 to i32
  %cmp2 = icmp slt i32 %12, %11
  br i1 %cmp2, label %for.body3, label %for.inc19

for.inc19:                                        ; preds = %for.end, %for.body
  %indvars.iv.next45 = add i64 %indvars.iv44, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nfr
  br i1 %exitcond, label %for.end21, label %for.body

for.end21:                                        ; preds = %for.inc19, %entry
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %fp) #7
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @feat_s2mfc2feat(%struct.feat_s* %fcb, i8* %file, i8* %dir, i32 %sf, i32 %ef, float*** nocapture %feat, i32 %maxfr) #0 {
entry:
  %path = alloca [16384 x i8], align 16
  %0 = getelementptr inbounds [16384 x i8]* %path, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %0) #4
  %cepsize = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 1
  %1 = load i32* %cepsize, align 4, !tbaa !3
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 802, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %2 = load i32* %cepsize, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i32 %2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i64 @strlen(i8* %file) #8
  %conv = trunc i64 %call to i32
  %cmp2 = icmp sgt i32 %conv, 4
  br i1 %cmp2, label %land.lhs.true, label %if.else18

land.lhs.true:                                    ; preds = %if.end
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr.sum = add i64 %idx.ext, -4
  %add.ptr4 = getelementptr inbounds i8* %file, i64 %add.ptr.sum
  %call5 = call i32 @strcmp(i8* %add.ptr4, i8* getelementptr inbounds ([5 x i8]* @.str57, i64 0, i64 0)) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.else18

if.then8:                                         ; preds = %land.lhs.true
  %tobool = icmp eq i8* %dir, null
  br i1 %tobool, label %if.else, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then8
  %3 = load i8* %file, align 1, !tbaa !1
  %cmp11 = icmp eq i8 %3, 47
  br i1 %cmp11, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true9
  %call14 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), i8* %dir, i8* %file) #7
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true9, %if.then8
  %call16 = call i8* @strcpy(i8* %0, i8* %file) #7
  br label %if.end32

if.else18:                                        ; preds = %land.lhs.true, %if.end
  %tobool19 = icmp eq i8* %dir, null
  br i1 %tobool19, label %if.else28, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.else18
  %4 = load i8* %file, align 1, !tbaa !1
  %cmp23 = icmp eq i8 %4, 47
  br i1 %cmp23, label %if.else28, label %if.then25

if.then25:                                        ; preds = %land.lhs.true20
  %call27 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str59, i64 0, i64 0), i8* %dir, i8* %file) #7
  br label %if.end32

if.else28:                                        ; preds = %land.lhs.true20, %if.else18
  %call30 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str60, i64 0, i64 0), i8* %file) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.else28, %if.then13, %if.else
  %window_size = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 5
  %5 = load i32* %window_size, align 4, !tbaa !3
  %cmp33 = icmp slt i32 %ef, 0
  %sub = sub nsw i32 2147418112, %5
  %sub.ef = select i1 %cmp33, i32 %sub, i32 %ef
  %sub37 = sub nsw i32 %sf, %5
  %sub66 = sub nsw i32 0, %sub37
  %add = add nsw i32 %sub.ef, %5
  %6 = load i32* %cepsize, align 4, !tbaa !3
  %call39 = call i8** @__ckd_calloc_2d__(i32 15000, i32 %6, i32 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 829) #7
  %7 = bitcast i8** %call39 to float**
  %cmp40 = icmp slt i32 %sub37, 0
  br i1 %cmp40, label %if.then42, label %if.else49

if.then42:                                        ; preds = %if.end32
  %idx.ext44 = sext i32 %sub37 to i64
  %idx.neg = sub i64 0, %idx.ext44
  %add.ptr45242 = getelementptr inbounds i8** %call39, i64 %idx.neg
  %add.ptr45 = bitcast i8** %add.ptr45242 to float**
  %add46 = sub i32 15000, %5
  %sub47 = add i32 %add46, %sub37
  %call48 = call i32 @feat_s2mfc_read(i8* %0, i32 0, i32 %add, float** %add.ptr45, i32 %sub47) #9
  br label %if.end53

if.else49:                                        ; preds = %if.end32
  %sub51 = sub nsw i32 15000, %5
  %call52 = call i32 @feat_s2mfc_read(i8* %0, i32 %sub37, i32 %add, float** %7, i32 %sub51) #9
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then42
  %nfr.0 = phi i32 [ %call48, %if.then42 ], [ %call52, %if.else49 ]
  %cmp54 = icmp slt i32 %nfr.0, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @ckd_free_2d(i8** %call39) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %mul = shl nsw i32 %5, 1
  %add58232 = or i32 %mul, 1
  %cmp59 = icmp slt i32 %nfr.0, %add58232
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 853, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([63 x i8]* @.str61, i64 0, i64 0), i8* %file, i32 %nfr.0) #7
  call void @ckd_free_2d(i8** %call39) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  br i1 %cmp40, label %for.body.lr.ph, label %if.end78

for.body.lr.ph:                                   ; preds = %if.end62
  %sub70 = sub i32 1, %sub37
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv252 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next253, %for.body ]
  %arrayidx69238 = getelementptr inbounds i8** %call39, i64 %indvars.iv252
  %arrayidx69239 = load i8** %arrayidx69238, align 8
  %8 = trunc i64 %indvars.iv252 to i32
  %add71 = add i32 %sub70, %8
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73240 = getelementptr inbounds i8** %call39, i64 %idxprom72
  %arrayidx73241 = load i8** %arrayidx73240, align 8
  %9 = load i32* %cepsize, align 4, !tbaa !3
  %conv75 = sext i32 %9 to i64
  %mul76 = shl nsw i64 %conv75, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx69239, i8* %arrayidx73241, i64 %mul76, i32 4, i1 false)
  %indvars.iv.next253 = add i64 %indvars.iv252, 1
  %10 = trunc i64 %indvars.iv.next253 to i32
  %cmp67 = icmp slt i32 %10, %sub66
  br i1 %cmp67, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %sub77 = sub nsw i32 %nfr.0, %sub37
  br label %if.end78

if.end78:                                         ; preds = %for.end, %if.end62
  %nfr.1 = phi i32 [ %sub77, %for.end ], [ %nfr.0, %if.end62 ]
  %sub79 = sub nsw i32 %add, %sub37
  %add80 = add nsw i32 %sub79, 1
  %cmp81 = icmp slt i32 %nfr.1, %add80
  br i1 %cmp81, label %if.then83, label %if.end108

if.then83:                                        ; preds = %if.end78
  %sub84 = sub nsw i32 %add80, %nfr.1
  %cmp85 = icmp sgt i32 %sub84, %5
  %.sub84 = select i1 %cmp85, i32 %5, i32 %sub84
  %cmp90245 = icmp sgt i32 %.sub84, 0
  br i1 %cmp90245, label %for.body92.lr.ph, label %for.end106

for.body92.lr.ph:                                 ; preds = %if.then83
  %sub97 = xor i32 %.sub84, -1
  %11 = sext i32 %nfr.1 to i64
  %12 = xor i32 %5, -1
  %13 = add i32 %nfr.1, %sf
  %14 = add i32 %13, -2
  %15 = sub i32 %14, %sub.ef
  %16 = shl i32 %5, 1
  %17 = sub i32 %15, %16
  %18 = icmp slt i32 %17, %12
  %smax = select i1 %18, i32 %12, i32 %17
  %19 = xor i32 %smax, -1
  br label %for.body92

for.body92:                                       ; preds = %for.body92, %for.body92.lr.ph
  %indvars.iv249 = phi i64 [ 0, %for.body92.lr.ph ], [ %indvars.iv.next250, %for.body92 ]
  %20 = add nsw i64 %indvars.iv249, %11
  %arrayidx95234 = getelementptr inbounds i8** %call39, i64 %20
  %arrayidx95235 = load i8** %arrayidx95234, align 8
  %21 = trunc i64 %20 to i32
  %sub98 = add i32 %21, %sub97
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100236 = getelementptr inbounds i8** %call39, i64 %idxprom99
  %arrayidx100237 = load i8** %arrayidx100236, align 8
  %22 = load i32* %cepsize, align 4, !tbaa !3
  %conv102 = sext i32 %22 to i64
  %mul103 = shl nsw i64 %conv102, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx95235, i8* %arrayidx100237, i64 %mul103, i32 4, i1 false)
  %indvars.iv.next250 = add i64 %indvars.iv249, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next250 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %19
  br i1 %exitcond, label %for.end106, label %for.body92

for.end106:                                       ; preds = %for.body92, %if.then83
  %add107 = add nsw i32 %.sub84, %nfr.1
  br label %if.end108

if.end108:                                        ; preds = %for.end106, %if.end78
  %nfr.2 = phi i32 [ %add107, %for.end106 ], [ %nfr.1, %if.end78 ]
  %sub110 = sub nsw i32 %nfr.2, %mul
  %cmp111 = icmp sgt i32 %sub110, %maxfr
  br i1 %cmp111, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end108
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 879, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([51 x i8]* @.str62, i64 0, i64 0), i32 %maxfr, i32 %sub110) #7
  call void @ckd_free_2d(i8** %call39) #7
  br label %cleanup

if.end116:                                        ; preds = %if.end108
  %cmn = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 6
  %23 = load i32* %cmn, align 4, !tbaa !3
  %tobool117 = icmp eq i32 %23, 0
  br i1 %tobool117, label %if.end120, label %if.then118

if.then118:                                       ; preds = %if.end116
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 885, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0)) #7
  %varnorm = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 7
  %24 = load i32* %varnorm, align 4, !tbaa !3
  %25 = load i32* %cepsize, align 4, !tbaa !3
  call void @cmn(float** %7, i32 %24, i32 %nfr.2, i32 %25) #7
  br label %if.end120

if.end120:                                        ; preds = %if.end116, %if.then118
  %agc = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 8
  %26 = load i32* %agc, align 4, !tbaa !3
  %tobool121 = icmp eq i32 %26, 0
  br i1 %tobool121, label %for.cond124.preheader, label %if.then122

if.then122:                                       ; preds = %if.end120
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 889, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0)) #7
  call void @agc_max(float** %7, i32 %nfr.2) #7
  br label %for.cond124.preheader

for.cond124.preheader:                            ; preds = %if.end120, %if.then122
  %sub125 = sub nsw i32 %nfr.2, %5
  %cmp126243 = icmp slt i32 %5, %sub125
  br i1 %cmp126243, label %for.body128.lr.ph, label %for.end136

for.body128.lr.ph:                                ; preds = %for.cond124.preheader
  %compute_feat = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 9
  %27 = sext i32 %5 to i64
  br label %for.body128

for.body128:                                      ; preds = %for.body128.lr.ph, %for.body128
  %indvars.iv = phi i64 [ %27, %for.body128.lr.ph ], [ %indvars.iv.next, %for.body128 ]
  %28 = load void (%struct.feat_s*, float**, float**)** %compute_feat, align 8, !tbaa !0
  %add.ptr130233 = getelementptr inbounds i8** %call39, i64 %indvars.iv
  %add.ptr130 = bitcast i8** %add.ptr130233 to float**
  %29 = trunc i64 %indvars.iv to i32
  %sub131 = sub nsw i32 %29, %5
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds float*** %feat, i64 %idxprom132
  %30 = load float*** %arrayidx133, align 8, !tbaa !0
  call void %28(%struct.feat_s* %fcb, float** %add.ptr130, float** %30) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %31 = trunc i64 %indvars.iv.next to i32
  %cmp126 = icmp slt i32 %31, %sub125
  br i1 %cmp126, label %for.body128, label %for.end136

for.end136:                                       ; preds = %for.body128, %for.cond124.preheader
  call void @ckd_free_2d(i8** %call39) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end136, %if.then113, %if.then61, %if.then56, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then56 ], [ -1, %if.then61 ], [ -1, %if.then113 ], [ %sub110, %for.end136 ]
  call void @llvm.lifetime.end(i64 16384, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #1

; Function Attrs: optsize
declare void @cmn(float**, i32, i32, i32) #1

; Function Attrs: optsize
declare void @agc_max(float**, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @feat_s2mfc2feat_block(%struct.feat_s* %fcb, float** %uttcep, i32 %nfr, i32 %beginutt, i32 %endutt, float*** nocapture %ofeat) #0 {
entry:
  %window_size = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 5
  %0 = load i32* %window_size, align 4, !tbaa !3
  %sub = sub i32 0, %0
  %cepsize1 = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 1
  %1 = load i32* %cepsize1, align 4, !tbaa !3
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 964, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  %2 = load i32* %cepsize1, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i32 %2) #7
  %.pre = load i32* %cepsize1, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i32 [ %.pre, %if.then ], [ %1, %entry ]
  %4 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %cmp4 = icmp eq float** %4, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %call = tail call i8** @__ckd_calloc_2d__(i32 256, i32 %3, i32 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 968) #7
  %5 = bitcast i8** %call to float**
  store float** %5, float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %tobool = icmp eq i8** %call, null
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then5
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 969, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([52 x i8]* @.str65, i64 0, i64 0), i32 256, i32 %3, i64 4) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then6
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 971, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str66, i64 0, i64 0), i32 256) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %beginutt.addr.0 = phi i32 [ 1, %if.end7 ], [ %beginutt, %if.end ]
  %6 = load float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8, !tbaa !0
  %cmp9 = icmp eq float** %6, null
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end8
  %mul = shl nsw i32 %0, 1
  %add212 = or i32 %mul, 1
  %call11 = tail call i8** @__ckd_calloc_2d__(i32 %add212, i32 %3, i32 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 975) #7
  %7 = bitcast i8** %call11 to float**
  store float** %7, float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8, !tbaa !0
  %tobool12 = icmp eq i8** %call11, null
  br i1 %tobool12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then10
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 976, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #7
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([55 x i8]* @.str67, i64 0, i64 0), i32 %add212, i32 %3, i64 4) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.then13, %if.end8
  %cmn = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 6
  %8 = load i32* %cmn, align 4, !tbaa !3
  %tobool18 = icmp eq i32 %8, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  %varnorm = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 7
  %9 = load i32* %varnorm, align 4, !tbaa !3
  %10 = load i32* %cepsize1, align 4, !tbaa !3
  tail call void @cmn_prior(float** %uttcep, i32 %9, i32 %nfr, i32 %10, i32 %endutt) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then19
  %tobool22 = icmp eq i32 %beginutt.addr.0, 0
  br i1 %tobool22, label %if.end39, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end21
  %cmp24225 = icmp sgt i32 %0, 0
  br i1 %cmp24225, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp26 = icmp slt i32 %0, %nfr
  %conv = sext i32 %3 to i64
  %mul32 = shl nsw i64 %conv, 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv236 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next237.pre-phi, %for.inc ]
  %11 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds float** %11, i64 %indvars.iv236
  %12 = load float** %arrayidx, align 8, !tbaa !0
  %13 = bitcast float* %12 to i8*
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.body
  %14 = add nsw i64 %indvars.iv236, 1
  %arrayidx31 = getelementptr inbounds float** %uttcep, i64 %14
  %15 = load float** %arrayidx31, align 8, !tbaa !0
  %16 = bitcast float* %15 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %16, i64 %mul32, i32 4, i1 false)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %17 = load float** %uttcep, align 8, !tbaa !0
  %18 = bitcast float* %17 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %18, i64 %mul32, i32 4, i1 false)
  %indvars.iv.next237.pre = add i64 %indvars.iv236, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.else
  %indvars.iv.next237.pre-phi = phi i64 [ %14, %if.then27 ], [ %indvars.iv.next237.pre, %if.else ]
  %lftr.wideiv239 = trunc i64 %indvars.iv.next237.pre-phi to i32
  %exitcond240 = icmp eq i32 %lftr.wideiv239, %0
  br i1 %exitcond240, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %rem = srem i32 %0, 256
  store i32 %rem, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  store i32 %rem, i32* @feat_s2mfc2feat_block.curpos, align 4, !tbaa !3
  br label %if.end39

if.end39:                                         ; preds = %if.end21, %for.end
  %residualvecs.0 = phi i32 [ %sub, %for.end ], [ 0, %if.end21 ]
  %cmp41223 = icmp sgt i32 %nfr, 0
  br i1 %cmp41223, label %for.body43.lr.ph, label %for.end54

for.body43.lr.ph:                                 ; preds = %if.end39
  %conv49 = sext i32 %3 to i64
  %mul50 = shl nsw i64 %conv49, 2
  %.pre243 = load i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  br label %for.body43

for.body43:                                       ; preds = %for.body43, %for.body43.lr.ph
  %19 = phi i32 [ %.pre243, %for.body43.lr.ph ], [ %rem51, %for.body43 ]
  %indvars.iv232 = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next233, %for.body43 ]
  %inc44 = add nsw i32 %19, 1
  store i32 %inc44, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %idxprom45 = sext i32 %19 to i64
  %20 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds float** %20, i64 %idxprom45
  %21 = load float** %arrayidx46, align 8, !tbaa !0
  %22 = bitcast float* %21 to i8*
  %arrayidx48 = getelementptr inbounds float** %uttcep, i64 %indvars.iv232
  %23 = load float** %arrayidx48, align 8, !tbaa !0
  %24 = bitcast float* %23 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %24, i64 %mul50, i32 4, i1 false)
  %25 = load i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %rem51 = srem i32 %25, 256
  store i32 %rem51, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %nfr
  br i1 %exitcond235, label %for.end54, label %for.body43

for.end54:                                        ; preds = %for.body43, %if.end39
  %tobool55 = icmp eq i32 %endutt, 0
  br i1 %tobool55, label %if.end99, label %if.then56

if.then56:                                        ; preds = %for.end54
  %cmp61218 = icmp sgt i32 %0, 0
  br i1 %cmp41223, label %for.cond60.preheader, label %if.else76

for.cond60.preheader:                             ; preds = %if.then56
  br i1 %cmp61218, label %for.body63.lr.ph, label %if.end97

for.body63.lr.ph:                                 ; preds = %for.cond60.preheader
  %sub67 = add nsw i32 %nfr, -1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds float** %uttcep, i64 %idxprom68
  %conv70 = sext i32 %3 to i64
  %mul71 = shl nsw i64 %conv70, 2
  %.pre242 = load i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.lr.ph
  %26 = phi i32 [ %.pre242, %for.body63.lr.ph ], [ %rem72, %for.body63.for.body63_crit_edge ]
  %i.2219 = phi i32 [ 1, %for.body63.lr.ph ], [ %phitmp245, %for.body63.for.body63_crit_edge ]
  %inc64 = add nsw i32 %26, 1
  store i32 %inc64, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %idxprom65 = sext i32 %26 to i64
  %27 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds float** %27, i64 %idxprom65
  %28 = load float** %arrayidx66, align 8, !tbaa !0
  %29 = bitcast float* %28 to i8*
  %30 = load float** %arrayidx69, align 8, !tbaa !0
  %31 = bitcast float* %30 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %31, i64 %mul71, i32 4, i1 false)
  %32 = load i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %rem72 = srem i32 %32, 256
  store i32 %rem72, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %exitcond230 = icmp eq i32 %i.2219, %0
  br i1 %exitcond230, label %if.end97, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  %phitmp245 = add i32 %i.2219, 1
  br label %for.body63

if.else76:                                        ; preds = %if.then56
  br i1 %cmp61218, label %for.body85.lr.ph, label %if.end97

for.body85.lr.ph:                                 ; preds = %if.else76
  %33 = load i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %sub77 = shl i32 %33, 16
  %sext = add i32 %sub77, -65536
  %conv79 = ashr exact i32 %sext, 16
  %rem80 = srem i32 %conv79, 256
  %conv81 = zext i32 %rem80 to i64
  %sext211 = shl i64 %conv81, 48
  %idxprom89 = ashr exact i64 %sext211, 48
  %conv91 = sext i32 %3 to i64
  %mul92 = shl nsw i64 %conv91, 2
  br label %for.body85

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.body85.lr.ph
  %34 = phi i32 [ %33, %for.body85.lr.ph ], [ %rem93, %for.body85.for.body85_crit_edge ]
  %i.3222 = phi i32 [ 1, %for.body85.lr.ph ], [ %phitmp, %for.body85.for.body85_crit_edge ]
  %inc86 = add nsw i32 %34, 1
  store i32 %inc86, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %idxprom87 = sext i32 %34 to i64
  %35 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds float** %35, i64 %idxprom87
  %36 = load float** %arrayidx88, align 8, !tbaa !0
  %37 = bitcast float* %36 to i8*
  %arrayidx90 = getelementptr inbounds float** %35, i64 %idxprom89
  %38 = load float** %arrayidx90, align 8, !tbaa !0
  %39 = bitcast float* %38 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 %mul92, i32 4, i1 false)
  %40 = load i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %rem93 = srem i32 %40, 256
  store i32 %rem93, i32* @feat_s2mfc2feat_block.bufpos, align 4, !tbaa !3
  %exitcond231 = icmp eq i32 %i.3222, %0
  br i1 %exitcond231, label %if.end97, label %for.body85.for.body85_crit_edge

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  %phitmp = add i32 %i.3222, 1
  br label %for.body85

if.end97:                                         ; preds = %if.else76, %for.body85, %for.cond60.preheader, %for.body63
  %add98 = add nsw i32 %residualvecs.0, %0
  br label %if.end99

if.end99:                                         ; preds = %for.end54, %if.end97
  %residualvecs.1 = phi i32 [ %add98, %if.end97 ], [ %residualvecs.0, %for.end54 ]
  %add100 = add i32 %residualvecs.1, %nfr
  %cmp102215 = icmp sgt i32 %add100, 0
  br i1 %cmp102215, label %for.body104.lr.ph, label %for.end144

for.body104.lr.ph:                                ; preds = %if.end99
  %cmp114213 = icmp slt i32 %0, %sub
  %compute_feat = getelementptr inbounds %struct.feat_s* %fcb, i64 0, i32 9
  %idx.ext = sext i32 %0 to i64
  %conv125 = sext i32 %3 to i64
  %mul126 = shl nsw i64 %conv125, 2
  %sub108 = sub i32 255, %0
  %41 = sext i32 %sub to i64
  %.pre241 = load i32* @feat_s2mfc2feat_block.curpos, align 4, !tbaa !3
  br label %for.body104

for.body104:                                      ; preds = %if.end138, %for.body104.lr.ph
  %42 = phi i32 [ %.pre241, %for.body104.lr.ph ], [ %rem140, %if.end138 ]
  %indvars.iv228 = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next229, %if.end138 ]
  %cmp105 = icmp slt i32 %42, %0
  %cmp109 = icmp sgt i32 %42, %sub108
  %or.cond = or i1 %cmp105, %cmp109
  br i1 %or.cond, label %if.then111, label %if.else132

if.then111:                                       ; preds = %for.body104
  br i1 %cmp114213, label %for.end129, label %for.body116

for.body116:                                      ; preds = %if.then111, %for.body116.for.body116_crit_edge
  %43 = phi i32 [ %.pre244, %for.body116.for.body116_crit_edge ], [ %42, %if.then111 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body116.for.body116_crit_edge ], [ %41, %if.then111 ]
  %44 = trunc i64 %indvars.iv to i32
  %add117 = add i32 %44, 256
  %add118 = add i32 %add117, %43
  %rem119 = srem i32 %add118, 256
  %45 = add nsw i64 %indvars.iv, %idx.ext
  %46 = load float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds float** %46, i64 %45
  %47 = load float** %arrayidx122, align 8, !tbaa !0
  %48 = bitcast float* %47 to i8*
  %idxprom123 = sext i32 %rem119 to i64
  %49 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %arrayidx124 = getelementptr inbounds float** %49, i64 %idxprom123
  %50 = load float** %arrayidx124, align 8, !tbaa !0
  %51 = bitcast float* %50 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %51, i64 %mul126, i32 4, i1 false)
  %cmp114 = icmp slt i32 %44, %0
  br i1 %cmp114, label %for.body116.for.body116_crit_edge, label %for.end129

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre244 = load i32* @feat_s2mfc2feat_block.curpos, align 4, !tbaa !3
  br label %for.body116

for.end129:                                       ; preds = %for.body116, %if.then111
  %52 = load void (%struct.feat_s*, float**, float**)** %compute_feat, align 8, !tbaa !0
  %53 = load float*** @feat_s2mfc2feat_block.tmpcepbuf, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds float** %53, i64 %idx.ext
  %arrayidx131 = getelementptr inbounds float*** %ofeat, i64 %indvars.iv228
  %54 = load float*** %arrayidx131, align 8, !tbaa !0
  tail call void %52(%struct.feat_s* %fcb, float** %add.ptr, float** %54) #7
  br label %if.end138

if.else132:                                       ; preds = %for.body104
  %55 = load void (%struct.feat_s*, float**, float**)** %compute_feat, align 8, !tbaa !0
  %56 = load float*** @feat_s2mfc2feat_block.cepbuf, align 8, !tbaa !0
  %idx.ext134 = sext i32 %42 to i64
  %add.ptr135 = getelementptr inbounds float** %56, i64 %idx.ext134
  %arrayidx137 = getelementptr inbounds float*** %ofeat, i64 %indvars.iv228
  %57 = load float*** %arrayidx137, align 8, !tbaa !0
  tail call void %55(%struct.feat_s* %fcb, float** %add.ptr135, float** %57) #7
  br label %if.end138

if.end138:                                        ; preds = %if.else132, %for.end129
  %58 = load i32* @feat_s2mfc2feat_block.curpos, align 4, !tbaa !3
  %inc139 = add nsw i32 %58, 1
  %rem140 = srem i32 %inc139, 256
  store i32 %rem140, i32* @feat_s2mfc2feat_block.curpos, align 4, !tbaa !3
  %indvars.iv.next229 = add i64 %indvars.iv228, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next229 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add100
  br i1 %exitcond, label %for.end144, label %for.body104

for.end144:                                       ; preds = %if.end138, %if.end99
  %nfeatvec.0.lcssa = phi i32 [ 0, %if.end99 ], [ %add100, %if.end138 ]
  ret i32 %nfeatvec.0.lcssa
}

; Function Attrs: optsize
declare void @cmn_prior(float**, i32, i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone uwtable
define void @feat_free(%struct.feat_s* nocapture %f) #5 {
entry:
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
