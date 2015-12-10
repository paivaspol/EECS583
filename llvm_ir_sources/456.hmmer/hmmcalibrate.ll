; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.opt_s = type { i8*, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.stopwatch_s = type { i64, %struct.tms, double, double, double }
%struct.tms = type { i64, i64, i64, i64 }
%struct.hmmfile_s = type { %struct.__sFILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct.ssifile_s = type { %struct.__sFILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
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
@__stdoutp = external global %struct.__sFILE*
@banner = internal global [48 x i8] c"hmmcalibrate -- calibrate HMM search statistics\00", align 16
@experts = internal global [456 x i8] c"  --cpu <n>      : run <n> threads in parallel (if threaded)\0A  --fixed <n>    : fix random sequence length at <n>\0A  --histfile <f> : save histogram(s) to file <f>\0A  --mean <x>     : set random seq length mean at <x> [350]\0A  --num <n>      : set number of sampled seqs to <n> [5000]\0A  --pvm          : run on a Parallel Virtual Machine (PVM)\0A  --sd <x>       : set random seq length std. dev to <x> [350]\0A  --seed <n>     : set random seed to <n> [time()]\0A\00", align 16
@.str9 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"PVM support is not compiled into HMMER; --pvm doesn't work.\00", align 1
@.str11 = private unnamed_addr constant [80 x i8] c"Posix threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str12 = private unnamed_addr constant [40 x i8] c"failed to open HMM file %s for reading.\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str14 = private unnamed_addr constant [51 x i8] c"Failed to open histogram save file %s for writing\0A\00", align 1
@.str15 = private unnamed_addr constant [70 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c\00", align 1
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %randomseq.i = alloca [20 x float], align 16
  %p1.i = alloca float, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %blocksigs = alloca i32, align 4
  %stopwatch = alloca %struct.stopwatch_s, align 8
  %extrawatch = alloca %struct.stopwatch_s, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !20, metadata !362), !dbg !363
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !21, metadata !362), !dbg !364
  %1 = bitcast %struct.stopwatch_s* %stopwatch to i8*, !dbg !365
  call void @llvm.lifetime.start(i64 64, i8* %1) #2, !dbg !365
  %2 = bitcast %struct.stopwatch_s* %extrawatch to i8*, !dbg !366
  call void @llvm.lifetime.start(i64 64, i8* %2) #2, !dbg !366
  tail call void @llvm.dbg.value(metadata %struct.stopwatch_s* %stopwatch, i64 0, metadata !239, metadata !362), !dbg !367
  call void @StopwatchStart(%struct.stopwatch_s* %stopwatch) #7, !dbg !368
  call void @llvm.dbg.value(metadata %struct.stopwatch_s* %extrawatch, i64 0, metadata !261, metadata !362), !dbg !369
  call void @StopwatchZero(%struct.stopwatch_s* %extrawatch) #7, !dbg !370
  call void @llvm.dbg.value(metadata i32 5000, i64 0, metadata !265, metadata !362), !dbg !371
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !267, metadata !362), !dbg !372
  call void @llvm.dbg.value(metadata float 3.250000e+02, i64 0, metadata !268, metadata !362), !dbg !373
  call void @llvm.dbg.value(metadata float 2.000000e+02, i64 0, metadata !269, metadata !362), !dbg !374
  %3 = call i64 @time(i64* null) #7, !dbg !375
  %4 = trunc i64 %3 to i32, !dbg !376
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !266, metadata !362), !dbg !377
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !237, metadata !362), !dbg !378
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !362), !dbg !379
  call void @llvm.dbg.value(metadata i32 20, i64 0, metadata !271, metadata !362), !dbg !380
  call void @llvm.dbg.value(metadata i32 100, i64 0, metadata !264, metadata !362), !dbg !381
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !276, metadata !362), !dbg !382
  call void @llvm.dbg.declare(metadata [20 x float]* %randomseq.i, metadata !313, metadata !362), !dbg !383
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !275, metadata !362), !dbg !389
  %5 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !390
  %6 = icmp eq i32 %5, 0, !dbg !391
  br i1 %6, label %._crit_edge31, label %.lr.ph30, !dbg !391

.lr.ph30:                                         ; preds = %0, %.backedge
  %num_threads.028 = phi i32 [ %num_threads.0.be, %.backedge ], [ 0, %0 ]
  %do_pvm.027 = phi i32 [ %do_pvm.0.be, %.backedge ], [ 0, %0 ]
  %lensd.026 = phi float [ %lensd.0.be, %.backedge ], [ 2.000000e+02, %0 ]
  %lenmean.025 = phi float [ %lenmean.0.be, %.backedge ], [ 3.250000e+02, %0 ]
  %fixedlen.024 = phi i32 [ %fixedlen.0.be, %.backedge ], [ 0, %0 ]
  %seed.023 = phi i32 [ %seed.0.be, %.backedge ], [ %4, %0 ]
  %nsample.022 = phi i32 [ %nsample.0.be, %.backedge ], [ 5000, %0 ]
  %histfile.021 = phi i8* [ %histfile.0.be, %.backedge ], [ null, %0 ]
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %7 = load i8** %optname, align 8, !dbg !392, !tbaa !395
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !399
  %9 = icmp eq i32 %8, 0, !dbg !400
  br i1 %9, label %10, label %13, !dbg !401

; <label>:10                                      ; preds = %.lr.ph30
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %11 = load i8** %optarg, align 8, !dbg !402, !tbaa !395
  %12 = call i32 @atoi(i8* %11) #7, !dbg !403
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !276, metadata !362), !dbg !382
  br label %.backedge, !dbg !404

; <label>:13                                      ; preds = %.lr.ph30
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %14 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !405
  %15 = icmp eq i32 %14, 0, !dbg !407
  br i1 %15, label %16, label %21, !dbg !408

; <label>:16                                      ; preds = %13
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %17 = load i8** %optarg, align 8, !dbg !409, !tbaa !395
  %18 = call i32 @atoi(i8* %17) #7, !dbg !410
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !267, metadata !362), !dbg !372
  br label %.backedge, !dbg !411

.backedge:                                        ; preds = %16, %29, %52, %55, %45, %36, %24, %10, %39
  %histfile.0.be = phi i8* [ %histfile.021, %10 ], [ %histfile.021, %16 ], [ %25, %24 ], [ %histfile.021, %29 ], [ %histfile.021, %36 ], [ %histfile.021, %45 ], [ %histfile.021, %52 ], [ %histfile.021, %55 ], [ %histfile.021, %39 ]
  %nsample.0.be = phi i32 [ %nsample.022, %10 ], [ %nsample.022, %16 ], [ %nsample.022, %24 ], [ %nsample.022, %29 ], [ %38, %36 ], [ %nsample.022, %45 ], [ %nsample.022, %52 ], [ %nsample.022, %55 ], [ %nsample.022, %39 ]
  %seed.0.be = phi i32 [ %seed.023, %10 ], [ %seed.023, %16 ], [ %seed.023, %24 ], [ %seed.023, %29 ], [ %seed.023, %36 ], [ %seed.023, %45 ], [ %54, %52 ], [ %seed.023, %55 ], [ %seed.023, %39 ]
  %fixedlen.0.be = phi i32 [ %fixedlen.024, %10 ], [ %18, %16 ], [ %fixedlen.024, %24 ], [ %fixedlen.024, %29 ], [ %fixedlen.024, %36 ], [ %fixedlen.024, %45 ], [ %fixedlen.024, %52 ], [ %fixedlen.024, %55 ], [ %fixedlen.024, %39 ]
  %lenmean.0.be = phi float [ %lenmean.025, %10 ], [ %lenmean.025, %16 ], [ %lenmean.025, %24 ], [ %32, %29 ], [ %lenmean.025, %36 ], [ %lenmean.025, %45 ], [ %lenmean.025, %52 ], [ %lenmean.025, %55 ], [ %lenmean.025, %39 ]
  %lensd.0.be = phi float [ %lensd.026, %10 ], [ %lensd.026, %16 ], [ %lensd.026, %24 ], [ %lensd.026, %29 ], [ %lensd.026, %36 ], [ %48, %45 ], [ %lensd.026, %52 ], [ %lensd.026, %55 ], [ %lensd.026, %39 ]
  %do_pvm.0.be = phi i32 [ %do_pvm.027, %10 ], [ %do_pvm.027, %16 ], [ %do_pvm.027, %24 ], [ %do_pvm.027, %29 ], [ %do_pvm.027, %36 ], [ %do_pvm.027, %45 ], [ %do_pvm.027, %52 ], [ %do_pvm.027, %55 ], [ 1, %39 ]
  %num_threads.0.be = phi i32 [ %12, %10 ], [ %num_threads.028, %16 ], [ %num_threads.028, %24 ], [ %num_threads.028, %29 ], [ %num_threads.028, %36 ], [ %num_threads.028, %45 ], [ %num_threads.028, %52 ], [ %num_threads.028, %55 ], [ %num_threads.028, %39 ]
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !275, metadata !362), !dbg !389
  %19 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !390
  %20 = icmp eq i32 %19, 0, !dbg !391
  br i1 %20, label %._crit_edge31, label %.lr.ph30, !dbg !391

; <label>:21                                      ; preds = %13
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %22 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !412
  %23 = icmp eq i32 %22, 0, !dbg !414
  br i1 %23, label %24, label %26, !dbg !415

; <label>:24                                      ; preds = %21
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %25 = load i8** %optarg, align 8, !dbg !416, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !237, metadata !362), !dbg !378
  br label %.backedge, !dbg !417

; <label>:26                                      ; preds = %21
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %27 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !418
  %28 = icmp eq i32 %27, 0, !dbg !420
  br i1 %28, label %29, label %33, !dbg !421

; <label>:29                                      ; preds = %26
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %30 = load i8** %optarg, align 8, !dbg !422, !tbaa !395
  %31 = call double @atof(i8* %30) #7, !dbg !423
  %32 = fptrunc double %31 to float, !dbg !423
  call void @llvm.dbg.value(metadata float %32, i64 0, metadata !268, metadata !362), !dbg !373
  br label %.backedge, !dbg !424

; <label>:33                                      ; preds = %26
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %34 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !425
  %35 = icmp eq i32 %34, 0, !dbg !427
  br i1 %35, label %36, label %39, !dbg !428

; <label>:36                                      ; preds = %33
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %37 = load i8** %optarg, align 8, !dbg !429, !tbaa !395
  %38 = call i32 @atoi(i8* %37) #7, !dbg !430
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !265, metadata !362), !dbg !371
  br label %.backedge, !dbg !431

; <label>:39                                      ; preds = %33
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %40 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !432
  %41 = icmp eq i32 %40, 0, !dbg !434
  br i1 %41, label %.backedge, label %42, !dbg !435

; <label>:42                                      ; preds = %39
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %43 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !436
  %44 = icmp eq i32 %43, 0, !dbg !438
  br i1 %44, label %45, label %49, !dbg !439

; <label>:45                                      ; preds = %42
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %46 = load i8** %optarg, align 8, !dbg !440, !tbaa !395
  %47 = call double @atof(i8* %46) #7, !dbg !441
  %48 = fptrunc double %47 to float, !dbg !441
  call void @llvm.dbg.value(metadata float %48, i64 0, metadata !269, metadata !362), !dbg !374
  br label %.backedge, !dbg !442

; <label>:49                                      ; preds = %42
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %50 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !443
  %51 = icmp eq i32 %50, 0, !dbg !445
  br i1 %51, label %52, label %55, !dbg !446

; <label>:52                                      ; preds = %49
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !274, metadata !362), !dbg !388
  %53 = load i8** %optarg, align 8, !dbg !447, !tbaa !395
  %54 = call i32 @atoi(i8* %53) #7, !dbg !448
  call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !266, metadata !362), !dbg !377
  br label %.backedge, !dbg !449

; <label>:55                                      ; preds = %49
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !273, metadata !362), !dbg !387
  %56 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !450
  %57 = icmp eq i32 %56, 0, !dbg !452
  br i1 %57, label %58, label %.backedge, !dbg !453

; <label>:58                                      ; preds = %55
  %59 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !454, !tbaa !395
  call void @HMMERBanner(%struct.__sFILE* %59, i8* getelementptr inbounds ([48 x i8]* @banner, i64 0, i64 0)) #7, !dbg !456
  %60 = call i32 @puts(i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0)) #7, !dbg !457
  %61 = call i32 @puts(i8* getelementptr inbounds ([456 x i8]* @experts, i64 0, i64 0)) #7, !dbg !458
  call void @exit(i32 0) #8, !dbg !459
  unreachable, !dbg !459

._crit_edge31:                                    ; preds = %.backedge, %0
  %num_threads.0.lcssa = phi i32 [ 0, %0 ], [ %num_threads.0.be, %.backedge ]
  %do_pvm.0.lcssa = phi i32 [ 0, %0 ], [ %do_pvm.0.be, %.backedge ]
  %lensd.0.lcssa = phi float [ 2.000000e+02, %0 ], [ %lensd.0.be, %.backedge ]
  %lenmean.0.lcssa = phi float [ 3.250000e+02, %0 ], [ %lenmean.0.be, %.backedge ]
  %fixedlen.0.lcssa = phi i32 [ 0, %0 ], [ %fixedlen.0.be, %.backedge ]
  %seed.0.lcssa = phi i32 [ %4, %0 ], [ %seed.0.be, %.backedge ]
  %nsample.0.lcssa = phi i32 [ 5000, %0 ], [ %nsample.0.be, %.backedge ]
  %histfile.0.lcssa = phi i8* [ null, %0 ], [ %histfile.0.be, %.backedge ]
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !275, metadata !362), !dbg !389
  %62 = load i32* %optind, align 4, !dbg !460, !tbaa !462
  %63 = sub nsw i32 %argc, %62, !dbg !464
  %64 = icmp eq i32 %63, 1, !dbg !465
  br i1 %64, label %66, label %65, !dbg !466

; <label>:65                                      ; preds = %._crit_edge31
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0)) #7, !dbg !467
  %.pre = load i32* %optind, align 4, !dbg !468, !tbaa !462
  br label %66, !dbg !467

; <label>:66                                      ; preds = %._crit_edge31, %65
  %67 = phi i32 [ %62, %._crit_edge31 ], [ %.pre, %65 ]
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !275, metadata !362), !dbg !389
  %68 = add nsw i32 %67, 1, !dbg !468
  call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !275, metadata !362), !dbg !389
  store i32 %68, i32* %optind, align 4, !dbg !468, !tbaa !462
  %69 = sext i32 %67 to i64, !dbg !469
  %70 = getelementptr inbounds i8** %argv, i64 %69, !dbg !469
  %71 = load i8** %70, align 8, !dbg !469, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !22, metadata !362), !dbg !470
  %72 = icmp ne i32 %do_pvm.0.lcssa, 0, !dbg !471
  br i1 %72, label %73, label %74, !dbg !473

; <label>:73                                      ; preds = %66
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !474
  br label %74, !dbg !474

; <label>:74                                      ; preds = %73, %66
  %75 = icmp eq i32 %num_threads.0.lcssa, 0, !dbg !475
  br i1 %75, label %77, label %76, !dbg !477

; <label>:76                                      ; preds = %74
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([80 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !478
  br label %77, !dbg !478

; <label>:77                                      ; preds = %74, %76
  %78 = call %struct.hmmfile_s* @HMMFileOpen(i8* %71, i8* null) #7, !dbg !479
  call void @llvm.dbg.value(metadata %struct.hmmfile_s* %78, i64 0, metadata !24, metadata !362), !dbg !481
  %79 = icmp eq %struct.hmmfile_s* %78, null, !dbg !482
  br i1 %79, label %80, label %81, !dbg !483

; <label>:80                                      ; preds = %77
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), i8* %71) #7, !dbg !484
  br label %81, !dbg !484

; <label>:81                                      ; preds = %80, %77
  call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !238, metadata !362), !dbg !485
  %82 = icmp ne i8* %histfile.0.lcssa, null, !dbg !486
  br i1 %82, label %83, label %87, !dbg !488

; <label>:83                                      ; preds = %81
  %84 = call %struct.__sFILE* @"\01_fopen"(i8* %histfile.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !489
  call void @llvm.dbg.value(metadata %struct.__sFILE* %84, i64 0, metadata !238, metadata !362), !dbg !485
  %85 = icmp eq %struct.__sFILE* %84, null, !dbg !492
  br i1 %85, label %86, label %87, !dbg !493

; <label>:86                                      ; preds = %83
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str14, i64 0, i64 0), i8* %histfile.0.lcssa) #7, !dbg !494
  br label %87, !dbg !494

; <label>:87                                      ; preds = %83, %86, %81
  %hfp.0 = phi %struct.__sFILE* [ null, %86 ], [ %84, %83 ], [ null, %81 ]
  %88 = call i64 @strlen(i8* %71) #7, !dbg !495
  %89 = add i64 %88, 5, !dbg !495
  %90 = call i8* @sre_malloc(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 265, i64 %89) #7, !dbg !495
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !23, metadata !362), !dbg !496
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* %90, i1 false), !dbg !497
  %92 = call i8* @__strcpy_chk(i8* %90, i8* %71, i64 %91) #7, !dbg !497
  %93 = call i8* @__strcat_chk(i8* %90, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i64 %91) #7, !dbg !498
  %94 = call i32 @FileExists(i8* %90) #7, !dbg !499
  %95 = icmp eq i32 %94, 0, !dbg !499
  br i1 %95, label %97, label %96, !dbg !501

; <label>:96                                      ; preds = %87
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str17, i64 0, i64 0), i8* %90) #7, !dbg !502
  br label %97, !dbg !502

; <label>:97                                      ; preds = %87, %96
  %98 = getelementptr inbounds %struct.hmmfile_s* %78, i64 0, i32 3, !dbg !503
  %99 = load i32* %98, align 4, !dbg !503, !tbaa !505
  %100 = icmp eq i32 %99, 0, !dbg !508
  %. = select i1 %100, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)
  %101 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !509, !tbaa !395
  call void @HMMERBanner(%struct.__sFILE* %101, i8* getelementptr inbounds ([48 x i8]* @banner, i64 0, i64 0)) #7, !dbg !510
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0), i8* %71) #7, !dbg !511
  %103 = icmp eq i32 %fixedlen.0.lcssa, 0, !dbg !512
  br i1 %103, label %106, label %104, !dbg !514

; <label>:104                                     ; preds = %97
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i32 %fixedlen.0.lcssa) #7, !dbg !515
  br label %111, !dbg !515

; <label>:106                                     ; preds = %97
  %107 = fpext float %lenmean.0.lcssa to double, !dbg !516
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str21, i64 0, i64 0), double %107) #7, !dbg !518
  %109 = fpext float %lensd.0.lcssa to double, !dbg !519
  %110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str22, i64 0, i64 0), double %109) #7, !dbg !520
  br label %111

; <label>:111                                     ; preds = %106, %104
  %112 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str23, i64 0, i64 0), i32 %nsample.0.lcssa) #7, !dbg !521
  %113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i32 %seed.0.lcssa) #7, !dbg !522
  %114 = select i1 %82, i8* %histfile.0.lcssa, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), !dbg !523
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str25, i64 0, i64 0), i8* %114) #7, !dbg !524
  br i1 %72, label %116, label %117, !dbg !525

; <label>:116                                     ; preds = %111
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str44, i64 0, i64 0)) #2, !dbg !526
  br label %121, !dbg !526

; <label>:117                                     ; preds = %111
  %118 = icmp sgt i32 %num_threads.0.lcssa, 0, !dbg !528
  br i1 %118, label %119, label %121, !dbg !530

; <label>:119                                     ; preds = %117
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0), i32 %num_threads.0.lcssa) #7, !dbg !531
  br label %121, !dbg !531

; <label>:121                                     ; preds = %117, %119, %116
  %puts = call i32 @puts(i8* getelementptr inbounds ([65 x i8]* @str, i64 0, i64 0)) #2, !dbg !532
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !218, metadata !362), !dbg !533
  %122 = call i8* @sre_malloc(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 308, i64 400) #7, !dbg !534
  %123 = bitcast i8* %122 to float*, !dbg !534
  call void @llvm.dbg.value(metadata float* %123, i64 0, metadata !262, metadata !362), !dbg !535
  %124 = call i8* @sre_malloc(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 309, i64 400) #7, !dbg !536
  %125 = bitcast i8* %124 to float*, !dbg !536
  call void @llvm.dbg.value(metadata float* %125, i64 0, metadata !263, metadata !362), !dbg !537
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %126 = call i32 @HMMFileRead(%struct.hmmfile_s* %78, %struct.plan7_s** %hmm) #7, !dbg !539
  %127 = icmp eq i32 %126, 0, !dbg !540
  br i1 %127, label %._crit_edge18, label %.lr.ph17, !dbg !540

.lr.ph17:                                         ; preds = %121
  %128 = or i32 %num_threads.0.lcssa, %do_pvm.0.lcssa, !dbg !541
  %129 = icmp eq i32 %128, 0, !dbg !541
  %130 = bitcast float* %p1.i to i8*, !dbg !542
  %131 = bitcast [20 x float]* %randomseq.i to i8*, !dbg !543
  %132 = getelementptr inbounds [20 x float]* %randomseq.i, i64 0, i64 0, !dbg !544
  %133 = icmp sgt i32 %nsample.0.lcssa, 0, !dbg !545
  %134 = fpext float %lenmean.0.lcssa to double, !dbg !548
  %135 = fpext float %lensd.0.lcssa to double, !dbg !551
  %136 = add i32 %nsample.0.lcssa, -1, !dbg !552
  %137 = icmp eq %struct.__sFILE* %hfp.0, null, !dbg !553
  br label %138, !dbg !540

; <label>:138                                     ; preds = %.lr.ph17, %216
  %indvars.iv41 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next42, %216 ]
  %lambda.015 = phi float* [ %125, %.lr.ph17 ], [ %lambda.1, %216 ]
  %mu.014 = phi float* [ %123, %.lr.ph17 ], [ %mu.1, %216 ]
  %139 = phi float [ undef, %.lr.ph17 ], [ %170, %216 ]
  %140 = phi %struct.histogram_s* [ undef, %.lr.ph17 ], [ %169, %216 ]
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %141 = load %struct.plan7_s** %hmm, align 8, !dbg !555, !tbaa !395
  %142 = icmp eq %struct.plan7_s* %141, null, !dbg !557
  br i1 %142, label %143, label %144, !dbg !558

; <label>:143                                     ; preds = %138
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !559
  br label %144, !dbg !559

; <label>:144                                     ; preds = %143, %138
  br i1 %129, label %145, label %167, !dbg !541

; <label>:145                                     ; preds = %144
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %146 = load %struct.plan7_s** %hmm, align 8, !dbg !560, !tbaa !395
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !542
  call void @llvm.dbg.value(metadata %struct.plan7_s* %146, i64 0, metadata !288, metadata !362) #2, !dbg !542
  call void @llvm.dbg.value(metadata i32 %seed.0.be, i64 0, metadata !289, metadata !362) #2, !dbg !561
  call void @llvm.dbg.value(metadata i32 %nsample.0.be, i64 0, metadata !290, metadata !362) #2, !dbg !562
  call void @llvm.dbg.value(metadata float %lenmean.0.be, i64 0, metadata !291, metadata !362) #2, !dbg !563
  call void @llvm.dbg.value(metadata float %lensd.0.be, i64 0, metadata !292, metadata !362) #2, !dbg !564
  call void @llvm.dbg.value(metadata i32 %fixedlen.0.be, i64 0, metadata !293, metadata !362) #2, !dbg !565
  call void @llvm.lifetime.start(i64 80, i8* %131) #2, !dbg !543
  call void @sre_srandom(i32 %seed.0.lcssa) #7, !dbg !566
  call void @P7Logoddsify(%struct.plan7_s* %146, i32 1) #7, !dbg !567
  call void @llvm.dbg.value(metadata float* %p1.i, i64 0, metadata !314, metadata !362) #2, !dbg !568
  call void @P7DefaultNullModel(float* %132, float* %p1.i) #7, !dbg !569
  %147 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100) #7, !dbg !570
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !296, metadata !362) #2, !dbg !571
  %148 = getelementptr inbounds %struct.plan7_s* %146, i64 0, i32 20, !dbg !572
  %149 = load i32* %148, align 4, !dbg !572, !tbaa !573
  %150 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %149, i32 25, i32 0) #7, !dbg !576
  call void @llvm.dbg.value(metadata %struct.dpmatrix_s* %150, i64 0, metadata !297, metadata !362) #2, !dbg !577
  call void @llvm.dbg.value(metadata float 0xC7EFFFFFE0000000, i64 0, metadata !315, metadata !362) #2, !dbg !578
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !320, metadata !362) #2, !dbg !579
  br i1 %133, label %.lr.ph.i, label %main_loop_serial.exit, !dbg !552

.lr.ph.i:                                         ; preds = %145, %164
  %max.02.i = phi float [ %max.1.i, %164 ], [ 0xC7EFFFFFE0000000, %145 ], !dbg !580
  %idx.01.i = phi i32 [ %166, %164 ], [ 0, %145 ], !dbg !580
  br i1 %103, label %.preheader.i, label %.loopexit.i, !dbg !581

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %151 = call double @Gaussrandom(double %134, double %135) #7, !dbg !582
  %152 = fptosi double %151 to i32, !dbg !583
  call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !319, metadata !362) #2, !dbg !584
  %153 = icmp slt i32 %152, 1, !dbg !585
  br i1 %153, label %.preheader.i, label %.loopexit.i, !dbg !586

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph.i
  %sqlen.0.i = phi i32 [ %fixedlen.0.lcssa, %.lr.ph.i ], [ %152, %.preheader.i ], !dbg !580
  %154 = load i32* @Alphabet_size, align 4, !dbg !587, !tbaa !462
  %155 = call i8* @RandomSequence(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), float* %132, i32 %154, i32 %sqlen.0.i) #7, !dbg !588
  call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !316, metadata !362) #2, !dbg !589
  %156 = call i8* @DigitizeSequence(i8* %155, i32 %sqlen.0.i) #7, !dbg !590
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !317, metadata !362) #2, !dbg !591
  %157 = load i32* %148, align 4, !dbg !592, !tbaa !573
  %158 = call i32 @P7ViterbiSize(i32 %sqlen.0.i, i32 %157) #7, !dbg !594
  %159 = icmp slt i32 %158, 1001, !dbg !595
  br i1 %159, label %160, label %162, !dbg !596

; <label>:160                                     ; preds = %.loopexit.i
  %161 = call float @P7Viterbi(i8* %156, i32 %sqlen.0.i, %struct.plan7_s* %146, %struct.dpmatrix_s* %150, %struct.p7trace_s** null) #7, !dbg !597
  call void @llvm.dbg.value(metadata float %161, i64 0, metadata !318, metadata !362) #2, !dbg !598
  br label %164, !dbg !599

; <label>:162                                     ; preds = %.loopexit.i
  %163 = call float @P7SmallViterbi(i8* %156, i32 %sqlen.0.i, %struct.plan7_s* %146, %struct.dpmatrix_s* %150, %struct.p7trace_s** null) #7, !dbg !600
  call void @llvm.dbg.value(metadata float %163, i64 0, metadata !318, metadata !362) #2, !dbg !598
  br label %164, !dbg !580

; <label>:164                                     ; preds = %162, %160
  %score.0.i = phi float [ %161, %160 ], [ %163, %162 ], !dbg !580
  call void @AddToHistogram(%struct.histogram_s* %147, float %score.0.i) #7, !dbg !601
  %165 = fcmp ogt float %score.0.i, %max.02.i, !dbg !602
  call void @llvm.dbg.value(metadata float %score.0.i, i64 0, metadata !315, metadata !362) #2, !dbg !578
  %max.1.i = select i1 %165, float %score.0.i, float %max.02.i, !dbg !604
  call void @free(i8* %156) #7, !dbg !605
  call void @free(i8* %155) #7, !dbg !606
  %166 = add nuw nsw i32 %idx.01.i, 1, !dbg !607
  call void @llvm.dbg.value(metadata i32 %166, i64 0, metadata !320, metadata !362) #2, !dbg !579
  %exitcond.i = icmp eq i32 %idx.01.i, %136, !dbg !552
  br i1 %exitcond.i, label %main_loop_serial.exit, label %.lr.ph.i, !dbg !552

main_loop_serial.exit:                            ; preds = %164, %145
  %max.0.lcssa.i = phi float [ 0xC7EFFFFFE0000000, %145 ], [ %max.1.i, %164 ], !dbg !580
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %150) #7, !dbg !608
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !294, metadata !362), !dbg !609
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata %struct.histogram_s* %147, i64 0, metadata !219, metadata !362), !dbg !610
  call void @llvm.dbg.value(metadata float %max.0.lcssa.i, i64 0, metadata !295, metadata !362), !dbg !611
  call void @llvm.dbg.value(metadata float %max.0.lcssa.i, i64 0, metadata !236, metadata !362), !dbg !612
  call void @llvm.dbg.value(metadata float %max.0.lcssa.i, i64 0, metadata !236, metadata !362), !dbg !612
  call void @llvm.lifetime.end(i64 80, i8* %131) #2, !dbg !613
  call void @llvm.lifetime.end(i64 4, i8* %130), !dbg !613
  br label %168, !dbg !580

; <label>:167                                     ; preds = %144
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0)) #7, !dbg !614
  br label %168

; <label>:168                                     ; preds = %167, %main_loop_serial.exit
  %169 = phi %struct.histogram_s* [ %140, %167 ], [ %147, %main_loop_serial.exit ]
  %170 = phi float [ %139, %167 ], [ %max.0.lcssa.i, %main_loop_serial.exit ]
  %171 = call i32 @ExtremeValueFitHistogram(%struct.histogram_s* %169, i32 1, float 9.999000e+03) #7, !dbg !615
  %172 = icmp eq i32 %171, 0, !dbg !615
  br i1 %172, label %173, label %174, !dbg !617

; <label>:173                                     ; preds = %168
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([41 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !618
  br label %174, !dbg !618

; <label>:174                                     ; preds = %168, %173
  %175 = getelementptr inbounds %struct.histogram_s* %169, i64 0, i32 9, i64 0, !dbg !619
  %176 = bitcast float* %175 to i32*, !dbg !619
  %177 = load i32* %176, align 4, !dbg !619, !tbaa !620
  %178 = getelementptr inbounds float* %mu.014, i64 %indvars.iv41, !dbg !621
  %179 = bitcast float* %178 to i32*, !dbg !622
  store i32 %177, i32* %179, align 4, !dbg !622, !tbaa !620
  %180 = getelementptr inbounds %struct.histogram_s* %169, i64 0, i32 9, i64 1, !dbg !623
  %181 = bitcast float* %180 to i32*, !dbg !623
  %182 = load i32* %181, align 4, !dbg !623, !tbaa !620
  %183 = getelementptr inbounds float* %lambda.015, i64 %indvars.iv41, !dbg !624
  %184 = bitcast float* %183 to i32*, !dbg !625
  store i32 %182, i32* %184, align 4, !dbg !625, !tbaa !620
  %indvars.iv.next42 = add nuw i64 %indvars.iv41, 1, !dbg !540
  %185 = trunc i64 %indvars.iv.next42 to i32, !dbg !626
  %186 = srem i32 %185, 100, !dbg !626
  %187 = icmp eq i32 %186, 0, !dbg !628
  br i1 %187, label %188, label %197, !dbg !629

; <label>:188                                     ; preds = %174
  %189 = bitcast float* %mu.014 to i8*, !dbg !630
  %190 = shl i64 %indvars.iv41, 2, !dbg !630
  %191 = add i64 %190, 404, !dbg !630
  %192 = call i8* @sre_realloc(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 348, i8* %189, i64 %191) #7, !dbg !630
  %193 = bitcast i8* %192 to float*, !dbg !630
  call void @llvm.dbg.value(metadata float* %193, i64 0, metadata !262, metadata !362), !dbg !535
  %194 = bitcast float* %lambda.015 to i8*, !dbg !632
  %195 = call i8* @sre_realloc(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 349, i8* %194, i64 %191) #7, !dbg !632
  %196 = bitcast i8* %195 to float*, !dbg !632
  call void @llvm.dbg.value(metadata float* %196, i64 0, metadata !263, metadata !362), !dbg !537
  br label %197, !dbg !633

; <label>:197                                     ; preds = %188, %174
  %mu.1 = phi float* [ %193, %188 ], [ %mu.014, %174 ]
  %lambda.1 = phi float* [ %196, %188 ], [ %lambda.015, %174 ]
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %198 = load %struct.plan7_s** %hmm, align 8, !dbg !634, !tbaa !395
  %199 = getelementptr inbounds %struct.plan7_s* %198, i64 0, i32 0, !dbg !635
  %200 = load i8** %199, align 8, !dbg !635, !tbaa !636
  %201 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* %200) #7, !dbg !637
  %202 = load float* %175, align 4, !dbg !638, !tbaa !620
  %203 = fpext float %202 to double, !dbg !638
  %204 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), double %203) #7, !dbg !639
  %205 = load float* %180, align 4, !dbg !640, !tbaa !620
  %206 = fpext float %205 to double, !dbg !640
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str35, i64 0, i64 0), double %206) #7, !dbg !641
  %208 = fpext float %170 to double, !dbg !642
  %209 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0), double %208) #7, !dbg !643
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str43, i64 0, i64 0)) #2, !dbg !644
  br i1 %137, label %216, label %210, !dbg !645

; <label>:210                                     ; preds = %197
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %211 = load %struct.plan7_s** %hmm, align 8, !dbg !646, !tbaa !395
  %212 = getelementptr inbounds %struct.plan7_s* %211, i64 0, i32 0, !dbg !648
  %213 = load i8** %212, align 8, !dbg !648, !tbaa !636
  %214 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %hfp.0, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* %213) #7, !dbg !649
  call void @PrintASCIIHistogram(%struct.__sFILE* %hfp.0, %struct.histogram_s* %169) #7, !dbg !650
  %215 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %hfp.0), !dbg !651
  br label %216, !dbg !652

; <label>:216                                     ; preds = %197, %210
  call void @FreeHistogram(%struct.histogram_s* %169) #7, !dbg !653
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %217 = load %struct.plan7_s** %hmm, align 8, !dbg !654, !tbaa !395
  call void @FreePlan7(%struct.plan7_s* %217) #7, !dbg !655
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %218 = call i32 @HMMFileRead(%struct.hmmfile_s* %78, %struct.plan7_s** %hmm) #7, !dbg !539
  %219 = icmp eq i32 %218, 0, !dbg !540
  br i1 %219, label %._crit_edge18, label %138, !dbg !540

._crit_edge18:                                    ; preds = %216, %121
  %lambda.0.lcssa = phi float* [ %125, %121 ], [ %lambda.1, %216 ]
  %mu.0.lcssa = phi float* [ %123, %121 ], [ %mu.1, %216 ]
  %nhmm.0.lcssa = phi i32 [ 0, %121 ], [ %185, %216 ]
  call void @HMMFileRewind(%struct.hmmfile_s* %78) #7, !dbg !656
  %220 = call i32 @FileExists(i8* %90) #7, !dbg !657
  %221 = icmp eq i32 %220, 0, !dbg !657
  br i1 %221, label %223, label %222, !dbg !659

; <label>:222                                     ; preds = %._crit_edge18
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([49 x i8]* @.str39, i64 0, i64 0), i8* %90) #7, !dbg !660
  br label %223, !dbg !660

; <label>:223                                     ; preds = %._crit_edge18, %222
  %224 = call %struct.__sFILE* @"\01_fopen"(i8* %90, i8* %.) #7, !dbg !661
  call void @llvm.dbg.value(metadata %struct.__sFILE* %224, i64 0, metadata !209, metadata !362), !dbg !663
  %225 = icmp eq %struct.__sFILE* %224, null, !dbg !664
  br i1 %225, label %226, label %.preheader, !dbg !665

; <label>:226                                     ; preds = %223
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0), i8* %90) #7, !dbg !666
  br label %.preheader, !dbg !666

.preheader:                                       ; preds = %226, %223
  %227 = icmp sgt i32 %nhmm.0.lcssa, 0, !dbg !667
  br i1 %227, label %.lr.ph, label %._crit_edge, !dbg !670

.lr.ph:                                           ; preds = %.preheader
  %228 = add i32 %nhmm.0.lcssa, -1, !dbg !670
  br label %229, !dbg !670

; <label>:229                                     ; preds = %257, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %257 ]
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %230 = call i32 @HMMFileRead(%struct.hmmfile_s* %78, %struct.plan7_s** %hmm) #7, !dbg !671
  %231 = icmp eq i32 %230, 0, !dbg !671
  br i1 %231, label %232, label %233, !dbg !674

; <label>:232                                     ; preds = %229
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str41, i64 0, i64 0)) #7, !dbg !675
  br label %233, !dbg !675

; <label>:233                                     ; preds = %229, %232
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %234 = load %struct.plan7_s** %hmm, align 8, !dbg !676, !tbaa !395
  %235 = icmp eq %struct.plan7_s* %234, null, !dbg !678
  br i1 %235, label %236, label %237, !dbg !679

; <label>:236                                     ; preds = %233
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([50 x i8]* @.str42, i64 0, i64 0), i8* %71) #7, !dbg !680
  %.pre43 = load %struct.plan7_s** %hmm, align 8, !dbg !681, !tbaa !395
  br label %237, !dbg !680

; <label>:237                                     ; preds = %236, %233
  %238 = phi %struct.plan7_s* [ %.pre43, %236 ], [ %234, %233 ]
  %239 = getelementptr inbounds float* %mu.0.lcssa, i64 %indvars.iv, !dbg !682
  %240 = bitcast float* %239 to i32*, !dbg !682
  %241 = load i32* %240, align 4, !dbg !682, !tbaa !620
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %242 = getelementptr inbounds %struct.plan7_s* %238, i64 0, i32 45, !dbg !683
  %243 = bitcast float* %242 to i32*, !dbg !684
  store i32 %241, i32* %243, align 4, !dbg !684, !tbaa !685
  %244 = getelementptr inbounds float* %lambda.0.lcssa, i64 %indvars.iv, !dbg !686
  %245 = bitcast float* %244 to i32*, !dbg !686
  %246 = load i32* %245, align 4, !dbg !686, !tbaa !620
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %247 = getelementptr inbounds %struct.plan7_s* %238, i64 0, i32 46, !dbg !687
  %248 = bitcast float* %247 to i32*, !dbg !688
  store i32 %246, i32* %248, align 4, !dbg !688, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %249 = getelementptr inbounds %struct.plan7_s* %238, i64 0, i32 47, !dbg !690
  %250 = load i32* %249, align 4, !dbg !691, !tbaa !692
  %251 = or i32 %250, 128, !dbg !691
  store i32 %251, i32* %249, align 4, !dbg !691, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  call void @Plan7ComlogAppend(%struct.plan7_s* %238, i32 %argc, i8** %argv) #7, !dbg !693
  %252 = load i32* %98, align 4, !dbg !694, !tbaa !505
  %253 = icmp eq i32 %252, 0, !dbg !696
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %254 = load %struct.plan7_s** %hmm, align 8, !dbg !697, !tbaa !395
  br i1 %253, label %256, label %255, !dbg !698

; <label>:255                                     ; preds = %237
  call void @WriteBinHMM(%struct.__sFILE* %224, %struct.plan7_s* %254) #7, !dbg !699
  br label %257, !dbg !699

; <label>:256                                     ; preds = %237
  call void @WriteAscHMM(%struct.__sFILE* %224, %struct.plan7_s* %254) #7, !dbg !700
  br label %257

; <label>:257                                     ; preds = %256, %255
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !211, metadata !362), !dbg !538
  %258 = load %struct.plan7_s** %hmm, align 8, !dbg !701, !tbaa !395
  call void @FreePlan7(%struct.plan7_s* %258) #7, !dbg !702
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !670
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !670
  %exitcond = icmp eq i32 %lftr.wideiv, %228, !dbg !670
  br i1 %exitcond, label %._crit_edge, label %229, !dbg !670

._crit_edge:                                      ; preds = %257, %.preheader
  call void @HMMFileClose(%struct.hmmfile_s* %78) #7, !dbg !703
  %259 = call i32 @fclose(%struct.__sFILE* %224) #7, !dbg !704
  %260 = icmp eq i32 %259, 0, !dbg !706
  br i1 %260, label %262, label %261, !dbg !707

; <label>:261                                     ; preds = %._crit_edge
  call void @Panic(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 415) #7, !dbg !708
  br label %262, !dbg !708

; <label>:262                                     ; preds = %._crit_edge, %261
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !213, metadata !362), !dbg !709
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !282, metadata !362), !dbg !710
  call void @llvm.dbg.value(metadata i32* %blocksigs, i64 0, metadata !213, metadata !362), !dbg !709
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !213, metadata !362), !dbg !709
  store i32 2, i32* %blocksigs, align 4, !dbg !713, !tbaa !462
  call void @llvm.dbg.value(metadata i32* %blocksigs, i64 0, metadata !213, metadata !362), !dbg !709
  %263 = call i32 @sigprocmask(i32 1, i32* %blocksigs, i32* null) #7, !dbg !714
  %264 = icmp eq i32 %263, 0, !dbg !716
  br i1 %264, label %266, label %265, !dbg !717

; <label>:265                                     ; preds = %262
  call void @Panic(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 420) #7, !dbg !718
  br label %266, !dbg !718

; <label>:266                                     ; preds = %262, %265
  %267 = call i32 @remove(i8* %71) #7, !dbg !719
  %268 = icmp eq i32 %267, 0, !dbg !721
  br i1 %268, label %270, label %269, !dbg !722

; <label>:269                                     ; preds = %266
  call void @Panic(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 421) #7, !dbg !723
  br label %270, !dbg !723

; <label>:270                                     ; preds = %266, %269
  %271 = call i32 @rename(i8* %90, i8* %71) #7, !dbg !724
  %272 = icmp eq i32 %271, 0, !dbg !726
  br i1 %272, label %274, label %273, !dbg !727

; <label>:273                                     ; preds = %270
  call void @Panic(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 422) #7, !dbg !728
  br label %274, !dbg !728

; <label>:274                                     ; preds = %270, %273
  call void @llvm.dbg.value(metadata i32* %blocksigs, i64 0, metadata !213, metadata !362), !dbg !709
  %275 = call i32 @sigprocmask(i32 2, i32* %blocksigs, i32* null) #7, !dbg !729
  %276 = icmp eq i32 %275, 0, !dbg !731
  br i1 %276, label %278, label %277, !dbg !732

; <label>:277                                     ; preds = %274
  call void @Panic(i8* getelementptr inbounds ([70 x i8]* @.str15, i64 0, i64 0), i32 423) #7, !dbg !733
  br label %278, !dbg !733

; <label>:278                                     ; preds = %274, %277
  call void @free(i8* %90) #9, !dbg !734
  call void @llvm.dbg.value(metadata %struct.stopwatch_s* %stopwatch, i64 0, metadata !239, metadata !362), !dbg !367
  call void @StopwatchStop(%struct.stopwatch_s* %stopwatch) #7, !dbg !735
  %279 = bitcast float* %mu.0.lcssa to i8*, !dbg !736
  call void @free(i8* %279) #9, !dbg !737
  %280 = bitcast float* %lambda.0.lcssa to i8*, !dbg !738
  call void @free(i8* %280) #9, !dbg !739
  %281 = icmp eq %struct.__sFILE* %hfp.0, null, !dbg !740
  br i1 %281, label %284, label %282, !dbg !742

; <label>:282                                     ; preds = %278
  %283 = call i32 @fclose(%struct.__sFILE* %hfp.0) #7, !dbg !743
  br label %284, !dbg !743

; <label>:284                                     ; preds = %278, %282
  call void @SqdClean() #7, !dbg !744
  call void @llvm.lifetime.end(i64 64, i8* %2) #2, !dbg !745
  call void @llvm.lifetime.end(i64 64, i8* %1) #2, !dbg !745
  ret i32 0, !dbg !745
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @StopwatchStart(%struct.stopwatch_s*) #3

; Function Attrs: optsize
declare void @StopwatchZero(%struct.stopwatch_s*) #3

; Function Attrs: optsize
declare i64 @time(i64*) #3

; Function Attrs: optsize
declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare void @HMMERBanner(%struct.__sFILE*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) #5

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #5

; Function Attrs: optsize
declare i32 @FileExists(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #3

; Function Attrs: optsize
declare i32 @ExtremeValueFitHistogram(%struct.histogram_s*, i32, float) #3

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @PrintASCIIHistogram(%struct.__sFILE*, %struct.histogram_s*) #3

; Function Attrs: optsize
declare void @FreeHistogram(%struct.histogram_s*) #3

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #3

; Function Attrs: optsize
declare void @HMMFileRewind(%struct.hmmfile_s*) #3

; Function Attrs: optsize
declare void @Plan7ComlogAppend(%struct.plan7_s*, i32, i8**) #3

; Function Attrs: optsize
declare void @WriteBinHMM(%struct.__sFILE*, %struct.plan7_s*) #3

; Function Attrs: optsize
declare void @WriteAscHMM(%struct.__sFILE*, %struct.plan7_s*) #3

; Function Attrs: optsize
declare void @HMMFileClose(%struct.hmmfile_s*) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare void @Panic(i8*, i32) #3

; Function Attrs: optsize
declare i32 @sigprocmask(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture readonly) #5

; Function Attrs: nounwind optsize
declare i32 @rename(i8* nocapture readonly, i8* nocapture readonly) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

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
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!358, !359, !360}
!llvm.ident = !{!361}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !12, globals: !321, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !11}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !9, line: 120, baseType: !10)
!9 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13, !277, !283}
!13 = !DISubprogram(name: "main", scope: !1, file: !1, line: 144, type: !14, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !19)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !{!20, !21, !22, !23, !24, !209, !210, !211, !212, !213, !218, !219, !236, !237, !238, !239, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !13, file: !1, line: 144, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !13, file: !1, line: 144, type: !16)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmmfile", scope: !13, file: !1, line: 147, type: !17)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpfile", scope: !13, file: !1, line: 148, type: !17)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmmfp", scope: !13, file: !1, line: 149, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMMFILE", file: !27, line: 350, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "hmmfile_s", file: !27, line: 332, size: 448, align: 64, elements: !29)
!29 = !{!30, !90, !134, !204, !205, !206, !207, !208}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !28, file: !27, line: 333, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 153, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !33, line: 122, size: 1216, align: 64, elements: !35)
!35 = !{!36, !39, !40, !41, !43, !44, !49, !50, !51, !55, !59, !68, !74, !75, !78, !79, !83, !87, !88, !89}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !34, file: !33, line: 123, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !34, file: !33, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !34, file: !33, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !33, line: 126, baseType: !42, size: 16, align: 16, offset: 128)
!42 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !34, file: !33, line: 127, baseType: !42, size: 16, align: 16, offset: 144)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !34, file: !33, line: 128, baseType: !45, size: 128, align: 64, offset: 192)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !33, line: 88, size: 128, align: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !45, file: !33, line: 89, baseType: !37, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !45, file: !33, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !34, file: !33, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !34, file: !33, line: 132, baseType: !11, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !34, file: !33, line: 133, baseType: !52, size: 64, align: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!4, !11}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !34, file: !33, line: 134, baseType: !56, size: 64, align: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!4, !11, !17, !4}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !34, file: !33, line: 135, baseType: !60, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !11, !63, !4}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !33, line: 77, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !65, line: 71, baseType: !66)
!65 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 46, baseType: !67)
!67 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !34, file: !33, line: 136, baseType: !69, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!4, !11, !72, !4}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !34, file: !33, line: 139, baseType: !45, size: 128, align: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !34, file: !33, line: 140, baseType: !76, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !33, line: 94, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !34, file: !33, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !34, file: !33, line: 144, baseType: !80, size: 24, align: 8, offset: 928)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !34, file: !33, line: 145, baseType: !84, size: 8, align: 8, offset: 952)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !34, file: !33, line: 148, baseType: !45, size: 128, align: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !34, file: !33, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !33, line: 152, baseType: !63, size: 64, align: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !28, file: !27, line: 334, baseType: !91, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIFILE", file: !93, line: 76, baseType: !94)
!93 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/ssi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssifile_s", file: !93, line: 49, size: 1152, align: 64, elements: !95)
!95 = !{!96, !97, !101, !104, !105, !106, !107, !108, !109, !110, !111, !112, !124, !125, !126, !127, !128, !129, !131, !132, !133}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !94, file: !93, line: 50, baseType: !31, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !93, line: 51, baseType: !98, size: 32, align: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !99, line: 41, baseType: !100)
!99 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!100 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !94, file: !93, line: 52, baseType: !102, size: 16, align: 16, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !99, line: 40, baseType: !103)
!103 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nprimary", scope: !94, file: !93, line: 53, baseType: !98, size: 32, align: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nsecondary", scope: !94, file: !93, line: 54, baseType: !98, size: 32, align: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flen", scope: !94, file: !93, line: 55, baseType: !98, size: 32, align: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !94, file: !93, line: 56, baseType: !98, size: 32, align: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !94, file: !93, line: 57, baseType: !98, size: 32, align: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "frecsize", scope: !94, file: !93, line: 58, baseType: !98, size: 32, align: 32, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "precsize", scope: !94, file: !93, line: 59, baseType: !98, size: 32, align: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "srecsize", scope: !94, file: !93, line: 60, baseType: !98, size: 32, align: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "foffset", scope: !94, file: !93, line: 61, baseType: !113, size: 128, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIOFFSET", file: !93, line: 42, baseType: !114)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssioffset_s", file: !93, line: 35, size: 128, align: 64, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !114, file: !93, line: 36, baseType: !18, size: 8, align: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !114, file: !93, line: 40, baseType: !118, size: 64, align: 64, offset: 64)
!118 = !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !93, line: 37, size: 64, align: 64, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !118, file: !93, line: 38, baseType: !98, size: 32, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !118, file: !93, line: 39, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !99, line: 42, baseType: !123)
!123 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !94, file: !93, line: 62, baseType: !113, size: 128, align: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !94, file: !93, line: 63, baseType: !113, size: 128, align: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !94, file: !93, line: 65, baseType: !18, size: 8, align: 8, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !94, file: !93, line: 66, baseType: !18, size: 8, align: 8, offset: 776)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !94, file: !93, line: 70, baseType: !16, size: 64, align: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !94, file: !93, line: 71, baseType: !130, size: 64, align: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !94, file: !93, line: 72, baseType: !130, size: 64, align: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !94, file: !93, line: 73, baseType: !130, size: 64, align: 64, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !94, file: !93, line: 74, baseType: !130, size: 64, align: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !28, file: !27, line: 335, baseType: !135, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!4, !138, !139}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !27, line: 101, size: 3712, align: 64, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !169, !170, !171, !172, !177, !178, !179, !183, !184, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !27, line: 113, baseType: !17, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !141, file: !27, line: 114, baseType: !17, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !141, file: !27, line: 115, baseType: !17, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !141, file: !27, line: 116, baseType: !17, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !141, file: !27, line: 117, baseType: !17, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !141, file: !27, line: 118, baseType: !17, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !141, file: !27, line: 119, baseType: !17, size: 64, align: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !141, file: !27, line: 120, baseType: !4, size: 32, align: 32, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !141, file: !27, line: 121, baseType: !17, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !141, file: !27, line: 122, baseType: !153, size: 64, align: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !141, file: !27, line: 123, baseType: !4, size: 32, align: 32, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !141, file: !27, line: 134, baseType: !153, size: 64, align: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !141, file: !27, line: 135, baseType: !153, size: 64, align: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !141, file: !27, line: 136, baseType: !153, size: 64, align: 64, offset: 832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !141, file: !27, line: 144, baseType: !159, size: 32, align: 32, offset: 896)
!159 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !141, file: !27, line: 144, baseType: !159, size: 32, align: 32, offset: 928)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !141, file: !27, line: 145, baseType: !159, size: 32, align: 32, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !141, file: !27, line: 145, baseType: !159, size: 32, align: 32, offset: 992)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !141, file: !27, line: 146, baseType: !159, size: 32, align: 32, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !141, file: !27, line: 146, baseType: !159, size: 32, align: 32, offset: 1056)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !141, file: !27, line: 155, baseType: !4, size: 32, align: 32, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !141, file: !27, line: 156, baseType: !167, size: 64, align: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !141, file: !27, line: 157, baseType: !167, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !141, file: !27, line: 158, baseType: !167, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !141, file: !27, line: 159, baseType: !159, size: 32, align: 32, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !141, file: !27, line: 168, baseType: !173, size: 256, align: 32, offset: 1376)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, align: 32, elements: !174)
!174 = !{!175, !176}
!175 = !DISubrange(count: 4)
!176 = !DISubrange(count: 2)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !141, file: !27, line: 169, baseType: !168, size: 64, align: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !141, file: !27, line: 170, baseType: !168, size: 64, align: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !141, file: !27, line: 174, baseType: !180, size: 640, align: 32, offset: 1792)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 640, align: 32, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 20)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !141, file: !27, line: 175, baseType: !159, size: 32, align: 32, offset: 2432)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !141, file: !27, line: 197, baseType: !185, size: 64, align: 64, offset: 2496)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !141, file: !27, line: 198, baseType: !185, size: 64, align: 64, offset: 2560)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !141, file: !27, line: 199, baseType: !185, size: 64, align: 64, offset: 2624)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !141, file: !27, line: 200, baseType: !189, size: 256, align: 32, offset: 2688)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 32, elements: !174)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !141, file: !27, line: 201, baseType: !153, size: 64, align: 64, offset: 2944)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !141, file: !27, line: 202, baseType: !153, size: 64, align: 64, offset: 3008)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !141, file: !27, line: 203, baseType: !153, size: 64, align: 64, offset: 3072)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !141, file: !27, line: 203, baseType: !153, size: 64, align: 64, offset: 3136)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !141, file: !27, line: 203, baseType: !153, size: 64, align: 64, offset: 3200)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !141, file: !27, line: 203, baseType: !153, size: 64, align: 64, offset: 3264)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !141, file: !27, line: 203, baseType: !153, size: 64, align: 64, offset: 3328)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !141, file: !27, line: 214, baseType: !185, size: 64, align: 64, offset: 3392)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !141, file: !27, line: 215, baseType: !185, size: 64, align: 64, offset: 3456)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !141, file: !27, line: 216, baseType: !4, size: 32, align: 32, offset: 3520)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !141, file: !27, line: 217, baseType: !4, size: 32, align: 32, offset: 3552)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !141, file: !27, line: 222, baseType: !159, size: 32, align: 32, offset: 3584)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !141, file: !27, line: 223, baseType: !159, size: 32, align: 32, offset: 3616)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !27, line: 225, baseType: !4, size: 32, align: 32, offset: 3648)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "is_binary", scope: !28, file: !27, line: 336, baseType: !4, size: 32, align: 32, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "byteswap", scope: !28, file: !27, line: 337, baseType: !4, size: 32, align: 32, offset: 224)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !28, file: !27, line: 346, baseType: !4, size: 32, align: 32, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !28, file: !27, line: 347, baseType: !4, size: 32, align: 32, offset: 288)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !28, file: !27, line: 348, baseType: !113, size: 128, align: 64, offset: 320)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outfp", scope: !13, file: !1, line: 150, type: !31)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !13, file: !1, line: 151, type: !17)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmm", scope: !13, file: !1, line: 152, type: !140)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !13, file: !1, line: 153, type: !4)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocksigs", scope: !13, file: !1, line: 155, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !215, line: 30, baseType: !216)
!215 = !DIFile(filename: "/usr/include/sys/_types/_sigset_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_sigset_t", file: !65, line: 73, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 45, baseType: !100)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nhmm", scope: !13, file: !1, line: 157, type: !4)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hist", scope: !13, file: !1, line: 159, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "histogram_s", file: !27, line: 419, size: 512, align: 64, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !234, !235}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "histogram", scope: !221, file: !27, line: 420, baseType: !153, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !221, file: !27, line: 421, baseType: !4, size: 32, align: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !221, file: !27, line: 422, baseType: !4, size: 32, align: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "highscore", scope: !221, file: !27, line: 423, baseType: !4, size: 32, align: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "lowscore", scope: !221, file: !27, line: 424, baseType: !4, size: 32, align: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lumpsize", scope: !221, file: !27, line: 425, baseType: !4, size: 32, align: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !221, file: !27, line: 426, baseType: !4, size: 32, align: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !221, file: !27, line: 428, baseType: !168, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fit_type", scope: !221, file: !27, line: 429, baseType: !4, size: 32, align: 32, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !221, file: !27, line: 430, baseType: !233, size: 96, align: 32, offset: 352)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 96, align: 32, elements: !81)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "chisq", scope: !221, file: !27, line: 431, baseType: !159, size: 32, align: 32, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !221, file: !27, line: 432, baseType: !159, size: 32, align: 32, offset: 480)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !13, file: !1, line: 160, type: !159)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "histfile", scope: !13, file: !1, line: 161, type: !17)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hfp", scope: !13, file: !1, line: 162, type: !31)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stopwatch", scope: !13, file: !1, line: 164, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "Stopwatch_t", file: !241, line: 46, baseType: !242)
!241 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stopwatch.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "stopwatch_s", file: !241, line: 34, size: 512, align: 64, elements: !243)
!243 = !{!244, !245, !257, !259, !260}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "t0", scope: !242, file: !241, line: 35, baseType: !6, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu0", scope: !242, file: !241, line: 39, baseType: !246, size: 256, align: 64, offset: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !247, line: 82, size: 256, align: 64, elements: !248)
!247 = !DIFile(filename: "/usr/include/sys/times.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!248 = !{!249, !254, !255, !256}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !246, file: !247, line: 83, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !251, line: 30, baseType: !252)
!251 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !9, line: 117, baseType: !253)
!253 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !246, file: !247, line: 84, baseType: !250, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !246, file: !247, line: 85, baseType: !250, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !246, file: !247, line: 86, baseType: !250, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !242, file: !241, line: 42, baseType: !258, size: 64, align: 64, offset: 320)
!258 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !242, file: !241, line: 43, baseType: !258, size: 64, align: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !242, file: !241, line: 44, baseType: !258, size: 64, align: 64, offset: 448)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "extrawatch", scope: !13, file: !1, line: 165, type: !240)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mu", scope: !13, file: !1, line: 167, type: !168)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lambda", scope: !13, file: !1, line: 168, type: !168)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mu_lumpsize", scope: !13, file: !1, line: 169, type: !4)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsample", scope: !13, file: !1, line: 171, type: !4)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seed", scope: !13, file: !1, line: 172, type: !4)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixedlen", scope: !13, file: !1, line: 173, type: !4)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lenmean", scope: !13, file: !1, line: 174, type: !159)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lensd", scope: !13, file: !1, line: 175, type: !159)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "do_pvm", scope: !13, file: !1, line: 176, type: !4)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvm_lumpsize", scope: !13, file: !1, line: 177, type: !4)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvm_nslaves", scope: !13, file: !1, line: 178, type: !4)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optname", scope: !13, file: !1, line: 181, type: !17)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optarg", scope: !13, file: !1, line: 182, type: !17)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optind", scope: !13, file: !1, line: 183, type: !4)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_threads", scope: !13, file: !1, line: 185, type: !4)
!277 = !DISubprogram(name: "__sigbits", scope: !278, file: !278, line: 114, type: !279, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, variables: !281)
!278 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!279 = !DISubroutineType(types: !280)
!280 = !{!4, !4}
!281 = !{!282}
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !277, file: !278, line: 114, type: !4)
!283 = !DISubprogram(name: "main_loop_serial", scope: !1, file: !1, line: 473, type: !284, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, variables: !287)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !140, !4, !4, !159, !159, !4, !286, !168}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !313, !314, !315, !316, !317, !318, !319, !320}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !283, file: !1, line: 473, type: !140)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 2, scope: !283, file: !1, line: 473, type: !4)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsample", arg: 3, scope: !283, file: !1, line: 473, type: !4)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lenmean", arg: 4, scope: !283, file: !1, line: 474, type: !159)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lensd", arg: 5, scope: !283, file: !1, line: 474, type: !159)
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fixedlen", arg: 6, scope: !283, file: !1, line: 474, type: !4)
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_hist", arg: 7, scope: !283, file: !1, line: 475, type: !286)
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_max", arg: 8, scope: !283, file: !1, line: 475, type: !168)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hist", scope: !283, file: !1, line: 477, type: !220)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mx", scope: !283, file: !1, line: 478, type: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "dpmatrix_s", file: !27, line: 289, size: 640, align: 64, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "xmx", scope: !299, file: !27, line: 290, baseType: !185, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !299, file: !27, line: 291, baseType: !185, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "imx", scope: !299, file: !27, line: 292, baseType: !185, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dmx", scope: !299, file: !27, line: 293, baseType: !185, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "xmx_mem", scope: !299, file: !27, line: 299, baseType: !11, size: 64, align: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mmx_mem", scope: !299, file: !27, line: 299, baseType: !11, size: 64, align: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "imx_mem", scope: !299, file: !27, line: 299, baseType: !11, size: 64, align: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dmx_mem", scope: !299, file: !27, line: 299, baseType: !11, size: 64, align: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "maxN", scope: !299, file: !27, line: 308, baseType: !4, size: 32, align: 32, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "maxM", scope: !299, file: !27, line: 309, baseType: !4, size: 32, align: 32, offset: 544)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "padN", scope: !299, file: !27, line: 311, baseType: !4, size: 32, align: 32, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "padM", scope: !299, file: !27, line: 312, baseType: !4, size: 32, align: 32, offset: 608)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "randomseq", scope: !283, file: !1, line: 479, type: !180)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !283, file: !1, line: 480, type: !159)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !283, file: !1, line: 481, type: !159)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !283, file: !1, line: 482, type: !17)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsq", scope: !283, file: !1, line: 483, type: !17)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !283, file: !1, line: 484, type: !159)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqlen", scope: !283, file: !1, line: 485, type: !4)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !283, file: !1, line: 486, type: !4)
!321 = !{!322, !327, !328, !329, !330, !334, !337, !346, !350, !354}
!322 = !DIGlobalVariable(name: "Alphabet", scope: !0, file: !323, line: 19, type: !324, isLocal: false, isDefinition: true, variable: [25 x i8]* @Alphabet)
!323 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/globals.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 200, align: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 25)
!327 = !DIGlobalVariable(name: "Alphabet_type", scope: !0, file: !323, line: 20, type: !4, isLocal: false, isDefinition: true, variable: i32* @Alphabet_type)
!328 = !DIGlobalVariable(name: "Alphabet_size", scope: !0, file: !323, line: 21, type: !4, isLocal: false, isDefinition: true, variable: i32* @Alphabet_size)
!329 = !DIGlobalVariable(name: "Alphabet_iupac", scope: !0, file: !323, line: 22, type: !4, isLocal: false, isDefinition: true, variable: i32* @Alphabet_iupac)
!330 = !DIGlobalVariable(name: "Degenerate", scope: !0, file: !323, line: 23, type: !331, isLocal: false, isDefinition: true, variable: [24 x [20 x i8]]* @Degenerate)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3840, align: 8, elements: !332)
!332 = !{!333, !182}
!333 = !DISubrange(count: 24)
!334 = !DIGlobalVariable(name: "DegenCount", scope: !0, file: !323, line: 24, type: !335, isLocal: false, isDefinition: true, variable: [24 x i32]* @DegenCount)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 768, align: 32, elements: !336)
!336 = !{!333}
!337 = !DIGlobalVariable(name: "OPTIONS", scope: !0, file: !1, line: 67, type: !338, isLocal: true, isDefinition: true, variable: [9 x %struct.opt_s]* @OPTIONS)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 1152, align: 64, elements: !344)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "opt_s", file: !99, line: 330, size: 128, align: 64, elements: !340)
!340 = !{!341, !342, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !99, line: 331, baseType: !17, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !339, file: !99, line: 332, baseType: !4, size: 32, align: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "argtype", scope: !339, file: !99, line: 333, baseType: !4, size: 32, align: 32, offset: 96)
!344 = !{!345}
!345 = !DISubrange(count: 9)
!346 = !DIGlobalVariable(name: "usage", scope: !0, file: !1, line: 50, type: !347, isLocal: true, isDefinition: true, variable: [130 x i8]* @usage)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1040, align: 8, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 130)
!350 = !DIGlobalVariable(name: "banner", scope: !0, file: !1, line: 48, type: !351, isLocal: true, isDefinition: true, variable: [48 x i8]* @banner)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, align: 8, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 48)
!354 = !DIGlobalVariable(name: "experts", scope: !0, file: !1, line: 56, type: !355, isLocal: true, isDefinition: true, variable: [456 x i8]* @experts)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3648, align: 8, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 456)
!358 = !{i32 2, !"Dwarf Version", i32 2}
!359 = !{i32 2, !"Debug Info Version", i32 700000003}
!360 = !{i32 1, !"PIC Level", i32 2}
!361 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!362 = !DIExpression()
!363 = !DILocation(line: 144, column: 10, scope: !13)
!364 = !DILocation(line: 144, column: 23, scope: !13)
!365 = !DILocation(line: 164, column: 3, scope: !13)
!366 = !DILocation(line: 165, column: 3, scope: !13)
!367 = !DILocation(line: 164, column: 15, scope: !13)
!368 = !DILocation(line: 192, column: 3, scope: !13)
!369 = !DILocation(line: 165, column: 15, scope: !13)
!370 = !DILocation(line: 193, column: 3, scope: !13)
!371 = !DILocation(line: 171, column: 11, scope: !13)
!372 = !DILocation(line: 173, column: 11, scope: !13)
!373 = !DILocation(line: 174, column: 11, scope: !13)
!374 = !DILocation(line: 175, column: 11, scope: !13)
!375 = !DILocation(line: 200, column: 24, scope: !13)
!376 = !DILocation(line: 200, column: 18, scope: !13)
!377 = !DILocation(line: 172, column: 11, scope: !13)
!378 = !DILocation(line: 161, column: 11, scope: !13)
!379 = !DILocation(line: 176, column: 11, scope: !13)
!380 = !DILocation(line: 177, column: 11, scope: !13)
!381 = !DILocation(line: 169, column: 11, scope: !13)
!382 = !DILocation(line: 185, column: 9, scope: !13)
!383 = !DILocation(line: 479, column: 10, scope: !283, inlinedAt: !384)
!384 = distinct !DILocation(line: 317, column: 2, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 316, column: 11)
!386 = distinct !DILexicalBlock(scope: !13, file: !1, line: 312, column: 5)
!387 = !DILocation(line: 181, column: 9, scope: !13)
!388 = !DILocation(line: 182, column: 9, scope: !13)
!389 = !DILocation(line: 183, column: 9, scope: !13)
!390 = !DILocation(line: 211, column: 10, scope: !13)
!391 = !DILocation(line: 211, column: 3, scope: !13)
!392 = !DILocation(line: 214, column: 23, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 214, column: 16)
!394 = distinct !DILexicalBlock(scope: !13, file: !1, line: 213, column: 5)
!395 = !{!396, !396, i64 0}
!396 = !{!"any pointer", !397, i64 0}
!397 = !{!"omnipotent char", !398, i64 0}
!398 = !{!"Simple C/C++ TBAA"}
!399 = !DILocation(line: 214, column: 16, scope: !393)
!400 = !DILocation(line: 214, column: 46, scope: !393)
!401 = !DILocation(line: 214, column: 16, scope: !394)
!402 = !DILocation(line: 214, column: 72, scope: !393)
!403 = !DILocation(line: 214, column: 67, scope: !393)
!404 = !DILocation(line: 214, column: 52, scope: !393)
!405 = !DILocation(line: 215, column: 16, scope: !406)
!406 = distinct !DILexicalBlock(scope: !393, file: !1, line: 215, column: 16)
!407 = !DILocation(line: 215, column: 46, scope: !406)
!408 = !DILocation(line: 215, column: 16, scope: !393)
!409 = !DILocation(line: 215, column: 68, scope: !406)
!410 = !DILocation(line: 215, column: 63, scope: !406)
!411 = !DILocation(line: 215, column: 52, scope: !406)
!412 = !DILocation(line: 216, column: 16, scope: !413)
!413 = distinct !DILexicalBlock(scope: !406, file: !1, line: 216, column: 16)
!414 = !DILocation(line: 216, column: 46, scope: !413)
!415 = !DILocation(line: 216, column: 16, scope: !406)
!416 = !DILocation(line: 216, column: 63, scope: !413)
!417 = !DILocation(line: 216, column: 52, scope: !413)
!418 = !DILocation(line: 217, column: 16, scope: !419)
!419 = distinct !DILexicalBlock(scope: !413, file: !1, line: 217, column: 16)
!420 = !DILocation(line: 217, column: 46, scope: !419)
!421 = !DILocation(line: 217, column: 16, scope: !413)
!422 = !DILocation(line: 217, column: 68, scope: !419)
!423 = !DILocation(line: 217, column: 63, scope: !419)
!424 = !DILocation(line: 217, column: 52, scope: !419)
!425 = !DILocation(line: 218, column: 16, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !1, line: 218, column: 16)
!427 = !DILocation(line: 218, column: 46, scope: !426)
!428 = !DILocation(line: 218, column: 16, scope: !419)
!429 = !DILocation(line: 218, column: 68, scope: !426)
!430 = !DILocation(line: 218, column: 63, scope: !426)
!431 = !DILocation(line: 218, column: 52, scope: !426)
!432 = !DILocation(line: 219, column: 16, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !1, line: 219, column: 16)
!434 = !DILocation(line: 219, column: 46, scope: !433)
!435 = !DILocation(line: 219, column: 16, scope: !426)
!436 = !DILocation(line: 220, column: 16, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 220, column: 16)
!438 = !DILocation(line: 220, column: 46, scope: !437)
!439 = !DILocation(line: 220, column: 16, scope: !433)
!440 = !DILocation(line: 220, column: 68, scope: !437)
!441 = !DILocation(line: 220, column: 63, scope: !437)
!442 = !DILocation(line: 220, column: 52, scope: !437)
!443 = !DILocation(line: 221, column: 16, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !1, line: 221, column: 16)
!445 = !DILocation(line: 221, column: 46, scope: !444)
!446 = !DILocation(line: 221, column: 16, scope: !437)
!447 = !DILocation(line: 221, column: 68, scope: !444)
!448 = !DILocation(line: 221, column: 63, scope: !444)
!449 = !DILocation(line: 221, column: 52, scope: !444)
!450 = !DILocation(line: 222, column: 16, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !1, line: 222, column: 16)
!452 = !DILocation(line: 222, column: 38, scope: !451)
!453 = !DILocation(line: 222, column: 16, scope: !444)
!454 = !DILocation(line: 224, column: 16, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !1, line: 223, column: 2)
!456 = !DILocation(line: 224, column: 4, scope: !455)
!457 = !DILocation(line: 225, column: 4, scope: !455)
!458 = !DILocation(line: 226, column: 4, scope: !455)
!459 = !DILocation(line: 227, column: 4, scope: !455)
!460 = !DILocation(line: 231, column: 14, scope: !461)
!461 = distinct !DILexicalBlock(scope: !13, file: !1, line: 231, column: 7)
!462 = !{!463, !463, i64 0}
!463 = !{!"int", !397, i64 0}
!464 = !DILocation(line: 231, column: 12, scope: !461)
!465 = !DILocation(line: 231, column: 21, scope: !461)
!466 = !DILocation(line: 231, column: 7, scope: !13)
!467 = !DILocation(line: 231, column: 27, scope: !461)
!468 = !DILocation(line: 232, column: 24, scope: !13)
!469 = !DILocation(line: 232, column: 13, scope: !13)
!470 = !DILocation(line: 147, column: 12, scope: !13)
!471 = !DILocation(line: 235, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !13, file: !1, line: 235, column: 7)
!473 = !DILocation(line: 235, column: 7, scope: !13)
!474 = !DILocation(line: 235, column: 15, scope: !472)
!475 = !DILocation(line: 238, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !13, file: !1, line: 238, column: 7)
!477 = !DILocation(line: 238, column: 7, scope: !13)
!478 = !DILocation(line: 238, column: 20, scope: !476)
!479 = !DILocation(line: 246, column: 16, scope: !480)
!480 = distinct !DILexicalBlock(scope: !13, file: !1, line: 246, column: 7)
!481 = !DILocation(line: 149, column: 12, scope: !13)
!482 = !DILocation(line: 246, column: 44, scope: !480)
!483 = !DILocation(line: 246, column: 7, scope: !13)
!484 = !DILocation(line: 247, column: 5, scope: !480)
!485 = !DILocation(line: 162, column: 11, scope: !13)
!486 = !DILocation(line: 251, column: 16, scope: !487)
!487 = distinct !DILexicalBlock(scope: !13, file: !1, line: 251, column: 7)
!488 = !DILocation(line: 251, column: 7, scope: !13)
!489 = !DILocation(line: 252, column: 16, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 252, column: 9)
!491 = distinct !DILexicalBlock(scope: !487, file: !1, line: 251, column: 25)
!492 = !DILocation(line: 252, column: 38, scope: !490)
!493 = !DILocation(line: 252, column: 9, scope: !491)
!494 = !DILocation(line: 253, column: 7, scope: !490)
!495 = !DILocation(line: 265, column: 13, scope: !13)
!496 = !DILocation(line: 148, column: 12, scope: !13)
!497 = !DILocation(line: 266, column: 3, scope: !13)
!498 = !DILocation(line: 267, column: 3, scope: !13)
!499 = !DILocation(line: 268, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !13, file: !1, line: 268, column: 7)
!501 = !DILocation(line: 268, column: 7, scope: !13)
!502 = !DILocation(line: 272, column: 5, scope: !500)
!503 = !DILocation(line: 274, column: 14, scope: !504)
!504 = distinct !DILexicalBlock(scope: !13, file: !1, line: 274, column: 7)
!505 = !{!506, !463, i64 24}
!506 = !{!"hmmfile_s", !396, i64 0, !396, i64 8, !396, i64 16, !463, i64 24, !463, i64 28, !463, i64 32, !463, i64 36, !507, i64 40}
!507 = !{!"ssioffset_s", !397, i64 0, !397, i64 8}
!508 = !DILocation(line: 274, column: 7, scope: !504)
!509 = !DILocation(line: 281, column: 15, scope: !13)
!510 = !DILocation(line: 281, column: 3, scope: !13)
!511 = !DILocation(line: 282, column: 3, scope: !13)
!512 = !DILocation(line: 283, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !13, file: !1, line: 283, column: 7)
!514 = !DILocation(line: 283, column: 7, scope: !13)
!515 = !DILocation(line: 284, column: 5, scope: !513)
!516 = !DILocation(line: 286, column: 48, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 285, column: 8)
!518 = !DILocation(line: 286, column: 5, scope: !517)
!519 = !DILocation(line: 287, column: 48, scope: !517)
!520 = !DILocation(line: 287, column: 5, scope: !517)
!521 = !DILocation(line: 289, column: 3, scope: !13)
!522 = !DILocation(line: 290, column: 3, scope: !13)
!523 = !DILocation(line: 292, column: 3, scope: !13)
!524 = !DILocation(line: 291, column: 3, scope: !13)
!525 = !DILocation(line: 293, column: 7, scope: !13)
!526 = !DILocation(line: 294, column: 5, scope: !527)
!527 = distinct !DILexicalBlock(scope: !13, file: !1, line: 293, column: 7)
!528 = !DILocation(line: 295, column: 24, scope: !529)
!529 = distinct !DILexicalBlock(scope: !527, file: !1, line: 295, column: 12)
!530 = !DILocation(line: 295, column: 12, scope: !527)
!531 = !DILocation(line: 296, column: 5, scope: !529)
!532 = !DILocation(line: 297, column: 3, scope: !13)
!533 = !DILocation(line: 157, column: 11, scope: !13)
!534 = !DILocation(line: 308, column: 12, scope: !13)
!535 = !DILocation(line: 167, column: 11, scope: !13)
!536 = !DILocation(line: 309, column: 12, scope: !13)
!537 = !DILocation(line: 168, column: 11, scope: !13)
!538 = !DILocation(line: 152, column: 19, scope: !13)
!539 = !DILocation(line: 311, column: 10, scope: !13)
!540 = !DILocation(line: 311, column: 3, scope: !13)
!541 = !DILocation(line: 316, column: 20, scope: !385)
!542 = !DILocation(line: 473, column: 34, scope: !283, inlinedAt: !384)
!543 = !DILocation(line: 479, column: 3, scope: !283, inlinedAt: !384)
!544 = !DILocation(line: 494, column: 22, scope: !283, inlinedAt: !384)
!545 = !DILocation(line: 499, column: 21, scope: !546, inlinedAt: !384)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 499, column: 3)
!547 = distinct !DILexicalBlock(scope: !283, file: !1, line: 499, column: 3)
!548 = !DILocation(line: 503, column: 41, scope: !549, inlinedAt: !384)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 502, column: 11)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 500, column: 5)
!551 = !DILocation(line: 503, column: 50, scope: !549, inlinedAt: !384)
!552 = !DILocation(line: 499, column: 3, scope: !547, inlinedAt: !384)
!553 = !DILocation(line: 360, column: 15, scope: !554)
!554 = distinct !DILexicalBlock(scope: !386, file: !1, line: 360, column: 11)
!555 = !DILocation(line: 313, column: 11, scope: !556)
!556 = distinct !DILexicalBlock(scope: !386, file: !1, line: 313, column: 11)
!557 = !DILocation(line: 313, column: 15, scope: !556)
!558 = !DILocation(line: 313, column: 11, scope: !386)
!559 = !DILocation(line: 314, column: 2, scope: !556)
!560 = !DILocation(line: 317, column: 19, scope: !385)
!561 = !DILocation(line: 473, column: 43, scope: !283, inlinedAt: !384)
!562 = !DILocation(line: 473, column: 53, scope: !283, inlinedAt: !384)
!563 = !DILocation(line: 474, column: 10, scope: !283, inlinedAt: !384)
!564 = !DILocation(line: 474, column: 25, scope: !283, inlinedAt: !384)
!565 = !DILocation(line: 474, column: 36, scope: !283, inlinedAt: !384)
!566 = !DILocation(line: 492, column: 3, scope: !283, inlinedAt: !384)
!567 = !DILocation(line: 493, column: 3, scope: !283, inlinedAt: !384)
!568 = !DILocation(line: 480, column: 10, scope: !283, inlinedAt: !384)
!569 = !DILocation(line: 494, column: 3, scope: !283, inlinedAt: !384)
!570 = !DILocation(line: 495, column: 10, scope: !283, inlinedAt: !384)
!571 = !DILocation(line: 477, column: 23, scope: !283, inlinedAt: !384)
!572 = !DILocation(line: 496, column: 34, scope: !283, inlinedAt: !384)
!573 = !{!574, !463, i64 136}
!574 = !{!"plan7_s", !396, i64 0, !396, i64 8, !396, i64 16, !396, i64 24, !396, i64 32, !396, i64 40, !396, i64 48, !463, i64 56, !396, i64 64, !396, i64 72, !463, i64 80, !396, i64 88, !396, i64 96, !396, i64 104, !575, i64 112, !575, i64 116, !575, i64 120, !575, i64 124, !575, i64 128, !575, i64 132, !463, i64 136, !396, i64 144, !396, i64 152, !396, i64 160, !575, i64 168, !397, i64 172, !396, i64 208, !396, i64 216, !397, i64 224, !575, i64 304, !396, i64 312, !396, i64 320, !396, i64 328, !397, i64 336, !396, i64 368, !396, i64 376, !396, i64 384, !396, i64 392, !396, i64 400, !396, i64 408, !396, i64 416, !396, i64 424, !396, i64 432, !463, i64 440, !463, i64 444, !575, i64 448, !575, i64 452, !463, i64 456}
!575 = !{!"float", !397, i64 0}
!576 = !DILocation(line: 496, column: 8, scope: !283, inlinedAt: !384)
!577 = !DILocation(line: 478, column: 23, scope: !283, inlinedAt: !384)
!578 = !DILocation(line: 481, column: 10, scope: !283, inlinedAt: !384)
!579 = !DILocation(line: 486, column: 10, scope: !283, inlinedAt: !384)
!580 = !DILocation(line: 317, column: 2, scope: !385)
!581 = !DILocation(line: 502, column: 11, scope: !550, inlinedAt: !384)
!582 = !DILocation(line: 503, column: 29, scope: !549, inlinedAt: !384)
!583 = !DILocation(line: 503, column: 23, scope: !549, inlinedAt: !384)
!584 = !DILocation(line: 485, column: 10, scope: !283, inlinedAt: !384)
!585 = !DILocation(line: 503, column: 71, scope: !549, inlinedAt: !384)
!586 = !DILocation(line: 503, column: 15, scope: !549, inlinedAt: !384)
!587 = !DILocation(line: 505, column: 49, scope: !550, inlinedAt: !384)
!588 = !DILocation(line: 505, column: 13, scope: !550, inlinedAt: !384)
!589 = !DILocation(line: 482, column: 10, scope: !283, inlinedAt: !384)
!590 = !DILocation(line: 506, column: 13, scope: !550, inlinedAt: !384)
!591 = !DILocation(line: 483, column: 10, scope: !283, inlinedAt: !384)
!592 = !DILocation(line: 508, column: 37, scope: !593, inlinedAt: !384)
!593 = distinct !DILexicalBlock(scope: !550, file: !1, line: 508, column: 11)
!594 = !DILocation(line: 508, column: 11, scope: !593, inlinedAt: !384)
!595 = !DILocation(line: 508, column: 40, scope: !593, inlinedAt: !384)
!596 = !DILocation(line: 508, column: 11, scope: !550, inlinedAt: !384)
!597 = !DILocation(line: 509, column: 10, scope: !593, inlinedAt: !384)
!598 = !DILocation(line: 484, column: 10, scope: !283, inlinedAt: !384)
!599 = !DILocation(line: 509, column: 2, scope: !593, inlinedAt: !384)
!600 = !DILocation(line: 511, column: 10, scope: !593, inlinedAt: !384)
!601 = !DILocation(line: 513, column: 7, scope: !550, inlinedAt: !384)
!602 = !DILocation(line: 514, column: 17, scope: !603, inlinedAt: !384)
!603 = distinct !DILexicalBlock(scope: !550, file: !1, line: 514, column: 11)
!604 = !DILocation(line: 514, column: 11, scope: !550, inlinedAt: !384)
!605 = !DILocation(line: 516, column: 7, scope: !550, inlinedAt: !384)
!606 = !DILocation(line: 517, column: 7, scope: !550, inlinedAt: !384)
!607 = !DILocation(line: 499, column: 35, scope: !546, inlinedAt: !384)
!608 = !DILocation(line: 520, column: 3, scope: !283, inlinedAt: !384)
!609 = !DILocation(line: 475, column: 25, scope: !283, inlinedAt: !384)
!610 = !DILocation(line: 159, column: 23, scope: !13)
!611 = !DILocation(line: 475, column: 42, scope: !283, inlinedAt: !384)
!612 = !DILocation(line: 160, column: 11, scope: !13)
!613 = !DILocation(line: 524, column: 1, scope: !283, inlinedAt: !384)
!614 = !DILocation(line: 333, column: 2, scope: !385)
!615 = !DILocation(line: 341, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !386, file: !1, line: 341, column: 11)
!617 = !DILocation(line: 341, column: 11, scope: !386)
!618 = !DILocation(line: 342, column: 2, scope: !616)
!619 = !DILocation(line: 344, column: 22, scope: !386)
!620 = !{!575, !575, i64 0}
!621 = !DILocation(line: 344, column: 7, scope: !386)
!622 = !DILocation(line: 344, column: 20, scope: !386)
!623 = !DILocation(line: 345, column: 22, scope: !386)
!624 = !DILocation(line: 345, column: 7, scope: !386)
!625 = !DILocation(line: 345, column: 20, scope: !386)
!626 = !DILocation(line: 347, column: 16, scope: !627)
!627 = distinct !DILexicalBlock(scope: !386, file: !1, line: 347, column: 11)
!628 = !DILocation(line: 347, column: 22, scope: !627)
!629 = !DILocation(line: 347, column: 11, scope: !386)
!630 = !DILocation(line: 348, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !1, line: 347, column: 28)
!632 = !DILocation(line: 349, column: 11, scope: !631)
!633 = !DILocation(line: 350, column: 7, scope: !631)
!634 = !DILocation(line: 354, column: 33, scope: !386)
!635 = !DILocation(line: 354, column: 38, scope: !386)
!636 = !{!574, !396, i64 0}
!637 = !DILocation(line: 354, column: 7, scope: !386)
!638 = !DILocation(line: 355, column: 33, scope: !386)
!639 = !DILocation(line: 355, column: 7, scope: !386)
!640 = !DILocation(line: 356, column: 33, scope: !386)
!641 = !DILocation(line: 356, column: 7, scope: !386)
!642 = !DILocation(line: 357, column: 33, scope: !386)
!643 = !DILocation(line: 357, column: 7, scope: !386)
!644 = !DILocation(line: 358, column: 7, scope: !386)
!645 = !DILocation(line: 360, column: 11, scope: !386)
!646 = !DILocation(line: 362, column: 30, scope: !647)
!647 = distinct !DILexicalBlock(scope: !554, file: !1, line: 361, column: 2)
!648 = !DILocation(line: 362, column: 35, scope: !647)
!649 = !DILocation(line: 362, column: 4, scope: !647)
!650 = !DILocation(line: 363, column: 4, scope: !647)
!651 = !DILocation(line: 364, column: 4, scope: !647)
!652 = !DILocation(line: 365, column: 2, scope: !647)
!653 = !DILocation(line: 367, column: 7, scope: !386)
!654 = !DILocation(line: 368, column: 17, scope: !386)
!655 = !DILocation(line: 368, column: 7, scope: !386)
!656 = !DILocation(line: 377, column: 3, scope: !13)
!657 = !DILocation(line: 378, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !13, file: !1, line: 378, column: 7)
!659 = !DILocation(line: 378, column: 7, scope: !13)
!660 = !DILocation(line: 379, column: 5, scope: !658)
!661 = !DILocation(line: 380, column: 16, scope: !662)
!662 = distinct !DILexicalBlock(scope: !13, file: !1, line: 380, column: 7)
!663 = !DILocation(line: 150, column: 12, scope: !13)
!664 = !DILocation(line: 380, column: 38, scope: !662)
!665 = !DILocation(line: 380, column: 7, scope: !13)
!666 = !DILocation(line: 381, column: 5, scope: !662)
!667 = !DILocation(line: 383, column: 21, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 383, column: 3)
!669 = distinct !DILexicalBlock(scope: !13, file: !1, line: 383, column: 3)
!670 = !DILocation(line: 383, column: 3, scope: !669)
!671 = !DILocation(line: 387, column: 12, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 387, column: 11)
!673 = distinct !DILexicalBlock(scope: !668, file: !1, line: 384, column: 5)
!674 = !DILocation(line: 387, column: 11, scope: !673)
!675 = !DILocation(line: 388, column: 2, scope: !672)
!676 = !DILocation(line: 389, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !1, line: 389, column: 11)
!678 = !DILocation(line: 389, column: 15, scope: !677)
!679 = !DILocation(line: 389, column: 11, scope: !673)
!680 = !DILocation(line: 390, column: 2, scope: !677)
!681 = !DILocation(line: 394, column: 7, scope: !673)
!682 = !DILocation(line: 394, column: 21, scope: !673)
!683 = !DILocation(line: 394, column: 12, scope: !673)
!684 = !DILocation(line: 394, column: 19, scope: !673)
!685 = !{!574, !575, i64 448}
!686 = !DILocation(line: 395, column: 21, scope: !673)
!687 = !DILocation(line: 395, column: 12, scope: !673)
!688 = !DILocation(line: 395, column: 19, scope: !673)
!689 = !{!574, !575, i64 452}
!690 = !DILocation(line: 396, column: 12, scope: !673)
!691 = !DILocation(line: 396, column: 18, scope: !673)
!692 = !{!574, !463, i64 456}
!693 = !DILocation(line: 397, column: 7, scope: !673)
!694 = !DILocation(line: 401, column: 18, scope: !695)
!695 = distinct !DILexicalBlock(scope: !673, file: !1, line: 401, column: 11)
!696 = !DILocation(line: 401, column: 11, scope: !695)
!697 = !DILocation(line: 401, column: 48, scope: !695)
!698 = !DILocation(line: 401, column: 11, scope: !673)
!699 = !DILocation(line: 401, column: 29, scope: !695)
!700 = !DILocation(line: 402, column: 29, scope: !695)
!701 = !DILocation(line: 404, column: 17, scope: !673)
!702 = !DILocation(line: 404, column: 7, scope: !673)
!703 = !DILocation(line: 414, column: 3, scope: !13)
!704 = !DILocation(line: 415, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !13, file: !1, line: 415, column: 7)
!706 = !DILocation(line: 415, column: 23, scope: !705)
!707 = !DILocation(line: 415, column: 7, scope: !13)
!708 = !DILocation(line: 415, column: 29, scope: !705)
!709 = !DILocation(line: 155, column: 12, scope: !13)
!710 = !DILocation(line: 114, column: 15, scope: !277, inlinedAt: !711)
!711 = distinct !DILocation(line: 419, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !13, file: !1, line: 419, column: 7)
!713 = !DILocation(line: 419, column: 7, scope: !712)
!714 = !DILocation(line: 420, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !13, file: !1, line: 420, column: 7)
!716 = !DILocation(line: 420, column: 48, scope: !715)
!717 = !DILocation(line: 420, column: 7, scope: !13)
!718 = !DILocation(line: 420, column: 56, scope: !715)
!719 = !DILocation(line: 421, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !13, file: !1, line: 421, column: 7)
!721 = !DILocation(line: 421, column: 23, scope: !720)
!722 = !DILocation(line: 421, column: 7, scope: !13)
!723 = !DILocation(line: 421, column: 56, scope: !720)
!724 = !DILocation(line: 422, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !13, file: !1, line: 422, column: 7)
!726 = !DILocation(line: 422, column: 32, scope: !725)
!727 = !DILocation(line: 422, column: 7, scope: !13)
!728 = !DILocation(line: 422, column: 56, scope: !725)
!729 = !DILocation(line: 423, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !13, file: !1, line: 423, column: 7)
!731 = !DILocation(line: 423, column: 50, scope: !730)
!732 = !DILocation(line: 423, column: 7, scope: !13)
!733 = !DILocation(line: 423, column: 56, scope: !730)
!734 = !DILocation(line: 425, column: 3, scope: !13)
!735 = !DILocation(line: 432, column: 3, scope: !13)
!736 = !DILocation(line: 446, column: 8, scope: !13)
!737 = !DILocation(line: 446, column: 3, scope: !13)
!738 = !DILocation(line: 447, column: 8, scope: !13)
!739 = !DILocation(line: 447, column: 3, scope: !13)
!740 = !DILocation(line: 448, column: 11, scope: !741)
!741 = distinct !DILexicalBlock(scope: !13, file: !1, line: 448, column: 7)
!742 = !DILocation(line: 448, column: 7, scope: !13)
!743 = !DILocation(line: 448, column: 20, scope: !741)
!744 = !DILocation(line: 449, column: 3, scope: !13)
!745 = !DILocation(line: 451, column: 1, scope: !13)
