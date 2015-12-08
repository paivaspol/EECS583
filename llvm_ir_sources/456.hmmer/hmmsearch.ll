; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.ReadSeqVars = type { %struct._IO_FILE*, i8*, i32, i8*, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i32, i32, i32, i32, i32, i32, i8*, %struct.seqinfo_s*, i8*, i32, i32, i32, i32, i32, %struct.msa_struct*, %struct.msafile_struct* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@OPTIONS = internal global [17 x %struct.opt_s] [%struct.opt_s { i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i32 1, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 1, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 1, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32 1, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8]* @.str6, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0), i32 0, i32 4 }, %struct.opt_s { i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i32 0, i32 0 }], align 16
@usage = internal global [382 x i8] c"Usage: hmmsearch [-options] <hmmfile> <sequence file or database>\0A  Available options are:\0A   -h        : help; print brief help on version and usage\0A   -A <n>    : sets alignment output limit to <n> best domain alignments\0A   -E <x>    : sets E value cutoff (globE) to <= x\0A   -T <x>    : sets T bit threshold (globT) to >= x\0A   -Z <n>    : sets Z (# seqs) for E-value calculation\0A\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"--compat\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"--cut_ga\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"--cut_nc\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"--cut_tc\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"--domE\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"--domT\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"--forward\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"--null2\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"--pvm\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"--xnu\00", align 1
@.str15 = private unnamed_addr constant [11 x i8] c"--informat\00", align 1
@.str16 = private unnamed_addr constant [39 x i8] c"unrecognized sequence file format \22%s\22\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stdout = external global %struct._IO_FILE*
@banner = internal global [58 x i8] c"hmmsearch - search a sequence database with a profile HMM\00", align 16
@experts = internal global [759 x i8] c"   --compat       : make best effort to use last version's output style\0A   --cpu <n>      : run <n> threads in parallel (if threaded)\0A   --cut_ga       : use Pfam GA gathering threshold cutoffs\0A   --cut_nc       : use Pfam NC noise threshold cutoffs\0A   --cut_tc       : use Pfam TC trusted threshold cutoffs\0A   --domE <x>     : sets domain Eval cutoff (2nd threshold) to <= x\0A   --domT <x>     : sets domain T bit thresh (2nd threshold) to >= x\0A   --forward      : use the full Forward() algorithm instead of Viterbi\0A   --informat <s> : sequence file is in format <s>\0A   --null2        : turn OFF the post hoc second null model\0A   --pvm          : run on a Parallel Virtual Machine (PVM)\0A   --xnu          : turn ON XNU filtering of target protein sequences\0A\00", align 16
@.str18 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str19 = private unnamed_addr constant [74 x i8] c"PVM support is not compiled into your HMMER software; --pvm doesn't work.\00", align 1
@.str20 = private unnamed_addr constant [80 x i8] c"POSIX threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"^.*\5C.gz$\00", align 1
@.str22 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str23 = private unnamed_addr constant [8 x i8] c"BLASTDB\00", align 1
@.str24 = private unnamed_addr constant [45 x i8] c"Failed to open sequence database file %s\0A%s\0A\00", align 1
@.str25 = private unnamed_addr constant [8 x i8] c"HMMERDB\00", align 1
@.str26 = private unnamed_addr constant [30 x i8] c"Failed to open HMM file %s\0A%s\00", align 1
@.str27 = private unnamed_addr constant [33 x i8] c"Failed to read any HMMs from %s\0A\00", align 1
@.str28 = private unnamed_addr constant [57 x i8] c"HMM file %s corrupt or in incorrect format? Parse failed\00", align 1
@Alphabet_type = common global i32 0, align 4
@.str29 = private unnamed_addr constant [71 x i8] c"The HMM is a DNA model, and you can't use the --xnu filter on DNA data\00", align 1
@.str30 = private unnamed_addr constant [60 x i8] c"HMM %s did not contain the GA, TC, or NC cutoffs you needed\00", align 1
@.str31 = private unnamed_addr constant [37 x i8] c"HMM file:                   %s [%s]\0A\00", align 1
@.str32 = private unnamed_addr constant [32 x i8] c"Sequence database:          %s\0A\00", align 1
@.str34 = private unnamed_addr constant [29 x i8] c"per-sequence score cutoff:  \00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c">= %.1f\00", align 1
@.str41 = private unnamed_addr constant [29 x i8] c"per-domain score cutoff:    \00", align 1
@.str45 = private unnamed_addr constant [29 x i8] c"per-sequence Eval cutoff:   \00", align 1
@.str46 = private unnamed_addr constant [12 x i8] c"<= %-10.2g\0A\00", align 1
@.str47 = private unnamed_addr constant [29 x i8] c"per-domain Eval cutoff:     \00", align 1
@.str48 = private unnamed_addr constant [11 x i8] c"<= %10.2g\0A\00", align 1
@.str50 = private unnamed_addr constant [22 x i8] c"\0AQuery HMM: %s|%s|%s\0A\00", align 1
@.str51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str52 = private unnamed_addr constant [18 x i8] c"\0AQuery HMM:   %s\0A\00", align 1
@.str53 = private unnamed_addr constant [17 x i8] c"Accession:   %s\0A\00", align 1
@.str55 = private unnamed_addr constant [17 x i8] c"Description: %s\0A\00", align 1
@.str59 = private unnamed_addr constant [58 x i8] c"%s: domain %d of %d, from %d to %d: score %.1f, E = %.2g\0A\00", align 1
@.str61 = private unnamed_addr constant [44 x i8] c"\09[output cut off at A = %d top alignments]\0A\00", align 1
@.str62 = private unnamed_addr constant [31 x i8] c"\0ATotal sequences searched: %d\0A\00", align 1
@Alphabet = common global [25 x i8] zeroinitializer, align 16
@Alphabet_size = common global i32 0, align 4
@Alphabet_iupac = common global i32 0, align 4
@Degenerate = common global [24 x [20 x i8]] zeroinitializer, align 16
@DegenCount = common global [24 x i32] zeroinitializer, align 16
@str = private unnamed_addr constant [64 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\00"
@str65 = private unnamed_addr constant [54 x i8] c"  [No calibration for HMM; E-values are upper bounds]\00"
@str66 = private unnamed_addr constant [36 x i8] c"\0AAlignments of top-scoring domains:\00"
@str67 = private unnamed_addr constant [28 x i8] c"\09[no hits above thresholds]\00"
@str68 = private unnamed_addr constant [62 x i8] c"  [HMM has been calibrated; E-values are empirical estimates]\00"
@str71 = private unnamed_addr constant [7 x i8] c" [TC2]\00"
@str72 = private unnamed_addr constant [7 x i8] c" [NC2]\00"
@str73 = private unnamed_addr constant [7 x i8] c" [GA2]\00"
@str75 = private unnamed_addr constant [7 x i8] c" [TC1]\00"
@str76 = private unnamed_addr constant [7 x i8] c" [NC1]\00"
@str77 = private unnamed_addr constant [7 x i8] c" [GA1]\00"
@str78 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@str79 = private unnamed_addr constant [35 x i8] c"PVM:                        ACTIVE\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %tr.i = alloca %struct.p7trace_s*, align 8
  %seq.i = alloca i8*, align 8
  %sqinfo.i = alloca %struct.seqinfo_s, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %ali = alloca %struct.fancyali_s*, align 8
  %sc = alloca float, align 4
  %pvalue = alloca double, align 8
  %motherp = alloca double, align 8
  %mothersc = alloca float, align 4
  %sqfrom = alloca i32, align 4
  %sqto = alloca i32, align 4
  %hmmfrom = alloca i32, align 4
  %hmmto = alloca i32, align 4
  %name = alloca i8*, align 8
  %sqlen = alloca i32, align 4
  %domidx = alloca i32, align 4
  %ndom = alloca i32, align 4
  %thresh = alloca %struct.threshold_s, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  %0 = bitcast %struct.threshold_s* %thresh to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %cmp = icmp eq i32 %argc, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @hmmcalibrate(i32 %argc, i8** %argv) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %globE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1
  store double 1.000000e+01, double* %globE, align 8, !tbaa !0
  %globT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %globT, align 8, !tbaa !3
  %domT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %domT, align 8, !tbaa !3
  %domE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE, align 8, !tbaa !0
  %autocut = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 4
  store i32 0, i32* %autocut, align 8, !tbaa !4
  %Z1 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 5
  store i32 0, i32* %Z1, align 4, !tbaa !5
  %call2514 = call i32 @Getopt(i32 3, i8** %argv, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #6
  %tobool515 = icmp eq i32 %call2514, 0
  br i1 %tobool515, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.cond.backedge
  %format.0523 = phi i32 [ %format.0.be, %while.cond.backedge ], [ 0, %if.end ]
  %num_threads.0522 = phi i32 [ %num_threads.0.be, %while.cond.backedge ], [ 0, %if.end ]
  %be_backwards.0521 = phi i32 [ %be_backwards.0.be, %while.cond.backedge ], [ 0, %if.end ]
  %do_pvm.0520 = phi i32 [ %do_pvm.0.be, %while.cond.backedge ], [ 0, %if.end ]
  %do_xnu.0519 = phi i32 [ %do_xnu.0.be, %while.cond.backedge ], [ 0, %if.end ]
  %do_forward.0518 = phi i32 [ %do_forward.0.be, %while.cond.backedge ], [ 0, %if.end ]
  %do_null2.0517 = phi i32 [ %do_null2.0.be, %while.cond.backedge ], [ 1, %if.end ]
  %Alimit.0516 = phi i32 [ %Alimit.0.be, %while.cond.backedge ], [ 2147483647, %if.end ]
  %1 = load i8** %optname, align 8, !tbaa !6
  %call3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %2 = load i8** %optarg, align 8, !tbaa !6
  %call6 = call i32 @atoi(i8* %2) #7
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call7 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  %3 = load i8** %optarg, align 8, !tbaa !6
  %call10 = call double @atof(i8* %3) #7
  store double %call10, double* %globE, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then9, %if.then22, %if.then34, %if.then46, %if.then58, %if.then97, %if.then93, %if.else99, %if.then65, %if.then52, %if.then40, %if.then15, %if.then5, %if.else25, %if.else69, %if.else74, %if.else79, %if.else84
  %Alimit.0.be = phi i32 [ %call6, %if.then5 ], [ %Alimit.0516, %if.then9 ], [ %Alimit.0516, %if.then15 ], [ %Alimit.0516, %if.then22 ], [ %Alimit.0516, %if.then34 ], [ %Alimit.0516, %if.then40 ], [ %Alimit.0516, %if.then46 ], [ %Alimit.0516, %if.then52 ], [ %Alimit.0516, %if.then58 ], [ %Alimit.0516, %if.then65 ], [ %Alimit.0516, %if.then97 ], [ %Alimit.0516, %if.then93 ], [ %Alimit.0516, %if.else99 ], [ %Alimit.0516, %if.else25 ], [ %Alimit.0516, %if.else69 ], [ %Alimit.0516, %if.else74 ], [ %Alimit.0516, %if.else79 ], [ %Alimit.0516, %if.else84 ]
  %do_null2.0.be = phi i32 [ %do_null2.0517, %if.then5 ], [ %do_null2.0517, %if.then9 ], [ %do_null2.0517, %if.then15 ], [ %do_null2.0517, %if.then22 ], [ %do_null2.0517, %if.then34 ], [ %do_null2.0517, %if.then40 ], [ %do_null2.0517, %if.then46 ], [ %do_null2.0517, %if.then52 ], [ %do_null2.0517, %if.then58 ], [ %do_null2.0517, %if.then65 ], [ %do_null2.0517, %if.then97 ], [ %do_null2.0517, %if.then93 ], [ %do_null2.0517, %if.else99 ], [ %do_null2.0517, %if.else25 ], [ %do_null2.0517, %if.else69 ], [ 0, %if.else74 ], [ %do_null2.0517, %if.else79 ], [ %do_null2.0517, %if.else84 ]
  %do_forward.0.be = phi i32 [ %do_forward.0518, %if.then5 ], [ %do_forward.0518, %if.then9 ], [ %do_forward.0518, %if.then15 ], [ %do_forward.0518, %if.then22 ], [ %do_forward.0518, %if.then34 ], [ %do_forward.0518, %if.then40 ], [ %do_forward.0518, %if.then46 ], [ %do_forward.0518, %if.then52 ], [ %do_forward.0518, %if.then58 ], [ %do_forward.0518, %if.then65 ], [ %do_forward.0518, %if.then97 ], [ %do_forward.0518, %if.then93 ], [ %do_forward.0518, %if.else99 ], [ %do_forward.0518, %if.else25 ], [ 1, %if.else69 ], [ %do_forward.0518, %if.else74 ], [ %do_forward.0518, %if.else79 ], [ %do_forward.0518, %if.else84 ]
  %do_xnu.0.be = phi i32 [ %do_xnu.0519, %if.then5 ], [ %do_xnu.0519, %if.then9 ], [ %do_xnu.0519, %if.then15 ], [ %do_xnu.0519, %if.then22 ], [ %do_xnu.0519, %if.then34 ], [ %do_xnu.0519, %if.then40 ], [ %do_xnu.0519, %if.then46 ], [ %do_xnu.0519, %if.then52 ], [ %do_xnu.0519, %if.then58 ], [ %do_xnu.0519, %if.then65 ], [ %do_xnu.0519, %if.then97 ], [ %do_xnu.0519, %if.then93 ], [ %do_xnu.0519, %if.else99 ], [ %do_xnu.0519, %if.else25 ], [ %do_xnu.0519, %if.else69 ], [ %do_xnu.0519, %if.else74 ], [ %do_xnu.0519, %if.else79 ], [ 1, %if.else84 ]
  %do_pvm.0.be = phi i32 [ %do_pvm.0520, %if.then5 ], [ %do_pvm.0520, %if.then9 ], [ %do_pvm.0520, %if.then15 ], [ %do_pvm.0520, %if.then22 ], [ %do_pvm.0520, %if.then34 ], [ %do_pvm.0520, %if.then40 ], [ %do_pvm.0520, %if.then46 ], [ %do_pvm.0520, %if.then52 ], [ %do_pvm.0520, %if.then58 ], [ %do_pvm.0520, %if.then65 ], [ %do_pvm.0520, %if.then97 ], [ %do_pvm.0520, %if.then93 ], [ %do_pvm.0520, %if.else99 ], [ %do_pvm.0520, %if.else25 ], [ %do_pvm.0520, %if.else69 ], [ %do_pvm.0520, %if.else74 ], [ 1, %if.else79 ], [ %do_pvm.0520, %if.else84 ]
  %be_backwards.0.be = phi i32 [ %be_backwards.0521, %if.then5 ], [ %be_backwards.0521, %if.then9 ], [ %be_backwards.0521, %if.then15 ], [ %be_backwards.0521, %if.then22 ], [ %be_backwards.0521, %if.then34 ], [ %be_backwards.0521, %if.then40 ], [ %be_backwards.0521, %if.then46 ], [ %be_backwards.0521, %if.then52 ], [ %be_backwards.0521, %if.then58 ], [ %be_backwards.0521, %if.then65 ], [ %be_backwards.0521, %if.then97 ], [ %be_backwards.0521, %if.then93 ], [ %be_backwards.0521, %if.else99 ], [ 1, %if.else25 ], [ %be_backwards.0521, %if.else69 ], [ %be_backwards.0521, %if.else74 ], [ %be_backwards.0521, %if.else79 ], [ %be_backwards.0521, %if.else84 ]
  %num_threads.0.be = phi i32 [ %num_threads.0522, %if.then5 ], [ %num_threads.0522, %if.then9 ], [ %num_threads.0522, %if.then15 ], [ %num_threads.0522, %if.then22 ], [ %call35, %if.then34 ], [ %num_threads.0522, %if.then40 ], [ %num_threads.0522, %if.then46 ], [ %num_threads.0522, %if.then52 ], [ %num_threads.0522, %if.then58 ], [ %num_threads.0522, %if.then65 ], [ %num_threads.0522, %if.then97 ], [ %num_threads.0522, %if.then93 ], [ %num_threads.0522, %if.else99 ], [ %num_threads.0522, %if.else25 ], [ %num_threads.0522, %if.else69 ], [ %num_threads.0522, %if.else74 ], [ %num_threads.0522, %if.else79 ], [ %num_threads.0522, %if.else84 ]
  %format.0.be = phi i32 [ %format.0523, %if.then5 ], [ %format.0523, %if.then9 ], [ %format.0523, %if.then15 ], [ %format.0523, %if.then22 ], [ %format.0523, %if.then34 ], [ %format.0523, %if.then40 ], [ %format.0523, %if.then46 ], [ %format.0523, %if.then52 ], [ %format.0523, %if.then58 ], [ %format.0523, %if.then65 ], [ 0, %if.then97 ], [ %call94, %if.then93 ], [ %format.0523, %if.else99 ], [ %format.0523, %if.else25 ], [ %format.0523, %if.else69 ], [ %format.0523, %if.else74 ], [ %format.0523, %if.else79 ], [ %format.0523, %if.else84 ]
  %call2 = call i32 @Getopt(i32 3, i8** %argv, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #6
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %while.end, label %while.body

if.else12:                                        ; preds = %if.else
  %call13 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else12
  %4 = load i8** %optarg, align 8, !tbaa !6
  %call16 = call double @atof(i8* %4) #7
  %conv = fptrunc double %call16 to float
  store float %conv, float* %globT, align 8, !tbaa !3
  br label %while.cond.backedge

if.else18:                                        ; preds = %if.else12
  %call19 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else18
  %5 = load i8** %optarg, align 8, !tbaa !6
  %call23 = call i32 @atoi(i8* %5) #7
  store i32 %call23, i32* %Z1, align 4, !tbaa !5
  br label %while.cond.backedge

if.else25:                                        ; preds = %if.else18
  %call26 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %while.cond.backedge, label %if.else30

if.else30:                                        ; preds = %if.else25
  %call31 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else30
  %6 = load i8** %optarg, align 8, !tbaa !6
  %call35 = call i32 @atoi(i8* %6) #7
  br label %while.cond.backedge

if.else36:                                        ; preds = %if.else30
  %call37 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #7
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else36
  store i32 1, i32* %autocut, align 8, !tbaa !4
  br label %while.cond.backedge

if.else42:                                        ; preds = %if.else36
  %call43 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #7
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.else42
  store i32 2, i32* %autocut, align 8, !tbaa !4
  br label %while.cond.backedge

if.else48:                                        ; preds = %if.else42
  %call49 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.else48
  store i32 3, i32* %autocut, align 8, !tbaa !4
  br label %while.cond.backedge

if.else54:                                        ; preds = %if.else48
  %call55 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.else54
  %7 = load i8** %optarg, align 8, !tbaa !6
  %call59 = call double @atof(i8* %7) #7
  store double %call59, double* %domE, align 8, !tbaa !0
  br label %while.cond.backedge

if.else61:                                        ; preds = %if.else54
  %call62 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #7
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.else69

if.then65:                                        ; preds = %if.else61
  %8 = load i8** %optarg, align 8, !tbaa !6
  %call66 = call double @atof(i8* %8) #7
  %conv67 = fptrunc double %call66 to float
  store float %conv67, float* %domT, align 8, !tbaa !3
  br label %while.cond.backedge

if.else69:                                        ; preds = %if.else61
  %call70 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %while.cond.backedge, label %if.else74

if.else74:                                        ; preds = %if.else69
  %call75 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0)) #7
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %while.cond.backedge, label %if.else79

if.else79:                                        ; preds = %if.else74
  %call80 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #7
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %while.cond.backedge, label %if.else84

if.else84:                                        ; preds = %if.else79
  %call85 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #7
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %while.cond.backedge, label %if.else89

if.else89:                                        ; preds = %if.else84
  %call90 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0)) #7
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.else99

if.then93:                                        ; preds = %if.else89
  %9 = load i8** %optarg, align 8, !tbaa !6
  %call94 = call i32 @String2SeqfileFormat(i8* %9) #6
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %while.cond.backedge

if.then97:                                        ; preds = %if.then93
  %10 = load i8** %optarg, align 8, !tbaa !6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str16, i64 0, i64 0), i8* %10) #6
  br label %while.cond.backedge

if.else99:                                        ; preds = %if.else89
  %call100 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %while.cond.backedge

if.then103:                                       ; preds = %if.else99
  %11 = load %struct._IO_FILE** @stdout, align 8, !tbaa !6
  call void @HMMERBanner(%struct._IO_FILE* %11, i8* getelementptr inbounds ([58 x i8]* @banner, i64 0, i64 0)) #6
  %call104 = call i32 @puts(i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #6
  %call105 = call i32 @puts(i8* getelementptr inbounds ([759 x i8]* @experts, i64 0, i64 0)) #6
  call void @exit(i32 0) #8
  unreachable

while.end:                                        ; preds = %while.cond.backedge, %if.end
  %format.0.lcssa = phi i32 [ 0, %if.end ], [ %format.0.be, %while.cond.backedge ]
  %num_threads.0.lcssa = phi i32 [ 0, %if.end ], [ %num_threads.0.be, %while.cond.backedge ]
  %be_backwards.0.lcssa = phi i32 [ 0, %if.end ], [ %be_backwards.0.be, %while.cond.backedge ]
  %do_pvm.0.lcssa = phi i32 [ 0, %if.end ], [ %do_pvm.0.be, %while.cond.backedge ]
  %do_xnu.0.lcssa = phi i32 [ 0, %if.end ], [ %do_xnu.0.be, %while.cond.backedge ]
  %do_forward.0.lcssa = phi i32 [ 0, %if.end ], [ %do_forward.0.be, %while.cond.backedge ]
  %do_null2.0.lcssa = phi i32 [ 1, %if.end ], [ %do_null2.0.be, %while.cond.backedge ]
  %Alimit.0.lcssa = phi i32 [ 2147483647, %if.end ], [ %Alimit.0.be, %while.cond.backedge ]
  %12 = load i32* %optind, align 4, !tbaa !5
  %cmp123 = icmp eq i32 %12, 1
  br i1 %cmp123, label %if.end126, label %if.then125

if.then125:                                       ; preds = %while.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #6
  %.pre = load i32* %optind, align 4, !tbaa !5
  br label %if.end126

if.end126:                                        ; preds = %while.end, %if.then125
  %13 = phi i32 [ 1, %while.end ], [ %.pre, %if.then125 ]
  %inc = add nsw i32 %13, 1
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %14 = load i8** %arrayidx, align 8, !tbaa !6
  %inc127 = add nsw i32 %13, 2
  store i32 %inc127, i32* %optind, align 4, !tbaa !5
  %idxprom128 = sext i32 %inc to i64
  %arrayidx129 = getelementptr inbounds i8** %argv, i64 %idxprom128
  %15 = load i8** %arrayidx129, align 8, !tbaa !6
  %tobool130 = icmp ne i32 %do_pvm.0.lcssa, 0
  br i1 %tobool130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end126
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([74 x i8]* @.str19, i64 0, i64 0)) #6
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end126
  %tobool134 = icmp eq i32 %num_threads.0.lcssa, 0
  br i1 %tobool134, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.end133
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([80 x i8]* @.str20, i64 0, i64 0)) #6
  br label %if.end138

if.end138:                                        ; preds = %if.end133, %if.then137
  %cmp139 = icmp eq i32 %format.0.lcssa, 0
  br i1 %cmp139, label %land.lhs.true141, label %if.end148

land.lhs.true141:                                 ; preds = %if.end138
  %call142 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* %15, i32 0) #6
  %tobool143 = icmp eq i32 %call142, 0
  br i1 %tobool143, label %lor.lhs.false, label %if.then147

lor.lhs.false:                                    ; preds = %land.lhs.true141
  %call144 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0)) #7
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %land.lhs.true141, %lor.lhs.false
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %lor.lhs.false, %if.end138
  %format.1 = phi i32 [ 7, %if.then147 ], [ 0, %lor.lhs.false ], [ %format.0.lcssa, %if.end138 ]
  %call149 = call %struct.ReadSeqVars* @SeqfileOpen(i8* %15, i32 %format.1, i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0)) #6
  %cmp150 = icmp eq %struct.ReadSeqVars* %call149, null
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end148
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str24, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #6
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end148
  %call154 = call %struct.hmmfile_s* @HMMFileOpen(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0)) #6
  %cmp155 = icmp eq %struct.hmmfile_s* %call154, null
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.end153
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str26, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #6
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end153
  %call159 = call i32 @HMMFileRead(%struct.hmmfile_s* %call154, %struct.plan7_s** %hmm) #6
  %tobool160 = icmp eq i32 %call159, 0
  br i1 %tobool160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end158
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([33 x i8]* @.str27, i64 0, i64 0), i8* %14) #6
  br label %if.end162

if.end162:                                        ; preds = %if.end158, %if.then161
  %16 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %cmp163 = icmp eq %struct.plan7_s* %16, null
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end162
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0), i8* %14) #6
  %.pre533 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end162
  %17 = phi %struct.plan7_s* [ %.pre533, %if.then165 ], [ %16, %if.end162 ]
  %18 = xor i32 %do_forward.0.lcssa, 1
  call void @P7Logoddsify(%struct.plan7_s* %17, i32 %18) #6
  %tobool168 = icmp ne i32 %do_xnu.0.lcssa, 0
  %19 = load i32* @Alphabet_type, align 4, !tbaa !5
  %cmp170 = icmp eq i32 %19, 2
  %or.cond = and i1 %tobool168, %cmp170
  br i1 %or.cond, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end166
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str29, i64 0, i64 0)) #6
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %if.end166
  %20 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %call174 = call i32 @SetAutocuts(%struct.threshold_s* %thresh, %struct.plan7_s* %20) #6
  %tobool175 = icmp eq i32 %call174, 0
  br i1 %tobool175, label %if.then176, label %if.end178

if.then176:                                       ; preds = %if.end173
  %21 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %name177 = getelementptr inbounds %struct.plan7_s* %21, i64 0, i32 0
  %22 = load i8** %name177, align 8, !tbaa !6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str30, i64 0, i64 0), i8* %22) #6
  br label %if.end178

if.end178:                                        ; preds = %if.end173, %if.then176
  %23 = load %struct._IO_FILE** @stdout, align 8, !tbaa !6
  call void @HMMERBanner(%struct._IO_FILE* %23, i8* getelementptr inbounds ([58 x i8]* @banner, i64 0, i64 0)) #6
  %24 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %name179 = getelementptr inbounds %struct.plan7_s* %24, i64 0, i32 0
  %25 = load i8** %name179, align 8, !tbaa !6
  %call180 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str31, i64 0, i64 0), i8* %14, i8* %25) #6
  %call181 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str32, i64 0, i64 0), i8* %15) #6
  br i1 %tobool130, label %if.then183, label %if.end185

if.then183:                                       ; preds = %if.end178
  %puts496 = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str79, i64 0, i64 0)) #1
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end178
  %call186 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str34, i64 0, i64 0)) #6
  %26 = load float* %globT, align 8, !tbaa !3
  %cmp188 = fcmp oeq float %26, 0xC7EFFFFFE0000000
  br i1 %cmp188, label %if.then190, label %if.else192

if.then190:                                       ; preds = %if.end185
  %puts495 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str78, i64 0, i64 0)) #1
  br label %if.end218

if.else192:                                       ; preds = %if.end185
  %conv194 = fpext float %26 to double
  %call195 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), double %conv194) #6
  %27 = load i32* %autocut, align 8, !tbaa !4
  switch i32 %27, label %if.else213 [
    i32 1, label %if.then199
    i32 2, label %if.then205
    i32 3, label %if.then211
  ]

if.then199:                                       ; preds = %if.else192
  %puts494 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str77, i64 0, i64 0)) #1
  br label %if.end218

if.then205:                                       ; preds = %if.else192
  %puts493 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str76, i64 0, i64 0)) #1
  br label %if.end218

if.then211:                                       ; preds = %if.else192
  %puts492 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str75, i64 0, i64 0)) #1
  br label %if.end218

if.else213:                                       ; preds = %if.else192
  %putchar = call i32 @putchar(i32 10) #1
  br label %if.end218

if.end218:                                        ; preds = %if.then199, %if.then211, %if.else213, %if.then205, %if.then190
  %call219 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0)) #6
  %28 = load float* %domT, align 8, !tbaa !3
  %cmp221 = fcmp oeq float %28, 0xC7EFFFFFE0000000
  br i1 %cmp221, label %if.then223, label %if.else225

if.then223:                                       ; preds = %if.end218
  %puts491 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str78, i64 0, i64 0)) #1
  br label %if.end251

if.else225:                                       ; preds = %if.end218
  %conv227 = fpext float %28 to double
  %call228 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), double %conv227) #6
  %29 = load i32* %autocut, align 8, !tbaa !4
  switch i32 %29, label %if.else246 [
    i32 1, label %if.then232
    i32 2, label %if.then238
    i32 3, label %if.then244
  ]

if.then232:                                       ; preds = %if.else225
  %puts490 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str73, i64 0, i64 0)) #1
  br label %if.end251

if.then238:                                       ; preds = %if.else225
  %puts489 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str72, i64 0, i64 0)) #1
  br label %if.end251

if.then244:                                       ; preds = %if.else225
  %puts488 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str71, i64 0, i64 0)) #1
  br label %if.end251

if.else246:                                       ; preds = %if.else225
  %putchar481 = call i32 @putchar(i32 10) #1
  br label %if.end251

if.end251:                                        ; preds = %if.then232, %if.then244, %if.else246, %if.then238, %if.then223
  %call252 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0)) #6
  %30 = load double* %globE, align 8, !tbaa !0
  %cmp254 = fcmp oeq double %30, 0x47EFFFFFE0000000
  br i1 %cmp254, label %if.then256, label %if.else258

if.then256:                                       ; preds = %if.end251
  %puts487 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str78, i64 0, i64 0)) #1
  br label %if.end261

if.else258:                                       ; preds = %if.end251
  %call260 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), double %30) #6
  br label %if.end261

if.end261:                                        ; preds = %if.else258, %if.then256
  %call262 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str47, i64 0, i64 0)) #6
  %31 = load double* %domE, align 8, !tbaa !0
  %cmp264 = fcmp oeq double %31, 0x47EFFFFFE0000000
  br i1 %cmp264, label %if.then266, label %if.else268

if.then266:                                       ; preds = %if.end261
  %puts486 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str78, i64 0, i64 0)) #1
  br label %if.end271

if.else268:                                       ; preds = %if.end261
  %call270 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str48, i64 0, i64 0), double %31) #6
  br label %if.end271

if.end271:                                        ; preds = %if.else268, %if.then266
  %puts = call i32 @puts(i8* getelementptr inbounds ([64 x i8]* @str, i64 0, i64 0)) #1
  %call273 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100) #6
  %call274 = call %struct.tophit_s* @AllocTophits(i32 200) #6
  %call275 = call %struct.tophit_s* @AllocTophits(i32 200) #6
  %32 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %33 = bitcast %struct.p7trace_s** %tr.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast i8** %seq.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast %struct.seqinfo_s* %sqinfo.i to i8*
  call void @llvm.lifetime.start(i64 360, i8* %35) #1
  %M.i = getelementptr inbounds %struct.plan7_s* %32, i64 0, i32 20
  %36 = load i32* %M.i, align 4, !tbaa !5
  %call.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %36, i32 25, i32 0) #6
  %format.i = getelementptr inbounds %struct.ReadSeqVars* %call149, i64 0, i32 20
  %len.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 5
  %tobool20.i = icmp eq i32 %do_forward.0.lcssa, 0
  %arraydecay.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 1, i64 0
  %flags.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 0
  %arraydecay43.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 3, i64 0
  %arraydecay51.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 4, i64 0
  %tobool24.i = icmp eq i32 %do_null2.0.lcssa, 0
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end56.i, %if.end271
  %nseq.0.ph.i = phi i32 [ 0, %if.end271 ], [ %inc.i, %if.end56.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.cond.outer.i
  %37 = load i32* %format.i, align 4, !tbaa !5
  %call1.i = call i32 @ReadSeq(%struct.ReadSeqVars* %call149, i32 %37, i8** %seq.i, %struct.seqinfo_s* %sqinfo.i) #6
  %tobool.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.i, label %main_loop_serial.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %38 = load i32* %len.i, align 4, !tbaa !5
  %cmp.i = icmp eq i32 %38, 0
  br i1 %cmp.i, label %while.cond.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nsw i32 %nseq.0.ph.i, 1
  %39 = load i8** %seq.i, align 8, !tbaa !6
  %call3.i = call i8* @DigitizeSequence(i8* %39, i32 %38) #6
  %40 = load i32* @Alphabet_type, align 4, !tbaa !5
  %cmp5.i = icmp eq i32 %40, 3
  %or.cond.i = and i1 %tobool168, %cmp5.i
  br i1 %or.cond.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  %41 = load i32* %len.i, align 4, !tbaa !5
  %call8.i = call i32 @XNU(i8* %call3.i, i32 %41) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i
  %42 = load i32* %len.i, align 4, !tbaa !5
  %43 = load i32* %M.i, align 4, !tbaa !5
  %call12.i = call i32 @P7ViterbiSize(i32 %42, i32 %43) #6
  %cmp13.i = icmp slt i32 %call12.i, 1001
  %44 = load i32* %len.i, align 4, !tbaa !5
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end9.i
  %call16.i = call float @P7Viterbi(i8* %call3.i, i32 %44, %struct.plan7_s* %32, %struct.dpmatrix_s* %call.i, %struct.p7trace_s** %tr.i) #6
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end9.i
  %call18.i = call float @P7SmallViterbi(i8* %call3.i, i32 %44, %struct.plan7_s* %32, %struct.dpmatrix_s* %call.i, %struct.p7trace_s** %tr.i) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then14.i
  %sc.0.i = phi float [ %call16.i, %if.then14.i ], [ %call18.i, %if.else.i ]
  br i1 %tobool20.i, label %if.end28.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  %45 = load i32* %len.i, align 4, !tbaa !5
  %call23.i = call float @P7Forward(i8* %call3.i, i32 %45, %struct.plan7_s* %32, %struct.dpmatrix_s** null) #6
  br i1 %tobool24.i, label %if.end28.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.then21.i
  %46 = load %struct.p7trace_s** %tr.i, align 8, !tbaa !6
  %call26.i = call float @TraceScoreCorrection(%struct.plan7_s* %32, %struct.p7trace_s* %46, i8* %call3.i) #6
  %sub.i = fsub float %call23.i, %call26.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.then21.i, %if.end19.i
  %sc.1.i = phi float [ %sub.i, %if.then25.i ], [ %call23.i, %if.then21.i ], [ %sc.0.i, %if.end19.i ]
  %call29.i = call double @PValue(%struct.plan7_s* %32, float %sc.1.i) #6
  %47 = load i32* %Z1, align 4, !tbaa !5
  %48 = load float* %globT, align 8, !tbaa !3
  %cmp34.i = fcmp ult float %sc.1.i, %48
  br i1 %cmp34.i, label %if.end56.i, label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %if.end28.i
  %tobool30.i = icmp eq i32 %47, 0
  %inc..i = select i1 %tobool30.i, i32 %inc.i, i32 %47
  %conv.pn.i = sitofp i32 %inc..i to double
  %cond.i = fmul double %call29.i, %conv.pn.i
  %49 = load double* %globE, align 8, !tbaa !0
  %cmp37.i = fcmp ugt double %cond.i, %49
  br i1 %cmp37.i, label %if.end56.i, label %if.then39.i

if.then39.i:                                      ; preds = %land.lhs.true36.i
  %50 = load %struct.p7trace_s** %tr.i, align 8, !tbaa !6
  %51 = load i32* %len.i, align 4, !tbaa !5
  %52 = load i32* %flags.i, align 8, !tbaa !5
  %and.i = and i32 %52, 4
  %tobool41.i = icmp eq i32 %and.i, 0
  %.arraydecay43.i = select i1 %tobool41.i, i8* null, i8* %arraydecay43.i
  %and48.i = and i32 %52, 8
  %tobool49.i = icmp eq i32 %and48.i, 0
  %cond54.i = select i1 %tobool49.i, i8* null, i8* %arraydecay51.i
  %call55.i = call float @PostprocessSignificantHit(%struct.tophit_s* %call274, %struct.tophit_s* %call275, %struct.p7trace_s* %50, %struct.plan7_s* %32, i8* %call3.i, i32 %51, i8* %arraydecay.i, i8* %.arraydecay43.i, i8* %cond54.i, i32 %do_forward.0.lcssa, float %sc.1.i, i32 %do_null2.0.lcssa, %struct.threshold_s* %thresh, i32 0) #6
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then39.i, %land.lhs.true36.i, %if.end28.i
  %sc.2.i = phi float [ %call55.i, %if.then39.i ], [ %sc.1.i, %land.lhs.true36.i ], [ %sc.1.i, %if.end28.i ]
  call void @AddToHistogram(%struct.histogram_s* %call273, float %sc.2.i) #6
  %53 = load i8** %seq.i, align 8, !tbaa !6
  call void @FreeSequence(i8* %53, %struct.seqinfo_s* %sqinfo.i) #6
  %54 = load %struct.p7trace_s** %tr.i, align 8, !tbaa !6
  call void @P7FreeTrace(%struct.p7trace_s* %54) #6
  call void @free(i8* %call3.i) #6
  br label %while.cond.outer.i

main_loop_serial.exit:                            ; preds = %while.cond.i
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #6
  call void @llvm.lifetime.end(i64 360, i8* %35) #1
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %55 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %flags = getelementptr inbounds %struct.plan7_s* %55, i64 0, i32 47
  %56 = load i32* %flags, align 4, !tbaa !5
  %and = and i32 %56, 128
  %tobool288 = icmp eq i32 %and, 0
  br i1 %tobool288, label %if.end292, label %if.then289

if.then289:                                       ; preds = %main_loop_serial.exit
  %mu = getelementptr inbounds %struct.plan7_s* %55, i64 0, i32 45
  %57 = load float* %mu, align 4, !tbaa !3
  %lambda = getelementptr inbounds %struct.plan7_s* %55, i64 0, i32 46
  %58 = load float* %lambda, align 4, !tbaa !3
  %lowscore = getelementptr inbounds %struct.histogram_s* %call273, i64 0, i32 4
  %59 = load i32* %lowscore, align 4, !tbaa !5
  %conv290 = sitofp i32 %59 to float
  %highscore = getelementptr inbounds %struct.histogram_s* %call273, i64 0, i32 3
  %60 = load i32* %highscore, align 4, !tbaa !5
  %conv291 = sitofp i32 %60 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %call273, float %57, float %58, float %conv290, float %conv291, i32 0) #6
  br label %if.end292

if.end292:                                        ; preds = %main_loop_serial.exit, %if.then289
  %61 = load i32* %Z1, align 4, !tbaa !5
  %tobool294 = icmp eq i32 %61, 0
  br i1 %tobool294, label %if.then295, label %if.end297

if.then295:                                       ; preds = %if.end292
  store i32 %nseq.0.ph.i, i32* %Z1, align 4, !tbaa !5
  br label %if.end297

if.end297:                                        ; preds = %if.end292, %if.then295
  %tobool298 = icmp eq i32 %be_backwards.0.lcssa, 0
  %62 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %name300 = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 0
  %63 = load i8** %name300, align 8, !tbaa !6
  br i1 %tobool298, label %if.else313, label %if.then299

if.then299:                                       ; preds = %if.end297
  %flags301 = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 47
  %64 = load i32* %flags301, align 4, !tbaa !5
  %and302 = and i32 %64, 512
  %tobool303 = icmp eq i32 %and302, 0
  br i1 %tobool303, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then299
  %acc = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 1
  %65 = load i8** %acc, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %if.then299, %cond.true
  %cond = phi i8* [ %65, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), %if.then299 ]
  %and305 = and i32 %64, 2
  %tobool306 = icmp eq i32 %and305, 0
  br i1 %tobool306, label %cond.end310, label %cond.true307

cond.true307:                                     ; preds = %cond.end
  %desc308 = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 2
  %66 = load i8** %desc308, align 8, !tbaa !6
  br label %cond.end310

cond.end310:                                      ; preds = %cond.end, %cond.true307
  %cond311 = phi i8* [ %66, %cond.true307 ], [ getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), %cond.end ]
  %call312 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str50, i64 0, i64 0), i8* %63, i8* %cond, i8* %cond311) #6
  br label %if.end334

if.else313:                                       ; preds = %if.end297
  %call315 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str52, i64 0, i64 0), i8* %63) #6
  %67 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %flags316 = getelementptr inbounds %struct.plan7_s* %67, i64 0, i32 47
  %68 = load i32* %flags316, align 4, !tbaa !5
  %and317 = and i32 %68, 512
  %tobool318 = icmp eq i32 %and317, 0
  br i1 %tobool318, label %cond.end322, label %cond.true319

cond.true319:                                     ; preds = %if.else313
  %acc320 = getelementptr inbounds %struct.plan7_s* %67, i64 0, i32 1
  %69 = load i8** %acc320, align 8, !tbaa !6
  br label %cond.end322

cond.end322:                                      ; preds = %if.else313, %cond.true319
  %cond323 = phi i8* [ %69, %cond.true319 ], [ getelementptr inbounds ([7 x i8]* @str78, i64 0, i64 0), %if.else313 ]
  %call324 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* %cond323) #6
  %70 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %flags325 = getelementptr inbounds %struct.plan7_s* %70, i64 0, i32 47
  %71 = load i32* %flags325, align 4, !tbaa !5
  %and326 = and i32 %71, 2
  %tobool327 = icmp eq i32 %and326, 0
  br i1 %tobool327, label %cond.end331, label %cond.true328

cond.true328:                                     ; preds = %cond.end322
  %desc329 = getelementptr inbounds %struct.plan7_s* %70, i64 0, i32 2
  %72 = load i8** %desc329, align 8, !tbaa !6
  br label %cond.end331

cond.end331:                                      ; preds = %cond.end322, %cond.true328
  %cond332 = phi i8* [ %72, %cond.true328 ], [ getelementptr inbounds ([7 x i8]* @str78, i64 0, i64 0), %cond.end322 ]
  %call333 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* %cond332) #6
  br label %if.end334

if.end334:                                        ; preds = %cond.end331, %cond.end310
  %73 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  %flags335 = getelementptr inbounds %struct.plan7_s* %73, i64 0, i32 47
  %74 = load i32* %flags335, align 4, !tbaa !5
  %and336 = and i32 %74, 128
  %tobool337 = icmp eq i32 %and336, 0
  br i1 %tobool337, label %if.else340, label %if.then338

if.then338:                                       ; preds = %if.end334
  %puts485 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str68, i64 0, i64 0)) #1
  br label %if.end342

if.else340:                                       ; preds = %if.end334
  %puts482 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str65, i64 0, i64 0)) #1
  br label %if.end342

if.end342:                                        ; preds = %if.else340, %if.then338
  call void @FullSortTophits(%struct.tophit_s* %call274) #6
  %call343 = call i32 @TophitsMaxName(%struct.tophit_s* %call274) #6
  %cmp344 = icmp slt i32 %call343, 8
  br i1 %cmp344, label %cond.end349, label %cond.false347

cond.false347:                                    ; preds = %if.end342
  %call348 = call i32 @TophitsMaxName(%struct.tophit_s* %call274) #6
  br label %cond.end349

cond.end349:                                      ; preds = %if.end342, %cond.false347
  call void @FullSortTophits(%struct.tophit_s* %call275) #6
  %call359 = call i32 @TophitsMaxName(%struct.tophit_s* %call275) #6
  %cmp360 = icmp slt i32 %call359, 8
  br i1 %cmp360, label %cond.end365, label %cond.false363

cond.false363:                                    ; preds = %cond.end349
  %call364 = call i32 @TophitsMaxName(%struct.tophit_s* %call275) #6
  br label %cond.end365

cond.end365:                                      ; preds = %cond.end349, %cond.false363
  %cmp367 = icmp eq i32 %Alimit.0.lcssa, 0
  br i1 %cmp367, label %if.end415, label %if.then369

if.then369:                                       ; preds = %cond.end365
  %puts483 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str66, i64 0, i64 0)) #1
  %num = getelementptr inbounds %struct.tophit_s* %call275, i64 0, i32 3
  %75 = load i32* %num, align 4, !tbaa !5
  %cmp371499 = icmp slt i32 %75, 1
  br i1 %cmp371499, label %if.then407.thread, label %if.end376

if.then407.thread:                                ; preds = %if.then369
  %puts484537 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str67, i64 0, i64 0)) #1
  br label %if.end415

if.end376:                                        ; preds = %if.then369, %for.inc
  %nreported.0503 = phi i32 [ %nreported.1, %for.inc ], [ 0, %if.then369 ]
  %i.0502 = phi i32 [ %inc404, %for.inc ], [ 0, %if.then369 ]
  call void @GetRankedHit(%struct.tophit_s* %call275, i32 %i.0502, double* %pvalue, float* %sc, double* %motherp, float* %mothersc, i8** %name, i8** null, i8** null, i32* %sqfrom, i32* %sqto, i32* %sqlen, i32* %hmmfrom, i32* %hmmto, i32* null, i32* %domidx, i32* %ndom, %struct.fancyali_s** %ali) #6
  %76 = load double* %pvalue, align 8, !tbaa !0
  %77 = load i32* %Z1, align 4, !tbaa !5
  %conv378 = sitofp i32 %77 to double
  %mul = fmul double %76, %conv378
  %78 = load double* %motherp, align 8, !tbaa !0
  %mul381 = fmul double %78, %conv378
  %79 = load double* %globE, align 8, !tbaa !0
  %cmp383 = fcmp ogt double %mul381, %79
  br i1 %cmp383, label %for.inc, label %lor.lhs.false385

lor.lhs.false385:                                 ; preds = %if.end376
  %80 = load float* %mothersc, align 4, !tbaa !3
  %81 = load float* %globT, align 8, !tbaa !3
  %cmp387 = fcmp olt float %80, %81
  br i1 %cmp387, label %for.inc, label %if.else390

if.else390:                                       ; preds = %lor.lhs.false385
  %82 = load double* %domE, align 8, !tbaa !0
  %cmp392 = fcmp ugt double %mul, %82
  br i1 %cmp392, label %for.inc, label %land.lhs.true394

land.lhs.true394:                                 ; preds = %if.else390
  %83 = load float* %sc, align 4, !tbaa !3
  %84 = load float* %domT, align 8, !tbaa !3
  %cmp396 = fcmp ult float %83, %84
  br i1 %cmp396, label %for.inc, label %if.then398

if.then398:                                       ; preds = %land.lhs.true394
  %85 = load i8** %name, align 8, !tbaa !6
  %86 = load i32* %domidx, align 4, !tbaa !5
  %87 = load i32* %ndom, align 4, !tbaa !5
  %88 = load i32* %sqfrom, align 4, !tbaa !5
  %89 = load i32* %sqto, align 4, !tbaa !5
  %conv399 = fpext float %83 to double
  %call400 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str59, i64 0, i64 0), i8* %85, i32 %86, i32 %87, i32 %88, i32 %89, double %conv399, double %mul) #6
  %90 = load %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %91 = load %struct.fancyali_s** %ali, align 8, !tbaa !6
  call void @PrintFancyAli(%struct._IO_FILE* %90, %struct.fancyali_s* %91) #6
  %inc401 = add nsw i32 %nreported.0503, 1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true394, %if.else390, %if.then398, %if.end376, %lor.lhs.false385
  %nreported.1 = phi i32 [ %nreported.0503, %if.end376 ], [ %nreported.0503, %lor.lhs.false385 ], [ %inc401, %if.then398 ], [ %nreported.0503, %land.lhs.true394 ], [ %nreported.0503, %if.else390 ]
  %inc404 = add nsw i32 %i.0502, 1
  %92 = load i32* %num, align 4, !tbaa !5
  %cmp371 = icmp sge i32 %inc404, %92
  %cmp373 = icmp eq i32 %nreported.1, %Alimit.0.lcssa
  %or.cond497 = or i1 %cmp371, %cmp373
  br i1 %or.cond497, label %for.end, label %if.end376

for.end:                                          ; preds = %for.inc
  %cmp405 = icmp eq i32 %nreported.1, 0
  br i1 %cmp405, label %if.then407, label %if.end409

if.then407:                                       ; preds = %for.end
  %puts484 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str67, i64 0, i64 0)) #1
  br i1 %cmp373, label %if.then412, label %if.end415

if.end409:                                        ; preds = %for.end
  br i1 %cmp373, label %if.then412, label %if.end415

if.then412:                                       ; preds = %if.then407, %if.end409
  %call413 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str61, i64 0, i64 0), i32 %Alimit.0.lcssa) #6
  br label %if.end415

if.end415:                                        ; preds = %if.then407.thread, %if.then407, %cond.end365, %if.end409, %if.then412
  %call416 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str62, i64 0, i64 0), i32 %nseq.0.ph.i) #6
  call void @FreeHistogram(%struct.histogram_s* %call273) #6
  call void @HMMFileClose(%struct.hmmfile_s* %call154) #6
  call void @SeqfileClose(%struct.ReadSeqVars* %call149) #6
  call void @FreeTophits(%struct.tophit_s* %call274) #6
  call void @FreeTophits(%struct.tophit_s* %call275) #6
  %93 = load %struct.plan7_s** %hmm, align 8, !tbaa !6
  call void @FreePlan7(%struct.plan7_s* %93) #6
  call void @SqdClean() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end415, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end415 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @hmmcalibrate(i32, i8**) #2

; Function Attrs: optsize
declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @String2SeqfileFormat(i8*) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @HMMERBanner(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #2

; Function Attrs: optsize
declare %struct.ReadSeqVars* @SeqfileOpen(i8*, i32, i8*) #2

; Function Attrs: optsize
declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #2

; Function Attrs: optsize
declare void @P7Logoddsify(%struct.plan7_s*, i32) #2

; Function Attrs: optsize
declare i32 @SetAutocuts(%struct.threshold_s*, %struct.plan7_s*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #2

; Function Attrs: optsize
declare %struct.tophit_s* @AllocTophits(i32) #2

; Function Attrs: optsize
declare void @ExtremeValueSetHistogram(%struct.histogram_s*, float, float, float, float, i32) #2

; Function Attrs: optsize
declare void @FullSortTophits(%struct.tophit_s*) #2

; Function Attrs: optsize
declare i32 @TophitsMaxName(%struct.tophit_s*) #2

; Function Attrs: optsize
declare void @GetRankedHit(%struct.tophit_s*, i32, double*, float*, double*, float*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.fancyali_s**) #2

; Function Attrs: optsize
declare void @PrintFancyAli(%struct._IO_FILE*, %struct.fancyali_s*) #2

; Function Attrs: optsize
declare void @FreeHistogram(%struct.histogram_s*) #2

; Function Attrs: optsize
declare void @HMMFileClose(%struct.hmmfile_s*) #2

; Function Attrs: optsize
declare void @SeqfileClose(%struct.ReadSeqVars*) #2

; Function Attrs: optsize
declare void @FreeTophits(%struct.tophit_s*) #2

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #2

; Function Attrs: optsize
declare void @SqdClean() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @ReadSeq(%struct.ReadSeqVars*, i32, i8**, %struct.seqinfo_s*) #2

; Function Attrs: optsize
declare i8* @DigitizeSequence(i8*, i32) #2

; Function Attrs: optsize
declare i32 @XNU(i8*, i32) #2

; Function Attrs: optsize
declare i32 @P7ViterbiSize(i32, i32) #2

; Function Attrs: optsize
declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #2

; Function Attrs: optsize
declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #2

; Function Attrs: optsize
declare double @PValue(%struct.plan7_s*, float) #2

; Function Attrs: optsize
declare float @PostprocessSignificantHit(%struct.tophit_s*, %struct.tophit_s*, %struct.p7trace_s*, %struct.plan7_s*, i8*, i32, i8*, i8*, i8*, i32, float, i32, %struct.threshold_s*, i32) #2

; Function Attrs: optsize
declare void @AddToHistogram(%struct.histogram_s*, float) #2

; Function Attrs: optsize
declare void @FreeSequence(i8*, %struct.seqinfo_s*) #2

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"_ZTSN11threshold_s3$_0E", metadata !1}
!5 = metadata !{metadata !"int", metadata !1}
!6 = metadata !{metadata !"any pointer", metadata !1}
