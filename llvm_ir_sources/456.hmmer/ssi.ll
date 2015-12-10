; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !110), !dbg !493
  call void @llvm.dbg.value(metadata !{%struct.ssifile_s** %ret_sfp}, i64 0, metadata !111), !dbg !493
  call void @llvm.dbg.value(metadata !494, i64 0, metadata !112), !dbg !495
  %call = call noalias i8* @malloc(i64 144) #9, !dbg !496
  %0 = bitcast i8* %call to %struct.ssifile_s*, !dbg !496
  call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %0}, i64 0, metadata !112), !dbg !496
  %cmp = icmp eq i8* %call, null, !dbg !496
  br i1 %cmp, label %return, label %if.end, !dbg !496

if.end:                                           ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #9, !dbg !497
  %fp = bitcast i8* %call to %struct._IO_FILE**, !dbg !497
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !dbg !497, !tbaa !498
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null, !dbg !497
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !497

if.then3:                                         ; preds = %if.end
  call void @free(i8* %call) #9, !dbg !501
  br label %return, !dbg !503

if.end4:                                          ; preds = %if.end
  %1 = bitcast i32* %magic.i to i8*, !dbg !504
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !504
  call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %0}, i64 0, metadata !506) #3, !dbg !504
  call void @llvm.dbg.declare(metadata !{i32* %magic.i}, metadata !487) #3, !dbg !507
  call void @llvm.dbg.value(metadata !508, i64 0, metadata !509) #3, !dbg !510
  %filename.i = getelementptr inbounds i8* %call, i64 104, !dbg !511
  %2 = bitcast i8* %filename.i to i8***, !dbg !511
  %fileformat.i = getelementptr inbounds i8* %call, i64 112, !dbg !512
  %3 = bitcast i8* %fileformat.i to i32**, !dbg !512
  %fileflags.i = getelementptr inbounds i8* %call, i64 120, !dbg !513
  %4 = bitcast i8* %fileflags.i to i32**, !dbg !513
  %bpl.i = getelementptr inbounds i8* %call, i64 128, !dbg !514
  %5 = bitcast i8* %bpl.i to i32**, !dbg !514
  %rpl.i = getelementptr inbounds i8* %call, i64 136, !dbg !515
  %6 = bitcast i8* %rpl.i to i32**, !dbg !515
  %nfiles.i = getelementptr inbounds i8* %call, i64 12, !dbg !516
  %7 = bitcast i8* %nfiles.i to i16*, !dbg !516
  store i16 0, i16* %7, align 2, !dbg !516, !tbaa !517
  call void @llvm.memset.p0i8.i64(i8* %filename.i, i8 0, i64 40, i32 8, i1 false) #3, !dbg !512
  %call.i = call fastcc i32 @read_i32(%struct._IO_FILE* %call1, i32* %magic.i) #9, !dbg !518
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !518
  br i1 %tobool.i, label %FAILURE.i, label %if.end.i, !dbg !518

if.end.i:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata !{i32* %magic.i}, i64 0, metadata !519) #3, !dbg !520
  call void @llvm.dbg.value(metadata !{i32* %magic.i}, i64 0, metadata !487), !dbg !520
  %8 = load i32* %magic.i, align 4, !dbg !520, !tbaa !521
  switch i32 %8, label %FAILURE.i [
    i32 -202118735, label %if.end3.i
    i32 -1310067725, label %if.end3.i
  ], !dbg !520

if.end3.i:                                        ; preds = %if.end.i, %if.end.i
  %9 = load %struct._IO_FILE** %fp, align 8, !dbg !522, !tbaa !498
  %flags.i = getelementptr inbounds i8* %call, i64 8, !dbg !522
  %10 = bitcast i8* %flags.i to i32*, !dbg !522
  %call5.i = call fastcc i32 @read_i32(%struct._IO_FILE* %9, i32* %10) #9, !dbg !522
  %tobool6.i = icmp eq i32 %call5.i, 0, !dbg !522
  br i1 %tobool6.i, label %FAILURE.i, label %if.end8.i, !dbg !522

if.end8.i:                                        ; preds = %if.end3.i
  %11 = load i32* %10, align 4, !dbg !523, !tbaa !521
  %12 = and i32 %11, 3, !dbg !523
  %13 = icmp eq i32 %12, 0, !dbg !523
  br i1 %13, label %if.end15.i, label %FAILURE.i, !dbg !523

if.end15.i:                                       ; preds = %if.end8.i
  %and.i = lshr i32 %11, 1, !dbg !524
  %and.tr.i = trunc i32 %and.i to i8, !dbg !524
  %conv.i = and i8 %and.tr.i, 1, !dbg !524
  %14 = getelementptr inbounds i8* %call, i64 96, !dbg !524
  store i8 %conv.i, i8* %14, align 1, !dbg !524, !tbaa !499
  %.tr.i = trunc i32 %11 to i8, !dbg !525
  %conv23.i = and i8 %.tr.i, 1, !dbg !525
  %15 = getelementptr inbounds i8* %call, i64 97, !dbg !525
  store i8 %conv23.i, i8* %15, align 1, !dbg !525, !tbaa !499
  %16 = load %struct._IO_FILE** %fp, align 8, !dbg !526, !tbaa !498
  %call26.i = call fastcc i32 @read_i16(%struct._IO_FILE* %16, i16* %7) #9, !dbg !526
  %tobool27.i = icmp eq i32 %call26.i, 0, !dbg !526
  br i1 %tobool27.i, label %FAILURE.i, label %if.end29.i, !dbg !526

if.end29.i:                                       ; preds = %if.end15.i
  %17 = load %struct._IO_FILE** %fp, align 8, !dbg !527, !tbaa !498
  %nprimary.i = getelementptr inbounds i8* %call, i64 16, !dbg !527
  %18 = bitcast i8* %nprimary.i to i32*, !dbg !527
  %call31.i = call fastcc i32 @read_i32(%struct._IO_FILE* %17, i32* %18) #9, !dbg !527
  %tobool32.i = icmp eq i32 %call31.i, 0, !dbg !527
  br i1 %tobool32.i, label %FAILURE.i, label %if.end34.i, !dbg !527

if.end34.i:                                       ; preds = %if.end29.i
  %19 = load %struct._IO_FILE** %fp, align 8, !dbg !528, !tbaa !498
  %nsecondary.i = getelementptr inbounds i8* %call, i64 20, !dbg !528
  %20 = bitcast i8* %nsecondary.i to i32*, !dbg !528
  %call36.i = call fastcc i32 @read_i32(%struct._IO_FILE* %19, i32* %20) #9, !dbg !528
  %tobool37.i = icmp eq i32 %call36.i, 0, !dbg !528
  br i1 %tobool37.i, label %FAILURE.i, label %if.end39.i, !dbg !528

if.end39.i:                                       ; preds = %if.end34.i
  %21 = load %struct._IO_FILE** %fp, align 8, !dbg !529, !tbaa !498
  %flen.i = getelementptr inbounds i8* %call, i64 24, !dbg !529
  %22 = bitcast i8* %flen.i to i32*, !dbg !529
  %call41.i = call fastcc i32 @read_i32(%struct._IO_FILE* %21, i32* %22) #9, !dbg !529
  %tobool42.i = icmp eq i32 %call41.i, 0, !dbg !529
  br i1 %tobool42.i, label %FAILURE.i, label %if.end44.i, !dbg !529

if.end44.i:                                       ; preds = %if.end39.i
  %23 = load %struct._IO_FILE** %fp, align 8, !dbg !530, !tbaa !498
  %plen.i = getelementptr inbounds i8* %call, i64 28, !dbg !530
  %24 = bitcast i8* %plen.i to i32*, !dbg !530
  %call46.i = call fastcc i32 @read_i32(%struct._IO_FILE* %23, i32* %24) #9, !dbg !530
  %tobool47.i = icmp eq i32 %call46.i, 0, !dbg !530
  br i1 %tobool47.i, label %FAILURE.i, label %if.end49.i, !dbg !530

if.end49.i:                                       ; preds = %if.end44.i
  %25 = load %struct._IO_FILE** %fp, align 8, !dbg !531, !tbaa !498
  %slen.i = getelementptr inbounds i8* %call, i64 32, !dbg !531
  %26 = bitcast i8* %slen.i to i32*, !dbg !531
  %call51.i = call fastcc i32 @read_i32(%struct._IO_FILE* %25, i32* %26) #9, !dbg !531
  %tobool52.i = icmp eq i32 %call51.i, 0, !dbg !531
  br i1 %tobool52.i, label %FAILURE.i, label %if.end54.i, !dbg !531

if.end54.i:                                       ; preds = %if.end49.i
  %27 = load %struct._IO_FILE** %fp, align 8, !dbg !532, !tbaa !498
  %frecsize.i = getelementptr inbounds i8* %call, i64 36, !dbg !532
  %28 = bitcast i8* %frecsize.i to i32*, !dbg !532
  %call56.i = call fastcc i32 @read_i32(%struct._IO_FILE* %27, i32* %28) #9, !dbg !532
  %tobool57.i = icmp eq i32 %call56.i, 0, !dbg !532
  br i1 %tobool57.i, label %FAILURE.i, label %if.end59.i, !dbg !532

if.end59.i:                                       ; preds = %if.end54.i
  %29 = load %struct._IO_FILE** %fp, align 8, !dbg !533, !tbaa !498
  %precsize.i = getelementptr inbounds i8* %call, i64 40, !dbg !533
  %30 = bitcast i8* %precsize.i to i32*, !dbg !533
  %call61.i = call fastcc i32 @read_i32(%struct._IO_FILE* %29, i32* %30) #9, !dbg !533
  %tobool62.i = icmp eq i32 %call61.i, 0, !dbg !533
  br i1 %tobool62.i, label %FAILURE.i, label %if.end64.i, !dbg !533

if.end64.i:                                       ; preds = %if.end59.i
  %31 = load %struct._IO_FILE** %fp, align 8, !dbg !534, !tbaa !498
  %srecsize.i = getelementptr inbounds i8* %call, i64 44, !dbg !534
  %32 = bitcast i8* %srecsize.i to i32*, !dbg !534
  %call66.i = call fastcc i32 @read_i32(%struct._IO_FILE* %31, i32* %32) #9, !dbg !534
  %tobool67.i = icmp eq i32 %call66.i, 0, !dbg !534
  br i1 %tobool67.i, label %FAILURE.i, label %if.end69.i, !dbg !534

if.end69.i:                                       ; preds = %if.end64.i
  %33 = load %struct._IO_FILE** %fp, align 8, !dbg !535, !tbaa !498
  %34 = load i8* %14, align 1, !dbg !535, !tbaa !499
  %foffset.i = getelementptr inbounds i8* %call, i64 48, !dbg !535
  %35 = bitcast i8* %foffset.i to %struct.ssioffset_s*, !dbg !535
  %call72.i = call fastcc i32 @read_offset(%struct._IO_FILE* %33, i8 signext %34, %struct.ssioffset_s* %35) #9, !dbg !535
  %tobool73.i = icmp eq i32 %call72.i, 0, !dbg !535
  br i1 %tobool73.i, label %FAILURE.i, label %if.end75.i, !dbg !535

if.end75.i:                                       ; preds = %if.end69.i
  %36 = load %struct._IO_FILE** %fp, align 8, !dbg !536, !tbaa !498
  %37 = load i8* %14, align 1, !dbg !536, !tbaa !499
  %poffset.i = getelementptr inbounds i8* %call, i64 64, !dbg !536
  %38 = bitcast i8* %poffset.i to %struct.ssioffset_s*, !dbg !536
  %call78.i = call fastcc i32 @read_offset(%struct._IO_FILE* %36, i8 signext %37, %struct.ssioffset_s* %38) #9, !dbg !536
  %tobool79.i = icmp eq i32 %call78.i, 0, !dbg !536
  br i1 %tobool79.i, label %FAILURE.i, label %if.end81.i, !dbg !536

if.end81.i:                                       ; preds = %if.end75.i
  %39 = load %struct._IO_FILE** %fp, align 8, !dbg !537, !tbaa !498
  %40 = load i8* %14, align 1, !dbg !537, !tbaa !499
  %soffset.i = getelementptr inbounds i8* %call, i64 80, !dbg !537
  %41 = bitcast i8* %soffset.i to %struct.ssioffset_s*, !dbg !537
  %call84.i = call fastcc i32 @read_offset(%struct._IO_FILE* %39, i8 signext %40, %struct.ssioffset_s* %41) #9, !dbg !537
  %tobool85.i = icmp eq i32 %call84.i, 0, !dbg !537
  br i1 %tobool85.i, label %FAILURE.i, label %if.end87.i, !dbg !537

if.end87.i:                                       ; preds = %if.end81.i
  %42 = load i16* %7, align 2, !dbg !538, !tbaa !517
  %cmp90.i = icmp eq i16 %42, 0, !dbg !538
  br i1 %cmp90.i, label %FAILURE.i, label %if.end93.i, !dbg !538

if.end93.i:                                       ; preds = %if.end87.i
  %conv95.i = zext i16 %42 to i64, !dbg !539
  %mul.i = shl nuw nsw i64 %conv95.i, 3, !dbg !539
  %call96.i = call noalias i8* @malloc(i64 %mul.i) #9, !dbg !539
  %43 = bitcast i8* %call96.i to i8**, !dbg !539
  store i8** %43, i8*** %2, align 8, !dbg !539, !tbaa !498
  %cmp98.i = icmp eq i8* %call96.i, null, !dbg !539
  br i1 %cmp98.i, label %FAILURE.i, label %for.body.i.preheader, !dbg !539

for.body.i.preheader:                             ; preds = %if.end93.i
  store i8* null, i8** %43, align 8, !dbg !540, !tbaa !498
  %cmp105.i8 = icmp ugt i16 %42, 1, !dbg !540
  br i1 %cmp105.i8, label %for.body.for.body_crit_edge.i, label %for.end.i, !dbg !540

for.body.for.body_crit_edge.i:                    ; preds = %for.body.i.preheader, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
  %.pre.i = phi i8** [ %.pre.i.pre, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ %43, %for.body.i.preheader ]
  %indvars.iv.next.i9 = phi i64 [ %indvars.iv.next.i, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i8** %.pre.i, i64 %indvars.iv.next.i9, !dbg !540
  store i8* null, i8** %arrayidx.i, align 8, !dbg !540, !tbaa !498
  %indvars.iv.next.i = add i64 %indvars.iv.next.i9, 1, !dbg !540
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i16, !dbg !540
  %exitcond = icmp eq i16 %lftr.wideiv, %42, !dbg !540
  br i1 %exitcond, label %for.end.i, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, !dbg !540

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i
  %.pre.i.pre = load i8*** %2, align 8, !dbg !540, !tbaa !498
  br label %for.body.for.body_crit_edge.i, !dbg !540

for.end.i:                                        ; preds = %for.body.for.body_crit_edge.i, %for.body.i.preheader
  %mul110.i = shl nuw nsw i64 %conv95.i, 2, !dbg !542
  %call111.i = call noalias i8* @malloc(i64 %mul110.i) #9, !dbg !542
  %44 = bitcast i8* %call111.i to i32*, !dbg !542
  store i32* %44, i32** %3, align 8, !dbg !542, !tbaa !498
  %cmp113.i = icmp eq i8* %call111.i, null, !dbg !542
  br i1 %cmp113.i, label %FAILURE.i, label %if.end116.i, !dbg !542

if.end116.i:                                      ; preds = %for.end.i
  %call120.i = call noalias i8* @malloc(i64 %mul110.i) #9, !dbg !543
  %45 = bitcast i8* %call120.i to i32*, !dbg !543
  store i32* %45, i32** %4, align 8, !dbg !543, !tbaa !498
  %cmp122.i = icmp eq i8* %call120.i, null, !dbg !543
  br i1 %cmp122.i, label %FAILURE.i, label %if.end125.i, !dbg !543

if.end125.i:                                      ; preds = %if.end116.i
  %call129.i = call noalias i8* @malloc(i64 %mul110.i) #9, !dbg !544
  %46 = bitcast i8* %call129.i to i32*, !dbg !544
  store i32* %46, i32** %5, align 8, !dbg !544, !tbaa !498
  %cmp131.i = icmp eq i8* %call129.i, null, !dbg !544
  br i1 %cmp131.i, label %FAILURE.i, label %if.end134.i, !dbg !544

if.end134.i:                                      ; preds = %if.end125.i
  %call138.i = call noalias i8* @malloc(i64 %mul110.i) #9, !dbg !545
  %47 = bitcast i8* %call138.i to i32*, !dbg !545
  store i32* %47, i32** %6, align 8, !dbg !545, !tbaa !498
  %cmp140.i = icmp eq i8* %call138.i, null, !dbg !545
  br i1 %cmp140.i, label %FAILURE.i, label %for.body150.i, !dbg !545

for.cond144.i:                                    ; preds = %if.end206.i
  %48 = load i16* %7, align 2, !dbg !546, !tbaa !517
  %cmp148.i = icmp ult i16 %inc216.i, %48, !dbg !546
  br i1 %cmp148.i, label %for.body150.i, label %load_indexfile.exit, !dbg !546

for.body150.i:                                    ; preds = %if.end134.i, %for.cond144.i
  %i.1303.i = phi i16 [ %inc216.i, %for.cond144.i ], [ 0, %if.end134.i ]
  %conv145.i = zext i16 %i.1303.i to i32, !dbg !546
  %49 = load i32* %28, align 4, !dbg !548, !tbaa !521
  %call154.i = call fastcc i32 @indexfile_position(%struct.ssifile_s* %0, %struct.ssioffset_s* %35, i32 %49, i32 %conv145.i) #9, !dbg !548
  %cmp155.i = icmp eq i32 %call154.i, 0, !dbg !548
  br i1 %cmp155.i, label %if.end158.i, label %FAILURE.i, !dbg !548

if.end158.i:                                      ; preds = %for.body150.i
  %50 = load i32* %22, align 4, !dbg !550, !tbaa !521
  %conv160.i = zext i32 %50 to i64, !dbg !550
  %call162.i = call noalias i8* @malloc(i64 %conv160.i) #9, !dbg !550
  %idxprom163.i = zext i16 %i.1303.i to i64, !dbg !550
  %51 = load i8*** %2, align 8, !dbg !550, !tbaa !498
  %arrayidx165.i = getelementptr inbounds i8** %51, i64 %idxprom163.i, !dbg !550
  store i8* %call162.i, i8** %arrayidx165.i, align 8, !dbg !550, !tbaa !498
  %cmp166.i = icmp eq i8* %call162.i, null, !dbg !550
  br i1 %cmp166.i, label %FAILURE.i, label %if.end169.i, !dbg !550

if.end169.i:                                      ; preds = %if.end158.i
  %52 = load i8*** %2, align 8, !dbg !551, !tbaa !498
  %arrayidx172.i = getelementptr inbounds i8** %52, i64 %idxprom163.i, !dbg !551
  %53 = load i8** %arrayidx172.i, align 8, !dbg !551, !tbaa !498
  %54 = load %struct._IO_FILE** %fp, align 8, !dbg !551, !tbaa !498
  %call176.i = call i64 @fread(i8* %53, i64 1, i64 %conv160.i, %struct._IO_FILE* %54) #9, !dbg !551
  %55 = load i32* %22, align 4, !dbg !551, !tbaa !521
  %conv178.i = zext i32 %55 to i64, !dbg !551
  %cmp179.i = icmp eq i64 %call176.i, %conv178.i, !dbg !551
  br i1 %cmp179.i, label %if.end182.i, label %FAILURE.i, !dbg !551

if.end182.i:                                      ; preds = %if.end169.i
  %56 = load %struct._IO_FILE** %fp, align 8, !dbg !552, !tbaa !498
  %57 = load i32** %3, align 8, !dbg !552, !tbaa !498
  %arrayidx186.i = getelementptr inbounds i32* %57, i64 %idxprom163.i, !dbg !552
  %call187.i = call fastcc i32 @read_i32(%struct._IO_FILE* %56, i32* %arrayidx186.i) #9, !dbg !552
  %tobool188.i = icmp eq i32 %call187.i, 0, !dbg !552
  br i1 %tobool188.i, label %FAILURE.i, label %if.end190.i, !dbg !552

if.end190.i:                                      ; preds = %if.end182.i
  %58 = load %struct._IO_FILE** %fp, align 8, !dbg !553, !tbaa !498
  %59 = load i32** %4, align 8, !dbg !553, !tbaa !498
  %arrayidx194.i = getelementptr inbounds i32* %59, i64 %idxprom163.i, !dbg !553
  %call195.i = call fastcc i32 @read_i32(%struct._IO_FILE* %58, i32* %arrayidx194.i) #9, !dbg !553
  %tobool196.i = icmp eq i32 %call195.i, 0, !dbg !553
  br i1 %tobool196.i, label %FAILURE.i, label %if.end198.i, !dbg !553

if.end198.i:                                      ; preds = %if.end190.i
  %60 = load %struct._IO_FILE** %fp, align 8, !dbg !554, !tbaa !498
  %61 = load i32** %5, align 8, !dbg !554, !tbaa !498
  %arrayidx202.i = getelementptr inbounds i32* %61, i64 %idxprom163.i, !dbg !554
  %call203.i = call fastcc i32 @read_i32(%struct._IO_FILE* %60, i32* %arrayidx202.i) #9, !dbg !554
  %tobool204.i = icmp eq i32 %call203.i, 0, !dbg !554
  br i1 %tobool204.i, label %FAILURE.i, label %if.end206.i, !dbg !554

if.end206.i:                                      ; preds = %if.end198.i
  %62 = load %struct._IO_FILE** %fp, align 8, !dbg !555, !tbaa !498
  %63 = load i32** %6, align 8, !dbg !555, !tbaa !498
  %arrayidx210.i = getelementptr inbounds i32* %63, i64 %idxprom163.i, !dbg !555
  %call211.i = call fastcc i32 @read_i32(%struct._IO_FILE* %62, i32* %arrayidx210.i) #9, !dbg !555
  %tobool212.i = icmp eq i32 %call211.i, 0, !dbg !555
  %inc216.i = add i16 %i.1303.i, 1, !dbg !546
  call void @llvm.dbg.value(metadata !{i16 %inc216.i}, i64 0, metadata !556) #3, !dbg !546
  br i1 %tobool212.i, label %FAILURE.i, label %for.cond144.i, !dbg !555

FAILURE.i:                                        ; preds = %if.end206.i, %if.end198.i, %if.end190.i, %if.end182.i, %if.end169.i, %if.end158.i, %for.body150.i, %if.end134.i, %if.end125.i, %if.end116.i, %for.end.i, %if.end93.i, %if.end87.i, %if.end81.i, %if.end75.i, %if.end69.i, %if.end64.i, %if.end59.i, %if.end54.i, %if.end49.i, %if.end44.i, %if.end39.i, %if.end34.i, %if.end29.i, %if.end15.i, %if.end8.i, %if.end3.i, %if.end.i, %if.end4
  %status.0.i = phi i32 [ 6, %if.end87.i ], [ 6, %if.end81.i ], [ 6, %if.end75.i ], [ 6, %if.end69.i ], [ 6, %if.end64.i ], [ 6, %if.end59.i ], [ 6, %if.end54.i ], [ 6, %if.end49.i ], [ 6, %if.end44.i ], [ 6, %if.end39.i ], [ 6, %if.end34.i ], [ 6, %if.end29.i ], [ 6, %if.end15.i ], [ 6, %if.end3.i ], [ 5, %if.end4 ], [ 5, %if.end.i ], [ 7, %if.end8.i ], [ 3, %if.end93.i ], [ 3, %for.end.i ], [ 3, %if.end116.i ], [ 3, %if.end125.i ], [ 3, %if.end134.i ], [ 6, %if.end206.i ], [ 6, %if.end198.i ], [ 6, %if.end190.i ], [ 6, %if.end182.i ], [ 6, %if.end169.i ], [ 3, %if.end158.i ], [ 6, %for.body150.i ]
  call void @SSIClose(%struct.ssifile_s* %0) #9, !dbg !557
  br label %load_indexfile.exit, !dbg !558

load_indexfile.exit:                              ; preds = %for.cond144.i, %FAILURE.i
  %retval.0.i = phi i32 [ %status.0.i, %FAILURE.i ], [ 0, %for.cond144.i ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #3, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !113), !dbg !505
  store %struct.ssifile_s* %0, %struct.ssifile_s** %ret_sfp, align 8, !dbg !560, !tbaa !498
  br label %return, !dbg !561

return:                                           ; preds = %entry, %load_indexfile.exit, %if.then3
  %retval.0 = phi i32 [ 4, %if.then3 ], [ %retval.0.i, %load_indexfile.exit ], [ 3, %entry ]
  ret i32 %retval.0, !dbg !562
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetOffsetByName(%struct.ssifile_s* nocapture %sfp, i8* nocapture %key, i32* nocapture %ret_fh, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  %fnum = alloca i16, align 2
  call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !120), !dbg !563
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !121), !dbg !563
  call void @llvm.dbg.value(metadata !{i32* %ret_fh}, i64 0, metadata !122), !dbg !563
  call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %ret_offset}, i64 0, metadata !123), !dbg !564
  call void @llvm.dbg.declare(metadata !{i16* %fnum}, metadata !125), !dbg !565
  %plen = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 6, !dbg !566
  %0 = load i32* %plen, align 4, !dbg !566, !tbaa !521
  %poffset = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 12, !dbg !566
  %precsize = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 9, !dbg !566
  %1 = load i32* %precsize, align 4, !dbg !566, !tbaa !521
  %nprimary = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 3, !dbg !566
  %2 = load i32* %nprimary, align 4, !dbg !566, !tbaa !521
  %call = call fastcc i32 @binary_search(%struct.ssifile_s* %sfp, i8* %key, i32 %0, %struct.ssioffset_s* %poffset, i32 %1, i32 %2) #10, !dbg !566
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !124), !dbg !566
  switch i32 %call, label %return [
    i32 0, label %if.then
    i32 2, label %if.then10
  ], !dbg !567

if.then:                                          ; preds = %entry
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !568
  %3 = load %struct._IO_FILE** %fp, align 8, !dbg !568, !tbaa !498
  %call1 = call fastcc i32 @read_i16(%struct._IO_FILE* %3, i16* %fnum) #10, !dbg !568
  %tobool = icmp eq i32 %call1, 0, !dbg !568
  br i1 %tobool, label %return, label %if.end, !dbg !568

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata !{i16* %fnum}, i64 0, metadata !125), !dbg !570
  %4 = load i16* %fnum, align 2, !dbg !570, !tbaa !517
  %conv = zext i16 %4 to i32, !dbg !570
  store i32 %conv, i32* %ret_fh, align 4, !dbg !570, !tbaa !521
  %5 = load %struct._IO_FILE** %fp, align 8, !dbg !571, !tbaa !498
  %smode = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 15, !dbg !571
  %6 = load i8* %smode, align 1, !dbg !571, !tbaa !499
  %call4 = call fastcc i32 @read_offset(%struct._IO_FILE* %5, i8 signext %6, %struct.ssioffset_s* %ret_offset) #10, !dbg !571
  %tobool5 = icmp eq i32 %call4, 0, !dbg !571
  %. = zext i1 %tobool5 to i32, !dbg !571
  br label %return, !dbg !571

if.then10:                                        ; preds = %entry
  %nsecondary = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 4, !dbg !572
  %7 = load i32* %nsecondary, align 4, !dbg !572, !tbaa !521
  %cmp11 = icmp eq i32 %7, 0, !dbg !572
  br i1 %cmp11, label %return, label %if.then13, !dbg !572

if.then13:                                        ; preds = %if.then10
  %slen = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 7, !dbg !573
  %8 = load i32* %slen, align 4, !dbg !573, !tbaa !521
  %soffset = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 13, !dbg !573
  %srecsize = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 10, !dbg !573
  %9 = load i32* %srecsize, align 4, !dbg !573, !tbaa !521
  %call15 = call fastcc i32 @binary_search(%struct.ssifile_s* %sfp, i8* %key, i32 %8, %struct.ssioffset_s* %soffset, i32 %9, i32 %7) #10, !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !124), !dbg !573
  %cmp16 = icmp eq i32 %call15, 0, !dbg !574
  br i1 %cmp16, label %if.end19, label %return, !dbg !574

if.end19:                                         ; preds = %if.then13
  %10 = load i32* %plen, align 4, !dbg !575, !tbaa !521
  %conv21 = zext i32 %10 to i64, !dbg !575
  %call22 = call noalias i8* @malloc(i64 %conv21) #9, !dbg !575
  call void @llvm.dbg.value(metadata !{i8* %call22}, i64 0, metadata !126), !dbg !575
  %cmp23 = icmp eq i8* %call22, null, !dbg !575
  br i1 %cmp23, label %return, label %if.end26, !dbg !575

if.end26:                                         ; preds = %if.end19
  %fp29 = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !576
  %11 = load %struct._IO_FILE** %fp29, align 8, !dbg !576, !tbaa !498
  %call30 = call i64 @fread(i8* %call22, i64 1, i64 %conv21, %struct._IO_FILE* %11) #9, !dbg !576
  %12 = load i32* %plen, align 4, !dbg !576, !tbaa !521
  %conv32 = zext i32 %12 to i64, !dbg !576
  %cmp33 = icmp eq i64 %call30, %conv32, !dbg !576
  br i1 %cmp33, label %if.end36, label %return, !dbg !576

if.end36:                                         ; preds = %if.end26
  %call37 = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %sfp, i8* %call22, i32* %ret_fh, %struct.ssioffset_s* %ret_offset) #10, !dbg !577
  call void @llvm.dbg.value(metadata !{i32 %call37}, i64 0, metadata !124), !dbg !577
  call void @free(i8* %call22) #9, !dbg !578
  br label %return, !dbg !579

return:                                           ; preds = %entry, %if.end36, %if.then10, %if.end26, %if.end19, %if.then13, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %., %if.end ], [ %call15, %if.then13 ], [ 3, %if.end19 ], [ 1, %if.end26 ], [ %call37, %if.end36 ], [ 2, %if.then10 ], [ %call, %entry ]
  ret i32 %retval.0, !dbg !580
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @binary_search(%struct.ssifile_s* nocapture %sfp, i8* nocapture %key, i32 %klen, %struct.ssioffset_s* nocapture %base, i32 %recsize, i32 %maxidx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !379), !dbg !581
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !380), !dbg !581
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !381), !dbg !581
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %base}, i64 0, metadata !382), !dbg !581
  tail call void @llvm.dbg.value(metadata !{i32 %recsize}, i64 0, metadata !383), !dbg !582
  tail call void @llvm.dbg.value(metadata !{i32 %maxidx}, i64 0, metadata !384), !dbg !582
  %cmp1 = icmp eq i32 %maxidx, 0, !dbg !583
  br i1 %cmp1, label %return, label %if.end, !dbg !583

if.end:                                           ; preds = %entry
  %conv = sext i32 %klen to i64, !dbg !584
  %call = tail call noalias i8* @malloc(i64 %conv) #9, !dbg !584
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !385), !dbg !584
  %cmp2 = icmp eq i8* %call, null, !dbg !584
  br i1 %cmp2, label %return, label %if.end5, !dbg !584

if.end5:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !386), !dbg !585
  %sub = add i32 %maxidx, -1, !dbg !586
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !387), !dbg !586
  %div7282 = lshr i32 %sub, 1, !dbg !587
  tail call void @llvm.dbg.value(metadata !{i32 %div76}, i64 0, metadata !388), !dbg !587
  %call67383 = tail call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %recsize, i32 %div7282) #10, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i32 %call6.lcssa}, i64 0, metadata !390), !dbg !589
  %cmp77484 = icmp eq i32 %call67383, 0, !dbg !589
  br i1 %cmp77484, label %if.end10.lr.ph.lr.ph, label %if.then9, !dbg !589

if.end10.lr.ph.lr.ph:                             ; preds = %if.end5
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !590
  br label %if.end10.lr.ph, !dbg !589

while.body.outer:                                 ; preds = %if.then33
  %add71 = add i32 %left.075, %sub38, !dbg !587
  %div72 = lshr i32 %add71, 1, !dbg !587
  tail call void @llvm.dbg.value(metadata !{i32 %div76}, i64 0, metadata !388), !dbg !587
  %call673 = tail call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %recsize, i32 %div72) #10, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i32 %call6.lcssa}, i64 0, metadata !390), !dbg !589
  %cmp774 = icmp eq i32 %call673, 0, !dbg !589
  br i1 %cmp774, label %if.end10.lr.ph, label %if.then9, !dbg !589

if.end10.lr.ph:                                   ; preds = %if.end10.lr.ph.lr.ph, %while.body.outer
  %div7287 = phi i32 [ %div7282, %if.end10.lr.ph.lr.ph ], [ %div72, %while.body.outer ]
  %left.0.ph86 = phi i32 [ 0, %if.end10.lr.ph.lr.ph ], [ %left.075, %while.body.outer ]
  %right.0.ph85 = phi i32 [ %sub, %if.end10.lr.ph.lr.ph ], [ %sub38, %while.body.outer ]
  br label %if.end10, !dbg !589

while.body:                                       ; preds = %if.else25
  %add = add i32 %add29, %right.0.ph85, !dbg !587
  %div = lshr i32 %add, 1, !dbg !587
  tail call void @llvm.dbg.value(metadata !{i32 %div76}, i64 0, metadata !388), !dbg !587
  %call6 = tail call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %base, i32 %recsize, i32 %div) #10, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i32 %call6.lcssa}, i64 0, metadata !390), !dbg !589
  %cmp7 = icmp eq i32 %call6, 0, !dbg !589
  br i1 %cmp7, label %if.end10, label %if.then9, !dbg !589

if.then9:                                         ; preds = %if.end5, %while.body.outer, %while.body
  %call6.lcssa = phi i32 [ %call6, %while.body ], [ %call67383, %if.end5 ], [ %call673, %while.body.outer ]
  tail call void @free(i8* %call) #9, !dbg !591
  br label %return, !dbg !591

if.end10:                                         ; preds = %if.end10.lr.ph, %while.body
  %div76 = phi i32 [ %div7287, %if.end10.lr.ph ], [ %div, %while.body ]
  %left.075 = phi i32 [ %left.0.ph86, %if.end10.lr.ph ], [ %add29, %while.body ]
  %0 = load %struct._IO_FILE** %fp, align 8, !dbg !590, !tbaa !498
  %call12 = tail call i64 @fread(i8* %call, i64 1, i64 %conv, %struct._IO_FILE* %0) #9, !dbg !590
  %cmp14 = icmp eq i64 %call12, %conv, !dbg !590
  br i1 %cmp14, label %if.end17, label %if.then16, !dbg !590

if.then16:                                        ; preds = %if.end10
  tail call void @free(i8* %call) #9, !dbg !593
  br label %return, !dbg !593

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i32 @strcmp(i8* %call, i8* %key) #11, !dbg !595
  tail call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !389), !dbg !595
  %cmp19 = icmp eq i32 %call18, 0, !dbg !596
  br i1 %cmp19, label %while.end, label %if.else, !dbg !596

if.else:                                          ; preds = %if.end17
  %cmp22 = icmp ult i32 %left.075, %right.0.ph85, !dbg !597
  br i1 %cmp22, label %if.else25, label %if.then24, !dbg !597

if.then24:                                        ; preds = %if.else
  tail call void @free(i8* %call) #9, !dbg !598
  br label %return, !dbg !598

if.else25:                                        ; preds = %if.else
  %cmp26 = icmp slt i32 %call18, 0, !dbg !600
  %add29 = add i32 %div76, 1, !dbg !600
  tail call void @llvm.dbg.value(metadata !{i32 %add29}, i64 0, metadata !386), !dbg !600
  br i1 %cmp26, label %while.body, label %if.then33, !dbg !600

if.then33:                                        ; preds = %if.else25
  %cmp34 = icmp eq i32 %div76, 0, !dbg !601
  %sub38 = add i32 %div76, -1, !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32 %sub38}, i64 0, metadata !387), !dbg !603
  br i1 %cmp34, label %if.then36, label %while.body.outer, !dbg !601

if.then36:                                        ; preds = %if.then33
  tail call void @free(i8* %call) #9, !dbg !604
  br label %return, !dbg !604

while.end:                                        ; preds = %if.end17
  tail call void @free(i8* %call) #9, !dbg !606
  br label %return, !dbg !607

return:                                           ; preds = %if.end, %entry, %while.end, %if.then36, %if.then24, %if.then16, %if.then9
  %retval.0 = phi i32 [ %call6.lcssa, %if.then9 ], [ 1, %if.then16 ], [ 0, %while.end ], [ 2, %if.then24 ], [ 2, %if.then36 ], [ 2, %entry ], [ 3, %if.end ]
  ret i32 %retval.0, !dbg !608
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_i16(%struct._IO_FILE* nocapture %fp, i16* nocapture %ret_result) #0 {
entry:
  %result = alloca i16, align 2
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !459), !dbg !609
  call void @llvm.dbg.value(metadata !{i16* %ret_result}, i64 0, metadata !460), !dbg !609
  call void @llvm.dbg.declare(metadata !{i16* %result}, metadata !461), !dbg !610
  %0 = bitcast i16* %result to i8*, !dbg !611
  %call = call i64 @fread(i8* %0, i64 2, i64 1, %struct._IO_FILE* %fp) #9, !dbg !611
  %cmp = icmp eq i64 %call, 1, !dbg !611
  br i1 %cmp, label %if.end, label %return, !dbg !611

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !461), !dbg !612
  %1 = load i16* %result, align 2, !dbg !612, !tbaa !517
  %call1 = call zeroext i16 @sre_ntoh16(i16 zeroext %1) #9, !dbg !612
  store i16 %call1, i16* %ret_result, align 2, !dbg !612, !tbaa !517
  br label %return, !dbg !613

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !613
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_offset(%struct._IO_FILE* nocapture %fp, i8 signext %mode, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  %result.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !418), !dbg !614
  call void @llvm.dbg.value(metadata !{i8 %mode}, i64 0, metadata !419), !dbg !614
  call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %ret_offset}, i64 0, metadata !420), !dbg !614
  switch i8 %mode, label %return [
    i8 0, label %if.then
    i8 1, label %if.then7
  ], !dbg !615

if.then:                                          ; preds = %entry
  %mode2 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0, !dbg !616
  store i8 0, i8* %mode2, align 1, !dbg !616, !tbaa !499
  %off = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 1, !dbg !618
  %i32 = bitcast %union.anon* %off to i32*, !dbg !618
  %call = call fastcc i32 @read_i32(%struct._IO_FILE* %fp, i32* %i32) #10, !dbg !618
  %tobool = icmp eq i32 %call, 0, !dbg !618
  br i1 %tobool, label %return, label %if.end16, !dbg !618

if.then7:                                         ; preds = %entry
  %mode8 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0, !dbg !619
  store i8 1, i8* %mode8, align 1, !dbg !619, !tbaa !499
  %0 = bitcast i64* %result.i to i8*, !dbg !621
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !621
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !623) #3, !dbg !621
  call void @llvm.dbg.value(metadata !{i64* %i64}, i64 0, metadata !624) #3, !dbg !621
  call void @llvm.dbg.declare(metadata !{i64* %result.i}, metadata !428) #3, !dbg !625
  %call.i = call i64 @fread(i8* %0, i64 8, i64 1, %struct._IO_FILE* %fp) #9, !dbg !626
  %cmp.i = icmp eq i64 %call.i, 1, !dbg !626
  br i1 %cmp.i, label %read_i64.exit, label %return, !dbg !626

read_i64.exit:                                    ; preds = %if.then7
  %i64 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 1, i32 0, !dbg !622
  call void @llvm.dbg.value(metadata !{i64* %result.i}, i64 0, metadata !627) #3, !dbg !628
  call void @llvm.dbg.value(metadata !{i64* %result.i}, i64 0, metadata !428), !dbg !628
  %1 = load i64* %result.i, align 8, !dbg !628, !tbaa !629
  %call1.i = call i64 @sre_ntoh64(i64 %1) #9, !dbg !628
  store i64 %call1.i, i64* %i64, align 8, !dbg !628, !tbaa !629
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !630
  br label %if.end16, !dbg !622

if.end16:                                         ; preds = %read_i64.exit, %if.then
  br label %return, !dbg !631

return:                                           ; preds = %if.then7, %entry, %if.then, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then ], [ 0, %entry ], [ 0, %if.then7 ]
  ret i32 %retval.0, !dbg !631
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetOffsetByNumber(%struct.ssifile_s* nocapture %sfp, i32 %n, i32* nocapture %ret_fh, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  %fnum = alloca i16, align 2
  call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !133), !dbg !632
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !134), !dbg !632
  call void @llvm.dbg.value(metadata !{i32* %ret_fh}, i64 0, metadata !135), !dbg !632
  call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %ret_offset}, i64 0, metadata !136), !dbg !632
  call void @llvm.dbg.declare(metadata !{i16* %fnum}, metadata !137), !dbg !633
  %nprimary = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 3, !dbg !634
  %0 = load i32* %nprimary, align 4, !dbg !634, !tbaa !521
  %cmp = icmp ugt i32 %0, %n, !dbg !634
  br i1 %cmp, label %if.end, label %return, !dbg !634

if.end:                                           ; preds = %entry
  %poffset = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 12, !dbg !635
  %precsize = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 9, !dbg !635
  %1 = load i32* %precsize, align 4, !dbg !635, !tbaa !521
  %call = call fastcc i32 @indexfile_position(%struct.ssifile_s* %sfp, %struct.ssioffset_s* %poffset, i32 %1, i32 %n) #10, !dbg !635
  %cmp1 = icmp eq i32 %call, 0, !dbg !635
  br i1 %cmp1, label %if.end3, label %return, !dbg !635

if.end3:                                          ; preds = %if.end
  %plen = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 6, !dbg !636
  %2 = load i32* %plen, align 4, !dbg !636, !tbaa !521
  %conv = zext i32 %2 to i64, !dbg !636
  %call4 = call noalias i8* @malloc(i64 %conv) #9, !dbg !636
  call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !138), !dbg !636
  %cmp5 = icmp eq i8* %call4, null, !dbg !636
  br i1 %cmp5, label %return, label %if.end8, !dbg !636

if.end8:                                          ; preds = %if.end3
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !637
  %3 = load %struct._IO_FILE** %fp, align 8, !dbg !637, !tbaa !498
  %call11 = call i64 @fread(i8* %call4, i64 1, i64 %conv, %struct._IO_FILE* %3) #9, !dbg !637
  %4 = load i32* %plen, align 4, !dbg !637, !tbaa !521
  %conv13 = zext i32 %4 to i64, !dbg !637
  %cmp14 = icmp eq i64 %call11, %conv13, !dbg !637
  br i1 %cmp14, label %if.end17, label %return, !dbg !637

if.end17:                                         ; preds = %if.end8
  %5 = load %struct._IO_FILE** %fp, align 8, !dbg !638, !tbaa !498
  %call19 = call fastcc i32 @read_i16(%struct._IO_FILE* %5, i16* %fnum) #10, !dbg !638
  %tobool = icmp eq i32 %call19, 0, !dbg !638
  br i1 %tobool, label %return, label %if.end21, !dbg !638

if.end21:                                         ; preds = %if.end17
  %6 = load %struct._IO_FILE** %fp, align 8, !dbg !639, !tbaa !498
  %smode = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 15, !dbg !639
  %7 = load i8* %smode, align 1, !dbg !639, !tbaa !499
  %call23 = call fastcc i32 @read_offset(%struct._IO_FILE* %6, i8 signext %7, %struct.ssioffset_s* %ret_offset) #10, !dbg !639
  %tobool24 = icmp eq i32 %call23, 0, !dbg !639
  br i1 %tobool24, label %return, label %if.end26, !dbg !639

if.end26:                                         ; preds = %if.end21
  call void @llvm.dbg.value(metadata !{i16* %fnum}, i64 0, metadata !137), !dbg !640
  %8 = load i16* %fnum, align 2, !dbg !640, !tbaa !517
  %conv27 = zext i16 %8 to i32, !dbg !640
  store i32 %conv27, i32* %ret_fh, align 4, !dbg !640, !tbaa !521
  call void @free(i8* %call4) #9, !dbg !641
  br label %return, !dbg !642

return:                                           ; preds = %if.end21, %if.end17, %if.end8, %if.end3, %if.end, %entry, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 2, %entry ], [ 8, %if.end ], [ 3, %if.end3 ], [ 1, %if.end8 ], [ 1, %if.end17 ], [ 1, %if.end21 ]
  ret i32 %retval.0, !dbg !642
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @indexfile_position(%struct.ssifile_s* nocapture %sfp, %struct.ssioffset_s* nocapture %base, i32 %len, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !369), !dbg !643
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %base}, i64 0, metadata !370), !dbg !643
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !371), !dbg !643
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !372), !dbg !643
  tail call void @llvm.dbg.declare(metadata !644, metadata !373), !dbg !645
  %mode = getelementptr inbounds %struct.ssioffset_s* %base, i64 0, i32 0, !dbg !646
  %0 = load i8* %mode, align 1, !dbg !646, !tbaa !499
  switch i8 %0, label %return [
    i8 0, label %if.then.i
    i8 1, label %SSISetFilePosition.exit
  ], !dbg !646

if.then.i:                                        ; preds = %entry
  %off = getelementptr inbounds %struct.ssioffset_s* %base, i64 0, i32 1, !dbg !647
  %i32 = bitcast %union.anon* %off to i32*, !dbg !647
  %1 = load i32* %i32, align 4, !dbg !647, !tbaa !521
  %mul = mul i32 %n, %len, !dbg !647
  %add = add i32 %1, %mul, !dbg !647
  %fp30 = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !649
  %2 = load %struct._IO_FILE** %fp30, align 8, !dbg !649, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %2}, i64 0, metadata !650) #3, !dbg !651
  tail call void @llvm.dbg.value(metadata !644, i64 0, metadata !652) #3, !dbg !651
  %conv2.i = zext i32 %add to i64, !dbg !653
  %call.i = tail call i32 @fseek(%struct._IO_FILE* %2, i64 %conv2.i, i32 0) #9, !dbg !653
  %cmp3.i = icmp eq i32 %call.i, 0, !dbg !653
  %..i = select i1 %cmp3.i, i32 0, i32 8, !dbg !655
  br label %SSISetFilePosition.exit, !dbg !655

SSISetFilePosition.exit:                          ; preds = %entry, %if.then.i
  %retval.0.i = phi i32 [ %..i, %if.then.i ], [ 7, %entry ]
  tail call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !374), !dbg !649
  br label %return, !dbg !656

return:                                           ; preds = %SSISetFilePosition.exit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.i, %SSISetFilePosition.exit ]
  ret i32 %retval.0, !dbg !657
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetSubseqOffset(%struct.ssifile_s* nocapture %sfp, i8* nocapture %key, i32 %requested_start, i32* nocapture %ret_fh, %struct.ssioffset_s* nocapture %record_offset, %struct.ssioffset_s* nocapture %data_offset, i32* nocapture %ret_actual_start) #0 {
entry:
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !143), !dbg !658
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !144), !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %requested_start}, i64 0, metadata !145), !dbg !658
  call void @llvm.dbg.value(metadata !{i32* %ret_fh}, i64 0, metadata !146), !dbg !659
  call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %record_offset}, i64 0, metadata !147), !dbg !659
  call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %data_offset}, i64 0, metadata !148), !dbg !660
  call void @llvm.dbg.value(metadata !{i32* %ret_actual_start}, i64 0, metadata !149), !dbg !660
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !151), !dbg !661
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %sfp, i8* %key, i32* %ret_fh, %struct.ssioffset_s* %record_offset) #10, !dbg !662
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !150), !dbg !662
  %cmp = icmp eq i32 %call, 0, !dbg !663
  br i1 %cmp, label %if.end, label %return, !dbg !663

if.end:                                           ; preds = %entry
  %0 = load i32* %ret_fh, align 4, !dbg !664, !tbaa !521
  %idxprom = sext i32 %0 to i64, !dbg !664
  %fileflags = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 18, !dbg !664
  %1 = load i32** %fileflags, align 8, !dbg !664, !tbaa !498
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !664
  %2 = load i32* %arrayidx, align 4, !dbg !664, !tbaa !521
  %and = and i32 %2, 1, !dbg !664
  %tobool = icmp eq i32 %and, 0, !dbg !664
  br i1 %tobool, label %return, label %if.end2, !dbg !664

if.end2:                                          ; preds = %if.end
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !665
  %3 = load %struct._IO_FILE** %fp, align 8, !dbg !665, !tbaa !498
  %smode = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 15, !dbg !665
  %4 = load i8* %smode, align 1, !dbg !665, !tbaa !499
  %call3 = call fastcc i32 @read_offset(%struct._IO_FILE* %3, i8 signext %4, %struct.ssioffset_s* %data_offset) #10, !dbg !665
  %tobool4 = icmp eq i32 %call3, 0, !dbg !665
  br i1 %tobool4, label %return, label %if.end6, !dbg !665

if.end6:                                          ; preds = %if.end2
  %5 = load %struct._IO_FILE** %fp, align 8, !dbg !666, !tbaa !498
  %call8 = call fastcc i32 @read_i32(%struct._IO_FILE* %5, i32* %len) #10, !dbg !666
  %tobool9 = icmp eq i32 %call8, 0, !dbg !666
  br i1 %tobool9, label %return, label %if.end11, !dbg !666

if.end11:                                         ; preds = %if.end6
  %6 = load i32* %ret_fh, align 4, !dbg !667, !tbaa !521
  %idxprom12 = sext i32 %6 to i64, !dbg !667
  %rpl = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 20, !dbg !667
  %7 = load i32** %rpl, align 8, !dbg !667, !tbaa !498
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %idxprom12, !dbg !667
  %8 = load i32* %arrayidx13, align 4, !dbg !667, !tbaa !521
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !152), !dbg !667
  %bpl = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 19, !dbg !668
  %9 = load i32** %bpl, align 8, !dbg !668, !tbaa !498
  %arrayidx15 = getelementptr inbounds i32* %9, i64 %idxprom12, !dbg !668
  %10 = load i32* %arrayidx15, align 4, !dbg !668, !tbaa !521
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !153), !dbg !668
  call void @llvm.dbg.value(metadata !{i32 %requested_start}, i64 0, metadata !154), !dbg !669
  %sub = add nsw i32 %requested_start, -1, !dbg !670
  %div = sdiv i32 %sub, %8, !dbg !670
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !155), !dbg !670
  %cmp16 = icmp eq i32 %8, 0, !dbg !671
  %cmp17 = icmp eq i32 %10, 0, !dbg !671
  %or.cond = or i1 %cmp16, %cmp17, !dbg !671
  br i1 %or.cond, label %return, label %if.end19, !dbg !671

if.end19:                                         ; preds = %if.end11
  %cmp20 = icmp slt i32 %requested_start, 0, !dbg !672
  br i1 %cmp20, label %return, label %lor.lhs.false21, !dbg !672

lor.lhs.false21:                                  ; preds = %if.end19
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !151), !dbg !672
  %11 = load i32* %len, align 4, !dbg !672, !tbaa !521
  %cmp22 = icmp ult i32 %11, %requested_start, !dbg !672
  br i1 %cmp22, label %return, label %if.end24, !dbg !672

if.end24:                                         ; preds = %lor.lhs.false21
  %add = add nsw i32 %8, 1, !dbg !673
  %cmp25 = icmp eq i32 %10, %add, !dbg !673
  %12 = load i8* %smode, align 1, !dbg !674, !tbaa !499
  %cmp28 = icmp eq i8 %12, 0, !dbg !674
  br i1 %cmp25, label %if.then26, label %if.else54, !dbg !673

if.then26:                                        ; preds = %if.end24
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !674

if.then30:                                        ; preds = %if.then26
  %mode = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0, !dbg !676
  store i8 0, i8* %mode, align 1, !dbg !676, !tbaa !499
  %off = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1, !dbg !678
  %i32 = bitcast %union.anon* %off to i32*, !dbg !678
  %13 = load i32* %i32, align 4, !dbg !678, !tbaa !521
  %mul = mul nsw i32 %div, %10, !dbg !678
  %add31 = add i32 %13, %mul, !dbg !678
  %rem = srem i32 %sub, %8, !dbg !678
  %add33 = add i32 %add31, %rem, !dbg !678
  store i32 %add33, i32* %i32, align 4, !dbg !678, !tbaa !521
  br label %if.end85, !dbg !679

if.else:                                          ; preds = %if.then26
  %cmp38 = icmp eq i8 %12, 1, !dbg !680
  br i1 %cmp38, label %if.then40, label %if.end85, !dbg !680

if.then40:                                        ; preds = %if.else
  %mode41 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0, !dbg !681
  store i8 1, i8* %mode41, align 1, !dbg !681, !tbaa !499
  %i64 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1, i32 0, !dbg !683
  %14 = load i64* %i64, align 8, !dbg !683, !tbaa !629
  %mul43 = mul nsw i32 %div, %10, !dbg !683
  %conv44 = sext i32 %mul43 to i64, !dbg !683
  %add45 = add i64 %14, %conv44, !dbg !683
  %rem47 = srem i32 %sub, %8, !dbg !683
  %conv48 = sext i32 %rem47 to i64, !dbg !683
  %add49 = add i64 %add45, %conv48, !dbg !683
  store i64 %add49, i64* %i64, align 8, !dbg !683, !tbaa !629
  br label %if.end85, !dbg !684

if.else54:                                        ; preds = %if.end24
  br i1 %cmp28, label %if.then59, label %if.else67, !dbg !685

if.then59:                                        ; preds = %if.else54
  %mode60 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0, !dbg !687
  store i8 0, i8* %mode60, align 1, !dbg !687, !tbaa !499
  %off61 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1, !dbg !689
  %i3262 = bitcast %union.anon* %off61 to i32*, !dbg !689
  %15 = load i32* %i3262, align 4, !dbg !689, !tbaa !521
  %mul63 = mul nsw i32 %div, %10, !dbg !689
  %add64 = add i32 %15, %mul63, !dbg !689
  store i32 %add64, i32* %i3262, align 4, !dbg !689, !tbaa !521
  br label %if.end82, !dbg !690

if.else67:                                        ; preds = %if.else54
  %cmp70 = icmp eq i8 %12, 1, !dbg !691
  br i1 %cmp70, label %if.then72, label %if.end82, !dbg !691

if.then72:                                        ; preds = %if.else67
  %mode73 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 0, !dbg !692
  store i8 1, i8* %mode73, align 1, !dbg !692, !tbaa !499
  %i6475 = getelementptr inbounds %struct.ssioffset_s* %data_offset, i64 0, i32 1, i32 0, !dbg !694
  %16 = load i64* %i6475, align 8, !dbg !694, !tbaa !629
  %mul76 = mul nsw i32 %div, %10, !dbg !694
  %conv77 = sext i32 %mul76 to i64, !dbg !694
  %add78 = add i64 %16, %conv77, !dbg !694
  store i64 %add78, i64* %i6475, align 8, !dbg !694, !tbaa !629
  br label %if.end82, !dbg !695

if.end82:                                         ; preds = %if.else67, %if.then72, %if.then59
  %mul83 = mul nsw i32 %div, %8, !dbg !696
  %add84 = add nsw i32 %mul83, 1, !dbg !696
  br label %if.end85

if.end85:                                         ; preds = %if.then30, %if.then40, %if.else, %if.end82
  %storemerge = phi i32 [ %add84, %if.end82 ], [ %requested_start, %if.else ], [ %requested_start, %if.then40 ], [ %requested_start, %if.then30 ]
  store i32 %storemerge, i32* %ret_actual_start, align 4, !dbg !697, !tbaa !521
  br label %return, !dbg !698

return:                                           ; preds = %if.end19, %lor.lhs.false21, %if.end11, %if.end6, %if.end2, %if.end, %entry, %if.end85
  %retval.0 = phi i32 [ 0, %if.end85 ], [ %call, %entry ], [ 10, %if.end ], [ 1, %if.end2 ], [ 1, %if.end6 ], [ 10, %if.end11 ], [ 11, %lor.lhs.false21 ], [ 11, %if.end19 ]
  ret i32 %retval.0, !dbg !699
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_i32(%struct._IO_FILE* nocapture %fp, i32* nocapture %ret_result) #0 {
entry:
  %result = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !445), !dbg !700
  call void @llvm.dbg.value(metadata !{i32* %ret_result}, i64 0, metadata !446), !dbg !700
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !447), !dbg !701
  %0 = bitcast i32* %result to i8*, !dbg !702
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #9, !dbg !702
  %cmp = icmp eq i64 %call, 1, !dbg !702
  br i1 %cmp, label %if.end, label %return, !dbg !702

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %result}, i64 0, metadata !447), !dbg !703
  %1 = load i32* %result, align 4, !dbg !703, !tbaa !521
  %call1 = call i32 @sre_ntoh32(i32 %1) #9, !dbg !703
  store i32 %call1, i32* %ret_result, align 4, !dbg !703, !tbaa !521
  br label %return, !dbg !704

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !704
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSISetFilePosition(%struct._IO_FILE* nocapture %fp, %struct.ssioffset_s* nocapture %offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !160), !dbg !705
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %offset}, i64 0, metadata !161), !dbg !705
  %mode = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 0, !dbg !706
  %0 = load i8* %mode, align 1, !dbg !706, !tbaa !499
  %cmp = icmp eq i8 %0, 0, !dbg !706
  br i1 %cmp, label %if.then, label %return, !dbg !706

if.then:                                          ; preds = %entry
  %off = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 1, !dbg !707
  %i32 = bitcast %union.anon* %off to i32*, !dbg !707
  %1 = load i32* %i32, align 4, !dbg !707, !tbaa !521
  %conv2 = zext i32 %1 to i64, !dbg !707
  %call = tail call i32 @fseek(%struct._IO_FILE* %fp, i64 %conv2, i32 0) #9, !dbg !707
  %cmp3 = icmp eq i32 %call, 0, !dbg !707
  %. = select i1 %cmp3, i32 0, i32 8, !dbg !708
  br label %return, !dbg !708

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 7, %entry ]
  ret i32 %retval.0, !dbg !708
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SSIFileInfo(%struct.ssifile_s* nocapture %sfp, i32 %fh, i8** nocapture %ret_filename, i32* nocapture %ret_format) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !166), !dbg !709
  tail call void @llvm.dbg.value(metadata !{i32 %fh}, i64 0, metadata !167), !dbg !709
  tail call void @llvm.dbg.value(metadata !{i8** %ret_filename}, i64 0, metadata !168), !dbg !709
  tail call void @llvm.dbg.value(metadata !{i32* %ret_format}, i64 0, metadata !169), !dbg !709
  %cmp = icmp slt i32 %fh, 0, !dbg !710
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !710

lor.lhs.false:                                    ; preds = %entry
  %nfiles = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 2, !dbg !710
  %0 = load i16* %nfiles, align 2, !dbg !710, !tbaa !517
  %conv = zext i16 %0 to i32, !dbg !710
  %cmp1 = icmp sgt i32 %conv, %fh, !dbg !710
  br i1 %cmp1, label %if.end, label %return, !dbg !710

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %fh to i64, !dbg !711
  %filename = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 16, !dbg !711
  %1 = load i8*** %filename, align 8, !dbg !711, !tbaa !498
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !711
  %2 = load i8** %arrayidx, align 8, !dbg !711, !tbaa !498
  store i8* %2, i8** %ret_filename, align 8, !dbg !711, !tbaa !498
  %fileformat = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 17, !dbg !712
  %3 = load i32** %fileformat, align 8, !dbg !712, !tbaa !498
  %arrayidx4 = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !712
  %4 = load i32* %arrayidx4, align 4, !dbg !712, !tbaa !521
  store i32 %4, i32* %ret_format, align 4, !dbg !712, !tbaa !521
  br label %return, !dbg !713

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 12, %lor.lhs.false ], [ 12, %entry ]
  ret i32 %retval.0, !dbg !713
}

; Function Attrs: nounwind optsize uwtable
define void @SSIClose(%struct.ssifile_s* %sfp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !174), !dbg !714
  %cmp = icmp eq %struct.ssifile_s* %sfp, null, !dbg !715
  br i1 %cmp, label %if.end4, label %if.then, !dbg !715

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.ssifile_s* %sfp}, i64 0, metadata !716) #3, !dbg !719
  %filename.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 16, !dbg !720
  %0 = load i8*** %filename.i, align 8, !dbg !720, !tbaa !498
  %cmp.i = icmp eq i8** %0, null, !dbg !720
  br i1 %cmp.i, label %if.end11.i, label %for.cond.preheader.i, !dbg !720

for.cond.preheader.i:                             ; preds = %if.then
  %nfiles.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 2, !dbg !721
  %1 = load i16* %nfiles.i, align 2, !dbg !721, !tbaa !517
  %cmp148.i = icmp eq i16 %1, 0, !dbg !721
  br i1 %cmp148.i, label %for.end.i, label %for.body.i, !dbg !721

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %2 = phi i8** [ %.pre51.i, %for.inc.i ], [ %0, %for.cond.preheader.i ], !dbg !724
  %3 = phi i16 [ %5, %for.inc.i ], [ %1, %for.cond.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds i8** %2, i64 %indvars.iv.i, !dbg !724
  %4 = load i8** %arrayidx.i, align 8, !dbg !724, !tbaa !498
  %cmp4.i = icmp eq i8* %4, null, !dbg !724
  br i1 %cmp4.i, label %for.inc.i, label %if.then6.i, !dbg !724

if.then6.i:                                       ; preds = %for.body.i
  tail call void @free(i8* %4) #9, !dbg !724
  %.pre50.i = load i16* %nfiles.i, align 2, !dbg !721, !tbaa !517
  %.pre51.i.pre = load i8*** %filename.i, align 8, !dbg !724, !tbaa !498
  br label %for.inc.i, !dbg !724

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i
  %.pre51.i = phi i8** [ %2, %for.body.i ], [ %.pre51.i.pre, %if.then6.i ], !dbg !721
  %5 = phi i16 [ %3, %for.body.i ], [ %.pre50.i, %if.then6.i ], !dbg !721
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !721
  %conv.i = zext i16 %5 to i32, !dbg !721
  %6 = trunc i64 %indvars.iv.next.i to i32, !dbg !721
  %cmp1.i = icmp slt i32 %6, %conv.i, !dbg !721
  br i1 %cmp1.i, label %for.body.i, label %for.end.i, !dbg !721

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %7 = phi i8** [ %0, %for.cond.preheader.i ], [ %.pre51.i, %for.inc.i ]
  %8 = bitcast i8** %7 to i8*, !dbg !725
  tail call void @free(i8* %8) #9, !dbg !725
  br label %if.end11.i, !dbg !726

if.end11.i:                                       ; preds = %for.end.i, %if.then
  %fileformat.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 17, !dbg !727
  %9 = load i32** %fileformat.i, align 8, !dbg !727, !tbaa !498
  %cmp12.i = icmp eq i32* %9, null, !dbg !727
  br i1 %cmp12.i, label %if.end16.i, label %if.then14.i, !dbg !727

if.then14.i:                                      ; preds = %if.end11.i
  %10 = bitcast i32* %9 to i8*, !dbg !727
  tail call void @free(i8* %10) #9, !dbg !727
  br label %if.end16.i, !dbg !727

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i
  %fileflags.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 18, !dbg !728
  %11 = load i32** %fileflags.i, align 8, !dbg !728, !tbaa !498
  %cmp17.i = icmp eq i32* %11, null, !dbg !728
  br i1 %cmp17.i, label %if.end21.i, label %if.then19.i, !dbg !728

if.then19.i:                                      ; preds = %if.end16.i
  %12 = bitcast i32* %11 to i8*, !dbg !728
  tail call void @free(i8* %12) #9, !dbg !728
  br label %if.end21.i, !dbg !728

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i
  %bpl.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 19, !dbg !729
  %13 = load i32** %bpl.i, align 8, !dbg !729, !tbaa !498
  %cmp22.i = icmp eq i32* %13, null, !dbg !729
  br i1 %cmp22.i, label %if.end26.i, label %if.then24.i, !dbg !729

if.then24.i:                                      ; preds = %if.end21.i
  %14 = bitcast i32* %13 to i8*, !dbg !729
  tail call void @free(i8* %14) #9, !dbg !729
  br label %if.end26.i, !dbg !729

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i
  %rpl.i = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 20, !dbg !730
  %15 = load i32** %rpl.i, align 8, !dbg !730, !tbaa !498
  %cmp27.i = icmp eq i32* %15, null, !dbg !730
  br i1 %cmp27.i, label %clear_ssifile.exit, label %if.then29.i, !dbg !730

if.then29.i:                                      ; preds = %if.end26.i
  %16 = bitcast i32* %15 to i8*, !dbg !730
  tail call void @free(i8* %16) #9, !dbg !730
  br label %clear_ssifile.exit, !dbg !730

clear_ssifile.exit:                               ; preds = %if.end26.i, %if.then29.i
  %fp = getelementptr inbounds %struct.ssifile_s* %sfp, i64 0, i32 0, !dbg !731
  %17 = load %struct._IO_FILE** %fp, align 8, !dbg !731, !tbaa !498
  %cmp1 = icmp eq %struct._IO_FILE* %17, null, !dbg !731
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !731

if.then2:                                         ; preds = %clear_ssifile.exit
  %call = tail call i32 @fclose(%struct._IO_FILE* %17) #9, !dbg !731
  br label %if.end, !dbg !731

if.end:                                           ; preds = %clear_ssifile.exit, %if.then2
  %18 = bitcast %struct.ssifile_s* %sfp to i8*, !dbg !732
  tail call void @free(i8* %18) #9, !dbg !732
  br label %if.end4, !dbg !733

if.end4:                                          ; preds = %entry, %if.end
  ret void, !dbg !734
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SSIRecommendMode(i8* nocapture %file) #0 {
entry:
  %s2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !179), !dbg !735
  %0 = bitcast %struct.stat* %s2 to i8*, !dbg !736
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !736
  call void @llvm.dbg.declare(metadata !{%struct.stat* %s2}, metadata !180), !dbg !736
  %call = call i32 @stat(i8* %file, %struct.stat* %s2) #9, !dbg !737
  %cmp = icmp eq i32 %call, 0, !dbg !737
  br i1 %cmp, label %if.then, label %cleanup, !dbg !737

if.then:                                          ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat* %s2, i64 0, i32 8, !dbg !738
  %1 = load i64* %st_size, align 8, !dbg !738, !tbaa !740
  %not.cmp1 = icmp sgt i64 %1, 2146483647, !dbg !738
  %. = zext i1 %not.cmp1 to i32, !dbg !738
  br label %cleanup, !dbg !738

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ -1, %entry ]
  call void @llvm.lifetime.end(i64 144, i8* %0) #3, !dbg !741
  ret i32 %retval.0, !dbg !742
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.ssiindex_s* @SSICreateIndex(i32 %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !258), !dbg !743
  tail call void @llvm.dbg.value(metadata !744, i64 0, metadata !259), !dbg !745
  %call = tail call noalias i8* @malloc(i64 120) #9, !dbg !746
  %0 = bitcast i8* %call to %struct.ssiindex_s*, !dbg !746
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %0}, i64 0, metadata !259), !dbg !746
  %cmp = icmp eq i8* %call, null, !dbg !746
  br i1 %cmp, label %FAILURE, label %if.end, !dbg !746

if.end:                                           ; preds = %entry
  %smode = bitcast i8* %call to i32*, !dbg !747
  store i32 %mode, i32* %smode, align 4, !dbg !747, !tbaa !521
  %imode = getelementptr inbounds i8* %call, i64 4, !dbg !748
  %1 = bitcast i8* %imode to i32*, !dbg !748
  store i32 0, i32* %1, align 4, !dbg !748, !tbaa !521
  %external = getelementptr inbounds i8* %call, i64 8, !dbg !749
  %2 = bitcast i8* %external to i32*, !dbg !749
  store i32 0, i32* %2, align 4, !dbg !749, !tbaa !521
  %max_ram = getelementptr inbounds i8* %call, i64 12, !dbg !750
  %3 = bitcast i8* %max_ram to i32*, !dbg !750
  store i32 200, i32* %3, align 4, !dbg !750, !tbaa !521
  %cmp1 = icmp eq i32 %mode, 1, !dbg !751
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !751

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([109 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !752
  br label %if.end3, !dbg !752

if.end3:                                          ; preds = %if.then2, %if.end
  %filenames = getelementptr inbounds i8* %call, i64 16, !dbg !753
  %4 = bitcast i8* %filenames to i8***, !dbg !753
  %bpl = getelementptr inbounds i8* %call, i64 32, !dbg !754
  %5 = bitcast i8* %bpl to i32**, !dbg !754
  %rpl = getelementptr inbounds i8* %call, i64 40, !dbg !755
  %6 = bitcast i8* %rpl to i32**, !dbg !755
  %pkeys = getelementptr inbounds i8* %call, i64 56, !dbg !756
  %7 = bitcast i8* %pkeys to %struct.ssipkey_s**, !dbg !756
  %ptmpfile = getelementptr inbounds i8* %call, i64 72, !dbg !757
  %8 = bitcast i8* %ptmpfile to i8**, !dbg !757
  call void @llvm.memset.p0i8.i64(i8* %filenames, i8 0, i64 38, i32 8, i1 false), !dbg !758
  call void @llvm.memset.p0i8.i64(i8* %pkeys, i8 0, i64 16, i32 8, i1 false), !dbg !756
  store i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8** %8, align 8, !dbg !757, !tbaa !498
  %ptmp = getelementptr inbounds i8* %call, i64 80, !dbg !759
  %skeys = getelementptr inbounds i8* %call, i64 88, !dbg !760
  %9 = bitcast i8* %skeys to %struct.ssiskey_s**, !dbg !760
  %stmpfile = getelementptr inbounds i8* %call, i64 104, !dbg !761
  %10 = bitcast i8* %stmpfile to i8**, !dbg !761
  call void @llvm.memset.p0i8.i64(i8* %ptmp, i8 0, i64 24, i32 8, i1 false), !dbg !760
  store i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8** %10, align 8, !dbg !761, !tbaa !498
  %stmp = getelementptr inbounds i8* %call, i64 112, !dbg !762
  %11 = bitcast i8* %stmp to %struct._IO_FILE**, !dbg !762
  store %struct._IO_FILE* null, %struct._IO_FILE** %11, align 8, !dbg !762, !tbaa !498
  %call4 = tail call noalias i8* @malloc(i64 80) #9, !dbg !763
  %12 = bitcast i8* %call4 to i8**, !dbg !763
  store i8** %12, i8*** %4, align 8, !dbg !763, !tbaa !498
  %cmp6 = icmp eq i8* %call4, null, !dbg !763
  br i1 %cmp6, label %FAILURE, label %if.end8, !dbg !763

if.end8:                                          ; preds = %if.end3
  %fileformat = getelementptr inbounds i8* %call, i64 24, !dbg !758
  %13 = bitcast i8* %fileformat to i32**, !dbg !758
  %call9 = tail call noalias i8* @malloc(i64 40) #9, !dbg !764
  %14 = bitcast i8* %call9 to i32*, !dbg !764
  store i32* %14, i32** %13, align 8, !dbg !764, !tbaa !498
  %cmp11 = icmp eq i8* %call9, null, !dbg !764
  br i1 %cmp11, label %FAILURE, label %if.end13, !dbg !764

if.end13:                                         ; preds = %if.end8
  %call14 = tail call noalias i8* @malloc(i64 40) #9, !dbg !765
  %15 = bitcast i8* %call14 to i32*, !dbg !765
  store i32* %15, i32** %5, align 8, !dbg !765, !tbaa !498
  %cmp16 = icmp eq i8* %call14, null, !dbg !765
  br i1 %cmp16, label %FAILURE, label %if.end18, !dbg !765

if.end18:                                         ; preds = %if.end13
  %call19 = tail call noalias i8* @malloc(i64 40) #9, !dbg !766
  %16 = bitcast i8* %call19 to i32*, !dbg !766
  store i32* %16, i32** %6, align 8, !dbg !766, !tbaa !498
  %cmp21 = icmp eq i8* %call19, null, !dbg !766
  br i1 %cmp21, label %FAILURE, label %if.end23, !dbg !766

if.end23:                                         ; preds = %if.end18
  %call24 = tail call noalias i8* @malloc(i64 5600) #9, !dbg !767
  %17 = bitcast i8* %call24 to %struct.ssipkey_s*, !dbg !767
  store %struct.ssipkey_s* %17, %struct.ssipkey_s** %7, align 8, !dbg !767, !tbaa !498
  %cmp26 = icmp eq i8* %call24, null, !dbg !767
  br i1 %cmp26, label %FAILURE, label %if.end28, !dbg !767

if.end28:                                         ; preds = %if.end23
  %call29 = tail call noalias i8* @malloc(i64 5600) #9, !dbg !768
  %18 = bitcast i8* %call29 to %struct.ssiskey_s*, !dbg !768
  store %struct.ssiskey_s* %18, %struct.ssiskey_s** %9, align 8, !dbg !768, !tbaa !498
  %cmp31 = icmp eq i8* %call29, null, !dbg !768
  br i1 %cmp31, label %FAILURE, label %return, !dbg !768

FAILURE:                                          ; preds = %if.end28, %if.end23, %if.end18, %if.end13, %if.end8, %if.end3, %entry
  tail call void @SSIFreeIndex(%struct.ssiindex_s* %0) #10, !dbg !769
  br label %return, !dbg !770

return:                                           ; preds = %if.end28, %FAILURE
  %retval.0 = phi %struct.ssiindex_s* [ null, %FAILURE ], [ %0, %if.end28 ]
  ret %struct.ssiindex_s* %retval.0, !dbg !771
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @SSIFreeIndex(%struct.ssiindex_s* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !340), !dbg !772
  %cmp = icmp eq %struct.ssiindex_s* %g, null, !dbg !773
  br i1 %cmp, label %if.end74, label %if.then, !dbg !773

if.then:                                          ; preds = %entry
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2, !dbg !774
  %0 = load i32* %external, align 4, !dbg !774, !tbaa !521
  %cmp1 = icmp eq i32 %0, 0, !dbg !774
  br i1 %cmp1, label %for.cond.preheader, label %if.else, !dbg !774

for.cond.preheader:                               ; preds = %if.then
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12, !dbg !776
  %1 = load i32* %nprimary, align 4, !dbg !776, !tbaa !521
  %cmp3121 = icmp eq i32 %1, 0, !dbg !776
  br i1 %cmp3121, label %for.cond4.preheader, label %for.body.lr.ph, !dbg !776

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !776
  br label %for.body, !dbg !776

for.cond4.preheader:                              ; preds = %for.body, %for.cond.preheader
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17, !dbg !779
  %2 = load i32* %nsecondary, align 4, !dbg !779, !tbaa !521
  %cmp5119 = icmp eq i32 %2, 0, !dbg !779
  br i1 %cmp5119, label %for.end22, label %for.body6.lr.ph, !dbg !779

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !779
  br label %for.body6, !dbg !779

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv127 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next128, %for.body ]
  %3 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !776, !tbaa !498
  %key = getelementptr inbounds %struct.ssipkey_s* %3, i64 %indvars.iv127, i32 0, !dbg !776
  %4 = load i8** %key, align 8, !dbg !776, !tbaa !498
  tail call void @free(i8* %4) #9, !dbg !776
  %indvars.iv.next128 = add i64 %indvars.iv127, 1, !dbg !776
  %5 = load i32* %nprimary, align 4, !dbg !776, !tbaa !521
  %6 = trunc i64 %indvars.iv.next128 to i32, !dbg !776
  %cmp3 = icmp ult i32 %6, %5, !dbg !776
  br i1 %cmp3, label %for.body, label %for.cond4.preheader, !dbg !776

for.cond13.preheader:                             ; preds = %for.body6
  %phitmp = icmp eq i32 %9, 0, !dbg !779
  br i1 %phitmp, label %for.end22, label %for.body16.lr.ph, !dbg !781

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %skeys18 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !781
  br label %for.body16, !dbg !781

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv125 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next126, %for.body6 ]
  %7 = load %struct.ssiskey_s** %skeys, align 8, !dbg !779, !tbaa !498
  %key9 = getelementptr inbounds %struct.ssiskey_s* %7, i64 %indvars.iv125, i32 0, !dbg !779
  %8 = load i8** %key9, align 8, !dbg !779, !tbaa !498
  tail call void @free(i8* %8) #9, !dbg !779
  %indvars.iv.next126 = add i64 %indvars.iv125, 1, !dbg !779
  %9 = load i32* %nsecondary, align 4, !dbg !779, !tbaa !521
  %10 = trunc i64 %indvars.iv.next126 to i32, !dbg !779
  %cmp5 = icmp ult i32 %10, %9, !dbg !779
  br i1 %cmp5, label %for.body6, label %for.cond13.preheader, !dbg !779

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv123 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next124, %for.body16 ]
  %11 = load %struct.ssiskey_s** %skeys18, align 8, !dbg !781, !tbaa !498
  %pkey = getelementptr inbounds %struct.ssiskey_s* %11, i64 %indvars.iv123, i32 1, !dbg !781
  %12 = load i8** %pkey, align 8, !dbg !781, !tbaa !498
  tail call void @free(i8* %12) #9, !dbg !781
  %indvars.iv.next124 = add i64 %indvars.iv123, 1, !dbg !781
  %13 = load i32* %nsecondary, align 4, !dbg !781, !tbaa !521
  %14 = trunc i64 %indvars.iv.next124 to i32, !dbg !781
  %cmp15 = icmp ult i32 %14, %13, !dbg !781
  br i1 %cmp15, label %for.body16, label %for.end22, !dbg !781

for.end22:                                        ; preds = %for.cond4.preheader, %for.body16, %for.cond13.preheader
  %pkeys23 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !783
  %15 = load %struct.ssipkey_s** %pkeys23, align 8, !dbg !783, !tbaa !498
  %cmp24 = icmp eq %struct.ssipkey_s* %15, null, !dbg !783
  br i1 %cmp24, label %if.end, label %if.then25, !dbg !783

if.then25:                                        ; preds = %for.end22
  %16 = bitcast %struct.ssipkey_s* %15 to i8*, !dbg !783
  tail call void @free(i8* %16) #9, !dbg !783
  br label %if.end, !dbg !783

if.end:                                           ; preds = %for.end22, %if.then25
  %skeys27 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !784
  %17 = load %struct.ssiskey_s** %skeys27, align 8, !dbg !784, !tbaa !498
  %cmp28 = icmp eq %struct.ssiskey_s* %17, null, !dbg !784
  br i1 %cmp28, label %for.cond44.preheader, label %if.then29, !dbg !784

if.then29:                                        ; preds = %if.end
  %18 = bitcast %struct.ssiskey_s* %17 to i8*, !dbg !784
  tail call void @free(i8* %18) #9, !dbg !784
  br label %for.cond44.preheader, !dbg !784

if.else:                                          ; preds = %if.then
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14, !dbg !785
  %19 = load %struct._IO_FILE** %ptmp, align 8, !dbg !785, !tbaa !498
  %cmp32 = icmp eq %struct._IO_FILE* %19, null, !dbg !785
  br i1 %cmp32, label %if.end35, label %if.then33, !dbg !785

if.then33:                                        ; preds = %if.else
  %call = tail call i32 @fclose(%struct._IO_FILE* %19) #9, !dbg !785
  br label %if.end35, !dbg !785

if.end35:                                         ; preds = %if.else, %if.then33
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19, !dbg !787
  %20 = load %struct._IO_FILE** %stmp, align 8, !dbg !787, !tbaa !498
  %cmp36 = icmp eq %struct._IO_FILE* %20, null, !dbg !787
  br i1 %cmp36, label %if.end40, label %if.then37, !dbg !787

if.then37:                                        ; preds = %if.end35
  %call39 = tail call i32 @fclose(%struct._IO_FILE* %20) #9, !dbg !787
  br label %if.end40, !dbg !787

if.end40:                                         ; preds = %if.end35, %if.then37
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 13, !dbg !788
  %21 = load i8** %ptmpfile, align 8, !dbg !788, !tbaa !498
  %call41 = tail call i32 @remove(i8* %21) #9, !dbg !788
  %stmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 18, !dbg !789
  %22 = load i8** %stmpfile, align 8, !dbg !789, !tbaa !498
  %call42 = tail call i32 @remove(i8* %22) #9, !dbg !789
  br label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %if.end, %if.then29, %if.end40
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9, !dbg !790
  %23 = load i16* %nfiles, align 2, !dbg !790, !tbaa !517
  %cmp45115 = icmp eq i16 %23, 0, !dbg !790
  %filenames53.pre = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 4, !dbg !792
  br i1 %cmp45115, label %for.end52, label %for.body47, !dbg !790

for.body47:                                       ; preds = %for.cond44.preheader, %for.body47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body47 ], [ 0, %for.cond44.preheader ]
  %24 = load i8*** %filenames53.pre, align 8, !dbg !790, !tbaa !498
  %arrayidx49 = getelementptr inbounds i8** %24, i64 %indvars.iv, !dbg !790
  %25 = load i8** %arrayidx49, align 8, !dbg !790, !tbaa !498
  tail call void @free(i8* %25) #9, !dbg !790
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !790
  %26 = load i16* %nfiles, align 2, !dbg !790, !tbaa !517
  %conv = zext i16 %26 to i32, !dbg !790
  %27 = trunc i64 %indvars.iv.next to i32, !dbg !790
  %cmp45 = icmp slt i32 %27, %conv, !dbg !790
  br i1 %cmp45, label %for.body47, label %for.end52, !dbg !790

for.end52:                                        ; preds = %for.cond44.preheader, %for.body47
  %28 = load i8*** %filenames53.pre, align 8, !dbg !792, !tbaa !498
  %cmp54 = icmp eq i8** %28, null, !dbg !792
  br i1 %cmp54, label %if.end58, label %if.then56, !dbg !792

if.then56:                                        ; preds = %for.end52
  %29 = bitcast i8** %28 to i8*, !dbg !792
  tail call void @free(i8* %29) #9, !dbg !792
  br label %if.end58, !dbg !792

if.end58:                                         ; preds = %for.end52, %if.then56
  %fileformat = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 5, !dbg !793
  %30 = load i32** %fileformat, align 8, !dbg !793, !tbaa !498
  %cmp59 = icmp eq i32* %30, null, !dbg !793
  br i1 %cmp59, label %if.end63, label %if.then61, !dbg !793

if.then61:                                        ; preds = %if.end58
  %31 = bitcast i32* %30 to i8*, !dbg !793
  tail call void @free(i8* %31) #9, !dbg !793
  br label %if.end63, !dbg !793

if.end63:                                         ; preds = %if.end58, %if.then61
  %bpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6, !dbg !794
  %32 = load i32** %bpl, align 8, !dbg !794, !tbaa !498
  %cmp64 = icmp eq i32* %32, null, !dbg !794
  br i1 %cmp64, label %if.end68, label %if.then66, !dbg !794

if.then66:                                        ; preds = %if.end63
  %33 = bitcast i32* %32 to i8*, !dbg !794
  tail call void @free(i8* %33) #9, !dbg !794
  br label %if.end68, !dbg !794

if.end68:                                         ; preds = %if.end63, %if.then66
  %rpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7, !dbg !795
  %34 = load i32** %rpl, align 8, !dbg !795, !tbaa !498
  %cmp69 = icmp eq i32* %34, null, !dbg !795
  br i1 %cmp69, label %if.end73, label %if.then71, !dbg !795

if.then71:                                        ; preds = %if.end68
  %35 = bitcast i32* %34 to i8*, !dbg !795
  tail call void @free(i8* %35) #9, !dbg !795
  br label %if.end73, !dbg !795

if.end73:                                         ; preds = %if.end68, %if.then71
  %36 = bitcast %struct.ssiindex_s* %g to i8*, !dbg !796
  tail call void @free(i8* %36) #9, !dbg !796
  br label %if.end74, !dbg !797

if.end74:                                         ; preds = %entry, %if.end73
  ret void, !dbg !798
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIGetFilePosition(%struct._IO_FILE* nocapture %fp, i32 %mode, %struct.ssioffset_s* nocapture %ret_offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !264), !dbg !799
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !265), !dbg !799
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %ret_offset}, i64 0, metadata !266), !dbg !799
  switch i32 %mode, label %if.then9 [
    i32 0, label %if.then
    i32 1, label %if.else10
  ], !dbg !800

if.then:                                          ; preds = %entry
  %mode1 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0, !dbg !801
  store i8 0, i8* %mode1, align 1, !dbg !801, !tbaa !499
  %call = tail call i64 @ftell(%struct._IO_FILE* %fp) #9, !dbg !803
  %conv = trunc i64 %call to i32, !dbg !803
  %off = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 1, !dbg !803
  %i32 = bitcast %union.anon* %off to i32*, !dbg !803
  store i32 %conv, i32* %i32, align 4, !dbg !803, !tbaa !521
  %cmp4 = icmp eq i32 %conv, -1, !dbg !804
  %. = select i1 %cmp4, i32 9, i32 0, !dbg !804
  br label %return, !dbg !804

if.then9:                                         ; preds = %entry
  tail call void @abort() #12, !dbg !805
  unreachable, !dbg !805

if.else10:                                        ; preds = %entry
  %mode11 = getelementptr inbounds %struct.ssioffset_s* %ret_offset, i64 0, i32 0, !dbg !806
  store i8 1, i8* %mode11, align 1, !dbg !806, !tbaa !499
  br label %return, !dbg !808

return:                                           ; preds = %if.then, %if.else10
  %retval.0 = phi i32 [ 7, %if.else10 ], [ %., %if.then ]
  ret i32 %retval.0, !dbg !809
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() #5

; Function Attrs: nounwind optsize uwtable
define i32 @SSIAddFileToIndex(%struct.ssiindex_s* nocapture %g, i8* %filename, i32 %fmt, i32* nocapture %ret_fh) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !271), !dbg !810
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !272), !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32 %fmt}, i64 0, metadata !273), !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32* %ret_fh}, i64 0, metadata !274), !dbg !810
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9, !dbg !811
  %0 = load i16* %nfiles, align 2, !dbg !811, !tbaa !517
  %cmp = icmp ugt i16 %0, 32766, !dbg !811
  br i1 %cmp, label %return, label %if.end, !dbg !811

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %filename) #11, !dbg !812
  %conv2 = trunc i64 %call to i32, !dbg !812
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !275), !dbg !812
  %add = add nsw i32 %conv2, 1, !dbg !813
  %flen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 8, !dbg !813
  %1 = load i32* %flen, align 4, !dbg !813, !tbaa !521
  %cmp3 = icmp ugt i32 %add, %1, !dbg !813
  br i1 %cmp3, label %if.then5, label %if.end8, !dbg !813

if.then5:                                         ; preds = %if.end
  store i32 %add, i32* %flen, align 4, !dbg !813, !tbaa !521
  br label %if.end8, !dbg !813

if.end8:                                          ; preds = %if.then5, %if.end
  %call9 = tail call i8* @FileTail(i8* %filename, i32 0) #9, !dbg !814
  %2 = load i16* %nfiles, align 2, !dbg !814, !tbaa !517
  %idxprom = zext i16 %2 to i64, !dbg !814
  %filenames = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 4, !dbg !814
  %3 = load i8*** %filenames, align 8, !dbg !814, !tbaa !498
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !814
  store i8* %call9, i8** %arrayidx, align 8, !dbg !814, !tbaa !498
  %fileformat = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 5, !dbg !815
  %4 = load i32** %fileformat, align 8, !dbg !815, !tbaa !498
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !815
  store i32 %fmt, i32* %arrayidx13, align 4, !dbg !815, !tbaa !521
  %bpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6, !dbg !816
  %5 = load i32** %bpl, align 8, !dbg !816, !tbaa !498
  %arrayidx16 = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !816
  store i32 0, i32* %arrayidx16, align 4, !dbg !816, !tbaa !521
  %rpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7, !dbg !817
  %6 = load i32** %rpl, align 8, !dbg !817, !tbaa !498
  %arrayidx19 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !817
  store i32 0, i32* %arrayidx19, align 4, !dbg !817, !tbaa !521
  %conv21 = zext i16 %2 to i32, !dbg !818
  store i32 %conv21, i32* %ret_fh, align 4, !dbg !818, !tbaa !521
  %inc = add i16 %2, 1, !dbg !819
  store i16 %inc, i16* %nfiles, align 2, !dbg !819, !tbaa !517
  %7 = urem i16 %inc, 10, !dbg !820
  %cmp25 = icmp eq i16 %7, 0, !dbg !820
  br i1 %cmp25, label %if.then27, label %if.end79, !dbg !820

if.then27:                                        ; preds = %if.end8
  %conv24 = zext i16 %inc to i64, !dbg !820
  %8 = load i8*** %filenames, align 8, !dbg !821, !tbaa !498
  %9 = bitcast i8** %8 to i8*, !dbg !821
  %add31 = shl nuw nsw i64 %conv24, 3, !dbg !821
  %mul = add i64 %add31, 80, !dbg !821
  %call33 = tail call i8* @realloc(i8* %9, i64 %mul) #9, !dbg !821
  %10 = bitcast i8* %call33 to i8**, !dbg !821
  store i8** %10, i8*** %filenames, align 8, !dbg !821, !tbaa !498
  %cmp36 = icmp eq i8* %call33, null, !dbg !823
  br i1 %cmp36, label %return, label %if.end39, !dbg !823

if.end39:                                         ; preds = %if.then27
  %11 = load i32** %fileformat, align 8, !dbg !824, !tbaa !498
  %12 = bitcast i32* %11 to i8*, !dbg !824
  %13 = load i16* %nfiles, align 2, !dbg !824, !tbaa !517
  %conv42 = zext i16 %13 to i64, !dbg !824
  %add43 = shl nuw nsw i64 %conv42, 2, !dbg !824
  %mul45 = add i64 %add43, 40, !dbg !824
  %call46 = tail call i8* @realloc(i8* %12, i64 %mul45) #9, !dbg !824
  %14 = bitcast i8* %call46 to i32*, !dbg !824
  store i32* %14, i32** %fileformat, align 8, !dbg !824, !tbaa !498
  %cmp49 = icmp eq i8* %call46, null, !dbg !825
  br i1 %cmp49, label %return, label %if.end52, !dbg !825

if.end52:                                         ; preds = %if.end39
  %15 = load i32** %bpl, align 8, !dbg !826, !tbaa !498
  %16 = bitcast i32* %15 to i8*, !dbg !826
  %17 = load i16* %nfiles, align 2, !dbg !826, !tbaa !517
  %conv55 = zext i16 %17 to i64, !dbg !826
  %add56 = shl nuw nsw i64 %conv55, 2, !dbg !826
  %mul58 = add i64 %add56, 40, !dbg !826
  %call59 = tail call i8* @realloc(i8* %16, i64 %mul58) #9, !dbg !826
  %18 = bitcast i8* %call59 to i32*, !dbg !826
  store i32* %18, i32** %bpl, align 8, !dbg !826, !tbaa !498
  %cmp62 = icmp eq i8* %call59, null, !dbg !827
  br i1 %cmp62, label %return, label %if.end65, !dbg !827

if.end65:                                         ; preds = %if.end52
  %19 = load i32** %rpl, align 8, !dbg !828, !tbaa !498
  %20 = bitcast i32* %19 to i8*, !dbg !828
  %21 = load i16* %nfiles, align 2, !dbg !828, !tbaa !517
  %conv68 = zext i16 %21 to i64, !dbg !828
  %add69 = shl nuw nsw i64 %conv68, 2, !dbg !828
  %mul71 = add i64 %add69, 40, !dbg !828
  %call72 = tail call i8* @realloc(i8* %20, i64 %mul71) #9, !dbg !828
  %22 = bitcast i8* %call72 to i32*, !dbg !828
  store i32* %22, i32** %rpl, align 8, !dbg !828, !tbaa !498
  %cmp75 = icmp eq i8* %call72, null, !dbg !829
  br i1 %cmp75, label %return, label %if.end79, !dbg !829

if.end79:                                         ; preds = %if.end65, %if.end8
  br label %return, !dbg !830

return:                                           ; preds = %if.end65, %if.end52, %if.end39, %if.then27, %entry, %if.end79
  %retval.0 = phi i32 [ 0, %if.end79 ], [ 13, %entry ], [ 3, %if.then27 ], [ 3, %if.end39 ], [ 3, %if.end52 ], [ 3, %if.end65 ]
  ret i32 %retval.0, !dbg !830
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: optsize
declare i8* @FileTail(i8*, i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SSISetFileForSubseq(%struct.ssiindex_s* nocapture %g, i32 %fh, i32 %bpl, i32 %rpl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !280), !dbg !831
  tail call void @llvm.dbg.value(metadata !{i32 %fh}, i64 0, metadata !281), !dbg !831
  tail call void @llvm.dbg.value(metadata !{i32 %bpl}, i64 0, metadata !282), !dbg !831
  tail call void @llvm.dbg.value(metadata !{i32 %rpl}, i64 0, metadata !283), !dbg !831
  %cmp = icmp slt i32 %fh, 0, !dbg !832
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !832

lor.lhs.false:                                    ; preds = %entry
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9, !dbg !832
  %0 = load i16* %nfiles, align 2, !dbg !832, !tbaa !517
  %conv = zext i16 %0 to i32, !dbg !832
  %cmp1 = icmp sgt i32 %conv, %fh, !dbg !832
  br i1 %cmp1, label %if.end, label %return, !dbg !832

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp slt i32 %bpl, 1, !dbg !833
  %cmp6 = icmp slt i32 %rpl, 1, !dbg !833
  %or.cond = or i1 %cmp3, %cmp6, !dbg !833
  br i1 %or.cond, label %return, label %if.end9, !dbg !833

if.end9:                                          ; preds = %if.end
  %idxprom = sext i32 %fh to i64, !dbg !834
  %bpl10 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6, !dbg !834
  %1 = load i32** %bpl10, align 8, !dbg !834, !tbaa !498
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !834
  store i32 %bpl, i32* %arrayidx, align 4, !dbg !834, !tbaa !521
  %rpl12 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7, !dbg !835
  %2 = load i32** %rpl12, align 8, !dbg !835, !tbaa !498
  %arrayidx13 = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !835
  store i32 %rpl, i32* %arrayidx13, align 4, !dbg !835, !tbaa !521
  br label %return, !dbg !836

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 12, %lor.lhs.false ], [ 12, %entry ], [ 12, %if.end ]
  ret i32 %retval.0, !dbg !836
}

; Function Attrs: nounwind optsize uwtable
define i32 @SSIAddPrimaryKeyToIndex(%struct.ssiindex_s* nocapture %g, i8* %key, i32 %fh, %struct.ssioffset_s* nocapture %r_off, %struct.ssioffset_s* %d_off, i32 %L) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !288), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !289), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %fh}, i64 0, metadata !290), !dbg !837
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %r_off}, i64 0, metadata !291), !dbg !838
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %d_off}, i64 0, metadata !292), !dbg !838
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !293), !dbg !838
  %cmp = icmp sgt i32 %fh, 32766, !dbg !839
  br i1 %cmp, label %return, label %if.end, !dbg !839

if.end:                                           ; preds = %entry
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12, !dbg !840
  %0 = load i32* %nprimary, align 4, !dbg !840, !tbaa !521
  %cmp1 = icmp ugt i32 %0, 2147483646, !dbg !840
  br i1 %cmp1, label %return, label %if.end4, !dbg !840

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %L, 0, !dbg !841
  %cmp7 = icmp eq %struct.ssioffset_s* %d_off, null, !dbg !841
  %or.cond = and i1 %cmp5, %cmp7, !dbg !841
  br i1 %or.cond, label %if.then9, label %if.end10, !dbg !841

if.then9:                                         ; preds = %if.end4
  tail call void @abort() #12, !dbg !841
  unreachable, !dbg !841

if.end10:                                         ; preds = %if.end4
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2, !dbg !842
  %1 = load i32* %external, align 4, !dbg !842, !tbaa !521
  %tobool = icmp eq i32 %1, 0, !dbg !842
  br i1 %tobool, label %land.lhs.true11, label %if.end21, !dbg !842

land.lhs.true11:                                  ; preds = %if.end10
  %call = tail call fastcc i64 @current_index_size(%struct.ssiindex_s* %g) #10, !dbg !842
  %max_ram = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 3, !dbg !842
  %2 = load i32* %max_ram, align 4, !dbg !842, !tbaa !521
  %conv12 = sext i32 %2 to i64, !dbg !842
  %cmp13 = icmp ult i64 %call, %conv12, !dbg !842
  br i1 %cmp13, label %if.end21, label %if.then15, !dbg !842

if.then15:                                        ; preds = %land.lhs.true11
  %call16 = tail call fastcc i32 @activate_external_sort(%struct.ssiindex_s* %g) #10, !dbg !843
  %cmp17 = icmp eq i32 %call16, 0, !dbg !843
  br i1 %cmp17, label %if.end21, label %return, !dbg !843

if.end21:                                         ; preds = %if.then15, %land.lhs.true11, %if.end10
  %call22 = tail call i64 @strlen(i8* %key) #11, !dbg !844
  %conv23 = trunc i64 %call22 to i32, !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32 %conv23}, i64 0, metadata !294), !dbg !844
  %add = add nsw i32 %conv23, 1, !dbg !845
  %plen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 11, !dbg !845
  %3 = load i32* %plen, align 4, !dbg !845, !tbaa !521
  %cmp24 = icmp ugt i32 %add, %3, !dbg !845
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !845

if.then26:                                        ; preds = %if.end21
  store i32 %add, i32* %plen, align 4, !dbg !845, !tbaa !521
  br label %if.end29, !dbg !845

if.end29:                                         ; preds = %if.end21, %if.then26
  %4 = load i32* %external, align 4, !dbg !846, !tbaa !521
  %tobool31 = icmp eq i32 %4, 0, !dbg !846
  br i1 %tobool31, label %if.end58, label %if.then32, !dbg !846

if.then32:                                        ; preds = %if.end29
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0, !dbg !847
  %5 = load i32* %smode, align 4, !dbg !847, !tbaa !521
  %cmp33 = icmp eq i32 %5, 0, !dbg !847
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14, !dbg !849
  %6 = load %struct._IO_FILE** %ptmp, align 8, !dbg !849, !tbaa !498
  %off = getelementptr inbounds %struct.ssioffset_s* %r_off, i64 0, i32 1, !dbg !849
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !847

if.then35:                                        ; preds = %if.then32
  %i32 = bitcast %union.anon* %off to i32*, !dbg !849
  %7 = load i32* %i32, align 4, !dbg !849, !tbaa !521
  %conv36 = zext i32 %7 to i64, !dbg !849
  br i1 %cmp7, label %cond.end, label %cond.false, !dbg !849

cond.false:                                       ; preds = %if.then35
  %off39 = getelementptr inbounds %struct.ssioffset_s* %d_off, i64 0, i32 1, !dbg !849
  %i3240 = bitcast %union.anon* %off39 to i32*, !dbg !849
  %8 = load i32* %i3240, align 4, !dbg !849, !tbaa !521
  %phitmp = zext i32 %8 to i64, !dbg !849
  br label %cond.end, !dbg !849

cond.end:                                         ; preds = %if.then35, %cond.false
  %cond = phi i64 [ %phitmp, %cond.false ], [ 0, %if.then35 ]
  %conv42 = sext i32 %L to i64, !dbg !849
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* %key, i32 %fh, i64 %conv36, i64 %cond, i64 %conv42) #9, !dbg !849
  br label %if.end56, !dbg !851

if.else:                                          ; preds = %if.then32
  %i64 = getelementptr inbounds %union.anon* %off, i64 0, i32 0, !dbg !852
  %9 = load i64* %i64, align 8, !dbg !852, !tbaa !629
  br i1 %cmp7, label %cond.end52, label %cond.false49, !dbg !852

cond.false49:                                     ; preds = %if.else
  %i6451 = getelementptr inbounds %struct.ssioffset_s* %d_off, i64 0, i32 1, i32 0, !dbg !852
  %10 = load i64* %i6451, align 8, !dbg !852, !tbaa !629
  br label %cond.end52, !dbg !852

cond.end52:                                       ; preds = %if.else, %cond.false49
  %cond53 = phi i64 [ %10, %cond.false49 ], [ 0, %if.else ], !dbg !852
  %conv54 = sext i32 %L to i64, !dbg !852
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i8* %key, i32 %fh, i64 %9, i64 %cond53, i64 %conv54) #9, !dbg !852
  br label %if.end56

if.end56:                                         ; preds = %cond.end52, %cond.end
  %11 = load i32* %nprimary, align 4, !dbg !854, !tbaa !521
  %inc = add i32 %11, 1, !dbg !854
  store i32 %inc, i32* %nprimary, align 4, !dbg !854, !tbaa !521
  br label %return, !dbg !855

if.end58:                                         ; preds = %if.end29
  %call59 = tail call i8* @sre_strdup(i8* %key, i32 %conv23) #9, !dbg !856
  %12 = load i32* %nprimary, align 4, !dbg !856, !tbaa !521
  %idxprom = zext i32 %12 to i64, !dbg !856
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !856
  %13 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !856, !tbaa !498
  %key61 = getelementptr inbounds %struct.ssipkey_s* %13, i64 %idxprom, i32 0, !dbg !856
  store i8* %call59, i8** %key61, align 8, !dbg !856, !tbaa !498
  %cmp62 = icmp eq i8* %call59, null, !dbg !856
  br i1 %cmp62, label %return, label %if.end65, !dbg !856

if.end65:                                         ; preds = %if.end58
  %conv66 = trunc i32 %fh to i16, !dbg !857
  %14 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !857, !tbaa !498
  %fnum = getelementptr inbounds %struct.ssipkey_s* %14, i64 %idxprom, i32 1, !dbg !857
  store i16 %conv66, i16* %fnum, align 2, !dbg !857, !tbaa !517
  %15 = getelementptr inbounds %struct.ssipkey_s* %14, i64 %idxprom, i32 2, i32 0, !dbg !858
  %16 = getelementptr inbounds %struct.ssioffset_s* %r_off, i64 0, i32 0, !dbg !858
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !dbg !858, !tbaa.struct !859
  %cmp5.not = xor i1 %cmp5, true, !dbg !860
  %brmerge = or i1 %cmp7, %cmp5.not, !dbg !860
  %17 = load i32* %nprimary, align 4, !dbg !861, !tbaa !521
  %idxprom93 = zext i32 %17 to i64, !dbg !861
  %18 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !861, !tbaa !498
  %19 = getelementptr inbounds %struct.ssipkey_s* %18, i64 %idxprom93, i32 3, i32 0, !dbg !861
  br i1 %brmerge, label %if.else91, label %if.then81, !dbg !860

if.then81:                                        ; preds = %if.end65
  %20 = getelementptr inbounds %struct.ssioffset_s* %d_off, i64 0, i32 0, !dbg !863
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !dbg !863, !tbaa.struct !859
  %21 = load i32* %nprimary, align 4, !dbg !865, !tbaa !521
  %idxprom88 = zext i32 %21 to i64, !dbg !865
  %22 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !865, !tbaa !498
  %len = getelementptr inbounds %struct.ssipkey_s* %22, i64 %idxprom88, i32 4, !dbg !865
  store i32 %L, i32* %len, align 4, !dbg !865, !tbaa !521
  br label %if.end102, !dbg !866

if.else91:                                        ; preds = %if.end65
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %16, i64 16, i32 8, i1 false), !dbg !861, !tbaa.struct !859
  %23 = load i32* %nprimary, align 4, !dbg !867, !tbaa !521
  %idxprom98 = zext i32 %23 to i64, !dbg !867
  %24 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !867, !tbaa !498
  %len101 = getelementptr inbounds %struct.ssipkey_s* %24, i64 %idxprom98, i32 4, !dbg !867
  store i32 0, i32* %len101, align 4, !dbg !867, !tbaa !521
  br label %if.end102

if.end102:                                        ; preds = %if.else91, %if.then81
  %25 = phi %struct.ssipkey_s* [ %24, %if.else91 ], [ %22, %if.then81 ]
  %26 = load i32* %nprimary, align 4, !dbg !868, !tbaa !521
  %inc104 = add i32 %26, 1, !dbg !868
  store i32 %inc104, i32* %nprimary, align 4, !dbg !868, !tbaa !521
  %rem = urem i32 %inc104, 100, !dbg !869
  %cmp106 = icmp eq i32 %rem, 0, !dbg !869
  br i1 %cmp106, label %if.then108, label %if.end120, !dbg !869

if.then108:                                       ; preds = %if.end102
  %27 = bitcast %struct.ssipkey_s* %25 to i8*, !dbg !870
  %add111 = add i32 %26, 101, !dbg !870
  %conv112 = zext i32 %add111 to i64, !dbg !870
  %mul = mul i64 %conv112, 56, !dbg !870
  %call113 = tail call i8* @realloc(i8* %27, i64 %mul) #9, !dbg !870
  %28 = bitcast i8* %call113 to %struct.ssipkey_s*, !dbg !870
  store %struct.ssipkey_s* %28, %struct.ssipkey_s** %pkeys, align 8, !dbg !870, !tbaa !498
  %cmp116 = icmp eq i8* %call113, null, !dbg !872
  br i1 %cmp116, label %return, label %if.end120, !dbg !872

if.end120:                                        ; preds = %if.then108, %if.end102
  br label %return, !dbg !873

return:                                           ; preds = %if.then108, %if.end58, %if.then15, %if.end, %entry, %if.end120, %if.end56
  %retval.0 = phi i32 [ 0, %if.end56 ], [ 0, %if.end120 ], [ 13, %entry ], [ 14, %if.end ], [ 4, %if.then15 ], [ 3, %if.end58 ], [ 3, %if.then108 ]
  ret i32 %retval.0, !dbg !873
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i64 @current_index_size(%struct.ssiindex_s* nocapture %g) #7 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !360), !dbg !874
  %flen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 8, !dbg !875
  %0 = load i32* %flen, align 4, !dbg !875, !tbaa !521
  %add = add i32 %0, 16, !dbg !875
  %conv = zext i32 %add to i64, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !361), !dbg !875
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0, !dbg !876
  %1 = load i32* %smode, align 4, !dbg !876, !tbaa !521
  %cmp = icmp eq i32 %1, 1, !dbg !876
  %plen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 11, !dbg !876
  %2 = load i32* %plen, align 4, !dbg !876, !tbaa !521
  %cond.v = select i1 %cmp, i32 22, i32 14, !dbg !876
  %cond = add i32 %cond.v, %2, !dbg !876
  %conv5 = zext i32 %cond to i64, !dbg !876
  tail call void @llvm.dbg.value(metadata !{i64 %conv5}, i64 0, metadata !362), !dbg !876
  %slen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 16, !dbg !877
  %3 = load i32* %slen, align 4, !dbg !877, !tbaa !521
  %add7 = add i32 %3, %2, !dbg !877
  %conv8 = zext i32 %add7 to i64, !dbg !877
  tail call void @llvm.dbg.value(metadata !{i64 %conv8}, i64 0, metadata !363), !dbg !877
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9, !dbg !878
  %4 = load i16* %nfiles, align 2, !dbg !878, !tbaa !517
  %conv9 = zext i16 %4 to i64, !dbg !878
  %mul = mul i64 %conv9, %conv, !dbg !878
  %add10 = add i64 %mul, 66, !dbg !878
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12, !dbg !878
  %5 = load i32* %nprimary, align 4, !dbg !878, !tbaa !521
  %conv11 = zext i32 %5 to i64, !dbg !878
  %mul12 = mul i64 %conv11, %conv5, !dbg !878
  %add13 = add i64 %add10, %mul12, !dbg !878
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17, !dbg !878
  %6 = load i32* %nsecondary, align 4, !dbg !878, !tbaa !521
  %conv14 = zext i32 %6 to i64, !dbg !878
  %mul15 = mul i64 %conv14, %conv8, !dbg !878
  %add16 = add i64 %add13, %mul15, !dbg !878
  %div = lshr i64 %add16, 20, !dbg !878
  tail call void @llvm.dbg.value(metadata !{i64 %div}, i64 0, metadata !364), !dbg !878
  ret i64 %div, !dbg !879
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @activate_external_sort(%struct.ssiindex_s* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !354), !dbg !880
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2, !dbg !881
  %0 = load i32* %external, align 4, !dbg !881, !tbaa !521
  %tobool = icmp eq i32 %0, 0, !dbg !881
  br i1 %tobool, label %if.end, label %return, !dbg !881

if.end:                                           ; preds = %entry
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 13, !dbg !882
  %1 = load i8** %ptmpfile, align 8, !dbg !882, !tbaa !498
  %call = tail call i32 @FileExists(i8* %1) #9, !dbg !882
  %tobool1 = icmp eq i32 %call, 0, !dbg !882
  br i1 %tobool1, label %if.end3, label %return, !dbg !882

if.end3:                                          ; preds = %if.end
  %stmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 18, !dbg !883
  %2 = load i8** %stmpfile, align 8, !dbg !883, !tbaa !498
  %call4 = tail call i32 @FileExists(i8* %2) #9, !dbg !883
  %tobool5 = icmp eq i32 %call4, 0, !dbg !883
  br i1 %tobool5, label %if.end7, label %return, !dbg !883

if.end7:                                          ; preds = %if.end3
  %3 = load i8** %ptmpfile, align 8, !dbg !884, !tbaa !498
  %call9 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #9, !dbg !884
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14, !dbg !884
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %ptmp, align 8, !dbg !884, !tbaa !498
  %cmp = icmp eq %struct._IO_FILE* %call9, null, !dbg !884
  br i1 %cmp, label %return, label %if.end11, !dbg !884

if.end11:                                         ; preds = %if.end7
  %4 = load i8** %stmpfile, align 8, !dbg !885, !tbaa !498
  %call13 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #9, !dbg !885
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19, !dbg !885
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %stmp, align 8, !dbg !885, !tbaa !498
  %cmp14 = icmp eq %struct._IO_FILE* %call13, null, !dbg !885
  br i1 %cmp14, label %return, label %for.cond.preheader, !dbg !885

for.cond.preheader:                               ; preds = %if.end11
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12, !dbg !886
  %5 = load i32* %nprimary, align 4, !dbg !886, !tbaa !521
  %cmp17195 = icmp eq i32 %5, 0, !dbg !886
  br i1 %cmp17195, label %for.cond67.preheader, label %for.body.lr.ph, !dbg !886

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0, !dbg !888
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !890
  br label %for.body, !dbg !886

for.cond67.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %6 = phi i32 [ 0, %for.cond.preheader ], [ %19, %for.inc ]
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17, !dbg !892
  %7 = load i32* %nsecondary, align 4, !dbg !892, !tbaa !521
  %cmp68193 = icmp eq i32 %7, 0, !dbg !892
  br i1 %cmp68193, label %for.cond82.preheader, label %for.body70.lr.ph, !dbg !892

for.body70.lr.ph:                                 ; preds = %for.cond67.preheader
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !894
  br label %for.body70, !dbg !892

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv204 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next205, %for.inc ]
  %8 = load i32* %smode, align 4, !dbg !888, !tbaa !521
  %cmp18 = icmp eq i32 %8, 0, !dbg !888
  %9 = load %struct._IO_FILE** %ptmp, align 8, !dbg !890, !tbaa !498
  %10 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !890, !tbaa !498
  %key = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 0, !dbg !890
  %11 = load i8** %key, align 8, !dbg !890, !tbaa !498
  %fnum = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 1, !dbg !890
  %12 = load i16* %fnum, align 2, !dbg !890, !tbaa !517
  %conv = zext i16 %12 to i32, !dbg !890
  %off = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 2, i32 1, !dbg !890
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !888

if.then19:                                        ; preds = %for.body
  %i32 = bitcast %union.anon* %off to i32*, !dbg !890
  %13 = load i32* %i32, align 4, !dbg !890, !tbaa !521
  %conv27 = zext i32 %13 to i64, !dbg !890
  %off31 = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 3, i32 1, !dbg !890
  %i3232 = bitcast %union.anon* %off31 to i32*, !dbg !890
  %14 = load i32* %i3232, align 4, !dbg !890, !tbaa !521
  %conv33 = zext i32 %14 to i64, !dbg !890
  %len = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 4, !dbg !890
  %15 = load i32* %len, align 4, !dbg !890, !tbaa !521
  %conv37 = zext i32 %15 to i64, !dbg !890
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), i8* %11, i32 %conv, i64 %conv27, i64 %conv33, i64 %conv37) #9, !dbg !890
  br label %for.inc, !dbg !895

if.else:                                          ; preds = %for.body
  %i64 = getelementptr inbounds %union.anon* %off, i64 0, i32 0, !dbg !896
  %16 = load i64* %i64, align 8, !dbg !896, !tbaa !629
  %i6459 = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 3, i32 1, i32 0, !dbg !896
  %17 = load i64* %i6459, align 8, !dbg !896, !tbaa !629
  %len63 = getelementptr inbounds %struct.ssipkey_s* %10, i64 %indvars.iv204, i32 4, !dbg !896
  %18 = load i32* %len63, align 4, !dbg !896, !tbaa !521
  %conv64 = zext i32 %18 to i64, !dbg !896
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i8* %11, i32 %conv, i64 %16, i64 %17, i64 %conv64) #9, !dbg !896
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.else
  %indvars.iv.next205 = add i64 %indvars.iv204, 1, !dbg !886
  %19 = load i32* %nprimary, align 4, !dbg !886, !tbaa !521
  %20 = trunc i64 %indvars.iv.next205 to i32, !dbg !886
  %cmp17 = icmp ult i32 %20, %19, !dbg !886
  br i1 %cmp17, label %for.body, label %for.cond67.preheader, !dbg !886

for.cond67.for.cond82.preheader_crit_edge:        ; preds = %for.body70
  %.pre = load i32* %nprimary, align 4, !dbg !898, !tbaa !521
  br label %for.cond82.preheader, !dbg !892

for.cond82.preheader:                             ; preds = %for.cond67.preheader, %for.cond67.for.cond82.preheader_crit_edge
  %21 = phi i32 [ 0, %for.cond67.preheader ], [ %27, %for.cond67.for.cond82.preheader_crit_edge ]
  %22 = phi i32 [ %6, %for.cond67.preheader ], [ %.pre, %for.cond67.for.cond82.preheader_crit_edge ]
  %cmp84191 = icmp eq i32 %22, 0, !dbg !898
  br i1 %cmp84191, label %for.cond94.preheader, label %for.body86.lr.ph, !dbg !898

for.body86.lr.ph:                                 ; preds = %for.cond82.preheader
  %pkeys88 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !898
  br label %for.body86, !dbg !898

for.body70:                                       ; preds = %for.body70, %for.body70.lr.ph
  %indvars.iv202 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next203, %for.body70 ]
  %23 = load %struct._IO_FILE** %stmp, align 8, !dbg !894, !tbaa !498
  %24 = load %struct.ssiskey_s** %skeys, align 8, !dbg !894, !tbaa !498
  %key74 = getelementptr inbounds %struct.ssiskey_s* %24, i64 %indvars.iv202, i32 0, !dbg !894
  %25 = load i8** %key74, align 8, !dbg !894, !tbaa !498
  %pkey = getelementptr inbounds %struct.ssiskey_s* %24, i64 %indvars.iv202, i32 1, !dbg !894
  %26 = load i8** %pkey, align 8, !dbg !894, !tbaa !498
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %25, i8* %26) #9, !dbg !894
  %indvars.iv.next203 = add i64 %indvars.iv202, 1, !dbg !892
  %27 = load i32* %nsecondary, align 4, !dbg !892, !tbaa !521
  %28 = trunc i64 %indvars.iv.next203 to i32, !dbg !892
  %cmp68 = icmp ult i32 %28, %27, !dbg !892
  br i1 %cmp68, label %for.body70, label %for.cond67.for.cond82.preheader_crit_edge, !dbg !892

for.cond82.for.cond94.preheader_crit_edge:        ; preds = %for.body86
  %.pre206 = load i32* %nsecondary, align 4, !dbg !900, !tbaa !521
  br label %for.cond94.preheader, !dbg !898

for.cond94.preheader:                             ; preds = %for.cond82.preheader, %for.cond82.for.cond94.preheader_crit_edge
  %29 = phi i32 [ %21, %for.cond82.preheader ], [ %.pre206, %for.cond82.for.cond94.preheader_crit_edge ]
  %cmp96189 = icmp eq i32 %29, 0, !dbg !900
  br i1 %cmp96189, label %for.end117, label %for.body98.lr.ph, !dbg !900

for.body98.lr.ph:                                 ; preds = %for.cond94.preheader
  %skeys100 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !900
  br label %for.body98, !dbg !900

for.body86:                                       ; preds = %for.body86.lr.ph, %for.body86
  %indvars.iv200 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next201, %for.body86 ]
  %30 = load %struct.ssipkey_s** %pkeys88, align 8, !dbg !898, !tbaa !498
  %key90 = getelementptr inbounds %struct.ssipkey_s* %30, i64 %indvars.iv200, i32 0, !dbg !898
  %31 = load i8** %key90, align 8, !dbg !898, !tbaa !498
  tail call void @free(i8* %31) #9, !dbg !898
  %indvars.iv.next201 = add i64 %indvars.iv200, 1, !dbg !898
  %32 = load i32* %nprimary, align 4, !dbg !898, !tbaa !521
  %33 = trunc i64 %indvars.iv.next201 to i32, !dbg !898
  %cmp84 = icmp ult i32 %33, %32, !dbg !898
  br i1 %cmp84, label %for.body86, label %for.cond82.for.cond94.preheader_crit_edge, !dbg !898

for.cond106.preheader:                            ; preds = %for.body98
  %phitmp = icmp eq i32 %36, 0, !dbg !900
  br i1 %phitmp, label %for.end117, label %for.body110.lr.ph, !dbg !902

for.body110.lr.ph:                                ; preds = %for.cond106.preheader
  %skeys112 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !902
  br label %for.body110, !dbg !902

for.body98:                                       ; preds = %for.body98.lr.ph, %for.body98
  %indvars.iv198 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next199, %for.body98 ]
  %34 = load %struct.ssiskey_s** %skeys100, align 8, !dbg !900, !tbaa !498
  %key102 = getelementptr inbounds %struct.ssiskey_s* %34, i64 %indvars.iv198, i32 0, !dbg !900
  %35 = load i8** %key102, align 8, !dbg !900, !tbaa !498
  tail call void @free(i8* %35) #9, !dbg !900
  %indvars.iv.next199 = add i64 %indvars.iv198, 1, !dbg !900
  %36 = load i32* %nsecondary, align 4, !dbg !900, !tbaa !521
  %37 = trunc i64 %indvars.iv.next199 to i32, !dbg !900
  %cmp96 = icmp ult i32 %37, %36, !dbg !900
  br i1 %cmp96, label %for.body98, label %for.cond106.preheader, !dbg !900

for.body110:                                      ; preds = %for.body110.lr.ph, %for.body110
  %indvars.iv = phi i64 [ 0, %for.body110.lr.ph ], [ %indvars.iv.next, %for.body110 ]
  %38 = load %struct.ssiskey_s** %skeys112, align 8, !dbg !902, !tbaa !498
  %pkey114 = getelementptr inbounds %struct.ssiskey_s* %38, i64 %indvars.iv, i32 1, !dbg !902
  %39 = load i8** %pkey114, align 8, !dbg !902, !tbaa !498
  tail call void @free(i8* %39) #9, !dbg !902
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !902
  %40 = load i32* %nsecondary, align 4, !dbg !902, !tbaa !521
  %41 = trunc i64 %indvars.iv.next to i32, !dbg !902
  %cmp108 = icmp ult i32 %41, %40, !dbg !902
  br i1 %cmp108, label %for.body110, label %for.end117, !dbg !902

for.end117:                                       ; preds = %for.cond94.preheader, %for.body110, %for.cond106.preheader
  %pkeys118 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !904
  %42 = load %struct.ssipkey_s** %pkeys118, align 8, !dbg !904, !tbaa !498
  %cmp119 = icmp eq %struct.ssipkey_s* %42, null, !dbg !904
  br i1 %cmp119, label %if.end123, label %if.then121, !dbg !904

if.then121:                                       ; preds = %for.end117
  %43 = bitcast %struct.ssipkey_s* %42 to i8*, !dbg !904
  tail call void @free(i8* %43) #9, !dbg !904
  br label %if.end123, !dbg !904

if.end123:                                        ; preds = %for.end117, %if.then121
  %skeys124 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !905
  %44 = load %struct.ssiskey_s** %skeys124, align 8, !dbg !905, !tbaa !498
  %cmp125 = icmp eq %struct.ssiskey_s* %44, null, !dbg !905
  br i1 %cmp125, label %if.end129, label %if.then127, !dbg !905

if.then127:                                       ; preds = %if.end123
  %45 = bitcast %struct.ssiskey_s* %44 to i8*, !dbg !905
  tail call void @free(i8* %45) #9, !dbg !905
  br label %if.end129, !dbg !905

if.end129:                                        ; preds = %if.end123, %if.then127
  store %struct.ssipkey_s* null, %struct.ssipkey_s** %pkeys118, align 8, !dbg !906, !tbaa !498
  store %struct.ssiskey_s* null, %struct.ssiskey_s** %skeys124, align 8, !dbg !907, !tbaa !498
  store i32 1, i32* %external, align 4, !dbg !908, !tbaa !521
  br label %return, !dbg !909

return:                                           ; preds = %if.end11, %if.end7, %if.end3, %if.end, %entry, %if.end129
  %retval.0 = phi i32 [ 0, %if.end129 ], [ 0, %entry ], [ 1, %if.end ], [ 1, %if.end3 ], [ 1, %if.end7 ], [ 1, %if.end11 ]
  ret i32 %retval.0, !dbg !909
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define i32 @SSIAddSecondaryKeyToIndex(%struct.ssiindex_s* nocapture %g, i8* %key, i8* %pkey) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !299), !dbg !910
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !300), !dbg !910
  tail call void @llvm.dbg.value(metadata !{i8* %pkey}, i64 0, metadata !301), !dbg !910
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17, !dbg !911
  %0 = load i32* %nsecondary, align 4, !dbg !911, !tbaa !521
  %cmp = icmp ugt i32 %0, 2147483646, !dbg !911
  br i1 %cmp, label %return, label %if.end, !dbg !911

if.end:                                           ; preds = %entry
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2, !dbg !912
  %1 = load i32* %external, align 4, !dbg !912, !tbaa !521
  %tobool = icmp eq i32 %1, 0, !dbg !912
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !912

land.lhs.true:                                    ; preds = %if.end
  %call = tail call fastcc i64 @current_index_size(%struct.ssiindex_s* %g) #10, !dbg !912
  %max_ram = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 3, !dbg !912
  %2 = load i32* %max_ram, align 4, !dbg !912, !tbaa !521
  %conv2 = sext i32 %2 to i64, !dbg !912
  %cmp3 = icmp ult i64 %call, %conv2, !dbg !912
  br i1 %cmp3, label %if.end11, label %if.then5, !dbg !912

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call fastcc i32 @activate_external_sort(%struct.ssiindex_s* %g) #10, !dbg !913
  %cmp7 = icmp eq i32 %call6, 0, !dbg !913
  br i1 %cmp7, label %if.end11, label %return, !dbg !913

if.end11:                                         ; preds = %if.then5, %land.lhs.true, %if.end
  %call12 = tail call i64 @strlen(i8* %key) #11, !dbg !914
  %conv13 = trunc i64 %call12 to i32, !dbg !914
  tail call void @llvm.dbg.value(metadata !{i32 %conv13}, i64 0, metadata !302), !dbg !914
  %add = add nsw i32 %conv13, 1, !dbg !915
  %slen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 16, !dbg !915
  %3 = load i32* %slen, align 4, !dbg !915, !tbaa !521
  %cmp14 = icmp ugt i32 %add, %3, !dbg !915
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !915

if.then16:                                        ; preds = %if.end11
  store i32 %add, i32* %slen, align 4, !dbg !915, !tbaa !521
  br label %if.end19, !dbg !915

if.end19:                                         ; preds = %if.end11, %if.then16
  %4 = load i32* %external, align 4, !dbg !916, !tbaa !521
  %tobool21 = icmp eq i32 %4, 0, !dbg !916
  br i1 %tobool21, label %if.end25, label %if.then22, !dbg !916

if.then22:                                        ; preds = %if.end19
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19, !dbg !917
  %5 = load %struct._IO_FILE** %stmp, align 8, !dbg !917, !tbaa !498
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %key, i8* %pkey) #9, !dbg !917
  %6 = load i32* %nsecondary, align 4, !dbg !919, !tbaa !521
  %inc = add i32 %6, 1, !dbg !919
  store i32 %inc, i32* %nsecondary, align 4, !dbg !919, !tbaa !521
  br label %return, !dbg !920

if.end25:                                         ; preds = %if.end19
  %call26 = tail call i8* @sre_strdup(i8* %key, i32 %conv13) #9, !dbg !921
  %7 = load i32* %nsecondary, align 4, !dbg !921, !tbaa !521
  %idxprom = zext i32 %7 to i64, !dbg !921
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !921
  %8 = load %struct.ssiskey_s** %skeys, align 8, !dbg !921, !tbaa !498
  %key28 = getelementptr inbounds %struct.ssiskey_s* %8, i64 %idxprom, i32 0, !dbg !921
  store i8* %call26, i8** %key28, align 8, !dbg !921, !tbaa !498
  %cmp29 = icmp eq i8* %call26, null, !dbg !921
  br i1 %cmp29, label %return, label %if.end32, !dbg !921

if.end32:                                         ; preds = %if.end25
  %call33 = tail call i8* @sre_strdup(i8* %pkey, i32 -1) #9, !dbg !922
  %9 = load i32* %nsecondary, align 4, !dbg !922, !tbaa !521
  %idxprom35 = zext i32 %9 to i64, !dbg !922
  %10 = load %struct.ssiskey_s** %skeys, align 8, !dbg !922, !tbaa !498
  %pkey38 = getelementptr inbounds %struct.ssiskey_s* %10, i64 %idxprom35, i32 1, !dbg !922
  store i8* %call33, i8** %pkey38, align 8, !dbg !922, !tbaa !498
  %cmp39 = icmp eq i8* %call33, null, !dbg !922
  br i1 %cmp39, label %return, label %if.end42, !dbg !922

if.end42:                                         ; preds = %if.end32
  %inc44 = add i32 %9, 1, !dbg !923
  store i32 %inc44, i32* %nsecondary, align 4, !dbg !923, !tbaa !521
  %rem = urem i32 %inc44, 100, !dbg !924
  %cmp46 = icmp eq i32 %rem, 0, !dbg !924
  br i1 %cmp46, label %if.then48, label %if.end60, !dbg !924

if.then48:                                        ; preds = %if.end42
  %11 = load %struct.ssiskey_s** %skeys, align 8, !dbg !925, !tbaa !498
  %12 = bitcast %struct.ssiskey_s* %11 to i8*, !dbg !925
  %add51 = add i32 %9, 101, !dbg !925
  %conv52 = zext i32 %add51 to i64, !dbg !925
  %mul = shl nuw nsw i64 %conv52, 4, !dbg !925
  %call53 = tail call i8* @realloc(i8* %12, i64 %mul) #9, !dbg !925
  %13 = bitcast i8* %call53 to %struct.ssiskey_s*, !dbg !925
  store %struct.ssiskey_s* %13, %struct.ssiskey_s** %skeys, align 8, !dbg !925, !tbaa !498
  %cmp56 = icmp eq i8* %call53, null, !dbg !927
  br i1 %cmp56, label %return, label %if.end60, !dbg !927

if.end60:                                         ; preds = %if.then48, %if.end42
  br label %return, !dbg !928

return:                                           ; preds = %if.then48, %if.end32, %if.end25, %if.then5, %entry, %if.end60, %if.then22
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end60 ], [ 14, %entry ], [ 4, %if.then5 ], [ 3, %if.end25 ], [ 3, %if.end32 ], [ 3, %if.then48 ]
  ret i32 %retval.0, !dbg !928
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
  call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !307), !dbg !929
  call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !308), !dbg !929
  %call = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #9, !dbg !930
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !309), !dbg !930
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !930
  br i1 %cmp, label %return, label %if.end, !dbg !930

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !310), !dbg !931
  %call1 = call fastcc i64 @current_index_size(%struct.ssiindex_s* %g) #10, !dbg !932
  %cmp2 = icmp ugt i64 %call1, 2046, !dbg !932
  %imode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 1, !dbg !933
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !932

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %imode, align 4, !dbg !933, !tbaa !521
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([115 x i8]* @.str8, i64 0, i64 0)) #9, !dbg !935
  br label %if.end4, !dbg !936

if.end4:                                          ; preds = %if.end, %if.then3
  %flen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 8, !dbg !937
  %0 = load i32* %flen, align 4, !dbg !937, !tbaa !521
  %add = add i32 %0, 16, !dbg !937
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !314), !dbg !937
  %smode = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 0, !dbg !938
  %1 = load i32* %smode, align 4, !dbg !938, !tbaa !521
  %cmp5 = icmp eq i32 %1, 1, !dbg !938
  %plen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 11, !dbg !938
  %2 = load i32* %plen, align 4, !dbg !938, !tbaa !521
  %cond.v = select i1 %cmp5, i32 22, i32 14, !dbg !938
  %cond = add i32 %cond.v, %2, !dbg !938
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !315), !dbg !938
  %slen = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 16, !dbg !939
  %3 = load i32* %slen, align 4, !dbg !939, !tbaa !521
  %add10 = add i32 %3, %2, !dbg !939
  call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !316), !dbg !939
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !312), !dbg !940
  call void @llvm.dbg.value(metadata !941, i64 0, metadata !312), !dbg !942
  %. = zext i1 %cmp5 to i32, !dbg !942
  %4 = load i32* %imode, align 4, !dbg !943, !tbaa !521
  %cmp16 = icmp eq i32 %4, 1, !dbg !943
  %or18 = or i32 %., 2, !dbg !943
  call void @llvm.dbg.value(metadata !{i32 %or18}, i64 0, metadata !312), !dbg !943
  %header_flags.1 = select i1 %cmp16, i32 %or18, i32 %., !dbg !943
  %and = and i32 %header_flags.1, 2, !dbg !944
  %tobool = icmp ne i32 %and, 0, !dbg !944
  %conv = select i1 %tobool, i64 66, i64 54, !dbg !944
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !317), !dbg !944
  %nfiles = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 9, !dbg !945
  %5 = load i16* %nfiles, align 2, !dbg !945, !tbaa !517
  %conv21 = zext i16 %5 to i32, !dbg !945
  %mul = mul i32 %conv21, %add, !dbg !945
  %conv22 = zext i32 %mul to i64, !dbg !945
  %add23 = add i64 %conv, %conv22, !dbg !945
  call void @llvm.dbg.value(metadata !{i64 %add23}, i64 0, metadata !318), !dbg !945
  %nprimary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 12, !dbg !946
  %6 = load i32* %nprimary, align 4, !dbg !946, !tbaa !521
  %mul24 = mul i32 %6, %cond, !dbg !946
  %conv25 = zext i32 %mul24 to i64, !dbg !946
  %add26 = add i64 %add23, %conv25, !dbg !946
  call void @llvm.dbg.value(metadata !{i64 %add26}, i64 0, metadata !319), !dbg !946
  %external = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 2, !dbg !947
  %7 = load i32* %external, align 4, !dbg !947, !tbaa !521
  %tobool27 = icmp eq i32 %7, 0, !dbg !947
  br i1 %tobool27, label %if.else, label %if.then28, !dbg !947

if.then28:                                        ; preds = %if.end4
  %8 = getelementptr inbounds [1024 x i8]* %cmd, i64 0, i64 0, !dbg !948
  call void @llvm.lifetime.start(i64 1024, i8* %8) #3, !dbg !948
  call void @llvm.dbg.declare(metadata !{[1024 x i8]* %cmd}, metadata !322), !dbg !948
  %ptmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14, !dbg !949
  %9 = load %struct._IO_FILE** %ptmp, align 8, !dbg !949, !tbaa !498
  %call29 = call i32 @fclose(%struct._IO_FILE* %9) #9, !dbg !949
  store %struct._IO_FILE* null, %struct._IO_FILE** %ptmp, align 8, !dbg !950, !tbaa !498
  %ptmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 13, !dbg !951
  %10 = load i8** %ptmpfile, align 8, !dbg !951, !tbaa !498
  %call32 = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), i8* %10, i8* %10) #9, !dbg !951
  %call34 = call i32 @system(i8* %8) #9, !dbg !952
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !310), !dbg !952
  %cmp35 = icmp eq i32 %call34, 0, !dbg !952
  br i1 %cmp35, label %if.end38, label %return, !dbg !952

if.end38:                                         ; preds = %if.then28
  %11 = load i8** %ptmpfile, align 8, !dbg !953, !tbaa !498
  %call40 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #9, !dbg !953
  store %struct._IO_FILE* %call40, %struct._IO_FILE** %ptmp, align 8, !dbg !953, !tbaa !498
  %cmp42 = icmp eq %struct._IO_FILE* %call40, null, !dbg !953
  br i1 %cmp42, label %return, label %if.end45, !dbg !953

if.end45:                                         ; preds = %if.end38
  %stmp = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19, !dbg !954
  %12 = load %struct._IO_FILE** %stmp, align 8, !dbg !954, !tbaa !498
  %call46 = call i32 @fclose(%struct._IO_FILE* %12) #9, !dbg !954
  store %struct._IO_FILE* null, %struct._IO_FILE** %stmp, align 8, !dbg !955, !tbaa !498
  %stmpfile = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 18, !dbg !956
  %13 = load i8** %stmpfile, align 8, !dbg !956, !tbaa !498
  %call50 = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), i8* %13, i8* %13) #9, !dbg !956
  %call52 = call i32 @system(i8* %8) #9, !dbg !957
  call void @llvm.dbg.value(metadata !{i32 %call52}, i64 0, metadata !310), !dbg !957
  %cmp53 = icmp eq i32 %call52, 0, !dbg !957
  br i1 %cmp53, label %cleanup, label %return, !dbg !957

cleanup:                                          ; preds = %if.end45
  %14 = load i8** %stmpfile, align 8, !dbg !958, !tbaa !498
  %call58 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #9, !dbg !958
  store %struct._IO_FILE* %call58, %struct._IO_FILE** %stmp, align 8, !dbg !958, !tbaa !498
  %cmp60 = icmp eq %struct._IO_FILE* %call58, null, !dbg !958
  call void @llvm.lifetime.end(i64 1024, i8* %8) #3, !dbg !959
  br i1 %cmp60, label %return, label %if.end67

if.else:                                          ; preds = %if.end4
  %pkeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !960
  %15 = load %struct.ssipkey_s** %pkeys, align 8, !dbg !960, !tbaa !498
  %16 = bitcast %struct.ssipkey_s* %15 to i8*, !dbg !960
  %call65 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %16, i32 %6, i64 56, i32 (i8*, i8*)* @pkeysort) #9, !dbg !960
  %skeys = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !962
  %17 = load %struct.ssiskey_s** %skeys, align 8, !dbg !962, !tbaa !498
  %18 = bitcast %struct.ssiskey_s* %17 to i8*, !dbg !962
  %nsecondary = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17, !dbg !962
  %19 = load i32* %nsecondary, align 4, !dbg !962, !tbaa !521
  %call66 = call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %18, i32 %19, i64 16, i32 (i8*, i8*)* @skeysort) #9, !dbg !962
  br label %if.end67

if.end67:                                         ; preds = %cleanup, %if.else
  %20 = bitcast i32* %n.addr.i to i8*, !dbg !963
  call void @llvm.lifetime.start(i64 4, i8* %20) #3, !dbg !963
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !965) #3, !dbg !963
  call void @llvm.dbg.value(metadata !966, i64 0, metadata !967) #3, !dbg !963
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i}, metadata !440) #3, !dbg !963
  %call.i = call i32 @sre_hton32(i32 -202118735) #9, !dbg !968
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !967) #3, !dbg !968
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !440), !dbg !968
  store i32 %call.i, i32* %n.addr.i, align 4, !dbg !968, !tbaa !521
  %call1.i = call i64 @fwrite(i8* %20, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !969
  %cmp.i = icmp eq i64 %call1.i, 1, !dbg !969
  call void @llvm.lifetime.end(i64 4, i8* %20) #3, !dbg !970
  br i1 %cmp.i, label %if.end71, label %return, !dbg !964

if.end71:                                         ; preds = %if.end67
  %21 = bitcast i32* %n.addr.i584 to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 4, i8* %21) #3, !dbg !971
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !973) #3, !dbg !971
  call void @llvm.dbg.value(metadata !{i32 %header_flags.1}, i64 0, metadata !974) #3, !dbg !971
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i584}, metadata !440) #3, !dbg !971
  %call.i585 = call i32 @sre_hton32(i32 %header_flags.1) #9, !dbg !975
  call void @llvm.dbg.value(metadata !{i32 %call.i585}, i64 0, metadata !974) #3, !dbg !975
  call void @llvm.dbg.value(metadata !{i32 %call.i585}, i64 0, metadata !440), !dbg !975
  store i32 %call.i585, i32* %n.addr.i584, align 4, !dbg !975, !tbaa !521
  %call1.i586 = call i64 @fwrite(i8* %21, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !976
  %cmp.i587 = icmp eq i64 %call1.i586, 1, !dbg !976
  call void @llvm.lifetime.end(i64 4, i8* %21) #3, !dbg !977
  br i1 %cmp.i587, label %if.end75, label %return, !dbg !972

if.end75:                                         ; preds = %if.end71
  %22 = load i16* %nfiles, align 2, !dbg !978, !tbaa !517
  %23 = bitcast i16* %n.addr.i589 to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 2, i8* %23) #3, !dbg !979
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !980) #3, !dbg !979
  call void @llvm.dbg.value(metadata !{i16 %22}, i64 0, metadata !981) #3, !dbg !979
  call void @llvm.dbg.declare(metadata !{i16* %n.addr.i589}, metadata !453) #3, !dbg !979
  %call.i590 = call zeroext i16 @sre_hton16(i16 zeroext %22) #9, !dbg !982
  call void @llvm.dbg.value(metadata !{i16 %call.i590}, i64 0, metadata !981) #3, !dbg !982
  call void @llvm.dbg.value(metadata !{i16 %call.i590}, i64 0, metadata !453), !dbg !982
  store i16 %call.i590, i16* %n.addr.i589, align 2, !dbg !982, !tbaa !517
  %call1.i591 = call i64 @fwrite(i8* %23, i64 2, i64 1, %struct._IO_FILE* %call) #9, !dbg !983
  %cmp.i592 = icmp eq i64 %call1.i591, 1, !dbg !983
  call void @llvm.lifetime.end(i64 2, i8* %23) #3, !dbg !984
  br i1 %cmp.i592, label %if.end80, label %return, !dbg !978

if.end80:                                         ; preds = %if.end75
  %24 = load i32* %nprimary, align 4, !dbg !985, !tbaa !521
  %25 = bitcast i32* %n.addr.i594 to i8*, !dbg !986
  call void @llvm.lifetime.start(i64 4, i8* %25) #3, !dbg !986
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !987) #3, !dbg !986
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !988) #3, !dbg !986
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i594}, metadata !440) #3, !dbg !986
  %call.i595 = call i32 @sre_hton32(i32 %24) #9, !dbg !989
  call void @llvm.dbg.value(metadata !{i32 %call.i595}, i64 0, metadata !988) #3, !dbg !989
  call void @llvm.dbg.value(metadata !{i32 %call.i595}, i64 0, metadata !440), !dbg !989
  store i32 %call.i595, i32* %n.addr.i594, align 4, !dbg !989, !tbaa !521
  %call1.i596 = call i64 @fwrite(i8* %25, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !990
  %cmp.i597 = icmp eq i64 %call1.i596, 1, !dbg !990
  call void @llvm.lifetime.end(i64 4, i8* %25) #3, !dbg !991
  br i1 %cmp.i597, label %if.end85, label %return, !dbg !985

if.end85:                                         ; preds = %if.end80
  %nsecondary86 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 17, !dbg !992
  %26 = load i32* %nsecondary86, align 4, !dbg !992, !tbaa !521
  %27 = bitcast i32* %n.addr.i599 to i8*, !dbg !993
  call void @llvm.lifetime.start(i64 4, i8* %27) #3, !dbg !993
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !994) #3, !dbg !993
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !995) #3, !dbg !993
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i599}, metadata !440) #3, !dbg !993
  %call.i600 = call i32 @sre_hton32(i32 %26) #9, !dbg !996
  call void @llvm.dbg.value(metadata !{i32 %call.i600}, i64 0, metadata !995) #3, !dbg !996
  call void @llvm.dbg.value(metadata !{i32 %call.i600}, i64 0, metadata !440), !dbg !996
  store i32 %call.i600, i32* %n.addr.i599, align 4, !dbg !996, !tbaa !521
  %call1.i601 = call i64 @fwrite(i8* %27, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !997
  %cmp.i602 = icmp eq i64 %call1.i601, 1, !dbg !997
  call void @llvm.lifetime.end(i64 4, i8* %27) #3, !dbg !998
  br i1 %cmp.i602, label %if.end90, label %return, !dbg !992

if.end90:                                         ; preds = %if.end85
  %28 = load i32* %flen, align 4, !dbg !999, !tbaa !521
  %29 = bitcast i32* %n.addr.i604 to i8*, !dbg !1000
  call void @llvm.lifetime.start(i64 4, i8* %29) #3, !dbg !1000
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1001) #3, !dbg !1000
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !1002) #3, !dbg !1000
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i604}, metadata !440) #3, !dbg !1000
  %call.i605 = call i32 @sre_hton32(i32 %28) #9, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32 %call.i605}, i64 0, metadata !1002) #3, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32 %call.i605}, i64 0, metadata !440), !dbg !1003
  store i32 %call.i605, i32* %n.addr.i604, align 4, !dbg !1003, !tbaa !521
  %call1.i606 = call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1004
  %cmp.i607 = icmp eq i64 %call1.i606, 1, !dbg !1004
  call void @llvm.lifetime.end(i64 4, i8* %29) #3, !dbg !1005
  br i1 %cmp.i607, label %if.end95, label %return, !dbg !999

if.end95:                                         ; preds = %if.end90
  %30 = load i32* %plen, align 4, !dbg !1006, !tbaa !521
  %31 = bitcast i32* %n.addr.i609 to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 4, i8* %31) #3, !dbg !1007
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1008) #3, !dbg !1007
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !1009) #3, !dbg !1007
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i609}, metadata !440) #3, !dbg !1007
  %call.i610 = call i32 @sre_hton32(i32 %30) #9, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32 %call.i610}, i64 0, metadata !1009) #3, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32 %call.i610}, i64 0, metadata !440), !dbg !1010
  store i32 %call.i610, i32* %n.addr.i609, align 4, !dbg !1010, !tbaa !521
  %call1.i611 = call i64 @fwrite(i8* %31, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1011
  %cmp.i612 = icmp eq i64 %call1.i611, 1, !dbg !1011
  call void @llvm.lifetime.end(i64 4, i8* %31) #3, !dbg !1012
  br i1 %cmp.i612, label %if.end100, label %return, !dbg !1006

if.end100:                                        ; preds = %if.end95
  %32 = load i32* %slen, align 4, !dbg !1013, !tbaa !521
  %33 = bitcast i32* %n.addr.i614 to i8*, !dbg !1014
  call void @llvm.lifetime.start(i64 4, i8* %33) #3, !dbg !1014
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1015) #3, !dbg !1014
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !1016) #3, !dbg !1014
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i614}, metadata !440) #3, !dbg !1014
  %call.i615 = call i32 @sre_hton32(i32 %32) #9, !dbg !1017
  call void @llvm.dbg.value(metadata !{i32 %call.i615}, i64 0, metadata !1016) #3, !dbg !1017
  call void @llvm.dbg.value(metadata !{i32 %call.i615}, i64 0, metadata !440), !dbg !1017
  store i32 %call.i615, i32* %n.addr.i614, align 4, !dbg !1017, !tbaa !521
  %call1.i616 = call i64 @fwrite(i8* %33, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1018
  %cmp.i617 = icmp eq i64 %call1.i616, 1, !dbg !1018
  call void @llvm.lifetime.end(i64 4, i8* %33) #3, !dbg !1019
  br i1 %cmp.i617, label %if.end105, label %return, !dbg !1013

if.end105:                                        ; preds = %if.end100
  %34 = bitcast i32* %n.addr.i619 to i8*, !dbg !1020
  call void @llvm.lifetime.start(i64 4, i8* %34) #3, !dbg !1020
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1022) #3, !dbg !1020
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !1023) #3, !dbg !1020
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i619}, metadata !440) #3, !dbg !1020
  %call.i620 = call i32 @sre_hton32(i32 %add) #9, !dbg !1024
  call void @llvm.dbg.value(metadata !{i32 %call.i620}, i64 0, metadata !1023) #3, !dbg !1024
  call void @llvm.dbg.value(metadata !{i32 %call.i620}, i64 0, metadata !440), !dbg !1024
  store i32 %call.i620, i32* %n.addr.i619, align 4, !dbg !1024, !tbaa !521
  %call1.i621 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1025
  %cmp.i622 = icmp eq i64 %call1.i621, 1, !dbg !1025
  call void @llvm.lifetime.end(i64 4, i8* %34) #3, !dbg !1026
  br i1 %cmp.i622, label %if.end109, label %return, !dbg !1021

if.end109:                                        ; preds = %if.end105
  %35 = bitcast i32* %n.addr.i624 to i8*, !dbg !1027
  call void @llvm.lifetime.start(i64 4, i8* %35) #3, !dbg !1027
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1029) #3, !dbg !1027
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !1030) #3, !dbg !1027
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i624}, metadata !440) #3, !dbg !1027
  %call.i625 = call i32 @sre_hton32(i32 %cond) #9, !dbg !1031
  call void @llvm.dbg.value(metadata !{i32 %call.i625}, i64 0, metadata !1030) #3, !dbg !1031
  call void @llvm.dbg.value(metadata !{i32 %call.i625}, i64 0, metadata !440), !dbg !1031
  store i32 %call.i625, i32* %n.addr.i624, align 4, !dbg !1031, !tbaa !521
  %call1.i626 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1032
  %cmp.i627 = icmp eq i64 %call1.i626, 1, !dbg !1032
  call void @llvm.lifetime.end(i64 4, i8* %35) #3, !dbg !1033
  br i1 %cmp.i627, label %if.end113, label %return, !dbg !1028

if.end113:                                        ; preds = %if.end109
  %36 = bitcast i32* %n.addr.i629 to i8*, !dbg !1034
  call void @llvm.lifetime.start(i64 4, i8* %36) #3, !dbg !1034
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1036) #3, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !1037) #3, !dbg !1034
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i629}, metadata !440) #3, !dbg !1034
  %call.i630 = call i32 @sre_hton32(i32 %add10) #9, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %call.i630}, i64 0, metadata !1037) #3, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %call.i630}, i64 0, metadata !440), !dbg !1038
  store i32 %call.i630, i32* %n.addr.i629, align 4, !dbg !1038, !tbaa !521
  %call1.i631 = call i64 @fwrite(i8* %36, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1039
  %cmp.i632 = icmp eq i64 %call1.i631, 1, !dbg !1039
  call void @llvm.lifetime.end(i64 4, i8* %36) #3, !dbg !1040
  br i1 %cmp.i632, label %if.end117, label %return, !dbg !1035

if.end117:                                        ; preds = %if.end113
  %37 = load i32* %imode, align 4, !dbg !1041, !tbaa !521
  %cmp119 = icmp eq i32 %37, 0, !dbg !1041
  br i1 %cmp119, label %if.then121, label %if.else137, !dbg !1041

if.then121:                                       ; preds = %if.end117
  %conv122 = trunc i64 %conv to i32, !dbg !1042
  %38 = bitcast i32* %n.addr.i634 to i8*, !dbg !1044
  call void @llvm.lifetime.start(i64 4, i8* %38) #3, !dbg !1044
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1045) #3, !dbg !1044
  call void @llvm.dbg.value(metadata !{i32 %conv122}, i64 0, metadata !1046) #3, !dbg !1044
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i634}, metadata !440) #3, !dbg !1044
  %call.i635 = call i32 @sre_hton32(i32 %conv122) #9, !dbg !1047
  call void @llvm.dbg.value(metadata !{i32 %call.i635}, i64 0, metadata !1046) #3, !dbg !1047
  call void @llvm.dbg.value(metadata !{i32 %call.i635}, i64 0, metadata !440), !dbg !1047
  store i32 %call.i635, i32* %n.addr.i634, align 4, !dbg !1047, !tbaa !521
  %call1.i636 = call i64 @fwrite(i8* %38, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1048
  %cmp.i637 = icmp eq i64 %call1.i636, 1, !dbg !1048
  call void @llvm.lifetime.end(i64 4, i8* %38) #3, !dbg !1049
  br i1 %cmp.i637, label %if.end126, label %return, !dbg !1042

if.end126:                                        ; preds = %if.then121
  %conv127 = trunc i64 %add23 to i32, !dbg !1050
  %39 = bitcast i32* %n.addr.i639 to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 4, i8* %39) #3, !dbg !1051
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1052) #3, !dbg !1051
  call void @llvm.dbg.value(metadata !{i32 %conv127}, i64 0, metadata !1053) #3, !dbg !1051
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i639}, metadata !440) #3, !dbg !1051
  %call.i640 = call i32 @sre_hton32(i32 %conv127) #9, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32 %call.i640}, i64 0, metadata !1053) #3, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32 %call.i640}, i64 0, metadata !440), !dbg !1054
  store i32 %call.i640, i32* %n.addr.i639, align 4, !dbg !1054, !tbaa !521
  %call1.i641 = call i64 @fwrite(i8* %39, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1055
  %cmp.i642 = icmp eq i64 %call1.i641, 1, !dbg !1055
  call void @llvm.lifetime.end(i64 4, i8* %39) #3, !dbg !1056
  br i1 %cmp.i642, label %if.end131, label %return, !dbg !1050

if.end131:                                        ; preds = %if.end126
  %conv132 = trunc i64 %add26 to i32, !dbg !1057
  %40 = bitcast i32* %n.addr.i644 to i8*, !dbg !1058
  call void @llvm.lifetime.start(i64 4, i8* %40) #3, !dbg !1058
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1059) #3, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %conv132}, i64 0, metadata !1060) #3, !dbg !1058
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i644}, metadata !440) #3, !dbg !1058
  %call.i645 = call i32 @sre_hton32(i32 %conv132) #9, !dbg !1061
  call void @llvm.dbg.value(metadata !{i32 %call.i645}, i64 0, metadata !1060) #3, !dbg !1061
  call void @llvm.dbg.value(metadata !{i32 %call.i645}, i64 0, metadata !440), !dbg !1061
  store i32 %call.i645, i32* %n.addr.i644, align 4, !dbg !1061, !tbaa !521
  %call1.i646 = call i64 @fwrite(i8* %40, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1062
  %cmp.i647 = icmp eq i64 %call1.i646, 1, !dbg !1062
  call void @llvm.lifetime.end(i64 4, i8* %40) #3, !dbg !1063
  br i1 %cmp.i647, label %if.end150, label %return, !dbg !1057

if.else137:                                       ; preds = %if.end117
  %41 = bitcast i64* %n.addr.i649 to i8*, !dbg !1064
  call void @llvm.lifetime.start(i64 8, i8* %41) #3, !dbg !1064
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1067) #3, !dbg !1064
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !1068) #3, !dbg !1064
  call void @llvm.dbg.declare(metadata !{i64* %n.addr.i649}, metadata !434) #3, !dbg !1064
  %call.i650 = call i64 @sre_hton64(i64 %conv) #9, !dbg !1069
  call void @llvm.dbg.value(metadata !{i64 %call.i650}, i64 0, metadata !1068) #3, !dbg !1069
  call void @llvm.dbg.value(metadata !{i64 %call.i650}, i64 0, metadata !434), !dbg !1069
  store i64 %call.i650, i64* %n.addr.i649, align 8, !dbg !1069, !tbaa !629
  %call1.i651 = call i64 @fwrite(i8* %41, i64 8, i64 1, %struct._IO_FILE* %call) #9, !dbg !1070
  %cmp.i652 = icmp eq i64 %call1.i651, 1, !dbg !1070
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1071
  br i1 %cmp.i652, label %if.end141, label %return, !dbg !1065

if.end141:                                        ; preds = %if.else137
  %42 = bitcast i64* %n.addr.i654 to i8*, !dbg !1072
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !1072
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1074) #3, !dbg !1072
  call void @llvm.dbg.value(metadata !{i64 %add23}, i64 0, metadata !1075) #3, !dbg !1072
  call void @llvm.dbg.declare(metadata !{i64* %n.addr.i654}, metadata !434) #3, !dbg !1072
  %call.i655 = call i64 @sre_hton64(i64 %add23) #9, !dbg !1076
  call void @llvm.dbg.value(metadata !{i64 %call.i655}, i64 0, metadata !1075) #3, !dbg !1076
  call void @llvm.dbg.value(metadata !{i64 %call.i655}, i64 0, metadata !434), !dbg !1076
  store i64 %call.i655, i64* %n.addr.i654, align 8, !dbg !1076, !tbaa !629
  %call1.i656 = call i64 @fwrite(i8* %42, i64 8, i64 1, %struct._IO_FILE* %call) #9, !dbg !1077
  %cmp.i657 = icmp eq i64 %call1.i656, 1, !dbg !1077
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !1078
  br i1 %cmp.i657, label %if.end145, label %return, !dbg !1073

if.end145:                                        ; preds = %if.end141
  %43 = bitcast i64* %n.addr.i659 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 8, i8* %43) #3, !dbg !1079
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1081) #3, !dbg !1079
  call void @llvm.dbg.value(metadata !{i64 %add26}, i64 0, metadata !1082) #3, !dbg !1079
  call void @llvm.dbg.declare(metadata !{i64* %n.addr.i659}, metadata !434) #3, !dbg !1079
  %call.i660 = call i64 @sre_hton64(i64 %add26) #9, !dbg !1083
  call void @llvm.dbg.value(metadata !{i64 %call.i660}, i64 0, metadata !1082) #3, !dbg !1083
  call void @llvm.dbg.value(metadata !{i64 %call.i660}, i64 0, metadata !434), !dbg !1083
  store i64 %call.i660, i64* %n.addr.i659, align 8, !dbg !1083, !tbaa !629
  %call1.i661 = call i64 @fwrite(i8* %43, i64 8, i64 1, %struct._IO_FILE* %call) #9, !dbg !1084
  %cmp.i662 = icmp eq i64 %call1.i661, 1, !dbg !1084
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !1085
  br i1 %cmp.i662, label %if.end150, label %return, !dbg !1080

if.end150:                                        ; preds = %if.end131, %if.end145
  %44 = load i32* %flen, align 4, !dbg !1086, !tbaa !521
  %conv152 = zext i32 %44 to i64, !dbg !1086
  %call154 = call noalias i8* @malloc(i64 %conv152) #9, !dbg !1086
  call void @llvm.dbg.value(metadata !{i8* %call154}, i64 0, metadata !320), !dbg !1086
  %cmp155 = icmp eq i8* %call154, null, !dbg !1086
  br i1 %cmp155, label %return, label %for.cond.preheader, !dbg !1086

for.cond.preheader:                               ; preds = %if.end150
  %45 = load i16* %nfiles, align 2, !dbg !1087, !tbaa !517
  %cmp161737 = icmp eq i16 %45, 0, !dbg !1087
  br i1 %cmp161737, label %for.end, label %for.body.lr.ph, !dbg !1087

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bpl = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 6, !dbg !1089
  %filenames = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 4, !dbg !1091
  %fileformat = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 5, !dbg !1092
  %46 = bitcast i32* %n.addr.i664 to i8*, !dbg !1093
  %47 = bitcast i32* %n.addr.i669 to i8*, !dbg !1094
  %48 = bitcast i32* %n.addr.i674 to i8*, !dbg !1096
  %rpl202 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 7, !dbg !1098
  %49 = bitcast i32* %n.addr.i679 to i8*, !dbg !1099
  br label %for.body, !dbg !1087

for.cond:                                         ; preds = %if.end200
  %50 = load i16* %nfiles, align 2, !dbg !1087, !tbaa !517
  %conv160 = zext i16 %50 to i32, !dbg !1087
  %51 = trunc i64 %indvars.iv.next742 to i32, !dbg !1087
  %cmp161 = icmp slt i32 %51, %conv160, !dbg !1087
  br i1 %cmp161, label %for.body, label %for.end, !dbg !1087

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv741 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next742, %for.cond ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !313), !dbg !1100
  %52 = load i32** %bpl, align 8, !dbg !1089, !tbaa !498
  %arrayidx = getelementptr inbounds i32* %52, i64 %indvars.iv741, !dbg !1089
  %53 = load i32* %arrayidx, align 4, !dbg !1089, !tbaa !521
  %cmp163 = icmp eq i32 %53, 0, !dbg !1089
  br i1 %cmp163, label %if.end171, label %land.lhs.true, !dbg !1089

land.lhs.true:                                    ; preds = %for.body
  %54 = load i32** %rpl202, align 8, !dbg !1089, !tbaa !498
  %arrayidx166 = getelementptr inbounds i32* %54, i64 %indvars.iv741, !dbg !1089
  %55 = load i32* %arrayidx166, align 4, !dbg !1089, !tbaa !521
  call void @llvm.dbg.value(metadata !941, i64 0, metadata !313), !dbg !1089
  %not.cmp167 = icmp ne i32 %55, 0, !dbg !1089
  %.583 = zext i1 %not.cmp167 to i32, !dbg !1089
  br label %if.end171, !dbg !1089

if.end171:                                        ; preds = %land.lhs.true, %for.body
  %file_flags.0 = phi i32 [ 0, %for.body ], [ %.583, %land.lhs.true ]
  %56 = load i8*** %filenames, align 8, !dbg !1091, !tbaa !498
  %arrayidx173 = getelementptr inbounds i8** %56, i64 %indvars.iv741, !dbg !1091
  %57 = load i8** %arrayidx173, align 8, !dbg !1091, !tbaa !498
  %call174 = call i8* @strcpy(i8* %call154, i8* %57) #9, !dbg !1091
  %58 = load i32* %flen, align 4, !dbg !1101, !tbaa !521
  %conv176 = zext i32 %58 to i64, !dbg !1101
  %call177 = call i64 @fwrite(i8* %call154, i64 1, i64 %conv176, %struct._IO_FILE* %call) #9, !dbg !1101
  %59 = load i32* %flen, align 4, !dbg !1101, !tbaa !521
  %conv179 = zext i32 %59 to i64, !dbg !1101
  %cmp180 = icmp eq i64 %call177, %conv179, !dbg !1101
  br i1 %cmp180, label %if.end183, label %return, !dbg !1101

if.end183:                                        ; preds = %if.end171
  %60 = load i32** %fileformat, align 8, !dbg !1092, !tbaa !498
  %arrayidx185 = getelementptr inbounds i32* %60, i64 %indvars.iv741, !dbg !1092
  %61 = load i32* %arrayidx185, align 4, !dbg !1092, !tbaa !521
  call void @llvm.lifetime.start(i64 4, i8* %46) #3, !dbg !1093
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1102) #3, !dbg !1093
  call void @llvm.dbg.value(metadata !{i32 %61}, i64 0, metadata !1103) #3, !dbg !1093
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i664}, metadata !440) #3, !dbg !1093
  %call.i665 = call i32 @sre_hton32(i32 %61) #9, !dbg !1104
  call void @llvm.dbg.value(metadata !{i32 %call.i665}, i64 0, metadata !1103) #3, !dbg !1104
  call void @llvm.dbg.value(metadata !{i32 %call.i665}, i64 0, metadata !440), !dbg !1104
  store i32 %call.i665, i32* %n.addr.i664, align 4, !dbg !1104, !tbaa !521
  %call1.i666 = call i64 @fwrite(i8* %46, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1105
  %cmp.i667 = icmp eq i64 %call1.i666, 1, !dbg !1105
  call void @llvm.lifetime.end(i64 4, i8* %46) #3, !dbg !1106
  br i1 %cmp.i667, label %if.end189, label %return, !dbg !1092

if.end189:                                        ; preds = %if.end183
  call void @llvm.lifetime.start(i64 4, i8* %47) #3, !dbg !1094
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1107) #3, !dbg !1094
  call void @llvm.dbg.value(metadata !{i32 %file_flags.0}, i64 0, metadata !1108) #3, !dbg !1094
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i669}, metadata !440) #3, !dbg !1094
  %call.i670 = call i32 @sre_hton32(i32 %file_flags.0) #9, !dbg !1109
  call void @llvm.dbg.value(metadata !{i32 %call.i670}, i64 0, metadata !1108) #3, !dbg !1109
  call void @llvm.dbg.value(metadata !{i32 %call.i670}, i64 0, metadata !440), !dbg !1109
  store i32 %call.i670, i32* %n.addr.i669, align 4, !dbg !1109, !tbaa !521
  %call1.i671 = call i64 @fwrite(i8* %47, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1110
  %cmp.i672 = icmp eq i64 %call1.i671, 1, !dbg !1110
  call void @llvm.lifetime.end(i64 4, i8* %47) #3, !dbg !1111
  br i1 %cmp.i672, label %if.end193, label %return, !dbg !1095

if.end193:                                        ; preds = %if.end189
  %62 = load i32** %bpl, align 8, !dbg !1097, !tbaa !498
  %arrayidx196 = getelementptr inbounds i32* %62, i64 %indvars.iv741, !dbg !1097
  %63 = load i32* %arrayidx196, align 4, !dbg !1097, !tbaa !521
  call void @llvm.lifetime.start(i64 4, i8* %48) #3, !dbg !1096
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1112) #3, !dbg !1096
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !1113) #3, !dbg !1096
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i674}, metadata !440) #3, !dbg !1096
  %call.i675 = call i32 @sre_hton32(i32 %63) #9, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %call.i675}, i64 0, metadata !1113) #3, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %call.i675}, i64 0, metadata !440), !dbg !1114
  store i32 %call.i675, i32* %n.addr.i674, align 4, !dbg !1114, !tbaa !521
  %call1.i676 = call i64 @fwrite(i8* %48, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1115
  %cmp.i677 = icmp eq i64 %call1.i676, 1, !dbg !1115
  call void @llvm.lifetime.end(i64 4, i8* %48) #3, !dbg !1116
  br i1 %cmp.i677, label %if.end200, label %return, !dbg !1097

if.end200:                                        ; preds = %if.end193
  %64 = load i32** %rpl202, align 8, !dbg !1098, !tbaa !498
  %arrayidx203 = getelementptr inbounds i32* %64, i64 %indvars.iv741, !dbg !1098
  %65 = load i32* %arrayidx203, align 4, !dbg !1098, !tbaa !521
  call void @llvm.lifetime.start(i64 4, i8* %49) #3, !dbg !1099
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1117) #3, !dbg !1099
  call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !1118) #3, !dbg !1099
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i679}, metadata !440) #3, !dbg !1099
  %call.i680 = call i32 @sre_hton32(i32 %65) #9, !dbg !1119
  call void @llvm.dbg.value(metadata !{i32 %call.i680}, i64 0, metadata !1118) #3, !dbg !1119
  call void @llvm.dbg.value(metadata !{i32 %call.i680}, i64 0, metadata !440), !dbg !1119
  store i32 %call.i680, i32* %n.addr.i679, align 4, !dbg !1119, !tbaa !521
  %call1.i681 = call i64 @fwrite(i8* %49, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1120
  %cmp.i682 = icmp eq i64 %call1.i681, 1, !dbg !1120
  call void @llvm.lifetime.end(i64 4, i8* %49) #3, !dbg !1121
  %indvars.iv.next742 = add i64 %indvars.iv741, 1, !dbg !1087
  br i1 %cmp.i682, label %for.cond, label %return, !dbg !1098

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  call void @free(i8* %call154) #9, !dbg !1122
  %66 = load i32* %plen, align 4, !dbg !1123, !tbaa !521
  %conv209 = zext i32 %66 to i64, !dbg !1123
  %call211 = call noalias i8* @malloc(i64 %conv209) #9, !dbg !1123
  call void @llvm.dbg.value(metadata !{i8* %call211}, i64 0, metadata !320), !dbg !1123
  %cmp212 = icmp eq i8* %call211, null, !dbg !1123
  br i1 %cmp212, label %return, label %if.end215, !dbg !1123

if.end215:                                        ; preds = %for.end
  %67 = load i32* %external, align 4, !dbg !1124, !tbaa !521
  %tobool217 = icmp eq i32 %67, 0, !dbg !1124
  br i1 %tobool217, label %for.cond270.preheader, label %if.then218, !dbg !1124

for.cond270.preheader:                            ; preds = %if.end215
  %68 = load i32* %nprimary, align 4, !dbg !1125, !tbaa !521
  %cmp272729 = icmp eq i32 %68, 0, !dbg !1125
  br i1 %cmp272729, label %if.end324, label %for.body274.lr.ph, !dbg !1125

for.body274.lr.ph:                                ; preds = %for.cond270.preheader
  %pkeys276 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 10, !dbg !1128
  %69 = bitcast i16* %n.addr.i697 to i8*, !dbg !1130
  %70 = bitcast i32* %n.addr.i702 to i8*, !dbg !1132
  br label %for.body274, !dbg !1125

if.then218:                                       ; preds = %if.end215
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !327), !dbg !1134
  call void @llvm.dbg.value(metadata !1135, i64 0, metadata !327), !dbg !1134
  store i8* null, i8** %buf, align 8, !dbg !1134, !tbaa !498
  call void @llvm.dbg.declare(metadata !{i32* %buflen}, metadata !329), !dbg !1136
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !1136
  store i32 0, i32* %buflen, align 4, !dbg !1136, !tbaa !521
  %71 = bitcast %struct.ssipkey_s* %pkey to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 56, i8* %71) #3, !dbg !1137
  call void @llvm.dbg.declare(metadata !{%struct.ssipkey_s* %pkey}, metadata !330), !dbg !1137
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !1138
  %72 = load i32* %nprimary, align 4, !dbg !1138, !tbaa !521
  %cmp221733 = icmp eq i32 %72, 0, !dbg !1138
  br i1 %cmp221733, label %cleanup266, label %for.body223.lr.ph, !dbg !1138

for.body223.lr.ph:                                ; preds = %if.then218
  %ptmp224 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 14, !dbg !1140
  %73 = bitcast i8** %s.i to i8*, !dbg !1142
  %74 = bitcast i32* %n.i to i8*, !dbg !1142
  %key.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 0, !dbg !1144
  %fnum.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 1, !dbg !1145
  %mode15.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 2, i32 0, !dbg !1146
  %off.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 2, i32 1, !dbg !1148
  %i32.i = bitcast %union.anon* %off.i to i32*, !dbg !1148
  %mode24.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 3, i32 0, !dbg !1149
  %off28.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 3, i32 1, !dbg !1150
  %i3229.i = bitcast %union.anon* %off28.i to i32*, !dbg !1150
  %len.i = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 4, !dbg !1151
  %75 = bitcast i16* %n.addr.i687 to i8*, !dbg !1152
  %r_off = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 2, !dbg !1154
  %d_off = getelementptr inbounds %struct.ssipkey_s* %pkey, i64 0, i32 3, !dbg !1155
  %76 = bitcast i32* %n.addr.i692 to i8*, !dbg !1156
  br label %for.body223, !dbg !1138

for.cond219:                                      ; preds = %if.end258
  %77 = load i32* %nprimary, align 4, !dbg !1138, !tbaa !521
  %cmp221 = icmp ult i32 %inc264, %77, !dbg !1138
  br i1 %cmp221, label %for.body223, label %for.cond219.cleanup266_crit_edge, !dbg !1138

for.body223:                                      ; preds = %for.body223.lr.ph, %for.cond219
  %i.1734 = phi i32 [ 0, %for.body223.lr.ph ], [ %inc264, %for.cond219 ]
  %78 = load %struct._IO_FILE** %ptmp224, align 8, !dbg !1140, !tbaa !498
  %call225 = call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %78) #9, !dbg !1140
  %cmp226 = icmp eq i8* %call225, null, !dbg !1140
  br i1 %cmp226, label %return, label %if.end229, !dbg !1140

if.end229:                                        ; preds = %for.body223
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !327), !dbg !1143
  %79 = load i8** %buf, align 8, !dbg !1143, !tbaa !498
  %80 = load i32* %smode, align 4, !dbg !1143, !tbaa !521
  %conv231 = trunc i32 %80 to i8, !dbg !1143
  call void @llvm.lifetime.start(i64 8, i8* %73) #3, !dbg !1142
  call void @llvm.lifetime.start(i64 4, i8* %74) #3, !dbg !1142
  call void @llvm.dbg.value(metadata !{i8* %79}, i64 0, metadata !1158) #3, !dbg !1142
  call void @llvm.dbg.value(metadata !{i8 %conv231}, i64 0, metadata !1159) #3, !dbg !1142
  call void @llvm.dbg.value(metadata !{%struct.ssipkey_s* %pkey}, i64 0, metadata !1160) #3, !dbg !1142
  call void @llvm.dbg.declare(metadata !{i8** %s.i}, metadata !407) #3, !dbg !1161
  call void @llvm.dbg.declare(metadata !{i32* %n.i}, metadata !409) #3, !dbg !1162
  call void @llvm.dbg.value(metadata !{i8* %79}, i64 0, metadata !1163) #3, !dbg !1164
  call void @llvm.dbg.value(metadata !{i8* %79}, i64 0, metadata !407), !dbg !1164
  store i8* %79, i8** %s.i, align 8, !dbg !1164, !tbaa !498
  %call.i684 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #9, !dbg !1165
  call void @llvm.dbg.value(metadata !{i8* %call.i684}, i64 0, metadata !1166) #3, !dbg !1165
  %cmp.i685 = icmp eq i8* %call.i684, null, !dbg !1165
  br i1 %cmp.i685, label %return, label %if.end.i, !dbg !1165

if.end.i:                                         ; preds = %if.end229
  store i8* %call.i684, i8** %key.i, align 8, !dbg !1144, !tbaa !498
  %call1.i686 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #9, !dbg !1167
  call void @llvm.dbg.value(metadata !{i8* %call1.i686}, i64 0, metadata !1166) #3, !dbg !1167
  %cmp2.i = icmp eq i8* %call1.i686, null, !dbg !1167
  br i1 %cmp2.i, label %return, label %if.end4.i, !dbg !1167

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @atoi(i8* %call1.i686) #11, !dbg !1145
  %conv.i = trunc i32 %call5.i to i16, !dbg !1145
  store i16 %conv.i, i16* %fnum.i, align 8, !dbg !1145, !tbaa !517
  %cmp7.i = icmp eq i8 %conv231, 0, !dbg !1168
  br i1 %cmp7.i, label %if.then9.i, label %return, !dbg !1168

if.then9.i:                                       ; preds = %if.end4.i
  %call10.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #9, !dbg !1169
  call void @llvm.dbg.value(metadata !{i8* %call10.i}, i64 0, metadata !1166) #3, !dbg !1169
  %cmp11.i = icmp eq i8* %call10.i, null, !dbg !1169
  br i1 %cmp11.i, label %return, label %if.end14.i, !dbg !1169

if.end14.i:                                       ; preds = %if.then9.i
  store i8 0, i8* %mode15.i, align 8, !dbg !1146, !tbaa !499
  %call16.i = call i64 @strtoul(i8* nocapture %call10.i, i8** null, i32 10) #9, !dbg !1148
  %conv17.i = trunc i64 %call16.i to i32, !dbg !1148
  store i32 %conv17.i, i32* %i32.i, align 8, !dbg !1148, !tbaa !521
  %call19.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #9, !dbg !1170
  call void @llvm.dbg.value(metadata !{i8* %call19.i}, i64 0, metadata !1166) #3, !dbg !1170
  %cmp20.i = icmp eq i8* %call19.i, null, !dbg !1170
  br i1 %cmp20.i, label %return, label %if.end23.i, !dbg !1170

if.end23.i:                                       ; preds = %if.end14.i
  store i8 0, i8* %mode24.i, align 8, !dbg !1149, !tbaa !499
  %call25.i = call i64 @strtoul(i8* nocapture %call19.i, i8** null, i32 10) #9, !dbg !1150
  %conv26.i = trunc i64 %call25.i to i32, !dbg !1150
  store i32 %conv26.i, i32* %i3229.i, align 8, !dbg !1150, !tbaa !521
  %call31.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i) #9, !dbg !1171
  call void @llvm.dbg.value(metadata !{i8* %call31.i}, i64 0, metadata !1166) #3, !dbg !1171
  %cmp32.i = icmp eq i8* %call31.i, null, !dbg !1171
  br i1 %cmp32.i, label %return, label %if.end236, !dbg !1171

if.end236:                                        ; preds = %if.end23.i
  %call36.i = call i64 @strtoul(i8* nocapture %call31.i, i8** null, i32 10) #9, !dbg !1151
  %conv37.i = trunc i64 %call36.i to i32, !dbg !1151
  store i32 %conv37.i, i32* %len.i, align 8, !dbg !1151, !tbaa !521
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !1172
  call void @llvm.lifetime.end(i64 4, i8* %74) #3, !dbg !1172
  %call237 = call i8* @strcpy(i8* %call211, i8* %call.i684) #9, !dbg !1173
  %81 = load i32* %plen, align 4, !dbg !1174, !tbaa !521
  %conv239 = zext i32 %81 to i64, !dbg !1174
  %call240 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv239, %struct._IO_FILE* %call) #9, !dbg !1174
  %82 = load i32* %plen, align 4, !dbg !1174, !tbaa !521
  %conv242 = zext i32 %82 to i64, !dbg !1174
  %cmp243 = icmp eq i64 %call240, %conv242, !dbg !1174
  br i1 %cmp243, label %if.end246, label %return, !dbg !1174

if.end246:                                        ; preds = %if.end236
  call void @llvm.lifetime.start(i64 2, i8* %75) #3, !dbg !1152
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1175) #3, !dbg !1152
  call void @llvm.dbg.value(metadata !{i16 %conv.i}, i64 0, metadata !1176) #3, !dbg !1152
  call void @llvm.dbg.declare(metadata !{i16* %n.addr.i687}, metadata !453) #3, !dbg !1152
  %call.i688 = call zeroext i16 @sre_hton16(i16 zeroext %conv.i) #9, !dbg !1177
  call void @llvm.dbg.value(metadata !{i16 %call.i688}, i64 0, metadata !1176) #3, !dbg !1177
  call void @llvm.dbg.value(metadata !{i16 %call.i688}, i64 0, metadata !453), !dbg !1177
  store i16 %call.i688, i16* %n.addr.i687, align 2, !dbg !1177, !tbaa !517
  %call1.i689 = call i64 @fwrite(i8* %75, i64 2, i64 1, %struct._IO_FILE* %call) #9, !dbg !1178
  %cmp.i690 = icmp eq i64 %call1.i689, 1, !dbg !1178
  call void @llvm.lifetime.end(i64 2, i8* %75) #3, !dbg !1179
  br i1 %cmp.i690, label %if.end250, label %return, !dbg !1153

if.end250:                                        ; preds = %if.end246
  %call251 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %r_off) #10, !dbg !1154
  %tobool252 = icmp eq i32 %call251, 0, !dbg !1154
  br i1 %tobool252, label %return, label %if.end254, !dbg !1154

if.end254:                                        ; preds = %if.end250
  %call255 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %d_off) #10, !dbg !1155
  %tobool256 = icmp eq i32 %call255, 0, !dbg !1155
  br i1 %tobool256, label %return, label %if.end258, !dbg !1155

if.end258:                                        ; preds = %if.end254
  %83 = load i32* %len.i, align 8, !dbg !1157, !tbaa !521
  call void @llvm.lifetime.start(i64 4, i8* %76) #3, !dbg !1156
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1180) #3, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !1181) #3, !dbg !1156
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i692}, metadata !440) #3, !dbg !1156
  %call.i693 = call i32 @sre_hton32(i32 %83) #9, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32 %call.i693}, i64 0, metadata !1181) #3, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32 %call.i693}, i64 0, metadata !440), !dbg !1182
  store i32 %call.i693, i32* %n.addr.i692, align 4, !dbg !1182, !tbaa !521
  %call1.i694 = call i64 @fwrite(i8* %76, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1183
  %cmp.i695 = icmp eq i64 %call1.i694, 1, !dbg !1183
  call void @llvm.lifetime.end(i64 4, i8* %76) #3, !dbg !1184
  %inc264 = add nsw i32 %i.1734, 1, !dbg !1138
  call void @llvm.dbg.value(metadata !{i32 %inc264}, i64 0, metadata !311), !dbg !1138
  br i1 %cmp.i695, label %for.cond219, label %return, !dbg !1157

for.cond219.cleanup266_crit_edge:                 ; preds = %for.cond219
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !327), !dbg !1185
  %.pre743 = load i8** %buf, align 8, !dbg !1185, !tbaa !498
  br label %cleanup266, !dbg !1138

cleanup266:                                       ; preds = %if.then218, %for.cond219.cleanup266_crit_edge
  %84 = phi i8* [ null, %if.then218 ], [ %.pre743, %for.cond219.cleanup266_crit_edge ]
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !327), !dbg !1185
  call void @free(i8* %84) #9, !dbg !1185
  call void @llvm.lifetime.end(i64 56, i8* %71) #3, !dbg !1186
  br label %if.end324

for.cond270:                                      ; preds = %if.end312
  %85 = load i32* %nprimary, align 4, !dbg !1125, !tbaa !521
  %86 = trunc i64 %indvars.iv.next740 to i32, !dbg !1125
  %cmp272 = icmp ult i32 %86, %85, !dbg !1125
  br i1 %cmp272, label %for.body274, label %if.end324, !dbg !1125

for.body274:                                      ; preds = %for.body274.lr.ph, %for.cond270
  %indvars.iv739 = phi i64 [ 0, %for.body274.lr.ph ], [ %indvars.iv.next740, %for.cond270 ]
  %87 = load %struct.ssipkey_s** %pkeys276, align 8, !dbg !1128, !tbaa !498
  %key278 = getelementptr inbounds %struct.ssipkey_s* %87, i64 %indvars.iv739, i32 0, !dbg !1128
  %88 = load i8** %key278, align 8, !dbg !1128, !tbaa !498
  %call279 = call i8* @strcpy(i8* %call211, i8* %88) #9, !dbg !1128
  %89 = load i32* %plen, align 4, !dbg !1187, !tbaa !521
  %conv281 = zext i32 %89 to i64, !dbg !1187
  %call282 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv281, %struct._IO_FILE* %call) #9, !dbg !1187
  %90 = load i32* %plen, align 4, !dbg !1187, !tbaa !521
  %conv284 = zext i32 %90 to i64, !dbg !1187
  %cmp285 = icmp eq i64 %call282, %conv284, !dbg !1187
  br i1 %cmp285, label %if.end288, label %return, !dbg !1187

if.end288:                                        ; preds = %for.body274
  %91 = load %struct.ssipkey_s** %pkeys276, align 8, !dbg !1131, !tbaa !498
  %fnum292 = getelementptr inbounds %struct.ssipkey_s* %91, i64 %indvars.iv739, i32 1, !dbg !1131
  %92 = load i16* %fnum292, align 2, !dbg !1131, !tbaa !517
  call void @llvm.lifetime.start(i64 2, i8* %69) #3, !dbg !1130
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1188) #3, !dbg !1130
  call void @llvm.dbg.value(metadata !{i16 %92}, i64 0, metadata !1189) #3, !dbg !1130
  call void @llvm.dbg.declare(metadata !{i16* %n.addr.i697}, metadata !453) #3, !dbg !1130
  %call.i698 = call zeroext i16 @sre_hton16(i16 zeroext %92) #9, !dbg !1190
  call void @llvm.dbg.value(metadata !{i16 %call.i698}, i64 0, metadata !1189) #3, !dbg !1190
  call void @llvm.dbg.value(metadata !{i16 %call.i698}, i64 0, metadata !453), !dbg !1190
  store i16 %call.i698, i16* %n.addr.i697, align 2, !dbg !1190, !tbaa !517
  %call1.i699 = call i64 @fwrite(i8* %69, i64 2, i64 1, %struct._IO_FILE* %call) #9, !dbg !1191
  %cmp.i700 = icmp eq i64 %call1.i699, 1, !dbg !1191
  call void @llvm.lifetime.end(i64 2, i8* %69) #3, !dbg !1192
  br i1 %cmp.i700, label %if.end296, label %return, !dbg !1131

if.end296:                                        ; preds = %if.end288
  %93 = load %struct.ssipkey_s** %pkeys276, align 8, !dbg !1193, !tbaa !498
  %r_off300 = getelementptr inbounds %struct.ssipkey_s* %93, i64 %indvars.iv739, i32 2, !dbg !1193
  %call301 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %r_off300) #10, !dbg !1193
  %tobool302 = icmp eq i32 %call301, 0, !dbg !1193
  br i1 %tobool302, label %return, label %if.end304, !dbg !1193

if.end304:                                        ; preds = %if.end296
  %94 = load %struct.ssipkey_s** %pkeys276, align 8, !dbg !1194, !tbaa !498
  %d_off308 = getelementptr inbounds %struct.ssipkey_s* %94, i64 %indvars.iv739, i32 3, !dbg !1194
  %call309 = call fastcc i32 @write_offset(%struct._IO_FILE* %call, %struct.ssioffset_s* %d_off308) #10, !dbg !1194
  %tobool310 = icmp eq i32 %call309, 0, !dbg !1194
  br i1 %tobool310, label %return, label %if.end312, !dbg !1194

if.end312:                                        ; preds = %if.end304
  %95 = load %struct.ssipkey_s** %pkeys276, align 8, !dbg !1133, !tbaa !498
  %len316 = getelementptr inbounds %struct.ssipkey_s* %95, i64 %indvars.iv739, i32 4, !dbg !1133
  %96 = load i32* %len316, align 4, !dbg !1133, !tbaa !521
  call void @llvm.lifetime.start(i64 4, i8* %70) #3, !dbg !1132
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !1195) #3, !dbg !1132
  call void @llvm.dbg.value(metadata !{i32 %96}, i64 0, metadata !1196) #3, !dbg !1132
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i702}, metadata !440) #3, !dbg !1132
  %call.i703 = call i32 @sre_hton32(i32 %96) #9, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32 %call.i703}, i64 0, metadata !1196) #3, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32 %call.i703}, i64 0, metadata !440), !dbg !1197
  store i32 %call.i703, i32* %n.addr.i702, align 4, !dbg !1197, !tbaa !521
  %call1.i704 = call i64 @fwrite(i8* %70, i64 4, i64 1, %struct._IO_FILE* %call) #9, !dbg !1198
  %cmp.i705 = icmp eq i64 %call1.i704, 1, !dbg !1198
  call void @llvm.lifetime.end(i64 4, i8* %70) #3, !dbg !1199
  %indvars.iv.next740 = add i64 %indvars.iv739, 1, !dbg !1125
  br i1 %cmp.i705, label %for.cond270, label %return, !dbg !1133

if.end324:                                        ; preds = %for.cond270.preheader, %for.cond270, %cleanup266
  %97 = load i32* %nsecondary86, align 4, !dbg !1200, !tbaa !521
  %cmp326 = icmp eq i32 %97, 0, !dbg !1200
  br i1 %cmp326, label %if.end420, label %if.then328, !dbg !1200

if.then328:                                       ; preds = %if.end324
  %98 = load i32* %slen, align 4, !dbg !1201, !tbaa !521
  %conv330 = zext i32 %98 to i64, !dbg !1201
  %call332 = call noalias i8* @malloc(i64 %conv330) #9, !dbg !1201
  call void @llvm.dbg.value(metadata !{i8* %call332}, i64 0, metadata !321), !dbg !1201
  %cmp333 = icmp eq i8* %call332, null, !dbg !1201
  br i1 %cmp333, label %return, label %if.end336, !dbg !1201

if.end336:                                        ; preds = %if.then328
  %99 = load i32* %external, align 4, !dbg !1202, !tbaa !521
  %tobool338 = icmp eq i32 %99, 0, !dbg !1202
  br i1 %tobool338, label %for.body387.lr.ph, label %for.body345.lr.ph, !dbg !1202

for.body387.lr.ph:                                ; preds = %if.end336
  %skeys389 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 15, !dbg !1203
  br label %for.body387, !dbg !1207

for.body345.lr.ph:                                ; preds = %if.end336
  call void @llvm.dbg.declare(metadata !1208, metadata !331), !dbg !1209
  call void @llvm.dbg.declare(metadata !{i8** %buf340}, metadata !334), !dbg !1210
  call void @llvm.dbg.value(metadata !1135, i64 0, metadata !334), !dbg !1210
  store i8* null, i8** %buf340, align 8, !dbg !1210, !tbaa !498
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !335), !dbg !1211
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !335), !dbg !1211
  store i32 0, i32* %n, align 4, !dbg !1211, !tbaa !521
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !1212
  %stmp346 = getelementptr inbounds %struct.ssiindex_s* %g, i64 0, i32 19, !dbg !1214
  %100 = bitcast i8** %s.i707 to i8*, !dbg !1216
  %101 = bitcast i32* %n.i708 to i8*, !dbg !1216
  br label %for.body345, !dbg !1212

for.cond341:                                      ; preds = %if.end369
  %102 = load i32* %nsecondary86, align 4, !dbg !1212, !tbaa !521
  %cmp343 = icmp ult i32 %inc380, %102, !dbg !1212
  br i1 %cmp343, label %for.body345, label %for.end381, !dbg !1212

for.body345:                                      ; preds = %for.body345.lr.ph, %for.cond341
  %i.3727 = phi i32 [ 0, %for.body345.lr.ph ], [ %inc380, %for.cond341 ]
  %103 = load %struct._IO_FILE** %stmp346, align 8, !dbg !1214, !tbaa !498
  %call347 = call i8* @sre_fgets(i8** %buf340, i32* %n, %struct._IO_FILE* %103) #9, !dbg !1214
  %cmp348 = icmp eq i8* %call347, null, !dbg !1214
  br i1 %cmp348, label %return, label %if.end351, !dbg !1214

if.end351:                                        ; preds = %for.body345
  call void @llvm.dbg.value(metadata !{i8** %buf340}, i64 0, metadata !334), !dbg !1217
  %104 = load i8** %buf340, align 8, !dbg !1217, !tbaa !498
  call void @llvm.lifetime.start(i64 8, i8* %100) #3, !dbg !1216
  call void @llvm.lifetime.start(i64 4, i8* %101) #3, !dbg !1216
  call void @llvm.dbg.value(metadata !{i8* %104}, i64 0, metadata !1218) #3, !dbg !1216
  call void @llvm.dbg.value(metadata !1208, i64 0, metadata !1219) #3, !dbg !1216
  call void @llvm.dbg.declare(metadata !{i8** %s.i707}, metadata !397) #3, !dbg !1220
  call void @llvm.dbg.declare(metadata !{i32* %n.i708}, metadata !399) #3, !dbg !1221
  call void @llvm.dbg.value(metadata !{i8* %104}, i64 0, metadata !1222) #3, !dbg !1223
  call void @llvm.dbg.value(metadata !{i8* %104}, i64 0, metadata !397), !dbg !1223
  store i8* %104, i8** %s.i707, align 8, !dbg !1223, !tbaa !498
  %call.i709 = call i8* @sre_strtok(i8** %s.i707, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i708) #9, !dbg !1224
  call void @llvm.dbg.value(metadata !{i8* %call.i709}, i64 0, metadata !1225) #3, !dbg !1224
  %cmp.i710 = icmp eq i8* %call.i709, null, !dbg !1224
  br i1 %cmp.i710, label %return, label %if.end.i714, !dbg !1224

if.end.i714:                                      ; preds = %if.end351
  %call1.i712 = call i8* @sre_strtok(i8** %s.i707, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i32* %n.i708) #9, !dbg !1226
  call void @llvm.dbg.value(metadata !{i8* %call1.i712}, i64 0, metadata !1225) #3, !dbg !1226
  %cmp2.i713 = icmp eq i8* %call1.i712, null, !dbg !1226
  br i1 %cmp2.i713, label %return, label %if.end356, !dbg !1226

if.end356:                                        ; preds = %if.end.i714
  call void @llvm.lifetime.end(i64 8, i8* %100) #3, !dbg !1227
  call void @llvm.lifetime.end(i64 4, i8* %101) #3, !dbg !1227
  %call358 = call i8* @strcpy(i8* %call332, i8* %call.i709) #9, !dbg !1228
  %call360 = call i8* @strcpy(i8* %call211, i8* %call1.i712) #9, !dbg !1229
  %105 = load i32* %slen, align 4, !dbg !1230, !tbaa !521
  %conv362 = zext i32 %105 to i64, !dbg !1230
  %call363 = call i64 @fwrite(i8* %call332, i64 1, i64 %conv362, %struct._IO_FILE* %call) #9, !dbg !1230
  %106 = load i32* %slen, align 4, !dbg !1230, !tbaa !521
  %conv365 = zext i32 %106 to i64, !dbg !1230
  %cmp366 = icmp eq i64 %call363, %conv365, !dbg !1230
  br i1 %cmp366, label %if.end369, label %return, !dbg !1230

if.end369:                                        ; preds = %if.end356
  %107 = load i32* %plen, align 4, !dbg !1231, !tbaa !521
  %conv371 = zext i32 %107 to i64, !dbg !1231
  %call372 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv371, %struct._IO_FILE* %call) #9, !dbg !1231
  %108 = load i32* %plen, align 4, !dbg !1231, !tbaa !521
  %conv374 = zext i32 %108 to i64, !dbg !1231
  %cmp375 = icmp eq i64 %call372, %conv374, !dbg !1231
  %inc380 = add nsw i32 %i.3727, 1, !dbg !1212
  call void @llvm.dbg.value(metadata !{i32 %inc380}, i64 0, metadata !311), !dbg !1212
  br i1 %cmp375, label %for.cond341, label %return, !dbg !1231

for.end381:                                       ; preds = %for.cond341
  call void @llvm.dbg.value(metadata !{i8** %buf340}, i64 0, metadata !334), !dbg !1232
  %.pre = load i8** %buf340, align 8, !dbg !1232, !tbaa !498
  call void @llvm.dbg.value(metadata !{i8** %buf340}, i64 0, metadata !334), !dbg !1232
  call void @free(i8* %.pre) #9, !dbg !1232
  br label %if.end419, !dbg !1233

for.cond383:                                      ; preds = %if.end406
  %109 = load i32* %nsecondary86, align 4, !dbg !1207, !tbaa !521
  %110 = trunc i64 %indvars.iv.next to i32, !dbg !1207
  %cmp385 = icmp ult i32 %110, %109, !dbg !1207
  br i1 %cmp385, label %for.body387, label %if.end419, !dbg !1207

for.body387:                                      ; preds = %for.body387.lr.ph, %for.cond383
  %indvars.iv = phi i64 [ 0, %for.body387.lr.ph ], [ %indvars.iv.next, %for.cond383 ]
  %111 = load %struct.ssiskey_s** %skeys389, align 8, !dbg !1203, !tbaa !498
  %key391 = getelementptr inbounds %struct.ssiskey_s* %111, i64 %indvars.iv, i32 0, !dbg !1203
  %112 = load i8** %key391, align 8, !dbg !1203, !tbaa !498
  %call392 = call i8* @strcpy(i8* %call332, i8* %112) #9, !dbg !1203
  %113 = load %struct.ssiskey_s** %skeys389, align 8, !dbg !1234, !tbaa !498
  %pkey396 = getelementptr inbounds %struct.ssiskey_s* %113, i64 %indvars.iv, i32 1, !dbg !1234
  %114 = load i8** %pkey396, align 8, !dbg !1234, !tbaa !498
  %call397 = call i8* @strcpy(i8* %call211, i8* %114) #9, !dbg !1234
  %115 = load i32* %slen, align 4, !dbg !1235, !tbaa !521
  %conv399 = zext i32 %115 to i64, !dbg !1235
  %call400 = call i64 @fwrite(i8* %call332, i64 1, i64 %conv399, %struct._IO_FILE* %call) #9, !dbg !1235
  %116 = load i32* %slen, align 4, !dbg !1235, !tbaa !521
  %conv402 = zext i32 %116 to i64, !dbg !1235
  %cmp403 = icmp eq i64 %call400, %conv402, !dbg !1235
  br i1 %cmp403, label %if.end406, label %return, !dbg !1235

if.end406:                                        ; preds = %for.body387
  %117 = load i32* %plen, align 4, !dbg !1236, !tbaa !521
  %conv408 = zext i32 %117 to i64, !dbg !1236
  %call409 = call i64 @fwrite(i8* %call211, i64 1, i64 %conv408, %struct._IO_FILE* %call) #9, !dbg !1236
  %118 = load i32* %plen, align 4, !dbg !1236, !tbaa !521
  %conv411 = zext i32 %118 to i64, !dbg !1236
  %cmp412 = icmp eq i64 %call409, %conv411, !dbg !1236
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1207
  br i1 %cmp412, label %for.cond383, label %return, !dbg !1236

if.end419:                                        ; preds = %for.cond383, %for.end381
  call void @free(i8* %call332) #9, !dbg !1237
  br label %if.end420, !dbg !1238

if.end420:                                        ; preds = %if.end324, %if.end419
  call void @free(i8* %call211) #9, !dbg !1239
  %call421 = call i32 @fclose(%struct._IO_FILE* %call) #9, !dbg !1240
  br label %return, !dbg !1241

return:                                           ; preds = %if.end200, %if.end193, %if.end189, %if.end183, %if.end171, %if.end258, %if.end246, %if.end254, %if.end250, %if.end236, %for.body223, %if.end229, %if.end.i, %if.then9.i, %if.end14.i, %if.end4.i, %if.end23.i, %if.end312, %if.end288, %if.end304, %if.end296, %for.body274, %if.end.i714, %if.end351, %if.end369, %if.end356, %for.body345, %if.end406, %for.body387, %if.end131, %if.end126, %if.then121, %if.end145, %if.end141, %if.else137, %if.end113, %if.end109, %if.end105, %if.end100, %if.end95, %if.end90, %if.end85, %if.end80, %if.end75, %if.end71, %if.end67, %if.end45, %if.end38, %if.then28, %if.then328, %for.end, %if.end150, %entry, %cleanup, %if.end420
  %retval.3 = phi i32 [ 16, %cleanup ], [ 0, %if.end420 ], [ 4, %entry ], [ 15, %if.end67 ], [ 15, %if.end71 ], [ 15, %if.end75 ], [ 15, %if.end80 ], [ 15, %if.end85 ], [ 15, %if.end90 ], [ 15, %if.end95 ], [ 15, %if.end100 ], [ 15, %if.end105 ], [ 15, %if.end109 ], [ 15, %if.end113 ], [ 15, %if.then121 ], [ 15, %if.end126 ], [ 15, %if.end131 ], [ 15, %if.else137 ], [ 15, %if.end141 ], [ 15, %if.end145 ], [ 3, %if.end150 ], [ 3, %for.end ], [ 3, %if.then328 ], [ 16, %if.then28 ], [ 16, %if.end38 ], [ 16, %if.end45 ], [ 15, %for.body387 ], [ 15, %if.end406 ], [ 6, %if.end.i714 ], [ 6, %if.end351 ], [ 15, %if.end369 ], [ 15, %if.end356 ], [ 1, %for.body345 ], [ 15, %for.body274 ], [ 15, %if.end296 ], [ 15, %if.end304 ], [ 15, %if.end288 ], [ 15, %if.end312 ], [ 15, %if.end258 ], [ 15, %if.end246 ], [ 15, %if.end254 ], [ 15, %if.end250 ], [ 15, %if.end236 ], [ 1, %for.body223 ], [ 6, %if.end229 ], [ 6, %if.end.i ], [ 6, %if.then9.i ], [ 6, %if.end14.i ], [ 6, %if.end4.i ], [ 6, %if.end23.i ], [ 15, %if.end171 ], [ 15, %if.end183 ], [ 15, %if.end189 ], [ 15, %if.end193 ], [ 15, %if.end200 ]
  ret i32 %retval.3, !dbg !1242
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @system(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @specqsort(...) #4

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @pkeysort(i8* nocapture %k1, i8* nocapture %k2) #7 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %k1}, i64 0, metadata !474), !dbg !1243
  tail call void @llvm.dbg.value(metadata !{i8* %k2}, i64 0, metadata !475), !dbg !1243
  %key = bitcast i8* %k1 to i8**, !dbg !1244
  %0 = load i8** %key, align 8, !dbg !1244, !tbaa !498
  %key3 = bitcast i8* %k2 to i8**, !dbg !1244
  %1 = load i8** %key3, align 8, !dbg !1244, !tbaa !498
  %call = tail call i32 @strcmp(i8* %0, i8* %1) #11, !dbg !1244
  ret i32 %call, !dbg !1244
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @skeysort(i8* nocapture %k1, i8* nocapture %k2) #7 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %k1}, i64 0, metadata !468), !dbg !1245
  tail call void @llvm.dbg.value(metadata !{i8* %k2}, i64 0, metadata !469), !dbg !1245
  %key = bitcast i8* %k1 to i8**, !dbg !1246
  %0 = load i8** %key, align 8, !dbg !1246, !tbaa !498
  %key3 = bitcast i8* %k2 to i8**, !dbg !1246
  %1 = load i8** %key3, align 8, !dbg !1246, !tbaa !498
  %call = tail call i32 @strcmp(i8* %0, i8* %1) #11, !dbg !1246
  ret i32 %call, !dbg !1246
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @write_offset(%struct._IO_FILE* nocapture %fp, %struct.ssioffset_s* nocapture %offset) #0 {
entry:
  %n.addr.i14 = alloca i64, align 8
  %n.addr.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !412), !dbg !1247
  call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %offset}, i64 0, metadata !413), !dbg !1247
  %mode = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 0, !dbg !1248
  %0 = load i8* %mode, align 1, !dbg !1248, !tbaa !499
  switch i8 %0, label %if.else9 [
    i8 0, label %if.then
    i8 1, label %if.then6
  ], !dbg !1248

if.then:                                          ; preds = %entry
  %off = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 1, !dbg !1248
  %i32 = bitcast %union.anon* %off to i32*, !dbg !1248
  %1 = load i32* %i32, align 4, !dbg !1248, !tbaa !521
  %2 = bitcast i32* %n.addr.i to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1249
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1250) #3, !dbg !1249
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !1251) #3, !dbg !1249
  call void @llvm.dbg.declare(metadata !{i32* %n.addr.i}, metadata !440) #3, !dbg !1249
  %call.i = call i32 @sre_hton32(i32 %1) #9, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !1251) #3, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !440), !dbg !1252
  store i32 %call.i, i32* %n.addr.i, align 4, !dbg !1252, !tbaa !521
  %call1.i = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #9, !dbg !1253
  %cmp.i = icmp eq i64 %call1.i, 1, !dbg !1253
  %..i = zext i1 %cmp.i to i32, !dbg !1254
  call void @llvm.lifetime.end(i64 4, i8* %2) #3, !dbg !1254
  br label %return, !dbg !1248

if.then6:                                         ; preds = %entry
  %i64 = getelementptr inbounds %struct.ssioffset_s* %offset, i64 0, i32 1, i32 0, !dbg !1255
  %3 = load i64* %i64, align 8, !dbg !1255, !tbaa !629
  %4 = bitcast i64* %n.addr.i14 to i8*, !dbg !1256
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1256
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1257) #3, !dbg !1256
  call void @llvm.dbg.value(metadata !{i64 %3}, i64 0, metadata !1258) #3, !dbg !1256
  call void @llvm.dbg.declare(metadata !{i64* %n.addr.i14}, metadata !434) #3, !dbg !1256
  %call.i15 = call i64 @sre_hton64(i64 %3) #9, !dbg !1259
  call void @llvm.dbg.value(metadata !{i64 %call.i15}, i64 0, metadata !1258) #3, !dbg !1259
  call void @llvm.dbg.value(metadata !{i64 %call.i15}, i64 0, metadata !434), !dbg !1259
  store i64 %call.i15, i64* %n.addr.i14, align 8, !dbg !1259, !tbaa !629
  %call1.i16 = call i64 @fwrite(i8* %4, i64 8, i64 1, %struct._IO_FILE* %fp) #9, !dbg !1260
  %cmp.i17 = icmp eq i64 %call1.i16, 1, !dbg !1260
  %..i18 = zext i1 %cmp.i17 to i32, !dbg !1261
  call void @llvm.lifetime.end(i64 8, i8* %4) #3, !dbg !1261
  br label %return, !dbg !1255

if.else9:                                         ; preds = %entry
  call void @abort() #12, !dbg !1262
  unreachable, !dbg !1262

return:                                           ; preds = %if.then6, %if.then
  %retval.0 = phi i32 [ %..i, %if.then ], [ %..i18, %if.then6 ]
  ret i32 %retval.0, !dbg !1263
}

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #2

; Function Attrs: nounwind optsize readnone uwtable
define i8* @SSIErrorString(i32 %n) #8 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !346), !dbg !1264
  %0 = icmp ult i32 %n, 17, !dbg !1265
  br i1 %0, label %switch.lookup, label %return, !dbg !1265

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %n to i64, !dbg !1265
  %switch.gep = getelementptr inbounds [17 x i8*]* @switch.table, i64 0, i64 %1, !dbg !1265
  %switch.load = load i8** %switch.gep, align 8, !dbg !1265
  ret i8* %switch.load, !dbg !1265

return:                                           ; preds = %entry
  ret i8* getelementptr inbounds ([18 x i8]* @.str28, i64 0, i64 0), !dbg !1266
}

; Function Attrs: nounwind optsize uwtable
define void @SSIForceExternalSort(%struct.ssiindex_s* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ssiindex_s* %g}, i64 0, metadata !349), !dbg !1267
  %call = tail call fastcc i32 @activate_external_sort(%struct.ssiindex_s* %g) #10, !dbg !1268
  %cmp = icmp eq i32 %call, 0, !dbg !1268
  br i1 %cmp, label %if.end, label %if.then, !dbg !1268

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str29, i64 0, i64 0)) #9, !dbg !1269
  br label %if.end, !dbg !1269

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1270
}

; Function Attrs: optsize
declare i32 @FileExists(i8*) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i64 @strtoul(i8*, i8** nocapture, i32) #2

; Function Attrs: optsize
declare i64 @sre_ntoh64(i64) #4

; Function Attrs: optsize
declare i64 @sre_hton64(i64) #4

; Function Attrs: optsize
declare i32 @sre_hton32(i32) #4

; Function Attrs: optsize
declare i32 @sre_ntoh32(i32) #4

; Function Attrs: optsize
declare zeroext i16 @sre_hton16(i16 zeroext) #4

; Function Attrs: optsize
declare zeroext i16 @sre_ntoh16(i16 zeroext) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readonly }
attributes #12 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !490, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !114, metadata !129, metadata !139, metadata !156, metadata !162, metadata !170, metadata !175, metadata !217, metadata !260, metadata !267, metadata !276, metadata !284, metadata !295, metadata !303, metadata !336, metadata !342, metadata !347, metadata !350, metadata !356, metadata !365, metadata !375, metadata !391, metadata !400, metadata !410, metadata !414, metadata !421, metadata !429, metadata !435, metadata !441, metadata !448, metadata !454, metadata !462, metadata !472, metadata !478, metadata !482}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIOpen", metadata !"SSIOpen", metadata !"", i32 60, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.ssifile_s**)* @SSIOpen, null, null, metadata !109, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [SSIOpen]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !11}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!13 = metadata !{i32 786454, metadata !1, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!14 = metadata !{i32 786451, metadata !15, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !16, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!15 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!16 = metadata !{metadata !17, metadata !73, metadata !76, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !104, metadata !106, metadata !107, metadata !108}
!17 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!19 = metadata !{i32 786454, metadata !15, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!21 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !43, metadata !44, metadata !45, metadata !46, metadata !49, metadata !51, metadata !53, metadata !57, metadata !59, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !68, metadata !69}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!32 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!34 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!35 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!37 = metadata !{i32 786451, metadata !21, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !40, metadata !42}
!39 = metadata !{i32 786445, metadata !21, metadata !37, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786445, metadata !21, metadata !37, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!42 = metadata !{i32 786445, metadata !21, metadata !37, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!43 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !41} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!44 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!45 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!46 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !47} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!47 = metadata !{i32 786454, metadata !21, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!48 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!49 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !50} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!50 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!51 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !52} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!52 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!53 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !54} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!54 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !10, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!57 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !58} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !60} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!60 = metadata !{i32 786454, metadata !21, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!61 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !58} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!62 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !58} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!63 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !58} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!64 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !58} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!65 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !66} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!66 = metadata !{i32 786454, metadata !21, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!67 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!68 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!69 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !70} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !10, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!73 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!74 = metadata !{i32 786454, metadata !15, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!75 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!76 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !77} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!77 = metadata !{i32 786454, metadata !15, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!78 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!79 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !74} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!80 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !74} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!81 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !74} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!82 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !74} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!83 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !74} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!84 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !74} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!85 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !74} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!86 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !87} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!87 = metadata !{i32 786454, metadata !15, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!88 = metadata !{i32 786451, metadata !15, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !89, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786445, metadata !15, metadata !88, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!91 = metadata !{i32 786445, metadata !15, metadata !88, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!92 = metadata !{i32 786455, metadata !15, metadata !88, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !93, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786445, metadata !15, metadata !92, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!95 = metadata !{i32 786445, metadata !15, metadata !92, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!96 = metadata !{i32 786454, metadata !15, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!97 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !87} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!99 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !87} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!100 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !10} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!101 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !10} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!102 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !103} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !105} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!106 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !105} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!107 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !105} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!108 = metadata !{i32 786445, metadata !15, metadata !14, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !105} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113}
!110 = metadata !{i32 786689, metadata !4, metadata !"filename", metadata !5, i32 16777276, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 60]
!111 = metadata !{i32 786689, metadata !4, metadata !"ret_sfp", metadata !5, i32 33554492, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_sfp] [line 60]
!112 = metadata !{i32 786688, metadata !4, metadata !"sfp", metadata !5, i32 62, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sfp] [line 62]
!113 = metadata !{i32 786688, metadata !4, metadata !"status", metadata !5, i32 63, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 63]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIGetOffsetByName", metadata !"SSIGetOffsetByName", metadata !"", i32 184, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*)* @SSIGetOffsetByName, null, null, metadata !119, i32 186} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 186] [SSIGetOffsetByName]
!115 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !8, metadata !12, metadata !9, metadata !117, metadata !118}
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIOFFSET]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!120 = metadata !{i32 786689, metadata !114, metadata !"sfp", metadata !5, i32 16777400, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 184]
!121 = metadata !{i32 786689, metadata !114, metadata !"key", metadata !5, i32 33554616, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 184]
!122 = metadata !{i32 786689, metadata !114, metadata !"ret_fh", metadata !5, i32 50331832, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_fh] [line 184]
!123 = metadata !{i32 786689, metadata !114, metadata !"ret_offset", metadata !5, i32 67109049, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_offset] [line 185]
!124 = metadata !{i32 786688, metadata !114, metadata !"status", metadata !5, i32 187, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 187]
!125 = metadata !{i32 786688, metadata !114, metadata !"fnum", metadata !5, i32 188, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnum] [line 188]
!126 = metadata !{i32 786688, metadata !127, metadata !"pkey", metadata !5, i32 206, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pkey] [line 206]
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 205, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!128 = metadata !{i32 786443, metadata !1, metadata !114, i32 202, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIGetOffsetByNumber", metadata !"SSIGetOffsetByNumber", metadata !"", i32 242, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*)* @SSIGetOffsetByNumber, null, null, metadata !132, i32 243} ; [ DW_TAG_subprogram ] [line 242] [def] [scope 243] [SSIGetOffsetByNumber]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !8, metadata !12, metadata !8, metadata !117, metadata !118}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!133 = metadata !{i32 786689, metadata !129, metadata !"sfp", metadata !5, i32 16777458, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 242]
!134 = metadata !{i32 786689, metadata !129, metadata !"n", metadata !5, i32 33554674, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 242]
!135 = metadata !{i32 786689, metadata !129, metadata !"ret_fh", metadata !5, i32 50331890, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_fh] [line 242]
!136 = metadata !{i32 786689, metadata !129, metadata !"ret_offset", metadata !5, i32 67109106, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_offset] [line 242]
!137 = metadata !{i32 786688, metadata !129, metadata !"fnum", metadata !5, i32 244, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnum] [line 244]
!138 = metadata !{i32 786688, metadata !129, metadata !"pkey", metadata !5, i32 245, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pkey] [line 245]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIGetSubseqOffset", metadata !"SSIGetSubseqOffset", metadata !"", i32 293, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssifile_s*, i8*, i32, i32*, %struct.ssioffset_s*, %struct.ssioffset_s*, i32*)* @SSIGetSubseqOffset, null, null, metadata !142, i32 296} ; [ DW_TAG_subprogram ] [line 293] [def] [scope 296] [SSIGetSubseqOffset]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !8, metadata !12, metadata !9, metadata !8, metadata !117, metadata !118, metadata !118, metadata !117}
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!143 = metadata !{i32 786689, metadata !139, metadata !"sfp", metadata !5, i32 16777509, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 293]
!144 = metadata !{i32 786689, metadata !139, metadata !"key", metadata !5, i32 33554725, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 293]
!145 = metadata !{i32 786689, metadata !139, metadata !"requested_start", metadata !5, i32 50331941, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [requested_start] [line 293]
!146 = metadata !{i32 786689, metadata !139, metadata !"ret_fh", metadata !5, i32 67109158, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_fh] [line 294]
!147 = metadata !{i32 786689, metadata !139, metadata !"record_offset", metadata !5, i32 83886374, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [record_offset] [line 294]
!148 = metadata !{i32 786689, metadata !139, metadata !"data_offset", metadata !5, i32 100663591, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data_offset] [line 295]
!149 = metadata !{i32 786689, metadata !139, metadata !"ret_actual_start", metadata !5, i32 117440807, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_actual_start] [line 295]
!150 = metadata !{i32 786688, metadata !139, metadata !"status", metadata !5, i32 297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 297]
!151 = metadata !{i32 786688, metadata !139, metadata !"len", metadata !5, i32 298, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 298]
!152 = metadata !{i32 786688, metadata !139, metadata !"r", metadata !5, i32 299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 299]
!153 = metadata !{i32 786688, metadata !139, metadata !"b", metadata !5, i32 299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 299]
!154 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !5, i32 299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 299]
!155 = metadata !{i32 786688, metadata !139, metadata !"l", metadata !5, i32 299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 299]
!156 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSISetFilePosition", metadata !"SSISetFilePosition", metadata !"", i32 379, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.ssioffset_s*)* @SSISetFilePosition, null, null, metadata !159, i32 380} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 380] [SSISetFilePosition]
!157 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{metadata !8, metadata !18, metadata !118}
!159 = metadata !{metadata !160, metadata !161}
!160 = metadata !{i32 786689, metadata !156, metadata !"fp", metadata !5, i32 16777595, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 379]
!161 = metadata !{i32 786689, metadata !156, metadata !"offset", metadata !5, i32 33554811, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 379]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIFileInfo", metadata !"SSIFileInfo", metadata !"", i32 418, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssifile_s*, i32, i8**, i32*)* @SSIFileInfo, null, null, metadata !165, i32 419} ; [ DW_TAG_subprogram ] [line 418] [def] [scope 419] [SSIFileInfo]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !8, metadata !12, metadata !8, metadata !103, metadata !117}
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169}
!166 = metadata !{i32 786689, metadata !162, metadata !"sfp", metadata !5, i32 16777634, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 418]
!167 = metadata !{i32 786689, metadata !162, metadata !"fh", metadata !5, i32 33554850, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fh] [line 418]
!168 = metadata !{i32 786689, metadata !162, metadata !"ret_filename", metadata !5, i32 50332066, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_filename] [line 418]
!169 = metadata !{i32 786689, metadata !162, metadata !"ret_format", metadata !5, i32 67109282, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_format] [line 418]
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIClose", metadata !"SSIClose", metadata !"", i32 436, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ssifile_s*)* @SSIClose, null, null, metadata !173, i32 437} ; [ DW_TAG_subprogram ] [line 436] [def] [scope 437] [SSIClose]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{null, metadata !12}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 786689, metadata !170, metadata !"sfp", metadata !5, i32 16777652, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 436]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIRecommendMode", metadata !"SSIRecommendMode", metadata !"", i32 479, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @SSIRecommendMode, null, null, metadata !178, i32 480} ; [ DW_TAG_subprogram ] [line 479] [def] [scope 480] [SSIRecommendMode]
!176 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{metadata !8, metadata !9}
!178 = metadata !{metadata !179, metadata !180}
!179 = metadata !{i32 786689, metadata !175, metadata !"file", metadata !5, i32 16777695, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 479]
!180 = metadata !{i32 786688, metadata !175, metadata !"s2", metadata !5, i32 491, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 491]
!181 = metadata !{i32 786451, metadata !182, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [from ]
!182 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/stat.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!183 = metadata !{metadata !184, metadata !186, metadata !188, metadata !190, metadata !192, metadata !194, metadata !196, metadata !197, metadata !198, metadata !199, metadata !201, metadata !203, metadata !211, metadata !212, metadata !213}
!184 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!185 = metadata !{i32 786454, metadata !182, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!186 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !187} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!187 = metadata !{i32 786454, metadata !182, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!188 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !189} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!189 = metadata !{i32 786454, metadata !182, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!190 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !191} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!191 = metadata !{i32 786454, metadata !182, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!192 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !193} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!193 = metadata !{i32 786454, metadata !182, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!194 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !195} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!195 = metadata !{i32 786454, metadata !182, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!196 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!197 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !185} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!198 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!199 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !200} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!200 = metadata !{i32 786454, metadata !182, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!201 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !202} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!202 = metadata !{i32 786454, metadata !182, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!203 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !204} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!204 = metadata !{i32 786451, metadata !205, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !206, i32 0, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [from ]
!205 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!206 = metadata !{metadata !207, metadata !209}
!207 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!208 = metadata !{i32 786454, metadata !205, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!209 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !210} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!210 = metadata !{i32 786454, metadata !205, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!211 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !204} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!212 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !204} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!213 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !214} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!214 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !210, metadata !215, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!215 = metadata !{metadata !216}
!216 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!217 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSICreateIndex", metadata !"SSICreateIndex", metadata !"", i32 515, metadata !218, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ssiindex_s* (i32)* @SSICreateIndex, null, null, metadata !257, i32 516} ; [ DW_TAG_subprogram ] [line 515] [def] [scope 516] [SSICreateIndex]
!218 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!219 = metadata !{metadata !220, metadata !8}
!220 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIINDEX]
!221 = metadata !{i32 786454, metadata !1, null, metadata !"SSIINDEX", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !222} ; [ DW_TAG_typedef ] [SSIINDEX] [line 127, size 0, align 0, offset 0] [from ssiindex_s]
!222 = metadata !{i32 786451, metadata !15, null, metadata !"ssiindex_s", i32 102, i64 960, i64 64, i32 0, i32 0, null, metadata !223, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssiindex_s] [line 102, size 960, align 64, offset 0] [from ]
!223 = metadata !{metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !253, metadata !254, metadata !255, metadata !256}
!224 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"smode", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [smode] [line 103, size 32, align 32, offset 0] [from int]
!225 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"imode", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [imode] [line 104, size 32, align 32, offset 32] [from int]
!226 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"external", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [external] [line 105, size 32, align 32, offset 64] [from int]
!227 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"max_ram", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [max_ram] [line 106, size 32, align 32, offset 96] [from int]
!228 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"filenames", i32 108, i64 64, i64 64, i64 128, i32 0, metadata !103} ; [ DW_TAG_member ] [filenames] [line 108, size 64, align 64, offset 128] [from ]
!229 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"fileformat", i32 109, i64 64, i64 64, i64 192, i32 0, metadata !105} ; [ DW_TAG_member ] [fileformat] [line 109, size 64, align 64, offset 192] [from ]
!230 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"bpl", i32 110, i64 64, i64 64, i64 256, i32 0, metadata !105} ; [ DW_TAG_member ] [bpl] [line 110, size 64, align 64, offset 256] [from ]
!231 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"rpl", i32 111, i64 64, i64 64, i64 320, i32 0, metadata !105} ; [ DW_TAG_member ] [rpl] [line 111, size 64, align 64, offset 320] [from ]
!232 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"flen", i32 112, i64 32, i64 32, i64 384, i32 0, metadata !74} ; [ DW_TAG_member ] [flen] [line 112, size 32, align 32, offset 384] [from sqd_uint32]
!233 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"nfiles", i32 113, i64 16, i64 16, i64 416, i32 0, metadata !77} ; [ DW_TAG_member ] [nfiles] [line 113, size 16, align 16, offset 416] [from sqd_uint16]
!234 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"pkeys", i32 115, i64 64, i64 64, i64 448, i32 0, metadata !235} ; [ DW_TAG_member ] [pkeys] [line 115, size 64, align 64, offset 448] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ssipkey_s]
!236 = metadata !{i32 786451, metadata !15, null, metadata !"ssipkey_s", i32 91, i64 448, i64 64, i32 0, i32 0, null, metadata !237, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssipkey_s] [line 91, size 448, align 64, offset 0] [from ]
!237 = metadata !{metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!238 = metadata !{i32 786445, metadata !15, metadata !236, metadata !"key", i32 92, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [key] [line 92, size 64, align 64, offset 0] [from ]
!239 = metadata !{i32 786445, metadata !15, metadata !236, metadata !"fnum", i32 93, i64 16, i64 16, i64 64, i32 0, metadata !77} ; [ DW_TAG_member ] [fnum] [line 93, size 16, align 16, offset 64] [from sqd_uint16]
!240 = metadata !{i32 786445, metadata !15, metadata !236, metadata !"r_off", i32 94, i64 128, i64 64, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [r_off] [line 94, size 128, align 64, offset 128] [from SSIOFFSET]
!241 = metadata !{i32 786445, metadata !15, metadata !236, metadata !"d_off", i32 95, i64 128, i64 64, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [d_off] [line 95, size 128, align 64, offset 256] [from SSIOFFSET]
!242 = metadata !{i32 786445, metadata !15, metadata !236, metadata !"len", i32 96, i64 32, i64 32, i64 384, i32 0, metadata !74} ; [ DW_TAG_member ] [len] [line 96, size 32, align 32, offset 384] [from sqd_uint32]
!243 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"plen", i32 116, i64 32, i64 32, i64 512, i32 0, metadata !74} ; [ DW_TAG_member ] [plen] [line 116, size 32, align 32, offset 512] [from sqd_uint32]
!244 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"nprimary", i32 117, i64 32, i64 32, i64 544, i32 0, metadata !74} ; [ DW_TAG_member ] [nprimary] [line 117, size 32, align 32, offset 544] [from sqd_uint32]
!245 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"ptmpfile", i32 118, i64 64, i64 64, i64 576, i32 0, metadata !9} ; [ DW_TAG_member ] [ptmpfile] [line 118, size 64, align 64, offset 576] [from ]
!246 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"ptmp", i32 119, i64 64, i64 64, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [ptmp] [line 119, size 64, align 64, offset 640] [from ]
!247 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"skeys", i32 121, i64 64, i64 64, i64 704, i32 0, metadata !248} ; [ DW_TAG_member ] [skeys] [line 121, size 64, align 64, offset 704] [from ]
!248 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ssiskey_s]
!249 = metadata !{i32 786451, metadata !15, null, metadata !"ssiskey_s", i32 98, i64 128, i64 64, i32 0, i32 0, null, metadata !250, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssiskey_s] [line 98, size 128, align 64, offset 0] [from ]
!250 = metadata !{metadata !251, metadata !252}
!251 = metadata !{i32 786445, metadata !15, metadata !249, metadata !"key", i32 99, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [key] [line 99, size 64, align 64, offset 0] [from ]
!252 = metadata !{i32 786445, metadata !15, metadata !249, metadata !"pkey", i32 100, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [pkey] [line 100, size 64, align 64, offset 64] [from ]
!253 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"slen", i32 122, i64 32, i64 32, i64 768, i32 0, metadata !74} ; [ DW_TAG_member ] [slen] [line 122, size 32, align 32, offset 768] [from sqd_uint32]
!254 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"nsecondary", i32 123, i64 32, i64 32, i64 800, i32 0, metadata !74} ; [ DW_TAG_member ] [nsecondary] [line 123, size 32, align 32, offset 800] [from sqd_uint32]
!255 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"stmpfile", i32 124, i64 64, i64 64, i64 832, i32 0, metadata !9} ; [ DW_TAG_member ] [stmpfile] [line 124, size 64, align 64, offset 832] [from ]
!256 = metadata !{i32 786445, metadata !15, metadata !222, metadata !"stmp", i32 125, i64 64, i64 64, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [stmp] [line 125, size 64, align 64, offset 896] [from ]
!257 = metadata !{metadata !258, metadata !259}
!258 = metadata !{i32 786689, metadata !217, metadata !"mode", metadata !5, i32 16777731, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 515]
!259 = metadata !{i32 786688, metadata !217, metadata !"g", metadata !5, i32 517, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 517]
!260 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIGetFilePosition", metadata !"SSIGetFilePosition", metadata !"", i32 587, metadata !261, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, %struct.ssioffset_s*)* @SSIGetFilePosition, null, null, metadata !263, i32 588} ; [ DW_TAG_subprogram ] [line 587] [def] [scope 588] [SSIGetFilePosition]
!261 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{metadata !8, metadata !18, metadata !8, metadata !118}
!263 = metadata !{metadata !264, metadata !265, metadata !266}
!264 = metadata !{i32 786689, metadata !260, metadata !"fp", metadata !5, i32 16777803, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 587]
!265 = metadata !{i32 786689, metadata !260, metadata !"mode", metadata !5, i32 33555019, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 587]
!266 = metadata !{i32 786689, metadata !260, metadata !"ret_offset", metadata !5, i32 50332235, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_offset] [line 587]
!267 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIAddFileToIndex", metadata !"SSIAddFileToIndex", metadata !"", i32 629, metadata !268, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssiindex_s*, i8*, i32, i32*)* @SSIAddFileToIndex, null, null, metadata !270, i32 630} ; [ DW_TAG_subprogram ] [line 629] [def] [scope 630] [SSIAddFileToIndex]
!268 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!269 = metadata !{metadata !8, metadata !220, metadata !9, metadata !8, metadata !117}
!270 = metadata !{metadata !271, metadata !272, metadata !273, metadata !274, metadata !275}
!271 = metadata !{i32 786689, metadata !267, metadata !"g", metadata !5, i32 16777845, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 629]
!272 = metadata !{i32 786689, metadata !267, metadata !"filename", metadata !5, i32 33555061, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 629]
!273 = metadata !{i32 786689, metadata !267, metadata !"fmt", metadata !5, i32 50332277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 629]
!274 = metadata !{i32 786689, metadata !267, metadata !"ret_fh", metadata !5, i32 67109493, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_fh] [line 629]
!275 = metadata !{i32 786688, metadata !267, metadata !"n", metadata !5, i32 631, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 631]
!276 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSISetFileForSubseq", metadata !"SSISetFileForSubseq", metadata !"", i32 682, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssiindex_s*, i32, i32, i32)* @SSISetFileForSubseq, null, null, metadata !279, i32 683} ; [ DW_TAG_subprogram ] [line 682] [def] [scope 683] [SSISetFileForSubseq]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{metadata !8, metadata !220, metadata !8, metadata !8, metadata !8}
!279 = metadata !{metadata !280, metadata !281, metadata !282, metadata !283}
!280 = metadata !{i32 786689, metadata !276, metadata !"g", metadata !5, i32 16777898, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 682]
!281 = metadata !{i32 786689, metadata !276, metadata !"fh", metadata !5, i32 33555114, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fh] [line 682]
!282 = metadata !{i32 786689, metadata !276, metadata !"bpl", metadata !5, i32 50332330, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpl] [line 682]
!283 = metadata !{i32 786689, metadata !276, metadata !"rpl", metadata !5, i32 67109546, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rpl] [line 682]
!284 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIAddPrimaryKeyToIndex", metadata !"SSIAddPrimaryKeyToIndex", metadata !"", i32 726, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssiindex_s*, i8*, i32, %struct.ssioffset_s*, %struct.ssioffset_s*, i32)* @SSIAddPrimaryKeyToIndex, null, null, metadata !287, i32 728} ; [ DW_TAG_subprogram ] [line 726] [def] [scope 728] [SSIAddPrimaryKeyToIndex]
!285 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{metadata !8, metadata !220, metadata !9, metadata !8, metadata !118, metadata !118, metadata !8}
!287 = metadata !{metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!288 = metadata !{i32 786689, metadata !284, metadata !"g", metadata !5, i32 16777942, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 726]
!289 = metadata !{i32 786689, metadata !284, metadata !"key", metadata !5, i32 33555158, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 726]
!290 = metadata !{i32 786689, metadata !284, metadata !"fh", metadata !5, i32 50332374, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fh] [line 726]
!291 = metadata !{i32 786689, metadata !284, metadata !"r_off", metadata !5, i32 67109591, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_off] [line 727]
!292 = metadata !{i32 786689, metadata !284, metadata !"d_off", metadata !5, i32 83886807, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d_off] [line 727]
!293 = metadata !{i32 786689, metadata !284, metadata !"L", metadata !5, i32 100664023, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 727]
!294 = metadata !{i32 786688, metadata !284, metadata !"n", metadata !5, i32 729, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 729]
!295 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIAddSecondaryKeyToIndex", metadata !"SSIAddSecondaryKeyToIndex", metadata !"", i32 803, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssiindex_s*, i8*, i8*)* @SSIAddSecondaryKeyToIndex, null, null, metadata !298, i32 804} ; [ DW_TAG_subprogram ] [line 803] [def] [scope 804] [SSIAddSecondaryKeyToIndex]
!296 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{metadata !8, metadata !220, metadata !9, metadata !9}
!298 = metadata !{metadata !299, metadata !300, metadata !301, metadata !302}
!299 = metadata !{i32 786689, metadata !295, metadata !"g", metadata !5, i32 16778019, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 803]
!300 = metadata !{i32 786689, metadata !295, metadata !"key", metadata !5, i32 33555235, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 803]
!301 = metadata !{i32 786689, metadata !295, metadata !"pkey", metadata !5, i32 50332451, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pkey] [line 803]
!302 = metadata !{i32 786688, metadata !295, metadata !"n", metadata !5, i32 805, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 805]
!303 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIWriteIndex", metadata !"SSIWriteIndex", metadata !"", i32 878, metadata !304, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.ssiindex_s*)* @SSIWriteIndex, null, null, metadata !306, i32 879} ; [ DW_TAG_subprogram ] [line 878] [def] [scope 879] [SSIWriteIndex]
!304 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!305 = metadata !{metadata !8, metadata !9, metadata !220}
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !327, metadata !329, metadata !330, metadata !331, metadata !334, metadata !335}
!307 = metadata !{i32 786689, metadata !303, metadata !"file", metadata !5, i32 16778094, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 878]
!308 = metadata !{i32 786689, metadata !303, metadata !"g", metadata !5, i32 33555310, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 878]
!309 = metadata !{i32 786688, metadata !303, metadata !"fp", metadata !5, i32 880, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 880]
!310 = metadata !{i32 786688, metadata !303, metadata !"status", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 881]
!311 = metadata !{i32 786688, metadata !303, metadata !"i", metadata !5, i32 882, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 882]
!312 = metadata !{i32 786688, metadata !303, metadata !"header_flags", metadata !5, i32 883, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header_flags] [line 883]
!313 = metadata !{i32 786688, metadata !303, metadata !"file_flags", metadata !5, i32 883, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file_flags] [line 883]
!314 = metadata !{i32 786688, metadata !303, metadata !"frecsize", metadata !5, i32 884, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frecsize] [line 884]
!315 = metadata !{i32 786688, metadata !303, metadata !"precsize", metadata !5, i32 884, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [precsize] [line 884]
!316 = metadata !{i32 786688, metadata !303, metadata !"srecsize", metadata !5, i32 884, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [srecsize] [line 884]
!317 = metadata !{i32 786688, metadata !303, metadata !"foffset", metadata !5, i32 885, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [foffset] [line 885]
!318 = metadata !{i32 786688, metadata !303, metadata !"poffset", metadata !5, i32 885, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [poffset] [line 885]
!319 = metadata !{i32 786688, metadata !303, metadata !"soffset", metadata !5, i32 885, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [soffset] [line 885]
!320 = metadata !{i32 786688, metadata !303, metadata !"s", metadata !5, i32 886, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 886]
!321 = metadata !{i32 786688, metadata !303, metadata !"s2", metadata !5, i32 886, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 886]
!322 = metadata !{i32 786688, metadata !323, metadata !"cmd", metadata !5, i32 936, metadata !324, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmd] [line 936]
!323 = metadata !{i32 786443, metadata !1, metadata !303, i32 935, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !10, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!325 = metadata !{metadata !326}
!326 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!327 = metadata !{i32 786688, metadata !328, metadata !"buf", metadata !5, i32 998, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 998]
!328 = metadata !{i32 786443, metadata !1, metadata !303, i32 997, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!329 = metadata !{i32 786688, metadata !328, metadata !"buflen", metadata !5, i32 999, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buflen] [line 999]
!330 = metadata !{i32 786688, metadata !328, metadata !"pkey", metadata !5, i32 1000, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pkey] [line 1000]
!331 = metadata !{i32 786688, metadata !332, metadata !"skey", metadata !5, i32 1031, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skey] [line 1031]
!332 = metadata !{i32 786443, metadata !1, metadata !333, i32 1030, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!333 = metadata !{i32 786443, metadata !1, metadata !303, i32 1027, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!334 = metadata !{i32 786688, metadata !332, metadata !"buf", metadata !5, i32 1032, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 1032]
!335 = metadata !{i32 786688, metadata !332, metadata !"n", metadata !5, i32 1033, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1033]
!336 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIFreeIndex", metadata !"SSIFreeIndex", metadata !"", i32 1073, metadata !337, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ssiindex_s*)* @SSIFreeIndex, null, null, metadata !339, i32 1074} ; [ DW_TAG_subprogram ] [line 1073] [def] [scope 1074] [SSIFreeIndex]
!337 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!338 = metadata !{null, metadata !220}
!339 = metadata !{metadata !340, metadata !341}
!340 = metadata !{i32 786689, metadata !336, metadata !"g", metadata !5, i32 16778289, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1073]
!341 = metadata !{i32 786688, metadata !336, metadata !"i", metadata !5, i32 1075, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1075]
!342 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIErrorString", metadata !"SSIErrorString", metadata !"", i32 1114, metadata !343, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @SSIErrorString, null, null, metadata !345, i32 1115} ; [ DW_TAG_subprogram ] [line 1114] [def] [scope 1115] [SSIErrorString]
!343 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{metadata !9, metadata !8}
!345 = metadata !{metadata !346}
!346 = metadata !{i32 786689, metadata !342, metadata !"n", metadata !5, i32 16778330, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1114]
!347 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SSIForceExternalSort", metadata !"SSIForceExternalSort", metadata !"", i32 1436, metadata !337, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ssiindex_s*)* @SSIForceExternalSort, null, null, metadata !348, i32 1437} ; [ DW_TAG_subprogram ] [line 1436] [def] [scope 1437] [SSIForceExternalSort]
!348 = metadata !{metadata !349}
!349 = metadata !{i32 786689, metadata !347, metadata !"g", metadata !5, i32 16778652, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1436]
!350 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"activate_external_sort", metadata !"activate_external_sort", metadata !"", i32 1384, metadata !351, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssiindex_s*)* @activate_external_sort, null, null, metadata !353, i32 1385} ; [ DW_TAG_subprogram ] [line 1384] [local] [def] [scope 1385] [activate_external_sort]
!351 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = metadata !{metadata !8, metadata !220}
!353 = metadata !{metadata !354, metadata !355}
!354 = metadata !{i32 786689, metadata !350, metadata !"g", metadata !5, i32 16778600, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1384]
!355 = metadata !{i32 786688, metadata !350, metadata !"i", metadata !5, i32 1386, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1386]
!356 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"current_index_size", metadata !"current_index_size", metadata !"", i32 1355, metadata !357, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.ssiindex_s*)* @current_index_size, null, null, metadata !359, i32 1356} ; [ DW_TAG_subprogram ] [line 1355] [local] [def] [scope 1356] [current_index_size]
!357 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!358 = metadata !{metadata !96, metadata !220}
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !363, metadata !364}
!360 = metadata !{i32 786689, metadata !356, metadata !"g", metadata !5, i32 16778571, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1355]
!361 = metadata !{i32 786688, metadata !356, metadata !"frecsize", metadata !5, i32 1357, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frecsize] [line 1357]
!362 = metadata !{i32 786688, metadata !356, metadata !"precsize", metadata !5, i32 1357, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [precsize] [line 1357]
!363 = metadata !{i32 786688, metadata !356, metadata !"srecsize", metadata !5, i32 1357, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [srecsize] [line 1357]
!364 = metadata !{i32 786688, metadata !356, metadata !"total", metadata !5, i32 1358, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 1358]
!365 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"indexfile_position", metadata !"indexfile_position", metadata !"", i32 1332, metadata !366, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssifile_s*, %struct.ssioffset_s*, i32, i32)* @indexfile_position, null, null, metadata !368, i32 1333} ; [ DW_TAG_subprogram ] [line 1332] [local] [def] [scope 1333] [indexfile_position]
!366 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!367 = metadata !{metadata !8, metadata !12, metadata !118, metadata !74, metadata !74}
!368 = metadata !{metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374}
!369 = metadata !{i32 786689, metadata !365, metadata !"sfp", metadata !5, i32 16778548, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 1332]
!370 = metadata !{i32 786689, metadata !365, metadata !"base", metadata !5, i32 33555764, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 1332]
!371 = metadata !{i32 786689, metadata !365, metadata !"len", metadata !5, i32 50332980, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1332]
!372 = metadata !{i32 786689, metadata !365, metadata !"n", metadata !5, i32 67110196, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1332]
!373 = metadata !{i32 786688, metadata !365, metadata !"pos", metadata !5, i32 1334, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 1334]
!374 = metadata !{i32 786688, metadata !365, metadata !"status", metadata !5, i32 1335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 1335]
!375 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"binary_search", metadata !"binary_search", metadata !"", i32 1283, metadata !376, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ssifile_s*, i8*, i32, %struct.ssioffset_s*, i32, i32)* @binary_search, null, null, metadata !378, i32 1285} ; [ DW_TAG_subprogram ] [line 1283] [local] [def] [scope 1285] [binary_search]
!376 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!377 = metadata !{metadata !8, metadata !12, metadata !9, metadata !8, metadata !118, metadata !74, metadata !74}
!378 = metadata !{metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!379 = metadata !{i32 786689, metadata !375, metadata !"sfp", metadata !5, i32 16778499, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 1283]
!380 = metadata !{i32 786689, metadata !375, metadata !"key", metadata !5, i32 33555715, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 1283]
!381 = metadata !{i32 786689, metadata !375, metadata !"klen", metadata !5, i32 50332931, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 1283]
!382 = metadata !{i32 786689, metadata !375, metadata !"base", metadata !5, i32 67110147, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 1283]
!383 = metadata !{i32 786689, metadata !375, metadata !"recsize", metadata !5, i32 83887364, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [recsize] [line 1284]
!384 = metadata !{i32 786689, metadata !375, metadata !"maxidx", metadata !5, i32 100664580, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxidx] [line 1284]
!385 = metadata !{i32 786688, metadata !375, metadata !"name", metadata !5, i32 1286, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1286]
!386 = metadata !{i32 786688, metadata !375, metadata !"left", metadata !5, i32 1287, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 1287]
!387 = metadata !{i32 786688, metadata !375, metadata !"right", metadata !5, i32 1287, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 1287]
!388 = metadata !{i32 786688, metadata !375, metadata !"mid", metadata !5, i32 1287, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mid] [line 1287]
!389 = metadata !{i32 786688, metadata !375, metadata !"cmp", metadata !5, i32 1288, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmp] [line 1288]
!390 = metadata !{i32 786688, metadata !375, metadata !"status", metadata !5, i32 1289, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 1289]
!391 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_skey_info", metadata !"parse_skey_info", metadata !"", i32 1247, metadata !392, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !394, i32 1248} ; [ DW_TAG_subprogram ] [line 1247] [local] [def] [scope 1248] [parse_skey_info]
!392 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!393 = metadata !{metadata !8, metadata !9, metadata !248}
!394 = metadata !{metadata !395, metadata !396, metadata !397, metadata !398, metadata !399}
!395 = metadata !{i32 786689, metadata !391, metadata !"buf", metadata !5, i32 16778463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1247]
!396 = metadata !{i32 786689, metadata !391, metadata !"skey", metadata !5, i32 33555679, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [skey] [line 1247]
!397 = metadata !{i32 786688, metadata !391, metadata !"s", metadata !5, i32 1249, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1249]
!398 = metadata !{i32 786688, metadata !391, metadata !"tok", metadata !5, i32 1249, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tok] [line 1249]
!399 = metadata !{i32 786688, metadata !391, metadata !"n", metadata !5, i32 1250, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1250]
!400 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_pkey_info", metadata !"parse_pkey_info", metadata !"", i32 1208, metadata !401, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !403, i32 1209} ; [ DW_TAG_subprogram ] [line 1208] [local] [def] [scope 1209] [parse_pkey_info]
!401 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!402 = metadata !{metadata !8, metadata !9, metadata !10, metadata !235}
!403 = metadata !{metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409}
!404 = metadata !{i32 786689, metadata !400, metadata !"buf", metadata !5, i32 16778424, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1208]
!405 = metadata !{i32 786689, metadata !400, metadata !"mode", metadata !5, i32 33555640, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 1208]
!406 = metadata !{i32 786689, metadata !400, metadata !"pkey", metadata !5, i32 50332856, metadata !235, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pkey] [line 1208]
!407 = metadata !{i32 786688, metadata !400, metadata !"s", metadata !5, i32 1210, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1210]
!408 = metadata !{i32 786688, metadata !400, metadata !"tok", metadata !5, i32 1210, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tok] [line 1210]
!409 = metadata !{i32 786688, metadata !400, metadata !"n", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1211]
!410 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_offset", metadata !"write_offset", metadata !"", i32 1198, metadata !157, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.ssioffset_s*)* @write_offset, null, null, metadata !411, i32 1199} ; [ DW_TAG_subprogram ] [line 1198] [local] [def] [scope 1199] [write_offset]
!411 = metadata !{metadata !412, metadata !413}
!412 = metadata !{i32 786689, metadata !410, metadata !"fp", metadata !5, i32 16778414, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1198]
!413 = metadata !{i32 786689, metadata !410, metadata !"offset", metadata !5, i32 33555630, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 1198]
!414 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_offset", metadata !"read_offset", metadata !"", i32 1185, metadata !415, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8, %struct.ssioffset_s*)* @read_offset, null, null, metadata !417, i32 1186} ; [ DW_TAG_subprogram ] [line 1185] [local] [def] [scope 1186] [read_offset]
!415 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!416 = metadata !{metadata !8, metadata !18, metadata !10, metadata !118}
!417 = metadata !{metadata !418, metadata !419, metadata !420}
!418 = metadata !{i32 786689, metadata !414, metadata !"fp", metadata !5, i32 16778401, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1185]
!419 = metadata !{i32 786689, metadata !414, metadata !"mode", metadata !5, i32 33555617, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 1185]
!420 = metadata !{i32 786689, metadata !414, metadata !"ret_offset", metadata !5, i32 50332833, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_offset] [line 1185]
!421 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_i64", metadata !"read_i64", metadata !"", i32 1170, metadata !422, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !425, i32 1171} ; [ DW_TAG_subprogram ] [line 1170] [local] [def] [scope 1171] [read_i64]
!422 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!423 = metadata !{metadata !8, metadata !18, metadata !424}
!424 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint64]
!425 = metadata !{metadata !426, metadata !427, metadata !428}
!426 = metadata !{i32 786689, metadata !421, metadata !"fp", metadata !5, i32 16778386, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1170]
!427 = metadata !{i32 786689, metadata !421, metadata !"ret_result", metadata !5, i32 33555602, metadata !424, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_result] [line 1170]
!428 = metadata !{i32 786688, metadata !421, metadata !"result", metadata !5, i32 1172, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 1172]
!429 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_i64", metadata !"write_i64", metadata !"", i32 1178, metadata !430, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !432, i32 1179} ; [ DW_TAG_subprogram ] [line 1178] [local] [def] [scope 1179] [write_i64]
!430 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!431 = metadata !{metadata !8, metadata !18, metadata !96}
!432 = metadata !{metadata !433, metadata !434}
!433 = metadata !{i32 786689, metadata !429, metadata !"fp", metadata !5, i32 16778394, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1178]
!434 = metadata !{i32 786689, metadata !429, metadata !"n", metadata !5, i32 33555610, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1178]
!435 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_i32", metadata !"write_i32", metadata !"", i32 1163, metadata !436, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !438, i32 1164} ; [ DW_TAG_subprogram ] [line 1163] [local] [def] [scope 1164] [write_i32]
!436 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!437 = metadata !{metadata !8, metadata !18, metadata !74}
!438 = metadata !{metadata !439, metadata !440}
!439 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!440 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!441 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_i32", metadata !"read_i32", metadata !"", i32 1155, metadata !442, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32*)* @read_i32, null, null, metadata !444, i32 1156} ; [ DW_TAG_subprogram ] [line 1155] [local] [def] [scope 1156] [read_i32]
!442 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!443 = metadata !{metadata !8, metadata !18, metadata !105}
!444 = metadata !{metadata !445, metadata !446, metadata !447}
!445 = metadata !{i32 786689, metadata !441, metadata !"fp", metadata !5, i32 16778371, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1155]
!446 = metadata !{i32 786689, metadata !441, metadata !"ret_result", metadata !5, i32 33555587, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_result] [line 1155]
!447 = metadata !{i32 786688, metadata !441, metadata !"result", metadata !5, i32 1157, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 1157]
!448 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_i16", metadata !"write_i16", metadata !"", i32 1148, metadata !449, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !451, i32 1149} ; [ DW_TAG_subprogram ] [line 1148] [local] [def] [scope 1149] [write_i16]
!449 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!450 = metadata !{metadata !8, metadata !18, metadata !77}
!451 = metadata !{metadata !452, metadata !453}
!452 = metadata !{i32 786689, metadata !448, metadata !"fp", metadata !5, i32 16778364, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1148]
!453 = metadata !{i32 786689, metadata !448, metadata !"n", metadata !5, i32 33555580, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1148]
!454 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_i16", metadata !"read_i16", metadata !"", i32 1140, metadata !455, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i16*)* @read_i16, null, null, metadata !458, i32 1141} ; [ DW_TAG_subprogram ] [line 1140] [local] [def] [scope 1141] [read_i16]
!455 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!456 = metadata !{metadata !8, metadata !18, metadata !457}
!457 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint16]
!458 = metadata !{metadata !459, metadata !460, metadata !461}
!459 = metadata !{i32 786689, metadata !454, metadata !"fp", metadata !5, i32 16778356, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1140]
!460 = metadata !{i32 786689, metadata !454, metadata !"ret_result", metadata !5, i32 33555572, metadata !457, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_result] [line 1140]
!461 = metadata !{i32 786688, metadata !454, metadata !"result", metadata !5, i32 1142, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 1142]
!462 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"skeysort", metadata !"skeysort", metadata !"", i32 869, metadata !463, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @skeysort, null, null, metadata !467, i32 870} ; [ DW_TAG_subprogram ] [line 869] [local] [def] [scope 870] [skeysort]
!463 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!464 = metadata !{metadata !8, metadata !465, metadata !465}
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !466} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!466 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !470, metadata !471}
!468 = metadata !{i32 786689, metadata !462, metadata !"k1", metadata !5, i32 16778085, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 869]
!469 = metadata !{i32 786689, metadata !462, metadata !"k2", metadata !5, i32 33555301, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k2] [line 869]
!470 = metadata !{i32 786688, metadata !462, metadata !"key1", metadata !5, i32 871, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key1] [line 871]
!471 = metadata !{i32 786688, metadata !462, metadata !"key2", metadata !5, i32 872, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key2] [line 872]
!472 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pkeysort", metadata !"pkeysort", metadata !"", i32 860, metadata !463, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @pkeysort, null, null, metadata !473, i32 861} ; [ DW_TAG_subprogram ] [line 860] [local] [def] [scope 861] [pkeysort]
!473 = metadata !{metadata !474, metadata !475, metadata !476, metadata !477}
!474 = metadata !{i32 786689, metadata !472, metadata !"k1", metadata !5, i32 16778076, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 860]
!475 = metadata !{i32 786689, metadata !472, metadata !"k2", metadata !5, i32 33555292, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k2] [line 860]
!476 = metadata !{i32 786688, metadata !472, metadata !"key1", metadata !5, i32 862, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key1] [line 862]
!477 = metadata !{i32 786688, metadata !472, metadata !"key2", metadata !5, i32 863, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key2] [line 863]
!478 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"clear_ssifile", metadata !"clear_ssifile", metadata !"", i32 448, metadata !171, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !479, i32 449} ; [ DW_TAG_subprogram ] [line 448] [local] [def] [scope 449] [clear_ssifile]
!479 = metadata !{metadata !480, metadata !481}
!480 = metadata !{i32 786689, metadata !478, metadata !"sfp", metadata !5, i32 16777664, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 448]
!481 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !5, i32 450, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 450]
!482 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"load_indexfile", metadata !"load_indexfile", metadata !"", i32 79, metadata !483, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !485, i32 80} ; [ DW_TAG_subprogram ] [line 79] [local] [def] [scope 80] [load_indexfile]
!483 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!484 = metadata !{metadata !8, metadata !12}
!485 = metadata !{metadata !486, metadata !487, metadata !488, metadata !489}
!486 = metadata !{i32 786689, metadata !482, metadata !"sfp", metadata !5, i32 16777295, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfp] [line 79]
!487 = metadata !{i32 786688, metadata !482, metadata !"magic", metadata !5, i32 81, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 81]
!488 = metadata !{i32 786688, metadata !482, metadata !"i", metadata !5, i32 82, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 82]
!489 = metadata !{i32 786688, metadata !482, metadata !"status", metadata !5, i32 83, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 83]
!490 = metadata !{metadata !491, metadata !492}
!491 = metadata !{i32 786484, i32 0, null, metadata !"v20magic", metadata !"v20magic", metadata !"", metadata !5, i32 24, metadata !74, i32 1, i32 1, null, null}
!492 = metadata !{i32 786484, i32 0, null, metadata !"v20swap", metadata !"v20swap", metadata !"", metadata !5, i32 25, metadata !74, i32 1, i32 1, null, null}
!493 = metadata !{i32 60, i32 0, metadata !4, null}
!494 = metadata !{%struct.ssifile_s* null}
!495 = metadata !{i32 62, i32 0, metadata !4, null}
!496 = metadata !{i32 64, i32 0, metadata !4, null}
!497 = metadata !{i32 65, i32 0, metadata !4, null}
!498 = metadata !{metadata !"any pointer", metadata !499}
!499 = metadata !{metadata !"omnipotent char", metadata !500}
!500 = metadata !{metadata !"Simple C/C++ TBAA"}
!501 = metadata !{i32 66, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!503 = metadata !{i32 67, i32 0, metadata !502, null}
!504 = metadata !{i32 79, i32 0, metadata !482, metadata !505}
!505 = metadata !{i32 69, i32 0, metadata !4, null}
!506 = metadata !{i32 786689, metadata !482, metadata !"sfp", metadata !5, i32 16777295, metadata !12, i32 0, metadata !505} ; [ DW_TAG_arg_variable ] [sfp] [line 79]
!507 = metadata !{i32 81, i32 0, metadata !482, metadata !505}
!508 = metadata !{i32 6}
!509 = metadata !{i32 786688, metadata !482, metadata !"status", metadata !5, i32 83, metadata !8, i32 0, metadata !505} ; [ DW_TAG_auto_variable ] [status] [line 83]
!510 = metadata !{i32 85, i32 0, metadata !482, metadata !505}
!511 = metadata !{i32 87, i32 0, metadata !482, metadata !505}
!512 = metadata !{i32 88, i32 0, metadata !482, metadata !505}
!513 = metadata !{i32 89, i32 0, metadata !482, metadata !505}
!514 = metadata !{i32 90, i32 0, metadata !482, metadata !505}
!515 = metadata !{i32 91, i32 0, metadata !482, metadata !505}
!516 = metadata !{i32 92, i32 0, metadata !482, metadata !505}
!517 = metadata !{metadata !"short", metadata !499}
!518 = metadata !{i32 93, i32 0, metadata !482, metadata !505}
!519 = metadata !{i32 786688, metadata !482, metadata !"magic", metadata !5, i32 81, metadata !74, i32 0, metadata !505} ; [ DW_TAG_auto_variable ] [magic] [line 81]
!520 = metadata !{i32 94, i32 0, metadata !482, metadata !505}
!521 = metadata !{metadata !"int", metadata !499}
!522 = metadata !{i32 95, i32 0, metadata !482, metadata !505}
!523 = metadata !{i32 100, i32 0, metadata !482, metadata !505}
!524 = metadata !{i32 105, i32 0, metadata !482, metadata !505}
!525 = metadata !{i32 106, i32 0, metadata !482, metadata !505}
!526 = metadata !{i32 108, i32 0, metadata !482, metadata !505}
!527 = metadata !{i32 109, i32 0, metadata !482, metadata !505}
!528 = metadata !{i32 110, i32 0, metadata !482, metadata !505}
!529 = metadata !{i32 111, i32 0, metadata !482, metadata !505}
!530 = metadata !{i32 112, i32 0, metadata !482, metadata !505}
!531 = metadata !{i32 113, i32 0, metadata !482, metadata !505}
!532 = metadata !{i32 114, i32 0, metadata !482, metadata !505}
!533 = metadata !{i32 115, i32 0, metadata !482, metadata !505}
!534 = metadata !{i32 116, i32 0, metadata !482, metadata !505}
!535 = metadata !{i32 118, i32 0, metadata !482, metadata !505}
!536 = metadata !{i32 119, i32 0, metadata !482, metadata !505}
!537 = metadata !{i32 120, i32 0, metadata !482, metadata !505}
!538 = metadata !{i32 128, i32 0, metadata !482, metadata !505}
!539 = metadata !{i32 129, i32 0, metadata !482, metadata !505}
!540 = metadata !{i32 130, i32 0, metadata !541, metadata !505}
!541 = metadata !{i32 786443, metadata !1, metadata !482, i32 130, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!542 = metadata !{i32 131, i32 0, metadata !482, metadata !505}
!543 = metadata !{i32 132, i32 0, metadata !482, metadata !505}
!544 = metadata !{i32 133, i32 0, metadata !482, metadata !505}
!545 = metadata !{i32 134, i32 0, metadata !482, metadata !505}
!546 = metadata !{i32 136, i32 0, metadata !547, metadata !505}
!547 = metadata !{i32 786443, metadata !1, metadata !482, i32 136, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!548 = metadata !{i32 142, i32 0, metadata !549, metadata !505}
!549 = metadata !{i32 786443, metadata !1, metadata !547, i32 137, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!550 = metadata !{i32 143, i32 0, metadata !549, metadata !505}
!551 = metadata !{i32 144, i32 0, metadata !549, metadata !505}
!552 = metadata !{i32 145, i32 0, metadata !549, metadata !505}
!553 = metadata !{i32 146, i32 0, metadata !549, metadata !505}
!554 = metadata !{i32 147, i32 0, metadata !549, metadata !505}
!555 = metadata !{i32 148, i32 0, metadata !549, metadata !505}
!556 = metadata !{i32 786688, metadata !482, metadata !"i", metadata !5, i32 82, metadata !77, i32 0, metadata !505} ; [ DW_TAG_auto_variable ] [i] [line 82]
!557 = metadata !{i32 158, i32 0, metadata !482, metadata !505}
!558 = metadata !{i32 159, i32 0, metadata !482, metadata !505}
!559 = metadata !{i32 160, i32 0, metadata !482, metadata !505}
!560 = metadata !{i32 70, i32 0, metadata !4, null}
!561 = metadata !{i32 71, i32 0, metadata !4, null}
!562 = metadata !{i32 72, i32 0, metadata !4, null}
!563 = metadata !{i32 184, i32 0, metadata !114, null}
!564 = metadata !{i32 185, i32 0, metadata !114, null}
!565 = metadata !{i32 188, i32 0, metadata !114, null}
!566 = metadata !{i32 192, i32 0, metadata !114, null}
!567 = metadata !{i32 194, i32 0, metadata !114, null}
!568 = metadata !{i32 197, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !114, i32 194, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!570 = metadata !{i32 198, i32 0, metadata !569, null}
!571 = metadata !{i32 199, i32 0, metadata !569, null}
!572 = metadata !{i32 205, i32 0, metadata !128, null}
!573 = metadata !{i32 207, i32 0, metadata !127, null}
!574 = metadata !{i32 209, i32 0, metadata !127, null}
!575 = metadata !{i32 210, i32 0, metadata !127, null}
!576 = metadata !{i32 211, i32 0, metadata !127, null}
!577 = metadata !{i32 213, i32 0, metadata !127, null}
!578 = metadata !{i32 214, i32 0, metadata !127, null}
!579 = metadata !{i32 215, i32 0, metadata !127, null}
!580 = metadata !{i32 220, i32 0, metadata !114, null}
!581 = metadata !{i32 1283, i32 0, metadata !375, null}
!582 = metadata !{i32 1284, i32 0, metadata !375, null}
!583 = metadata !{i32 1291, i32 0, metadata !375, null}
!584 = metadata !{i32 1292, i32 0, metadata !375, null}
!585 = metadata !{i32 1293, i32 0, metadata !375, null}
!586 = metadata !{i32 1294, i32 0, metadata !375, null}
!587 = metadata !{i32 1296, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !375, i32 1295, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!589 = metadata !{i32 1298, i32 0, metadata !588, null}
!590 = metadata !{i32 1300, i32 0, metadata !588, null}
!591 = metadata !{i32 1299, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !588, i32 1299, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!593 = metadata !{i32 1301, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !588, i32 1301, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!595 = metadata !{i32 1302, i32 0, metadata !588, null}
!596 = metadata !{i32 1303, i32 0, metadata !588, null}
!597 = metadata !{i32 1304, i32 0, metadata !588, null}
!598 = metadata !{i32 1305, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !588, i32 1305, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!600 = metadata !{i32 1306, i32 0, metadata !588, null}
!601 = metadata !{i32 1308, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !588, i32 1307, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!603 = metadata !{i32 1309, i32 0, metadata !602, null}
!604 = metadata !{i32 1308, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !602, i32 1308, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!606 = metadata !{i32 1312, i32 0, metadata !375, null}
!607 = metadata !{i32 1313, i32 0, metadata !375, null}
!608 = metadata !{i32 1314, i32 0, metadata !375, null}
!609 = metadata !{i32 1140, i32 0, metadata !454, null}
!610 = metadata !{i32 1142, i32 0, metadata !454, null}
!611 = metadata !{i32 1143, i32 0, metadata !454, null}
!612 = metadata !{i32 1144, i32 0, metadata !454, null}
!613 = metadata !{i32 1145, i32 0, metadata !454, null}
!614 = metadata !{i32 1185, i32 0, metadata !414, null}
!615 = metadata !{i32 1187, i32 0, metadata !414, null}
!616 = metadata !{i32 1188, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !1, metadata !414, i32 1187, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!618 = metadata !{i32 1189, i32 0, metadata !617, null}
!619 = metadata !{i32 1191, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !414, i32 1190, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!621 = metadata !{i32 1170, i32 0, metadata !421, metadata !622}
!622 = metadata !{i32 1192, i32 0, metadata !620, null}
!623 = metadata !{i32 786689, metadata !421, metadata !"fp", metadata !5, i32 16778386, metadata !18, i32 0, metadata !622} ; [ DW_TAG_arg_variable ] [fp] [line 1170]
!624 = metadata !{i32 786689, metadata !421, metadata !"ret_result", metadata !5, i32 33555602, metadata !424, i32 0, metadata !622} ; [ DW_TAG_arg_variable ] [ret_result] [line 1170]
!625 = metadata !{i32 1172, i32 0, metadata !421, metadata !622}
!626 = metadata !{i32 1173, i32 0, metadata !421, metadata !622}
!627 = metadata !{i32 786688, metadata !421, metadata !"result", metadata !5, i32 1172, metadata !96, i32 0, metadata !622} ; [ DW_TAG_auto_variable ] [result] [line 1172]
!628 = metadata !{i32 1174, i32 0, metadata !421, metadata !622}
!629 = metadata !{metadata !"long long", metadata !499}
!630 = metadata !{i32 1175, i32 0, metadata !421, metadata !622}
!631 = metadata !{i32 1195, i32 0, metadata !414, null}
!632 = metadata !{i32 242, i32 0, metadata !129, null}
!633 = metadata !{i32 244, i32 0, metadata !129, null}
!634 = metadata !{i32 247, i32 0, metadata !129, null}
!635 = metadata !{i32 248, i32 0, metadata !129, null}
!636 = metadata !{i32 251, i32 0, metadata !129, null}
!637 = metadata !{i32 252, i32 0, metadata !129, null}
!638 = metadata !{i32 253, i32 0, metadata !129, null}
!639 = metadata !{i32 254, i32 0, metadata !129, null}
!640 = metadata !{i32 255, i32 0, metadata !129, null}
!641 = metadata !{i32 256, i32 0, metadata !129, null}
!642 = metadata !{i32 257, i32 0, metadata !129, null}
!643 = metadata !{i32 1332, i32 0, metadata !365, null}
!644 = metadata !{%struct.ssioffset_s* undef}
!645 = metadata !{i32 1334, i32 0, metadata !365, null}
!646 = metadata !{i32 1337, i32 0, metadata !365, null}
!647 = metadata !{i32 1339, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !365, i32 1337, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!649 = metadata !{i32 1344, i32 0, metadata !365, null}
!650 = metadata !{i32 786689, metadata !156, metadata !"fp", metadata !5, i32 16777595, metadata !18, i32 0, metadata !649} ; [ DW_TAG_arg_variable ] [fp] [line 379]
!651 = metadata !{i32 379, i32 0, metadata !156, metadata !649}
!652 = metadata !{i32 786689, metadata !156, metadata !"offset", metadata !5, i32 33554811, metadata !118, i32 0, metadata !649} ; [ DW_TAG_arg_variable ] [offset] [line 379]
!653 = metadata !{i32 382, i32 0, metadata !654, metadata !649}
!654 = metadata !{i32 786443, metadata !1, metadata !156, i32 381, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!655 = metadata !{i32 395, i32 0, metadata !156, metadata !649}
!656 = metadata !{i32 1345, i32 0, metadata !365, null}
!657 = metadata !{i32 1346, i32 0, metadata !365, null}
!658 = metadata !{i32 293, i32 0, metadata !139, null}
!659 = metadata !{i32 294, i32 0, metadata !139, null}
!660 = metadata !{i32 295, i32 0, metadata !139, null}
!661 = metadata !{i32 298, i32 0, metadata !139, null}
!662 = metadata !{i32 304, i32 0, metadata !139, null}
!663 = metadata !{i32 305, i32 0, metadata !139, null}
!664 = metadata !{i32 309, i32 0, metadata !139, null}
!665 = metadata !{i32 314, i32 0, metadata !139, null}
!666 = metadata !{i32 315, i32 0, metadata !139, null}
!667 = metadata !{i32 320, i32 0, metadata !139, null}
!668 = metadata !{i32 321, i32 0, metadata !139, null}
!669 = metadata !{i32 322, i32 0, metadata !139, null}
!670 = metadata !{i32 323, i32 0, metadata !139, null}
!671 = metadata !{i32 324, i32 0, metadata !139, null}
!672 = metadata !{i32 325, i32 0, metadata !139, null}
!673 = metadata !{i32 330, i32 0, metadata !139, null}
!674 = metadata !{i32 331, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !139, i32 330, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!676 = metadata !{i32 332, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !675, i32 331, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!678 = metadata !{i32 333, i32 0, metadata !677, null}
!679 = metadata !{i32 334, i32 0, metadata !677, null}
!680 = metadata !{i32 334, i32 0, metadata !675, null}
!681 = metadata !{i32 335, i32 0, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !675, i32 334, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!683 = metadata !{i32 336, i32 0, metadata !682, null}
!684 = metadata !{i32 337, i32 0, metadata !682, null}
!685 = metadata !{i32 343, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !139, i32 339, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!687 = metadata !{i32 344, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !686, i32 343, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!689 = metadata !{i32 345, i32 0, metadata !688, null}
!690 = metadata !{i32 346, i32 0, metadata !688, null}
!691 = metadata !{i32 346, i32 0, metadata !686, null}
!692 = metadata !{i32 347, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !686, i32 346, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!694 = metadata !{i32 348, i32 0, metadata !693, null}
!695 = metadata !{i32 349, i32 0, metadata !693, null}
!696 = metadata !{i32 351, i32 0, metadata !686, null}
!697 = metadata !{i32 338, i32 0, metadata !675, null}
!698 = metadata !{i32 353, i32 0, metadata !139, null}
!699 = metadata !{i32 354, i32 0, metadata !139, null}
!700 = metadata !{i32 1155, i32 0, metadata !441, null}
!701 = metadata !{i32 1157, i32 0, metadata !441, null}
!702 = metadata !{i32 1158, i32 0, metadata !441, null}
!703 = metadata !{i32 1159, i32 0, metadata !441, null}
!704 = metadata !{i32 1160, i32 0, metadata !441, null}
!705 = metadata !{i32 379, i32 0, metadata !156, null}
!706 = metadata !{i32 381, i32 0, metadata !156, null}
!707 = metadata !{i32 382, i32 0, metadata !654, null}
!708 = metadata !{i32 395, i32 0, metadata !156, null}
!709 = metadata !{i32 418, i32 0, metadata !162, null}
!710 = metadata !{i32 420, i32 0, metadata !162, null}
!711 = metadata !{i32 421, i32 0, metadata !162, null}
!712 = metadata !{i32 422, i32 0, metadata !162, null}
!713 = metadata !{i32 423, i32 0, metadata !162, null}
!714 = metadata !{i32 436, i32 0, metadata !170, null}
!715 = metadata !{i32 438, i32 0, metadata !170, null}
!716 = metadata !{i32 786689, metadata !478, metadata !"sfp", metadata !5, i32 16777664, metadata !12, i32 0, metadata !717} ; [ DW_TAG_arg_variable ] [sfp] [line 448]
!717 = metadata !{i32 439, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !170, i32 438, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!719 = metadata !{i32 448, i32 0, metadata !478, metadata !717}
!720 = metadata !{i32 452, i32 0, metadata !478, metadata !717}
!721 = metadata !{i32 453, i32 0, metadata !722, metadata !717}
!722 = metadata !{i32 786443, metadata !1, metadata !723, i32 453, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!723 = metadata !{i32 786443, metadata !1, metadata !478, i32 452, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!724 = metadata !{i32 454, i32 0, metadata !722, metadata !717}
!725 = metadata !{i32 455, i32 0, metadata !723, metadata !717}
!726 = metadata !{i32 456, i32 0, metadata !723, metadata !717}
!727 = metadata !{i32 457, i32 0, metadata !478, metadata !717}
!728 = metadata !{i32 458, i32 0, metadata !478, metadata !717}
!729 = metadata !{i32 459, i32 0, metadata !478, metadata !717}
!730 = metadata !{i32 460, i32 0, metadata !478, metadata !717}
!731 = metadata !{i32 440, i32 0, metadata !718, null}
!732 = metadata !{i32 441, i32 0, metadata !718, null}
!733 = metadata !{i32 442, i32 0, metadata !718, null}
!734 = metadata !{i32 443, i32 0, metadata !170, null}
!735 = metadata !{i32 479, i32 0, metadata !175, null}
!736 = metadata !{i32 491, i32 0, metadata !175, null}
!737 = metadata !{i32 492, i32 0, metadata !175, null}
!738 = metadata !{i32 493, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !175, i32 492, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!740 = metadata !{metadata !"long", metadata !499}
!741 = metadata !{i32 497, i32 0, metadata !175, null}
!742 = metadata !{i32 499, i32 0, metadata !175, null}
!743 = metadata !{i32 515, i32 0, metadata !217, null}
!744 = metadata !{%struct.ssiindex_s* null}
!745 = metadata !{i32 519, i32 0, metadata !217, null}
!746 = metadata !{i32 520, i32 0, metadata !217, null}
!747 = metadata !{i32 521, i32 0, metadata !217, null}
!748 = metadata !{i32 522, i32 0, metadata !217, null}
!749 = metadata !{i32 523, i32 0, metadata !217, null}
!750 = metadata !{i32 524, i32 0, metadata !217, null}
!751 = metadata !{i32 527, i32 0, metadata !217, null}
!752 = metadata !{i32 528, i32 0, metadata !217, null}
!753 = metadata !{i32 533, i32 0, metadata !217, null}
!754 = metadata !{i32 535, i32 0, metadata !217, null}
!755 = metadata !{i32 536, i32 0, metadata !217, null}
!756 = metadata !{i32 540, i32 0, metadata !217, null}
!757 = metadata !{i32 543, i32 0, metadata !217, null}
!758 = metadata !{i32 534, i32 0, metadata !217, null}
!759 = metadata !{i32 544, i32 0, metadata !217, null}
!760 = metadata !{i32 546, i32 0, metadata !217, null}
!761 = metadata !{i32 549, i32 0, metadata !217, null}
!762 = metadata !{i32 550, i32 0, metadata !217, null}
!763 = metadata !{i32 555, i32 0, metadata !217, null}
!764 = metadata !{i32 556, i32 0, metadata !217, null}
!765 = metadata !{i32 557, i32 0, metadata !217, null}
!766 = metadata !{i32 558, i32 0, metadata !217, null}
!767 = metadata !{i32 560, i32 0, metadata !217, null}
!768 = metadata !{i32 561, i32 0, metadata !217, null}
!769 = metadata !{i32 566, i32 0, metadata !217, null}
!770 = metadata !{i32 567, i32 0, metadata !217, null}
!771 = metadata !{i32 568, i32 0, metadata !217, null}
!772 = metadata !{i32 1073, i32 0, metadata !336, null}
!773 = metadata !{i32 1076, i32 0, metadata !336, null}
!774 = metadata !{i32 1078, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !336, i32 1077, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!776 = metadata !{i32 1079, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !778, i32 1079, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!778 = metadata !{i32 786443, metadata !1, metadata !775, i32 1078, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!779 = metadata !{i32 1080, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !778, i32 1080, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!781 = metadata !{i32 1081, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !778, i32 1081, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!783 = metadata !{i32 1082, i32 0, metadata !778, null}
!784 = metadata !{i32 1083, i32 0, metadata !778, null}
!785 = metadata !{i32 1085, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !775, i32 1084, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!787 = metadata !{i32 1086, i32 0, metadata !786, null}
!788 = metadata !{i32 1088, i32 0, metadata !786, null}
!789 = metadata !{i32 1089, i32 0, metadata !786, null}
!790 = metadata !{i32 1092, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !775, i32 1092, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!792 = metadata !{i32 1093, i32 0, metadata !775, null}
!793 = metadata !{i32 1094, i32 0, metadata !775, null}
!794 = metadata !{i32 1095, i32 0, metadata !775, null}
!795 = metadata !{i32 1096, i32 0, metadata !775, null}
!796 = metadata !{i32 1097, i32 0, metadata !775, null}
!797 = metadata !{i32 1098, i32 0, metadata !775, null}
!798 = metadata !{i32 1099, i32 0, metadata !336, null}
!799 = metadata !{i32 587, i32 0, metadata !260, null}
!800 = metadata !{i32 589, i32 0, metadata !260, null}
!801 = metadata !{i32 591, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !260, i32 590, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!803 = metadata !{i32 592, i32 0, metadata !802, null}
!804 = metadata !{i32 593, i32 0, metadata !802, null}
!805 = metadata !{i32 595, i32 0, metadata !260, null}
!806 = metadata !{i32 597, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !260, i32 596, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!808 = metadata !{i32 599, i32 0, metadata !807, null}
!809 = metadata !{i32 610, i32 0, metadata !260, null}
!810 = metadata !{i32 629, i32 0, metadata !267, null}
!811 = metadata !{i32 633, i32 0, metadata !267, null}
!812 = metadata !{i32 635, i32 0, metadata !267, null}
!813 = metadata !{i32 636, i32 0, metadata !267, null}
!814 = metadata !{i32 638, i32 0, metadata !267, null}
!815 = metadata !{i32 639, i32 0, metadata !267, null}
!816 = metadata !{i32 640, i32 0, metadata !267, null}
!817 = metadata !{i32 641, i32 0, metadata !267, null}
!818 = metadata !{i32 642, i32 0, metadata !267, null}
!819 = metadata !{i32 643, i32 0, metadata !267, null}
!820 = metadata !{i32 645, i32 0, metadata !267, null}
!821 = metadata !{i32 646, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !267, i32 645, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!823 = metadata !{i32 647, i32 0, metadata !822, null}
!824 = metadata !{i32 648, i32 0, metadata !822, null}
!825 = metadata !{i32 649, i32 0, metadata !822, null}
!826 = metadata !{i32 650, i32 0, metadata !822, null}
!827 = metadata !{i32 651, i32 0, metadata !822, null}
!828 = metadata !{i32 652, i32 0, metadata !822, null}
!829 = metadata !{i32 653, i32 0, metadata !822, null}
!830 = metadata !{i32 655, i32 0, metadata !267, null}
!831 = metadata !{i32 682, i32 0, metadata !276, null}
!832 = metadata !{i32 684, i32 0, metadata !276, null}
!833 = metadata !{i32 685, i32 0, metadata !276, null}
!834 = metadata !{i32 686, i32 0, metadata !276, null}
!835 = metadata !{i32 687, i32 0, metadata !276, null}
!836 = metadata !{i32 688, i32 0, metadata !276, null}
!837 = metadata !{i32 726, i32 0, metadata !284, null}
!838 = metadata !{i32 727, i32 0, metadata !284, null}
!839 = metadata !{i32 731, i32 0, metadata !284, null}
!840 = metadata !{i32 732, i32 0, metadata !284, null}
!841 = metadata !{i32 733, i32 0, metadata !284, null}
!842 = metadata !{i32 738, i32 0, metadata !284, null}
!843 = metadata !{i32 739, i32 0, metadata !284, null}
!844 = metadata !{i32 743, i32 0, metadata !284, null}
!845 = metadata !{i32 744, i32 0, metadata !284, null}
!846 = metadata !{i32 748, i32 0, metadata !284, null}
!847 = metadata !{i32 749, i32 0, metadata !848, null}
!848 = metadata !{i32 786443, metadata !1, metadata !284, i32 748, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!849 = metadata !{i32 750, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !848, i32 749, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!851 = metadata !{i32 754, i32 0, metadata !850, null}
!852 = metadata !{i32 755, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !848, i32 754, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!854 = metadata !{i32 760, i32 0, metadata !848, null}
!855 = metadata !{i32 761, i32 0, metadata !848, null}
!856 = metadata !{i32 766, i32 0, metadata !284, null}
!857 = metadata !{i32 767, i32 0, metadata !284, null}
!858 = metadata !{i32 768, i32 0, metadata !284, null}
!859 = metadata !{i64 0, i64 1, metadata !499, i64 8, i64 4, metadata !521, i64 8, i64 8, metadata !629}
!860 = metadata !{i32 769, i32 0, metadata !284, null}
!861 = metadata !{i32 776, i32 0, metadata !862, null}
!862 = metadata !{i32 786443, metadata !1, metadata !284, i32 772, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!863 = metadata !{i32 770, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !1, metadata !284, i32 769, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!865 = metadata !{i32 771, i32 0, metadata !864, null}
!866 = metadata !{i32 772, i32 0, metadata !864, null}
!867 = metadata !{i32 777, i32 0, metadata !862, null}
!868 = metadata !{i32 779, i32 0, metadata !284, null}
!869 = metadata !{i32 781, i32 0, metadata !284, null}
!870 = metadata !{i32 782, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !284, i32 781, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!872 = metadata !{i32 783, i32 0, metadata !871, null}
!873 = metadata !{i32 785, i32 0, metadata !284, null}
!874 = metadata !{i32 1355, i32 0, metadata !356, null}
!875 = metadata !{i32 1363, i32 0, metadata !356, null}
!876 = metadata !{i32 1364, i32 0, metadata !356, null}
!877 = metadata !{i32 1365, i32 0, metadata !356, null}
!878 = metadata !{i32 1366, i32 0, metadata !356, null}
!879 = metadata !{i32 1371, i32 0, metadata !356, null}
!880 = metadata !{i32 1384, i32 0, metadata !350, null}
!881 = metadata !{i32 1388, i32 0, metadata !350, null}
!882 = metadata !{i32 1389, i32 0, metadata !350, null}
!883 = metadata !{i32 1390, i32 0, metadata !350, null}
!884 = metadata !{i32 1391, i32 0, metadata !350, null}
!885 = metadata !{i32 1392, i32 0, metadata !350, null}
!886 = metadata !{i32 1397, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !350, i32 1397, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!888 = metadata !{i32 1398, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !887, i32 1397, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!890 = metadata !{i32 1399, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !889, i32 1398, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!892 = metadata !{i32 1412, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !350, i32 1412, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!894 = metadata !{i32 1413, i32 0, metadata !893, null}
!895 = metadata !{i32 1404, i32 0, metadata !891, null}
!896 = metadata !{i32 1405, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !889, i32 1404, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!898 = metadata !{i32 1417, i32 0, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !350, i32 1417, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!900 = metadata !{i32 1418, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !350, i32 1418, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!902 = metadata !{i32 1419, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !350, i32 1419, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!904 = metadata !{i32 1420, i32 0, metadata !350, null}
!905 = metadata !{i32 1421, i32 0, metadata !350, null}
!906 = metadata !{i32 1422, i32 0, metadata !350, null}
!907 = metadata !{i32 1423, i32 0, metadata !350, null}
!908 = metadata !{i32 1427, i32 0, metadata !350, null}
!909 = metadata !{i32 1428, i32 0, metadata !350, null}
!910 = metadata !{i32 803, i32 0, metadata !295, null}
!911 = metadata !{i32 807, i32 0, metadata !295, null}
!912 = metadata !{i32 812, i32 0, metadata !295, null}
!913 = metadata !{i32 813, i32 0, metadata !295, null}
!914 = metadata !{i32 817, i32 0, metadata !295, null}
!915 = metadata !{i32 818, i32 0, metadata !295, null}
!916 = metadata !{i32 822, i32 0, metadata !295, null}
!917 = metadata !{i32 823, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !295, i32 822, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!919 = metadata !{i32 824, i32 0, metadata !918, null}
!920 = metadata !{i32 825, i32 0, metadata !918, null}
!921 = metadata !{i32 830, i32 0, metadata !295, null}
!922 = metadata !{i32 831, i32 0, metadata !295, null}
!923 = metadata !{i32 832, i32 0, metadata !295, null}
!924 = metadata !{i32 834, i32 0, metadata !295, null}
!925 = metadata !{i32 835, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !295, i32 834, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!927 = metadata !{i32 836, i32 0, metadata !926, null}
!928 = metadata !{i32 838, i32 0, metadata !295, null}
!929 = metadata !{i32 878, i32 0, metadata !303, null}
!930 = metadata !{i32 888, i32 0, metadata !303, null}
!931 = metadata !{i32 889, i32 0, metadata !303, null}
!932 = metadata !{i32 898, i32 0, metadata !303, null}
!933 = metadata !{i32 899, i32 0, metadata !934, null}
!934 = metadata !{i32 786443, metadata !1, metadata !303, i32 898, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!935 = metadata !{i32 901, i32 0, metadata !934, null}
!936 = metadata !{i32 905, i32 0, metadata !934, null}
!937 = metadata !{i32 910, i32 0, metadata !303, null}
!938 = metadata !{i32 911, i32 0, metadata !303, null}
!939 = metadata !{i32 912, i32 0, metadata !303, null}
!940 = metadata !{i32 914, i32 0, metadata !303, null}
!941 = metadata !{i32 1}
!942 = metadata !{i32 915, i32 0, metadata !303, null}
!943 = metadata !{i32 916, i32 0, metadata !303, null}
!944 = metadata !{i32 921, i32 0, metadata !303, null}
!945 = metadata !{i32 922, i32 0, metadata !303, null}
!946 = metadata !{i32 923, i32 0, metadata !303, null}
!947 = metadata !{i32 935, i32 0, metadata !303, null}
!948 = metadata !{i32 936, i32 0, metadata !323, null}
!949 = metadata !{i32 938, i32 0, metadata !323, null}
!950 = metadata !{i32 939, i32 0, metadata !323, null}
!951 = metadata !{i32 940, i32 0, metadata !323, null}
!952 = metadata !{i32 941, i32 0, metadata !323, null}
!953 = metadata !{i32 942, i32 0, metadata !323, null}
!954 = metadata !{i32 944, i32 0, metadata !323, null}
!955 = metadata !{i32 945, i32 0, metadata !323, null}
!956 = metadata !{i32 946, i32 0, metadata !323, null}
!957 = metadata !{i32 947, i32 0, metadata !323, null}
!958 = metadata !{i32 948, i32 0, metadata !323, null}
!959 = metadata !{i32 949, i32 0, metadata !323, null}
!960 = metadata !{i32 950, i32 0, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !303, i32 949, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!962 = metadata !{i32 951, i32 0, metadata !961, null}
!963 = metadata !{i32 1163, i32 0, metadata !435, metadata !964}
!964 = metadata !{i32 956, i32 0, metadata !303, null}
!965 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !964} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!966 = metadata !{i32 -202118735}
!967 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !964} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!968 = metadata !{i32 1165, i32 0, metadata !435, metadata !964}
!969 = metadata !{i32 1166, i32 0, metadata !435, metadata !964}
!970 = metadata !{i32 1167, i32 0, metadata !435, metadata !964}
!971 = metadata !{i32 1163, i32 0, metadata !435, metadata !972}
!972 = metadata !{i32 957, i32 0, metadata !303, null}
!973 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !972} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!974 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !972} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!975 = metadata !{i32 1165, i32 0, metadata !435, metadata !972}
!976 = metadata !{i32 1166, i32 0, metadata !435, metadata !972}
!977 = metadata !{i32 1167, i32 0, metadata !435, metadata !972}
!978 = metadata !{i32 958, i32 0, metadata !303, null}
!979 = metadata !{i32 1148, i32 0, metadata !448, metadata !978}
!980 = metadata !{i32 786689, metadata !448, metadata !"fp", metadata !5, i32 16778364, metadata !18, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [fp] [line 1148]
!981 = metadata !{i32 786689, metadata !448, metadata !"n", metadata !5, i32 33555580, metadata !77, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [n] [line 1148]
!982 = metadata !{i32 1150, i32 0, metadata !448, metadata !978}
!983 = metadata !{i32 1151, i32 0, metadata !448, metadata !978}
!984 = metadata !{i32 1152, i32 0, metadata !448, metadata !978}
!985 = metadata !{i32 959, i32 0, metadata !303, null}
!986 = metadata !{i32 1163, i32 0, metadata !435, metadata !985}
!987 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !985} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!988 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !985} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!989 = metadata !{i32 1165, i32 0, metadata !435, metadata !985}
!990 = metadata !{i32 1166, i32 0, metadata !435, metadata !985}
!991 = metadata !{i32 1167, i32 0, metadata !435, metadata !985}
!992 = metadata !{i32 960, i32 0, metadata !303, null}
!993 = metadata !{i32 1163, i32 0, metadata !435, metadata !992}
!994 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !992} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!995 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !992} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!996 = metadata !{i32 1165, i32 0, metadata !435, metadata !992}
!997 = metadata !{i32 1166, i32 0, metadata !435, metadata !992}
!998 = metadata !{i32 1167, i32 0, metadata !435, metadata !992}
!999 = metadata !{i32 961, i32 0, metadata !303, null}
!1000 = metadata !{i32 1163, i32 0, metadata !435, metadata !999}
!1001 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !999} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1002 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !999} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1003 = metadata !{i32 1165, i32 0, metadata !435, metadata !999}
!1004 = metadata !{i32 1166, i32 0, metadata !435, metadata !999}
!1005 = metadata !{i32 1167, i32 0, metadata !435, metadata !999}
!1006 = metadata !{i32 962, i32 0, metadata !303, null}
!1007 = metadata !{i32 1163, i32 0, metadata !435, metadata !1006}
!1008 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1006} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1009 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1006} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1010 = metadata !{i32 1165, i32 0, metadata !435, metadata !1006}
!1011 = metadata !{i32 1166, i32 0, metadata !435, metadata !1006}
!1012 = metadata !{i32 1167, i32 0, metadata !435, metadata !1006}
!1013 = metadata !{i32 963, i32 0, metadata !303, null}
!1014 = metadata !{i32 1163, i32 0, metadata !435, metadata !1013}
!1015 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1013} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1016 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1013} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1017 = metadata !{i32 1165, i32 0, metadata !435, metadata !1013}
!1018 = metadata !{i32 1166, i32 0, metadata !435, metadata !1013}
!1019 = metadata !{i32 1167, i32 0, metadata !435, metadata !1013}
!1020 = metadata !{i32 1163, i32 0, metadata !435, metadata !1021}
!1021 = metadata !{i32 964, i32 0, metadata !303, null}
!1022 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1021} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1023 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1021} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1024 = metadata !{i32 1165, i32 0, metadata !435, metadata !1021}
!1025 = metadata !{i32 1166, i32 0, metadata !435, metadata !1021}
!1026 = metadata !{i32 1167, i32 0, metadata !435, metadata !1021}
!1027 = metadata !{i32 1163, i32 0, metadata !435, metadata !1028}
!1028 = metadata !{i32 965, i32 0, metadata !303, null}
!1029 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1028} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1030 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1028} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1031 = metadata !{i32 1165, i32 0, metadata !435, metadata !1028}
!1032 = metadata !{i32 1166, i32 0, metadata !435, metadata !1028}
!1033 = metadata !{i32 1167, i32 0, metadata !435, metadata !1028}
!1034 = metadata !{i32 1163, i32 0, metadata !435, metadata !1035}
!1035 = metadata !{i32 966, i32 0, metadata !303, null}
!1036 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1035} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1037 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1035} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1038 = metadata !{i32 1165, i32 0, metadata !435, metadata !1035}
!1039 = metadata !{i32 1166, i32 0, metadata !435, metadata !1035}
!1040 = metadata !{i32 1167, i32 0, metadata !435, metadata !1035}
!1041 = metadata !{i32 967, i32 0, metadata !303, null}
!1042 = metadata !{i32 968, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !303, i32 967, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1044 = metadata !{i32 1163, i32 0, metadata !435, metadata !1042}
!1045 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1042} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1046 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1042} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1047 = metadata !{i32 1165, i32 0, metadata !435, metadata !1042}
!1048 = metadata !{i32 1166, i32 0, metadata !435, metadata !1042}
!1049 = metadata !{i32 1167, i32 0, metadata !435, metadata !1042}
!1050 = metadata !{i32 969, i32 0, metadata !1043, null}
!1051 = metadata !{i32 1163, i32 0, metadata !435, metadata !1050}
!1052 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1050} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1053 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1050} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1054 = metadata !{i32 1165, i32 0, metadata !435, metadata !1050}
!1055 = metadata !{i32 1166, i32 0, metadata !435, metadata !1050}
!1056 = metadata !{i32 1167, i32 0, metadata !435, metadata !1050}
!1057 = metadata !{i32 970, i32 0, metadata !1043, null}
!1058 = metadata !{i32 1163, i32 0, metadata !435, metadata !1057}
!1059 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1057} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1060 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1057} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1061 = metadata !{i32 1165, i32 0, metadata !435, metadata !1057}
!1062 = metadata !{i32 1166, i32 0, metadata !435, metadata !1057}
!1063 = metadata !{i32 1167, i32 0, metadata !435, metadata !1057}
!1064 = metadata !{i32 1178, i32 0, metadata !429, metadata !1065}
!1065 = metadata !{i32 972, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !303, i32 971, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1067 = metadata !{i32 786689, metadata !429, metadata !"fp", metadata !5, i32 16778394, metadata !18, i32 0, metadata !1065} ; [ DW_TAG_arg_variable ] [fp] [line 1178]
!1068 = metadata !{i32 786689, metadata !429, metadata !"n", metadata !5, i32 33555610, metadata !96, i32 0, metadata !1065} ; [ DW_TAG_arg_variable ] [n] [line 1178]
!1069 = metadata !{i32 1180, i32 0, metadata !429, metadata !1065}
!1070 = metadata !{i32 1181, i32 0, metadata !429, metadata !1065}
!1071 = metadata !{i32 1182, i32 0, metadata !429, metadata !1065}
!1072 = metadata !{i32 1178, i32 0, metadata !429, metadata !1073}
!1073 = metadata !{i32 973, i32 0, metadata !1066, null}
!1074 = metadata !{i32 786689, metadata !429, metadata !"fp", metadata !5, i32 16778394, metadata !18, i32 0, metadata !1073} ; [ DW_TAG_arg_variable ] [fp] [line 1178]
!1075 = metadata !{i32 786689, metadata !429, metadata !"n", metadata !5, i32 33555610, metadata !96, i32 0, metadata !1073} ; [ DW_TAG_arg_variable ] [n] [line 1178]
!1076 = metadata !{i32 1180, i32 0, metadata !429, metadata !1073}
!1077 = metadata !{i32 1181, i32 0, metadata !429, metadata !1073}
!1078 = metadata !{i32 1182, i32 0, metadata !429, metadata !1073}
!1079 = metadata !{i32 1178, i32 0, metadata !429, metadata !1080}
!1080 = metadata !{i32 974, i32 0, metadata !1066, null}
!1081 = metadata !{i32 786689, metadata !429, metadata !"fp", metadata !5, i32 16778394, metadata !18, i32 0, metadata !1080} ; [ DW_TAG_arg_variable ] [fp] [line 1178]
!1082 = metadata !{i32 786689, metadata !429, metadata !"n", metadata !5, i32 33555610, metadata !96, i32 0, metadata !1080} ; [ DW_TAG_arg_variable ] [n] [line 1178]
!1083 = metadata !{i32 1180, i32 0, metadata !429, metadata !1080}
!1084 = metadata !{i32 1181, i32 0, metadata !429, metadata !1080}
!1085 = metadata !{i32 1182, i32 0, metadata !429, metadata !1080}
!1086 = metadata !{i32 979, i32 0, metadata !303, null}
!1087 = metadata !{i32 980, i32 0, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !1, metadata !303, i32 980, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1089 = metadata !{i32 983, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1088, i32 981, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1091 = metadata !{i32 985, i32 0, metadata !1090, null}
!1092 = metadata !{i32 987, i32 0, metadata !1090, null}
!1093 = metadata !{i32 1163, i32 0, metadata !435, metadata !1092}
!1094 = metadata !{i32 1163, i32 0, metadata !435, metadata !1095}
!1095 = metadata !{i32 988, i32 0, metadata !1090, null}
!1096 = metadata !{i32 1163, i32 0, metadata !435, metadata !1097}
!1097 = metadata !{i32 989, i32 0, metadata !1090, null}
!1098 = metadata !{i32 990, i32 0, metadata !1090, null}
!1099 = metadata !{i32 1163, i32 0, metadata !435, metadata !1098}
!1100 = metadata !{i32 982, i32 0, metadata !1090, null}
!1101 = metadata !{i32 986, i32 0, metadata !1090, null}
!1102 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1092} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1103 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1092} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1104 = metadata !{i32 1165, i32 0, metadata !435, metadata !1092}
!1105 = metadata !{i32 1166, i32 0, metadata !435, metadata !1092}
!1106 = metadata !{i32 1167, i32 0, metadata !435, metadata !1092}
!1107 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1095} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1108 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1095} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1109 = metadata !{i32 1165, i32 0, metadata !435, metadata !1095}
!1110 = metadata !{i32 1166, i32 0, metadata !435, metadata !1095}
!1111 = metadata !{i32 1167, i32 0, metadata !435, metadata !1095}
!1112 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1097} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1113 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1097} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1114 = metadata !{i32 1165, i32 0, metadata !435, metadata !1097}
!1115 = metadata !{i32 1166, i32 0, metadata !435, metadata !1097}
!1116 = metadata !{i32 1167, i32 0, metadata !435, metadata !1097}
!1117 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1098} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1118 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1098} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1119 = metadata !{i32 1165, i32 0, metadata !435, metadata !1098}
!1120 = metadata !{i32 1166, i32 0, metadata !435, metadata !1098}
!1121 = metadata !{i32 1167, i32 0, metadata !435, metadata !1098}
!1122 = metadata !{i32 992, i32 0, metadata !303, null}
!1123 = metadata !{i32 996, i32 0, metadata !303, null}
!1124 = metadata !{i32 997, i32 0, metadata !303, null}
!1125 = metadata !{i32 1014, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1127, i32 1014, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1127 = metadata !{i32 786443, metadata !1, metadata !303, i32 1013, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1128 = metadata !{i32 1016, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !1, metadata !1126, i32 1015, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1130 = metadata !{i32 1148, i32 0, metadata !448, metadata !1131}
!1131 = metadata !{i32 1018, i32 0, metadata !1129, null}
!1132 = metadata !{i32 1163, i32 0, metadata !435, metadata !1133}
!1133 = metadata !{i32 1021, i32 0, metadata !1129, null}
!1134 = metadata !{i32 998, i32 0, metadata !328, null}
!1135 = metadata !{i8* null}
!1136 = metadata !{i32 999, i32 0, metadata !328, null}
!1137 = metadata !{i32 1000, i32 0, metadata !328, null}
!1138 = metadata !{i32 1001, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !328, i32 1001, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1140 = metadata !{i32 1003, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !1139, i32 1002, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1142 = metadata !{i32 1208, i32 0, metadata !400, metadata !1143}
!1143 = metadata !{i32 1004, i32 0, metadata !1141, null}
!1144 = metadata !{i32 1215, i32 0, metadata !400, metadata !1143}
!1145 = metadata !{i32 1217, i32 0, metadata !400, metadata !1143}
!1146 = metadata !{i32 1221, i32 0, metadata !1147, metadata !1143}
!1147 = metadata !{i32 786443, metadata !1, metadata !400, i32 1219, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1148 = metadata !{i32 1222, i32 0, metadata !1147, metadata !1143}
!1149 = metadata !{i32 1224, i32 0, metadata !1147, metadata !1143}
!1150 = metadata !{i32 1225, i32 0, metadata !1147, metadata !1143}
!1151 = metadata !{i32 1242, i32 0, metadata !400, metadata !1143}
!1152 = metadata !{i32 1148, i32 0, metadata !448, metadata !1153}
!1153 = metadata !{i32 1007, i32 0, metadata !1141, null}
!1154 = metadata !{i32 1008, i32 0, metadata !1141, null}
!1155 = metadata !{i32 1009, i32 0, metadata !1141, null}
!1156 = metadata !{i32 1163, i32 0, metadata !435, metadata !1157}
!1157 = metadata !{i32 1010, i32 0, metadata !1141, null}
!1158 = metadata !{i32 786689, metadata !400, metadata !"buf", metadata !5, i32 16778424, metadata !9, i32 0, metadata !1143} ; [ DW_TAG_arg_variable ] [buf] [line 1208]
!1159 = metadata !{i32 786689, metadata !400, metadata !"mode", metadata !5, i32 33555640, metadata !10, i32 0, metadata !1143} ; [ DW_TAG_arg_variable ] [mode] [line 1208]
!1160 = metadata !{i32 786689, metadata !400, metadata !"pkey", metadata !5, i32 50332856, metadata !235, i32 0, metadata !1143} ; [ DW_TAG_arg_variable ] [pkey] [line 1208]
!1161 = metadata !{i32 1210, i32 0, metadata !400, metadata !1143}
!1162 = metadata !{i32 1211, i32 0, metadata !400, metadata !1143}
!1163 = metadata !{i32 786688, metadata !400, metadata !"s", metadata !5, i32 1210, metadata !9, i32 0, metadata !1143} ; [ DW_TAG_auto_variable ] [s] [line 1210]
!1164 = metadata !{i32 1213, i32 0, metadata !400, metadata !1143}
!1165 = metadata !{i32 1214, i32 0, metadata !400, metadata !1143}
!1166 = metadata !{i32 786688, metadata !400, metadata !"tok", metadata !5, i32 1210, metadata !9, i32 0, metadata !1143} ; [ DW_TAG_auto_variable ] [tok] [line 1210]
!1167 = metadata !{i32 1216, i32 0, metadata !400, metadata !1143}
!1168 = metadata !{i32 1219, i32 0, metadata !400, metadata !1143}
!1169 = metadata !{i32 1220, i32 0, metadata !1147, metadata !1143}
!1170 = metadata !{i32 1223, i32 0, metadata !1147, metadata !1143}
!1171 = metadata !{i32 1241, i32 0, metadata !400, metadata !1143}
!1172 = metadata !{i32 1244, i32 0, metadata !400, metadata !1143}
!1173 = metadata !{i32 1005, i32 0, metadata !1141, null}
!1174 = metadata !{i32 1006, i32 0, metadata !1141, null}
!1175 = metadata !{i32 786689, metadata !448, metadata !"fp", metadata !5, i32 16778364, metadata !18, i32 0, metadata !1153} ; [ DW_TAG_arg_variable ] [fp] [line 1148]
!1176 = metadata !{i32 786689, metadata !448, metadata !"n", metadata !5, i32 33555580, metadata !77, i32 0, metadata !1153} ; [ DW_TAG_arg_variable ] [n] [line 1148]
!1177 = metadata !{i32 1150, i32 0, metadata !448, metadata !1153}
!1178 = metadata !{i32 1151, i32 0, metadata !448, metadata !1153}
!1179 = metadata !{i32 1152, i32 0, metadata !448, metadata !1153}
!1180 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1181 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1182 = metadata !{i32 1165, i32 0, metadata !435, metadata !1157}
!1183 = metadata !{i32 1166, i32 0, metadata !435, metadata !1157}
!1184 = metadata !{i32 1167, i32 0, metadata !435, metadata !1157}
!1185 = metadata !{i32 1012, i32 0, metadata !328, null}
!1186 = metadata !{i32 1013, i32 0, metadata !328, null}
!1187 = metadata !{i32 1017, i32 0, metadata !1129, null}
!1188 = metadata !{i32 786689, metadata !448, metadata !"fp", metadata !5, i32 16778364, metadata !18, i32 0, metadata !1131} ; [ DW_TAG_arg_variable ] [fp] [line 1148]
!1189 = metadata !{i32 786689, metadata !448, metadata !"n", metadata !5, i32 33555580, metadata !77, i32 0, metadata !1131} ; [ DW_TAG_arg_variable ] [n] [line 1148]
!1190 = metadata !{i32 1150, i32 0, metadata !448, metadata !1131}
!1191 = metadata !{i32 1151, i32 0, metadata !448, metadata !1131}
!1192 = metadata !{i32 1152, i32 0, metadata !448, metadata !1131}
!1193 = metadata !{i32 1019, i32 0, metadata !1129, null}
!1194 = metadata !{i32 1020, i32 0, metadata !1129, null}
!1195 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1133} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1196 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1133} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1197 = metadata !{i32 1165, i32 0, metadata !435, metadata !1133}
!1198 = metadata !{i32 1166, i32 0, metadata !435, metadata !1133}
!1199 = metadata !{i32 1167, i32 0, metadata !435, metadata !1133}
!1200 = metadata !{i32 1027, i32 0, metadata !303, null}
!1201 = metadata !{i32 1028, i32 0, metadata !333, null}
!1202 = metadata !{i32 1030, i32 0, metadata !333, null}
!1203 = metadata !{i32 1048, i32 0, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !1, metadata !1205, i32 1047, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1205 = metadata !{i32 786443, metadata !1, metadata !1206, i32 1046, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1206 = metadata !{i32 786443, metadata !1, metadata !333, i32 1045, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1207 = metadata !{i32 1046, i32 0, metadata !1205, null}
!1208 = metadata !{%struct.ssiskey_s* undef}
!1209 = metadata !{i32 1031, i32 0, metadata !332, null}
!1210 = metadata !{i32 1032, i32 0, metadata !332, null}
!1211 = metadata !{i32 1033, i32 0, metadata !332, null}
!1212 = metadata !{i32 1035, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !332, i32 1035, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1214 = metadata !{i32 1037, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1, metadata !1213, i32 1036, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.c]
!1216 = metadata !{i32 1247, i32 0, metadata !391, metadata !1217}
!1217 = metadata !{i32 1038, i32 0, metadata !1215, null}
!1218 = metadata !{i32 786689, metadata !391, metadata !"buf", metadata !5, i32 16778463, metadata !9, i32 0, metadata !1217} ; [ DW_TAG_arg_variable ] [buf] [line 1247]
!1219 = metadata !{i32 786689, metadata !391, metadata !"skey", metadata !5, i32 33555679, metadata !248, i32 0, metadata !1217} ; [ DW_TAG_arg_variable ] [skey] [line 1247]
!1220 = metadata !{i32 1249, i32 0, metadata !391, metadata !1217}
!1221 = metadata !{i32 1250, i32 0, metadata !391, metadata !1217}
!1222 = metadata !{i32 786688, metadata !391, metadata !"s", metadata !5, i32 1249, metadata !9, i32 0, metadata !1217} ; [ DW_TAG_auto_variable ] [s] [line 1249]
!1223 = metadata !{i32 1252, i32 0, metadata !391, metadata !1217}
!1224 = metadata !{i32 1253, i32 0, metadata !391, metadata !1217}
!1225 = metadata !{i32 786688, metadata !391, metadata !"tok", metadata !5, i32 1249, metadata !9, i32 0, metadata !1217} ; [ DW_TAG_auto_variable ] [tok] [line 1249]
!1226 = metadata !{i32 1255, i32 0, metadata !391, metadata !1217}
!1227 = metadata !{i32 1257, i32 0, metadata !391, metadata !1217}
!1228 = metadata !{i32 1039, i32 0, metadata !1215, null}
!1229 = metadata !{i32 1040, i32 0, metadata !1215, null}
!1230 = metadata !{i32 1041, i32 0, metadata !1215, null}
!1231 = metadata !{i32 1042, i32 0, metadata !1215, null}
!1232 = metadata !{i32 1044, i32 0, metadata !332, null}
!1233 = metadata !{i32 1045, i32 0, metadata !332, null}
!1234 = metadata !{i32 1049, i32 0, metadata !1204, null}
!1235 = metadata !{i32 1050, i32 0, metadata !1204, null}
!1236 = metadata !{i32 1051, i32 0, metadata !1204, null}
!1237 = metadata !{i32 1054, i32 0, metadata !333, null}
!1238 = metadata !{i32 1055, i32 0, metadata !333, null}
!1239 = metadata !{i32 1057, i32 0, metadata !303, null}
!1240 = metadata !{i32 1058, i32 0, metadata !303, null}
!1241 = metadata !{i32 1059, i32 0, metadata !303, null}
!1242 = metadata !{i32 1060, i32 0, metadata !303, null}
!1243 = metadata !{i32 860, i32 0, metadata !472, null}
!1244 = metadata !{i32 866, i32 0, metadata !472, null}
!1245 = metadata !{i32 869, i32 0, metadata !462, null}
!1246 = metadata !{i32 875, i32 0, metadata !462, null}
!1247 = metadata !{i32 1198, i32 0, metadata !410, null}
!1248 = metadata !{i32 1200, i32 0, metadata !410, null}
!1249 = metadata !{i32 1163, i32 0, metadata !435, metadata !1248}
!1250 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !5, i32 16778379, metadata !18, i32 0, metadata !1248} ; [ DW_TAG_arg_variable ] [fp] [line 1163]
!1251 = metadata !{i32 786689, metadata !435, metadata !"n", metadata !5, i32 33555595, metadata !74, i32 0, metadata !1248} ; [ DW_TAG_arg_variable ] [n] [line 1163]
!1252 = metadata !{i32 1165, i32 0, metadata !435, metadata !1248}
!1253 = metadata !{i32 1166, i32 0, metadata !435, metadata !1248}
!1254 = metadata !{i32 1167, i32 0, metadata !435, metadata !1248}
!1255 = metadata !{i32 1201, i32 0, metadata !410, null}
!1256 = metadata !{i32 1178, i32 0, metadata !429, metadata !1255}
!1257 = metadata !{i32 786689, metadata !429, metadata !"fp", metadata !5, i32 16778394, metadata !18, i32 0, metadata !1255} ; [ DW_TAG_arg_variable ] [fp] [line 1178]
!1258 = metadata !{i32 786689, metadata !429, metadata !"n", metadata !5, i32 33555610, metadata !96, i32 0, metadata !1255} ; [ DW_TAG_arg_variable ] [n] [line 1178]
!1259 = metadata !{i32 1180, i32 0, metadata !429, metadata !1255}
!1260 = metadata !{i32 1181, i32 0, metadata !429, metadata !1255}
!1261 = metadata !{i32 1182, i32 0, metadata !429, metadata !1255}
!1262 = metadata !{i32 1202, i32 0, metadata !410, null}
!1263 = metadata !{i32 1205, i32 0, metadata !410, null}
!1264 = metadata !{i32 1114, i32 0, metadata !342, null}
!1265 = metadata !{i32 1116, i32 0, metadata !342, null}
!1266 = metadata !{i32 1134, i32 0, metadata !342, null}
!1267 = metadata !{i32 1436, i32 0, metadata !347, null}
!1268 = metadata !{i32 1438, i32 0, metadata !347, null}
!1269 = metadata !{i32 1439, i32 0, metadata !347, null}
!1270 = metadata !{i32 1440, i32 0, metadata !347, null}
