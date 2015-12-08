; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmcalibrate.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
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
@.str17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str18 = private unnamed_addr constant [30 x i8] c"HMM file:                 %s\0A\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"Length fixed to:          %d\0A\00", align 1
@.str20 = private unnamed_addr constant [32 x i8] c"Length distribution mean: %.0f\0A\00", align 1
@.str21 = private unnamed_addr constant [32 x i8] c"Length distribution s.d.: %.0f\0A\00", align 1
@.str22 = private unnamed_addr constant [30 x i8] c"Number of samples:        %d\0A\00", align 1
@.str23 = private unnamed_addr constant [30 x i8] c"random seed:              %d\0A\00", align 1
@.str24 = private unnamed_addr constant [30 x i8] c"histogram(s) saved to:    %s\0A\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"[not saved]\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"POSIX threads:            %d\0A\00", align 1
@.str29 = private unnamed_addr constant [61 x i8] c"HMM file may be corrupt or in incorrect format; parse failed\00", align 1
@.str30 = private unnamed_addr constant [47 x i8] c"wait. that can't happen. I didn't do anything.\00", align 1
@.str31 = private unnamed_addr constant [41 x i8] c"fit failed; --num may be set too small?\0A\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"HMM    : %s\0A\00", align 1
@.str33 = private unnamed_addr constant [15 x i8] c"mu     : %12f\0A\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"lambda : %12f\0A\00", align 1
@.str35 = private unnamed_addr constant [15 x i8] c"max    : %12f\0A\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"HMM: %s\0A\00", align 1
@.str38 = private unnamed_addr constant [49 x i8] c"Ouch. Temporary file %s appeared during the run.\00", align 1
@.str39 = private unnamed_addr constant [56 x i8] c"Ouch. Temporary file %s couldn't be opened for writing.\00", align 1
@.str40 = private unnamed_addr constant [36 x i8] c"Ran out of HMMs too early in pass 2\00", align 1
@.str41 = private unnamed_addr constant [50 x i8] c"HMM file %s was corrupted? Parse failed in pass 2\00", align 1
@Alphabet = external global [25 x i8]
@Alphabet_size = external global i32
@str = private unnamed_addr constant [65 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00"
@str42 = private unnamed_addr constant [3 x i8] c"//\00"
@str43 = private unnamed_addr constant [33 x i8] c"PVM:                      ACTIVE\00"

; Function Attrs: nounwind optsize uwtable
define i32 @hmmcalibrate(i32 %argc, i8** %argv) #0 {
entry:
  %randomseq.i = alloca [20 x float], align 16
  %p1.i = alloca float, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  %call = call i64 @time(i64* null) #6
  %conv = trunc i64 %call to i32
  %call1325 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #6
  %tobool326 = icmp eq i32 %call1325, 0
  br i1 %tobool326, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %num_threads.0334 = phi i32 [ %num_threads.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_pvm.0333 = phi i32 [ %do_pvm.0.be, %while.cond.backedge ], [ 0, %entry ]
  %lensd.0332 = phi float [ %lensd.0.be, %while.cond.backedge ], [ 2.000000e+02, %entry ]
  %lenmean.0331 = phi float [ %lenmean.0.be, %while.cond.backedge ], [ 3.250000e+02, %entry ]
  %fixedlen.0330 = phi i32 [ %fixedlen.0.be, %while.cond.backedge ], [ 0, %entry ]
  %seed.0329 = phi i32 [ %seed.0.be, %while.cond.backedge ], [ %conv, %entry ]
  %nsample.0328 = phi i32 [ %nsample.0.be, %while.cond.backedge ], [ 5000, %entry ]
  %histfile.0327 = phi i8* [ %histfile.0.be, %while.cond.backedge ], [ null, %entry ]
  %0 = load i8** %optname, align 8, !tbaa !0
  %call2 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load i8** %optarg, align 8, !tbaa !0
  %call4 = call i32 @atoi(i8* %1) #7
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call5 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %2 = load i8** %optarg, align 8, !tbaa !0
  %call9 = call i32 @atoi(i8* %2) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then8, %if.then19, %if.then44, %if.else46, %if.then37, %if.then26, %if.then14, %if.then, %if.else28
  %histfile.0.be = phi i8* [ %histfile.0327, %if.then ], [ %histfile.0327, %if.then8 ], [ %3, %if.then14 ], [ %histfile.0327, %if.then19 ], [ %histfile.0327, %if.then26 ], [ %histfile.0327, %if.then37 ], [ %histfile.0327, %if.then44 ], [ %histfile.0327, %if.else46 ], [ %histfile.0327, %if.else28 ]
  %nsample.0.be = phi i32 [ %nsample.0328, %if.then ], [ %nsample.0328, %if.then8 ], [ %nsample.0328, %if.then14 ], [ %nsample.0328, %if.then19 ], [ %call27, %if.then26 ], [ %nsample.0328, %if.then37 ], [ %nsample.0328, %if.then44 ], [ %nsample.0328, %if.else46 ], [ %nsample.0328, %if.else28 ]
  %seed.0.be = phi i32 [ %seed.0329, %if.then ], [ %seed.0329, %if.then8 ], [ %seed.0329, %if.then14 ], [ %seed.0329, %if.then19 ], [ %seed.0329, %if.then26 ], [ %seed.0329, %if.then37 ], [ %call45, %if.then44 ], [ %seed.0329, %if.else46 ], [ %seed.0329, %if.else28 ]
  %fixedlen.0.be = phi i32 [ %fixedlen.0330, %if.then ], [ %call9, %if.then8 ], [ %fixedlen.0330, %if.then14 ], [ %fixedlen.0330, %if.then19 ], [ %fixedlen.0330, %if.then26 ], [ %fixedlen.0330, %if.then37 ], [ %fixedlen.0330, %if.then44 ], [ %fixedlen.0330, %if.else46 ], [ %fixedlen.0330, %if.else28 ]
  %lenmean.0.be = phi float [ %lenmean.0331, %if.then ], [ %lenmean.0331, %if.then8 ], [ %lenmean.0331, %if.then14 ], [ %conv21, %if.then19 ], [ %lenmean.0331, %if.then26 ], [ %lenmean.0331, %if.then37 ], [ %lenmean.0331, %if.then44 ], [ %lenmean.0331, %if.else46 ], [ %lenmean.0331, %if.else28 ]
  %lensd.0.be = phi float [ %lensd.0332, %if.then ], [ %lensd.0332, %if.then8 ], [ %lensd.0332, %if.then14 ], [ %lensd.0332, %if.then19 ], [ %lensd.0332, %if.then26 ], [ %conv39, %if.then37 ], [ %lensd.0332, %if.then44 ], [ %lensd.0332, %if.else46 ], [ %lensd.0332, %if.else28 ]
  %do_pvm.0.be = phi i32 [ %do_pvm.0333, %if.then ], [ %do_pvm.0333, %if.then8 ], [ %do_pvm.0333, %if.then14 ], [ %do_pvm.0333, %if.then19 ], [ %do_pvm.0333, %if.then26 ], [ %do_pvm.0333, %if.then37 ], [ %do_pvm.0333, %if.then44 ], [ %do_pvm.0333, %if.else46 ], [ 1, %if.else28 ]
  %num_threads.0.be = phi i32 [ %call4, %if.then ], [ %num_threads.0334, %if.then8 ], [ %num_threads.0334, %if.then14 ], [ %num_threads.0334, %if.then19 ], [ %num_threads.0334, %if.then26 ], [ %num_threads.0334, %if.then37 ], [ %num_threads.0334, %if.then44 ], [ %num_threads.0334, %if.else46 ], [ %num_threads.0334, %if.else28 ]
  %call1 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #6
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %while.end, label %while.body

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else10
  %3 = load i8** %optarg, align 8, !tbaa !0
  br label %while.cond.backedge

if.else15:                                        ; preds = %if.else10
  %call16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else15
  %4 = load i8** %optarg, align 8, !tbaa !0
  %call20 = call double @atof(i8* %4) #7
  %conv21 = fptrunc double %call20 to float
  br label %while.cond.backedge

if.else22:                                        ; preds = %if.else15
  %call23 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else22
  %5 = load i8** %optarg, align 8, !tbaa !0
  %call27 = call i32 @atoi(i8* %5) #7
  br label %while.cond.backedge

if.else28:                                        ; preds = %if.else22
  %call29 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %while.cond.backedge, label %if.else33

if.else33:                                        ; preds = %if.else28
  %call34 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.else33
  %6 = load i8** %optarg, align 8, !tbaa !0
  %call38 = call double @atof(i8* %6) #7
  %conv39 = fptrunc double %call38 to float
  br label %while.cond.backedge

if.else40:                                        ; preds = %if.else33
  %call41 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else40
  %7 = load i8** %optarg, align 8, !tbaa !0
  %call45 = call i32 @atoi(i8* %7) #7
  br label %while.cond.backedge

if.else46:                                        ; preds = %if.else40
  %call47 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #7
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %while.cond.backedge

if.then50:                                        ; preds = %if.else46
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  call void @HMMERBanner(%struct._IO_FILE* %8, i8* getelementptr inbounds ([48 x i8]* @banner, i64 0, i64 0)) #6
  %call51 = call i32 @puts(i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0)) #6
  %call52 = call i32 @puts(i8* getelementptr inbounds ([456 x i8]* @experts, i64 0, i64 0)) #6
  call void @exit(i32 0) #8
  unreachable

while.end:                                        ; preds = %while.cond.backedge, %entry
  %num_threads.0.lcssa = phi i32 [ 0, %entry ], [ %num_threads.0.be, %while.cond.backedge ]
  %do_pvm.0.lcssa = phi i32 [ 0, %entry ], [ %do_pvm.0.be, %while.cond.backedge ]
  %lensd.0.lcssa = phi float [ 2.000000e+02, %entry ], [ %lensd.0.be, %while.cond.backedge ]
  %lenmean.0.lcssa = phi float [ 3.250000e+02, %entry ], [ %lenmean.0.be, %while.cond.backedge ]
  %fixedlen.0.lcssa = phi i32 [ 0, %entry ], [ %fixedlen.0.be, %while.cond.backedge ]
  %seed.0.lcssa = phi i32 [ %conv, %entry ], [ %seed.0.be, %while.cond.backedge ]
  %nsample.0.lcssa = phi i32 [ 5000, %entry ], [ %nsample.0.be, %while.cond.backedge ]
  %histfile.0.lcssa = phi i8* [ null, %entry ], [ %histfile.0.be, %while.cond.backedge ]
  %9 = load i32* %optind, align 4, !tbaa !3
  %sub = sub nsw i32 %argc, %9
  %cmp61 = icmp eq i32 %sub, 1
  br i1 %cmp61, label %if.end64, label %if.then63

if.then63:                                        ; preds = %while.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([130 x i8]* @usage, i64 0, i64 0)) #6
  %.pre = load i32* %optind, align 4, !tbaa !3
  br label %if.end64

if.end64:                                         ; preds = %while.end, %if.then63
  %10 = phi i32 [ %9, %while.end ], [ %.pre, %if.then63 ]
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %optind, align 4, !tbaa !3
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %11 = load i8** %arrayidx, align 8, !tbaa !0
  %tobool65 = icmp ne i32 %do_pvm.0.lcssa, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end64
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0)) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end64
  %tobool68 = icmp eq i32 %num_threads.0.lcssa, 0
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end67
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([80 x i8]* @.str11, i64 0, i64 0)) #6
  br label %if.end70

if.end70:                                         ; preds = %if.end67, %if.then69
  %call71 = call %struct.hmmfile_s* @HMMFileOpen(i8* %11, i8* null) #6
  %cmp72 = icmp eq %struct.hmmfile_s* %call71, null
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), i8* %11) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70
  %cmp76 = icmp ne i8* %histfile.0.lcssa, null
  br i1 %cmp76, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end75
  %call79 = call %struct._IO_FILE* @fopen(i8* %histfile.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6
  %cmp80 = icmp eq %struct._IO_FILE* %call79, null
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then78
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str14, i64 0, i64 0), i8* %histfile.0.lcssa) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %if.then82, %if.end75
  %hfp.0 = phi %struct._IO_FILE* [ null, %if.then82 ], [ %call79, %if.then78 ], [ null, %if.end75 ]
  %call85 = call i64 @strlen(i8* %11) #7
  %add = add i64 %call85, 5
  %call86 = call i8* @sre_malloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 265, i64 %add) #6
  %call87 = call i8* @strcpy(i8* %call86, i8* %11) #6
  %strlen = call i64 @strlen(i8* %call86)
  %endptr = getelementptr i8* %call86, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i64 5, i32 1, i1 false)
  %call89 = call i32 @FileExists(i8* %call86) #6
  %tobool90 = icmp eq i32 %call89, 0
  br i1 %tobool90, label %if.end97, label %if.then91

if.then91:                                        ; preds = %if.end84
  %call92 = call i32 @remove(i8* %call86) #6
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.then91
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 270) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %if.end84, %if.then95
  %is_binary = getelementptr inbounds %struct.hmmfile_s* %call71, i64 0, i32 3
  %12 = load i32* %is_binary, align 4, !tbaa !3
  %tobool98 = icmp eq i32 %12, 0
  %. = select i1 %tobool98, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  call void @HMMERBanner(%struct._IO_FILE* %13, i8* getelementptr inbounds ([48 x i8]* @banner, i64 0, i64 0)) #6
  %call102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str18, i64 0, i64 0), i8* %11) #6
  %tobool103 = icmp eq i32 %fixedlen.0.lcssa, 0
  br i1 %tobool103, label %if.else106, label %if.then104

if.then104:                                       ; preds = %if.end97
  %call105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0), i32 %fixedlen.0.lcssa) #6
  br label %if.end111

if.else106:                                       ; preds = %if.end97
  %conv107 = fpext float %lenmean.0.lcssa to double
  %call108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0), double %conv107) #6
  %conv109 = fpext float %lensd.0.lcssa to double
  %call110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str21, i64 0, i64 0), double %conv109) #6
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.then104
  %call112 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str22, i64 0, i64 0), i32 %nsample.0.lcssa) #6
  %call113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str23, i64 0, i64 0), i32 %seed.0.lcssa) #6
  %cond = select i1 %cmp76, i8* %histfile.0.lcssa, i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0)
  %call116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i8* %cond) #6
  br i1 %tobool65, label %if.then118, label %if.else120

if.then118:                                       ; preds = %if.end111
  %puts295 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str43, i64 0, i64 0)) #1
  br label %if.end126

if.else120:                                       ; preds = %if.end111
  %cmp121 = icmp sgt i32 %num_threads.0.lcssa, 0
  br i1 %cmp121, label %if.then123, label %if.end126

if.then123:                                       ; preds = %if.else120
  %call124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0), i32 %num_threads.0.lcssa) #6
  br label %if.end126

if.end126:                                        ; preds = %if.else120, %if.then123, %if.then118
  %puts = call i32 @puts(i8* getelementptr inbounds ([65 x i8]* @str, i64 0, i64 0)) #1
  %call129 = call i8* @sre_malloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 308, i64 400) #6
  %14 = bitcast i8* %call129 to float*
  %call132 = call i8* @sre_malloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 309, i64 400) #6
  %15 = bitcast i8* %call132 to float*
  %call134308 = call i32 @HMMFileRead(%struct.hmmfile_s* %call71, %struct.plan7_s** %hmm) #6
  %tobool135309 = icmp eq i32 %call134308, 0
  br i1 %tobool135309, label %while.end190, label %while.body136.lr.ph

while.body136.lr.ph:                              ; preds = %if.end126
  %tobool65.not = xor i1 %tobool65, true
  %or.cond = and i1 %tobool68, %tobool65.not
  %16 = bitcast float* %p1.i to i8*
  %17 = bitcast [20 x float]* %randomseq.i to i8*
  %arraydecay.i = getelementptr inbounds [20 x float]* %randomseq.i, i64 0, i64 0
  %cmp39.i = icmp sgt i32 %nsample.0.lcssa, 0
  %conv.i = fpext float %lenmean.0.lcssa to double
  %conv2.i = fpext float %lensd.0.lcssa to double
  %cmp183 = icmp eq %struct._IO_FILE* %hfp.0, null
  br label %while.body136

while.body136:                                    ; preds = %while.body136.lr.ph, %if.end189
  %indvars.iv343 = phi i64 [ 0, %while.body136.lr.ph ], [ %indvars.iv.next344, %if.end189 ]
  %nhmm.0314 = phi i32 [ 0, %while.body136.lr.ph ], [ %inc158, %if.end189 ]
  %lambda.0313 = phi float* [ %15, %while.body136.lr.ph ], [ %lambda.1, %if.end189 ]
  %mu.0312 = phi float* [ %14, %while.body136.lr.ph ], [ %mu.1, %if.end189 ]
  %max.0.lcssa.i302311 = phi float [ undef, %while.body136.lr.ph ], [ %max.0.lcssa.i303, %if.end189 ]
  %call.i304310 = phi %struct.histogram_s* [ undef, %while.body136.lr.ph ], [ %call.i305, %if.end189 ]
  %18 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  %cmp137 = icmp eq %struct.plan7_s* %18, null
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %while.body136
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str29, i64 0, i64 0)) #6
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %while.body136
  br i1 %or.cond, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.end140
  %19 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  call void @llvm.lifetime.start(i64 80, i8* %17) #1
  call void @sre_srandom(i32 %seed.0.lcssa) #6
  call void @P7Logoddsify(%struct.plan7_s* %19, i32 1) #6
  call void @P7DefaultNullModel(float* %arraydecay.i, float* %p1.i) #6
  %call.i = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100) #6
  %M.i = getelementptr inbounds %struct.plan7_s* %19, i64 0, i32 20
  %20 = load i32* %M.i, align 4, !tbaa !3
  %call1.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %20, i32 25, i32 0) #6
  br i1 %cmp39.i, label %for.body.i, label %main_loop_serial.exit

for.body.i:                                       ; preds = %if.then144, %if.end18.i
  %max.041.i = phi float [ %max.1.i, %if.end18.i ], [ 0xC7EFFFFFE0000000, %if.then144 ]
  %idx.040.i = phi i32 [ %inc.i, %if.end18.i ], [ 0, %if.then144 ]
  br i1 %tobool103, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %for.body.i, %do.body.i
  %call3.i = call double @Gaussrandom(double %conv.i, double %conv2.i) #6
  %conv4.i = fptosi double %call3.i to i32
  %cmp5.i = icmp slt i32 %conv4.i, 1
  br i1 %cmp5.i, label %do.body.i, label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %for.body.i
  %sqlen.0.i = phi i32 [ %fixedlen.0.lcssa, %for.body.i ], [ %conv4.i, %do.body.i ]
  %21 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call8.i = call i8* @RandomSequence(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), float* %arraydecay.i, i32 %21, i32 %sqlen.0.i) #6
  %call9.i = call i8* @DigitizeSequence(i8* %call8.i, i32 %sqlen.0.i) #6
  %22 = load i32* %M.i, align 4, !tbaa !3
  %call11.i = call i32 @P7ViterbiSize(i32 %sqlen.0.i, i32 %22) #6
  %cmp12.i = icmp slt i32 %call11.i, 1001
  br i1 %cmp12.i, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %if.end.i
  %call15.i = call float @P7Viterbi(i8* %call9.i, i32 %sqlen.0.i, %struct.plan7_s* %19, %struct.dpmatrix_s* %call1.i, %struct.p7trace_s** null) #6
  br label %if.end18.i

if.else16.i:                                      ; preds = %if.end.i
  %call17.i = call float @P7SmallViterbi(i8* %call9.i, i32 %sqlen.0.i, %struct.plan7_s* %19, %struct.dpmatrix_s* %call1.i, %struct.p7trace_s** null) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else16.i, %if.then14.i
  %score.0.i = phi float [ %call15.i, %if.then14.i ], [ %call17.i, %if.else16.i ]
  call void @AddToHistogram(%struct.histogram_s* %call.i, float %score.0.i) #6
  %cmp19.i = fcmp ogt float %score.0.i, %max.041.i
  %max.1.i = select i1 %cmp19.i, float %score.0.i, float %max.041.i
  call void @free(i8* %call9.i) #6
  call void @free(i8* %call8.i) #6
  %inc.i = add nsw i32 %idx.040.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %nsample.0.lcssa
  br i1 %exitcond.i, label %main_loop_serial.exit, label %for.body.i

main_loop_serial.exit:                            ; preds = %if.end18.i, %if.then144
  %max.0.lcssa.i = phi float [ 0xC7EFFFFFE0000000, %if.then144 ], [ %max.1.i, %if.end18.i ]
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call1.i) #6
  call void @llvm.lifetime.end(i64 80, i8* %17) #1
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  br label %if.end146

if.else145:                                       ; preds = %if.end140
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([47 x i8]* @.str30, i64 0, i64 0)) #6
  br label %if.end146

if.end146:                                        ; preds = %if.else145, %main_loop_serial.exit
  %call.i305 = phi %struct.histogram_s* [ %call.i304310, %if.else145 ], [ %call.i, %main_loop_serial.exit ]
  %max.0.lcssa.i303 = phi float [ %max.0.lcssa.i302311, %if.else145 ], [ %max.0.lcssa.i, %main_loop_serial.exit ]
  %call147 = call i32 @ExtremeValueFitHistogram(%struct.histogram_s* %call.i305, i32 1, float 9.999000e+03) #6
  %tobool148 = icmp eq i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end146
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([41 x i8]* @.str31, i64 0, i64 0)) #6
  br label %if.end150

if.end150:                                        ; preds = %if.end146, %if.then149
  %arrayidx151 = getelementptr inbounds %struct.histogram_s* %call.i305, i64 0, i32 9, i64 0
  %23 = load float* %arrayidx151, align 4, !tbaa !4
  %arrayidx153 = getelementptr inbounds float* %mu.0312, i64 %indvars.iv343
  store float %23, float* %arrayidx153, align 4, !tbaa !4
  %arrayidx155 = getelementptr inbounds %struct.histogram_s* %call.i305, i64 0, i32 9, i64 1
  %24 = load float* %arrayidx155, align 4, !tbaa !4
  %arrayidx157 = getelementptr inbounds float* %lambda.0313, i64 %indvars.iv343
  store float %24, float* %arrayidx157, align 4, !tbaa !4
  %indvars.iv.next344 = add i64 %indvars.iv343, 1
  %inc158 = add nsw i32 %nhmm.0314, 1
  %25 = trunc i64 %indvars.iv.next344 to i32
  %rem = srem i32 %25, 100
  %cmp159 = icmp eq i32 %rem, 0
  br i1 %cmp159, label %if.then161, label %if.end170

if.then161:                                       ; preds = %if.end150
  %26 = bitcast float* %mu.0312 to i8*
  %27 = shl i64 %indvars.iv343, 2
  %mul164 = add i64 %27, 404
  %call165 = call i8* @sre_realloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 348, i8* %26, i64 %mul164) #6
  %28 = bitcast i8* %call165 to float*
  %29 = bitcast float* %lambda.0313 to i8*
  %call169 = call i8* @sre_realloc(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 349, i8* %29, i64 %mul164) #6
  %30 = bitcast i8* %call169 to float*
  br label %if.end170

if.end170:                                        ; preds = %if.then161, %if.end150
  %mu.1 = phi float* [ %28, %if.then161 ], [ %mu.0312, %if.end150 ]
  %lambda.1 = phi float* [ %30, %if.then161 ], [ %lambda.0313, %if.end150 ]
  %31 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  %name = getelementptr inbounds %struct.plan7_s* %31, i64 0, i32 0
  %32 = load i8** %name, align 8, !tbaa !0
  %call171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), i8* %32) #6
  %33 = load float* %arrayidx151, align 4, !tbaa !4
  %conv174 = fpext float %33 to double
  %call175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str33, i64 0, i64 0), double %conv174) #6
  %34 = load float* %arrayidx155, align 4, !tbaa !4
  %conv178 = fpext float %34 to double
  %call179 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), double %conv178) #6
  %conv180 = fpext float %max.0.lcssa.i303 to double
  %call181 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str35, i64 0, i64 0), double %conv180) #6
  %puts294 = call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str42, i64 0, i64 0)) #1
  br i1 %cmp183, label %if.end189, label %if.then185

if.then185:                                       ; preds = %if.end170
  %35 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  %name186 = getelementptr inbounds %struct.plan7_s* %35, i64 0, i32 0
  %36 = load i8** %name186, align 8, !tbaa !0
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %hfp.0, i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* %36) #6
  call void @PrintASCIIHistogram(%struct._IO_FILE* %hfp.0, %struct.histogram_s* %call.i305) #6
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %hfp.0)
  br label %if.end189

if.end189:                                        ; preds = %if.end170, %if.then185
  call void @FreeHistogram(%struct.histogram_s* %call.i305) #6
  %38 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  call void @FreePlan7(%struct.plan7_s* %38) #6
  %call134 = call i32 @HMMFileRead(%struct.hmmfile_s* %call71, %struct.plan7_s** %hmm) #6
  %tobool135 = icmp eq i32 %call134, 0
  br i1 %tobool135, label %while.end190, label %while.body136

while.end190:                                     ; preds = %if.end189, %if.end126
  %nhmm.0.lcssa = phi i32 [ 0, %if.end126 ], [ %inc158, %if.end189 ]
  %lambda.0.lcssa = phi float* [ %15, %if.end126 ], [ %lambda.1, %if.end189 ]
  %mu.0.lcssa = phi float* [ %14, %if.end126 ], [ %mu.1, %if.end189 ]
  call void @HMMFileRewind(%struct.hmmfile_s* %call71) #6
  %call191 = call i32 @FileExists(i8* %call86) #6
  %tobool192 = icmp eq i32 %call191, 0
  br i1 %tobool192, label %if.end194, label %if.then193

if.then193:                                       ; preds = %while.end190
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([49 x i8]* @.str38, i64 0, i64 0), i8* %call86) #6
  br label %if.end194

if.end194:                                        ; preds = %while.end190, %if.then193
  %call195 = call %struct._IO_FILE* @fopen(i8* %call86, i8* %.) #6
  %cmp196 = icmp eq %struct._IO_FILE* %call195, null
  br i1 %cmp196, label %if.then198, label %for.cond.preheader

if.then198:                                       ; preds = %if.end194
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str39, i64 0, i64 0), i8* %call86) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then198, %if.end194
  %cmp200306 = icmp sgt i32 %nhmm.0.lcssa, 0
  br i1 %cmp200306, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end220
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end220 ], [ 0, %for.cond.preheader ]
  %call202 = call i32 @HMMFileRead(%struct.hmmfile_s* %call71, %struct.plan7_s** %hmm) #6
  %tobool203 = icmp eq i32 %call202, 0
  br i1 %tobool203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %for.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str40, i64 0, i64 0)) #6
  br label %if.end205

if.end205:                                        ; preds = %for.body, %if.then204
  %39 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  %cmp206 = icmp eq %struct.plan7_s* %39, null
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.end205
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([50 x i8]* @.str41, i64 0, i64 0), i8* %11) #6
  %.pre346 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %if.end205
  %40 = phi %struct.plan7_s* [ %.pre346, %if.then208 ], [ %39, %if.end205 ]
  %arrayidx211 = getelementptr inbounds float* %mu.0.lcssa, i64 %indvars.iv
  %41 = load float* %arrayidx211, align 4, !tbaa !4
  %mu212 = getelementptr inbounds %struct.plan7_s* %40, i64 0, i32 45
  store float %41, float* %mu212, align 4, !tbaa !4
  %arrayidx214 = getelementptr inbounds float* %lambda.0.lcssa, i64 %indvars.iv
  %42 = load float* %arrayidx214, align 4, !tbaa !4
  %lambda215 = getelementptr inbounds %struct.plan7_s* %40, i64 0, i32 46
  store float %42, float* %lambda215, align 4, !tbaa !4
  %flags = getelementptr inbounds %struct.plan7_s* %40, i64 0, i32 47
  %43 = load i32* %flags, align 4, !tbaa !3
  %or = or i32 %43, 128
  store i32 %or, i32* %flags, align 4, !tbaa !3
  call void @Plan7ComlogAppend(%struct.plan7_s* %40, i32 %argc, i8** %argv) #6
  %44 = load i32* %is_binary, align 4, !tbaa !3
  %tobool217 = icmp eq i32 %44, 0
  %45 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  br i1 %tobool217, label %if.else219, label %if.then218

if.then218:                                       ; preds = %if.end209
  call void @WriteBinHMM(%struct._IO_FILE* %call195, %struct.plan7_s* %45) #6
  br label %if.end220

if.else219:                                       ; preds = %if.end209
  call void @WriteAscHMM(%struct._IO_FILE* %call195, %struct.plan7_s* %45) #6
  br label %if.end220

if.end220:                                        ; preds = %if.else219, %if.then218
  %46 = load %struct.plan7_s** %hmm, align 8, !tbaa !0
  call void @FreePlan7(%struct.plan7_s* %46) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nhmm.0.lcssa
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end220, %for.cond.preheader
  call void @HMMFileClose(%struct.hmmfile_s* %call71) #6
  %call222 = call i32 @fclose(%struct._IO_FILE* %call195) #6
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.end226, label %if.then225

if.then225:                                       ; preds = %for.end
  call void @Panic(i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), i32 415) #6
  br label %if.end226

if.end226:                                        ; preds = %for.end, %if.then225
  call void @free(i8* %call86) #6
  %47 = bitcast float* %mu.0.lcssa to i8*
  call void @free(i8* %47) #6
  %48 = bitcast float* %lambda.0.lcssa to i8*
  call void @free(i8* %48) #6
  %cmp227 = icmp eq %struct._IO_FILE* %hfp.0, null
  br i1 %cmp227, label %if.end231, label %if.then229

if.then229:                                       ; preds = %if.end226
  %call230 = call i32 @fclose(%struct._IO_FILE* %hfp.0) #6
  br label %if.end231

if.end231:                                        ; preds = %if.end226, %if.then229
  call void @SqdClean() #6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: optsize
declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare void @HMMERBanner(%struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @FileExists(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #2

; Function Attrs: optsize
declare void @Panic(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #3

; Function Attrs: optsize
declare i32 @ExtremeValueFitHistogram(%struct.histogram_s*, i32, float) #3

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

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
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @SqdClean() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
