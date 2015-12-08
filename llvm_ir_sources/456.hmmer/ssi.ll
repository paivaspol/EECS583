; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.ssiindex_s = type { i32, i32, i32, i32, i8**, i32*, i32*, i32*, i32, i16, %struct.ssipkey_s*, i32, i32, i8*, %struct._IO_FILE*, %struct.ssiskey_s*, i32, i32, i8*, %struct._IO_FILE* }
%struct.ssipkey_s = type { i8*, i16, %struct.ssioffset_s, %struct.ssioffset_s, i32 }
%struct.ssiskey_s = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str1 = private unnamed_addr constant [109 x i8] c"Can't create a 64-bit SSI index on this system, sorry;\0AI don't have 64-bit file offset functions available.\0A\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"tmp.ssi.1\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"tmp.ssi.2\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"%s\09%d\09%lu\09%lu\09%lu\0A\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"%s\09%d\09%llu\09%llu\09%lu\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str8 = private unnamed_addr constant [115 x i8] c"Can't switch to 64-bit SSI index mode on this system, sorry;\0AI don't have 64-bit file offset functions available.\0A\00", align 1
@.str9 = private unnamed_addr constant [32 x i8] c"env LC_ALL=POSIX sort -o %s %s\0A\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"ok (no error)\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"no data, fread() failed\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"no such key\00", align 1
@.str14 = private unnamed_addr constant [31 x i8] c"out of memory, malloc() failed\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"file not found, fopen() failed\00", align 1
@.str16 = private unnamed_addr constant [28 x i8] c"not a SSI file? (bad magic)\00", align 1
@.str17 = private unnamed_addr constant [32 x i8] c"corrupt format? unexpected data\00", align 1
@.str18 = private unnamed_addr constant [38 x i8] c"no large file support for this system\00", align 1
@.str19 = private unnamed_addr constant [29 x i8] c"failed to reposition on disk\00", align 1
@.str20 = private unnamed_addr constant [36 x i8] c"failed to get file position on disk\00", align 1
@.str21 = private unnamed_addr constant [40 x i8] c"no fast subseq support for this seqfile\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"subseq start is out of range\00", align 1
@.str23 = private unnamed_addr constant [28 x i8] c"an argument is out of range\00", align 1
@.str24 = private unnamed_addr constant [30 x i8] c"number of files exceeds limit\00", align 1
@.str25 = private unnamed_addr constant [29 x i8] c"number of keys exceeds limit\00", align 1
@.str26 = private unnamed_addr constant [19 x i8] c"an fwrite() failed\00", align 1
@.str27 = private unnamed_addr constant [35 x i8] c"some problem with external sorting\00", align 1
@.str28 = private unnamed_addr constant [18 x i8] c"unrecognized code\00", align 1
@.str29 = private unnamed_addr constant [36 x i8] c"failed to turn external sorting on.\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"%s\09%u\09%lu\09%lu\09%lu\0A\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"%s\09%u\09%llu\09%llu\09%lu\0A\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"\09\0A\00", align 1
@switch.table = private unnamed_addr constant [17 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str27, i64 0, i64 0)]

; Function Attrs: nounwind optsize uwtable
define i32 @SSIOpen(i8* nocapture %filename, %struct.ssifile_s** nocapture %ret_sfp) #0 {
entry:
  %magic.i = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 144) #8
  %0 = bitcast i8* %call to %struct.ssifile_s*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #8
  %fp = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @free(i8* %call) #8
  br label %return

if.end4:                                          ; preds = %if.end
  %1 = bitcast i32* %magic.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #7
  %filename.i = getelementptr inbounds i8* %call, i64 104
  %2 = bitcast i8* %filename.i to i8***
  %fileformat.i = getelementptr inbounds i8* %call, i64 112
  %3 = bitcast i8* %fileformat.i to i32**
  %fileflags.i = getelementptr inbounds i8* %call, i64 120
  %4 = bitcast i8* %fileflags.i to i32**
  %bpl.i = getelementptr inbounds i8* %call, i64 128
  %5 = bitcast i8* %bpl.i to i32**
  %rpl.i = getelementptr inbounds i8* %call, i64 136
  %6 = bitcast i8* %rpl.i to i32**
  %nfiles.i = getelementptr inbounds i8* %call, i64 12
  %7 = bitcast i8* %nfiles.i to i16*
  store i16 0, i16* %7, align 2, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %filename.i, i8 0, i64 40, i32 8, i1 false) #7
  %call.i = call fastcc i32 @read_i32(%struct._IO_FILE* %call1, i32* %magic.i) #8
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %FAILURE.i, label %if.end.i

if.end.i:                                         ; preds = %if.end4
  %8 = load i32* %magic.i, align 4, !tbaa !4
  switch i32 %8, label %FAILURE.i [
    i32 -202118735, label %if.end3.i
    i32 -1310067725, label %if.end3.i
  ]

if.end3.i:                                        ; preds = %if.end.i, %if.end.i
  %9 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %flags.i = getelementptr inbounds i8* %call, i64 8
  %10 = bitcast i8* %flags.i to i32*
  %call5.i = call fastcc i32 @read_i32(%struct._IO_FILE* %9, i32* %10) #8
  %tobool6.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.i, label %FAILURE.i, label %if.end8.i

if.end8.i:                                        ; preds = %if.end3.i
  %11 = load i32* %10, align 4, !tbaa !4
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end15.i, label %FAILURE.i

if.end15.i:                                       ; preds = %if.end8.i
  %and.i = lshr i32 %11, 1
  %and.tr.i = trunc i32 %and.i to i8
  %conv.i = and i8 %and.tr.i, 1
  %14 = getelementptr inbounds i8* %call, i64 96
  store i8 %conv.i, i8* %14, align 1, !tbaa !1
  %.tr.i = trunc i32 %11 to i8
  %conv23.i = and i8 %.tr.i, 1
  %15 = getelementptr inbounds i8* %call, i64 97
  store i8 %conv23.i, i8* %15, align 1, !tbaa !1
  %16 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call26.i = call fastcc i32 @read_i16(%struct._IO_FILE* %16, i16* %7) #8
  %tobool27.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.i, label %FAILURE.i, label %if.end29.i

if.end29.i:                                       ; preds = %if.end15.i
  %17 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %nprimary.i = getelementptr inbounds i8* %call, i64 16
  %18 = bitcast i8* %nprimary.i to i32*
  %call31.i = call fastcc i32 @read_i32(%struct._IO_FILE* %17, i32* %18) #8
  %tobool32.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.i, label %FAILURE.i, label %if.end34.i

if.end34.i:                                       ; preds = %if.end29.i
  %19 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %nsecondary.i = getelementptr inbounds i8* %call, i64 20
  %20 = bitcast i8* %nsecondary.i to i32*
  %call36.i = call fastcc i32 @read_i32(%struct._IO_FILE* %19, i32* %20) #8
  %tobool37.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.i, label %FAILURE.i, label %if.end39.i

if.end39.i:                                       ; preds = %if.end34.i
  %21 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %flen.i = getelementptr inbounds i8* %call, i64 24
  %22 = bitcast i8* %flen.i to i32*
  %call41.i = call fastcc i32 @read_i32(%struct._IO_FILE* %21, i32* %22) #8
  %tobool42.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.i, label %FAILURE.i, label %if.end44.i

if.end44.i:                                       ; preds = %if.end39.i
  %23 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %plen.i = getelementptr inbounds i8* %call, i64 28
  %24 = bitcast i8* %plen.i to i32*
  %call46.i = call fastcc i32 @read_i32(%struct._IO_FILE* %23, i32* %24) #8
  %tobool47.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.i, label %FAILURE.i, label %if.end49.i

if.end49.i:                                       ; preds = %if.end44.i
  %25 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %slen.i = getelementptr inbounds i8* %call, i64 32
  %26 = bitcast i8* %slen.i to i32*
  %call51.i = call fastcc i32 @read_i32(%struct._IO_FILE* %25, i32* %26) #8
  %tobool52.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.i, label %FAILURE.i, label %if.end54.i

if.end54.i:                                       ; preds = %if.end49.i
  %27 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %frecsize.i = getelementptr inbounds i8* %call, i64 36
  %28 = bitcast i8* %frecsize.i to i32*
  %call56.i = call fastcc i32 @read_i32(%struct._IO_FILE* %27, i32* %28) #8
  %tobool57.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.i, label %FAILURE.i, label %if.end59.i

if.end59.i:                                       ; preds = %if.end54.i
  %29 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %precsize.i = getelementptr inbounds i8* %call, i64 40
  %30 = bitcast i8* %precsize.i to i32*
  %call61.i = call fastcc i32 @read_i32(%struct._IO_FILE* %29, i32* %30) #8
  %tobool62.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.i, label %FAILURE.i, label %if.end64.i

if.end64.i:                                       ; preds = %if.end59.i
  %31 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %srecsize.i = getelementptr inbounds i8* %call, i64 44
  %32 = bitcast i8* %srecsize.i to i32*
  %call66.i = call fastcc i32 @read_i32(%struct._IO_FILE* %31, i32* %32) #8
  %tobool67.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.i, label %FAILURE.i, label %if.end69.i

if.end69.i:                                       ; preds = %if.end64.i
  %33 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %34 = load i8* %14, align 1, !tbaa !1
  %foffset.i = getelementptr inbounds i8* %call, i64 48
  %35 = bitcast i8* %foffset.i to %struct.ssioffset_s*
  %call72.i = call fastcc i32 @read_offset(%struct._IO_FILE* %33, i8 signext %34, %struct.ssioffset_s* %35) #8
  %tobool73.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.i, label %FAILURE.i, label %if.end75.i

if.end75.i:                                       ; preds = %if.end69.i
  %36 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %37 = load i8* %14, align 1, !tbaa !1
  %poffset.i = getelementptr inbounds i8* %call, i64 64
  %38 = bitcast i8* %poffset.i to %struct.ssioffset_s*
  %call78.i = call fastcc i32 @read_offset(%struct._IO_FILE* %36, i8 signext %37, %struct.ssioffset_s* %38) #8
  %tobool79.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.i, label %FAILURE.i, label %if.end81.i

if.end81.i:                                       ; preds = %if.end75.i
  %39 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %40 = load i8* %14, align 1, !tbaa !1
  %soffset.i = getelementptr inbounds i8* %call, i64 80
  %41 = bitcast i8* %soffset.i to %struct.ssioffset_s*
  %call84.i = call fastcc i32 @read_offset(%struct._IO_FILE* %39, i8 signext %40, %struct.ssioffset_s* %41) #8
  %tobool85.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.i, label %FAILURE.i, label %if.end87.i

if.end87.i:                                       ; preds = %if.end81.i
  %42 = load i16* %7, align 2, !tbaa !3
  %cmp90.i = icmp eq i16 %42, 0
  br i1 %cmp90.i, label %FAILURE.i, label %if.end93.i

if.end93.i:                                       ; preds = %if.end87.i
  %conv95.i = zext i16 %42 to i64
  %mul.i = shl nuw nsw i64 %conv95.i, 3
  %call96.i = call noalias i8* @malloc(i64 %mul.i) #8
  %43 = bitcast i8* %call96.i to i8**
  store i8** %43, i8*** %2, align 8, !tbaa !0
  %cmp98.i = icmp eq i8* %call96.i, null
  br i1 %cmp98.i, label %FAILURE.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end93.i
  store i8* null, i8** %43, align 8, !tbaa !0
  %cmp105.i8 = icmp ugt i16 %42, 1
  br i1 %cmp105.i8, label %for.body.for.body_crit_edge.i, label %for.end.i

for.body.for.body_crit_edge.i:                    ; preds = %for.body.i.preheader, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
  %.pre.i = phi i8** [ %.pre.i.pre, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ %43, %for.body.i.preheader ]
  %indvars.iv.next.i9 = phi i64 [ %indvars.iv.next.i, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i8** %.pre.i, i64 %indvars.iv.next.i9
  store i8* null, i8** %arrayidx.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.next.i9, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i16
  %exitcond = icmp eq i16 %lftr.wideiv, %42
  br i1 %exitcond, label %for.end.i, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i
  %.pre.i.pre = load i8*** %2, align 8, !tbaa !0
  br label %for.body.for.body_crit_edge.i

for.end.i:                                        ; preds = %for.body.for.body_crit_edge.i, %for.body.i.preheader
  %mul110.i = shl nuw nsw i64 %conv95.i, 2
  %call111.i = call noalias i8* @malloc(i64 %mul110.i) #8
  %44 = bitcast i8* %call111.i to i32*
  store i32* %44, i32** %3, align 8, !tbaa !0
  %cmp113.i = icmp eq i8* %call111.i, null
  br i1 %cmp113.i, label %FAILURE.i, label %if.end116.i

if.end116.i:                                      ; preds = %for.end.i
  %call120.i = call noalias i8* @malloc(i64 %mul110.i) #8
  %45 = bitcast i8* %call120.i to i32*
  store i32* %45, i32** %4, align 8, !tbaa !0
  %cmp122.i = icmp eq i8* %call120.i, null
  br i1 %cmp122.i, label %FAILURE.i, label %if.end125.i

if.end125.i:                                      ; preds = %if.end116.i
  %call129.i = call noalias i8* @malloc(i64 %mul110.i) #8
  %46 = bitcast i8* %call129.i to i32*
  store i32* %46, i32** %5, align 8, !tbaa !0
  %cmp131.i = icmp eq i8* %call129.i, null
  br i1 %cmp131.i, label %FAILURE.i, label %if.end134.i

if.end134.i:                                      ; preds = %if.end125.i
  %call138.i = call noalias i8* @malloc(i64 %mul110.i) #8
  %47 = bitcast i8* %call138.i to i32*
  store i32* %47, i32** %6, align 8, !tbaa !0
  %cmp140.i = icmp eq i8* %call138.i, null
  br i1 %cmp140.i, label %FAILURE.i, label %for.body150.i

for.cond144.i:                                    ; preds = %if.end206.i
  %48 = load i16* %7, align 2, !tbaa !3
  %cmp148.i = icmp ult i16 %inc216.i, %48
  br i1 %cmp148.i, label %for.body150.i, label %load_indexfile.exit

for.body150.i:                                    ; preds = %if.end134.i, %for.cond144.i
  %i.1303.i = phi i16 [ %inc216.i, %for.cond144.i ], [ 0, %if.end134.i ]
  %conv145.i = zext i16 %i.1303.i to i32
  %49 = load i32* %28, align 4, !tbaa !4
  %call154.i = call fastcc i32 @indexfile_position(%struct.ssifile_s* %0, %struct.ssioffset_s* %35, i32 %49, i32 %conv145.i) #8
  %cmp155.i = icmp eq i32 %call154.i, 0
  br i1 %cmp155.i, label %if.end158.i, label %FAILURE.i

if.end158.i:                                      ; preds = %for.body150.i
  %50 = load i32* %22, align 4, !tbaa !4
  %conv160.i = zext i32 %50 to i64
  %call162.i = call noalias i8* @malloc(i64 %conv160.i) #8
  %idxprom163.i = zext i16 %i.1303.i to i64
  %51 = load i8*** %2, align 8, !tbaa !0
  %arrayidx165.i = getelementptr inbounds i8** %51, i64 %idxprom163.i
  store i8* %call162.i, i8** %arrayidx165.i, align 8, !tbaa !0
  %cmp166.i = icmp eq i8* %call162.i, null
  br i1 %cmp166.i, label %FAILURE.i, label %if.end169.i

if.end169.i:                                      ; preds = %if.end158.i
  %52 = load i8*** %2, align 8, !tbaa !0
  %arrayidx172.i = getelementptr inbounds i8** %52, i64 %idxprom163.i
  %53 = load i8** %arrayidx172.i, align 8, !tbaa !0
  %54 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call176.i = call i64 @fread(i8* %53, i64 1, i64 %conv160.i, %struct._IO_FILE* %54) #8
  %55 = load i32* %22, align 4, !tbaa !4
  %conv178.i = zext i32 %55 to i64
  %cmp179.i = icmp eq i64 %call176.i, %conv178.i
  br i1 %cmp179.i, label %if.end182.i, label %FAILURE.i

if.end182.i:                                      ; preds = %if.end169.i
  %56 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %57 = load i32** %3, align 8, !tbaa !0
  %arrayidx186.i = getelementptr inbounds i32* %57, i64 %idxprom163.i
  %call187.i = call fastcc i32 @read_i32(%struct._IO_FILE* %56, i32* %arrayidx186.i) #8
  %tobool188.i = icmp eq i32 %call187.i, 0
  br i1 %tobool188.i, label %FAILURE.i, label %if.end190.i

if.end190.i:                                      ; preds = %if.end182.i
  %58 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %59 = load i32** %4, align 8, !tbaa !0
  %arrayidx194.i = getelementptr inbounds i32* %59, i64 %idxprom163.i
  %call195.i = call fastcc i32 @read_i32(%struct._IO_FILE* %58, i32* %arrayidx194.i) #8
  %tobool196.i = icmp eq i32 %call195.i, 0
  br i1 %tobool196.i, label %FAILURE.i, label %if.end198.i

if.end198.i:                                      ; preds = %if.end190.i
  %60 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %61 = load i32** %5, align 8, !tbaa !0
  %arrayidx202.i = getelementptr inbounds i32* %61, i64 %idxprom163.i
  %call203.i = call fastcc i32 @read_i32(%struct._IO_FILE* %60, i32* %arrayidx202.i) #8
  %tobool204.i = icmp eq i32 %call203.i, 0
  br i1 %tobool204.i, label %FAILURE.i, label %if.end206.i

if.end206.i:                                      ; preds = %if.end198.i
  %62 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %63 = load i32** %6, align 8, !tbaa !0
  %arrayidx210.i = getelementptr inbounds i32* %63, i64 %idxprom163.i
  %call211.i = call fastcc i32 @read_i32(%struct._IO_FILE* %62, i32* %arrayidx210.i) #8
  %tobool212.i = icmp eq i32 %call211.i, 0
  %inc216.i = add i16 %i.1303.i, 1
  br i1 %tobool212.i, label %FAILURE.i, label %for.cond144.i

FAILURE.i:                                        ; preds = %if.end206.i, %if.end198.i, %if.end190.i, %if.end182.i, %if.end169.i, %if.end158.i, %for.body150.i, %if.end134.i, %if.end125.i, %if.end116.i, %for.end.i, %if.end93.i, %if.end87.i, %if.end81.i, %if.end75.i, %if.end69.i, %if.end64.i, %if.end59.i, %if.end54.i, %if.end49.i, %if.end44.i, %if.end39.i, %if.end34.i, %if.end29.i, %if.end15.i, %if.end8.i, %if.end3.i, %if.end.i, %if.end4
  %status.0.i = phi i32 [ 6, %if.end87.i ], [ 6, %if.end81.i ], [ 6, %if.end75.i ], [ 6, %if.end69.i ], [ 6, %if.end64.i ], [ 6, %if.end59.i ], [ 6, %if.end54.i ], [ 6, %if.end49.i ], [ 6, %if.end44.i ], [ 6, %if.end39.i ], [ 6, %if.end34.i ], [ 6, %if.end29.i ], [ 6, %if.end15.i ], [ 6, %if.end3.i ], [ 5, %if.end4 ], [ 5, %if.end.i ], [ 7, %if.end8.i ], [ 3, %if.end93.i ], [ 3, %for.end.i ], [ 3, %if.end116.i ], [ 3, %if.end125.i ], [ 3, %if.end134.i ], [ 6, %if.end206.i ], [ 6, %if.end198.i ], [ 6, %if.end190.i ], [ 6, %if.end182.i ], [ 6, %if.end169.i ], [ 3, %if.end158.i ], [ 6, %for.body150.i ]
  call void @SSIClose(%struct.ssifile_s* %0) #8
  br label %load_indexfile.exit

load_indexfile.exit:                              ; preds = %for.cond144.i, %FAILURE.i
  %retval.0.i = phi i32 [ %status.0.i, %FAILURE.i ], [ 0, %for.cond144.i ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #7
  store %struct.ssifile_s* %0, %struct.ssifile_s** %ret_sfp, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %load_indexfile.exit, %if.then3
  %retval.0 = phi i32 [ 4, %if.then3 ], [ %retval.0.i, %load_indexfile.exit ], [ 3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetOffsetByName(%struct.ssifile_s* nocapture %sfp, i8* nocapture %key, i32* nocapture %ret_fh, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  %fnum = alloca i16, align 2
  %plen = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 6
  %0 = load i32* %plen, align 4, !tbaa !4
  %poffset = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 12
  %precsize = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 9
  %1 = load i32* %precsize, align 4, !tbaa !4
  %nprimary = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 3
  %2 = load i32* %nprimary, align 4, !tbaa !4
  %call = call fastcc i32 @binary_search(%struct.ssifile_s* %sfp, i8* %key, i32 %0, %struct.ssioffset_s* %poffset, i32 %1, i32 %2) #9
  switch i32 %call, label %return [
    i32 0, label %if.then
    i32 2, label %if.then10
  ]

if.then:                                          ; preds = %entry
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  %3 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call1 = call fastcc i32 @read_i16(%struct._IO_FILE* %3, i16* %fnum) #9
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load i16* %fnum, align 2, !tbaa !3
  %conv = zext i16 %4 to i32
  store i32 %conv, i32* %ret_fh, align 4, !tbaa !4
  %5 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %smode = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 15
  %6 = load i8* %smode, align 1, !tbaa !1
  %call4 = call fastcc i32 @read_offset(%struct._IO_FILE* %5, i8 signext %6, %struct.ssioffset_s* %ret_offset) #9
  %tobool5 = icmp eq i32 %call4, 0
  %. = zext i1 %tobool5 to i32
  br label %return

if.then10:                                        ; preds = %entry
  %nsecondary = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 4
  %7 = load i32* %nsecondary, align 4, !tbaa !4
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %return, label %if.then13

if.then13:                                        ; preds = %if.then10
  %slen = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 7
  %8 = load i32* %slen, align 4, !tbaa !4
  %soffset = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 13
  %srecsize = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 10
  %9 = load i32* %srecsize, align 4, !tbaa !4
  %call15 = call fastcc i32 @binary_search(%struct.ssifile_s* %sfp, i8* %key, i32 %8, %struct.ssioffset_s* %soffset, i32 %9, i32 %7) #9
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end19, label %return

if.end19:                                         ; preds = %if.then13
  %10 = load i32* %plen, align 4, !tbaa !4
  %conv21 = zext i32 %10 to i64
  %call22 = call noalias i8* @malloc(i64 %conv21) #8
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %return, label %if.end26

if.end26:                                         ; preds = %if.end19
  %fp29 = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  %11 = load %struct._IO_FILE** %fp29, align 8, !tbaa !0
  %call30 = call i64 @fread(i8* %call22, i64 1, i64 %conv21, %struct._IO_FILE* %11) #8
  %12 = load i32* %plen, align 4, !tbaa !4
  %conv32 = zext i32 %12 to i64
  %cmp33 = icmp eq i64 %call30, %conv32
  br i1 %cmp33, label %if.end36, label %return

if.end36:                                         ; preds = %if.end26
  %call37 = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %sfp, i8* %call22, i32* %ret_fh, %struct.ssioffset_s* %ret_offset) #9
  call void @free(i8* %call22) #8
  br label %return

return:                                           ; preds = %entry, %if.end36, %if.then10, %if.end26, %if.end19, %if.then13, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %., %if.end ], [ %call15, %if.then13 ], [ 3, %if.end19 ], [ 1, %if.end26 ], [ %call37, %if.end36 ], [ 2, %if.then10 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @binary_search(%struct.ssifile_s* nocapture %sfp, i8* nocapture %key, i32 %klen, %struct.ssioffset_s* nocapture %base, i32 %recsize, i32 %maxidx) #0 {
entry:
  %cmp1 = icmp eq i32 %maxidx, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %klen to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #8
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %sub = add i32 %maxidx, -1
  %div7282 = lshr i32 %sub, 1
  %call67383 = tail call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %recsize, i32 %div7282) #9
  %cmp77484 = icmp eq i32 %call67383, 0
  br i1 %cmp77484, label %if.end10.lr.ph.lr.ph, label %if.then9

if.end10.lr.ph.lr.ph:                             ; preds = %if.end5
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  br label %if.end10.lr.ph

while.body.outer:                                 ; preds = %if.then33
  %add71 = add i32 %left.075, %sub38
  %div72 = lshr i32 %add71, 1
  %call673 = tail call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %recsize, i32 %div72) #9
  %cmp774 = icmp eq i32 %call673, 0
  br i1 %cmp774, label %if.end10.lr.ph, label %if.then9

if.end10.lr.ph:                                   ; preds = %if.end10.lr.ph.lr.ph, %while.body.outer
  %div7287 = phi i32 [ %div7282, %if.end10.lr.ph.lr.ph ], [ %div72, %while.body.outer ]
  %left.0.ph86 = phi i32 [ 0, %if.end10.lr.ph.lr.ph ], [ %left.075, %while.body.outer ]
  %right.0.ph85 = phi i32 [ %sub, %if.end10.lr.ph.lr.ph ], [ %sub38, %while.body.outer ]
  br label %if.end10

while.body:                                       ; preds = %if.else25
  %add = add i32 %add29, %right.0.ph85
  %div = lshr i32 %add, 1
  %call6 = tail call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %recsize, i32 %div) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5, %while.body.outer, %while.body
  %call6.lcssa = phi i32 [ %call6, %while.body ], [ %call67383, %if.end5 ], [ %call673, %while.body.outer ]
  tail call void @free(i8* %call) #8
  br label %return

if.end10:                                         ; preds = %if.end10.lr.ph, %while.body
  %div76 = phi i32 [ %div7287, %if.end10.lr.ph ], [ %div, %while.body ]
  %left.075 = phi i32 [ %left.0.ph86, %if.end10.lr.ph ], [ %add29, %while.body ]
  %0 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call12 = tail call i64 @fread(i8* %call, i64 1, i64 %conv, %struct._IO_FILE* %0) #8
  %cmp14 = icmp eq i64 %call12, %conv
  br i1 %cmp14, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  tail call void @free(i8* %call) #8
  br label %return

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i32 @strcmp(i8* %call, i8* %key) #10
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %while.end, label %if.else

if.else:                                          ; preds = %if.end17
  %cmp22 = icmp ult i32 %left.075, %right.0.ph85
  br i1 %cmp22, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.else
  tail call void @free(i8* %call) #8
  br label %return

if.else25:                                        ; preds = %if.else
  %cmp26 = icmp slt i32 %call18, 0
  %add29 = add i32 %div76, 1
  br i1 %cmp26, label %while.body, label %if.then33

if.then33:                                        ; preds = %if.else25
  %cmp34 = icmp eq i32 %div76, 0
  %sub38 = add i32 %div76, -1
  br i1 %cmp34, label %if.then36, label %while.body.outer

if.then36:                                        ; preds = %if.then33
  tail call void @free(i8* %call) #8
  br label %return

while.end:                                        ; preds = %if.end17
  tail call void @free(i8* %call) #8
  br label %return

return:                                           ; preds = %if.end, %entry, %while.end, %if.then36, %if.then24, %if.then16, %if.then9
  %retval.0 = phi i32 [ %call6.lcssa, %if.then9 ], [ 1, %if.then16 ], [ 0, %while.end ], [ 2, %if.then24 ], [ 2, %if.then36 ], [ 2, %entry ], [ 3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_i16(%struct._IO_FILE* nocapture %fp, i16* nocapture %ret_result) #0 {
entry:
  %result = alloca i16, align 2
  %0 = bitcast i16* %result to i8*
  %call = call i64 @fread(i8* %0, i64 2, i64 1, %struct._IO_FILE* %fp) #8
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i16* %result, align 2, !tbaa !3
  %call1 = call zeroext i16 @sre_ntoh16(i16 zeroext %1) #8
  store i16 %call1, i16* %ret_result, align 2, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_offset(%struct._IO_FILE* nocapture %fp, i8 signext %mode, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  %result.i = alloca i64, align 8
  switch i8 %mode, label %return [
    i8 0, label %if.then
    i8 1, label %if.then7
  ]

if.then:                                          ; preds = %entry
  %mode2 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0
  store i8 0, i8* %mode2, align 1, !tbaa !1
  %off = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %call = call fastcc i32 @read_i32(%struct._IO_FILE* %fp, i32* %i32) #9
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end16

if.then7:                                         ; preds = %entry
  %mode8 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0
  store i8 1, i8* %mode8, align 1, !tbaa !1
  %0 = bitcast i64* %result.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #7
  %call.i = call i64 @fread(i8* %0, i64 8, i64 1, %struct._IO_FILE* %fp) #8
  %cmp.i = icmp eq i64 %call.i, 1
  br i1 %cmp.i, label %read_i64.exit, label %return

read_i64.exit:                                    ; preds = %if.then7
  %i64 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 1, i32 0
  %1 = load i64* %result.i, align 8, !tbaa !5
  %call1.i = call i64 @sre_ntoh64(i64 %1) #8
  store i64 %call1.i, i64* %i64, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 8, i8* %0) #7
  br label %if.end16

if.end16:                                         ; preds = %read_i64.exit, %if.then
  br label %return

return:                                           ; preds = %if.then7, %entry, %if.then, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then ], [ 0, %entry ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetOffsetByNumber(%struct.ssifile_s* nocapture %sfp, i32 %n, i32* nocapture %ret_fh, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  %fnum = alloca i16, align 2
  %nprimary = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 3
  %0 = load i32* %nprimary, align 4, !tbaa !4
  %cmp = icmp ugt i32 %0, %n
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %poffset = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 12
  %precsize = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 9
  %1 = load i32* %precsize, align 4, !tbaa !4
  %call = call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %poffset, i32 %1, i32 %n) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %plen = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 6
  %2 = load i32* %plen, align 4, !tbaa !4
  %conv = zext i32 %2 to i64
  %call4 = call noalias i8* @malloc(i64 %conv) #8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %return, label %if.end8

if.end8:                                          ; preds = %if.end3
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  %3 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call11 = call i64 @fread(i8* %call4, i64 1, i64 %conv, %struct._IO_FILE* %3) #8
  %4 = load i32* %plen, align 4, !tbaa !4
  %conv13 = zext i32 %4 to i64
  %cmp14 = icmp eq i64 %call11, %conv13
  br i1 %cmp14, label %if.end17, label %return

if.end17:                                         ; preds = %if.end8
  %5 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call19 = call fastcc i32 @read_i16(%struct._IO_FILE* %5, i16* %fnum) #9
  %tobool = icmp eq i32 %call19, 0
  br i1 %tobool, label %return, label %if.end21

if.end21:                                         ; preds = %if.end17
  %6 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %smode = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 15
  %7 = load i8* %smode, align 1, !tbaa !1
  %call23 = call fastcc i32 @read_offset(%struct._IO_FILE* %6, i8 signext %7, %struct.ssioffset_s* %ret_offset) #9
  %tobool24 = icmp eq i32 %call23, 0
  br i1 %tobool24, label %return, label %if.end26

if.end26:                                         ; preds = %if.end21
  %8 = load i16* %fnum, align 2, !tbaa !3
  %conv27 = zext i16 %8 to i32
  store i32 %conv27, i32* %ret_fh, align 4, !tbaa !4
  call void @free(i8* %call4) #8
  br label %return

return:                                           ; preds = %if.end21, %if.end17, %if.end8, %if.end3, %if.end, %entry, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 2, %entry ], [ 8, %if.end ], [ 3, %if.end3 ], [ 1, %if.end8 ], [ 1, %if.end17 ], [ 1, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @indexfile_position(%struct.ssifile_s* nocapture %sfp, %struct.ssioffset_s* nocapture %base, i32 %len, i32 %n) #0 {
entry:
  %mode = getelementptr inbounds %struct.ssioffset_s* %base, i64 0, i32 0
  %0 = load i8* %mode, align 1, !tbaa !1
  switch i8 %0, label %return [
    i8 0, label %if.then.i
    i8 1, label %SSISetFilePosition.exit
  ]

if.then.i:                                        ; preds = %entry
  %off = getelementptr inbounds %struct.ssioffset_s* %base, i64 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %1 = load i32* %i32, align 4, !tbaa !4
  %mul = mul i32 %n, %len
  %add = add i32 %1, %mul
  %fp30 = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp30, align 8, !tbaa !0
  %conv2.i = zext i32 %add to i64
  %call.i = tail call i32 @fseek(%struct._IO_FILE* %2, i64 %conv2.i, i32 0) #8
  %cmp3.i = icmp eq i32 %call.i, 0
  %..i = select i1 %cmp3.i, i32 0, i32 8
  br label %SSISetFilePosition.exit

SSISetFilePosition.exit:                          ; preds = %entry, %if.then.i
  %retval.0.i = phi i32 [ %..i, %if.then.i ], [ 7, %entry ]
  br label %return

return:                                           ; preds = %SSISetFilePosition.exit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.i, %SSISetFilePosition.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetSubseqOffset(%struct.ssifile_s* nocapture %sfp, i8* nocapture %key, i32 %requested_start, i32* nocapture %ret_fh, %struct.ssioffset_s* nocapture %record_offset, %struct.ssioffset_s* nocapture %data_offset, i32* nocapture %ret_actual_start) #0 {
entry:
  %len = alloca i32, align 4
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %sfp, i8* %key, i32* %ret_fh, %struct.ssioffset_s* %record_offset) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load i32* %ret_fh, align 4, !tbaa !4
  %idxprom = sext i32 %0 to i64
  %fileflags = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 18
  %1 = load i32** %fileflags, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !4
  %and = and i32 %2, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  %3 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %smode = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 15
  %4 = load i8* %smode, align 1, !tbaa !1
  %call3 = call fastcc i32 @read_offset(%struct._IO_FILE* %3, i8 signext %4, %struct.ssioffset_s* %data_offset) #9
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end2
  %5 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call8 = call fastcc i32 @read_i32(%struct._IO_FILE* %5, i32* %len) #9
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %return, label %if.end11

if.end11:                                         ; preds = %if.end6
  %6 = load i32* %ret_fh, align 4, !tbaa !4
  %idxprom12 = sext i32 %6 to i64
  %rpl = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 20
  %7 = load i32** %rpl, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %idxprom12
  %8 = load i32* %arrayidx13, align 4, !tbaa !4
  %bpl = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 19
  %9 = load i32** %bpl, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %9, i64 %idxprom12
  %10 = load i32* %arrayidx15, align 4, !tbaa !4
  %sub = add nsw i32 %requested_start, -1
  %div = sdiv i32 %sub, %8
  %cmp16 = icmp eq i32 %8, 0
  %cmp17 = icmp eq i32 %10, 0
  %or.cond = or i1 %cmp16, %cmp17
  br i1 %or.cond, label %return, label %if.end19

if.end19:                                         ; preds = %if.end11
  %cmp20 = icmp slt i32 %requested_start, 0
  br i1 %cmp20, label %return, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end19
  %11 = load i32* %len, align 4, !tbaa !4
  %cmp22 = icmp ult i32 %11, %requested_start
  br i1 %cmp22, label %return, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false21
  %add = add nsw i32 %8, 1
  %cmp25 = icmp eq i32 %10, %add
  %12 = load i8* %smode, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %12, 0
  br i1 %cmp25, label %if.then26, label %if.else54

if.then26:                                        ; preds = %if.end24
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then26
  %mode = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0
  store i8 0, i8* %mode, align 1, !tbaa !1
  %off = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %13 = load i32* %i32, align 4, !tbaa !4
  %mul = mul nsw i32 %div, %10
  %add31 = add i32 %13, %mul
  %rem = srem i32 %sub, %8
  %add33 = add i32 %add31, %rem
  store i32 %add33, i32* %i32, align 4, !tbaa !4
  br label %if.end85

if.else:                                          ; preds = %if.then26
  %cmp38 = icmp eq i8 %12, 1
  br i1 %cmp38, label %if.then40, label %if.end85

if.then40:                                        ; preds = %if.else
  %mode41 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0
  store i8 1, i8* %mode41, align 1, !tbaa !1
  %i64 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1, i32 0
  %14 = load i64* %i64, align 8, !tbaa !5
  %mul43 = mul nsw i32 %div, %10
  %conv44 = sext i32 %mul43 to i64
  %add45 = add i64 %14, %conv44
  %rem47 = srem i32 %sub, %8
  %conv48 = sext i32 %rem47 to i64
  %add49 = add i64 %add45, %conv48
  store i64 %add49, i64* %i64, align 8, !tbaa !5
  br label %if.end85

if.else54:                                        ; preds = %if.end24
  br i1 %cmp28, label %if.then59, label %if.else67

if.then59:                                        ; preds = %if.else54
  %mode60 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0
  store i8 0, i8* %mode60, align 1, !tbaa !1
  %off61 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1
  %i3262 = bitcast %union.anon* %off61 to i32*
  %15 = load i32* %i3262, align 4, !tbaa !4
  %mul63 = mul nsw i32 %div, %10
  %add64 = add i32 %15, %mul63
  store i32 %add64, i32* %i3262, align 4, !tbaa !4
  br label %if.end82

if.else67:                                        ; preds = %if.else54
  %cmp70 = icmp eq i8 %12, 1
  br i1 %cmp70, label %if.then72, label %if.end82

if.then72:                                        ; preds = %if.else67
  %mode73 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0
  store i8 1, i8* %mode73, align 1, !tbaa !1
  %i6475 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1, i32 0
  %16 = load i64* %i6475, align 8, !tbaa !5
  %mul76 = mul nsw i32 %div, %10
  %conv77 = sext i32 %mul76 to i64
  %add78 = add i64 %16, %conv77
  store i64 %add78, i64* %i6475, align 8, !tbaa !5
  br label %if.end82

if.end82:                                         ; preds = %if.else67, %if.then72, %if.then59
  %mul83 = mul nsw i32 %div, %8
  %add84 = add nsw i32 %mul83, 1
  br label %if.end85

if.end85:                                         ; preds = %if.then30, %if.then40, %if.else, %if.end82
  %storemerge = phi i32 [ %add84, %if.end82 ], [ %requested_start, %if.else ], [ %requested_start, %if.then40 ], [ %requested_start, %if.then30 ]
  store i32 %storemerge, i32* %ret_actual_start, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.end19, %lor.lhs.false21, %if.end11, %if.end6, %if.end2, %if.end, %entry, %if.end85
  %retval.0 = phi i32 [ 0, %if.end85 ], [ %call, %entry ], [ 10, %if.end ], [ 1, %if.end2 ], [ 1, %if.end6 ], [ 10, %if.end11 ], [ 11, %lor.lhs.false21 ], [ 11, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_i32(%struct._IO_FILE* nocapture %fp, i32* nocapture %ret_result) #0 {
entry:
  %result = alloca i32, align 4
  %0 = bitcast i32* %result to i8*
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #8
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i32* %result, align 4, !tbaa !4
  %call1 = call i32 @sre_ntoh32(i32 %1) #8
  store i32 %call1, i32* %ret_result, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSISetFilePosition(%struct._IO_FILE* nocapture %fp, %struct.ssioffset_s* nocapture %offset) #0 {
entry:
  %mode = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 0
  %0 = load i8* %mode, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %off = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %1 = load i32* %i32, align 4, !tbaa !4
  %conv2 = zext i32 %1 to i64
  %call = tail call i32 @fseek(%struct._IO_FILE* %fp, i64 %conv2, i32 0) #8
  %cmp3 = icmp eq i32 %call, 0
  %. = select i1 %cmp3, i32 0, i32 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 7, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SSIFileInfo(%struct.ssifile_s* nocapture %sfp, i32 %fh, i8** nocapture %ret_filename, i32* nocapture %ret_format) #0 {
entry:
  %cmp = icmp slt i32 %fh, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfiles = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 2
  %0 = load i16* %nfiles, align 2, !tbaa !3
  %conv = zext i16 %0 to i32
  %cmp1 = icmp sgt i32 %conv, %fh
  br i1 %cmp1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %fh to i64
  %filename = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 16
  %1 = load i8*** %filename, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  store i8* %2, i8** %ret_filename, align 8, !tbaa !0
  %fileformat = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 17
  %3 = load i32** %fileformat, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx4, align 4, !tbaa !4
  store i32 %4, i32* %ret_format, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 12, %lor.lhs.false ], [ 12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @SSIClose(%struct.ssifile_s* %sfp) #0 {
entry:
  %cmp = icmp eq %struct.ssifile_s* %sfp, null
  br i1 %cmp, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %filename.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 16
  %0 = load i8*** %filename.i, align 8, !tbaa !0
  %cmp.i = icmp eq i8** %0, null
  br i1 %cmp.i, label %if.end11.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %nfiles.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 2
  %1 = load i16* %nfiles.i, align 2, !tbaa !3
  %cmp148.i = icmp eq i16 %1, 0
  br i1 %cmp148.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %2 = phi i8** [ %.pre51.i, %for.inc.i ], [ %0, %for.cond.preheader.i ]
  %3 = phi i16 [ %5, %for.inc.i ], [ %1, %for.cond.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds i8** %2, i64 %indvars.iv.i
  %4 = load i8** %arrayidx.i, align 8, !tbaa !0
  %cmp4.i = icmp eq i8* %4, null
  br i1 %cmp4.i, label %for.inc.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body.i
  tail call void @free(i8* %4) #8
  %.pre50.i = load i16* %nfiles.i, align 2, !tbaa !3
  %.pre51.i.pre = load i8*** %filename.i, align 8, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i
  %.pre51.i = phi i8** [ %2, %for.body.i ], [ %.pre51.i.pre, %if.then6.i ]
  %5 = phi i16 [ %3, %for.body.i ], [ %.pre50.i, %if.then6.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %conv.i = zext i16 %5 to i32
  %6 = trunc i64 %indvars.iv.next.i to i32
  %cmp1.i = icmp slt i32 %6, %conv.i
  br i1 %cmp1.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %7 = phi i8** [ %0, %for.cond.preheader.i ], [ %.pre51.i, %for.inc.i ]
  %8 = bitcast i8** %7 to i8*
  tail call void @free(i8* %8) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.end.i, %if.then
  %fileformat.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 17
  %9 = load i32** %fileformat.i, align 8, !tbaa !0
  %cmp12.i = icmp eq i32* %9, null
  br i1 %cmp12.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  %10 = bitcast i32* %9 to i8*
  tail call void @free(i8* %10) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i
  %fileflags.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 18
  %11 = load i32** %fileflags.i, align 8, !tbaa !0
  %cmp17.i = icmp eq i32* %11, null
  br i1 %cmp17.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  %12 = bitcast i32* %11 to i8*
  tail call void @free(i8* %12) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i
  %bpl.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 19
  %13 = load i32** %bpl.i, align 8, !tbaa !0
  %cmp22.i = icmp eq i32* %13, null
  br i1 %cmp22.i, label %if.end26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end21.i
  %14 = bitcast i32* %13 to i8*
  tail call void @free(i8* %14) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i
  %rpl.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 20
  %15 = load i32** %rpl.i, align 8, !tbaa !0
  %cmp27.i = icmp eq i32* %15, null
  br i1 %cmp27.i, label %clear_ssifile.exit, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  %16 = bitcast i32* %15 to i8*
  tail call void @free(i8* %16) #8
  br label %clear_ssifile.exit

clear_ssifile.exit:                               ; preds = %if.end26.i, %if.then29.i
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0
  %17 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IO_FILE* %17, null
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %clear_ssifile.exit
  %call = tail call i32 @fclose(%struct._IO_FILE* %17) #8
  br label %if.end

if.end:                                           ; preds = %clear_ssifile.exit, %if.then2
  %18 = bitcast %struct.ssifile_s* %sfp to i8*
  tail call void @free(i8* %18) #8
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @SSIRecommendMode(i8* nocapture %file) #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define %struct.ssiindex_s* @SSICreateIndex(i32 %mode) #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 120) #8
  %0 = bitcast i8* %call to %struct.ssiindex_s*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %FAILURE, label %if.end

if.end:                                           ; preds = %entry
  %smode = bitcast i8* %call to i32*
  store i32 %mode, i32* %smode, align 4, !tbaa !4
  %imode = getelementptr inbounds i8* %call, i64 4
  %1 = bitcast i8* %imode to i32*
  store i32 0, i32* %1, align 4, !tbaa !4
  %external = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %external to i32*
  store i32 0, i32* %2, align 4, !tbaa !4
  %max_ram = getelementptr inbounds i8* %call, i64 12
  %3 = bitcast i8* %max_ram to i32*
  store i32 200, i32* %3, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %mode, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([109 x i8]* @.str1, i64 0, i64 0)) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %filenames = getelementptr inbounds i8* %call, i64 16
  %4 = bitcast i8* %filenames to i8***
  %bpl = getelementptr inbounds i8* %call, i64 32
  %5 = bitcast i8* %bpl to i32**
  %rpl = getelementptr inbounds i8* %call, i64 40
  %6 = bitcast i8* %rpl to i32**
  %pkeys = getelementptr inbounds i8* %call, i64 56
  %7 = bitcast i8* %pkeys to %struct.ssipkey_s**
  %ptmpfile = getelementptr inbounds i8* %call, i64 72
  %8 = bitcast i8* %ptmpfile to i8**
  call void @llvm.memset.p0i8.i64(i8* %filenames, i8 0, i64 38, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %pkeys, i8 0, i64 16, i32 8, i1 false)
  store i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8** %8, align 8, !tbaa !0
  %ptmp = getelementptr inbounds i8* %call, i64 80
  %skeys = getelementptr inbounds i8* %call, i64 88
  %9 = bitcast i8* %skeys to %struct.ssiskey_s**
  %stmpfile = getelementptr inbounds i8* %call, i64 104
  %10 = bitcast i8* %stmpfile to i8**
  call void @llvm.memset.p0i8.i64(i8* %ptmp, i8 0, i64 24, i32 8, i1 false)
  store i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8** %10, align 8, !tbaa !0
  %stmp = getelementptr inbounds i8* %call, i64 112
  %11 = bitcast i8* %stmp to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %11, align 8, !tbaa !0
  %call4 = tail call noalias i8* @malloc(i64 80) #8
  %12 = bitcast i8* %call4 to i8**
  store i8** %12, i8*** %4, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %call4, null
  br i1 %cmp6, label %FAILURE, label %if.end8

if.end8:                                          ; preds = %if.end3
  %fileformat = getelementptr inbounds i8* %call, i64 24
  %13 = bitcast i8* %fileformat to i32**
  %call9 = tail call noalias i8* @malloc(i64 40) #8
  %14 = bitcast i8* %call9 to i32*
  store i32* %14, i32** %13, align 8, !tbaa !0
  %cmp11 = icmp eq i8* %call9, null
  br i1 %cmp11, label %FAILURE, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = tail call noalias i8* @malloc(i64 40) #8
  %15 = bitcast i8* %call14 to i32*
  store i32* %15, i32** %5, align 8, !tbaa !0
  %cmp16 = icmp eq i8* %call14, null
  br i1 %cmp16, label %FAILURE, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = tail call noalias i8* @malloc(i64 40) #8
  %16 = bitcast i8* %call19 to i32*
  store i32* %16, i32** %6, align 8, !tbaa !0
  %cmp21 = icmp eq i8* %call19, null
  br i1 %cmp21, label %FAILURE, label %if.end23

if.end23:                                         ; preds = %if.end18
  %call24 = tail call noalias i8* @malloc(i64 5600) #8
  %17 = bitcast i8* %call24 to %struct.ssipkey_s*
  store %struct.ssipkey_s* %17, %struct.ssipkey_s** %7, align 8, !tbaa !0
  %cmp26 = icmp eq i8* %call24, null
  br i1 %cmp26, label %FAILURE, label %if.end28

if.end28:                                         ; preds = %if.end23
  %call29 = tail call noalias i8* @malloc(i64 5600) #8
  %18 = bitcast i8* %call29 to %struct.ssiskey_s*
  store %struct.ssiskey_s* %18, %struct.ssiskey_s** %9, align 8, !tbaa !0
  %cmp31 = icmp eq i8* %call29, null
  br i1 %cmp31, label %FAILURE, label %return

FAILURE:                                          ; preds = %if.end28, %if.end23, %if.end18, %if.end13, %if.end8, %if.end3, %entry
  tail call void @SSIFreeIndex(%struct.ssiindex_s* %0) #9
  br label %return

return:                                           ; preds = %if.end28, %FAILURE
  %retval.0 = phi %struct.ssiindex_s* [ null, %FAILURE ], [ %0, %if.end28 ]
  ret %struct.ssiindex_s* %retval.0
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @SSIFreeIndex(%struct.ssiindex_s* %g) #0 {
entry:
  %cmp = icmp eq %struct.ssiindex_s* %g, null
  br i1 %cmp, label %if.end74, label %if.then

if.then:                                          ; preds = %entry
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2
  %0 = load i32* %external, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12
  %1 = load i32* %nprimary, align 4, !tbaa !4
  %cmp3121 = icmp eq i32 %1, 0
  br i1 %cmp3121, label %for.cond4.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  br label %for.body

for.cond4.preheader:                              ; preds = %for.body, %for.cond.preheader
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17
  %2 = load i32* %nsecondary, align 4, !tbaa !4
  %cmp5119 = icmp eq i32 %2, 0
  br i1 %cmp5119, label %for.end22, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  br label %for.body6

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv127 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next128, %for.body ]
  %3 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %key = getelementptr inbounds %struct.ssipkey_s* %3, i64 %indvars.iv127, i32 0
  %4 = load i8** %key, align 8, !tbaa !0
  tail call void @free(i8* %4) #8
  %indvars.iv.next128 = add i64 %indvars.iv127, 1
  %5 = load i32* %nprimary, align 4, !tbaa !4
  %6 = trunc i64 %indvars.iv.next128 to i32
  %cmp3 = icmp ult i32 %6, %5
  br i1 %cmp3, label %for.body, label %for.cond4.preheader

for.cond13.preheader:                             ; preds = %for.body6
  %phitmp = icmp eq i32 %9, 0
  br i1 %phitmp, label %for.end22, label %for.body16.lr.ph

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %skeys18 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  br label %for.body16

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv125 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next126, %for.body6 ]
  %7 = load %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %key9 = getelementptr inbounds %struct.ssiskey_s* %7, i64 %indvars.iv125, i32 0
  %8 = load i8** %key9, align 8, !tbaa !0
  tail call void @free(i8* %8) #8
  %indvars.iv.next126 = add i64 %indvars.iv125, 1
  %9 = load i32* %nsecondary, align 4, !tbaa !4
  %10 = trunc i64 %indvars.iv.next126 to i32
  %cmp5 = icmp ult i32 %10, %9
  br i1 %cmp5, label %for.body6, label %for.cond13.preheader

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv123 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next124, %for.body16 ]
  %11 = load %struct.ssiskey_s** %skeys18, align 8, !tbaa !0
  %pkey = getelementptr inbounds %struct.ssiskey_s* %11, i64 %indvars.iv123, i32 1
  %12 = load i8** %pkey, align 8, !tbaa !0
  tail call void @free(i8* %12) #8
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  %13 = load i32* %nsecondary, align 4, !tbaa !4
  %14 = trunc i64 %indvars.iv.next124 to i32
  %cmp15 = icmp ult i32 %14, %13
  br i1 %cmp15, label %for.body16, label %for.end22

for.end22:                                        ; preds = %for.cond4.preheader, %for.body16, %for.cond13.preheader
  %pkeys23 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  %15 = load %struct.ssipkey_s** %pkeys23, align 8, !tbaa !0
  %cmp24 = icmp eq %struct.ssipkey_s* %15, null
  br i1 %cmp24, label %if.end, label %if.then25

if.then25:                                        ; preds = %for.end22
  %16 = bitcast %struct.ssipkey_s* %15 to i8*
  tail call void @free(i8* %16) #8
  br label %if.end

if.end:                                           ; preds = %for.end22, %if.then25
  %skeys27 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  %17 = load %struct.ssiskey_s** %skeys27, align 8, !tbaa !0
  %cmp28 = icmp eq %struct.ssiskey_s* %17, null
  br i1 %cmp28, label %for.cond44.preheader, label %if.then29

if.then29:                                        ; preds = %if.end
  %18 = bitcast %struct.ssiskey_s* %17 to i8*
  tail call void @free(i8* %18) #8
  br label %for.cond44.preheader

if.else:                                          ; preds = %if.then
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14
  %19 = load %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %cmp32 = icmp eq %struct._IO_FILE* %19, null
  br i1 %cmp32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.else
  %call = tail call i32 @fclose(%struct._IO_FILE* %19) #8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then33
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19
  %20 = load %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %cmp36 = icmp eq %struct._IO_FILE* %20, null
  br i1 %cmp36, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end35
  %call39 = tail call i32 @fclose(%struct._IO_FILE* %20) #8
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %if.then37
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 13
  %21 = load i8** %ptmpfile, align 8, !tbaa !0
  %call41 = tail call i32 @remove(i8* %21) #8
  %stmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 18
  %22 = load i8** %stmpfile, align 8, !tbaa !0
  %call42 = tail call i32 @remove(i8* %22) #8
  br label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %if.end, %if.then29, %if.end40
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9
  %23 = load i16* %nfiles, align 2, !tbaa !3
  %cmp45115 = icmp eq i16 %23, 0
  %filenames53.pre = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 4
  br i1 %cmp45115, label %for.end52, label %for.body47

for.body47:                                       ; preds = %for.cond44.preheader, %for.body47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body47 ], [ 0, %for.cond44.preheader ]
  %24 = load i8*** %filenames53.pre, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i8** %24, i64 %indvars.iv
  %25 = load i8** %arrayidx49, align 8, !tbaa !0
  tail call void @free(i8* %25) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %26 = load i16* %nfiles, align 2, !tbaa !3
  %conv = zext i16 %26 to i32
  %27 = trunc i64 %indvars.iv.next to i32
  %cmp45 = icmp slt i32 %27, %conv
  br i1 %cmp45, label %for.body47, label %for.end52

for.end52:                                        ; preds = %for.cond44.preheader, %for.body47
  %28 = load i8*** %filenames53.pre, align 8, !tbaa !0
  %cmp54 = icmp eq i8** %28, null
  br i1 %cmp54, label %if.end58, label %if.then56

if.then56:                                        ; preds = %for.end52
  %29 = bitcast i8** %28 to i8*
  tail call void @free(i8* %29) #8
  br label %if.end58

if.end58:                                         ; preds = %for.end52, %if.then56
  %fileformat = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 5
  %30 = load i32** %fileformat, align 8, !tbaa !0
  %cmp59 = icmp eq i32* %30, null
  br i1 %cmp59, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end58
  %31 = bitcast i32* %30 to i8*
  tail call void @free(i8* %31) #8
  br label %if.end63

if.end63:                                         ; preds = %if.end58, %if.then61
  %bpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6
  %32 = load i32** %bpl, align 8, !tbaa !0
  %cmp64 = icmp eq i32* %32, null
  br i1 %cmp64, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end63
  %33 = bitcast i32* %32 to i8*
  tail call void @free(i8* %33) #8
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %if.then66
  %rpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7
  %34 = load i32** %rpl, align 8, !tbaa !0
  %cmp69 = icmp eq i32* %34, null
  br i1 %cmp69, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end68
  %35 = bitcast i32* %34 to i8*
  tail call void @free(i8* %35) #8
  br label %if.end73

if.end73:                                         ; preds = %if.end68, %if.then71
  %36 = bitcast %struct.ssiindex_s* %g to i8*
  tail call void @free(i8* %36) #8
  br label %if.end74

if.end74:                                         ; preds = %entry, %if.end73
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetFilePosition(%struct._IO_FILE* nocapture %fp, i32 %mode, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  switch i32 %mode, label %if.then9 [
    i32 0, label %if.then
    i32 1, label %if.else10
  ]

if.then:                                          ; preds = %entry
  %mode1 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0
  store i8 0, i8* %mode1, align 1, !tbaa !1
  %call = tail call i64 @ftell(%struct._IO_FILE* %fp) #8
  %conv = trunc i64 %call to i32
  %off = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  store i32 %conv, i32* %i32, align 4, !tbaa !4
  %cmp4 = icmp eq i32 %conv, -1
  %. = select i1 %cmp4, i32 9, i32 0
  br label %return

if.then9:                                         ; preds = %entry
  tail call void @abort() #11
  unreachable

if.else10:                                        ; preds = %entry
  %mode11 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0
  store i8 1, i8* %mode11, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then, %if.else10
  %retval.0 = phi i32 [ 7, %if.else10 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #1

; Function Attrs: noreturn nounwind optsize
declare void @abort() #4

; Function Attrs: nounwind optsize uwtable
define i32 @SSIAddFileToIndex(%struct.ssiindex_s* nocapture %g, i8* %filename, i32 %fmt, i32* nocapture %ret_fh) #0 {
entry:
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9
  %0 = load i16* %nfiles, align 2, !tbaa !3
  %cmp = icmp ugt i16 %0, 32766
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %filename) #10
  %conv2 = trunc i64 %call to i32
  %add = add nsw i32 %conv2, 1
  %flen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 8
  %1 = load i32* %flen, align 4, !tbaa !4
  %cmp3 = icmp ugt i32 %add, %1
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  store i32 %add, i32* %flen, align 4, !tbaa !4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %call9 = tail call i8* @FileTail(i8* %filename, i32 0) #8
  %2 = load i16* %nfiles, align 2, !tbaa !3
  %idxprom = zext i16 %2 to i64
  %filenames = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 4
  %3 = load i8*** %filenames, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom
  store i8* %call9, i8** %arrayidx, align 8, !tbaa !0
  %fileformat = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 5
  %4 = load i32** %fileformat, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom
  store i32 %fmt, i32* %arrayidx13, align 4, !tbaa !4
  %bpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6
  %5 = load i32** %bpl, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx16, align 4, !tbaa !4
  %rpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7
  %6 = load i32** %rpl, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %6, i64 %idxprom
  store i32 0, i32* %arrayidx19, align 4, !tbaa !4
  %conv21 = zext i16 %2 to i32
  store i32 %conv21, i32* %ret_fh, align 4, !tbaa !4
  %inc = add i16 %2, 1
  store i16 %inc, i16* %nfiles, align 2, !tbaa !3
  %7 = urem i16 %inc, 10
  %cmp25 = icmp eq i16 %7, 0
  br i1 %cmp25, label %if.then27, label %if.end79

if.then27:                                        ; preds = %if.end8
  %conv24 = zext i16 %inc to i64
  %8 = load i8*** %filenames, align 8, !tbaa !0
  %9 = bitcast i8** %8 to i8*
  %add31 = shl nuw nsw i64 %conv24, 3
  %mul = add i64 %add31, 80
  %call33 = tail call i8* @realloc(i8* %9, i64 %mul) #8
  %10 = bitcast i8* %call33 to i8**
  store i8** %10, i8*** %filenames, align 8, !tbaa !0
  %cmp36 = icmp eq i8* %call33, null
  br i1 %cmp36, label %return, label %if.end39

if.end39:                                         ; preds = %if.then27
  %11 = load i32** %fileformat, align 8, !tbaa !0
  %12 = bitcast i32* %11 to i8*
  %13 = load i16* %nfiles, align 2, !tbaa !3
  %conv42 = zext i16 %13 to i64
  %add43 = shl nuw nsw i64 %conv42, 2
  %mul45 = add i64 %add43, 40
  %call46 = tail call i8* @realloc(i8* %12, i64 %mul45) #8
  %14 = bitcast i8* %call46 to i32*
  store i32* %14, i32** %fileformat, align 8, !tbaa !0
  %cmp49 = icmp eq i8* %call46, null
  br i1 %cmp49, label %return, label %if.end52

if.end52:                                         ; preds = %if.end39
  %15 = load i32** %bpl, align 8, !tbaa !0
  %16 = bitcast i32* %15 to i8*
  %17 = load i16* %nfiles, align 2, !tbaa !3
  %conv55 = zext i16 %17 to i64
  %add56 = shl nuw nsw i64 %conv55, 2
  %mul58 = add i64 %add56, 40
  %call59 = tail call i8* @realloc(i8* %16, i64 %mul58) #8
  %18 = bitcast i8* %call59 to i32*
  store i32* %18, i32** %bpl, align 8, !tbaa !0
  %cmp62 = icmp eq i8* %call59, null
  br i1 %cmp62, label %return, label %if.end65

if.end65:                                         ; preds = %if.end52
  %19 = load i32** %rpl, align 8, !tbaa !0
  %20 = bitcast i32* %19 to i8*
  %21 = load i16* %nfiles, align 2, !tbaa !3
  %conv68 = zext i16 %21 to i64
  %add69 = shl nuw nsw i64 %conv68, 2
  %mul71 = add i64 %add69, 40
  %call72 = tail call i8* @realloc(i8* %20, i64 %mul71) #8
  %22 = bitcast i8* %call72 to i32*
  store i32* %22, i32** %rpl, align 8, !tbaa !0
  %cmp75 = icmp eq i8* %call72, null
  br i1 %cmp75, label %return, label %if.end79

if.end79:                                         ; preds = %if.end65, %if.end8
  br label %return

return:                                           ; preds = %if.end65, %if.end52, %if.end39, %if.then27, %entry, %if.end79
  %retval.0 = phi i32 [ 0, %if.end79 ], [ 13, %entry ], [ 3, %if.then27 ], [ 3, %if.end39 ], [ 3, %if.end52 ], [ 3, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @FileTail(i8*, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SSISetFileForSubseq(%struct.ssiindex_s* nocapture %g, i32 %fh, i32 %bpl, i32 %rpl) #0 {
entry:
  %cmp = icmp slt i32 %fh, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9
  %0 = load i16* %nfiles, align 2, !tbaa !3
  %conv = zext i16 %0 to i32
  %cmp1 = icmp sgt i32 %conv, %fh
  br i1 %cmp1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp slt i32 %bpl, 1
  %cmp6 = icmp slt i32 %rpl, 1
  %or.cond = or i1 %cmp3, %cmp6
  br i1 %or.cond, label %return, label %if.end9

if.end9:                                          ; preds = %if.end
  %idxprom = sext i32 %fh to i64
  %bpl10 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6
  %1 = load i32** %bpl10, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  store i32 %bpl, i32* %arrayidx, align 4, !tbaa !4
  %rpl12 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7
  %2 = load i32** %rpl12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %2, i64 %idxprom
  store i32 %rpl, i32* %arrayidx13, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 12, %lor.lhs.false ], [ 12, %entry ], [ 12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIAddPrimaryKeyToIndex(%struct.ssiindex_s* nocapture %g, i8* %key, i32 %fh, %struct.ssioffset_s* nocapture %r_off, %struct.ssioffset_s* %d_off, i32 %L) #0 {
entry:
  %cmp = icmp sgt i32 %fh, 32766
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12
  %0 = load i32* %nprimary, align 4, !tbaa !4
  %cmp1 = icmp ugt i32 %0, 2147483646
  br i1 %cmp1, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %L, 0
  %cmp7 = icmp eq %struct.ssioffset_s* %d_off, null
  %or.cond = and i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  tail call void @abort() #11
  unreachable

if.end10:                                         ; preds = %if.end4
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2
  %1 = load i32* %external, align 4, !tbaa !4
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.lhs.true11, label %if.end21

land.lhs.true11:                                  ; preds = %if.end10
  %call = tail call fastcc i64 @current_index_size(%struct.ssiindex_s* %g) #9
  %max_ram = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 3
  %2 = load i32* %max_ram, align 4, !tbaa !4
  %conv12 = sext i32 %2 to i64
  %cmp13 = icmp ult i64 %call, %conv12
  br i1 %cmp13, label %if.end21, label %if.then15

if.then15:                                        ; preds = %land.lhs.true11
  %call16 = tail call fastcc i32 @activate_external_sort(%struct.ssiindex_s* %g) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end21, label %return

if.end21:                                         ; preds = %if.then15, %land.lhs.true11, %if.end10
  %call22 = tail call i64 @strlen(i8* %key) #10
  %conv23 = trunc i64 %call22 to i32
  %add = add nsw i32 %conv23, 1
  %plen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 11
  %3 = load i32* %plen, align 4, !tbaa !4
  %cmp24 = icmp ugt i32 %add, %3
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  store i32 %add, i32* %plen, align 4, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.then26
  %4 = load i32* %external, align 4, !tbaa !4
  %tobool31 = icmp eq i32 %4, 0
  br i1 %tobool31, label %if.end58, label %if.then32

if.then32:                                        ; preds = %if.end29
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0
  %5 = load i32* %smode, align 4, !tbaa !4
  %cmp33 = icmp eq i32 %5, 0
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14
  %6 = load %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %off = getelementptr inbounds %struct.ssioffset_s* %r_off, i64 0, i32 1
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then32
  %i32 = bitcast %union.anon* %off to i32*
  %7 = load i32* %i32, align 4, !tbaa !4
  %conv36 = zext i32 %7 to i64
  br i1 %cmp7, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then35
  %off39 = getelementptr inbounds %struct.ssioffset_s* %d_off, i64 0, i32 1
  %i3240 = bitcast %union.anon* %off39 to i32*
  %8 = load i32* %i3240, align 4, !tbaa !4
  %phitmp = zext i32 %8 to i64
  br label %cond.end

cond.end:                                         ; preds = %if.then35, %cond.false
  %cond = phi i64 [ %phitmp, %cond.false ], [ 0, %if.then35 ]
  %conv42 = sext i32 %L to i64
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* %key, i32 %fh, i64 %conv36, i64 %cond, i64 %conv42) #8
  br label %if.end56

if.else:                                          ; preds = %if.then32
  %i64 = getelementptr inbounds %union.anon* %off, i64 0, i32 0
  %9 = load i64* %i64, align 8, !tbaa !5
  br i1 %cmp7, label %cond.end52, label %cond.false49

cond.false49:                                     ; preds = %if.else
  %i6451 = getelementptr inbounds %struct.ssioffset_s* %d_off, i64 0, i32 1, i32 0
  %10 = load i64* %i6451, align 8, !tbaa !5
  br label %cond.end52

cond.end52:                                       ; preds = %if.else, %cond.false49
  %cond53 = phi i64 [ %10, %cond.false49 ], [ 0, %if.else ]
  %conv54 = sext i32 %L to i64
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i8* %key, i32 %fh, i64 %9, i64 %cond53, i64 %conv54) #8
  br label %if.end56

if.end56:                                         ; preds = %cond.end52, %cond.end
  %11 = load i32* %nprimary, align 4, !tbaa !4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %nprimary, align 4, !tbaa !4
  br label %return

if.end58:                                         ; preds = %if.end29
  %call59 = tail call i8* @sre_strdup(i8* %key, i32 %conv23) #8
  %12 = load i32* %nprimary, align 4, !tbaa !4
  %idxprom = zext i32 %12 to i64
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  %13 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %key61 = getelementptr inbounds %struct.ssipkey_s* %13, i64 %idxprom, i32 0
  store i8* %call59, i8** %key61, align 8, !tbaa !0
  %cmp62 = icmp eq i8* %call59, null
  br i1 %cmp62, label %return, label %if.end65

if.end65:                                         ; preds = %if.end58
  %conv66 = trunc i32 %fh to i16
  %14 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %fnum = getelementptr inbounds %struct.ssipkey_s* %14, i64 %idxprom, i32 1
  store i16 %conv66, i16* %fnum, align 2, !tbaa !3
  %15 = getelementptr inbounds %struct.ssipkey_s* %14, i64 %idxprom, i32 2, i32 0
  %16 = getelementptr inbounds %struct.ssioffset_s* %r_off, i64 0, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !tbaa.struct !6
  %cmp5.not = xor i1 %cmp5, true
  %brmerge = or i1 %cmp7, %cmp5.not
  %17 = load i32* %nprimary, align 4, !tbaa !4
  %idxprom93 = zext i32 %17 to i64
  %18 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %19 = getelementptr inbounds %struct.ssipkey_s* %18, i64 %idxprom93, i32 3, i32 0
  br i1 %brmerge, label %if.else91, label %if.then81

if.then81:                                        ; preds = %if.end65
  %20 = getelementptr inbounds %struct.ssioffset_s* %d_off, i64 0, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !6
  %21 = load i32* %nprimary, align 4, !tbaa !4
  %idxprom88 = zext i32 %21 to i64
  %22 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %len = getelementptr inbounds %struct.ssipkey_s* %22, i64 %idxprom88, i32 4
  store i32 %L, i32* %len, align 4, !tbaa !4
  br label %if.end102

if.else91:                                        ; preds = %if.end65
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %16, i64 16, i32 8, i1 false), !tbaa.struct !6
  %23 = load i32* %nprimary, align 4, !tbaa !4
  %idxprom98 = zext i32 %23 to i64
  %24 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %len101 = getelementptr inbounds %struct.ssipkey_s* %24, i64 %idxprom98, i32 4
  store i32 0, i32* %len101, align 4, !tbaa !4
  br label %if.end102

if.end102:                                        ; preds = %if.else91, %if.then81
  %25 = phi %struct.ssipkey_s* [ %24, %if.else91 ], [ %22, %if.then81 ]
  %26 = load i32* %nprimary, align 4, !tbaa !4
  %inc104 = add i32 %26, 1
  store i32 %inc104, i32* %nprimary, align 4, !tbaa !4
  %rem = urem i32 %inc104, 100
  %cmp106 = icmp eq i32 %rem, 0
  br i1 %cmp106, label %if.then108, label %if.end120

if.then108:                                       ; preds = %if.end102
  %27 = bitcast %struct.ssipkey_s* %25 to i8*
  %add111 = add i32 %26, 101
  %conv112 = zext i32 %add111 to i64
  %mul = mul i64 %conv112, 56
  %call113 = tail call i8* @realloc(i8* %27, i64 %mul) #8
  %28 = bitcast i8* %call113 to %struct.ssipkey_s*
  store %struct.ssipkey_s* %28, %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %cmp116 = icmp eq i8* %call113, null
  br i1 %cmp116, label %return, label %if.end120

if.end120:                                        ; preds = %if.then108, %if.end102
  br label %return

return:                                           ; preds = %if.then108, %if.end58, %if.then15, %if.end, %entry, %if.end120, %if.end56
  %retval.0 = phi i32 [ 0, %if.end56 ], [ 0, %if.end120 ], [ 13, %entry ], [ 14, %if.end ], [ 4, %if.then15 ], [ 3, %if.end58 ], [ 3, %if.then108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i64 @current_index_size(%struct.ssiindex_s* nocapture %g) #6 {
entry:
  %flen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 8
  %0 = load i32* %flen, align 4, !tbaa !4
  %add = add i32 %0, 16
  %conv = zext i32 %add to i64
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0
  %1 = load i32* %smode, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, 1
  %plen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 11
  %2 = load i32* %plen, align 4, !tbaa !4
  %cond.v = select i1 %cmp, i32 22, i32 14
  %cond = add i32 %cond.v, %2
  %conv5 = zext i32 %cond to i64
  %slen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 16
  %3 = load i32* %slen, align 4, !tbaa !4
  %add7 = add i32 %3, %2
  %conv8 = zext i32 %add7 to i64
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9
  %4 = load i16* %nfiles, align 2, !tbaa !3
  %conv9 = zext i16 %4 to i64
  %mul = mul i64 %conv9, %conv
  %add10 = add i64 %mul, 66
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12
  %5 = load i32* %nprimary, align 4, !tbaa !4
  %conv11 = zext i32 %5 to i64
  %mul12 = mul i64 %conv11, %conv5
  %add13 = add i64 %add10, %mul12
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17
  %6 = load i32* %nsecondary, align 4, !tbaa !4
  %conv14 = zext i32 %6 to i64
  %mul15 = mul i64 %conv14, %conv8
  %add16 = add i64 %add13, %mul15
  %div = lshr i64 %add16, 20
  ret i64 %div
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @activate_external_sort(%struct.ssiindex_s* nocapture %g) #0 {
entry:
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2
  %0 = load i32* %external, align 4, !tbaa !4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 13
  %1 = load i8** %ptmpfile, align 8, !tbaa !0
  %call = tail call i32 @FileExists(i8* %1) #8
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %stmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 18
  %2 = load i8** %stmpfile, align 8, !tbaa !0
  %call4 = tail call i32 @FileExists(i8* %2) #8
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %return

if.end7:                                          ; preds = %if.end3
  %3 = load i8** %ptmpfile, align 8, !tbaa !0
  %call9 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #8
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %cmp = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp, label %return, label %if.end11

if.end11:                                         ; preds = %if.end7
  %4 = load i8** %stmpfile, align 8, !tbaa !0
  %call13 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #8
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %cmp14 = icmp eq %struct._IO_FILE* %call13, null
  br i1 %cmp14, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12
  %5 = load i32* %nprimary, align 4, !tbaa !4
  %cmp17195 = icmp eq i32 %5, 0
  br i1 %cmp17195, label %for.cond67.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  br label %for.body

for.cond67.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %6 = phi i32 [ 0, %for.cond.preheader ], [ %19, %for.inc ]
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17
  %7 = load i32* %nsecondary, align 4, !tbaa !4
  %cmp68193 = icmp eq i32 %7, 0
  br i1 %cmp68193, label %for.cond82.preheader, label %for.body70.lr.ph

for.body70.lr.ph:                                 ; preds = %for.cond67.preheader
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  br label %for.body70

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv204 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next205, %for.inc ]
  %8 = load i32* %smode, align 4, !tbaa !4
  %cmp18 = icmp eq i32 %8, 0
  %9 = load %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %10 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %key = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 0
  %11 = load i8** %key, align 8, !tbaa !0
  %fnum = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 1
  %12 = load i16* %fnum, align 2, !tbaa !3
  %conv = zext i16 %12 to i32
  %off = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 2, i32 1
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body
  %i32 = bitcast %union.anon* %off to i32*
  %13 = load i32* %i32, align 4, !tbaa !4
  %conv27 = zext i32 %13 to i64
  %off31 = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 3, i32 1
  %i3232 = bitcast %union.anon* %off31 to i32*
  %14 = load i32* %i3232, align 4, !tbaa !4
  %conv33 = zext i32 %14 to i64
  %len = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 4
  %15 = load i32* %len, align 4, !tbaa !4
  %conv37 = zext i32 %15 to i64
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* %11, i32 %conv, i64 %conv27, i64 %conv33, i64 %conv37) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %i64 = getelementptr inbounds %union.anon* %off, i64 0, i32 0
  %16 = load i64* %i64, align 8, !tbaa !5
  %i6459 = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 3, i32 1, i32 0
  %17 = load i64* %i6459, align 8, !tbaa !5
  %len63 = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 4
  %18 = load i32* %len63, align 4, !tbaa !4
  %conv64 = zext i32 %18 to i64
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i8* %11, i32 %conv, i64 %16, i64 %17, i64 %conv64) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.else
  %indvars.iv.next205 = add i64 %indvars.iv204, 1
  %19 = load i32* %nprimary, align 4, !tbaa !4
  %20 = trunc i64 %indvars.iv.next205 to i32
  %cmp17 = icmp ult i32 %20, %19
  br i1 %cmp17, label %for.body, label %for.cond67.preheader

for.cond67.for.cond82.preheader_crit_edge:        ; preds = %for.body70
  %.pre = load i32* %nprimary, align 4, !tbaa !4
  br label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.cond67.preheader, %for.cond67.for.cond82.preheader_crit_edge
  %21 = phi i32 [ 0, %for.cond67.preheader ], [ %27, %for.cond67.for.cond82.preheader_crit_edge ]
  %22 = phi i32 [ %6, %for.cond67.preheader ], [ %.pre, %for.cond67.for.cond82.preheader_crit_edge ]
  %cmp84191 = icmp eq i32 %22, 0
  br i1 %cmp84191, label %for.cond94.preheader, label %for.body86.lr.ph

for.body86.lr.ph:                                 ; preds = %for.cond82.preheader
  %pkeys88 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  br label %for.body86

for.body70:                                       ; preds = %for.body70, %for.body70.lr.ph
  %indvars.iv202 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next203, %for.body70 ]
  %23 = load %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %24 = load %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %key74 = getelementptr inbounds %struct.ssiskey_s* %24, i64 %indvars.iv202, i32 0
  %25 = load i8** %key74, align 8, !tbaa !0
  %pkey = getelementptr inbounds %struct.ssiskey_s* %24, i64 %indvars.iv202, i32 1
  %26 = load i8** %pkey, align 8, !tbaa !0
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %25, i8* %26) #8
  %indvars.iv.next203 = add i64 %indvars.iv202, 1
  %27 = load i32* %nsecondary, align 4, !tbaa !4
  %28 = trunc i64 %indvars.iv.next203 to i32
  %cmp68 = icmp ult i32 %28, %27
  br i1 %cmp68, label %for.body70, label %for.cond67.for.cond82.preheader_crit_edge

for.cond82.for.cond94.preheader_crit_edge:        ; preds = %for.body86
  %.pre206 = load i32* %nsecondary, align 4, !tbaa !4
  br label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.cond82.preheader, %for.cond82.for.cond94.preheader_crit_edge
  %29 = phi i32 [ %21, %for.cond82.preheader ], [ %.pre206, %for.cond82.for.cond94.preheader_crit_edge ]
  %cmp96189 = icmp eq i32 %29, 0
  br i1 %cmp96189, label %for.end117, label %for.body98.lr.ph

for.body98.lr.ph:                                 ; preds = %for.cond94.preheader
  %skeys100 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  br label %for.body98

for.body86:                                       ; preds = %for.body86.lr.ph, %for.body86
  %indvars.iv200 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next201, %for.body86 ]
  %30 = load %struct.ssipkey_s** %pkeys88, align 8, !tbaa !0
  %key90 = getelementptr inbounds %struct.ssipkey_s* %30, i64 %indvars.iv200, i32 0
  %31 = load i8** %key90, align 8, !tbaa !0
  tail call void @free(i8* %31) #8
  %indvars.iv.next201 = add i64 %indvars.iv200, 1
  %32 = load i32* %nprimary, align 4, !tbaa !4
  %33 = trunc i64 %indvars.iv.next201 to i32
  %cmp84 = icmp ult i32 %33, %32
  br i1 %cmp84, label %for.body86, label %for.cond82.for.cond94.preheader_crit_edge

for.cond106.preheader:                            ; preds = %for.body98
  %phitmp = icmp eq i32 %36, 0
  br i1 %phitmp, label %for.end117, label %for.body110.lr.ph

for.body110.lr.ph:                                ; preds = %for.cond106.preheader
  %skeys112 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  br label %for.body110

for.body98:                                       ; preds = %for.body98.lr.ph, %for.body98
  %indvars.iv198 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next199, %for.body98 ]
  %34 = load %struct.ssiskey_s** %skeys100, align 8, !tbaa !0
  %key102 = getelementptr inbounds %struct.ssiskey_s* %34, i64 %indvars.iv198, i32 0
  %35 = load i8** %key102, align 8, !tbaa !0
  tail call void @free(i8* %35) #8
  %indvars.iv.next199 = add i64 %indvars.iv198, 1
  %36 = load i32* %nsecondary, align 4, !tbaa !4
  %37 = trunc i64 %indvars.iv.next199 to i32
  %cmp96 = icmp ult i32 %37, %36
  br i1 %cmp96, label %for.body98, label %for.cond106.preheader

for.body110:                                      ; preds = %for.body110.lr.ph, %for.body110
  %indvars.iv = phi i64 [ 0, %for.body110.lr.ph ], [ %indvars.iv.next, %for.body110 ]
  %38 = load %struct.ssiskey_s** %skeys112, align 8, !tbaa !0
  %pkey114 = getelementptr inbounds %struct.ssiskey_s* %38, i64 %indvars.iv, i32 1
  %39 = load i8** %pkey114, align 8, !tbaa !0
  tail call void @free(i8* %39) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %40 = load i32* %nsecondary, align 4, !tbaa !4
  %41 = trunc i64 %indvars.iv.next to i32
  %cmp108 = icmp ult i32 %41, %40
  br i1 %cmp108, label %for.body110, label %for.end117

for.end117:                                       ; preds = %for.cond94.preheader, %for.body110, %for.cond106.preheader
  %pkeys118 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  %42 = load %struct.ssipkey_s** %pkeys118, align 8, !tbaa !0
  %cmp119 = icmp eq %struct.ssipkey_s* %42, null
  br i1 %cmp119, label %if.end123, label %if.then121

if.then121:                                       ; preds = %for.end117
  %43 = bitcast %struct.ssipkey_s* %42 to i8*
  tail call void @free(i8* %43) #8
  br label %if.end123

if.end123:                                        ; preds = %for.end117, %if.then121
  %skeys124 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  %44 = load %struct.ssiskey_s** %skeys124, align 8, !tbaa !0
  %cmp125 = icmp eq %struct.ssiskey_s* %44, null
  br i1 %cmp125, label %if.end129, label %if.then127

if.then127:                                       ; preds = %if.end123
  %45 = bitcast %struct.ssiskey_s* %44 to i8*
  tail call void @free(i8* %45) #8
  br label %if.end129

if.end129:                                        ; preds = %if.end123, %if.then127
  store %struct.ssipkey_s* null, %struct.ssipkey_s** %pkeys118, align 8, !tbaa !0
  store %struct.ssiskey_s* null, %struct.ssiskey_s** %skeys124, align 8, !tbaa !0
  store i32 1, i32* %external, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.end11, %if.end7, %if.end3, %if.end, %entry, %if.end129
  %retval.0 = phi i32 [ 0, %if.end129 ], [ 0, %entry ], [ 1, %if.end ], [ 1, %if.end3 ], [ 1, %if.end7 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #7

; Function Attrs: nounwind optsize uwtable
define i32 @SSIAddSecondaryKeyToIndex(%struct.ssiindex_s* nocapture %g, i8* %key, i8* %pkey) #0 {
entry:
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17
  %0 = load i32* %nsecondary, align 4, !tbaa !4
  %cmp = icmp ugt i32 %0, 2147483646
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2
  %1 = load i32* %external, align 4, !tbaa !4
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call = tail call fastcc i64 @current_index_size(%struct.ssiindex_s* %g) #9
  %max_ram = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 3
  %2 = load i32* %max_ram, align 4, !tbaa !4
  %conv2 = sext i32 %2 to i64
  %cmp3 = icmp ult i64 %call, %conv2
  br i1 %cmp3, label %if.end11, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call fastcc i32 @activate_external_sort(%struct.ssiindex_s* %g) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end11, label %return

if.end11:                                         ; preds = %if.then5, %land.lhs.true, %if.end
  %call12 = tail call i64 @strlen(i8* %key) #10
  %conv13 = trunc i64 %call12 to i32
  %add = add nsw i32 %conv13, 1
  %slen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 16
  %3 = load i32* %slen, align 4, !tbaa !4
  %cmp14 = icmp ugt i32 %add, %3
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  store i32 %add, i32* %slen, align 4, !tbaa !4
  br label %if.end19

if.end19:                                         ; preds = %if.end11, %if.then16
  %4 = load i32* %external, align 4, !tbaa !4
  %tobool21 = icmp eq i32 %4, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end19
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19
  %5 = load %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %key, i8* %pkey) #8
  %6 = load i32* %nsecondary, align 4, !tbaa !4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %nsecondary, align 4, !tbaa !4
  br label %return

if.end25:                                         ; preds = %if.end19
  %call26 = tail call i8* @sre_strdup(i8* %key, i32 %conv13) #8
  %7 = load i32* %nsecondary, align 4, !tbaa !4
  %idxprom = zext i32 %7 to i64
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  %8 = load %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %key28 = getelementptr inbounds %struct.ssiskey_s* %8, i64 %idxprom, i32 0
  store i8* %call26, i8** %key28, align 8, !tbaa !0
  %cmp29 = icmp eq i8* %call26, null
  br i1 %cmp29, label %return, label %if.end32

if.end32:                                         ; preds = %if.end25
  %call33 = tail call i8* @sre_strdup(i8* %pkey, i32 -1) #8
  %9 = load i32* %nsecondary, align 4, !tbaa !4
  %idxprom35 = zext i32 %9 to i64
  %10 = load %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %pkey38 = getelementptr inbounds %struct.ssiskey_s* %10, i64 %idxprom35, i32 1
  store i8* %call33, i8** %pkey38, align 8, !tbaa !0
  %cmp39 = icmp eq i8* %call33, null
  br i1 %cmp39, label %return, label %if.end42

if.end42:                                         ; preds = %if.end32
  %inc44 = add i32 %9, 1
  store i32 %inc44, i32* %nsecondary, align 4, !tbaa !4
  %rem = urem i32 %inc44, 100
  %cmp46 = icmp eq i32 %rem, 0
  br i1 %cmp46, label %if.then48, label %if.end60

if.then48:                                        ; preds = %if.end42
  %11 = load %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %12 = bitcast %struct.ssiskey_s* %11 to i8*
  %add51 = add i32 %9, 101
  %conv52 = zext i32 %add51 to i64
  %mul = shl nuw nsw i64 %conv52, 4
  %call53 = tail call i8* @realloc(i8* %12, i64 %mul) #8
  %13 = bitcast i8* %call53 to %struct.ssiskey_s*
  store %struct.ssiskey_s* %13, %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %cmp56 = icmp eq i8* %call53, null
  br i1 %cmp56, label %return, label %if.end60

if.end60:                                         ; preds = %if.then48, %if.end42
  br label %return

return:                                           ; preds = %if.then48, %if.end32, %if.end25, %if.then5, %entry, %if.end60, %if.then22
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end60 ], [ 14, %entry ], [ 4, %if.then5 ], [ 3, %if.end25 ], [ 3, %if.end32 ], [ 3, %if.then48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIWriteIndex(i8* nocapture %file, %struct.ssiindex_s* %g) #0 {
entry:
  %s.i707 = alloca i8*, align 8
  %n.i708 = alloca i32, align 4
  %n.addr.i702 = alloca i32, align 4
  %n.addr.i697 = alloca i16, align 2
  %n.addr.i692 = alloca i32, align 4
  %n.addr.i687 = alloca i16, align 2
  %s.i = alloca i8*, align 8
  %n.i = alloca i32, align 4
  %n.addr.i679 = alloca i32, align 4
  %n.addr.i674 = alloca i32, align 4
  %n.addr.i669 = alloca i32, align 4
  %n.addr.i664 = alloca i32, align 4
  %n.addr.i659 = alloca i64, align 8
  %n.addr.i654 = alloca i64, align 8
  %n.addr.i649 = alloca i64, align 8
  %n.addr.i644 = alloca i32, align 4
  %n.addr.i639 = alloca i32, align 4
  %n.addr.i634 = alloca i32, align 4
  %n.addr.i629 = alloca i32, align 4
  %n.addr.i624 = alloca i32, align 4
  %n.addr.i619 = alloca i32, align 4
  %n.addr.i614 = alloca i32, align 4
  %n.addr.i609 = alloca i32, align 4
  %n.addr.i604 = alloca i32, align 4
  %n.addr.i599 = alloca i32, align 4
  %n.addr.i594 = alloca i32, align 4
  %n.addr.i589 = alloca i16, align 2
  %n.addr.i584 = alloca i32, align 4
  %n.addr.i = alloca i32, align 4
  %cmd = alloca [1024 x i8], align 16
  %buf = alloca i8*, align 8
  %buflen = alloca i32, align 4
  %pkey = alloca %struct.ssipkey_s, align 8
  %buf340 = alloca i8*, align 8
  %n = alloca i32, align 4
  %call = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @current_index_size(%struct.ssiindex_s* %g) #9
  %cmp2 = icmp ugt i64 %call1, 2046
  %imode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %imode, align 4, !tbaa !4
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([115 x i8]* @.str8, i64 0, i64 0)) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %flen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 8
  %0 = load i32* %flen, align 4, !tbaa !4
  %add = add i32 %0, 16
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0
  %1 = load i32* %smode, align 4, !tbaa !4
  %cmp5 = icmp eq i32 %1, 1
  %plen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 11
  %2 = load i32* %plen, align 4, !tbaa !4
  %cond.v = select i1 %cmp5, i32 22, i32 14
  %cond = add i32 %cond.v, %2
  %slen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 16
  %3 = load i32* %slen, align 4, !tbaa !4
  %add10 = add i32 %3, %2
  %. = zext i1 %cmp5 to i32
  %4 = load i32* %imode, align 4, !tbaa !4
  %cmp16 = icmp eq i32 %4, 1
  %or18 = or i32 %., 2
  %header_flags.1 = select i1 %cmp16, i32 %or18, i32 %.
  %and = and i32 %header_flags.1, 2
  %tobool = icmp ne i32 %and, 0
  %conv = select i1 %tobool, i64 66, i64 54
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9
  %5 = load i16* %nfiles, align 2, !tbaa !3
  %conv21 = zext i16 %5 to i32
  %mul = mul i32 %conv21, %add
  %conv22 = zext i32 %mul to i64
  %add23 = add i64 %conv, %conv22
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12
  %6 = load i32* %nprimary, align 4, !tbaa !4
  %mul24 = mul i32 %6, %cond
  %conv25 = zext i32 %mul24 to i64
  %add26 = add i64 %add23, %conv25
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2
  %7 = load i32* %external, align 4, !tbaa !4
  %tobool27 = icmp eq i32 %7, 0
  br i1 %tobool27, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end4
  %8 = getelementptr inbounds [1024 x i8]* %cmd, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %8) #7
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14
  %9 = load %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %call29 = call i32 @fclose(%struct._IO_FILE* %9) #8
  store %struct._IO_FILE* null, %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 13
  %10 = load i8** %ptmpfile, align 8, !tbaa !0
  %call32 = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), i8* %10, i8* %10) #8
  %call34 = call i32 @system(i8* %8) #8
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.end38, label %return

if.end38:                                         ; preds = %if.then28
  %11 = load i8** %ptmpfile, align 8, !tbaa !0
  %call40 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #8
  store %struct._IO_FILE* %call40, %struct._IO_FILE** %ptmp, align 8, !tbaa !0
  %cmp42 = icmp eq %struct._IO_FILE* %call40, null
  br i1 %cmp42, label %return, label %if.end45

if.end45:                                         ; preds = %if.end38
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19
  %12 = load %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %call46 = call i32 @fclose(%struct._IO_FILE* %12) #8
  store %struct._IO_FILE* null, %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %stmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 18
  %13 = load i8** %stmpfile, align 8, !tbaa !0
  %call50 = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), i8* %13, i8* %13) #8
  %call52 = call i32 @system(i8* %8) #8
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %cleanup, label %return

cleanup:                                          ; preds = %if.end45
  %14 = load i8** %stmpfile, align 8, !tbaa !0
  %call58 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #8
  store %struct._IO_FILE* %call58, %struct._IO_FILE** %stmp, align 8, !tbaa !0
  %cmp60 = icmp eq %struct._IO_FILE* %call58, null
  call void @llvm.lifetime.end(i64 1024, i8* %8) #7
  br i1 %cmp60, label %return, label %if.end67

if.else:                                          ; preds = %if.end4
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  %15 = load %struct.ssipkey_s** %pkeys, align 8, !tbaa !0
  %16 = bitcast %struct.ssipkey_s* %15 to i8*
  %call65 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %16, i32 %6, i64 56, i32 (i8*, i8*)* @pkeysort) #8
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  %17 = load %struct.ssiskey_s** %skeys, align 8, !tbaa !0
  %18 = bitcast %struct.ssiskey_s* %17 to i8*
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17
  %19 = load i32* %nsecondary, align 4, !tbaa !4
  %call66 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %18, i32 %19, i64 16, i32 (i8*, i8*)* @skeysort) #8
  br label %if.end67

if.end67:                                         ; preds = %cleanup, %if.else
  %20 = bitcast i32* %n.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #7
  %call.i = call i32 @sre_hton32(i32 -202118735) #8
  store i32 %call.i, i32* %n.addr.i, align 4, !tbaa !4
  %call1.i = call i64 @fwrite(i8* %20, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i = icmp eq i64 %call1.i, 1
  call void @llvm.lifetime.end(i64 4, i8* %20) #7
  br i1 %cmp.i, label %if.end71, label %return

if.end71:                                         ; preds = %if.end67
  %21 = bitcast i32* %n.addr.i584 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #7
  %call.i585 = call i32 @sre_hton32(i32 %header_flags.1) #8
  store i32 %call.i585, i32* %n.addr.i584, align 4, !tbaa !4
  %call1.i586 = call i64 @fwrite(i8* %21, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i587 = icmp eq i64 %call1.i586, 1
  call void @llvm.lifetime.end(i64 4, i8* %21) #7
  br i1 %cmp.i587, label %if.end75, label %return

if.end75:                                         ; preds = %if.end71
  %22 = load i16* %nfiles, align 2, !tbaa !3
  %23 = bitcast i16* %n.addr.i589 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #7
  %call.i590 = call zeroext i16 @sre_hton16(i16 zeroext %22) #8
  store i16 %call.i590, i16* %n.addr.i589, align 2, !tbaa !3
  %call1.i591 = call i64 @fwrite(i8* %23, i64 2, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i592 = icmp eq i64 %call1.i591, 1
  call void @llvm.lifetime.end(i64 2, i8* %23) #7
  br i1 %cmp.i592, label %if.end80, label %return

if.end80:                                         ; preds = %if.end75
  %24 = load i32* %nprimary, align 4, !tbaa !4
  %25 = bitcast i32* %n.addr.i594 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #7
  %call.i595 = call i32 @sre_hton32(i32 %24) #8
  store i32 %call.i595, i32* %n.addr.i594, align 4, !tbaa !4
  %call1.i596 = call i64 @fwrite(i8* %25, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i597 = icmp eq i64 %call1.i596, 1
  call void @llvm.lifetime.end(i64 4, i8* %25) #7
  br i1 %cmp.i597, label %if.end85, label %return

if.end85:                                         ; preds = %if.end80
  %nsecondary86 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17
  %26 = load i32* %nsecondary86, align 4, !tbaa !4
  %27 = bitcast i32* %n.addr.i599 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #7
  %call.i600 = call i32 @sre_hton32(i32 %26) #8
  store i32 %call.i600, i32* %n.addr.i599, align 4, !tbaa !4
  %call1.i601 = call i64 @fwrite(i8* %27, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i602 = icmp eq i64 %call1.i601, 1
  call void @llvm.lifetime.end(i64 4, i8* %27) #7
  br i1 %cmp.i602, label %if.end90, label %return

if.end90:                                         ; preds = %if.end85
  %28 = load i32* %flen, align 4, !tbaa !4
  %29 = bitcast i32* %n.addr.i604 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #7
  %call.i605 = call i32 @sre_hton32(i32 %28) #8
  store i32 %call.i605, i32* %n.addr.i604, align 4, !tbaa !4
  %call1.i606 = call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i607 = icmp eq i64 %call1.i606, 1
  call void @llvm.lifetime.end(i64 4, i8* %29) #7
  br i1 %cmp.i607, label %if.end95, label %return

if.end95:                                         ; preds = %if.end90
  %30 = load i32* %plen, align 4, !tbaa !4
  %31 = bitcast i32* %n.addr.i609 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #7
  %call.i610 = call i32 @sre_hton32(i32 %30) #8
  store i32 %call.i610, i32* %n.addr.i609, align 4, !tbaa !4
  %call1.i611 = call i64 @fwrite(i8* %31, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i612 = icmp eq i64 %call1.i611, 1
  call void @llvm.lifetime.end(i64 4, i8* %31) #7
  br i1 %cmp.i612, label %if.end100, label %return

if.end100:                                        ; preds = %if.end95
  %32 = load i32* %slen, align 4, !tbaa !4
  %33 = bitcast i32* %n.addr.i614 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #7
  %call.i615 = call i32 @sre_hton32(i32 %32) #8
  store i32 %call.i615, i32* %n.addr.i614, align 4, !tbaa !4
  %call1.i616 = call i64 @fwrite(i8* %33, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i617 = icmp eq i64 %call1.i616, 1
  call void @llvm.lifetime.end(i64 4, i8* %33) #7
  br i1 %cmp.i617, label %if.end105, label %return

if.end105:                                        ; preds = %if.end100
  %34 = bitcast i32* %n.addr.i619 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #7
  %call.i620 = call i32 @sre_hton32(i32 %add) #8
  store i32 %call.i620, i32* %n.addr.i619, align 4, !tbaa !4
  %call1.i621 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i622 = icmp eq i64 %call1.i621, 1
  call void @llvm.lifetime.end(i64 4, i8* %34) #7
  br i1 %cmp.i622, label %if.end109, label %return

if.end109:                                        ; preds = %if.end105
  %35 = bitcast i32* %n.addr.i624 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #7
  %call.i625 = call i32 @sre_hton32(i32 %cond) #8
  store i32 %call.i625, i32* %n.addr.i624, align 4, !tbaa !4
  %call1.i626 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i627 = icmp eq i64 %call1.i626, 1
  call void @llvm.lifetime.end(i64 4, i8* %35) #7
  br i1 %cmp.i627, label %if.end113, label %return

if.end113:                                        ; preds = %if.end109
  %36 = bitcast i32* %n.addr.i629 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #7
  %call.i630 = call i32 @sre_hton32(i32 %add10) #8
  store i32 %call.i630, i32* %n.addr.i629, align 4, !tbaa !4
  %call1.i631 = call i64 @fwrite(i8* %36, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i632 = icmp eq i64 %call1.i631, 1
  call void @llvm.lifetime.end(i64 4, i8* %36) #7
  br i1 %cmp.i632, label %if.end117, label %return

if.end117:                                        ; preds = %if.end113
  %37 = load i32* %imode, align 4, !tbaa !4
  %cmp119 = icmp eq i32 %37, 0
  br i1 %cmp119, label %if.then121, label %if.else137

if.then121:                                       ; preds = %if.end117
  %conv122 = trunc i64 %conv to i32
  %38 = bitcast i32* %n.addr.i634 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #7
  %call.i635 = call i32 @sre_hton32(i32 %conv122) #8
  store i32 %call.i635, i32* %n.addr.i634, align 4, !tbaa !4
  %call1.i636 = call i64 @fwrite(i8* %38, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i637 = icmp eq i64 %call1.i636, 1
  call void @llvm.lifetime.end(i64 4, i8* %38) #7
  br i1 %cmp.i637, label %if.end126, label %return

if.end126:                                        ; preds = %if.then121
  %conv127 = trunc i64 %add23 to i32
  %39 = bitcast i32* %n.addr.i639 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #7
  %call.i640 = call i32 @sre_hton32(i32 %conv127) #8
  store i32 %call.i640, i32* %n.addr.i639, align 4, !tbaa !4
  %call1.i641 = call i64 @fwrite(i8* %39, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i642 = icmp eq i64 %call1.i641, 1
  call void @llvm.lifetime.end(i64 4, i8* %39) #7
  br i1 %cmp.i642, label %if.end131, label %return

if.end131:                                        ; preds = %if.end126
  %conv132 = trunc i64 %add26 to i32
  %40 = bitcast i32* %n.addr.i644 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #7
  %call.i645 = call i32 @sre_hton32(i32 %conv132) #8
  store i32 %call.i645, i32* %n.addr.i644, align 4, !tbaa !4
  %call1.i646 = call i64 @fwrite(i8* %40, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i647 = icmp eq i64 %call1.i646, 1
  call void @llvm.lifetime.end(i64 4, i8* %40) #7
  br i1 %cmp.i647, label %if.end150, label %return

if.else137:                                       ; preds = %if.end117
  %41 = bitcast i64* %n.addr.i649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #7
  %call.i650 = call i64 @sre_hton64(i64 %conv) #8
  store i64 %call.i650, i64* %n.addr.i649, align 8, !tbaa !5
  %call1.i651 = call i64 @fwrite(i8* %41, i64 8, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i652 = icmp eq i64 %call1.i651, 1
  call void @llvm.lifetime.end(i64 8, i8* %41) #7
  br i1 %cmp.i652, label %if.end141, label %return

if.end141:                                        ; preds = %if.else137
  %42 = bitcast i64* %n.addr.i654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #7
  %call.i655 = call i64 @sre_hton64(i64 %add23) #8
  store i64 %call.i655, i64* %n.addr.i654, align 8, !tbaa !5
  %call1.i656 = call i64 @fwrite(i8* %42, i64 8, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i657 = icmp eq i64 %call1.i656, 1
  call void @llvm.lifetime.end(i64 8, i8* %42) #7
  br i1 %cmp.i657, label %if.end145, label %return

if.end145:                                        ; preds = %if.end141
  %43 = bitcast i64* %n.addr.i659 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #7
  %call.i660 = call i64 @sre_hton64(i64 %add26) #8
  store i64 %call.i660, i64* %n.addr.i659, align 8, !tbaa !5
  %call1.i661 = call i64 @fwrite(i8* %43, i64 8, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i662 = icmp eq i64 %call1.i661, 1
  call void @llvm.lifetime.end(i64 8, i8* %43) #7
  br i1 %cmp.i662, label %if.end150, label %return

if.end150:                                        ; preds = %if.end131, %if.end145
  %44 = load i32* %flen, align 4, !tbaa !4
  %conv152 = zext i32 %44 to i64
  %call154 = call noalias i8* @malloc(i64 %conv152) #8
  %cmp155 = icmp eq i8* %call154, null
  br i1 %cmp155, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end150
  %45 = load i16* %nfiles, align 2, !tbaa !3
  %cmp161737 = icmp eq i16 %45, 0
  br i1 %cmp161737, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6
  %filenames = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 4
  %fileformat = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 5
  %46 = bitcast i32* %n.addr.i664 to i8*
  %47 = bitcast i32* %n.addr.i669 to i8*
  %48 = bitcast i32* %n.addr.i674 to i8*
  %rpl202 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7
  %49 = bitcast i32* %n.addr.i679 to i8*
  br label %for.body

for.cond:                                         ; preds = %if.end200
  %50 = load i16* %nfiles, align 2, !tbaa !3
  %conv160 = zext i16 %50 to i32
  %51 = trunc i64 %indvars.iv.next742 to i32
  %cmp161 = icmp slt i32 %51, %conv160
  br i1 %cmp161, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv741 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next742, %for.cond ]
  %52 = load i32** %bpl, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %52, i64 %indvars.iv741
  %53 = load i32* %arrayidx, align 4, !tbaa !4
  %cmp163 = icmp eq i32 %53, 0
  br i1 %cmp163, label %if.end171, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %54 = load i32** %rpl202, align 8, !tbaa !0
  %arrayidx166 = getelementptr inbounds i32* %54, i64 %indvars.iv741
  %55 = load i32* %arrayidx166, align 4, !tbaa !4
  %not.cmp167 = icmp ne i32 %55, 0
  %.583 = zext i1 %not.cmp167 to i32
  br label %if.end171

if.end171:                                        ; preds = %land.lhs.true, %for.body
  %file_flags.0 = phi i32 [ 0, %for.body ], [ %.583, %land.lhs.true ]
  %56 = load i8*** %filenames, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i8** %56, i64 %indvars.iv741
  %57 = load i8** %arrayidx173, align 8, !tbaa !0
  %call174 = call i8* @strcpy(i8* %call154, i8* %57) #8
  %58 = load i32* %flen, align 4, !tbaa !4
  %conv176 = zext i32 %58 to i64
  %call177 = call i64 @fwrite(i8* %call154, i64 1, i64 %conv176, %struct._IO_FILE* %call) #8
  %59 = load i32* %flen, align 4, !tbaa !4
  %conv179 = zext i32 %59 to i64
  %cmp180 = icmp eq i64 %call177, %conv179
  br i1 %cmp180, label %if.end183, label %return

if.end183:                                        ; preds = %if.end171
  %60 = load i32** %fileformat, align 8, !tbaa !0
  %arrayidx185 = getelementptr inbounds i32* %60, i64 %indvars.iv741
  %61 = load i32* %arrayidx185, align 4, !tbaa !4
  call void @llvm.lifetime.start(i64 4, i8* %46) #7
  %call.i665 = call i32 @sre_hton32(i32 %61) #8
  store i32 %call.i665, i32* %n.addr.i664, align 4, !tbaa !4
  %call1.i666 = call i64 @fwrite(i8* %46, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i667 = icmp eq i64 %call1.i666, 1
  call void @llvm.lifetime.end(i64 4, i8* %46) #7
  br i1 %cmp.i667, label %if.end189, label %return

if.end189:                                        ; preds = %if.end183
  call void @llvm.lifetime.start(i64 4, i8* %47) #7
  %call.i670 = call i32 @sre_hton32(i32 %file_flags.0) #8
  store i32 %call.i670, i32* %n.addr.i669, align 4, !tbaa !4
  %call1.i671 = call i64 @fwrite(i8* %47, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i672 = icmp eq i64 %call1.i671, 1
  call void @llvm.lifetime.end(i64 4, i8* %47) #7
  br i1 %cmp.i672, label %if.end193, label %return

if.end193:                                        ; preds = %if.end189
  %62 = load i32** %bpl, align 8, !tbaa !0
  %arrayidx196 = getelementptr inbounds i32* %62, i64 %indvars.iv741
  %63 = load i32* %arrayidx196, align 4, !tbaa !4
  call void @llvm.lifetime.start(i64 4, i8* %48) #7
  %call.i675 = call i32 @sre_hton32(i32 %63) #8
  store i32 %call.i675, i32* %n.addr.i674, align 4, !tbaa !4
  %call1.i676 = call i64 @fwrite(i8* %48, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i677 = icmp eq i64 %call1.i676, 1
  call void @llvm.lifetime.end(i64 4, i8* %48) #7
  br i1 %cmp.i677, label %if.end200, label %return

if.end200:                                        ; preds = %if.end193
  %64 = load i32** %rpl202, align 8, !tbaa !0
  %arrayidx203 = getelementptr inbounds i32* %64, i64 %indvars.iv741
  %65 = load i32* %arrayidx203, align 4, !tbaa !4
  call void @llvm.lifetime.start(i64 4, i8* %49) #7
  %call.i680 = call i32 @sre_hton32(i32 %65) #8
  store i32 %call.i680, i32* %n.addr.i679, align 4, !tbaa !4
  %call1.i681 = call i64 @fwrite(i8* %49, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i682 = icmp eq i64 %call1.i681, 1
  call void @llvm.lifetime.end(i64 4, i8* %49) #7
  %indvars.iv.next742 = add i64 %indvars.iv741, 1
  br i1 %cmp.i682, label %for.cond, label %return

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  call void @free(i8* %call154) #8
  %66 = load i32* %plen, align 4, !tbaa !4
  %conv209 = zext i32 %66 to i64
  %call211 = call noalias i8* @malloc(i64 %conv209) #8
  %cmp212 = icmp eq i8* %call211, null
  br i1 %cmp212, label %return, label %if.end215

if.end215:                                        ; preds = %for.end
  %67 = load i32* %external, align 4, !tbaa !4
  %tobool217 = icmp eq i32 %67, 0
  br i1 %tobool217, label %for.cond270.preheader, label %if.then218

for.cond270.preheader:                            ; preds = %if.end215
  %68 = load i32* %nprimary, align 4, !tbaa !4
  %cmp272729 = icmp eq i32 %68, 0
  br i1 %cmp272729, label %if.end324, label %for.body274.lr.ph

for.body274.lr.ph:                                ; preds = %for.cond270.preheader
  %pkeys276 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10
  %69 = bitcast i16* %n.addr.i697 to i8*
  %70 = bitcast i32* %n.addr.i702 to i8*
  br label %for.body274

if.then218:                                       ; preds = %if.end215
  store i8* null, i8** %buf, align 8, !tbaa !0
  store i32 0, i32* %buflen, align 4, !tbaa !4
  %71 = bitcast %struct.ssipkey_s* %pkey to i8*
  call void @llvm.lifetime.start(i64 56, i8* %71) #7
  %72 = load i32* %nprimary, align 4, !tbaa !4
  %cmp221733 = icmp eq i32 %72, 0
  br i1 %cmp221733, label %cleanup266, label %for.body223.lr.ph

for.body223.lr.ph:                                ; preds = %if.then218
  %ptmp224 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14
  %73 = bitcast i8** %s.i to i8*
  %74 = bitcast i32* %n.i to i8*
  %key.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 0
  %fnum.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 1
  %mode15.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 2, i32 0
  %off.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 2, i32 1
  %i32.i = bitcast %union.anon* %off.i to i32*
  %mode24.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 3, i32 0
  %off28.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 3, i32 1
  %i3229.i = bitcast %union.anon* %off28.i to i32*
  %len.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 4
  %75 = bitcast i16* %n.addr.i687 to i8*
  %r_off = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 2
  %d_off = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 3
  %76 = bitcast i32* %n.addr.i692 to i8*
  br label %for.body223

for.cond219:                                      ; preds = %if.end258
  %77 = load i32* %nprimary, align 4, !tbaa !4
  %cmp221 = icmp ult i32 %inc264, %77
  br i1 %cmp221, label %for.body223, label %for.cond219.cleanup266_crit_edge

for.body223:                                      ; preds = %for.body223.lr.ph, %for.cond219
  %i.1734 = phi i32 [ 0, %for.body223.lr.ph ], [ %inc264, %for.cond219 ]
  %78 = load %struct._IO_FILE** %ptmp224, align 8, !tbaa !0
  %call225 = call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %78) #8
  %cmp226 = icmp eq i8* %call225, null
  br i1 %cmp226, label %return, label %if.end229

if.end229:                                        ; preds = %for.body223
  %79 = load i8** %buf, align 8, !tbaa !0
  %80 = load i32* %smode, align 4, !tbaa !4
  %conv231 = trunc i32 %80 to i8
  call void @llvm.lifetime.start(i64 8, i8* %73) #7
  call void @llvm.lifetime.start(i64 4, i8* %74) #7
  store i8* %79, i8** %s.i, align 8, !tbaa !0
  %call.i684 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #8
  %cmp.i685 = icmp eq i8* %call.i684, null
  br i1 %cmp.i685, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.end229
  store i8* %call.i684, i8** %key.i, align 8, !tbaa !0
  %call1.i686 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #8
  %cmp2.i = icmp eq i8* %call1.i686, null
  br i1 %cmp2.i, label %return, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @atoi(i8* %call1.i686) #10
  %conv.i = trunc i32 %call5.i to i16
  store i16 %conv.i, i16* %fnum.i, align 8, !tbaa !3
  %cmp7.i = icmp eq i8 %conv231, 0
  br i1 %cmp7.i, label %if.then9.i, label %return

if.then9.i:                                       ; preds = %if.end4.i
  %call10.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #8
  %cmp11.i = icmp eq i8* %call10.i, null
  br i1 %cmp11.i, label %return, label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i
  store i8 0, i8* %mode15.i, align 8, !tbaa !1
  %call16.i = call i64 @strtoul(i8* nocapture %call10.i, i8** null, i32 10) #8
  %conv17.i = trunc i64 %call16.i to i32
  store i32 %conv17.i, i32* %i32.i, align 8, !tbaa !4
  %call19.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #8
  %cmp20.i = icmp eq i8* %call19.i, null
  br i1 %cmp20.i, label %return, label %if.end23.i

if.end23.i:                                       ; preds = %if.end14.i
  store i8 0, i8* %mode24.i, align 8, !tbaa !1
  %call25.i = call i64 @strtoul(i8* nocapture %call19.i, i8** null, i32 10) #8
  %conv26.i = trunc i64 %call25.i to i32
  store i32 %conv26.i, i32* %i3229.i, align 8, !tbaa !4
  %call31.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #8
  %cmp32.i = icmp eq i8* %call31.i, null
  br i1 %cmp32.i, label %return, label %if.end236

if.end236:                                        ; preds = %if.end23.i
  %call36.i = call i64 @strtoul(i8* nocapture %call31.i, i8** null, i32 10) #8
  %conv37.i = trunc i64 %call36.i to i32
  store i32 %conv37.i, i32* %len.i, align 8, !tbaa !4
  call void @llvm.lifetime.end(i64 8, i8* %73) #7
  call void @llvm.lifetime.end(i64 4, i8* %74) #7
  %call237 = call i8* @strcpy(i8* %call211, i8* %call.i684) #8
  %81 = load i32* %plen, align 4, !tbaa !4
  %conv239 = zext i32 %81 to i64
  %call240 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv239, %struct._IO_FILE* %call) #8
  %82 = load i32* %plen, align 4, !tbaa !4
  %conv242 = zext i32 %82 to i64
  %cmp243 = icmp eq i64 %call240, %conv242
  br i1 %cmp243, label %if.end246, label %return

if.end246:                                        ; preds = %if.end236
  call void @llvm.lifetime.start(i64 2, i8* %75) #7
  %call.i688 = call zeroext i16 @sre_hton16(i16 zeroext %conv.i) #8
  store i16 %call.i688, i16* %n.addr.i687, align 2, !tbaa !3
  %call1.i689 = call i64 @fwrite(i8* %75, i64 2, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i690 = icmp eq i64 %call1.i689, 1
  call void @llvm.lifetime.end(i64 2, i8* %75) #7
  br i1 %cmp.i690, label %if.end250, label %return

if.end250:                                        ; preds = %if.end246
  %call251 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %r_off) #9
  %tobool252 = icmp eq i32 %call251, 0
  br i1 %tobool252, label %return, label %if.end254

if.end254:                                        ; preds = %if.end250
  %call255 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %d_off) #9
  %tobool256 = icmp eq i32 %call255, 0
  br i1 %tobool256, label %return, label %if.end258

if.end258:                                        ; preds = %if.end254
  %83 = load i32* %len.i, align 8, !tbaa !4
  call void @llvm.lifetime.start(i64 4, i8* %76) #7
  %call.i693 = call i32 @sre_hton32(i32 %83) #8
  store i32 %call.i693, i32* %n.addr.i692, align 4, !tbaa !4
  %call1.i694 = call i64 @fwrite(i8* %76, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i695 = icmp eq i64 %call1.i694, 1
  call void @llvm.lifetime.end(i64 4, i8* %76) #7
  %inc264 = add nsw i32 %i.1734, 1
  br i1 %cmp.i695, label %for.cond219, label %return

for.cond219.cleanup266_crit_edge:                 ; preds = %for.cond219
  %.pre743 = load i8** %buf, align 8, !tbaa !0
  br label %cleanup266

cleanup266:                                       ; preds = %if.then218, %for.cond219.cleanup266_crit_edge
  %84 = phi i8* [ null, %if.then218 ], [ %.pre743, %for.cond219.cleanup266_crit_edge ]
  call void @free(i8* %84) #8
  call void @llvm.lifetime.end(i64 56, i8* %71) #7
  br label %if.end324

for.cond270:                                      ; preds = %if.end312
  %85 = load i32* %nprimary, align 4, !tbaa !4
  %86 = trunc i64 %indvars.iv.next740 to i32
  %cmp272 = icmp ult i32 %86, %85
  br i1 %cmp272, label %for.body274, label %if.end324

for.body274:                                      ; preds = %for.body274.lr.ph, %for.cond270
  %indvars.iv739 = phi i64 [ 0, %for.body274.lr.ph ], [ %indvars.iv.next740, %for.cond270 ]
  %87 = load %struct.ssipkey_s** %pkeys276, align 8, !tbaa !0
  %key278 = getelementptr inbounds %struct.ssipkey_s* %87, i64 %indvars.iv739, i32 0
  %88 = load i8** %key278, align 8, !tbaa !0
  %call279 = call i8* @strcpy(i8* %call211, i8* %88) #8
  %89 = load i32* %plen, align 4, !tbaa !4
  %conv281 = zext i32 %89 to i64
  %call282 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv281, %struct._IO_FILE* %call) #8
  %90 = load i32* %plen, align 4, !tbaa !4
  %conv284 = zext i32 %90 to i64
  %cmp285 = icmp eq i64 %call282, %conv284
  br i1 %cmp285, label %if.end288, label %return

if.end288:                                        ; preds = %for.body274
  %91 = load %struct.ssipkey_s** %pkeys276, align 8, !tbaa !0
  %fnum292 = getelementptr inbounds %struct.ssipkey_s* %91, i64 %indvars.iv739, i32 1
  %92 = load i16* %fnum292, align 2, !tbaa !3
  call void @llvm.lifetime.start(i64 2, i8* %69) #7
  %call.i698 = call zeroext i16 @sre_hton16(i16 zeroext %92) #8
  store i16 %call.i698, i16* %n.addr.i697, align 2, !tbaa !3
  %call1.i699 = call i64 @fwrite(i8* %69, i64 2, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i700 = icmp eq i64 %call1.i699, 1
  call void @llvm.lifetime.end(i64 2, i8* %69) #7
  br i1 %cmp.i700, label %if.end296, label %return

if.end296:                                        ; preds = %if.end288
  %93 = load %struct.ssipkey_s** %pkeys276, align 8, !tbaa !0
  %r_off300 = getelementptr inbounds %struct.ssipkey_s* %93, i64 %indvars.iv739, i32 2
  %call301 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %r_off300) #9
  %tobool302 = icmp eq i32 %call301, 0
  br i1 %tobool302, label %return, label %if.end304

if.end304:                                        ; preds = %if.end296
  %94 = load %struct.ssipkey_s** %pkeys276, align 8, !tbaa !0
  %d_off308 = getelementptr inbounds %struct.ssipkey_s* %94, i64 %indvars.iv739, i32 3
  %call309 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %d_off308) #9
  %tobool310 = icmp eq i32 %call309, 0
  br i1 %tobool310, label %return, label %if.end312

if.end312:                                        ; preds = %if.end304
  %95 = load %struct.ssipkey_s** %pkeys276, align 8, !tbaa !0
  %len316 = getelementptr inbounds %struct.ssipkey_s* %95, i64 %indvars.iv739, i32 4
  %96 = load i32* %len316, align 4, !tbaa !4
  call void @llvm.lifetime.start(i64 4, i8* %70) #7
  %call.i703 = call i32 @sre_hton32(i32 %96) #8
  store i32 %call.i703, i32* %n.addr.i702, align 4, !tbaa !4
  %call1.i704 = call i64 @fwrite(i8* %70, i64 4, i64 1, %struct._IO_FILE* %call) #8
  %cmp.i705 = icmp eq i64 %call1.i704, 1
  call void @llvm.lifetime.end(i64 4, i8* %70) #7
  %indvars.iv.next740 = add i64 %indvars.iv739, 1
  br i1 %cmp.i705, label %for.cond270, label %return

if.end324:                                        ; preds = %for.cond270.preheader, %for.cond270, %cleanup266
  %97 = load i32* %nsecondary86, align 4, !tbaa !4
  %cmp326 = icmp eq i32 %97, 0
  br i1 %cmp326, label %if.end420, label %if.then328

if.then328:                                       ; preds = %if.end324
  %98 = load i32* %slen, align 4, !tbaa !4
  %conv330 = zext i32 %98 to i64
  %call332 = call noalias i8* @malloc(i64 %conv330) #8
  %cmp333 = icmp eq i8* %call332, null
  br i1 %cmp333, label %return, label %if.end336

if.end336:                                        ; preds = %if.then328
  %99 = load i32* %external, align 4, !tbaa !4
  %tobool338 = icmp eq i32 %99, 0
  br i1 %tobool338, label %for.body387.lr.ph, label %for.body345.lr.ph

for.body387.lr.ph:                                ; preds = %if.end336
  %skeys389 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15
  br label %for.body387

for.body345.lr.ph:                                ; preds = %if.end336
  store i8* null, i8** %buf340, align 8, !tbaa !0
  store i32 0, i32* %n, align 4, !tbaa !4
  %stmp346 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19
  %100 = bitcast i8** %s.i707 to i8*
  %101 = bitcast i32* %n.i708 to i8*
  br label %for.body345

for.cond341:                                      ; preds = %if.end369
  %102 = load i32* %nsecondary86, align 4, !tbaa !4
  %cmp343 = icmp ult i32 %inc380, %102
  br i1 %cmp343, label %for.body345, label %for.end381

for.body345:                                      ; preds = %for.body345.lr.ph, %for.cond341
  %i.3727 = phi i32 [ 0, %for.body345.lr.ph ], [ %inc380, %for.cond341 ]
  %103 = load %struct._IO_FILE** %stmp346, align 8, !tbaa !0
  %call347 = call i8* @sre_fgets(i8** %buf340, i32* %n, %struct._IO_FILE* %103) #8
  %cmp348 = icmp eq i8* %call347, null
  br i1 %cmp348, label %return, label %if.end351

if.end351:                                        ; preds = %for.body345
  %104 = load i8** %buf340, align 8, !tbaa !0
  call void @llvm.lifetime.start(i64 8, i8* %100) #7
  call void @llvm.lifetime.start(i64 4, i8* %101) #7
  store i8* %104, i8** %s.i707, align 8, !tbaa !0
  %call.i709 = call i8* @sre_strtok(i8** %s.i707, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i708) #8
  %cmp.i710 = icmp eq i8* %call.i709, null
  br i1 %cmp.i710, label %return, label %if.end.i714

if.end.i714:                                      ; preds = %if.end351
  %call1.i712 = call i8* @sre_strtok(i8** %s.i707, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i708) #8
  %cmp2.i713 = icmp eq i8* %call1.i712, null
  br i1 %cmp2.i713, label %return, label %if.end356

if.end356:                                        ; preds = %if.end.i714
  call void @llvm.lifetime.end(i64 8, i8* %100) #7
  call void @llvm.lifetime.end(i64 4, i8* %101) #7
  %call358 = call i8* @strcpy(i8* %call332, i8* %call.i709) #8
  %call360 = call i8* @strcpy(i8* %call211, i8* %call1.i712) #8
  %105 = load i32* %slen, align 4, !tbaa !4
  %conv362 = zext i32 %105 to i64
  %call363 = call i64 @fwrite(i8* %call332, i64 1, i64 %conv362, %struct._IO_FILE* %call) #8
  %106 = load i32* %slen, align 4, !tbaa !4
  %conv365 = zext i32 %106 to i64
  %cmp366 = icmp eq i64 %call363, %conv365
  br i1 %cmp366, label %if.end369, label %return

if.end369:                                        ; preds = %if.end356
  %107 = load i32* %plen, align 4, !tbaa !4
  %conv371 = zext i32 %107 to i64
  %call372 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv371, %struct._IO_FILE* %call) #8
  %108 = load i32* %plen, align 4, !tbaa !4
  %conv374 = zext i32 %108 to i64
  %cmp375 = icmp eq i64 %call372, %conv374
  %inc380 = add nsw i32 %i.3727, 1
  br i1 %cmp375, label %for.cond341, label %return

for.end381:                                       ; preds = %for.cond341
  %.pre = load i8** %buf340, align 8, !tbaa !0
  call void @free(i8* %.pre) #8
  br label %if.end419

for.cond383:                                      ; preds = %if.end406
  %109 = load i32* %nsecondary86, align 4, !tbaa !4
  %110 = trunc i64 %indvars.iv.next to i32
  %cmp385 = icmp ult i32 %110, %109
  br i1 %cmp385, label %for.body387, label %if.end419

for.body387:                                      ; preds = %for.body387.lr.ph, %for.cond383
  %indvars.iv = phi i64 [ 0, %for.body387.lr.ph ], [ %indvars.iv.next, %for.cond383 ]
  %111 = load %struct.ssiskey_s** %skeys389, align 8, !tbaa !0
  %key391 = getelementptr inbounds %struct.ssiskey_s* %111, i64 %indvars.iv, i32 0
  %112 = load i8** %key391, align 8, !tbaa !0
  %call392 = call i8* @strcpy(i8* %call332, i8* %112) #8
  %113 = load %struct.ssiskey_s** %skeys389, align 8, !tbaa !0
  %pkey396 = getelementptr inbounds %struct.ssiskey_s* %113, i64 %indvars.iv, i32 1
  %114 = load i8** %pkey396, align 8, !tbaa !0
  %call397 = call i8* @strcpy(i8* %call211, i8* %114) #8
  %115 = load i32* %slen, align 4, !tbaa !4
  %conv399 = zext i32 %115 to i64
  %call400 = call i64 @fwrite(i8* %call332, i64 1, i64 %conv399, %struct._IO_FILE* %call) #8
  %116 = load i32* %slen, align 4, !tbaa !4
  %conv402 = zext i32 %116 to i64
  %cmp403 = icmp eq i64 %call400, %conv402
  br i1 %cmp403, label %if.end406, label %return

if.end406:                                        ; preds = %for.body387
  %117 = load i32* %plen, align 4, !tbaa !4
  %conv408 = zext i32 %117 to i64
  %call409 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv408, %struct._IO_FILE* %call) #8
  %118 = load i32* %plen, align 4, !tbaa !4
  %conv411 = zext i32 %118 to i64
  %cmp412 = icmp eq i64 %call409, %conv411
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp412, label %for.cond383, label %return

if.end419:                                        ; preds = %for.cond383, %for.end381
  call void @free(i8* %call332) #8
  br label %if.end420

if.end420:                                        ; preds = %if.end324, %if.end419
  call void @free(i8* %call211) #8
  %call421 = call i32 @fclose(%struct._IO_FILE* %call) #8
  br label %return

return:                                           ; preds = %if.end200, %if.end193, %if.end189, %if.end183, %if.end171, %if.end258, %if.end246, %if.end254, %if.end250, %if.end236, %for.body223, %if.end229, %if.end.i, %if.then9.i, %if.end14.i, %if.end4.i, %if.end23.i, %if.end312, %if.end288, %if.end304, %if.end296, %for.body274, %if.end.i714, %if.end351, %if.end369, %if.end356, %for.body345, %if.end406, %for.body387, %if.end131, %if.end126, %if.then121, %if.end145, %if.end141, %if.else137, %if.end113, %if.end109, %if.end105, %if.end100, %if.end95, %if.end90, %if.end85, %if.end80, %if.end75, %if.end71, %if.end67, %if.end45, %if.end38, %if.then28, %if.then328, %for.end, %if.end150, %entry, %cleanup, %if.end420
  %retval.3 = phi i32 [ 16, %cleanup ], [ 0, %if.end420 ], [ 4, %entry ], [ 15, %if.end67 ], [ 15, %if.end71 ], [ 15, %if.end75 ], [ 15, %if.end80 ], [ 15, %if.end85 ], [ 15, %if.end90 ], [ 15, %if.end95 ], [ 15, %if.end100 ], [ 15, %if.end105 ], [ 15, %if.end109 ], [ 15, %if.end113 ], [ 15, %if.then121 ], [ 15, %if.end126 ], [ 15, %if.end131 ], [ 15, %if.else137 ], [ 15, %if.end141 ], [ 15, %if.end145 ], [ 3, %if.end150 ], [ 3, %for.end ], [ 3, %if.then328 ], [ 16, %if.then28 ], [ 16, %if.end38 ], [ 16, %if.end45 ], [ 15, %for.body387 ], [ 15, %if.end406 ], [ 6, %if.end.i714 ], [ 6, %if.end351 ], [ 15, %if.end369 ], [ 15, %if.end356 ], [ 1, %for.body345 ], [ 15, %for.body274 ], [ 15, %if.end296 ], [ 15, %if.end304 ], [ 15, %if.end288 ], [ 15, %if.end312 ], [ 15, %if.end258 ], [ 15, %if.end246 ], [ 15, %if.end254 ], [ 15, %if.end250 ], [ 15, %if.end236 ], [ 1, %for.body223 ], [ 6, %if.end229 ], [ 6, %if.end.i ], [ 6, %if.then9.i ], [ 6, %if.end14.i ], [ 6, %if.end4.i ], [ 6, %if.end23.i ], [ 15, %if.end171 ], [ 15, %if.end183 ], [ 15, %if.end189 ], [ 15, %if.end193 ], [ 15, %if.end200 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @system(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @specqsort(...) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @pkeysort(i8* nocapture %k1, i8* nocapture %k2) #6 {
entry:
  %key = bitcast i8* %k1 to i8**
  %0 = load i8** %key, align 8, !tbaa !0
  %key3 = bitcast i8* %k2 to i8**
  %1 = load i8** %key3, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %0, i8* %1) #10
  ret i32 %call
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @skeysort(i8* nocapture %k1, i8* nocapture %k2) #6 {
entry:
  %key = bitcast i8* %k1 to i8**
  %0 = load i8** %key, align 8, !tbaa !0
  %key3 = bitcast i8* %k2 to i8**
  %1 = load i8** %key3, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %0, i8* %1) #10
  ret i32 %call
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @write_offset(%struct._IO_FILE* nocapture %fp, %struct.ssioffset_s* nocapture %offset) #0 {
entry:
  %n.addr.i14 = alloca i64, align 8
  %n.addr.i = alloca i32, align 4
  %mode = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 0
  %0 = load i8* %mode, align 1, !tbaa !1
  switch i8 %0, label %if.else9 [
    i8 0, label %if.then
    i8 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %off = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 1
  %i32 = bitcast %union.anon* %off to i32*
  %1 = load i32* %i32, align 4, !tbaa !4
  %2 = bitcast i32* %n.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #7
  %call.i = call i32 @sre_hton32(i32 %1) #8
  store i32 %call.i, i32* %n.addr.i, align 4, !tbaa !4
  %call1.i = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #8
  %cmp.i = icmp eq i64 %call1.i, 1
  %..i = zext i1 %cmp.i to i32
  call void @llvm.lifetime.end(i64 4, i8* %2) #7
  br label %return

if.then6:                                         ; preds = %entry
  %i64 = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 1, i32 0
  %3 = load i64* %i64, align 8, !tbaa !5
  %4 = bitcast i64* %n.addr.i14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #7
  %call.i15 = call i64 @sre_hton64(i64 %3) #8
  store i64 %call.i15, i64* %n.addr.i14, align 8, !tbaa !5
  %call1.i16 = call i64 @fwrite(i8* %4, i64 8, i64 1, %struct._IO_FILE* %fp) #8
  %cmp.i17 = icmp eq i64 %call1.i16, 1
  %..i18 = zext i1 %cmp.i17 to i32
  call void @llvm.lifetime.end(i64 8, i8* %4) #7
  br label %return

if.else9:                                         ; preds = %entry
  call void @abort() #11
  unreachable

return:                                           ; preds = %if.then6, %if.then
  %retval.0 = phi i32 [ %..i, %if.then ], [ %..i18, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @SSIErrorString(i32 %n) #2 {
entry:
  %0 = icmp ult i32 %n, 17
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %n to i64
  %switch.gep = getelementptr inbounds [17 x i8*]* @switch.table, i64 0, i64 %1
  %switch.load = load i8** %switch.gep, align 8
  ret i8* %switch.load

return:                                           ; preds = %entry
  ret i8* getelementptr inbounds ([18 x i8]* @.str28, i64 0, i64 0)
}

; Function Attrs: nounwind optsize uwtable
define void @SSIForceExternalSort(%struct.ssiindex_s* nocapture %g) #0 {
entry:
  %call = tail call fastcc i32 @activate_external_sort(%struct.ssiindex_s* %g) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str29, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare i32 @FileExists(i8*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i64 @strtoul(i8*, i8** nocapture, i32) #1

; Function Attrs: optsize
declare i64 @sre_ntoh64(i64) #3

; Function Attrs: optsize
declare i64 @sre_hton64(i64) #3

; Function Attrs: optsize
declare i32 @sre_hton32(i32) #3

; Function Attrs: optsize
declare i32 @sre_ntoh32(i32) #3

; Function Attrs: optsize
declare zeroext i16 @sre_hton16(i16 zeroext) #3

; Function Attrs: optsize
declare zeroext i16 @sre_ntoh16(i16 zeroext) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"long long", metadata !1}
!6 = metadata !{i64 0, i64 1, metadata !1, i64 8, i64 4, metadata !4, i64 8, i64 8, metadata !5}
