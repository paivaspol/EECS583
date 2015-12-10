; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.stopwatch_s = type { i64, %struct.tms, double, double, double }
%struct.tms = type { i64, i64, i64, i64 }
%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@OPTIONS = internal global [9 x %struct.opt_s] [%struct.opt_s { i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i32 1, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 0, i32 4 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i32 0, i32 1 }], align 16
@usage = internal global [130 x i8] c"Usage: hmmcalibrate [-options] <hmmfile>\0AAvailable options are:\0A  -h             : print short usage and version info, then exit\0A\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"--fixed\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"--histfile\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"--mean\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"--num\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"--pvm\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"--sd\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"--seed\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stdout = external global %struct._IO_FILE*
@banner = internal global [48 x i8] c"hmmcalibrate -- calibrate HMM search statistics\00", align 16
@experts = internal global [456 x i8] c"  --cpu <n>      : run <n> threads in parallel (if threaded)\0A  --fixed <n>    : fix random sequence length at <n>\0A  --histfile <f> : save histogram(s) to file <f>\0A  --mean <x>     : set random seq length mean at <x> [350]\0A  --num <n>      : set number of sampled seqs to <n> [5000]\0A  --pvm          : run on a Parallel Virtual Machine (PVM)\0A  --sd <x>       : set random seq length std. dev to <x> [350]\0A  --seed <n>     : set random seed to <n> [time()]\0A\00", align 16
@.str9 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"PVM support is not compiled into HMMER; --pvm doesn't work.\00", align 1
@.str11 = private unnamed_addr constant [80 x i8] c"Posix threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str12 = private unnamed_addr constant [40 x i8] c"failed to open HMM file %s for reading.\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str14 = private unnamed_addr constant [51 x i8] c"Failed to open histogram save file %s for writing\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c".new\00", align 1
@.str17 = private unnamed_addr constant [57 x i8] c"temporary file %s already exists; please delete it first\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"HMM file:                 %s\0A\00", align 1
@.str20 = private unnamed_addr constant [30 x i8] c"Length fixed to:          %d\0A\00", align 1
@.str21 = private unnamed_addr constant [32 x i8] c"Length distribution mean: %.0f\0A\00", align 1
@.str22 = private unnamed_addr constant [32 x i8] c"Length distribution s.d.: %.0f\0A\00", align 1
@.str23 = private unnamed_addr constant [30 x i8] c"Number of samples:        %d\0A\00", align 1
@.str24 = private unnamed_addr constant [30 x i8] c"random seed:              %d\0A\00", align 1
@.str25 = private unnamed_addr constant [30 x i8] c"histogram(s) saved to:    %s\0A\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"[not saved]\00", align 1
@.str28 = private unnamed_addr constant [30 x i8] c"POSIX threads:            %d\0A\00", align 1
@.str30 = private unnamed_addr constant [61 x i8] c"HMM file may be corrupt or in incorrect format; parse failed\00", align 1
@.str31 = private unnamed_addr constant [47 x i8] c"wait. that can't happen. I didn't do anything.\00", align 1
@.str32 = private unnamed_addr constant [41 x i8] c"fit failed; --num may be set too small?\0A\00", align 1
@.str33 = private unnamed_addr constant [13 x i8] c"HMM    : %s\0A\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"mu     : %12f\0A\00", align 1
@.str35 = private unnamed_addr constant [15 x i8] c"lambda : %12f\0A\00", align 1
@.str36 = private unnamed_addr constant [15 x i8] c"max    : %12f\0A\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"HMM: %s\0A\00", align 1
@.str39 = private unnamed_addr constant [49 x i8] c"Ouch. Temporary file %s appeared during the run.\00", align 1
@.str40 = private unnamed_addr constant [56 x i8] c"Ouch. Temporary file %s couldn't be opened for writing.\00", align 1
@.str41 = private unnamed_addr constant [36 x i8] c"Ran out of HMMs too early in pass 2\00", align 1
@.str42 = private unnamed_addr constant [50 x i8] c"HMM file %s was corrupted? Parse failed in pass 2\00", align 1
@Alphabet = common global [25 x i8] zeroinitializer, align 16
@Alphabet_type = common global i32 0, align 4
@Alphabet_size = common global i32 0, align 4
@Alphabet_iupac = common global i32 0, align 4
@Degenerate = common global [24 x [20 x i8]] zeroinitializer, align 16
@DegenCount = common global [24 x i32] zeroinitializer, align 16
@str = private unnamed_addr constant [65 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00"
@str43 = private unnamed_addr constant [3 x i8] c"//\00"
@str44 = private unnamed_addr constant [33 x i8] c"PVM:                      ACTIVE\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %randomseq.i = alloca [20 x float], align 16
  %p1.i = alloca float, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %blocksigs = alloca %struct.__sigset_t, align 8
  %stopwatch = alloca %struct.stopwatch_s, align 8
  %extrawatch = alloca %struct.stopwatch_s, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !13), !dbg !346
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !14), !dbg !346
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !196), !dbg !347
  %0 = bitcast %struct.__sigset_t* %blocksigs to i8*, !dbg !348
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !348
  call void @llvm.dbg.declare(metadata !{%struct.__sigset_t* %blocksigs}, metadata !198), !dbg !348
  %1 = bitcast %struct.stopwatch_s* %stopwatch to i8*, !dbg !349
  call void @llvm.lifetime.start(i64 64, i8* %1) #2, !dbg !349
  call void @llvm.dbg.declare(metadata !{%struct.stopwatch_s* %stopwatch}, metadata !231), !dbg !349
  %2 = bitcast %struct.stopwatch_s* %extrawatch to i8*, !dbg !350
  call void @llvm.lifetime.start(i64 64, i8* %2) #2, !dbg !350
  call void @llvm.dbg.declare(metadata !{%struct.stopwatch_s* %extrawatch}, metadata !253), !dbg !350
  call void @llvm.dbg.declare(metadata !{i8** %optname}, metadata !265), !dbg !351
  call void @llvm.dbg.declare(metadata !{i8** %optarg}, metadata !266), !dbg !352
  call void @llvm.dbg.declare(metadata !{i32* %optind}, metadata !267), !dbg !353
  call void @StopwatchStart(%struct.stopwatch_s* %stopwatch) #7, !dbg !354
  call void @StopwatchZero(%struct.stopwatch_s* %extrawatch) #7, !dbg !355
  call void @llvm.dbg.value(metadata !356, i64 0, metadata !257), !dbg !357
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !259), !dbg !358
  call void @llvm.dbg.value(metadata !359, i64 0, metadata !260), !dbg !360
  call void @llvm.dbg.value(metadata !361, i64 0, metadata !261), !dbg !362
  %call = call i64 @time(i64* null) #7, !dbg !363
  %conv = trunc i64 %call to i32, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !258), !dbg !363
  call void @llvm.dbg.value(metadata !364, i64 0, metadata !229), !dbg !365
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !262), !dbg !366
  call void @llvm.dbg.value(metadata !367, i64 0, metadata !263), !dbg !368
  call void @llvm.dbg.value(metadata !369, i64 0, metadata !256), !dbg !370
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !268), !dbg !371
  %call1351 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !372
  %tobool352 = icmp eq i32 %call1351, 0, !dbg !372
  br i1 %tobool352, label %while.end, label %while.body, !dbg !372

while.body:                                       ; preds = %entry, %while.cond.backedge
  %num_threads.0360 = phi i32 [ %num_threads.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_pvm.0359 = phi i32 [ %do_pvm.0.be, %while.cond.backedge ], [ 0, %entry ]
  %lensd.0358 = phi float [ %lensd.0.be, %while.cond.backedge ], [ 2.000000e+02, %entry ]
  %lenmean.0357 = phi float [ %lenmean.0.be, %while.cond.backedge ], [ 3.250000e+02, %entry ]
  %fixedlen.0356 = phi i32 [ %fixedlen.0.be, %while.cond.backedge ], [ 0, %entry ]
  %seed.0355 = phi i32 [ %seed.0.be, %while.cond.backedge ], [ %conv, %entry ]
  %nsample.0354 = phi i32 [ %nsample.0.be, %while.cond.backedge ], [ 5000, %entry ]
  %histfile.0353 = phi i8* [ %histfile.0.be, %while.cond.backedge ], [ null, %entry ]
  call void @llvm.dbg.value(metadata !{i8** %optname}, i64 0, metadata !265), !dbg !373
  %3 = load i8** %optname, align 8, !dbg !373, !tbaa !375
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) #8, !dbg !373
  %cmp = icmp eq i32 %call2, 0, !dbg !373
  br i1 %cmp, label %if.then, label %if.else, !dbg !373

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !373
  %4 = load i8** %optarg, align 8, !dbg !373, !tbaa !375
  %call4 = call i32 @atoi(i8* %4) #8, !dbg !373
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !268), !dbg !373
  br label %while.cond.backedge, !dbg !373

if.else:                                          ; preds = %while.body
  %call5 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !378
  %cmp6 = icmp eq i32 %call5, 0, !dbg !378
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !378

if.then8:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !378
  %5 = load i8** %optarg, align 8, !dbg !378, !tbaa !375
  %call9 = call i32 @atoi(i8* %5) #8, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !259), !dbg !378
  br label %while.cond.backedge, !dbg !378

while.cond.backedge:                              ; preds = %if.then8, %if.then19, %if.then44, %if.else46, %if.then37, %if.then26, %if.then14, %if.then, %if.else28
  %histfile.0.be = phi i8* [ %histfile.0353, %if.then ], [ %histfile.0353, %if.then8 ], [ %6, %if.then14 ], [ %histfile.0353, %if.then19 ], [ %histfile.0353, %if.then26 ], [ %histfile.0353, %if.then37 ], [ %histfile.0353, %if.then44 ], [ %histfile.0353, %if.else46 ], [ %histfile.0353, %if.else28 ]
  %nsample.0.be = phi i32 [ %nsample.0354, %if.then ], [ %nsample.0354, %if.then8 ], [ %nsample.0354, %if.then14 ], [ %nsample.0354, %if.then19 ], [ %call27, %if.then26 ], [ %nsample.0354, %if.then37 ], [ %nsample.0354, %if.then44 ], [ %nsample.0354, %if.else46 ], [ %nsample.0354, %if.else28 ]
  %seed.0.be = phi i32 [ %seed.0355, %if.then ], [ %seed.0355, %if.then8 ], [ %seed.0355, %if.then14 ], [ %seed.0355, %if.then19 ], [ %seed.0355, %if.then26 ], [ %seed.0355, %if.then37 ], [ %call45, %if.then44 ], [ %seed.0355, %if.else46 ], [ %seed.0355, %if.else28 ]
  %fixedlen.0.be = phi i32 [ %fixedlen.0356, %if.then ], [ %call9, %if.then8 ], [ %fixedlen.0356, %if.then14 ], [ %fixedlen.0356, %if.then19 ], [ %fixedlen.0356, %if.then26 ], [ %fixedlen.0356, %if.then37 ], [ %fixedlen.0356, %if.then44 ], [ %fixedlen.0356, %if.else46 ], [ %fixedlen.0356, %if.else28 ]
  %lenmean.0.be = phi float [ %lenmean.0357, %if.then ], [ %lenmean.0357, %if.then8 ], [ %lenmean.0357, %if.then14 ], [ %conv21, %if.then19 ], [ %lenmean.0357, %if.then26 ], [ %lenmean.0357, %if.then37 ], [ %lenmean.0357, %if.then44 ], [ %lenmean.0357, %if.else46 ], [ %lenmean.0357, %if.else28 ]
  %lensd.0.be = phi float [ %lensd.0358, %if.then ], [ %lensd.0358, %if.then8 ], [ %lensd.0358, %if.then14 ], [ %lensd.0358, %if.then19 ], [ %lensd.0358, %if.then26 ], [ %conv39, %if.then37 ], [ %lensd.0358, %if.then44 ], [ %lensd.0358, %if.else46 ], [ %lensd.0358, %if.else28 ]
  %do_pvm.0.be = phi i32 [ %do_pvm.0359, %if.then ], [ %do_pvm.0359, %if.then8 ], [ %do_pvm.0359, %if.then14 ], [ %do_pvm.0359, %if.then19 ], [ %do_pvm.0359, %if.then26 ], [ %do_pvm.0359, %if.then37 ], [ %do_pvm.0359, %if.then44 ], [ %do_pvm.0359, %if.else46 ], [ 1, %if.else28 ]
  %num_threads.0.be = phi i32 [ %call4, %if.then ], [ %num_threads.0360, %if.then8 ], [ %num_threads.0360, %if.then14 ], [ %num_threads.0360, %if.then19 ], [ %num_threads.0360, %if.then26 ], [ %num_threads.0360, %if.then37 ], [ %num_threads.0360, %if.then44 ], [ %num_threads.0360, %if.else46 ], [ %num_threads.0360, %if.else28 ]
  %call1 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !372
  %tobool = icmp eq i32 %call1, 0, !dbg !372
  br i1 %tobool, label %while.end, label %while.body, !dbg !372

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !379
  %cmp12 = icmp eq i32 %call11, 0, !dbg !379
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !379

if.then14:                                        ; preds = %if.else10
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !379
  %6 = load i8** %optarg, align 8, !dbg !379, !tbaa !375
  call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !229), !dbg !379
  br label %while.cond.backedge, !dbg !379

if.else15:                                        ; preds = %if.else10
  %call16 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !380
  %cmp17 = icmp eq i32 %call16, 0, !dbg !380
  br i1 %cmp17, label %if.then19, label %if.else22, !dbg !380

if.then19:                                        ; preds = %if.else15
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !380
  %7 = load i8** %optarg, align 8, !dbg !380, !tbaa !375
  %call20 = call double @atof(i8* %7) #8, !dbg !380
  %conv21 = fptrunc double %call20 to float, !dbg !380
  call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !260), !dbg !380
  br label %while.cond.backedge, !dbg !380

if.else22:                                        ; preds = %if.else15
  %call23 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !381
  %cmp24 = icmp eq i32 %call23, 0, !dbg !381
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !381

if.then26:                                        ; preds = %if.else22
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !381
  %8 = load i8** %optarg, align 8, !dbg !381, !tbaa !375
  %call27 = call i32 @atoi(i8* %8) #8, !dbg !381
  call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !257), !dbg !381
  br label %while.cond.backedge, !dbg !381

if.else28:                                        ; preds = %if.else22
  %call29 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !382
  %cmp30 = icmp eq i32 %call29, 0, !dbg !382
  br i1 %cmp30, label %while.cond.backedge, label %if.else33, !dbg !382

if.else33:                                        ; preds = %if.else28
  %call34 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !383
  %cmp35 = icmp eq i32 %call34, 0, !dbg !383
  br i1 %cmp35, label %if.then37, label %if.else40, !dbg !383

if.then37:                                        ; preds = %if.else33
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !383
  %9 = load i8** %optarg, align 8, !dbg !383, !tbaa !375
  %call38 = call double @atof(i8* %9) #8, !dbg !383
  %conv39 = fptrunc double %call38 to float, !dbg !383
  call void @llvm.dbg.value(metadata !{float %conv39}, i64 0, metadata !261), !dbg !383
  br label %while.cond.backedge, !dbg !383

if.else40:                                        ; preds = %if.else33
  %call41 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !384
  %cmp42 = icmp eq i32 %call41, 0, !dbg !384
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !384

if.then44:                                        ; preds = %if.else40
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !266), !dbg !384
  %10 = load i8** %optarg, align 8, !dbg !384, !tbaa !375
  %call45 = call i32 @atoi(i8* %10) #8, !dbg !384
  call void @llvm.dbg.value(metadata !{i32 %call45}, i64 0, metadata !258), !dbg !384
  br label %while.cond.backedge, !dbg !384

if.else46:                                        ; preds = %if.else40
  %call47 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !385
  %cmp48 = icmp eq i32 %call47, 0, !dbg !385
  br i1 %cmp48, label %if.then50, label %while.cond.backedge, !dbg !385

if.then50:                                        ; preds = %if.else46
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !386, !tbaa !375
  call void @HMMERBanner(%struct._IO_FILE* %11, i8* getelementptr inbounds ([48 x i8]* @banner, i64 0, i64 0)) #7, !dbg !386
  %call51 = call i32 @puts(i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0)) #7, !dbg !388
  %call52 = call i32 @puts(i8* getelementptr inbounds ([456 x i8]* @experts, i64 0, i64 0)) #7, !dbg !389
  call void @exit(i32 0) #9, !dbg !390
  unreachable, !dbg !390

while.end:                                        ; preds = %while.cond.backedge, %entry
  %num_threads.0.lcssa = phi i32 [ 0, %entry ], [ %num_threads.0.be, %while.cond.backedge ]
  %do_pvm.0.lcssa = phi i32 [ 0, %entry ], [ %do_pvm.0.be, %while.cond.backedge ]
  %lensd.0.lcssa = phi float [ 2.000000e+02, %entry ], [ %lensd.0.be, %while.cond.backedge ]
  %lenmean.0.lcssa = phi float [ 3.250000e+02, %entry ], [ %lenmean.0.be, %while.cond.backedge ]
  %fixedlen.0.lcssa = phi i32 [ 0, %entry ], [ %fixedlen.0.be, %while.cond.backedge ]
  %seed.0.lcssa = phi i32 [ %conv, %entry ], [ %seed.0.be, %while.cond.backedge ]
  %nsample.0.lcssa = phi i32 [ 5000, %entry ], [ %nsample.0.be, %while.cond.backedge ]
  %histfile.0.lcssa = phi i8* [ null, %entry ], [ %histfile.0.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata !{i32* %optind}, i64 0, metadata !267), !dbg !391
  %12 = load i32* %optind, align 4, !dbg !391, !tbaa !392
  %sub = sub nsw i32 %argc, %12, !dbg !391
  %cmp61 = icmp eq i32 %sub, 1, !dbg !391
  br i1 %cmp61, label %if.end64, label %if.then63, !dbg !391

if.then63:                                        ; preds = %while.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0)) #7, !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %optind}, i64 0, metadata !267), !dbg !393
  %.pre = load i32* %optind, align 4, !dbg !393, !tbaa !392
  br label %if.end64, !dbg !391

if.end64:                                         ; preds = %while.end, %if.then63
  %13 = phi i32 [ %12, %while.end ], [ %.pre, %if.then63 ]
  call void @llvm.dbg.value(metadata !{i32* %optind}, i64 0, metadata !267), !dbg !393
  %inc = add nsw i32 %13, 1, !dbg !393
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !267), !dbg !393
  store i32 %inc, i32* %optind, align 4, !dbg !393, !tbaa !392
  %idxprom = sext i32 %13 to i64, !dbg !393
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !393
  %14 = load i8** %arrayidx, align 8, !dbg !393, !tbaa !375
  call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !15), !dbg !393
  %tobool65 = icmp ne i32 %do_pvm.0.lcssa, 0, !dbg !394
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !394

if.then66:                                        ; preds = %if.end64
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !394
  br label %if.end67, !dbg !394

if.end67:                                         ; preds = %if.then66, %if.end64
  %tobool68 = icmp eq i32 %num_threads.0.lcssa, 0, !dbg !395
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !395

if.then69:                                        ; preds = %if.end67
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([80 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !395
  br label %if.end70, !dbg !395

if.end70:                                         ; preds = %if.end67, %if.then69
  %call71 = call %struct.hmmfile_s* @HMMFileOpen(i8* %14, i8* null) #7, !dbg !396
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %call71}, i64 0, metadata !17), !dbg !396
  %cmp72 = icmp eq %struct.hmmfile_s* %call71, null, !dbg !396
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !396

if.then74:                                        ; preds = %if.end70
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), i8* %14) #7, !dbg !397
  br label %if.end75, !dbg !397

if.end75:                                         ; preds = %if.then74, %if.end70
  call void @llvm.dbg.value(metadata !398, i64 0, metadata !230), !dbg !399
  %cmp76 = icmp ne i8* %histfile.0.lcssa, null, !dbg !400
  br i1 %cmp76, label %if.then78, label %if.end84, !dbg !400

if.then78:                                        ; preds = %if.end75
  %call79 = call %struct._IO_FILE* @fopen(i8* %histfile.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !401
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call79}, i64 0, metadata !230), !dbg !401
  %cmp80 = icmp eq %struct._IO_FILE* %call79, null, !dbg !401
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !401

if.then82:                                        ; preds = %if.then78
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str14, i64 0, i64 0), i8* %histfile.0.lcssa) #7, !dbg !403
  br label %if.end84, !dbg !403

if.end84:                                         ; preds = %if.then78, %if.then82, %if.end75
  %hfp.0 = phi %struct._IO_FILE* [ null, %if.then82 ], [ %call79, %if.then78 ], [ null, %if.end75 ]
  %call85 = call i64 @strlen(i8* %14) #8, !dbg !404
  %add = add i64 %call85, 5, !dbg !404
  %call86 = call i8* @sre_malloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 265, i64 %add) #7, !dbg !404
  call void @llvm.dbg.value(metadata !{i8* %call86}, i64 0, metadata !16), !dbg !404
  %call87 = call i8* @strcpy(i8* %call86, i8* %14) #7, !dbg !405
  %strlen = call i64 @strlen(i8* %call86), !dbg !406
  %endptr = getelementptr i8* %call86, i64 %strlen, !dbg !406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i64 5, i32 1, i1 false), !dbg !406
  %call89 = call i32 @FileExists(i8* %call86) #7, !dbg !407
  %tobool90 = icmp eq i32 %call89, 0, !dbg !407
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !407

if.then91:                                        ; preds = %if.end84
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str17, i64 0, i64 0), i8* %call86) #7, !dbg !408
  br label %if.end92, !dbg !408

if.end92:                                         ; preds = %if.end84, %if.then91
  %is_binary = getelementptr inbounds %struct.hmmfile_s* %call71, i64 0, i32 3, !dbg !409
  %15 = load i32* %is_binary, align 4, !dbg !409, !tbaa !392
  %tobool93 = icmp eq i32 %15, 0, !dbg !409
  %. = select i1 %tobool93, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)
  %16 = load %struct._IO_FILE** @stdout, align 8, !dbg !410, !tbaa !375
  call void @HMMERBanner(%struct._IO_FILE* %16, i8* getelementptr inbounds ([48 x i8]* @banner, i64 0, i64 0)) #7, !dbg !410
  %call97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0), i8* %14) #7, !dbg !411
  %tobool98 = icmp eq i32 %fixedlen.0.lcssa, 0, !dbg !412
  br i1 %tobool98, label %if.else101, label %if.then99, !dbg !412

if.then99:                                        ; preds = %if.end92
  %call100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i32 %fixedlen.0.lcssa) #7, !dbg !413
  br label %if.end106, !dbg !413

if.else101:                                       ; preds = %if.end92
  %conv102 = fpext float %lenmean.0.lcssa to double, !dbg !414
  %call103 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str21, i64 0, i64 0), double %conv102) #7, !dbg !414
  %conv104 = fpext float %lensd.0.lcssa to double, !dbg !416
  %call105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str22, i64 0, i64 0), double %conv104) #7, !dbg !416
  br label %if.end106

if.end106:                                        ; preds = %if.else101, %if.then99
  %call107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str23, i64 0, i64 0), i32 %nsample.0.lcssa) #7, !dbg !417
  %call108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i32 %seed.0.lcssa) #7, !dbg !418
  %cond = select i1 %cmp76, i8* %histfile.0.lcssa, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), !dbg !419
  %call111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str25, i64 0, i64 0), i8* %cond) #7, !dbg !419
  br i1 %tobool65, label %if.then113, label %if.else115, !dbg !420

if.then113:                                       ; preds = %if.end106
  %puts321 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str44, i64 0, i64 0)) #2, !dbg !421
  br label %if.end121, !dbg !421

if.else115:                                       ; preds = %if.end106
  %cmp116 = icmp sgt i32 %num_threads.0.lcssa, 0, !dbg !422
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !422

if.then118:                                       ; preds = %if.else115
  %call119 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0), i32 %num_threads.0.lcssa) #7, !dbg !423
  br label %if.end121, !dbg !423

if.end121:                                        ; preds = %if.else115, %if.then118, %if.then113
  %puts = call i32 @puts(i8* getelementptr inbounds ([65 x i8]* @str, i64 0, i64 0)) #2, !dbg !424
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !208), !dbg !425
  %call124 = call i8* @sre_malloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 308, i64 400) #7, !dbg !426
  %17 = bitcast i8* %call124 to float*, !dbg !426
  call void @llvm.dbg.value(metadata !{float* %17}, i64 0, metadata !254), !dbg !426
  %call127 = call i8* @sre_malloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 309, i64 400) #7, !dbg !427
  %18 = bitcast i8* %call127 to float*, !dbg !427
  call void @llvm.dbg.value(metadata !{float* %18}, i64 0, metadata !255), !dbg !427
  %call129334 = call i32 @HMMFileRead(%struct.hmmfile_s* %call71, %struct.plan7_s** %hmm) #7, !dbg !428
  %tobool130335 = icmp eq i32 %call129334, 0, !dbg !428
  br i1 %tobool130335, label %while.end185, label %while.body131.lr.ph, !dbg !428

while.body131.lr.ph:                              ; preds = %if.end121
  %tobool65.not = xor i1 %tobool65, true, !dbg !429
  %or.cond = and i1 %tobool68, %tobool65.not, !dbg !429
  %19 = bitcast float* %p1.i to i8*, !dbg !431
  %20 = bitcast [20 x float]* %randomseq.i to i8*, !dbg !433
  %arraydecay.i = getelementptr inbounds [20 x float]* %randomseq.i, i64 0, i64 0, !dbg !434
  %cmp39.i = icmp sgt i32 %nsample.0.lcssa, 0, !dbg !435
  %conv.i = fpext float %lenmean.0.lcssa to double, !dbg !437
  %conv2.i = fpext float %lensd.0.lcssa to double, !dbg !437
  %cmp178 = icmp eq %struct._IO_FILE* %hfp.0, null, !dbg !439
  br label %while.body131, !dbg !428

while.body131:                                    ; preds = %while.body131.lr.ph, %if.end184
  %indvars.iv369 = phi i64 [ 0, %while.body131.lr.ph ], [ %indvars.iv.next370, %if.end184 ]
  %lambda.0340 = phi float* [ %18, %while.body131.lr.ph ], [ %lambda.1, %if.end184 ]
  %mu.0339 = phi float* [ %17, %while.body131.lr.ph ], [ %mu.1, %if.end184 ]
  %nhmm.0338 = phi i32 [ 0, %while.body131.lr.ph ], [ %inc153, %if.end184 ]
  %max.0.lcssa.i328337 = phi float [ undef, %while.body131.lr.ph ], [ %max.0.lcssa.i329, %if.end184 ]
  %call.i330336 = phi %struct.histogram_s* [ undef, %while.body131.lr.ph ], [ %call.i331, %if.end184 ]
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !440
  %21 = load %struct.plan7_s** %hmm, align 8, !dbg !440, !tbaa !375
  %cmp132 = icmp eq %struct.plan7_s* %21, null, !dbg !440
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !440

if.then134:                                       ; preds = %while.body131
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !441
  br label %if.end135, !dbg !441

if.end135:                                        ; preds = %if.then134, %while.body131
  br i1 %or.cond, label %if.then139, label %if.else140, !dbg !429

if.then139:                                       ; preds = %if.end135
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !432
  %22 = load %struct.plan7_s** %hmm, align 8, !dbg !432, !tbaa !375
  call void @llvm.lifetime.start(i64 4, i8* %19) #2, !dbg !431
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %22}, i64 0, metadata !442) #2, !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %seed.0.lcssa}, i64 0, metadata !443) #2, !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %nsample.0.lcssa}, i64 0, metadata !444) #2, !dbg !431
  call void @llvm.dbg.value(metadata !{float %lenmean.0.lcssa}, i64 0, metadata !445) #2, !dbg !446
  call void @llvm.dbg.value(metadata !{float %lensd.0.lcssa}, i64 0, metadata !447) #2, !dbg !446
  call void @llvm.dbg.value(metadata !{i32 %fixedlen.0.lcssa}, i64 0, metadata !448) #2, !dbg !446
  call void @llvm.lifetime.start(i64 80, i8* %20) #2, !dbg !433
  call void @llvm.dbg.declare(metadata !{[20 x float]* %randomseq.i}, metadata !299) #2, !dbg !433
  call void @llvm.dbg.declare(metadata !{float* %p1.i}, metadata !300) #2, !dbg !449
  call void @sre_srandom(i32 %seed.0.lcssa) #7, !dbg !450
  call void @P7Logoddsify(%struct.plan7_s* %22, i32 1) #7, !dbg !451
  call void @P7DefaultNullModel(float* %arraydecay.i, float* %p1.i) #7, !dbg !434
  %call.i = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100) #7, !dbg !452
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !453) #2, !dbg !452
  %M.i = getelementptr inbounds %struct.plan7_s* %22, i64 0, i32 20, !dbg !454
  %23 = load i32* %M.i, align 4, !dbg !454, !tbaa !392
  %call1.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %23, i32 25, i32 0) #7, !dbg !454
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call1.i}, i64 0, metadata !455) #2, !dbg !454
  call void @llvm.dbg.value(metadata !456, i64 0, metadata !457) #2, !dbg !458
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !459) #2, !dbg !435
  br i1 %cmp39.i, label %for.body.i, label %main_loop_serial.exit, !dbg !435

for.body.i:                                       ; preds = %if.then139, %if.end18.i
  %max.041.i = phi float [ %max.1.i, %if.end18.i ], [ 0xC7EFFFFFE0000000, %if.then139 ]
  %idx.040.i = phi i32 [ %inc.i, %if.end18.i ], [ 0, %if.then139 ]
  br i1 %tobool98, label %do.body.i, label %if.end.i, !dbg !460

do.body.i:                                        ; preds = %for.body.i, %do.body.i
  %call3.i = call double @Gaussrandom(double %conv.i, double %conv2.i) #7, !dbg !437
  %conv4.i = fptosi double %call3.i to i32, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %conv4.i}, i64 0, metadata !461) #2, !dbg !437
  %cmp5.i = icmp slt i32 %conv4.i, 1, !dbg !437
  br i1 %cmp5.i, label %do.body.i, label %if.end.i, !dbg !437

if.end.i:                                         ; preds = %do.body.i, %for.body.i
  %sqlen.0.i = phi i32 [ %fixedlen.0.lcssa, %for.body.i ], [ %conv4.i, %do.body.i ]
  %24 = load i32* @Alphabet_size, align 4, !dbg !462, !tbaa !392
  %call8.i = call i8* @RandomSequence(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), float* %arraydecay.i, i32 %24, i32 %sqlen.0.i) #7, !dbg !462
  call void @llvm.dbg.value(metadata !{i8* %call8.i}, i64 0, metadata !463) #2, !dbg !462
  %call9.i = call i8* @DigitizeSequence(i8* %call8.i, i32 %sqlen.0.i) #7, !dbg !464
  call void @llvm.dbg.value(metadata !{i8* %call9.i}, i64 0, metadata !465) #2, !dbg !464
  %25 = load i32* %M.i, align 4, !dbg !466, !tbaa !392
  %call11.i = call i32 @P7ViterbiSize(i32 %sqlen.0.i, i32 %25) #7, !dbg !466
  %cmp12.i = icmp slt i32 %call11.i, 1001, !dbg !466
  br i1 %cmp12.i, label %if.then14.i, label %if.else16.i, !dbg !466

if.then14.i:                                      ; preds = %if.end.i
  %call15.i = call float @P7Viterbi(i8* %call9.i, i32 %sqlen.0.i, %struct.plan7_s* %22, %struct.dpmatrix_s* %call1.i, %struct.p7trace_s** null) #7, !dbg !467
  call void @llvm.dbg.value(metadata !{float %call15.i}, i64 0, metadata !468) #2, !dbg !467
  br label %if.end18.i, !dbg !467

if.else16.i:                                      ; preds = %if.end.i
  %call17.i = call float @P7SmallViterbi(i8* %call9.i, i32 %sqlen.0.i, %struct.plan7_s* %22, %struct.dpmatrix_s* %call1.i, %struct.p7trace_s** null) #7, !dbg !469
  call void @llvm.dbg.value(metadata !{float %call17.i}, i64 0, metadata !468) #2, !dbg !469
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else16.i, %if.then14.i
  %score.0.i = phi float [ %call15.i, %if.then14.i ], [ %call17.i, %if.else16.i ]
  call void @AddToHistogram(%struct.histogram_s* %call.i, float %score.0.i) #7, !dbg !470
  %cmp19.i = fcmp ogt float %score.0.i, %max.041.i, !dbg !471
  call void @llvm.dbg.value(metadata !{float %score.0.i}, i64 0, metadata !457) #2, !dbg !471
  %max.1.i = select i1 %cmp19.i, float %score.0.i, float %max.041.i, !dbg !471
  call void @free(i8* %call9.i) #7, !dbg !472
  call void @free(i8* %call8.i) #7, !dbg !473
  %inc.i = add nsw i32 %idx.040.i, 1, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !459) #2, !dbg !435
  %exitcond.i = icmp eq i32 %inc.i, %nsample.0.lcssa, !dbg !435
  br i1 %exitcond.i, label %main_loop_serial.exit, label %for.body.i, !dbg !435

main_loop_serial.exit:                            ; preds = %if.end18.i, %if.then139
  %max.0.lcssa.i = phi float [ 0xC7EFFFFFE0000000, %if.then139 ], [ %max.1.i, %if.end18.i ]
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call1.i) #7, !dbg !474
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !475
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !476), !dbg !477
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !478
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !479
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !480
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !481
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !482
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !483
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call.i}, i64 0, metadata !209), !dbg !485
  call void @llvm.dbg.value(metadata !{float %max.0.lcssa.i}, i64 0, metadata !228), !dbg !486
  call void @llvm.dbg.value(metadata !{float %max.0.lcssa.i}, i64 0, metadata !487), !dbg !477
  call void @llvm.dbg.value(metadata !{float %max.0.lcssa.i}, i64 0, metadata !228), !dbg !488
  call void @llvm.lifetime.end(i64 80, i8* %20) #2, !dbg !489
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !490
  br label %if.end141, !dbg !432

if.else140:                                       ; preds = %if.end135
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0)) #7, !dbg !491
  br label %if.end141

if.end141:                                        ; preds = %if.else140, %main_loop_serial.exit
  %call.i331 = phi %struct.histogram_s* [ %call.i330336, %if.else140 ], [ %call.i, %main_loop_serial.exit ]
  %max.0.lcssa.i329 = phi float [ %max.0.lcssa.i328337, %if.else140 ], [ %max.0.lcssa.i, %main_loop_serial.exit ]
  %call142 = call i32 @ExtremeValueFitHistogram(%struct.histogram_s* %call.i331, i32 1, float 9.999000e+03) #7, !dbg !478
  %tobool143 = icmp eq i32 %call142, 0, !dbg !478
  br i1 %tobool143, label %if.then144, label %if.end145, !dbg !478

if.then144:                                       ; preds = %if.end141
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([41 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !492
  br label %if.end145, !dbg !492

if.end145:                                        ; preds = %if.end141, %if.then144
  %arrayidx146 = getelementptr inbounds %struct.histogram_s* %call.i331, i64 0, i32 9, i64 0, !dbg !479
  %26 = load float* %arrayidx146, align 4, !dbg !479, !tbaa !493
  %arrayidx148 = getelementptr inbounds float* %mu.0339, i64 %indvars.iv369, !dbg !479
  store float %26, float* %arrayidx148, align 4, !dbg !479, !tbaa !493
  %arrayidx150 = getelementptr inbounds %struct.histogram_s* %call.i331, i64 0, i32 9, i64 1, !dbg !480
  %27 = load float* %arrayidx150, align 4, !dbg !480, !tbaa !493
  %arrayidx152 = getelementptr inbounds float* %lambda.0340, i64 %indvars.iv369, !dbg !480
  store float %27, float* %arrayidx152, align 4, !dbg !480, !tbaa !493
  %indvars.iv.next370 = add i64 %indvars.iv369, 1, !dbg !428
  %inc153 = add nsw i32 %nhmm.0338, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %inc153}, i64 0, metadata !208), !dbg !494
  %28 = trunc i64 %indvars.iv.next370 to i32, !dbg !495
  %rem = srem i32 %28, 100, !dbg !495
  %cmp154 = icmp eq i32 %rem, 0, !dbg !495
  br i1 %cmp154, label %if.then156, label %if.end165, !dbg !495

if.then156:                                       ; preds = %if.end145
  %29 = bitcast float* %mu.0339 to i8*, !dbg !496
  %30 = shl i64 %indvars.iv369, 2, !dbg !496
  %mul159 = add i64 %30, 404, !dbg !496
  %call160 = call i8* @sre_realloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 348, i8* %29, i64 %mul159) #7, !dbg !496
  %31 = bitcast i8* %call160 to float*, !dbg !496
  call void @llvm.dbg.value(metadata !{float* %31}, i64 0, metadata !254), !dbg !496
  %32 = bitcast float* %lambda.0340 to i8*, !dbg !498
  %call164 = call i8* @sre_realloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 349, i8* %32, i64 %mul159) #7, !dbg !498
  %33 = bitcast i8* %call164 to float*, !dbg !498
  call void @llvm.dbg.value(metadata !{float* %33}, i64 0, metadata !255), !dbg !498
  br label %if.end165, !dbg !499

if.end165:                                        ; preds = %if.then156, %if.end145
  %mu.1 = phi float* [ %31, %if.then156 ], [ %mu.0339, %if.end145 ]
  %lambda.1 = phi float* [ %33, %if.then156 ], [ %lambda.0340, %if.end145 ]
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !500
  %34 = load %struct.plan7_s** %hmm, align 8, !dbg !500, !tbaa !375
  %name = getelementptr inbounds %struct.plan7_s* %34, i64 0, i32 0, !dbg !500
  %35 = load i8** %name, align 8, !dbg !500, !tbaa !375
  %call166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* %35) #7, !dbg !500
  %36 = load float* %arrayidx146, align 4, !dbg !481, !tbaa !493
  %conv169 = fpext float %36 to double, !dbg !481
  %call170 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), double %conv169) #7, !dbg !481
  %37 = load float* %arrayidx150, align 4, !dbg !482, !tbaa !493
  %conv173 = fpext float %37 to double, !dbg !482
  %call174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str35, i64 0, i64 0), double %conv173) #7, !dbg !482
  %conv175 = fpext float %max.0.lcssa.i329 to double, !dbg !488
  %call176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0), double %conv175) #7, !dbg !488
  %puts320 = call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str43, i64 0, i64 0)) #2, !dbg !501
  br i1 %cmp178, label %if.end184, label %if.then180, !dbg !439

if.then180:                                       ; preds = %if.end165
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !502
  %38 = load %struct.plan7_s** %hmm, align 8, !dbg !502, !tbaa !375
  %name181 = getelementptr inbounds %struct.plan7_s* %38, i64 0, i32 0, !dbg !502
  %39 = load i8** %name181, align 8, !dbg !502, !tbaa !375
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %hfp.0, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* %39) #7, !dbg !502
  call void @PrintASCIIHistogram(%struct._IO_FILE* %hfp.0, %struct.histogram_s* %call.i331) #7, !dbg !483
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %hfp.0), !dbg !503
  br label %if.end184, !dbg !504

if.end184:                                        ; preds = %if.end165, %if.then180
  call void @FreeHistogram(%struct.histogram_s* %call.i331) #7, !dbg !485
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !505
  %41 = load %struct.plan7_s** %hmm, align 8, !dbg !505, !tbaa !375
  call void @FreePlan7(%struct.plan7_s* %41) #7, !dbg !505
  %call129 = call i32 @HMMFileRead(%struct.hmmfile_s* %call71, %struct.plan7_s** %hmm) #7, !dbg !428
  %tobool130 = icmp eq i32 %call129, 0, !dbg !428
  br i1 %tobool130, label %while.end185, label %while.body131, !dbg !428

while.end185:                                     ; preds = %if.end184, %if.end121
  %lambda.0.lcssa = phi float* [ %18, %if.end121 ], [ %lambda.1, %if.end184 ]
  %mu.0.lcssa = phi float* [ %17, %if.end121 ], [ %mu.1, %if.end184 ]
  %nhmm.0.lcssa = phi i32 [ 0, %if.end121 ], [ %inc153, %if.end184 ]
  call void @HMMFileRewind(%struct.hmmfile_s* %call71) #7, !dbg !506
  %call186 = call i32 @FileExists(i8* %call86) #7, !dbg !507
  %tobool187 = icmp eq i32 %call186, 0, !dbg !507
  br i1 %tobool187, label %if.end189, label %if.then188, !dbg !507

if.then188:                                       ; preds = %while.end185
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([49 x i8]* @.str39, i64 0, i64 0), i8* %call86) #7, !dbg !508
  br label %if.end189, !dbg !508

if.end189:                                        ; preds = %while.end185, %if.then188
  %call190 = call %struct._IO_FILE* @fopen(i8* %call86, i8* %.) #7, !dbg !509
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call190}, i64 0, metadata !194), !dbg !509
  %cmp191 = icmp eq %struct._IO_FILE* %call190, null, !dbg !509
  br i1 %cmp191, label %if.then193, label %for.cond.preheader, !dbg !509

if.then193:                                       ; preds = %if.end189
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0), i8* %call86) #7, !dbg !510
  br label %for.cond.preheader, !dbg !510

for.cond.preheader:                               ; preds = %if.then193, %if.end189
  %cmp195332 = icmp sgt i32 %nhmm.0.lcssa, 0, !dbg !511
  br i1 %cmp195332, label %for.body, label %for.end, !dbg !511

for.body:                                         ; preds = %for.cond.preheader, %if.end215
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end215 ], [ 0, %for.cond.preheader ]
  %call197 = call i32 @HMMFileRead(%struct.hmmfile_s* %call71, %struct.plan7_s** %hmm) #7, !dbg !513
  %tobool198 = icmp eq i32 %call197, 0, !dbg !513
  br i1 %tobool198, label %if.then199, label %if.end200, !dbg !513

if.then199:                                       ; preds = %for.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str41, i64 0, i64 0)) #7, !dbg !515
  br label %if.end200, !dbg !515

if.end200:                                        ; preds = %for.body, %if.then199
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !516
  %42 = load %struct.plan7_s** %hmm, align 8, !dbg !516, !tbaa !375
  %cmp201 = icmp eq %struct.plan7_s* %42, null, !dbg !516
  br i1 %cmp201, label %if.then203, label %if.end204, !dbg !516

if.then203:                                       ; preds = %if.end200
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([50 x i8]* @.str42, i64 0, i64 0), i8* %14) #7, !dbg !517
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !518
  %.pre372 = load %struct.plan7_s** %hmm, align 8, !dbg !518, !tbaa !375
  br label %if.end204, !dbg !517

if.end204:                                        ; preds = %if.then203, %if.end200
  %43 = phi %struct.plan7_s* [ %.pre372, %if.then203 ], [ %42, %if.end200 ]
  %arrayidx206 = getelementptr inbounds float* %mu.0.lcssa, i64 %indvars.iv, !dbg !518
  %44 = load float* %arrayidx206, align 4, !dbg !518, !tbaa !493
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !518
  %mu207 = getelementptr inbounds %struct.plan7_s* %43, i64 0, i32 45, !dbg !518
  store float %44, float* %mu207, align 4, !dbg !518, !tbaa !493
  %arrayidx209 = getelementptr inbounds float* %lambda.0.lcssa, i64 %indvars.iv, !dbg !519
  %45 = load float* %arrayidx209, align 4, !dbg !519, !tbaa !493
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !519
  %lambda210 = getelementptr inbounds %struct.plan7_s* %43, i64 0, i32 46, !dbg !519
  store float %45, float* %lambda210, align 4, !dbg !519, !tbaa !493
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !520
  %flags = getelementptr inbounds %struct.plan7_s* %43, i64 0, i32 47, !dbg !520
  %46 = load i32* %flags, align 4, !dbg !520, !tbaa !392
  %or = or i32 %46, 128, !dbg !520
  store i32 %or, i32* %flags, align 4, !dbg !520, !tbaa !392
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !521
  call void @Plan7ComlogAppend(%struct.plan7_s* %43, i32 %argc, i8** %argv) #7, !dbg !521
  %47 = load i32* %is_binary, align 4, !dbg !522, !tbaa !392
  %tobool212 = icmp eq i32 %47, 0, !dbg !522
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !522
  %48 = load %struct.plan7_s** %hmm, align 8, !dbg !522, !tbaa !375
  br i1 %tobool212, label %if.else214, label %if.then213, !dbg !522

if.then213:                                       ; preds = %if.end204
  call void @WriteBinHMM(%struct._IO_FILE* %call190, %struct.plan7_s* %48) #7, !dbg !522
  br label %if.end215, !dbg !522

if.else214:                                       ; preds = %if.end204
  call void @WriteAscHMM(%struct._IO_FILE* %call190, %struct.plan7_s* %48) #7, !dbg !523
  br label %if.end215

if.end215:                                        ; preds = %if.else214, %if.then213
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !196), !dbg !524
  %49 = load %struct.plan7_s** %hmm, align 8, !dbg !524, !tbaa !375
  call void @FreePlan7(%struct.plan7_s* %49) #7, !dbg !524
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !511
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !511
  %exitcond = icmp eq i32 %lftr.wideiv, %nhmm.0.lcssa, !dbg !511
  br i1 %exitcond, label %for.end, label %for.body, !dbg !511

for.end:                                          ; preds = %if.end215, %for.cond.preheader
  call void @HMMFileClose(%struct.hmmfile_s* %call71) #7, !dbg !525
  %call217 = call i32 @fclose(%struct._IO_FILE* %call190) #7, !dbg !526
  %cmp218 = icmp eq i32 %call217, 0, !dbg !526
  br i1 %cmp218, label %if.end221, label %if.then220, !dbg !526

if.then220:                                       ; preds = %for.end
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 415) #7, !dbg !526
  br label %if.end221, !dbg !526

if.end221:                                        ; preds = %for.end, %if.then220
  %call222 = call i32 @sigemptyset(%struct.__sigset_t* %blocksigs) #7, !dbg !527
  %cmp223 = icmp eq i32 %call222, 0, !dbg !527
  br i1 %cmp223, label %if.end226, label %if.then225, !dbg !527

if.then225:                                       ; preds = %if.end221
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 418) #7, !dbg !527
  br label %if.end226, !dbg !527

if.end226:                                        ; preds = %if.end221, %if.then225
  %call227 = call i32 @sigaddset(%struct.__sigset_t* %blocksigs, i32 2) #7, !dbg !528
  %cmp228 = icmp eq i32 %call227, 0, !dbg !528
  br i1 %cmp228, label %if.end231, label %if.then230, !dbg !528

if.then230:                                       ; preds = %if.end226
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 419) #7, !dbg !528
  br label %if.end231, !dbg !528

if.end231:                                        ; preds = %if.end226, %if.then230
  %call232 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %blocksigs, %struct.__sigset_t* null) #7, !dbg !529
  %cmp233 = icmp eq i32 %call232, 0, !dbg !529
  br i1 %cmp233, label %if.end236, label %if.then235, !dbg !529

if.then235:                                       ; preds = %if.end231
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 420) #7, !dbg !529
  br label %if.end236, !dbg !529

if.end236:                                        ; preds = %if.end231, %if.then235
  %call237 = call i32 @remove(i8* %14) #7, !dbg !530
  %cmp238 = icmp eq i32 %call237, 0, !dbg !530
  br i1 %cmp238, label %if.end241, label %if.then240, !dbg !530

if.then240:                                       ; preds = %if.end236
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 421) #7, !dbg !530
  br label %if.end241, !dbg !530

if.end241:                                        ; preds = %if.end236, %if.then240
  %call242 = call i32 @rename(i8* %call86, i8* %14) #7, !dbg !531
  %cmp243 = icmp eq i32 %call242, 0, !dbg !531
  br i1 %cmp243, label %if.end246, label %if.then245, !dbg !531

if.then245:                                       ; preds = %if.end241
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 422) #7, !dbg !531
  br label %if.end246, !dbg !531

if.end246:                                        ; preds = %if.end241, %if.then245
  %call247 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* %blocksigs, %struct.__sigset_t* null) #7, !dbg !532
  %cmp248 = icmp eq i32 %call247, 0, !dbg !532
  br i1 %cmp248, label %if.end251, label %if.then250, !dbg !532

if.then250:                                       ; preds = %if.end246
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 423) #7, !dbg !532
  br label %if.end251, !dbg !532

if.end251:                                        ; preds = %if.end246, %if.then250
  call void @free(i8* %call86) #7, !dbg !533
  call void @StopwatchStop(%struct.stopwatch_s* %stopwatch) #7, !dbg !534
  %50 = bitcast float* %mu.0.lcssa to i8*, !dbg !535
  call void @free(i8* %50) #7, !dbg !535
  %51 = bitcast float* %lambda.0.lcssa to i8*, !dbg !536
  call void @free(i8* %51) #7, !dbg !536
  %cmp252 = icmp eq %struct._IO_FILE* %hfp.0, null, !dbg !537
  br i1 %cmp252, label %if.end256, label %if.then254, !dbg !537

if.then254:                                       ; preds = %if.end251
  %call255 = call i32 @fclose(%struct._IO_FILE* %hfp.0) #7, !dbg !537
  br label %if.end256, !dbg !537

if.end256:                                        ; preds = %if.end251, %if.then254
  call void @SqdClean() #7, !dbg !538
  call void @llvm.lifetime.end(i64 64, i8* %2) #2, !dbg !539
  call void @llvm.lifetime.end(i64 64, i8* %1) #2, !dbg !539
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !539
  ret i32 0, !dbg !540
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @StopwatchStart(%struct.stopwatch_s*) #3

; Function Attrs: optsize
declare void @StopwatchZero(%struct.stopwatch_s*) #3

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #4

; Function Attrs: optsize
declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: optsize
declare void @HMMERBanner(%struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @FileExists(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #3

; Function Attrs: optsize
declare i32 @ExtremeValueFitHistogram(%struct.histogram_s*, i32, float) #3

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @PrintASCIIHistogram(%struct._IO_FILE*, %struct.histogram_s*) #3

; Function Attrs: optsize
declare void @FreeHistogram(%struct.histogram_s*) #3

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #3

; Function Attrs: optsize
declare void @HMMFileRewind(%struct.hmmfile_s*) #3

; Function Attrs: optsize
declare void @Plan7ComlogAppend(%struct.plan7_s*, i32, i8**) #3

; Function Attrs: optsize
declare void @WriteBinHMM(%struct._IO_FILE*, %struct.plan7_s*) #3

; Function Attrs: optsize
declare void @WriteAscHMM(%struct._IO_FILE*, %struct.plan7_s*) #3

; Function Attrs: optsize
declare void @HMMFileClose(%struct.hmmfile_s*) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare void @Panic(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @sigemptyset(%struct.__sigset_t*) #4

; Function Attrs: nounwind optsize
declare i32 @sigaddset(%struct.__sigset_t*, i32) #4

; Function Attrs: nounwind optsize
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @rename(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare void @StopwatchStop(%struct.stopwatch_s*) #3

; Function Attrs: optsize
declare void @SqdClean() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @sre_srandom(i32) #3

; Function Attrs: optsize
declare void @P7Logoddsify(%struct.plan7_s*, i32) #3

; Function Attrs: optsize
declare void @P7DefaultNullModel(float*, float*) #3

; Function Attrs: optsize
declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #3

; Function Attrs: optsize
declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #3

; Function Attrs: optsize
declare double @Gaussrandom(double, double) #3

; Function Attrs: optsize
declare i8* @RandomSequence(i8*, float*, i32, i32) #3

; Function Attrs: optsize
declare i8* @DigitizeSequence(i8*, i32) #3

; Function Attrs: optsize
declare i32 @P7ViterbiSize(i32, i32) #3

; Function Attrs: optsize
declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #3

; Function Attrs: optsize
declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #3

; Function Attrs: optsize
declare void @AddToHistogram(%struct.histogram_s*, float) #3

; Function Attrs: optsize
declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !307, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !269}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 144, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !12, i32 146} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 146] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !208, metadata !209, metadata !228, metadata !229, metadata !230, metadata !231, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268}
!13 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !5, i32 16777360, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 144]
!14 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !5, i32 33554576, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 144]
!15 = metadata !{i32 786688, metadata !4, metadata !"hmmfile", metadata !5, i32 147, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmfile] [line 147]
!16 = metadata !{i32 786688, metadata !4, metadata !"tmpfile", metadata !5, i32 148, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpfile] [line 148]
!17 = metadata !{i32 786688, metadata !4, metadata !"hmmfp", metadata !5, i32 149, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmfp] [line 149]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from HMMFILE]
!19 = metadata !{i32 786454, metadata !1, null, metadata !"HMMFILE", i32 350, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [HMMFILE] [line 350, size 0, align 0, offset 0] [from hmmfile_s]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"hmmfile_s", i32 332, i64 448, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [hmmfile_s] [line 332, size 448, align 64, offset 0] [from ]
!21 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !79, metadata !121, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"f", i32 333, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [f] [line 333, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!25 = metadata !{i32 786454, metadata !21, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!27 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !49, metadata !50, metadata !51, metadata !52, metadata !55, metadata !57, metadata !59, metadata !63, metadata !65, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !10} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !42} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!43 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!44 = metadata !{metadata !45, metadata !46, metadata !48}
!45 = metadata !{i32 786445, metadata !27, metadata !43, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !43, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!48 = metadata !{i32 786445, metadata !27, metadata !43, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !47} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!50 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!51 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !53} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!53 = metadata !{i32 786454, metadata !27, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!55 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !56} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!56 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!57 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !58} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!58 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !60} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!60 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !11, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!63 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !64} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !66} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!66 = metadata !{i32 786454, metadata !27, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!67 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!68 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!69 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!70 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!71 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !72} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!72 = metadata !{i32 786454, metadata !27, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!73 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!74 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!75 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !76} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !11, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!79 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"ssi", i32 334, i64 64, i64 64, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [ssi] [line 334, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!81 = metadata !{i32 786454, metadata !21, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!82 = metadata !{i32 786451, metadata !83, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!83 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!84 = metadata !{metadata !85, metadata !86, metadata !89, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !118, metadata !119, metadata !120}
!85 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!86 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!87 = metadata !{i32 786454, metadata !83, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !90} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!90 = metadata !{i32 786454, metadata !83, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!91 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!92 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !87} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!93 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!94 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !87} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!95 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!96 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !87} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!97 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !87} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!98 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !87} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!99 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !100} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!100 = metadata !{i32 786454, metadata !83, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!101 = metadata !{i32 786451, metadata !83, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104}
!103 = metadata !{i32 786445, metadata !83, metadata !101, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!104 = metadata !{i32 786445, metadata !83, metadata !101, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !105} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!105 = metadata !{i32 786455, metadata !83, metadata !101, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !106, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108}
!107 = metadata !{i32 786445, metadata !83, metadata !105, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!108 = metadata !{i32 786445, metadata !83, metadata !105, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!109 = metadata !{i32 786454, metadata !83, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!110 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!111 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !100} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!112 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !100} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!113 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !11} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!114 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !11} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!115 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !9} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!116 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !117} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!118 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !117} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!119 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !117} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!120 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !117} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!121 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"parser", i32 335, i64 64, i64 64, i64 128, i32 0, metadata !122} ; [ DW_TAG_member ] [parser] [line 335, size 64, align 64, offset 128] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !8, metadata !125, metadata !126}
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hmmfile_s]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!128 = metadata !{i32 786451, metadata !21, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !129, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !156, metadata !157, metadata !158, metadata !159, metadata !164, metadata !165, metadata !166, metadata !168, metadata !169, metadata !171, metadata !172, metadata !173, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!130 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!132 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!133 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!134 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !10} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!135 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !10} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!136 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !10} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!137 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!138 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !10} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!139 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !140} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!141 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!142 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !140} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!143 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !140} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!144 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !140} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!145 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !146} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!146 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!147 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !146} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!148 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !146} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!149 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !146} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!150 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !146} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!151 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !146} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!152 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !8} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!153 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !154} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!155 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!156 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !154} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!157 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !154} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!158 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !146} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!159 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !160} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !146, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!161 = metadata !{metadata !162, metadata !163}
!162 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!163 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!164 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !155} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!165 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !155} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!166 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !167} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!167 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !146, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!168 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !146} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!169 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !170} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!171 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !170} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!172 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !170} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!173 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !174} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!175 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !140} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!176 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !140} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!177 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !140} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!178 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !140} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!179 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !140} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!180 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !140} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!181 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !140} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!182 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !170} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!183 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !170} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!184 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!185 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !8} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!186 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !146} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!187 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !146} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!188 = metadata !{i32 786445, metadata !21, metadata !128, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!189 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"is_binary", i32 336, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [is_binary] [line 336, size 32, align 32, offset 192] [from int]
!190 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"byteswap", i32 337, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [byteswap] [line 337, size 32, align 32, offset 224] [from int]
!191 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"is_seekable", i32 346, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [is_seekable] [line 346, size 32, align 32, offset 256] [from int]
!192 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"mode", i32 347, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 347, size 32, align 32, offset 288] [from int]
!193 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"offset", i32 348, i64 128, i64 64, i64 320, i32 0, metadata !100} ; [ DW_TAG_member ] [offset] [line 348, size 128, align 64, offset 320] [from SSIOFFSET]
!194 = metadata !{i32 786688, metadata !4, metadata !"outfp", metadata !5, i32 150, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outfp] [line 150]
!195 = metadata !{i32 786688, metadata !4, metadata !"mode", metadata !5, i32 151, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 151]
!196 = metadata !{i32 786688, metadata !4, metadata !"hmm", metadata !5, i32 152, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 152]
!197 = metadata !{i32 786688, metadata !4, metadata !"idx", metadata !5, i32 153, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 153]
!198 = metadata !{i32 786688, metadata !4, metadata !"blocksigs", metadata !5, i32 155, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocksigs] [line 155]
!199 = metadata !{i32 786454, metadata !1, null, metadata !"sigset_t", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [sigset_t] [line 37, size 0, align 0, offset 0] [from __sigset_t]
!200 = metadata !{i32 786454, metadata !1, null, metadata !"__sigset_t", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [__sigset_t] [line 30, size 0, align 0, offset 0] [from ]
!201 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 27, i64 1024, i64 64, i32 0, i32 0, null, metadata !203, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 27, size 1024, align 64, offset 0] [from ]
!202 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/sigset.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!203 = metadata !{metadata !204}
!204 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__val", i32 29, i64 1024, i64 64, i64 0, i32 0, metadata !205} ; [ DW_TAG_member ] [__val] [line 29, size 1024, align 64, offset 0] [from ]
!205 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !73, metadata !206, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from long unsigned int]
!206 = metadata !{metadata !207}
!207 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!208 = metadata !{i32 786688, metadata !4, metadata !"nhmm", metadata !5, i32 157, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nhmm] [line 157]
!209 = metadata !{i32 786688, metadata !4, metadata !"hist", metadata !5, i32 159, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hist] [line 159]
!210 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from histogram_s]
!211 = metadata !{i32 786451, metadata !21, null, metadata !"histogram_s", i32 419, i64 512, i64 64, i32 0, i32 0, null, metadata !212, i32 0, null, null} ; [ DW_TAG_structure_type ] [histogram_s] [line 419, size 512, align 64, offset 0] [from ]
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !226, metadata !227}
!213 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"histogram", i32 420, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_member ] [histogram] [line 420, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"min", i32 421, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [min] [line 421, size 32, align 32, offset 64] [from int]
!215 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"max", i32 422, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [max] [line 422, size 32, align 32, offset 96] [from int]
!216 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"highscore", i32 423, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [highscore] [line 423, size 32, align 32, offset 128] [from int]
!217 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"lowscore", i32 424, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [lowscore] [line 424, size 32, align 32, offset 160] [from int]
!218 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"lumpsize", i32 425, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [lumpsize] [line 425, size 32, align 32, offset 192] [from int]
!219 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"total", i32 426, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [total] [line 426, size 32, align 32, offset 224] [from int]
!220 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"expect", i32 428, i64 64, i64 64, i64 256, i32 0, metadata !155} ; [ DW_TAG_member ] [expect] [line 428, size 64, align 64, offset 256] [from ]
!221 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"fit_type", i32 429, i64 32, i64 32, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [fit_type] [line 429, size 32, align 32, offset 320] [from int]
!222 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"param", i32 430, i64 96, i64 32, i64 352, i32 0, metadata !223} ; [ DW_TAG_member ] [param] [line 430, size 96, align 32, offset 352] [from ]
!223 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !146, metadata !224, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!224 = metadata !{metadata !225}
!225 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!226 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"chisq", i32 431, i64 32, i64 32, i64 448, i32 0, metadata !146} ; [ DW_TAG_member ] [chisq] [line 431, size 32, align 32, offset 448] [from float]
!227 = metadata !{i32 786445, metadata !21, metadata !211, metadata !"chip", i32 432, i64 32, i64 32, i64 480, i32 0, metadata !146} ; [ DW_TAG_member ] [chip] [line 432, size 32, align 32, offset 480] [from float]
!228 = metadata !{i32 786688, metadata !4, metadata !"max", metadata !5, i32 160, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 160]
!229 = metadata !{i32 786688, metadata !4, metadata !"histfile", metadata !5, i32 161, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [histfile] [line 161]
!230 = metadata !{i32 786688, metadata !4, metadata !"hfp", metadata !5, i32 162, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hfp] [line 162]
!231 = metadata !{i32 786688, metadata !4, metadata !"stopwatch", metadata !5, i32 164, metadata !232, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stopwatch] [line 164]
!232 = metadata !{i32 786454, metadata !1, null, metadata !"Stopwatch_t", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [Stopwatch_t] [line 46, size 0, align 0, offset 0] [from stopwatch_s]
!233 = metadata !{i32 786451, metadata !234, null, metadata !"stopwatch_s", i32 34, i64 512, i64 64, i32 0, i32 0, null, metadata !235, i32 0, null, null} ; [ DW_TAG_structure_type ] [stopwatch_s] [line 34, size 512, align 64, offset 0] [from ]
!234 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/stopwatch.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!235 = metadata !{metadata !236, metadata !239, metadata !249, metadata !251, metadata !252}
!236 = metadata !{i32 786445, metadata !234, metadata !233, metadata !"t0", i32 35, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_member ] [t0] [line 35, size 64, align 64, offset 0] [from time_t]
!237 = metadata !{i32 786454, metadata !234, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !238} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!238 = metadata !{i32 786454, metadata !234, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!239 = metadata !{i32 786445, metadata !234, metadata !233, metadata !"cpu0", i32 39, i64 256, i64 64, i64 64, i32 0, metadata !240} ; [ DW_TAG_member ] [cpu0] [line 39, size 256, align 64, offset 64] [from tms]
!240 = metadata !{i32 786451, metadata !241, null, metadata !"tms", i32 34, i64 256, i64 64, i32 0, i32 0, null, metadata !242, i32 0, null, null} ; [ DW_TAG_structure_type ] [tms] [line 34, size 256, align 64, offset 0] [from ]
!241 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/sys/times.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!242 = metadata !{metadata !243, metadata !246, metadata !247, metadata !248}
!243 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"tms_utime", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_member ] [tms_utime] [line 36, size 64, align 64, offset 0] [from clock_t]
!244 = metadata !{i32 786454, metadata !241, null, metadata !"clock_t", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [clock_t] [line 59, size 0, align 0, offset 0] [from __clock_t]
!245 = metadata !{i32 786454, metadata !241, null, metadata !"__clock_t", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__clock_t] [line 135, size 0, align 0, offset 0] [from long int]
!246 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"tms_stime", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !244} ; [ DW_TAG_member ] [tms_stime] [line 37, size 64, align 64, offset 64] [from clock_t]
!247 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"tms_cutime", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !244} ; [ DW_TAG_member ] [tms_cutime] [line 39, size 64, align 64, offset 128] [from clock_t]
!248 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"tms_cstime", i32 40, i64 64, i64 64, i64 192, i32 0, metadata !244} ; [ DW_TAG_member ] [tms_cstime] [line 40, size 64, align 64, offset 192] [from clock_t]
!249 = metadata !{i32 786445, metadata !234, metadata !233, metadata !"elapsed", i32 42, i64 64, i64 64, i64 320, i32 0, metadata !250} ; [ DW_TAG_member ] [elapsed] [line 42, size 64, align 64, offset 320] [from double]
!250 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!251 = metadata !{i32 786445, metadata !234, metadata !233, metadata !"user", i32 43, i64 64, i64 64, i64 384, i32 0, metadata !250} ; [ DW_TAG_member ] [user] [line 43, size 64, align 64, offset 384] [from double]
!252 = metadata !{i32 786445, metadata !234, metadata !233, metadata !"sys", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !250} ; [ DW_TAG_member ] [sys] [line 44, size 64, align 64, offset 448] [from double]
!253 = metadata !{i32 786688, metadata !4, metadata !"extrawatch", metadata !5, i32 165, metadata !232, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extrawatch] [line 165]
!254 = metadata !{i32 786688, metadata !4, metadata !"mu", metadata !5, i32 167, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 167]
!255 = metadata !{i32 786688, metadata !4, metadata !"lambda", metadata !5, i32 168, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 168]
!256 = metadata !{i32 786688, metadata !4, metadata !"mu_lumpsize", metadata !5, i32 169, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu_lumpsize] [line 169]
!257 = metadata !{i32 786688, metadata !4, metadata !"nsample", metadata !5, i32 171, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsample] [line 171]
!258 = metadata !{i32 786688, metadata !4, metadata !"seed", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seed] [line 172]
!259 = metadata !{i32 786688, metadata !4, metadata !"fixedlen", metadata !5, i32 173, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fixedlen] [line 173]
!260 = metadata !{i32 786688, metadata !4, metadata !"lenmean", metadata !5, i32 174, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lenmean] [line 174]
!261 = metadata !{i32 786688, metadata !4, metadata !"lensd", metadata !5, i32 175, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lensd] [line 175]
!262 = metadata !{i32 786688, metadata !4, metadata !"do_pvm", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_pvm] [line 176]
!263 = metadata !{i32 786688, metadata !4, metadata !"pvm_lumpsize", metadata !5, i32 177, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvm_lumpsize] [line 177]
!264 = metadata !{i32 786688, metadata !4, metadata !"pvm_nslaves", metadata !5, i32 178, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvm_nslaves] [line 178]
!265 = metadata !{i32 786688, metadata !4, metadata !"optname", metadata !5, i32 181, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optname] [line 181]
!266 = metadata !{i32 786688, metadata !4, metadata !"optarg", metadata !5, i32 182, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optarg] [line 182]
!267 = metadata !{i32 786688, metadata !4, metadata !"optind", metadata !5, i32 183, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optind] [line 183]
!268 = metadata !{i32 786688, metadata !4, metadata !"num_threads", metadata !5, i32 185, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_threads] [line 185]
!269 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main_loop_serial", metadata !"main_loop_serial", metadata !"", i32 473, metadata !270, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !273, i32 476} ; [ DW_TAG_subprogram ] [line 473] [local] [def] [scope 476] [main_loop_serial]
!270 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = metadata !{null, metadata !127, metadata !8, metadata !8, metadata !146, metadata !146, metadata !8, metadata !272, metadata !155}
!272 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!273 = metadata !{metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306}
!274 = metadata !{i32 786689, metadata !269, metadata !"hmm", metadata !5, i32 16777689, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 473]
!275 = metadata !{i32 786689, metadata !269, metadata !"seed", metadata !5, i32 33554905, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 473]
!276 = metadata !{i32 786689, metadata !269, metadata !"nsample", metadata !5, i32 50332121, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsample] [line 473]
!277 = metadata !{i32 786689, metadata !269, metadata !"lenmean", metadata !5, i32 67109338, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lenmean] [line 474]
!278 = metadata !{i32 786689, metadata !269, metadata !"lensd", metadata !5, i32 83886554, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lensd] [line 474]
!279 = metadata !{i32 786689, metadata !269, metadata !"fixedlen", metadata !5, i32 100663770, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fixedlen] [line 474]
!280 = metadata !{i32 786689, metadata !269, metadata !"ret_hist", metadata !5, i32 117440987, metadata !272, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hist] [line 475]
!281 = metadata !{i32 786689, metadata !269, metadata !"ret_max", metadata !5, i32 134218203, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_max] [line 475]
!282 = metadata !{i32 786688, metadata !269, metadata !"hist", metadata !5, i32 477, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hist] [line 477]
!283 = metadata !{i32 786688, metadata !269, metadata !"mx", metadata !5, i32 478, metadata !284, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 478]
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpmatrix_s]
!285 = metadata !{i32 786451, metadata !21, null, metadata !"dpmatrix_s", i32 289, i64 640, i64 64, i32 0, i32 0, null, metadata !286, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpmatrix_s] [line 289, size 640, align 64, offset 0] [from ]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298}
!287 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"xmx", i32 290, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_member ] [xmx] [line 290, size 64, align 64, offset 0] [from ]
!288 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"mmx", i32 291, i64 64, i64 64, i64 64, i32 0, metadata !170} ; [ DW_TAG_member ] [mmx] [line 291, size 64, align 64, offset 64] [from ]
!289 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"imx", i32 292, i64 64, i64 64, i64 128, i32 0, metadata !170} ; [ DW_TAG_member ] [imx] [line 292, size 64, align 64, offset 128] [from ]
!290 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"dmx", i32 293, i64 64, i64 64, i64 192, i32 0, metadata !170} ; [ DW_TAG_member ] [dmx] [line 293, size 64, align 64, offset 192] [from ]
!291 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"xmx_mem", i32 299, i64 64, i64 64, i64 256, i32 0, metadata !64} ; [ DW_TAG_member ] [xmx_mem] [line 299, size 64, align 64, offset 256] [from ]
!292 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"mmx_mem", i32 299, i64 64, i64 64, i64 320, i32 0, metadata !64} ; [ DW_TAG_member ] [mmx_mem] [line 299, size 64, align 64, offset 320] [from ]
!293 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"imx_mem", i32 299, i64 64, i64 64, i64 384, i32 0, metadata !64} ; [ DW_TAG_member ] [imx_mem] [line 299, size 64, align 64, offset 384] [from ]
!294 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"dmx_mem", i32 299, i64 64, i64 64, i64 448, i32 0, metadata !64} ; [ DW_TAG_member ] [dmx_mem] [line 299, size 64, align 64, offset 448] [from ]
!295 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"maxN", i32 308, i64 32, i64 32, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [maxN] [line 308, size 32, align 32, offset 512] [from int]
!296 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"maxM", i32 309, i64 32, i64 32, i64 544, i32 0, metadata !8} ; [ DW_TAG_member ] [maxM] [line 309, size 32, align 32, offset 544] [from int]
!297 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"padN", i32 311, i64 32, i64 32, i64 576, i32 0, metadata !8} ; [ DW_TAG_member ] [padN] [line 311, size 32, align 32, offset 576] [from int]
!298 = metadata !{i32 786445, metadata !21, metadata !285, metadata !"padM", i32 312, i64 32, i64 32, i64 608, i32 0, metadata !8} ; [ DW_TAG_member ] [padM] [line 312, size 32, align 32, offset 608] [from int]
!299 = metadata !{i32 786688, metadata !269, metadata !"randomseq", metadata !5, i32 479, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [randomseq] [line 479]
!300 = metadata !{i32 786688, metadata !269, metadata !"p1", metadata !5, i32 480, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 480]
!301 = metadata !{i32 786688, metadata !269, metadata !"max", metadata !5, i32 481, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 481]
!302 = metadata !{i32 786688, metadata !269, metadata !"seq", metadata !5, i32 482, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 482]
!303 = metadata !{i32 786688, metadata !269, metadata !"dsq", metadata !5, i32 483, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsq] [line 483]
!304 = metadata !{i32 786688, metadata !269, metadata !"score", metadata !5, i32 484, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 484]
!305 = metadata !{i32 786688, metadata !269, metadata !"sqlen", metadata !5, i32 485, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqlen] [line 485]
!306 = metadata !{i32 786688, metadata !269, metadata !"idx", metadata !5, i32 486, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 486]
!307 = metadata !{metadata !308, metadata !314, metadata !315, metadata !316, metadata !317, metadata !321, metadata !324, metadata !328, metadata !332, metadata !336}
!308 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet", metadata !"Alphabet", metadata !"", metadata !309, i32 19, metadata !311, i32 0, i32 1, [25 x i8]* @Alphabet, null} ; [ DW_TAG_variable ] [Alphabet] [line 19] [def]
!309 = metadata !{i32 786473, metadata !310}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/globals.h]
!310 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/globals.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!311 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 200, i64 8, i32 0, i32 0, metadata !11, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 200, align 8, offset 0] [from char]
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786465, i64 0, i64 25}      ; [ DW_TAG_subrange_type ] [0, 24]
!314 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet_type", metadata !"Alphabet_type", metadata !"", metadata !309, i32 20, metadata !8, i32 0, i32 1, i32* @Alphabet_type, null} ; [ DW_TAG_variable ] [Alphabet_type] [line 20] [def]
!315 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet_size", metadata !"Alphabet_size", metadata !"", metadata !309, i32 21, metadata !8, i32 0, i32 1, i32* @Alphabet_size, null} ; [ DW_TAG_variable ] [Alphabet_size] [line 21] [def]
!316 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet_iupac", metadata !"Alphabet_iupac", metadata !"", metadata !309, i32 22, metadata !8, i32 0, i32 1, i32* @Alphabet_iupac, null} ; [ DW_TAG_variable ] [Alphabet_iupac] [line 22] [def]
!317 = metadata !{i32 786484, i32 0, null, metadata !"Degenerate", metadata !"Degenerate", metadata !"", metadata !309, i32 23, metadata !318, i32 0, i32 1, [24 x [20 x i8]]* @Degenerate, null} ; [ DW_TAG_variable ] [Degenerate] [line 23] [def]
!318 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3840, i64 8, i32 0, i32 0, metadata !11, metadata !319, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3840, align 8, offset 0] [from char]
!319 = metadata !{metadata !320, metadata !78}
!320 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!321 = metadata !{i32 786484, i32 0, null, metadata !"DegenCount", metadata !"DegenCount", metadata !"", metadata !309, i32 24, metadata !322, i32 0, i32 1, [24 x i32]* @DegenCount, null} ; [ DW_TAG_variable ] [DegenCount] [line 24] [def]
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !8, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from int]
!323 = metadata !{metadata !320}
!324 = metadata !{i32 786484, i32 0, null, metadata !"experts", metadata !"experts", metadata !"", metadata !5, i32 56, metadata !325, i32 1, i32 1, [456 x i8]* @experts, null} ; [ DW_TAG_variable ] [experts] [line 56] [local] [def]
!325 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3648, i64 8, i32 0, i32 0, metadata !11, metadata !326, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3648, align 8, offset 0] [from char]
!326 = metadata !{metadata !327}
!327 = metadata !{i32 786465, i64 0, i64 456}     ; [ DW_TAG_subrange_type ] [0, 455]
!328 = metadata !{i32 786484, i32 0, null, metadata !"banner", metadata !"banner", metadata !"", metadata !5, i32 48, metadata !329, i32 1, i32 1, [48 x i8]* @banner, null} ; [ DW_TAG_variable ] [banner] [line 48] [local] [def]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 8, i32 0, i32 0, metadata !11, metadata !330, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 8, offset 0] [from char]
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786465, i64 0, i64 48}      ; [ DW_TAG_subrange_type ] [0, 47]
!332 = metadata !{i32 786484, i32 0, null, metadata !"usage", metadata !"usage", metadata !"", metadata !5, i32 50, metadata !333, i32 1, i32 1, [130 x i8]* @usage, null} ; [ DW_TAG_variable ] [usage] [line 50] [local] [def]
!333 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1040, i64 8, i32 0, i32 0, metadata !11, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1040, align 8, offset 0] [from char]
!334 = metadata !{metadata !335}
!335 = metadata !{i32 786465, i64 0, i64 130}     ; [ DW_TAG_subrange_type ] [0, 129]
!336 = metadata !{i32 786484, i32 0, null, metadata !"OPTIONS", metadata !"OPTIONS", metadata !"", metadata !5, i32 67, metadata !337, i32 1, i32 1, [9 x %struct.opt_s]* @OPTIONS, null} ; [ DW_TAG_variable ] [OPTIONS] [line 67] [local] [def]
!337 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !338, metadata !344, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from opt_s]
!338 = metadata !{i32 786451, metadata !339, null, metadata !"opt_s", i32 330, i64 128, i64 64, i32 0, i32 0, null, metadata !340, i32 0, null, null} ; [ DW_TAG_structure_type ] [opt_s] [line 330, size 128, align 64, offset 0] [from ]
!339 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!340 = metadata !{metadata !341, metadata !342, metadata !343}
!341 = metadata !{i32 786445, metadata !339, metadata !338, metadata !"name", i32 331, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [name] [line 331, size 64, align 64, offset 0] [from ]
!342 = metadata !{i32 786445, metadata !339, metadata !338, metadata !"single", i32 332, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [single] [line 332, size 32, align 32, offset 64] [from int]
!343 = metadata !{i32 786445, metadata !339, metadata !338, metadata !"argtype", i32 333, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [argtype] [line 333, size 32, align 32, offset 96] [from int]
!344 = metadata !{metadata !345}
!345 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!346 = metadata !{i32 144, i32 0, metadata !4, null}
!347 = metadata !{i32 152, i32 0, metadata !4, null}
!348 = metadata !{i32 155, i32 0, metadata !4, null}
!349 = metadata !{i32 164, i32 0, metadata !4, null}
!350 = metadata !{i32 165, i32 0, metadata !4, null}
!351 = metadata !{i32 181, i32 0, metadata !4, null}
!352 = metadata !{i32 182, i32 0, metadata !4, null}
!353 = metadata !{i32 183, i32 0, metadata !4, null}
!354 = metadata !{i32 192, i32 0, metadata !4, null}
!355 = metadata !{i32 193, i32 0, metadata !4, null}
!356 = metadata !{i32 5000}
!357 = metadata !{i32 196, i32 0, metadata !4, null}
!358 = metadata !{i32 197, i32 0, metadata !4, null}
!359 = metadata !{float 3.250000e+02}
!360 = metadata !{i32 198, i32 0, metadata !4, null}
!361 = metadata !{float 2.000000e+02}
!362 = metadata !{i32 199, i32 0, metadata !4, null}
!363 = metadata !{i32 200, i32 0, metadata !4, null}
!364 = metadata !{i8* null}
!365 = metadata !{i32 201, i32 0, metadata !4, null}
!366 = metadata !{i32 202, i32 0, metadata !4, null}
!367 = metadata !{i32 20}
!368 = metadata !{i32 203, i32 0, metadata !4, null}
!369 = metadata !{i32 100}
!370 = metadata !{i32 204, i32 0, metadata !4, null}
!371 = metadata !{i32 208, i32 0, metadata !4, null}
!372 = metadata !{i32 211, i32 0, metadata !4, null}
!373 = metadata !{i32 214, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !4, i32 213, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!375 = metadata !{metadata !"any pointer", metadata !376}
!376 = metadata !{metadata !"omnipotent char", metadata !377}
!377 = metadata !{metadata !"Simple C/C++ TBAA"}
!378 = metadata !{i32 215, i32 0, metadata !374, null}
!379 = metadata !{i32 216, i32 0, metadata !374, null}
!380 = metadata !{i32 217, i32 0, metadata !374, null}
!381 = metadata !{i32 218, i32 0, metadata !374, null}
!382 = metadata !{i32 219, i32 0, metadata !374, null}
!383 = metadata !{i32 220, i32 0, metadata !374, null}
!384 = metadata !{i32 221, i32 0, metadata !374, null}
!385 = metadata !{i32 222, i32 0, metadata !374, null}
!386 = metadata !{i32 224, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !374, i32 223, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!388 = metadata !{i32 225, i32 0, metadata !387, null}
!389 = metadata !{i32 226, i32 0, metadata !387, null}
!390 = metadata !{i32 227, i32 0, metadata !387, null}
!391 = metadata !{i32 231, i32 0, metadata !4, null}
!392 = metadata !{metadata !"int", metadata !376}
!393 = metadata !{i32 232, i32 0, metadata !4, null}
!394 = metadata !{i32 235, i32 0, metadata !4, null}
!395 = metadata !{i32 238, i32 0, metadata !4, null}
!396 = metadata !{i32 246, i32 0, metadata !4, null}
!397 = metadata !{i32 247, i32 0, metadata !4, null}
!398 = metadata !{%struct._IO_FILE* null}
!399 = metadata !{i32 250, i32 0, metadata !4, null}
!400 = metadata !{i32 251, i32 0, metadata !4, null}
!401 = metadata !{i32 252, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !4, i32 251, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!403 = metadata !{i32 253, i32 0, metadata !402, null}
!404 = metadata !{i32 265, i32 0, metadata !4, null}
!405 = metadata !{i32 266, i32 0, metadata !4, null}
!406 = metadata !{i32 267, i32 0, metadata !4, null}
!407 = metadata !{i32 268, i32 0, metadata !4, null}
!408 = metadata !{i32 272, i32 0, metadata !4, null}
!409 = metadata !{i32 274, i32 0, metadata !4, null}
!410 = metadata !{i32 281, i32 0, metadata !4, null}
!411 = metadata !{i32 282, i32 0, metadata !4, null}
!412 = metadata !{i32 283, i32 0, metadata !4, null}
!413 = metadata !{i32 284, i32 0, metadata !4, null}
!414 = metadata !{i32 286, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !4, i32 285, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!416 = metadata !{i32 287, i32 0, metadata !415, null}
!417 = metadata !{i32 289, i32 0, metadata !4, null}
!418 = metadata !{i32 290, i32 0, metadata !4, null}
!419 = metadata !{i32 291, i32 0, metadata !4, null}
!420 = metadata !{i32 293, i32 0, metadata !4, null}
!421 = metadata !{i32 294, i32 0, metadata !4, null}
!422 = metadata !{i32 295, i32 0, metadata !4, null}
!423 = metadata !{i32 296, i32 0, metadata !4, null}
!424 = metadata !{i32 297, i32 0, metadata !4, null}
!425 = metadata !{i32 307, i32 0, metadata !4, null}
!426 = metadata !{i32 308, i32 0, metadata !4, null}
!427 = metadata !{i32 309, i32 0, metadata !4, null}
!428 = metadata !{i32 311, i32 0, metadata !4, null}
!429 = metadata !{i32 316, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !4, i32 312, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!431 = metadata !{i32 473, i32 0, metadata !269, metadata !432}
!432 = metadata !{i32 317, i32 0, metadata !430, null}
!433 = metadata !{i32 479, i32 0, metadata !269, metadata !432}
!434 = metadata !{i32 494, i32 0, metadata !269, metadata !432}
!435 = metadata !{i32 499, i32 0, metadata !436, metadata !432}
!436 = metadata !{i32 786443, metadata !1, metadata !269, i32 499, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!437 = metadata !{i32 503, i32 0, metadata !438, metadata !432}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 500, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!439 = metadata !{i32 360, i32 0, metadata !430, null}
!440 = metadata !{i32 313, i32 0, metadata !430, null}
!441 = metadata !{i32 314, i32 0, metadata !430, null}
!442 = metadata !{i32 786689, metadata !269, metadata !"hmm", metadata !5, i32 16777689, metadata !127, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [hmm] [line 473]
!443 = metadata !{i32 786689, metadata !269, metadata !"seed", metadata !5, i32 33554905, metadata !8, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [seed] [line 473]
!444 = metadata !{i32 786689, metadata !269, metadata !"nsample", metadata !5, i32 50332121, metadata !8, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [nsample] [line 473]
!445 = metadata !{i32 786689, metadata !269, metadata !"lenmean", metadata !5, i32 67109338, metadata !146, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [lenmean] [line 474]
!446 = metadata !{i32 474, i32 0, metadata !269, metadata !432}
!447 = metadata !{i32 786689, metadata !269, metadata !"lensd", metadata !5, i32 83886554, metadata !146, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [lensd] [line 474]
!448 = metadata !{i32 786689, metadata !269, metadata !"fixedlen", metadata !5, i32 100663770, metadata !8, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [fixedlen] [line 474]
!449 = metadata !{i32 480, i32 0, metadata !269, metadata !432}
!450 = metadata !{i32 492, i32 0, metadata !269, metadata !432}
!451 = metadata !{i32 493, i32 0, metadata !269, metadata !432}
!452 = metadata !{i32 495, i32 0, metadata !269, metadata !432}
!453 = metadata !{i32 786688, metadata !269, metadata !"hist", metadata !5, i32 477, metadata !210, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [hist] [line 477]
!454 = metadata !{i32 496, i32 0, metadata !269, metadata !432}
!455 = metadata !{i32 786688, metadata !269, metadata !"mx", metadata !5, i32 478, metadata !284, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [mx] [line 478]
!456 = metadata !{float 0xC7EFFFFFE0000000}
!457 = metadata !{i32 786688, metadata !269, metadata !"max", metadata !5, i32 481, metadata !146, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [max] [line 481]
!458 = metadata !{i32 497, i32 0, metadata !269, metadata !432}
!459 = metadata !{i32 786688, metadata !269, metadata !"idx", metadata !5, i32 486, metadata !8, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [idx] [line 486]
!460 = metadata !{i32 502, i32 0, metadata !438, metadata !432}
!461 = metadata !{i32 786688, metadata !269, metadata !"sqlen", metadata !5, i32 485, metadata !8, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [sqlen] [line 485]
!462 = metadata !{i32 505, i32 0, metadata !438, metadata !432}
!463 = metadata !{i32 786688, metadata !269, metadata !"seq", metadata !5, i32 482, metadata !10, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [seq] [line 482]
!464 = metadata !{i32 506, i32 0, metadata !438, metadata !432}
!465 = metadata !{i32 786688, metadata !269, metadata !"dsq", metadata !5, i32 483, metadata !10, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [dsq] [line 483]
!466 = metadata !{i32 508, i32 0, metadata !438, metadata !432}
!467 = metadata !{i32 509, i32 0, metadata !438, metadata !432}
!468 = metadata !{i32 786688, metadata !269, metadata !"score", metadata !5, i32 484, metadata !146, i32 0, metadata !432} ; [ DW_TAG_auto_variable ] [score] [line 484]
!469 = metadata !{i32 511, i32 0, metadata !438, metadata !432}
!470 = metadata !{i32 513, i32 0, metadata !438, metadata !432}
!471 = metadata !{i32 514, i32 0, metadata !438, metadata !432}
!472 = metadata !{i32 516, i32 0, metadata !438, metadata !432}
!473 = metadata !{i32 517, i32 0, metadata !438, metadata !432}
!474 = metadata !{i32 520, i32 0, metadata !269, metadata !432}
!475 = metadata !{i32 521, i32 0, metadata !269, metadata !432}
!476 = metadata !{i32 786689, metadata !269, metadata !"ret_hist", metadata !5, i32 117440987, metadata !272, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [ret_hist] [line 475]
!477 = metadata !{i32 475, i32 0, metadata !269, metadata !432}
!478 = metadata !{i32 341, i32 0, metadata !430, null}
!479 = metadata !{i32 344, i32 0, metadata !430, null}
!480 = metadata !{i32 345, i32 0, metadata !430, null}
!481 = metadata !{i32 355, i32 0, metadata !430, null}
!482 = metadata !{i32 356, i32 0, metadata !430, null}
!483 = metadata !{i32 363, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !430, i32 361, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!485 = metadata !{i32 367, i32 0, metadata !430, null}
!486 = metadata !{i32 522, i32 0, metadata !269, metadata !432}
!487 = metadata !{i32 786689, metadata !269, metadata !"ret_max", metadata !5, i32 134218203, metadata !155, i32 0, metadata !432} ; [ DW_TAG_arg_variable ] [ret_max] [line 475]
!488 = metadata !{i32 357, i32 0, metadata !430, null}
!489 = metadata !{i32 523, i32 0, metadata !269, metadata !432}
!490 = metadata !{i32 524, i32 0, metadata !269, metadata !432}
!491 = metadata !{i32 333, i32 0, metadata !430, null}
!492 = metadata !{i32 342, i32 0, metadata !430, null}
!493 = metadata !{metadata !"float", metadata !376}
!494 = metadata !{i32 346, i32 0, metadata !430, null}
!495 = metadata !{i32 347, i32 0, metadata !430, null}
!496 = metadata !{i32 348, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !430, i32 347, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!498 = metadata !{i32 349, i32 0, metadata !497, null}
!499 = metadata !{i32 350, i32 0, metadata !497, null}
!500 = metadata !{i32 354, i32 0, metadata !430, null}
!501 = metadata !{i32 358, i32 0, metadata !430, null}
!502 = metadata !{i32 362, i32 0, metadata !484, null}
!503 = metadata !{i32 364, i32 0, metadata !484, null}
!504 = metadata !{i32 365, i32 0, metadata !484, null}
!505 = metadata !{i32 368, i32 0, metadata !430, null}
!506 = metadata !{i32 377, i32 0, metadata !4, null}
!507 = metadata !{i32 378, i32 0, metadata !4, null}
!508 = metadata !{i32 379, i32 0, metadata !4, null}
!509 = metadata !{i32 380, i32 0, metadata !4, null}
!510 = metadata !{i32 381, i32 0, metadata !4, null}
!511 = metadata !{i32 383, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !4, i32 383, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!513 = metadata !{i32 387, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !512, i32 384, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c]
!515 = metadata !{i32 388, i32 0, metadata !514, null}
!516 = metadata !{i32 389, i32 0, metadata !514, null}
!517 = metadata !{i32 390, i32 0, metadata !514, null}
!518 = metadata !{i32 394, i32 0, metadata !514, null}
!519 = metadata !{i32 395, i32 0, metadata !514, null}
!520 = metadata !{i32 396, i32 0, metadata !514, null}
!521 = metadata !{i32 397, i32 0, metadata !514, null}
!522 = metadata !{i32 401, i32 0, metadata !514, null}
!523 = metadata !{i32 402, i32 0, metadata !514, null}
!524 = metadata !{i32 404, i32 0, metadata !514, null}
!525 = metadata !{i32 414, i32 0, metadata !4, null}
!526 = metadata !{i32 415, i32 0, metadata !4, null}
!527 = metadata !{i32 418, i32 0, metadata !4, null}
!528 = metadata !{i32 419, i32 0, metadata !4, null}
!529 = metadata !{i32 420, i32 0, metadata !4, null}
!530 = metadata !{i32 421, i32 0, metadata !4, null}
!531 = metadata !{i32 422, i32 0, metadata !4, null}
!532 = metadata !{i32 423, i32 0, metadata !4, null}
!533 = metadata !{i32 425, i32 0, metadata !4, null}
!534 = metadata !{i32 432, i32 0, metadata !4, null}
!535 = metadata !{i32 446, i32 0, metadata !4, null}
!536 = metadata !{i32 447, i32 0, metadata !4, null}
!537 = metadata !{i32 448, i32 0, metadata !4, null}
!538 = metadata !{i32 449, i32 0, metadata !4, null}
!539 = metadata !{i32 450, i32 0, metadata !4, null}
!540 = metadata !{i32 451, i32 0, metadata !4, null}
