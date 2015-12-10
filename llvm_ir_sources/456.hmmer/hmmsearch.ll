; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/hmmsearch.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.opt_s = type { i8*, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.ReadSeqVars = type { %struct.__sFILE*, i8*, i32, i8*, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i32, i32, i32, i32, i32, i32, i8*, %struct.seqinfo_s*, i8*, i32, i32, i32, i32, i32, %struct.msa_struct*, %struct.msafile_struct* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct.__sFILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct.__sFILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.hmmfile_s = type { %struct.__sFILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
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
@__stdoutp = external global %struct.__sFILE*
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
@.str59 = private unnamed_addr constant [24 x i8] c"%-*s %-*s %7s %10s %3s\0A\00", align 1
@.str60 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@.str61 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c"Score\00", align 1
@.str63 = private unnamed_addr constant [8 x i8] c"E-value\00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c" N \00", align 1
@.str65 = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@.str66 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@.str67 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str68 = private unnamed_addr constant [8 x i8] c"-------\00", align 1
@.str69 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str70 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/hmmsearch.c\00", align 1
@.str71 = private unnamed_addr constant [30 x i8] c"%-*s %-*.*s %7.1f %10.2g %3d\0A\00", align 1
@.str74 = private unnamed_addr constant [40 x i8] c"%-*s %7s %5s %5s    %5s %5s    %7s %8s\0A\00", align 1
@.str75 = private unnamed_addr constant [8 x i8] c"Domain \00", align 1
@.str76 = private unnamed_addr constant [6 x i8] c"seq-f\00", align 1
@.str77 = private unnamed_addr constant [6 x i8] c"seq-t\00", align 1
@.str78 = private unnamed_addr constant [6 x i8] c"hmm-f\00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c"hmm-t\00", align 1
@.str80 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str81 = private unnamed_addr constant [53 x i8] c"%-*s %3d/%-3d %5d %5d %c%c %5d %5d %c%c %7.1f %8.2g\0A\00", align 1
@.str83 = private unnamed_addr constant [58 x i8] c"%s: domain %d of %d, from %d to %d: score %.1f, E = %.2g\0A\00", align 1
@.str84 = private unnamed_addr constant [44 x i8] c"\09[output cut off at A = %d top alignments]\0A\00", align 1
@.str86 = private unnamed_addr constant [31 x i8] c"\0ATotal sequences searched: %d\0A\00", align 1
@Alphabet = common global [25 x i8] zeroinitializer, align 16
@Alphabet_size = common global i32 0, align 4
@Alphabet_iupac = common global i32 0, align 4
@Degenerate = common global [24 x [20 x i8]] zeroinitializer, align 16
@DegenCount = common global [24 x i32] zeroinitializer, align 16
@str = private unnamed_addr constant [64 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\00"
@str91 = private unnamed_addr constant [54 x i8] c"  [No calibration for HMM; E-values are upper bounds]\00"
@str92 = private unnamed_addr constant [61 x i8] c"\0AScores for complete sequences (score includes all domains):\00"
@str93 = private unnamed_addr constant [21 x i8] c"\0AParsed for domains:\00"
@str94 = private unnamed_addr constant [26 x i8] c"\0AHistogram of all scores:\00"
@str95 = private unnamed_addr constant [26 x i8] c"\0AWhole sequence top hits:\00"
@str96 = private unnamed_addr constant [18 x i8] c"\0ADomain top hits:\00"
@str97 = private unnamed_addr constant [36 x i8] c"\0AAlignments of top-scoring domains:\00"
@str100 = private unnamed_addr constant [28 x i8] c"\09[no hits above thresholds]\00"
@str101 = private unnamed_addr constant [62 x i8] c"  [HMM has been calibrated; E-values are empirical estimates]\00"
@str104 = private unnamed_addr constant [7 x i8] c" [TC2]\00"
@str105 = private unnamed_addr constant [7 x i8] c" [NC2]\00"
@str106 = private unnamed_addr constant [7 x i8] c" [GA2]\00"
@str108 = private unnamed_addr constant [7 x i8] c" [TC1]\00"
@str109 = private unnamed_addr constant [7 x i8] c" [NC1]\00"
@str110 = private unnamed_addr constant [7 x i8] c" [GA1]\00"
@str111 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@str112 = private unnamed_addr constant [35 x i8] c"PVM:                        ACTIVE\00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
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
  %desc = alloca i8*, align 8
  %sqlen = alloca i32, align 4
  %domidx = alloca i32, align 4
  %ndom = alloca i32, align 4
  %thresh = alloca %struct.threshold_s, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !31, metadata !572), !dbg !573
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !32, metadata !572), !dbg !574
  %1 = bitcast %struct.threshold_s* %thresh to i8*, !dbg !575
  call void @llvm.lifetime.start(i64 40, i8* %1) #1, !dbg !575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !356, metadata !572), !dbg !576
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !446, metadata !572), !dbg !577
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !445, metadata !572), !dbg !578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !447, metadata !572), !dbg !579
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !448, metadata !572), !dbg !580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !434, metadata !572), !dbg !581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !449, metadata !572), !dbg !582
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !452, metadata !572), !dbg !583
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !451, metadata !572), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !450, metadata !572), !dbg !585
  tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !440, metadata !572), !dbg !586
  %2 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !587
  store double 1.000000e+01, double* %2, align 8, !dbg !588, !tbaa !589
  %3 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0, !dbg !596
  store float 0xC7EFFFFFE0000000, float* %3, align 8, !dbg !597, !tbaa !598
  %4 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !599
  store float 0xC7EFFFFFE0000000, float* %4, align 8, !dbg !600, !tbaa !601
  %5 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !602
  store double 0x47EFFFFFE0000000, double* %5, align 8, !dbg !603, !tbaa !604
  %6 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 4, !dbg !605
  store i32 0, i32* %6, align 8, !dbg !606, !tbaa !607
  %7 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 5, !dbg !608
  store i32 0, i32* %7, align 4, !dbg !609, !tbaa !610
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !444, metadata !572), !dbg !613
  %8 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !614
  %9 = icmp eq i32 %8, 0, !dbg !615
  br i1 %9, label %._crit_edge74, label %.lr.ph73, !dbg !615

.lr.ph73:                                         ; preds = %0, %.backedge
  %format.071 = phi i32 [ %format.0.be, %.backedge ], [ 0, %0 ]
  %num_threads.070 = phi i32 [ %num_threads.0.be, %.backedge ], [ 0, %0 ]
  %be_backwards.069 = phi i32 [ %be_backwards.0.be, %.backedge ], [ 0, %0 ]
  %do_pvm.068 = phi i32 [ %do_pvm.0.be, %.backedge ], [ 0, %0 ]
  %do_xnu.067 = phi i32 [ %do_xnu.0.be, %.backedge ], [ 0, %0 ]
  %do_forward.066 = phi i32 [ %do_forward.0.be, %.backedge ], [ 0, %0 ]
  %do_null2.065 = phi i32 [ %do_null2.0.be, %.backedge ], [ 1, %0 ]
  %Alimit.064 = phi i32 [ %Alimit.0.be, %.backedge ], [ 2147483647, %0 ]
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %10 = load i8** %optname, align 8, !dbg !616, !tbaa !619
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #7, !dbg !621
  %12 = icmp eq i32 %11, 0, !dbg !622
  br i1 %12, label %13, label %16, !dbg !623

; <label>:13                                      ; preds = %.lr.ph73
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %14 = load i8** %optarg, align 8, !dbg !624, !tbaa !619
  %15 = call i32 @atoi(i8* %14) #7, !dbg !625
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !440, metadata !572), !dbg !586
  br label %.backedge, !dbg !626

; <label>:16                                      ; preds = %.lr.ph73
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %17 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !627
  %18 = icmp eq i32 %17, 0, !dbg !629
  br i1 %18, label %19, label %24, !dbg !630

; <label>:19                                      ; preds = %16
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %20 = load i8** %optarg, align 8, !dbg !631, !tbaa !619
  %21 = call double @atof(i8* %20) #7, !dbg !632
  store double %21, double* %2, align 8, !dbg !633, !tbaa !589
  br label %.backedge, !dbg !634

.backedge:                                        ; preds = %19, %34, %43, %53, %61, %90, %86, %92, %67, %57, %49, %27, %13, %37, %71, %74, %77, %80
  %Alimit.0.be = phi i32 [ %15, %13 ], [ %Alimit.064, %19 ], [ %Alimit.064, %27 ], [ %Alimit.064, %34 ], [ %Alimit.064, %43 ], [ %Alimit.064, %49 ], [ %Alimit.064, %53 ], [ %Alimit.064, %57 ], [ %Alimit.064, %61 ], [ %Alimit.064, %67 ], [ %Alimit.064, %90 ], [ %Alimit.064, %86 ], [ %Alimit.064, %92 ], [ %Alimit.064, %37 ], [ %Alimit.064, %71 ], [ %Alimit.064, %74 ], [ %Alimit.064, %77 ], [ %Alimit.064, %80 ]
  %do_null2.0.be = phi i32 [ %do_null2.065, %13 ], [ %do_null2.065, %19 ], [ %do_null2.065, %27 ], [ %do_null2.065, %34 ], [ %do_null2.065, %43 ], [ %do_null2.065, %49 ], [ %do_null2.065, %53 ], [ %do_null2.065, %57 ], [ %do_null2.065, %61 ], [ %do_null2.065, %67 ], [ %do_null2.065, %90 ], [ %do_null2.065, %86 ], [ %do_null2.065, %92 ], [ %do_null2.065, %37 ], [ %do_null2.065, %71 ], [ 0, %74 ], [ %do_null2.065, %77 ], [ %do_null2.065, %80 ]
  %do_forward.0.be = phi i32 [ %do_forward.066, %13 ], [ %do_forward.066, %19 ], [ %do_forward.066, %27 ], [ %do_forward.066, %34 ], [ %do_forward.066, %43 ], [ %do_forward.066, %49 ], [ %do_forward.066, %53 ], [ %do_forward.066, %57 ], [ %do_forward.066, %61 ], [ %do_forward.066, %67 ], [ %do_forward.066, %90 ], [ %do_forward.066, %86 ], [ %do_forward.066, %92 ], [ %do_forward.066, %37 ], [ 1, %71 ], [ %do_forward.066, %74 ], [ %do_forward.066, %77 ], [ %do_forward.066, %80 ]
  %do_xnu.0.be = phi i32 [ %do_xnu.067, %13 ], [ %do_xnu.067, %19 ], [ %do_xnu.067, %27 ], [ %do_xnu.067, %34 ], [ %do_xnu.067, %43 ], [ %do_xnu.067, %49 ], [ %do_xnu.067, %53 ], [ %do_xnu.067, %57 ], [ %do_xnu.067, %61 ], [ %do_xnu.067, %67 ], [ %do_xnu.067, %90 ], [ %do_xnu.067, %86 ], [ %do_xnu.067, %92 ], [ %do_xnu.067, %37 ], [ %do_xnu.067, %71 ], [ %do_xnu.067, %74 ], [ %do_xnu.067, %77 ], [ 1, %80 ]
  %do_pvm.0.be = phi i32 [ %do_pvm.068, %13 ], [ %do_pvm.068, %19 ], [ %do_pvm.068, %27 ], [ %do_pvm.068, %34 ], [ %do_pvm.068, %43 ], [ %do_pvm.068, %49 ], [ %do_pvm.068, %53 ], [ %do_pvm.068, %57 ], [ %do_pvm.068, %61 ], [ %do_pvm.068, %67 ], [ %do_pvm.068, %90 ], [ %do_pvm.068, %86 ], [ %do_pvm.068, %92 ], [ %do_pvm.068, %37 ], [ %do_pvm.068, %71 ], [ %do_pvm.068, %74 ], [ 1, %77 ], [ %do_pvm.068, %80 ]
  %be_backwards.0.be = phi i32 [ %be_backwards.069, %13 ], [ %be_backwards.069, %19 ], [ %be_backwards.069, %27 ], [ %be_backwards.069, %34 ], [ %be_backwards.069, %43 ], [ %be_backwards.069, %49 ], [ %be_backwards.069, %53 ], [ %be_backwards.069, %57 ], [ %be_backwards.069, %61 ], [ %be_backwards.069, %67 ], [ %be_backwards.069, %90 ], [ %be_backwards.069, %86 ], [ %be_backwards.069, %92 ], [ 1, %37 ], [ %be_backwards.069, %71 ], [ %be_backwards.069, %74 ], [ %be_backwards.069, %77 ], [ %be_backwards.069, %80 ]
  %num_threads.0.be = phi i32 [ %num_threads.070, %13 ], [ %num_threads.070, %19 ], [ %num_threads.070, %27 ], [ %num_threads.070, %34 ], [ %45, %43 ], [ %num_threads.070, %49 ], [ %num_threads.070, %53 ], [ %num_threads.070, %57 ], [ %num_threads.070, %61 ], [ %num_threads.070, %67 ], [ %num_threads.070, %90 ], [ %num_threads.070, %86 ], [ %num_threads.070, %92 ], [ %num_threads.070, %37 ], [ %num_threads.070, %71 ], [ %num_threads.070, %74 ], [ %num_threads.070, %77 ], [ %num_threads.070, %80 ]
  %format.0.be = phi i32 [ %format.071, %13 ], [ %format.071, %19 ], [ %format.071, %27 ], [ %format.071, %34 ], [ %format.071, %43 ], [ %format.071, %49 ], [ %format.071, %53 ], [ %format.071, %57 ], [ %format.071, %61 ], [ %format.071, %67 ], [ 0, %90 ], [ %88, %86 ], [ %format.071, %92 ], [ %format.071, %37 ], [ %format.071, %71 ], [ %format.071, %74 ], [ %format.071, %77 ], [ %format.071, %80 ]
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !444, metadata !572), !dbg !613
  %22 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !614
  %23 = icmp eq i32 %22, 0, !dbg !615
  br i1 %23, label %._crit_edge74, label %.lr.ph73, !dbg !615

; <label>:24                                      ; preds = %16
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %25 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !635
  %26 = icmp eq i32 %25, 0, !dbg !637
  br i1 %26, label %27, label %31, !dbg !638

; <label>:27                                      ; preds = %24
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %28 = load i8** %optarg, align 8, !dbg !639, !tbaa !619
  %29 = call double @atof(i8* %28) #7, !dbg !640
  %30 = fptrunc double %29 to float, !dbg !640
  store float %30, float* %3, align 8, !dbg !641, !tbaa !598
  br label %.backedge, !dbg !642

; <label>:31                                      ; preds = %24
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %32 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !643
  %33 = icmp eq i32 %32, 0, !dbg !645
  br i1 %33, label %34, label %37, !dbg !646

; <label>:34                                      ; preds = %31
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %35 = load i8** %optarg, align 8, !dbg !647, !tbaa !619
  %36 = call i32 @atoi(i8* %35) #7, !dbg !648
  store i32 %36, i32* %7, align 4, !dbg !649, !tbaa !610
  br label %.backedge, !dbg !650

; <label>:37                                      ; preds = %31
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %38 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !651
  %39 = icmp eq i32 %38, 0, !dbg !653
  br i1 %39, label %.backedge, label %40, !dbg !654

; <label>:40                                      ; preds = %37
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %41 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !655
  %42 = icmp eq i32 %41, 0, !dbg !657
  br i1 %42, label %43, label %46, !dbg !658

; <label>:43                                      ; preds = %40
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %44 = load i8** %optarg, align 8, !dbg !659, !tbaa !619
  %45 = call i32 @atoi(i8* %44) #7, !dbg !660
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !450, metadata !572), !dbg !585
  br label %.backedge, !dbg !661

; <label>:46                                      ; preds = %40
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %47 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !662
  %48 = icmp eq i32 %47, 0, !dbg !664
  br i1 %48, label %49, label %50, !dbg !665

; <label>:49                                      ; preds = %46
  store i32 1, i32* %6, align 8, !dbg !666, !tbaa !607
  br label %.backedge, !dbg !667

; <label>:50                                      ; preds = %46
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %51 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !668
  %52 = icmp eq i32 %51, 0, !dbg !670
  br i1 %52, label %53, label %54, !dbg !671

; <label>:53                                      ; preds = %50
  store i32 2, i32* %6, align 8, !dbg !672, !tbaa !607
  br label %.backedge, !dbg !673

; <label>:54                                      ; preds = %50
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %55 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !674
  %56 = icmp eq i32 %55, 0, !dbg !676
  br i1 %56, label %57, label %58, !dbg !677

; <label>:57                                      ; preds = %54
  store i32 3, i32* %6, align 8, !dbg !678, !tbaa !607
  br label %.backedge, !dbg !679

; <label>:58                                      ; preds = %54
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %59 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !680
  %60 = icmp eq i32 %59, 0, !dbg !682
  br i1 %60, label %61, label %64, !dbg !683

; <label>:61                                      ; preds = %58
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %62 = load i8** %optarg, align 8, !dbg !684, !tbaa !619
  %63 = call double @atof(i8* %62) #7, !dbg !685
  store double %63, double* %5, align 8, !dbg !686, !tbaa !604
  br label %.backedge, !dbg !687

; <label>:64                                      ; preds = %58
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %65 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !688
  %66 = icmp eq i32 %65, 0, !dbg !690
  br i1 %66, label %67, label %71, !dbg !691

; <label>:67                                      ; preds = %64
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %68 = load i8** %optarg, align 8, !dbg !692, !tbaa !619
  %69 = call double @atof(i8* %68) #7, !dbg !693
  %70 = fptrunc double %69 to float, !dbg !693
  store float %70, float* %4, align 8, !dbg !694, !tbaa !601
  br label %.backedge, !dbg !695

; <label>:71                                      ; preds = %64
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %72 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !696
  %73 = icmp eq i32 %72, 0, !dbg !698
  br i1 %73, label %.backedge, label %74, !dbg !699

; <label>:74                                      ; preds = %71
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %75 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !700
  %76 = icmp eq i32 %75, 0, !dbg !702
  br i1 %76, label %.backedge, label %77, !dbg !703

; <label>:77                                      ; preds = %74
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %78 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !704
  %79 = icmp eq i32 %78, 0, !dbg !706
  br i1 %79, label %.backedge, label %80, !dbg !707

; <label>:80                                      ; preds = %77
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %81 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !708
  %82 = icmp eq i32 %81, 0, !dbg !710
  br i1 %82, label %.backedge, label %83, !dbg !711

; <label>:83                                      ; preds = %80
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %84 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !712
  %85 = icmp eq i32 %84, 0, !dbg !714
  br i1 %85, label %86, label %92, !dbg !715

; <label>:86                                      ; preds = %83
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %87 = load i8** %optarg, align 8, !dbg !716, !tbaa !619
  %88 = call i32 @String2SeqfileFormat(i8* %87) #7, !dbg !718
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !356, metadata !572), !dbg !576
  %89 = icmp eq i32 %88, 0, !dbg !719
  br i1 %89, label %90, label %.backedge, !dbg !721

; <label>:90                                      ; preds = %86
  call void @llvm.dbg.value(metadata i8** %optarg, i64 0, metadata !443, metadata !572), !dbg !612
  %91 = load i8** %optarg, align 8, !dbg !722, !tbaa !619
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str16, i64 0, i64 0), i8* %91) #7, !dbg !723
  br label %.backedge, !dbg !723

; <label>:92                                      ; preds = %83
  call void @llvm.dbg.value(metadata i8** %optname, i64 0, metadata !442, metadata !572), !dbg !611
  %93 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !724
  %94 = icmp eq i32 %93, 0, !dbg !726
  br i1 %94, label %95, label %.backedge, !dbg !727

; <label>:95                                      ; preds = %92
  %96 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !728, !tbaa !619
  call void @HMMERBanner(%struct.__sFILE* %96, i8* getelementptr inbounds ([58 x i8]* @banner, i64 0, i64 0)) #7, !dbg !730
  %97 = call i32 @puts(i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !731
  %98 = call i32 @puts(i8* getelementptr inbounds ([759 x i8]* @experts, i64 0, i64 0)) #7, !dbg !732
  call void @exit(i32 0) #8, !dbg !733
  unreachable, !dbg !733

._crit_edge74:                                    ; preds = %.backedge, %0
  %format.0.lcssa = phi i32 [ 0, %0 ], [ %format.0.be, %.backedge ]
  %num_threads.0.lcssa = phi i32 [ 0, %0 ], [ %num_threads.0.be, %.backedge ]
  %be_backwards.0.lcssa = phi i32 [ 0, %0 ], [ %be_backwards.0.be, %.backedge ]
  %do_pvm.0.lcssa = phi i32 [ 0, %0 ], [ %do_pvm.0.be, %.backedge ]
  %do_xnu.0.lcssa = phi i32 [ 0, %0 ], [ %do_xnu.0.be, %.backedge ]
  %do_forward.0.lcssa = phi i32 [ 0, %0 ], [ %do_forward.0.be, %.backedge ]
  %do_null2.0.lcssa = phi i32 [ 1, %0 ], [ %do_null2.0.be, %.backedge ]
  %Alimit.0.lcssa = phi i32 [ 2147483647, %0 ], [ %Alimit.0.be, %.backedge ]
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !444, metadata !572), !dbg !613
  %99 = load i32* %optind, align 4, !dbg !734, !tbaa !736
  %100 = sub nsw i32 %argc, %99, !dbg !737
  %101 = icmp eq i32 %100, 2, !dbg !738
  br i1 %101, label %103, label %102, !dbg !739

; <label>:102                                     ; preds = %._crit_edge74
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !740
  %.pre = load i32* %optind, align 4, !dbg !741, !tbaa !736
  br label %103, !dbg !740

; <label>:103                                     ; preds = %._crit_edge74, %102
  %104 = phi i32 [ %99, %._crit_edge74 ], [ %.pre, %102 ]
  call void @llvm.dbg.value(metadata i32* %optind, i64 0, metadata !444, metadata !572), !dbg !613
  %105 = add nsw i32 %104, 1, !dbg !741
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !444, metadata !572), !dbg !613
  %106 = sext i32 %104 to i64, !dbg !742
  %107 = getelementptr inbounds i8** %argv, i64 %106, !dbg !742
  %108 = load i8** %107, align 8, !dbg !742, !tbaa !619
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !33, metadata !572), !dbg !743
  %109 = add nsw i32 %104, 2, !dbg !744
  call void @llvm.dbg.value(metadata i32 %109, i64 0, metadata !444, metadata !572), !dbg !613
  store i32 %109, i32* %optind, align 4, !dbg !744, !tbaa !736
  %110 = sext i32 %105 to i64, !dbg !745
  %111 = getelementptr inbounds i8** %argv, i64 %110, !dbg !745
  %112 = load i8** %111, align 8, !dbg !745, !tbaa !619
  call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !218, metadata !572), !dbg !746
  %113 = icmp eq i32 %do_pvm.0.lcssa, 0, !dbg !747
  br i1 %113, label %115, label %114, !dbg !749

; <label>:114                                     ; preds = %103
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([74 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !750
  br label %115, !dbg !750

; <label>:115                                     ; preds = %103, %114
  %116 = icmp eq i32 %num_threads.0.lcssa, 0, !dbg !751
  br i1 %116, label %118, label %117, !dbg !753

; <label>:117                                     ; preds = %115
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([80 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !754
  br label %118, !dbg !754

; <label>:118                                     ; preds = %115, %117
  %119 = icmp eq i32 %format.0.lcssa, 0, !dbg !755
  br i1 %119, label %120, label %127, !dbg !757

; <label>:120                                     ; preds = %118
  %121 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* %112, i32 0) #7, !dbg !758
  %122 = icmp eq i32 %121, 0, !dbg !758
  br i1 %122, label %123, label %126, !dbg !759

; <label>:123                                     ; preds = %120
  %124 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !760
  %125 = icmp eq i32 %124, 0, !dbg !761
  br i1 %125, label %126, label %127, !dbg !762

; <label>:126                                     ; preds = %120, %123
  call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !356, metadata !572), !dbg !576
  br label %127, !dbg !763

; <label>:127                                     ; preds = %126, %123, %118
  %format.1 = phi i32 [ 7, %126 ], [ 0, %123 ], [ %format.0.lcssa, %118 ]
  %128 = call %struct.ReadSeqVars* @SeqfileOpen(i8* %112, i32 %format.1, i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !764
  call void @llvm.dbg.value(metadata %struct.ReadSeqVars* %128, i64 0, metadata !219, metadata !572), !dbg !766
  %129 = icmp eq %struct.ReadSeqVars* %128, null, !dbg !767
  br i1 %129, label %130, label %131, !dbg !768

; <label>:130                                     ; preds = %127
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str24, i64 0, i64 0), i8* %112, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !769
  br label %131, !dbg !769

; <label>:131                                     ; preds = %130, %127
  %132 = call %struct.hmmfile_s* @HMMFileOpen(i8* %108, i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !770
  call void @llvm.dbg.value(metadata %struct.hmmfile_s* %132, i64 0, metadata !34, metadata !572), !dbg !772
  %133 = icmp eq %struct.hmmfile_s* %132, null, !dbg !773
  br i1 %133, label %134, label %135, !dbg !774

; <label>:134                                     ; preds = %131
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str26, i64 0, i64 0), i8* %108, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !775
  br label %135, !dbg !775

; <label>:135                                     ; preds = %134, %131
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %136 = call i32 @HMMFileRead(%struct.hmmfile_s* %132, %struct.plan7_s** %hmm) #7, !dbg !777
  %137 = icmp eq i32 %136, 0, !dbg !777
  br i1 %137, label %138, label %139, !dbg !779

; <label>:138                                     ; preds = %135
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([33 x i8]* @.str27, i64 0, i64 0), i8* %108) #7, !dbg !780
  br label %139, !dbg !780

; <label>:139                                     ; preds = %135, %138
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %140 = load %struct.plan7_s** %hmm, align 8, !dbg !781, !tbaa !619
  %141 = icmp eq %struct.plan7_s* %140, null, !dbg !783
  br i1 %141, label %142, label %143, !dbg !784

; <label>:142                                     ; preds = %139
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0), i8* %108) #7, !dbg !785
  %.pre85 = load %struct.plan7_s** %hmm, align 8, !dbg !786, !tbaa !619
  br label %143, !dbg !785

; <label>:143                                     ; preds = %142, %139
  %144 = phi %struct.plan7_s* [ %.pre85, %142 ], [ %140, %139 ]
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %145 = xor i32 %do_forward.0.lcssa, 1, !dbg !787
  call void @P7Logoddsify(%struct.plan7_s* %144, i32 %145) #7, !dbg !788
  %146 = icmp ne i32 %do_xnu.0.lcssa, 0, !dbg !789
  %147 = load i32* @Alphabet_type, align 4
  %148 = icmp eq i32 %147, 2, !dbg !791
  %or.cond5 = and i1 %146, %148, !dbg !792
  br i1 %or.cond5, label %149, label %150, !dbg !792

; <label>:149                                     ; preds = %143
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !793
  br label %150, !dbg !793

; <label>:150                                     ; preds = %149, %143
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %151 = load %struct.plan7_s** %hmm, align 8, !dbg !794, !tbaa !619
  call void @llvm.dbg.value(metadata %struct.threshold_s* %thresh, i64 0, metadata !441, metadata !572), !dbg !796
  %152 = call i32 @SetAutocuts(%struct.threshold_s* %thresh, %struct.plan7_s* %151) #7, !dbg !797
  %153 = icmp eq i32 %152, 0, !dbg !797
  br i1 %153, label %154, label %158, !dbg !798

; <label>:154                                     ; preds = %150
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %155 = load %struct.plan7_s** %hmm, align 8, !dbg !799, !tbaa !619
  %156 = getelementptr inbounds %struct.plan7_s* %155, i64 0, i32 0, !dbg !800
  %157 = load i8** %156, align 8, !dbg !800, !tbaa !801
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str30, i64 0, i64 0), i8* %157) #7, !dbg !803
  br label %158, !dbg !803

; <label>:158                                     ; preds = %150, %154
  %159 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !804, !tbaa !619
  call void @HMMERBanner(%struct.__sFILE* %159, i8* getelementptr inbounds ([58 x i8]* @banner, i64 0, i64 0)) #7, !dbg !805
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %160 = load %struct.plan7_s** %hmm, align 8, !dbg !806, !tbaa !619
  %161 = getelementptr inbounds %struct.plan7_s* %160, i64 0, i32 0, !dbg !807
  %162 = load i8** %161, align 8, !dbg !807, !tbaa !801
  %163 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str31, i64 0, i64 0), i8* %108, i8* %162) #7, !dbg !808
  %164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str32, i64 0, i64 0), i8* %112) #7, !dbg !809
  br i1 %113, label %166, label %165, !dbg !810

; <label>:165                                     ; preds = %158
  %puts32 = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str112, i64 0, i64 0)) #1, !dbg !811
  br label %166, !dbg !811

; <label>:166                                     ; preds = %158, %165
  %167 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !813
  %168 = load float* %3, align 8, !dbg !814, !tbaa !598
  %169 = fcmp oeq float %168, 0xC7EFFFFFE0000000, !dbg !816
  br i1 %169, label %170, label %171, !dbg !817

; <label>:170                                     ; preds = %166
  %puts31 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #1, !dbg !818
  br label %179, !dbg !818

; <label>:171                                     ; preds = %166
  %172 = fpext float %168 to double, !dbg !819
  %173 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), double %172) #7, !dbg !821
  %174 = load i32* %6, align 8, !dbg !822, !tbaa !607
  switch i32 %174, label %178 [
    i32 1, label %175
    i32 2, label %176
    i32 3, label %177
  ], !dbg !824

; <label>:175                                     ; preds = %171
  %puts30 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str110, i64 0, i64 0)) #1, !dbg !825
  br label %179, !dbg !825

; <label>:176                                     ; preds = %171
  %puts29 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str109, i64 0, i64 0)) #1, !dbg !826
  br label %179, !dbg !826

; <label>:177                                     ; preds = %171
  %puts28 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str108, i64 0, i64 0)) #1, !dbg !828
  br label %179, !dbg !828

; <label>:178                                     ; preds = %171
  %putchar = call i32 @putchar(i32 10) #1, !dbg !830
  br label %179

; <label>:179                                     ; preds = %175, %177, %178, %176, %170
  %180 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0)) #7, !dbg !831
  %181 = load float* %4, align 8, !dbg !832, !tbaa !601
  %182 = fcmp oeq float %181, 0xC7EFFFFFE0000000, !dbg !834
  br i1 %182, label %183, label %184, !dbg !835

; <label>:183                                     ; preds = %179
  %puts27 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #1, !dbg !836
  br label %192, !dbg !836

; <label>:184                                     ; preds = %179
  %185 = fpext float %181 to double, !dbg !837
  %186 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), double %185) #7, !dbg !839
  %187 = load i32* %6, align 8, !dbg !840, !tbaa !607
  switch i32 %187, label %191 [
    i32 1, label %188
    i32 2, label %189
    i32 3, label %190
  ], !dbg !842

; <label>:188                                     ; preds = %184
  %puts26 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str106, i64 0, i64 0)) #1, !dbg !843
  br label %192, !dbg !843

; <label>:189                                     ; preds = %184
  %puts25 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str105, i64 0, i64 0)) #1, !dbg !844
  br label %192, !dbg !844

; <label>:190                                     ; preds = %184
  %puts24 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str104, i64 0, i64 0)) #1, !dbg !846
  br label %192, !dbg !846

; <label>:191                                     ; preds = %184
  %putchar10 = call i32 @putchar(i32 10) #1, !dbg !848
  br label %192

; <label>:192                                     ; preds = %188, %190, %191, %189, %183
  %193 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0)) #7, !dbg !849
  %194 = load double* %2, align 8, !dbg !850, !tbaa !589
  %195 = fcmp oeq double %194, 0x47EFFFFFE0000000, !dbg !852
  br i1 %195, label %196, label %197, !dbg !853

; <label>:196                                     ; preds = %192
  %puts23 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #1, !dbg !854
  br label %199, !dbg !854

; <label>:197                                     ; preds = %192
  %198 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), double %194) #7, !dbg !855
  br label %199

; <label>:199                                     ; preds = %197, %196
  %200 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str47, i64 0, i64 0)) #7, !dbg !856
  %201 = load double* %5, align 8, !dbg !857, !tbaa !604
  %202 = fcmp oeq double %201, 0x47EFFFFFE0000000, !dbg !859
  br i1 %202, label %203, label %204, !dbg !860

; <label>:203                                     ; preds = %199
  %puts22 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #1, !dbg !861
  br label %206, !dbg !861

; <label>:204                                     ; preds = %199
  %205 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str48, i64 0, i64 0), double %201) #7, !dbg !862
  br label %206

; <label>:206                                     ; preds = %204, %203
  %puts = call i32 @puts(i8* getelementptr inbounds ([64 x i8]* @str, i64 0, i64 0)) #1, !dbg !863
  %207 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100) #7, !dbg !864
  call void @llvm.dbg.value(metadata %struct.histogram_s* %207, i64 0, metadata !359, metadata !572), !dbg !865
  %208 = call %struct.tophit_s* @AllocTophits(i32 200) #7, !dbg !866
  call void @llvm.dbg.value(metadata %struct.tophit_s* %208, i64 0, metadata !390, metadata !572), !dbg !867
  %209 = call %struct.tophit_s* @AllocTophits(i32 200) #7, !dbg !868
  call void @llvm.dbg.value(metadata %struct.tophit_s* %209, i64 0, metadata !420, metadata !572), !dbg !869
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %210 = load %struct.plan7_s** %hmm, align 8, !dbg !870, !tbaa !619
  call void @llvm.dbg.value(metadata %struct.threshold_s* %thresh, i64 0, metadata !441, metadata !572), !dbg !796
  %211 = bitcast %struct.p7trace_s** %tr.i to i8*, !dbg !873
  call void @llvm.lifetime.start(i64 8, i8* %211), !dbg !873
  %212 = bitcast i8** %seq.i to i8*, !dbg !873
  call void @llvm.lifetime.start(i64 8, i8* %212), !dbg !873
  call void @llvm.dbg.value(metadata %struct.plan7_s* %210, i64 0, metadata !462, metadata !572) #1, !dbg !873
  call void @llvm.dbg.value(metadata %struct.ReadSeqVars* %128, i64 0, metadata !463, metadata !572) #1, !dbg !875
  call void @llvm.dbg.value(metadata %struct.threshold_s* %thresh, i64 0, metadata !464, metadata !572) #1, !dbg !876
  call void @llvm.dbg.value(metadata i32 %do_forward.0.be, i64 0, metadata !465, metadata !572) #1, !dbg !877
  call void @llvm.dbg.value(metadata i32 %do_null2.0.be, i64 0, metadata !466, metadata !572) #1, !dbg !878
  call void @llvm.dbg.value(metadata i32 %do_xnu.0.be, i64 0, metadata !467, metadata !572) #1, !dbg !879
  call void @llvm.dbg.value(metadata %struct.histogram_s* %207, i64 0, metadata !468, metadata !572) #1, !dbg !880
  call void @llvm.dbg.value(metadata %struct.tophit_s* %208, i64 0, metadata !469, metadata !572) #1, !dbg !881
  call void @llvm.dbg.value(metadata %struct.tophit_s* %209, i64 0, metadata !470, metadata !572) #1, !dbg !882
  %213 = bitcast %struct.seqinfo_s* %sqinfo.i to i8*, !dbg !883
  call void @llvm.lifetime.start(i64 360, i8* %213) #1, !dbg !883
  %214 = getelementptr inbounds %struct.plan7_s* %210, i64 0, i32 20, !dbg !884
  %215 = load i32* %214, align 4, !dbg !884, !tbaa !885
  %216 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %215, i32 25, i32 0) #7, !dbg !886
  call void @llvm.dbg.value(metadata %struct.dpmatrix_s* %216, i64 0, metadata !472, metadata !572) #1, !dbg !887
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !502, metadata !572) #1, !dbg !888
  %217 = getelementptr inbounds %struct.ReadSeqVars* %128, i64 0, i32 20, !dbg !889
  %218 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 5, !dbg !890
  %219 = icmp eq i32 %do_forward.0.lcssa, 0, !dbg !893
  %220 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 1, i64 0, !dbg !895
  %221 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 0, !dbg !898
  %222 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 3, i64 0, !dbg !899
  %223 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 4, i64 0, !dbg !900
  %224 = icmp eq i32 %do_null2.0.lcssa, 0, !dbg !901
  br label %.outer.i, !dbg !904

.outer.i:                                         ; preds = %279, %206
  %nseq.0.ph.i = phi i32 [ %233, %279 ], [ 0, %206 ], !dbg !905
  br label %225, !dbg !905

; <label>:225                                     ; preds = %229, %.outer.i
  %226 = load i32* %217, align 4, !dbg !889, !tbaa !906
  call void @llvm.dbg.value(metadata i8** %seq.i, i64 0, metadata !496, metadata !572) #1, !dbg !909
  call void @llvm.dbg.value(metadata %struct.seqinfo_s* %sqinfo.i, i64 0, metadata !498, metadata !572) #1, !dbg !910
  %227 = call i32 @ReadSeq(%struct.ReadSeqVars* %128, i32 %226, i8** %seq.i, %struct.seqinfo_s* %sqinfo.i) #7, !dbg !911
  %228 = icmp eq i32 %227, 0, !dbg !904
  br i1 %228, label %main_loop_serial.exit, label %229, !dbg !904

; <label>:229                                     ; preds = %225
  %230 = load i32* %218, align 4, !dbg !890, !tbaa !912
  %231 = icmp eq i32 %230, 0, !dbg !914
  br i1 %231, label %225, label %232, !dbg !915

; <label>:232                                     ; preds = %229
  %233 = add nuw nsw i32 %nseq.0.ph.i, 1, !dbg !916
  call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !502, metadata !572) #1, !dbg !888
  call void @llvm.dbg.value(metadata i8** %seq.i, i64 0, metadata !496, metadata !572) #1, !dbg !909
  %234 = load i8** %seq.i, align 8, !dbg !917, !tbaa !619
  %235 = call i8* @DigitizeSequence(i8* %234, i32 %230) #7, !dbg !918
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !497, metadata !572) #1, !dbg !919
  %236 = load i32* @Alphabet_type, align 4, !dbg !905
  %237 = icmp eq i32 %236, 3, !dbg !920
  %or.cond.i = and i1 %146, %237, !dbg !922
  br i1 %or.cond.i, label %238, label %241, !dbg !922

; <label>:238                                     ; preds = %232
  %239 = load i32* %218, align 4, !dbg !923, !tbaa !912
  %240 = call i32 @XNU(i8* %235, i32 %239) #7, !dbg !924
  br label %241, !dbg !924

; <label>:241                                     ; preds = %238, %232
  %242 = load i32* %218, align 4, !dbg !925, !tbaa !912
  %243 = load i32* %214, align 4, !dbg !927, !tbaa !885
  %244 = call i32 @P7ViterbiSize(i32 %242, i32 %243) #7, !dbg !928
  %245 = icmp slt i32 %244, 1001, !dbg !929
  %246 = load i32* %218, align 4, !dbg !930, !tbaa !912
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr.i, i64 0, metadata !488, metadata !572) #1, !dbg !931
  br i1 %245, label %247, label %249, !dbg !932

; <label>:247                                     ; preds = %241
  %248 = call float @P7Viterbi(i8* %235, i32 %246, %struct.plan7_s* %210, %struct.dpmatrix_s* %216, %struct.p7trace_s** %tr.i) #7, !dbg !933
  call void @llvm.dbg.value(metadata float %248, i64 0, metadata !499, metadata !572) #1, !dbg !934
  br label %251, !dbg !935

; <label>:249                                     ; preds = %241
  %250 = call float @P7SmallViterbi(i8* %235, i32 %246, %struct.plan7_s* %210, %struct.dpmatrix_s* %216, %struct.p7trace_s** %tr.i) #7, !dbg !936
  call void @llvm.dbg.value(metadata float %250, i64 0, metadata !499, metadata !572) #1, !dbg !934
  br label %251, !dbg !905

; <label>:251                                     ; preds = %249, %247
  %sc.0.i = phi float [ %248, %247 ], [ %250, %249 ], !dbg !905
  br i1 %219, label %259, label %252, !dbg !937

; <label>:252                                     ; preds = %251
  %253 = load i32* %218, align 4, !dbg !938, !tbaa !912
  %254 = call float @P7Forward(i8* %235, i32 %253, %struct.plan7_s* %210, %struct.dpmatrix_s** null) #7, !dbg !939
  call void @llvm.dbg.value(metadata float %254, i64 0, metadata !499, metadata !572) #1, !dbg !934
  br i1 %224, label %259, label %255, !dbg !940

; <label>:255                                     ; preds = %252
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr.i, i64 0, metadata !488, metadata !572) #1, !dbg !931
  %256 = load %struct.p7trace_s** %tr.i, align 8, !dbg !941, !tbaa !619
  %257 = call float @TraceScoreCorrection(%struct.plan7_s* %210, %struct.p7trace_s* %256, i8* %235) #7, !dbg !942
  %258 = fsub float %254, %257, !dbg !943
  call void @llvm.dbg.value(metadata float %258, i64 0, metadata !499, metadata !572) #1, !dbg !934
  br label %259, !dbg !944

; <label>:259                                     ; preds = %255, %252, %251
  %sc.1.i = phi float [ %258, %255 ], [ %254, %252 ], [ %sc.0.i, %251 ], !dbg !905
  %260 = call double @PValue(%struct.plan7_s* %210, float %sc.1.i) #7, !dbg !945
  call void @llvm.dbg.value(metadata double %260, i64 0, metadata !500, metadata !572) #1, !dbg !946
  %261 = load i32* %7, align 4, !dbg !947, !tbaa !610
  %262 = load float* %3, align 8, !dbg !948, !tbaa !598
  %263 = fcmp ult float %sc.1.i, %262, !dbg !949
  br i1 %263, label %279, label %264, !dbg !950

; <label>:264                                     ; preds = %259
  %265 = icmp eq i32 %261, 0, !dbg !951
  %..i = select i1 %265, i32 %233, i32 %261, !dbg !951
  %.pn.i = sitofp i32 %..i to double, !dbg !952
  %266 = fmul double %260, %.pn.i, !dbg !951
  %267 = load double* %2, align 8, !dbg !953, !tbaa !589
  %268 = fcmp ugt double %266, %267, !dbg !954
  br i1 %268, label %279, label %269, !dbg !955

; <label>:269                                     ; preds = %264
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr.i, i64 0, metadata !488, metadata !572) #1, !dbg !931
  %270 = load %struct.p7trace_s** %tr.i, align 8, !dbg !956, !tbaa !619
  %271 = load i32* %218, align 4, !dbg !957, !tbaa !912
  %272 = load i32* %221, align 8, !dbg !898, !tbaa !958
  %273 = and i32 %272, 4, !dbg !959
  %274 = icmp eq i32 %273, 0, !dbg !959
  %.2.i = select i1 %274, i8* null, i8* %222, !dbg !960
  %275 = and i32 %272, 8, !dbg !961
  %276 = icmp eq i32 %275, 0, !dbg !961
  %277 = select i1 %276, i8* null, i8* %223, !dbg !962
  %278 = call float @PostprocessSignificantHit(%struct.tophit_s* %208, %struct.tophit_s* %209, %struct.p7trace_s* %270, %struct.plan7_s* %210, i8* %235, i32 %271, i8* %220, i8* %.2.i, i8* %277, i32 %do_forward.0.lcssa, float %sc.1.i, i32 %do_null2.0.lcssa, %struct.threshold_s* %thresh, i32 0) #7, !dbg !963
  call void @llvm.dbg.value(metadata float %278, i64 0, metadata !499, metadata !572) #1, !dbg !934
  br label %279, !dbg !964

; <label>:279                                     ; preds = %269, %264, %259
  %sc.2.i = phi float [ %278, %269 ], [ %sc.1.i, %264 ], [ %sc.1.i, %259 ], !dbg !905
  call void @AddToHistogram(%struct.histogram_s* %207, float %sc.2.i) #7, !dbg !965
  call void @llvm.dbg.value(metadata i8** %seq.i, i64 0, metadata !496, metadata !572) #1, !dbg !909
  %280 = load i8** %seq.i, align 8, !dbg !966, !tbaa !619
  call void @llvm.dbg.value(metadata %struct.seqinfo_s* %sqinfo.i, i64 0, metadata !498, metadata !572) #1, !dbg !910
  call void @FreeSequence(i8* %280, %struct.seqinfo_s* %sqinfo.i) #7, !dbg !967
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr.i, i64 0, metadata !488, metadata !572) #1, !dbg !931
  %281 = load %struct.p7trace_s** %tr.i, align 8, !dbg !968, !tbaa !619
  call void @P7FreeTrace(%struct.p7trace_s* %281) #7, !dbg !969
  call void @free(i8* %235) #7, !dbg !970
  br label %.outer.i, !dbg !904

main_loop_serial.exit:                            ; preds = %225
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %216) #7, !dbg !971
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !471, metadata !572), !dbg !972
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !433, metadata !572), !dbg !973
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !433, metadata !572), !dbg !973
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !433, metadata !572), !dbg !973
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !433, metadata !572), !dbg !973
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !433, metadata !572), !dbg !973
  call void @llvm.dbg.value(metadata i32 %nseq.0.ph.i, i64 0, metadata !433, metadata !572), !dbg !973
  call void @llvm.lifetime.end(i64 360, i8* %213) #1, !dbg !974
  call void @llvm.lifetime.end(i64 8, i8* %211), !dbg !974
  call void @llvm.lifetime.end(i64 8, i8* %212), !dbg !974
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %282 = load %struct.plan7_s** %hmm, align 8, !dbg !975, !tbaa !619
  %283 = getelementptr inbounds %struct.plan7_s* %282, i64 0, i32 47, !dbg !977
  %284 = load i32* %283, align 4, !dbg !977, !tbaa !978
  %285 = and i32 %284, 128, !dbg !979
  %286 = icmp eq i32 %285, 0, !dbg !979
  br i1 %286, label %298, label %287, !dbg !980

; <label>:287                                     ; preds = %main_loop_serial.exit
  %288 = getelementptr inbounds %struct.plan7_s* %282, i64 0, i32 45, !dbg !981
  %289 = load float* %288, align 4, !dbg !981, !tbaa !982
  %290 = getelementptr inbounds %struct.plan7_s* %282, i64 0, i32 46, !dbg !983
  %291 = load float* %290, align 4, !dbg !983, !tbaa !984
  %292 = getelementptr inbounds %struct.histogram_s* %207, i64 0, i32 4, !dbg !985
  %293 = load i32* %292, align 4, !dbg !985, !tbaa !986
  %294 = sitofp i32 %293 to float, !dbg !988
  %295 = getelementptr inbounds %struct.histogram_s* %207, i64 0, i32 3, !dbg !989
  %296 = load i32* %295, align 4, !dbg !989, !tbaa !990
  %297 = sitofp i32 %296 to float, !dbg !991
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %207, float %289, float %291, float %294, float %297, i32 0) #7, !dbg !992
  br label %298, !dbg !992

; <label>:298                                     ; preds = %main_loop_serial.exit, %287
  %299 = load i32* %7, align 4, !dbg !993, !tbaa !610
  %300 = icmp eq i32 %299, 0, !dbg !995
  br i1 %300, label %301, label %302, !dbg !996

; <label>:301                                     ; preds = %298
  store i32 %nseq.0.ph.i, i32* %7, align 4, !dbg !997, !tbaa !610
  br label %302, !dbg !998

; <label>:302                                     ; preds = %298, %301
  %303 = icmp eq i32 %be_backwards.0.lcssa, 0, !dbg !999
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %304 = load %struct.plan7_s** %hmm, align 8, !dbg !1001, !tbaa !619
  %305 = getelementptr inbounds %struct.plan7_s* %304, i64 0, i32 0, !dbg !1003
  %306 = load i8** %305, align 8, !dbg !1003, !tbaa !801
  br i1 %303, label %325, label %307, !dbg !1004

; <label>:307                                     ; preds = %302
  %308 = getelementptr inbounds %struct.plan7_s* %304, i64 0, i32 47, !dbg !1005
  %309 = load i32* %308, align 4, !dbg !1005, !tbaa !978
  %310 = and i32 %309, 512, !dbg !1006
  %311 = icmp eq i32 %310, 0, !dbg !1006
  br i1 %311, label %315, label %312, !dbg !1007

; <label>:312                                     ; preds = %307
  %313 = getelementptr inbounds %struct.plan7_s* %304, i64 0, i32 1, !dbg !1008
  %314 = load i8** %313, align 8, !dbg !1008, !tbaa !1009
  br label %315, !dbg !1007

; <label>:315                                     ; preds = %307, %312
  %316 = phi i8* [ %314, %312 ], [ getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), %307 ], !dbg !1007
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %317 = and i32 %309, 2, !dbg !1010
  %318 = icmp eq i32 %317, 0, !dbg !1010
  br i1 %318, label %322, label %319, !dbg !1011

; <label>:319                                     ; preds = %315
  %320 = getelementptr inbounds %struct.plan7_s* %304, i64 0, i32 2, !dbg !1012
  %321 = load i8** %320, align 8, !dbg !1012, !tbaa !1013
  br label %322, !dbg !1011

; <label>:322                                     ; preds = %315, %319
  %323 = phi i8* [ %321, %319 ], [ getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), %315 ], !dbg !1011
  %324 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str50, i64 0, i64 0), i8* %306, i8* %316, i8* %323) #7, !dbg !1014
  br label %349, !dbg !1015

; <label>:325                                     ; preds = %302
  %326 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str52, i64 0, i64 0), i8* %306) #7, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %327 = load %struct.plan7_s** %hmm, align 8, !dbg !1018, !tbaa !619
  %328 = getelementptr inbounds %struct.plan7_s* %327, i64 0, i32 47, !dbg !1019
  %329 = load i32* %328, align 4, !dbg !1019, !tbaa !978
  %330 = and i32 %329, 512, !dbg !1020
  %331 = icmp eq i32 %330, 0, !dbg !1020
  br i1 %331, label %335, label %332, !dbg !1018

; <label>:332                                     ; preds = %325
  %333 = getelementptr inbounds %struct.plan7_s* %327, i64 0, i32 1, !dbg !1021
  %334 = load i8** %333, align 8, !dbg !1021, !tbaa !1009
  br label %335, !dbg !1018

; <label>:335                                     ; preds = %325, %332
  %336 = phi i8* [ %334, %332 ], [ getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0), %325 ], !dbg !1018
  %337 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* %336) #7, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %338 = load %struct.plan7_s** %hmm, align 8, !dbg !1023, !tbaa !619
  %339 = getelementptr inbounds %struct.plan7_s* %338, i64 0, i32 47, !dbg !1024
  %340 = load i32* %339, align 4, !dbg !1024, !tbaa !978
  %341 = and i32 %340, 2, !dbg !1025
  %342 = icmp eq i32 %341, 0, !dbg !1025
  br i1 %342, label %346, label %343, !dbg !1023

; <label>:343                                     ; preds = %335
  %344 = getelementptr inbounds %struct.plan7_s* %338, i64 0, i32 2, !dbg !1026
  %345 = load i8** %344, align 8, !dbg !1026, !tbaa !1013
  br label %346, !dbg !1023

; <label>:346                                     ; preds = %335, %343
  %347 = phi i8* [ %345, %343 ], [ getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0), %335 ], !dbg !1023
  %348 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* %347) #7, !dbg !1027
  br label %349

; <label>:349                                     ; preds = %346, %322
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %350 = load %struct.plan7_s** %hmm, align 8, !dbg !1028, !tbaa !619
  %351 = getelementptr inbounds %struct.plan7_s* %350, i64 0, i32 47, !dbg !1030
  %352 = load i32* %351, align 4, !dbg !1030, !tbaa !978
  %353 = and i32 %352, 128, !dbg !1031
  %354 = icmp eq i32 %353, 0, !dbg !1031
  br i1 %354, label %356, label %355, !dbg !1032

; <label>:355                                     ; preds = %349
  %puts21 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str101, i64 0, i64 0)) #1, !dbg !1033
  br label %357, !dbg !1033

; <label>:356                                     ; preds = %349
  %puts11 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str91, i64 0, i64 0)) #1, !dbg !1034
  br label %357

; <label>:357                                     ; preds = %356, %355
  call void @FullSortTophits(%struct.tophit_s* %208) #7, !dbg !1035
  %358 = call i32 @TophitsMaxName(%struct.tophit_s* %208) #7, !dbg !1036
  %359 = icmp slt i32 %358, 8, !dbg !1036
  br i1 %359, label %362, label %360, !dbg !1036

; <label>:360                                     ; preds = %357
  %361 = call i32 @TophitsMaxName(%struct.tophit_s* %208) #7, !dbg !1036
  br label %362, !dbg !1036

; <label>:362                                     ; preds = %357, %360
  %363 = phi i32 [ %361, %360 ], [ 8, %357 ], !dbg !1036
  call void @llvm.dbg.value(metadata i32 %363, i64 0, metadata !437, metadata !572), !dbg !1037
  %364 = sub nsw i32 52, %363, !dbg !1038
  %365 = icmp sgt i32 %364, 11, !dbg !1038
  %. = select i1 %365, i32 %364, i32 11, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !438, metadata !572), !dbg !1039
  %puts12 = call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str92, i64 0, i64 0)) #1, !dbg !1040
  %366 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str59, i64 0, i64 0), i32 %363, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i32 %., i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0)) #7, !dbg !1041
  %367 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str59, i64 0, i64 0), i32 %363, i8* getelementptr inbounds ([9 x i8]* @.str65, i64 0, i64 0), i32 %., i8* getelementptr inbounds ([12 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str69, i64 0, i64 0)) #7, !dbg !1042
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !572), !dbg !1043
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !572), !dbg !1044
  %368 = getelementptr inbounds %struct.tophit_s* %208, i64 0, i32 3, !dbg !1045
  %369 = load i32* %368, align 4, !dbg !1045, !tbaa !1046
  %370 = icmp sgt i32 %369, 0, !dbg !1048
  br i1 %370, label %.lr.ph61, label %._crit_edge62.thread, !dbg !1049

.lr.ph61:                                         ; preds = %362, %402
  %i.059 = phi i32 [ %403, %402 ], [ 0, %362 ]
  %nreported.058 = phi i32 [ %nreported.1, %402 ], [ 0, %362 ]
  call void @llvm.dbg.value(metadata float* %sc, i64 0, metadata !421, metadata !572), !dbg !1050
  call void @llvm.dbg.value(metadata double* %pvalue, i64 0, metadata !422, metadata !572), !dbg !1051
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !430, metadata !572), !dbg !1052
  call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !431, metadata !572), !dbg !1053
  call void @llvm.dbg.value(metadata i32* %ndom, i64 0, metadata !436, metadata !572), !dbg !1054
  call void @GetRankedHit(%struct.tophit_s* %208, i32 %i.059, double* %pvalue, float* %sc, double* null, float* null, i8** %name, i8** null, i8** %desc, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %ndom, %struct.fancyali_s** null) #7, !dbg !1055
  call void @llvm.dbg.value(metadata double* %pvalue, i64 0, metadata !422, metadata !572), !dbg !1051
  %371 = load double* %pvalue, align 8, !dbg !1056, !tbaa !1057
  %372 = load i32* %7, align 4, !dbg !1058, !tbaa !610
  %373 = sitofp i32 %372 to double, !dbg !1059
  %374 = fmul double %371, %373, !dbg !1060
  call void @llvm.dbg.value(metadata double %374, i64 0, metadata !423, metadata !572), !dbg !1061
  call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !431, metadata !572), !dbg !1053
  %375 = load i8** %desc, align 8, !dbg !1062, !tbaa !619
  %376 = icmp eq i8* %375, null, !dbg !1064
  br i1 %376, label %385, label %377, !dbg !1065

; <label>:377                                     ; preds = %.lr.ph61
  %378 = call i64 @strlen(i8* %375) #7, !dbg !1066
  %379 = icmp ult i64 %378, 80, !dbg !1067
  br i1 %379, label %380, label %385, !dbg !1068

; <label>:380                                     ; preds = %377
  %381 = call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str70, i64 0, i64 0), i32 435, i64 80) #7, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %381, i64 0, metadata !453, metadata !572), !dbg !1071
  call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !431, metadata !572), !dbg !1053
  %382 = load i8** %desc, align 8, !dbg !1072, !tbaa !619
  %383 = call i64 @llvm.objectsize.i64.p0i8(i8* %381, i1 false), !dbg !1072
  %384 = call i8* @__strcpy_chk(i8* %381, i8* %382, i64 %383) #7, !dbg !1072
  br label %387, !dbg !1073

; <label>:385                                     ; preds = %.lr.ph61, %377
  call void @llvm.dbg.value(metadata i8** %desc, i64 0, metadata !431, metadata !572), !dbg !1053
  %386 = call i8* @Strdup(i8* %375) #7, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %386, i64 0, metadata !453, metadata !572), !dbg !1071
  br label %387

; <label>:387                                     ; preds = %385, %380
  %safedesc.0 = phi i8* [ %381, %380 ], [ %386, %385 ]
  %388 = load double* %2, align 8, !dbg !1075, !tbaa !589
  %389 = fcmp ugt double %374, %388, !dbg !1077
  br i1 %389, label %402, label %390, !dbg !1078

; <label>:390                                     ; preds = %387
  call void @llvm.dbg.value(metadata float* %sc, i64 0, metadata !421, metadata !572), !dbg !1050
  %391 = load float* %sc, align 4, !dbg !1079, !tbaa !1080
  %392 = load float* %3, align 8, !dbg !1081, !tbaa !598
  %393 = fcmp ult float %391, %392, !dbg !1082
  br i1 %393, label %402, label %394, !dbg !1083

; <label>:394                                     ; preds = %390
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !430, metadata !572), !dbg !1052
  %395 = load i8** %name, align 8, !dbg !1084, !tbaa !619
  %396 = icmp ne i8* %safedesc.0, null, !dbg !1086
  %397 = select i1 %396, i8* %safedesc.0, i8* getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), !dbg !1087
  %398 = fpext float %391 to double, !dbg !1088
  call void @llvm.dbg.value(metadata i32* %ndom, i64 0, metadata !436, metadata !572), !dbg !1054
  %399 = load i32* %ndom, align 4, !dbg !1089, !tbaa !736
  %400 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str71, i64 0, i64 0), i32 %363, i8* %395, i32 %., i32 %., i8* %397, double %398, double %374, i32 %399) #7, !dbg !1090
  %401 = add nsw i32 %nreported.058, 1, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %401, i64 0, metadata !439, metadata !572), !dbg !1044
  br label %402, !dbg !1092

; <label>:402                                     ; preds = %390, %387, %394
  %nreported.1 = phi i32 [ %401, %394 ], [ %nreported.058, %390 ], [ %nreported.058, %387 ]
  call void @free(i8* %safedesc.0) #9, !dbg !1093
  %403 = add nuw nsw i32 %i.059, 1, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %403, i64 0, metadata !357, metadata !572), !dbg !1043
  %404 = load i32* %368, align 4, !dbg !1045, !tbaa !1046
  %405 = icmp slt i32 %403, %404, !dbg !1048
  br i1 %405, label %.lr.ph61, label %._crit_edge62, !dbg !1049

._crit_edge62:                                    ; preds = %402
  %406 = icmp eq i32 %nreported.1, 0, !dbg !1095
  br i1 %406, label %._crit_edge62.thread, label %407, !dbg !1097

._crit_edge62.thread:                             ; preds = %362, %._crit_edge62
  %puts20 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #1, !dbg !1098
  br label %407, !dbg !1098

; <label>:407                                     ; preds = %._crit_edge62.thread, %._crit_edge62
  call void @FullSortTophits(%struct.tophit_s* %209) #7, !dbg !1099
  %408 = call i32 @TophitsMaxName(%struct.tophit_s* %209) #7, !dbg !1100
  %409 = icmp slt i32 %408, 8, !dbg !1100
  br i1 %409, label %412, label %410, !dbg !1100

; <label>:410                                     ; preds = %407
  %411 = call i32 @TophitsMaxName(%struct.tophit_s* %209) #7, !dbg !1100
  br label %412, !dbg !1100

; <label>:412                                     ; preds = %407, %410
  %413 = phi i32 [ %411, %410 ], [ 8, %407 ], !dbg !1100
  call void @llvm.dbg.value(metadata i32 %413, i64 0, metadata !437, metadata !572), !dbg !1037
  %puts13 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str93, i64 0, i64 0)) #1, !dbg !1101
  %414 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str74, i64 0, i64 0), i32 %413, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0)) #7, !dbg !1102
  %415 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str74, i64 0, i64 0), i32 %413, i8* getelementptr inbounds ([9 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0)) #7, !dbg !1103
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !572), !dbg !1043
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !572), !dbg !1044
  %416 = getelementptr inbounds %struct.tophit_s* %209, i64 0, i32 3, !dbg !1104
  %417 = load i32* %416, align 4, !dbg !1104, !tbaa !1046
  %418 = icmp sgt i32 %417, 0, !dbg !1107
  br i1 %418, label %.lr.ph54, label %._crit_edge55.thread, !dbg !1108

.lr.ph54:                                         ; preds = %412, %460
  %i.152 = phi i32 [ %461, %460 ], [ 0, %412 ]
  %nreported.251 = phi i32 [ %nreported.3, %460 ], [ 0, %412 ]
  call void @llvm.dbg.value(metadata float* %sc, i64 0, metadata !421, metadata !572), !dbg !1050
  call void @llvm.dbg.value(metadata double* %pvalue, i64 0, metadata !422, metadata !572), !dbg !1051
  call void @llvm.dbg.value(metadata double* %motherp, i64 0, metadata !424, metadata !572), !dbg !1109
  call void @llvm.dbg.value(metadata float* %mothersc, i64 0, metadata !425, metadata !572), !dbg !1110
  call void @llvm.dbg.value(metadata i32* %sqfrom, i64 0, metadata !426, metadata !572), !dbg !1111
  call void @llvm.dbg.value(metadata i32* %sqto, i64 0, metadata !427, metadata !572), !dbg !1112
  call void @llvm.dbg.value(metadata i32* %hmmfrom, i64 0, metadata !428, metadata !572), !dbg !1113
  call void @llvm.dbg.value(metadata i32* %hmmto, i64 0, metadata !429, metadata !572), !dbg !1114
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !430, metadata !572), !dbg !1052
  call void @llvm.dbg.value(metadata i32* %sqlen, i64 0, metadata !432, metadata !572), !dbg !1115
  call void @llvm.dbg.value(metadata i32* %domidx, i64 0, metadata !435, metadata !572), !dbg !1116
  call void @llvm.dbg.value(metadata i32* %ndom, i64 0, metadata !436, metadata !572), !dbg !1054
  call void @GetRankedHit(%struct.tophit_s* %209, i32 %i.152, double* %pvalue, float* %sc, double* %motherp, float* %mothersc, i8** %name, i8** null, i8** null, i32* %sqfrom, i32* %sqto, i32* %sqlen, i32* %hmmfrom, i32* %hmmto, i32* null, i32* %domidx, i32* %ndom, %struct.fancyali_s** null) #7, !dbg !1117
  call void @llvm.dbg.value(metadata double* %pvalue, i64 0, metadata !422, metadata !572), !dbg !1051
  %419 = load double* %pvalue, align 8, !dbg !1119, !tbaa !1057
  %420 = load i32* %7, align 4, !dbg !1120, !tbaa !610
  %421 = sitofp i32 %420 to double, !dbg !1121
  %422 = fmul double %419, %421, !dbg !1122
  call void @llvm.dbg.value(metadata double %422, i64 0, metadata !423, metadata !572), !dbg !1061
  call void @llvm.dbg.value(metadata double* %motherp, i64 0, metadata !424, metadata !572), !dbg !1109
  %423 = load double* %motherp, align 8, !dbg !1123, !tbaa !1057
  %424 = fmul double %423, %421, !dbg !1125
  %425 = load double* %2, align 8, !dbg !1126, !tbaa !589
  %426 = fcmp ogt double %424, %425, !dbg !1127
  br i1 %426, label %460, label %427, !dbg !1128

; <label>:427                                     ; preds = %.lr.ph54
  call void @llvm.dbg.value(metadata float* %mothersc, i64 0, metadata !425, metadata !572), !dbg !1110
  %428 = load float* %mothersc, align 4, !dbg !1129, !tbaa !1080
  %429 = load float* %3, align 8, !dbg !1130, !tbaa !598
  %430 = fcmp olt float %428, %429, !dbg !1131
  %431 = load double* %5, align 8
  %432 = fcmp ugt double %422, %431, !dbg !1132
  %or.cond = or i1 %430, %432, !dbg !1134
  br i1 %or.cond, label %460, label %433, !dbg !1134

; <label>:433                                     ; preds = %427
  call void @llvm.dbg.value(metadata float* %sc, i64 0, metadata !421, metadata !572), !dbg !1050
  %434 = load float* %sc, align 4, !dbg !1135, !tbaa !1080
  %435 = load float* %4, align 8, !dbg !1136, !tbaa !601
  %436 = fcmp ult float %434, %435, !dbg !1137
  br i1 %436, label %460, label %437, !dbg !1138

; <label>:437                                     ; preds = %433
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !430, metadata !572), !dbg !1052
  %438 = load i8** %name, align 8, !dbg !1139, !tbaa !619
  call void @llvm.dbg.value(metadata i32* %domidx, i64 0, metadata !435, metadata !572), !dbg !1116
  %439 = load i32* %domidx, align 4, !dbg !1141, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %ndom, i64 0, metadata !436, metadata !572), !dbg !1054
  %440 = load i32* %ndom, align 4, !dbg !1142, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %sqfrom, i64 0, metadata !426, metadata !572), !dbg !1111
  %441 = load i32* %sqfrom, align 4, !dbg !1143, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %sqto, i64 0, metadata !427, metadata !572), !dbg !1112
  %442 = load i32* %sqto, align 4, !dbg !1144, !tbaa !736
  %443 = icmp eq i32 %441, 1, !dbg !1145
  %444 = select i1 %443, i32 91, i32 46, !dbg !1146
  call void @llvm.dbg.value(metadata i32* %sqlen, i64 0, metadata !432, metadata !572), !dbg !1115
  %445 = load i32* %sqlen, align 4, !dbg !1147, !tbaa !736
  %446 = icmp eq i32 %442, %445, !dbg !1148
  %447 = select i1 %446, i32 93, i32 46, !dbg !1149
  call void @llvm.dbg.value(metadata i32* %hmmfrom, i64 0, metadata !428, metadata !572), !dbg !1113
  %448 = load i32* %hmmfrom, align 4, !dbg !1150, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %hmmto, i64 0, metadata !429, metadata !572), !dbg !1114
  %449 = load i32* %hmmto, align 4, !dbg !1151, !tbaa !736
  %450 = icmp eq i32 %448, 1, !dbg !1152
  %451 = select i1 %450, i32 91, i32 46, !dbg !1153
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %452 = load %struct.plan7_s** %hmm, align 8, !dbg !1154, !tbaa !619
  %453 = getelementptr inbounds %struct.plan7_s* %452, i64 0, i32 20, !dbg !1155
  %454 = load i32* %453, align 4, !dbg !1155, !tbaa !885
  %455 = icmp eq i32 %449, %454, !dbg !1156
  %456 = select i1 %455, i32 93, i32 46, !dbg !1157
  %457 = fpext float %434 to double, !dbg !1158
  %458 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str81, i64 0, i64 0), i32 %413, i8* %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %444, i32 %447, i32 %448, i32 %449, i32 %451, i32 %456, double %457, double %422) #7, !dbg !1159
  %459 = add nsw i32 %nreported.251, 1, !dbg !1160
  call void @llvm.dbg.value(metadata i32 %459, i64 0, metadata !439, metadata !572), !dbg !1044
  br label %460, !dbg !1161

; <label>:460                                     ; preds = %433, %437, %.lr.ph54, %427
  %nreported.3 = phi i32 [ %nreported.251, %.lr.ph54 ], [ %nreported.251, %427 ], [ %459, %437 ], [ %nreported.251, %433 ]
  %461 = add nuw nsw i32 %i.152, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %461, i64 0, metadata !357, metadata !572), !dbg !1043
  %462 = load i32* %416, align 4, !dbg !1104, !tbaa !1046
  %463 = icmp slt i32 %461, %462, !dbg !1107
  br i1 %463, label %.lr.ph54, label %._crit_edge55, !dbg !1108

._crit_edge55:                                    ; preds = %460
  %464 = icmp eq i32 %nreported.3, 0, !dbg !1163
  br i1 %464, label %._crit_edge55.thread, label %465, !dbg !1165

._crit_edge55.thread:                             ; preds = %412, %._crit_edge55
  %puts19 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #1, !dbg !1166
  br label %465, !dbg !1166

; <label>:465                                     ; preds = %._crit_edge55.thread, %._crit_edge55
  %466 = icmp eq i32 %Alimit.0.lcssa, 0, !dbg !1167
  br i1 %466, label %508, label %467, !dbg !1169

; <label>:467                                     ; preds = %465
  %puts17 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str97, i64 0, i64 0)) #1, !dbg !1170
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !572), !dbg !1043
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !572), !dbg !1044
  %468 = load i32* %416, align 4, !dbg !1172, !tbaa !1046
  %469 = icmp slt i32 %468, 1, !dbg !1175
  br i1 %469, label %._crit_edge.thread.thread, label %.lr.ph, !dbg !1176

._crit_edge.thread.thread:                        ; preds = %467
  %puts1888 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #1, !dbg !1177
  br label %508, !dbg !1179

.lr.ph:                                           ; preds = %467, %499
  %i.249 = phi i32 [ %500, %499 ], [ 0, %467 ]
  %nreported.448 = phi i32 [ %nreported.5, %499 ], [ 0, %467 ]
  call void @llvm.dbg.value(metadata %struct.fancyali_s** %ali, i64 0, metadata !376, metadata !572), !dbg !1180
  call void @llvm.dbg.value(metadata float* %sc, i64 0, metadata !421, metadata !572), !dbg !1050
  call void @llvm.dbg.value(metadata double* %pvalue, i64 0, metadata !422, metadata !572), !dbg !1051
  call void @llvm.dbg.value(metadata double* %motherp, i64 0, metadata !424, metadata !572), !dbg !1109
  call void @llvm.dbg.value(metadata float* %mothersc, i64 0, metadata !425, metadata !572), !dbg !1110
  call void @llvm.dbg.value(metadata i32* %sqfrom, i64 0, metadata !426, metadata !572), !dbg !1111
  call void @llvm.dbg.value(metadata i32* %sqto, i64 0, metadata !427, metadata !572), !dbg !1112
  call void @llvm.dbg.value(metadata i32* %hmmfrom, i64 0, metadata !428, metadata !572), !dbg !1113
  call void @llvm.dbg.value(metadata i32* %hmmto, i64 0, metadata !429, metadata !572), !dbg !1114
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !430, metadata !572), !dbg !1052
  call void @llvm.dbg.value(metadata i32* %sqlen, i64 0, metadata !432, metadata !572), !dbg !1115
  call void @llvm.dbg.value(metadata i32* %domidx, i64 0, metadata !435, metadata !572), !dbg !1116
  call void @llvm.dbg.value(metadata i32* %ndom, i64 0, metadata !436, metadata !572), !dbg !1054
  call void @GetRankedHit(%struct.tophit_s* %209, i32 %i.249, double* %pvalue, float* %sc, double* %motherp, float* %mothersc, i8** %name, i8** null, i8** null, i32* %sqfrom, i32* %sqto, i32* %sqlen, i32* %hmmfrom, i32* %hmmto, i32* null, i32* %domidx, i32* %ndom, %struct.fancyali_s** %ali) #7, !dbg !1181
  call void @llvm.dbg.value(metadata double* %pvalue, i64 0, metadata !422, metadata !572), !dbg !1051
  %470 = load double* %pvalue, align 8, !dbg !1183, !tbaa !1057
  %471 = load i32* %7, align 4, !dbg !1184, !tbaa !610
  %472 = sitofp i32 %471 to double, !dbg !1185
  %473 = fmul double %470, %472, !dbg !1186
  call void @llvm.dbg.value(metadata double %473, i64 0, metadata !423, metadata !572), !dbg !1061
  call void @llvm.dbg.value(metadata double* %motherp, i64 0, metadata !424, metadata !572), !dbg !1109
  %474 = load double* %motherp, align 8, !dbg !1187, !tbaa !1057
  %475 = fmul double %474, %472, !dbg !1189
  %476 = load double* %2, align 8, !dbg !1190, !tbaa !589
  %477 = fcmp ogt double %475, %476, !dbg !1191
  br i1 %477, label %499, label %478, !dbg !1192

; <label>:478                                     ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata float* %mothersc, i64 0, metadata !425, metadata !572), !dbg !1110
  %479 = load float* %mothersc, align 4, !dbg !1193, !tbaa !1080
  %480 = load float* %3, align 8, !dbg !1194, !tbaa !598
  %481 = fcmp olt float %479, %480, !dbg !1195
  %482 = load double* %5, align 8
  %483 = fcmp ugt double %473, %482, !dbg !1196
  %or.cond36 = or i1 %481, %483, !dbg !1198
  br i1 %or.cond36, label %499, label %484, !dbg !1198

; <label>:484                                     ; preds = %478
  call void @llvm.dbg.value(metadata float* %sc, i64 0, metadata !421, metadata !572), !dbg !1050
  %485 = load float* %sc, align 4, !dbg !1199, !tbaa !1080
  %486 = load float* %4, align 8, !dbg !1200, !tbaa !601
  %487 = fcmp ult float %485, %486, !dbg !1201
  br i1 %487, label %499, label %488, !dbg !1202

; <label>:488                                     ; preds = %484
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !430, metadata !572), !dbg !1052
  %489 = load i8** %name, align 8, !dbg !1203, !tbaa !619
  call void @llvm.dbg.value(metadata i32* %domidx, i64 0, metadata !435, metadata !572), !dbg !1116
  %490 = load i32* %domidx, align 4, !dbg !1205, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %ndom, i64 0, metadata !436, metadata !572), !dbg !1054
  %491 = load i32* %ndom, align 4, !dbg !1206, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %sqfrom, i64 0, metadata !426, metadata !572), !dbg !1111
  %492 = load i32* %sqfrom, align 4, !dbg !1207, !tbaa !736
  call void @llvm.dbg.value(metadata i32* %sqto, i64 0, metadata !427, metadata !572), !dbg !1112
  %493 = load i32* %sqto, align 4, !dbg !1208, !tbaa !736
  %494 = fpext float %485 to double, !dbg !1209
  %495 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str83, i64 0, i64 0), i8* %489, i32 %490, i32 %491, i32 %492, i32 %493, double %494, double %473) #7, !dbg !1210
  %496 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1211, !tbaa !619
  call void @llvm.dbg.value(metadata %struct.fancyali_s** %ali, i64 0, metadata !376, metadata !572), !dbg !1180
  %497 = load %struct.fancyali_s** %ali, align 8, !dbg !1212, !tbaa !619
  call void @PrintFancyAli(%struct.__sFILE* %496, %struct.fancyali_s* %497) #7, !dbg !1213
  %498 = add nsw i32 %nreported.448, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %498, i64 0, metadata !439, metadata !572), !dbg !1044
  br label %499, !dbg !1215

; <label>:499                                     ; preds = %484, %488, %.lr.ph, %478
  %nreported.5 = phi i32 [ %nreported.448, %.lr.ph ], [ %nreported.448, %478 ], [ %498, %488 ], [ %nreported.448, %484 ]
  %500 = add nuw nsw i32 %i.249, 1, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %500, i64 0, metadata !357, metadata !572), !dbg !1043
  %501 = load i32* %416, align 4, !dbg !1172, !tbaa !1046
  %502 = icmp sge i32 %500, %501, !dbg !1175
  %503 = icmp eq i32 %nreported.5, %Alimit.0.lcssa, !dbg !1217
  %or.cond34 = or i1 %503, %502, !dbg !1176
  br i1 %or.cond34, label %._crit_edge, label %.lr.ph, !dbg !1176

._crit_edge:                                      ; preds = %499
  %504 = icmp eq i32 %nreported.5, 0, !dbg !1219
  br i1 %504, label %._crit_edge.thread, label %505, !dbg !1220

._crit_edge.thread:                               ; preds = %._crit_edge
  %puts18 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #1, !dbg !1177
  br i1 %503, label %506, label %508, !dbg !1179

; <label>:505                                     ; preds = %._crit_edge
  br i1 %503, label %506, label %508, !dbg !1179

; <label>:506                                     ; preds = %._crit_edge.thread, %505
  %507 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str84, i64 0, i64 0), i32 %Alimit.0.lcssa) #7, !dbg !1221
  br label %508, !dbg !1221

; <label>:508                                     ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %465, %505, %506
  %puts14 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str94, i64 0, i64 0)) #1, !dbg !1223
  %509 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1224, !tbaa !619
  call void @PrintASCIIHistogram(%struct.__sFILE* %509, %struct.histogram_s* %207) #7, !dbg !1225
  %510 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str86, i64 0, i64 0), i32 %nseq.0.ph.i) #7, !dbg !1226
  %puts15 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str95, i64 0, i64 0)) #1, !dbg !1227
  %511 = load double* %2, align 8, !dbg !1228, !tbaa !589
  call void @TophitsReport(%struct.tophit_s* %208, double %511, i32 %nseq.0.ph.i) #7, !dbg !1229
  %puts16 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str96, i64 0, i64 0)) #1, !dbg !1230
  %512 = load double* %5, align 8, !dbg !1231, !tbaa !604
  call void @TophitsReport(%struct.tophit_s* %209, double %512, i32 %nseq.0.ph.i) #7, !dbg !1232
  %513 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str86, i64 0, i64 0), i32 %nseq.0.ph.i) #7, !dbg !1233
  call void @FreeHistogram(%struct.histogram_s* %207) #7, !dbg !1234
  call void @HMMFileClose(%struct.hmmfile_s* %132) #7, !dbg !1235
  call void @SeqfileClose(%struct.ReadSeqVars* %128) #7, !dbg !1236
  call void @FreeTophits(%struct.tophit_s* %208) #7, !dbg !1237
  call void @FreeTophits(%struct.tophit_s* %209) #7, !dbg !1238
  call void @llvm.dbg.value(metadata %struct.plan7_s** %hmm, i64 0, metadata !358, metadata !572), !dbg !776
  %514 = load %struct.plan7_s** %hmm, align 8, !dbg !1239, !tbaa !619
  call void @FreePlan7(%struct.plan7_s* %514) #7, !dbg !1240
  call void @SqdClean() #7, !dbg !1241
  call void @llvm.lifetime.end(i64 40, i8* %1) #1, !dbg !1242
  ret i32 0, !dbg !1242
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

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
declare void @HMMERBanner(%struct.__sFILE*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: noreturn optsize
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
declare i32 @printf(i8* nocapture readonly, ...) #4

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

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: optsize
declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare void @PrintFancyAli(%struct.__sFILE*, %struct.fancyali_s*) #2

; Function Attrs: optsize
declare void @PrintASCIIHistogram(%struct.__sFILE*, %struct.histogram_s*) #2

; Function Attrs: optsize
declare void @TophitsReport(%struct.tophit_s*, double, i32) #2

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

; Function Attrs: optsize
declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!568, !569, !570}
!llvm.ident = !{!571}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !21, subprograms: !23, globals: !530, imports: !567)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/hmmsearch.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 524, size: 32, align: 32, elements: !16)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "threshold_s", file: !4, line: 518, size: 320, align: 64, elements: !6)
!6 = !{!7, !9, !11, !12, !13, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "globT", scope: !5, file: !4, line: 519, baseType: !8, size: 32, align: 32)
!8 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "globE", scope: !5, file: !4, line: 520, baseType: !10, size: 64, align: 64, offset: 64)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "domT", scope: !5, file: !4, line: 521, baseType: !8, size: 32, align: 32, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "domE", scope: !5, file: !4, line: 522, baseType: !10, size: 64, align: 64, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "autocut", scope: !5, file: !4, line: 524, baseType: !3, size: 32, align: 32, offset: 256)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "Z", scope: !5, file: !4, line: 525, baseType: !15, size: 32, align: 32, offset: 288)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "CUT_NONE", value: 0)
!18 = !DIEnumerator(name: "CUT_GA", value: 1)
!19 = !DIEnumerator(name: "CUT_NC", value: 2)
!20 = !DIEnumerator(name: "CUT_TC", value: 3)
!21 = !{!22, !10}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !{!24, !457, !503, !515}
!24 = !DISubprogram(name: "main", scope: !1, file: !1, line: 154, type: !25, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{!15, !15, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!30 = !{!31, !32, !33, !34, !218, !219, !356, !357, !358, !359, !376, !390, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !24, file: !1, line: 154, type: !15)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !24, file: !1, line: 154, type: !27)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmmfile", scope: !24, file: !1, line: 156, type: !28)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmmfp", scope: !24, file: !1, line: 157, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMMFILE", file: !4, line: 350, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "hmmfile_s", file: !4, line: 332, size: 448, align: 64, elements: !38)
!38 = !{!39, !100, !144, !213, !214, !215, !216, !217}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !37, file: !4, line: 333, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !42, line: 153, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !42, line: 122, size: 1216, align: 64, elements: !44)
!44 = !{!45, !48, !49, !50, !52, !53, !58, !59, !60, !64, !68, !78, !84, !85, !88, !89, !93, !97, !98, !99}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !43, file: !42, line: 123, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !43, file: !42, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !43, file: !42, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !42, line: 126, baseType: !51, size: 16, align: 16, offset: 128)
!51 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !43, file: !42, line: 127, baseType: !51, size: 16, align: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !43, file: !42, line: 128, baseType: !54, size: 128, align: 64, offset: 192)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !42, line: 88, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !54, file: !42, line: 89, baseType: !46, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !54, file: !42, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !43, file: !42, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !43, file: !42, line: 132, baseType: !22, size: 64, align: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !43, file: !42, line: 133, baseType: !61, size: 64, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!15, !22}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !43, file: !42, line: 134, baseType: !65, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!15, !22, !28, !15}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !43, file: !42, line: 135, baseType: !69, size: 64, align: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !22, !72, !15}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !42, line: 77, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !74, line: 71, baseType: !75)
!74 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !43, file: !42, line: 136, baseType: !79, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!15, !22, !82, !15}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !43, file: !42, line: 139, baseType: !54, size: 128, align: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !43, file: !42, line: 140, baseType: !86, size: 64, align: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !42, line: 94, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !43, file: !42, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !43, file: !42, line: 144, baseType: !90, size: 24, align: 8, offset: 928)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !43, file: !42, line: 145, baseType: !94, size: 8, align: 8, offset: 952)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !43, file: !42, line: 148, baseType: !54, size: 128, align: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !43, file: !42, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !42, line: 152, baseType: !72, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !37, file: !4, line: 334, baseType: !101, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIFILE", file: !103, line: 76, baseType: !104)
!103 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/ssi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssifile_s", file: !103, line: 49, size: 1152, align: 64, elements: !105)
!105 = !{!106, !107, !111, !114, !115, !116, !117, !118, !119, !120, !121, !122, !134, !135, !136, !137, !138, !139, !141, !142, !143}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !104, file: !103, line: 50, baseType: !40, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !103, line: 51, baseType: !108, size: 32, align: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !109, line: 41, baseType: !110)
!109 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!110 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !104, file: !103, line: 52, baseType: !112, size: 16, align: 16, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !109, line: 40, baseType: !113)
!113 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nprimary", scope: !104, file: !103, line: 53, baseType: !108, size: 32, align: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "nsecondary", scope: !104, file: !103, line: 54, baseType: !108, size: 32, align: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flen", scope: !104, file: !103, line: 55, baseType: !108, size: 32, align: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !104, file: !103, line: 56, baseType: !108, size: 32, align: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !104, file: !103, line: 57, baseType: !108, size: 32, align: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "frecsize", scope: !104, file: !103, line: 58, baseType: !108, size: 32, align: 32, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "precsize", scope: !104, file: !103, line: 59, baseType: !108, size: 32, align: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "srecsize", scope: !104, file: !103, line: 60, baseType: !108, size: 32, align: 32, offset: 352)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "foffset", scope: !104, file: !103, line: 61, baseType: !123, size: 128, align: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIOFFSET", file: !103, line: 42, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssioffset_s", file: !103, line: 35, size: 128, align: 64, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !124, file: !103, line: 36, baseType: !29, size: 8, align: 8)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !124, file: !103, line: 40, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !103, line: 37, size: 64, align: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !128, file: !103, line: 38, baseType: !108, size: 32, align: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !128, file: !103, line: 39, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !109, line: 42, baseType: !133)
!133 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !104, file: !103, line: 62, baseType: !123, size: 128, align: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !104, file: !103, line: 63, baseType: !123, size: 128, align: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !104, file: !103, line: 65, baseType: !29, size: 8, align: 8, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !104, file: !103, line: 66, baseType: !29, size: 8, align: 8, offset: 776)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !104, file: !103, line: 70, baseType: !27, size: 64, align: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !104, file: !103, line: 71, baseType: !140, size: 64, align: 64, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !104, file: !103, line: 72, baseType: !140, size: 64, align: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !104, file: !103, line: 73, baseType: !140, size: 64, align: 64, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !104, file: !103, line: 74, baseType: !140, size: 64, align: 64, offset: 1088)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !37, file: !4, line: 335, baseType: !145, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!15, !148, !149}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !4, line: 101, size: 3712, align: 64, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !178, !179, !180, !181, !186, !187, !188, !192, !193, !195, !196, !197, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !4, line: 113, baseType: !28, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !151, file: !4, line: 114, baseType: !28, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !151, file: !4, line: 115, baseType: !28, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !151, file: !4, line: 116, baseType: !28, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !151, file: !4, line: 117, baseType: !28, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !151, file: !4, line: 118, baseType: !28, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !151, file: !4, line: 119, baseType: !28, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !151, file: !4, line: 120, baseType: !15, size: 32, align: 32, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !151, file: !4, line: 121, baseType: !28, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !151, file: !4, line: 122, baseType: !163, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !151, file: !4, line: 123, baseType: !15, size: 32, align: 32, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !151, file: !4, line: 134, baseType: !163, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !151, file: !4, line: 135, baseType: !163, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !151, file: !4, line: 136, baseType: !163, size: 64, align: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !151, file: !4, line: 144, baseType: !8, size: 32, align: 32, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !151, file: !4, line: 144, baseType: !8, size: 32, align: 32, offset: 928)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !151, file: !4, line: 145, baseType: !8, size: 32, align: 32, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !151, file: !4, line: 145, baseType: !8, size: 32, align: 32, offset: 992)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !151, file: !4, line: 146, baseType: !8, size: 32, align: 32, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !151, file: !4, line: 146, baseType: !8, size: 32, align: 32, offset: 1056)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !151, file: !4, line: 155, baseType: !15, size: 32, align: 32, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !151, file: !4, line: 156, baseType: !176, size: 64, align: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !151, file: !4, line: 157, baseType: !176, size: 64, align: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !151, file: !4, line: 158, baseType: !176, size: 64, align: 64, offset: 1280)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !151, file: !4, line: 159, baseType: !8, size: 32, align: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !151, file: !4, line: 168, baseType: !182, size: 256, align: 32, offset: 1376)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, align: 32, elements: !183)
!183 = !{!184, !185}
!184 = !DISubrange(count: 4)
!185 = !DISubrange(count: 2)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !151, file: !4, line: 169, baseType: !177, size: 64, align: 64, offset: 1664)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !151, file: !4, line: 170, baseType: !177, size: 64, align: 64, offset: 1728)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !151, file: !4, line: 174, baseType: !189, size: 640, align: 32, offset: 1792)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, align: 32, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 20)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !151, file: !4, line: 175, baseType: !8, size: 32, align: 32, offset: 2432)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !151, file: !4, line: 197, baseType: !194, size: 64, align: 64, offset: 2496)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !151, file: !4, line: 198, baseType: !194, size: 64, align: 64, offset: 2560)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !151, file: !4, line: 199, baseType: !194, size: 64, align: 64, offset: 2624)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !151, file: !4, line: 200, baseType: !198, size: 256, align: 32, offset: 2688)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, align: 32, elements: !183)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !151, file: !4, line: 201, baseType: !163, size: 64, align: 64, offset: 2944)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !151, file: !4, line: 202, baseType: !163, size: 64, align: 64, offset: 3008)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !151, file: !4, line: 203, baseType: !163, size: 64, align: 64, offset: 3072)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !151, file: !4, line: 203, baseType: !163, size: 64, align: 64, offset: 3136)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !151, file: !4, line: 203, baseType: !163, size: 64, align: 64, offset: 3200)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !151, file: !4, line: 203, baseType: !163, size: 64, align: 64, offset: 3264)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !151, file: !4, line: 203, baseType: !163, size: 64, align: 64, offset: 3328)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !151, file: !4, line: 214, baseType: !194, size: 64, align: 64, offset: 3392)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !151, file: !4, line: 215, baseType: !194, size: 64, align: 64, offset: 3456)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !151, file: !4, line: 216, baseType: !15, size: 32, align: 32, offset: 3520)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !151, file: !4, line: 217, baseType: !15, size: 32, align: 32, offset: 3552)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !151, file: !4, line: 222, baseType: !8, size: 32, align: 32, offset: 3584)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !151, file: !4, line: 223, baseType: !8, size: 32, align: 32, offset: 3616)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !4, line: 225, baseType: !15, size: 32, align: 32, offset: 3648)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_binary", scope: !37, file: !4, line: 336, baseType: !15, size: 32, align: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "byteswap", scope: !37, file: !4, line: 337, baseType: !15, size: 32, align: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !37, file: !4, line: 346, baseType: !15, size: 32, align: 32, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !37, file: !4, line: 347, baseType: !15, size: 32, align: 32, offset: 288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !37, file: !4, line: 348, baseType: !123, size: 128, align: 64, offset: 320)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqfile", scope: !24, file: !1, line: 158, type: !28)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqfp", scope: !24, file: !1, line: 159, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "SQFILE", file: !109, line: 240, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "ReadSeqVars", file: !109, line: 197, size: 1408, align: 64, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !263, !264, !265, !266, !267, !268, !269, !342}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !222, file: !109, line: 198, baseType: !40, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !222, file: !109, line: 199, baseType: !28, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !222, file: !109, line: 200, baseType: !15, size: 32, align: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !222, file: !109, line: 202, baseType: !28, size: 64, align: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !222, file: !109, line: 203, baseType: !15, size: 32, align: 32, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ssimode", scope: !222, file: !109, line: 205, baseType: !15, size: 32, align: 32, offset: 288)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ssioffset", scope: !222, file: !109, line: 206, baseType: !123, size: 128, align: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "r_off", scope: !222, file: !109, line: 207, baseType: !123, size: 128, align: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !222, file: !109, line: 208, baseType: !123, size: 128, align: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !222, file: !109, line: 210, baseType: !15, size: 32, align: 32, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "lastrpl", scope: !222, file: !109, line: 211, baseType: !15, size: 32, align: 32, offset: 736)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "maxrpl", scope: !222, file: !109, line: 212, baseType: !15, size: 32, align: 32, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !222, file: !109, line: 213, baseType: !15, size: 32, align: 32, offset: 800)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "lastbpl", scope: !222, file: !109, line: 214, baseType: !15, size: 32, align: 32, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "maxbpl", scope: !222, file: !109, line: 215, baseType: !15, size: 32, align: 32, offset: 864)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !222, file: !109, line: 217, baseType: !28, size: 64, align: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sqinfo", scope: !222, file: !109, line: 218, baseType: !241, size: 64, align: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "SQINFO", file: !109, line: 98, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "seqinfo_s", file: !109, line: 84, size: 2880, align: 64, elements: !244)
!244 = !{!245, !246, !250, !251, !252, !256, !257, !258, !259, !260, !261, !262}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !109, line: 85, baseType: !15, size: 32, align: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !109, line: 86, baseType: !247, size: 512, align: 8, offset: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, align: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !243, file: !109, line: 87, baseType: !247, size: 512, align: 8, offset: 544)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !243, file: !109, line: 88, baseType: !247, size: 512, align: 8, offset: 1056)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !243, file: !109, line: 89, baseType: !253, size: 1024, align: 8, offset: 1568)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, align: 8, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !109, line: 90, baseType: !15, size: 32, align: 32, offset: 2592)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !243, file: !109, line: 91, baseType: !15, size: 32, align: 32, offset: 2624)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !243, file: !109, line: 92, baseType: !15, size: 32, align: 32, offset: 2656)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "olen", scope: !243, file: !109, line: 93, baseType: !15, size: 32, align: 32, offset: 2688)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !243, file: !109, line: 94, baseType: !15, size: 32, align: 32, offset: 2720)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !243, file: !109, line: 95, baseType: !28, size: 64, align: 64, offset: 2752)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !243, file: !109, line: 96, baseType: !28, size: 64, align: 64, offset: 2816)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !222, file: !109, line: 219, baseType: !28, size: 64, align: 64, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "seqlen", scope: !222, file: !109, line: 220, baseType: !15, size: 32, align: 32, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "maxseq", scope: !222, file: !109, line: 221, baseType: !15, size: 32, align: 32, offset: 1120)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !222, file: !109, line: 223, baseType: !15, size: 32, align: 32, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !222, file: !109, line: 224, baseType: !15, size: 32, align: 32, offset: 1184)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !222, file: !109, line: 225, baseType: !15, size: 32, align: 32, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "msa", scope: !222, file: !109, line: 237, baseType: !270, size: 64, align: 64, offset: 1280)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !272, line: 177, baseType: !273)
!272 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !272, line: 112, size: 2880, align: 64, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !297, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !273, file: !272, line: 115, baseType: !27, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !273, file: !272, line: 116, baseType: !27, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !273, file: !272, line: 117, baseType: !177, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !273, file: !272, line: 118, baseType: !15, size: 32, align: 32, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !273, file: !272, line: 119, baseType: !15, size: 32, align: 32, offset: 224)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !272, line: 123, baseType: !15, size: 32, align: 32, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !272, line: 124, baseType: !15, size: 32, align: 32, offset: 288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !272, line: 125, baseType: !28, size: 64, align: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !273, file: !272, line: 126, baseType: !28, size: 64, align: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !273, file: !272, line: 127, baseType: !28, size: 64, align: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !273, file: !272, line: 128, baseType: !28, size: 64, align: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !273, file: !272, line: 129, baseType: !28, size: 64, align: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !273, file: !272, line: 130, baseType: !28, size: 64, align: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !273, file: !272, line: 131, baseType: !28, size: 64, align: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !273, file: !272, line: 132, baseType: !27, size: 64, align: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !273, file: !272, line: 133, baseType: !27, size: 64, align: 64, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !273, file: !272, line: 134, baseType: !27, size: 64, align: 64, offset: 896)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !273, file: !272, line: 135, baseType: !27, size: 64, align: 64, offset: 960)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !273, file: !272, line: 136, baseType: !294, size: 192, align: 32, offset: 1024)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, align: 32, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 6)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !273, file: !272, line: 137, baseType: !298, size: 192, align: 32, offset: 1216)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, align: 32, elements: !295)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !273, file: !272, line: 144, baseType: !27, size: 64, align: 64, offset: 1408)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !273, file: !272, line: 145, baseType: !15, size: 32, align: 32, offset: 1472)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !273, file: !272, line: 146, baseType: !15, size: 32, align: 32, offset: 1504)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !273, file: !272, line: 148, baseType: !27, size: 64, align: 64, offset: 1536)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !273, file: !272, line: 149, baseType: !27, size: 64, align: 64, offset: 1600)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !273, file: !272, line: 150, baseType: !15, size: 32, align: 32, offset: 1664)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !273, file: !272, line: 151, baseType: !15, size: 32, align: 32, offset: 1696)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !273, file: !272, line: 153, baseType: !27, size: 64, align: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !273, file: !272, line: 154, baseType: !308, size: 64, align: 64, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !273, file: !272, line: 155, baseType: !310, size: 64, align: 64, offset: 1856)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !312, line: 42, baseType: !313)
!312 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!313 = !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 36, size: 192, align: 64, elements: !314)
!314 = !{!315, !323, !324, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !313, file: !312, line: 37, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !312, line: 26, size: 192, align: 64, elements: !319)
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !318, file: !312, line: 27, baseType: !28, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !318, file: !312, line: 28, baseType: !15, size: 32, align: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !318, file: !312, line: 29, baseType: !317, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !313, file: !312, line: 39, baseType: !15, size: 32, align: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !313, file: !312, line: 40, baseType: !15, size: 32, align: 32, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !313, file: !312, line: 41, baseType: !15, size: 32, align: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !273, file: !272, line: 156, baseType: !15, size: 32, align: 32, offset: 1920)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !273, file: !272, line: 158, baseType: !27, size: 64, align: 64, offset: 1984)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !273, file: !272, line: 159, baseType: !27, size: 64, align: 64, offset: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !273, file: !272, line: 160, baseType: !310, size: 64, align: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !273, file: !272, line: 161, baseType: !15, size: 32, align: 32, offset: 2176)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !273, file: !272, line: 163, baseType: !27, size: 64, align: 64, offset: 2240)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !273, file: !272, line: 164, baseType: !308, size: 64, align: 64, offset: 2304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !273, file: !272, line: 165, baseType: !310, size: 64, align: 64, offset: 2368)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !273, file: !272, line: 166, baseType: !15, size: 32, align: 32, offset: 2432)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !273, file: !272, line: 170, baseType: !310, size: 64, align: 64, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !273, file: !272, line: 171, baseType: !15, size: 32, align: 32, offset: 2560)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !273, file: !272, line: 172, baseType: !15, size: 32, align: 32, offset: 2592)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !273, file: !272, line: 173, baseType: !163, size: 64, align: 64, offset: 2624)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !273, file: !272, line: 174, baseType: !163, size: 64, align: 64, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !273, file: !272, line: 175, baseType: !163, size: 64, align: 64, offset: 2752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !273, file: !272, line: 176, baseType: !15, size: 32, align: 32, offset: 2816)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "afp", scope: !222, file: !109, line: 238, baseType: !343, size: 64, align: 64, offset: 1344)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSAFILE", file: !272, line: 199, baseType: !345)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "msafile_struct", file: !272, line: 186, size: 512, align: 64, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !345, file: !272, line: 187, baseType: !40, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !345, file: !272, line: 188, baseType: !28, size: 64, align: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !345, file: !272, line: 189, baseType: !15, size: 32, align: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !345, file: !272, line: 191, baseType: !28, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !345, file: !272, line: 192, baseType: !15, size: 32, align: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !345, file: !272, line: 194, baseType: !101, size: 64, align: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !345, file: !272, line: 196, baseType: !15, size: 32, align: 32, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !345, file: !272, line: 197, baseType: !15, size: 32, align: 32, offset: 416)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !345, file: !272, line: 198, baseType: !15, size: 32, align: 32, offset: 448)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !24, file: !1, line: 160, type: !15)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !24, file: !1, line: 161, type: !15)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmm", scope: !24, file: !1, line: 162, type: !150)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "histogram", scope: !24, file: !1, line: 163, type: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "histogram_s", file: !4, line: 419, size: 512, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "histogram", scope: !361, file: !4, line: 420, baseType: !163, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !361, file: !4, line: 421, baseType: !15, size: 32, align: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !361, file: !4, line: 422, baseType: !15, size: 32, align: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "highscore", scope: !361, file: !4, line: 423, baseType: !15, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "lowscore", scope: !361, file: !4, line: 424, baseType: !15, size: 32, align: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lumpsize", scope: !361, file: !4, line: 425, baseType: !15, size: 32, align: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !361, file: !4, line: 426, baseType: !15, size: 32, align: 32, offset: 224)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !361, file: !4, line: 428, baseType: !177, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "fit_type", scope: !361, file: !4, line: 429, baseType: !15, size: 32, align: 32, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !361, file: !4, line: 430, baseType: !373, size: 96, align: 32, offset: 352)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 96, align: 32, elements: !91)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "chisq", scope: !361, file: !4, line: 431, baseType: !8, size: 32, align: 32, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !361, file: !4, line: 432, baseType: !8, size: 32, align: 32, offset: 480)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ali", scope: !24, file: !1, line: 164, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "fancyali_s", file: !4, line: 447, size: 576, align: 64, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rfline", scope: !378, file: !4, line: 448, baseType: !28, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "csline", scope: !378, file: !4, line: 449, baseType: !28, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !378, file: !4, line: 450, baseType: !28, size: 64, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mline", scope: !378, file: !4, line: 451, baseType: !28, size: 64, align: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !378, file: !4, line: 452, baseType: !28, size: 64, align: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !378, file: !4, line: 453, baseType: !15, size: 32, align: 32, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !378, file: !4, line: 454, baseType: !28, size: 64, align: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !378, file: !4, line: 455, baseType: !28, size: 64, align: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sqfrom", scope: !378, file: !4, line: 456, baseType: !15, size: 32, align: 32, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sqto", scope: !378, file: !4, line: 457, baseType: !15, size: 32, align: 32, offset: 544)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghit", scope: !24, file: !1, line: 165, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "tophit_s", file: !4, line: 497, size: 256, align: 64, elements: !393)
!393 = !{!394, !416, !417, !418, !419}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !392, file: !4, line: 498, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "hit_s", file: !4, line: 470, size: 832, align: 64, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sortkey", scope: !397, file: !4, line: 471, baseType: !10, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !397, file: !4, line: 472, baseType: !8, size: 32, align: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pvalue", scope: !397, file: !4, line: 473, baseType: !10, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mothersc", scope: !397, file: !4, line: 474, baseType: !8, size: 32, align: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "motherp", scope: !397, file: !4, line: 475, baseType: !10, size: 64, align: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !4, line: 476, baseType: !28, size: 64, align: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !397, file: !4, line: 477, baseType: !28, size: 64, align: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !397, file: !4, line: 478, baseType: !28, size: 64, align: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sqfrom", scope: !397, file: !4, line: 479, baseType: !15, size: 32, align: 32, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sqto", scope: !397, file: !4, line: 480, baseType: !15, size: 32, align: 32, offset: 544)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !397, file: !4, line: 481, baseType: !15, size: 32, align: 32, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hmmfrom", scope: !397, file: !4, line: 482, baseType: !15, size: 32, align: 32, offset: 608)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hmmto", scope: !397, file: !4, line: 483, baseType: !15, size: 32, align: 32, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hmmlen", scope: !397, file: !4, line: 484, baseType: !15, size: 32, align: 32, offset: 672)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "domidx", scope: !397, file: !4, line: 485, baseType: !15, size: 32, align: 32, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !397, file: !4, line: 486, baseType: !15, size: 32, align: 32, offset: 736)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ali", scope: !397, file: !4, line: 487, baseType: !377, size: 64, align: 64, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "unsrt", scope: !392, file: !4, line: 499, baseType: !396, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !392, file: !4, line: 500, baseType: !15, size: 32, align: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !392, file: !4, line: 501, baseType: !15, size: 32, align: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lump", scope: !392, file: !4, line: 502, baseType: !15, size: 32, align: 32, offset: 192)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dhit", scope: !24, file: !1, line: 166, type: !391)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sc", scope: !24, file: !1, line: 168, type: !8)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvalue", scope: !24, file: !1, line: 169, type: !10)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evalue", scope: !24, file: !1, line: 170, type: !10)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "motherp", scope: !24, file: !1, line: 171, type: !10)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mothersc", scope: !24, file: !1, line: 172, type: !8)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqfrom", scope: !24, file: !1, line: 173, type: !15)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqto", scope: !24, file: !1, line: 173, type: !15)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmmfrom", scope: !24, file: !1, line: 174, type: !15)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmmto", scope: !24, file: !1, line: 174, type: !15)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !24, file: !1, line: 175, type: !28)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "desc", scope: !24, file: !1, line: 175, type: !28)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqlen", scope: !24, file: !1, line: 176, type: !15)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nseq", scope: !24, file: !1, line: 177, type: !15)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Z", scope: !24, file: !1, line: 178, type: !15)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domidx", scope: !24, file: !1, line: 179, type: !15)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndom", scope: !24, file: !1, line: 180, type: !15)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namewidth", scope: !24, file: !1, line: 181, type: !15)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descwidth", scope: !24, file: !1, line: 182, type: !15)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nreported", scope: !24, file: !1, line: 183, type: !15)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Alimit", scope: !24, file: !1, line: 185, type: !15)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thresh", scope: !24, file: !1, line: 186, type: !5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optname", scope: !24, file: !1, line: 188, type: !28)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optarg", scope: !24, file: !1, line: 189, type: !28)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optind", scope: !24, file: !1, line: 190, type: !15)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "do_null2", scope: !24, file: !1, line: 191, type: !15)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "do_forward", scope: !24, file: !1, line: 192, type: !15)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "do_xnu", scope: !24, file: !1, line: 193, type: !15)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "do_pvm", scope: !24, file: !1, line: 194, type: !15)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "be_backwards", scope: !24, file: !1, line: 195, type: !15)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_threads", scope: !24, file: !1, line: 196, type: !15)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threads_support", scope: !24, file: !1, line: 197, type: !15)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvm_support", scope: !24, file: !1, line: 198, type: !15)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "safedesc", scope: !454, file: !1, line: 418, type: !28)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 417, column: 5)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 416, column: 3)
!456 = distinct !DILexicalBlock(scope: !24, file: !1, line: 416, column: 3)
!457 = !DISubprogram(name: "main_loop_serial", scope: !1, file: !1, line: 598, type: !458, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, variables: !461)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !150, !220, !460, !15, !15, !15, !360, !391, !391, !163}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !488, !496, !497, !498, !499, !500, !501, !502}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !457, file: !1, line: 598, type: !150)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sqfp", arg: 2, scope: !457, file: !1, line: 598, type: !220)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thresh", arg: 3, scope: !457, file: !1, line: 598, type: !460)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_forward", arg: 4, scope: !457, file: !1, line: 598, type: !15)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_null2", arg: 5, scope: !457, file: !1, line: 599, type: !15)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_xnu", arg: 6, scope: !457, file: !1, line: 599, type: !15)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "histogram", arg: 7, scope: !457, file: !1, line: 600, type: !360)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghit", arg: 8, scope: !457, file: !1, line: 601, type: !391)
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dhit", arg: 9, scope: !457, file: !1, line: 601, type: !391)
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_nseq", arg: 10, scope: !457, file: !1, line: 601, type: !163)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mx", scope: !457, file: !1, line: 603, type: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "dpmatrix_s", file: !4, line: 289, size: 640, align: 64, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "xmx", scope: !474, file: !4, line: 290, baseType: !194, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !474, file: !4, line: 291, baseType: !194, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "imx", scope: !474, file: !4, line: 292, baseType: !194, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dmx", scope: !474, file: !4, line: 293, baseType: !194, size: 64, align: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "xmx_mem", scope: !474, file: !4, line: 299, baseType: !22, size: 64, align: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmx_mem", scope: !474, file: !4, line: 299, baseType: !22, size: 64, align: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "imx_mem", scope: !474, file: !4, line: 299, baseType: !22, size: 64, align: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dmx_mem", scope: !474, file: !4, line: 299, baseType: !22, size: 64, align: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "maxN", scope: !474, file: !4, line: 308, baseType: !15, size: 32, align: 32, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "maxM", scope: !474, file: !4, line: 309, baseType: !15, size: 32, align: 32, offset: 544)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "padN", scope: !474, file: !4, line: 311, baseType: !15, size: 32, align: 32, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "padM", scope: !474, file: !4, line: 312, baseType: !15, size: 32, align: 32, offset: 608)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tr", scope: !457, file: !1, line: 604, type: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "p7trace_s", file: !4, line: 374, size: 256, align: 64, elements: !491)
!491 = !{!492, !493, !494, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tlen", scope: !490, file: !4, line: 375, baseType: !15, size: 32, align: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "statetype", scope: !490, file: !4, line: 376, baseType: !28, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nodeidx", scope: !490, file: !4, line: 377, baseType: !163, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !490, file: !4, line: 378, baseType: !163, size: 64, align: 64, offset: 192)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !457, file: !1, line: 605, type: !28)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsq", scope: !457, file: !1, line: 606, type: !28)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqinfo", scope: !457, file: !1, line: 607, type: !242)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sc", scope: !457, file: !1, line: 608, type: !8)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvalue", scope: !457, file: !1, line: 609, type: !10)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evalue", scope: !457, file: !1, line: 610, type: !10)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nseq", scope: !457, file: !1, line: 611, type: !15)
!503 = !DISubprogram(name: "main_loop_pvm", scope: !1, file: !1, line: 932, type: !458, isLocal: true, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, variables: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !503, file: !1, line: 932, type: !150)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sqfp", arg: 2, scope: !503, file: !1, line: 932, type: !220)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thresh", arg: 3, scope: !503, file: !1, line: 932, type: !460)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_forward", arg: 4, scope: !503, file: !1, line: 932, type: !15)
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_null2", arg: 5, scope: !503, file: !1, line: 933, type: !15)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_xnu", arg: 6, scope: !503, file: !1, line: 933, type: !15)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "histogram", arg: 7, scope: !503, file: !1, line: 933, type: !360)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghit", arg: 8, scope: !503, file: !1, line: 934, type: !391)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dhit", arg: 9, scope: !503, file: !1, line: 934, type: !391)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_nseq", arg: 10, scope: !503, file: !1, line: 934, type: !163)
!515 = !DISubprogram(name: "main_loop_threaded", scope: !1, file: !1, line: 1211, type: !516, isLocal: true, isDefinition: true, scopeLine: 1215, flags: DIFlagPrototyped, isOptimized: true, variables: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !150, !220, !460, !15, !15, !15, !15, !360, !391, !391, !163}
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !515, file: !1, line: 1211, type: !150)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sqfp", arg: 2, scope: !515, file: !1, line: 1211, type: !220)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thresh", arg: 3, scope: !515, file: !1, line: 1211, type: !460)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_forward", arg: 4, scope: !515, file: !1, line: 1211, type: !15)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_null2", arg: 5, scope: !515, file: !1, line: 1212, type: !15)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_xnu", arg: 6, scope: !515, file: !1, line: 1212, type: !15)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_threads", arg: 7, scope: !515, file: !1, line: 1212, type: !15)
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "histogram", arg: 8, scope: !515, file: !1, line: 1213, type: !360)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghit", arg: 9, scope: !515, file: !1, line: 1214, type: !391)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dhit", arg: 10, scope: !515, file: !1, line: 1214, type: !391)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_nseq", arg: 11, scope: !515, file: !1, line: 1214, type: !163)
!530 = !{!531, !536, !537, !538, !539, !543, !546, !555, !559, !563}
!531 = !DIGlobalVariable(name: "Alphabet", scope: !0, file: !532, line: 19, type: !533, isLocal: false, isDefinition: true, variable: [25 x i8]* @Alphabet)
!532 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/globals.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, align: 8, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 25)
!536 = !DIGlobalVariable(name: "Alphabet_type", scope: !0, file: !532, line: 20, type: !15, isLocal: false, isDefinition: true, variable: i32* @Alphabet_type)
!537 = !DIGlobalVariable(name: "Alphabet_size", scope: !0, file: !532, line: 21, type: !15, isLocal: false, isDefinition: true, variable: i32* @Alphabet_size)
!538 = !DIGlobalVariable(name: "Alphabet_iupac", scope: !0, file: !532, line: 22, type: !15, isLocal: false, isDefinition: true, variable: i32* @Alphabet_iupac)
!539 = !DIGlobalVariable(name: "Degenerate", scope: !0, file: !532, line: 23, type: !540, isLocal: false, isDefinition: true, variable: [24 x [20 x i8]]* @Degenerate)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 3840, align: 8, elements: !541)
!541 = !{!542, !191}
!542 = !DISubrange(count: 24)
!543 = !DIGlobalVariable(name: "DegenCount", scope: !0, file: !532, line: 24, type: !544, isLocal: false, isDefinition: true, variable: [24 x i32]* @DegenCount)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 768, align: 32, elements: !545)
!545 = !{!542}
!546 = !DIGlobalVariable(name: "OPTIONS", scope: !0, file: !1, line: 72, type: !547, isLocal: true, isDefinition: true, variable: [17 x %struct.opt_s]* @OPTIONS)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 2176, align: 64, elements: !553)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "opt_s", file: !109, line: 330, size: 128, align: 64, elements: !549)
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !109, line: 331, baseType: !28, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !548, file: !109, line: 332, baseType: !15, size: 32, align: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "argtype", scope: !548, file: !109, line: 333, baseType: !15, size: 32, align: 32, offset: 96)
!553 = !{!554}
!554 = !DISubrange(count: 17)
!555 = !DIGlobalVariable(name: "usage", scope: !0, file: !1, line: 47, type: !556, isLocal: true, isDefinition: true, variable: [382 x i8]* @usage)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 3056, align: 8, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 382)
!559 = !DIGlobalVariable(name: "banner", scope: !0, file: !1, line: 45, type: !560, isLocal: true, isDefinition: true, variable: [58 x i8]* @banner)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 464, align: 8, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 58)
!563 = !DIGlobalVariable(name: "experts", scope: !0, file: !1, line: 57, type: !564, isLocal: true, isDefinition: true, variable: [759 x i8]* @experts)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 6072, align: 8, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 759)
!567 = !{}
!568 = !{i32 2, !"Dwarf Version", i32 2}
!569 = !{i32 2, !"Debug Info Version", i32 700000003}
!570 = !{i32 1, !"PIC Level", i32 2}
!571 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!572 = !DIExpression()
!573 = !DILocation(line: 154, column: 10, scope: !24)
!574 = !DILocation(line: 154, column: 23, scope: !24)
!575 = !DILocation(line: 186, column: 3, scope: !24)
!576 = !DILocation(line: 160, column: 13, scope: !24)
!577 = !DILocation(line: 192, column: 9, scope: !24)
!578 = !DILocation(line: 191, column: 9, scope: !24)
!579 = !DILocation(line: 193, column: 9, scope: !24)
!580 = !DILocation(line: 194, column: 9, scope: !24)
!581 = !DILocation(line: 178, column: 11, scope: !24)
!582 = !DILocation(line: 195, column: 9, scope: !24)
!583 = !DILocation(line: 198, column: 9, scope: !24)
!584 = !DILocation(line: 197, column: 9, scope: !24)
!585 = !DILocation(line: 196, column: 9, scope: !24)
!586 = !DILocation(line: 185, column: 10, scope: !24)
!587 = !DILocation(line: 230, column: 10, scope: !24)
!588 = !DILocation(line: 230, column: 18, scope: !24)
!589 = !{!590, !594, i64 8}
!590 = !{!"threshold_s", !591, i64 0, !594, i64 8, !591, i64 16, !594, i64 24, !592, i64 32, !595, i64 36}
!591 = !{!"float", !592, i64 0}
!592 = !{!"omnipotent char", !593, i64 0}
!593 = !{!"Simple C/C++ TBAA"}
!594 = !{!"double", !592, i64 0}
!595 = !{!"int", !592, i64 0}
!596 = !DILocation(line: 231, column: 10, scope: !24)
!597 = !DILocation(line: 231, column: 18, scope: !24)
!598 = !{!590, !591, i64 0}
!599 = !DILocation(line: 232, column: 10, scope: !24)
!600 = !DILocation(line: 232, column: 18, scope: !24)
!601 = !{!590, !591, i64 16}
!602 = !DILocation(line: 233, column: 10, scope: !24)
!603 = !DILocation(line: 233, column: 18, scope: !24)
!604 = !{!590, !594, i64 24}
!605 = !DILocation(line: 234, column: 10, scope: !24)
!606 = !DILocation(line: 234, column: 18, scope: !24)
!607 = !{!590, !592, i64 32}
!608 = !DILocation(line: 235, column: 10, scope: !24)
!609 = !DILocation(line: 235, column: 18, scope: !24)
!610 = !{!590, !595, i64 36}
!611 = !DILocation(line: 188, column: 9, scope: !24)
!612 = !DILocation(line: 189, column: 9, scope: !24)
!613 = !DILocation(line: 190, column: 9, scope: !24)
!614 = !DILocation(line: 237, column: 10, scope: !24)
!615 = !DILocation(line: 237, column: 3, scope: !24)
!616 = !DILocation(line: 239, column: 21, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 239, column: 14)
!618 = distinct !DILexicalBlock(scope: !24, file: !1, line: 238, column: 47)
!619 = !{!620, !620, i64 0}
!620 = !{!"any pointer", !592, i64 0}
!621 = !DILocation(line: 239, column: 14, scope: !617)
!622 = !DILocation(line: 239, column: 36, scope: !617)
!623 = !DILocation(line: 239, column: 14, scope: !618)
!624 = !DILocation(line: 239, column: 71, scope: !617)
!625 = !DILocation(line: 239, column: 66, scope: !617)
!626 = !DILocation(line: 239, column: 49, scope: !617)
!627 = !DILocation(line: 240, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !617, file: !1, line: 240, column: 14)
!629 = !DILocation(line: 240, column: 36, scope: !628)
!630 = !DILocation(line: 240, column: 14, scope: !617)
!631 = !DILocation(line: 240, column: 71, scope: !628)
!632 = !DILocation(line: 240, column: 66, scope: !628)
!633 = !DILocation(line: 240, column: 64, scope: !628)
!634 = !DILocation(line: 240, column: 49, scope: !628)
!635 = !DILocation(line: 241, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !1, line: 241, column: 14)
!637 = !DILocation(line: 241, column: 36, scope: !636)
!638 = !DILocation(line: 241, column: 14, scope: !628)
!639 = !DILocation(line: 241, column: 71, scope: !636)
!640 = !DILocation(line: 241, column: 66, scope: !636)
!641 = !DILocation(line: 241, column: 64, scope: !636)
!642 = !DILocation(line: 241, column: 49, scope: !636)
!643 = !DILocation(line: 242, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !636, file: !1, line: 242, column: 14)
!645 = !DILocation(line: 242, column: 36, scope: !644)
!646 = !DILocation(line: 242, column: 14, scope: !636)
!647 = !DILocation(line: 242, column: 71, scope: !644)
!648 = !DILocation(line: 242, column: 66, scope: !644)
!649 = !DILocation(line: 242, column: 64, scope: !644)
!650 = !DILocation(line: 242, column: 49, scope: !644)
!651 = !DILocation(line: 243, column: 14, scope: !652)
!652 = distinct !DILexicalBlock(scope: !644, file: !1, line: 243, column: 14)
!653 = !DILocation(line: 243, column: 43, scope: !652)
!654 = !DILocation(line: 243, column: 14, scope: !644)
!655 = !DILocation(line: 244, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 244, column: 14)
!657 = !DILocation(line: 244, column: 43, scope: !656)
!658 = !DILocation(line: 244, column: 14, scope: !652)
!659 = !DILocation(line: 244, column: 71, scope: !656)
!660 = !DILocation(line: 244, column: 66, scope: !656)
!661 = !DILocation(line: 244, column: 49, scope: !656)
!662 = !DILocation(line: 245, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !1, line: 245, column: 14)
!664 = !DILocation(line: 245, column: 43, scope: !663)
!665 = !DILocation(line: 245, column: 14, scope: !656)
!666 = !DILocation(line: 245, column: 64, scope: !663)
!667 = !DILocation(line: 245, column: 49, scope: !663)
!668 = !DILocation(line: 246, column: 14, scope: !669)
!669 = distinct !DILexicalBlock(scope: !663, file: !1, line: 246, column: 14)
!670 = !DILocation(line: 246, column: 43, scope: !669)
!671 = !DILocation(line: 246, column: 14, scope: !663)
!672 = !DILocation(line: 246, column: 64, scope: !669)
!673 = !DILocation(line: 246, column: 49, scope: !669)
!674 = !DILocation(line: 247, column: 14, scope: !675)
!675 = distinct !DILexicalBlock(scope: !669, file: !1, line: 247, column: 14)
!676 = !DILocation(line: 247, column: 43, scope: !675)
!677 = !DILocation(line: 247, column: 14, scope: !669)
!678 = !DILocation(line: 247, column: 64, scope: !675)
!679 = !DILocation(line: 247, column: 49, scope: !675)
!680 = !DILocation(line: 248, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !1, line: 248, column: 14)
!682 = !DILocation(line: 248, column: 43, scope: !681)
!683 = !DILocation(line: 248, column: 14, scope: !675)
!684 = !DILocation(line: 248, column: 71, scope: !681)
!685 = !DILocation(line: 248, column: 66, scope: !681)
!686 = !DILocation(line: 248, column: 64, scope: !681)
!687 = !DILocation(line: 248, column: 49, scope: !681)
!688 = !DILocation(line: 249, column: 14, scope: !689)
!689 = distinct !DILexicalBlock(scope: !681, file: !1, line: 249, column: 14)
!690 = !DILocation(line: 249, column: 43, scope: !689)
!691 = !DILocation(line: 249, column: 14, scope: !681)
!692 = !DILocation(line: 249, column: 71, scope: !689)
!693 = !DILocation(line: 249, column: 66, scope: !689)
!694 = !DILocation(line: 249, column: 64, scope: !689)
!695 = !DILocation(line: 249, column: 49, scope: !689)
!696 = !DILocation(line: 250, column: 14, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !1, line: 250, column: 14)
!698 = !DILocation(line: 250, column: 43, scope: !697)
!699 = !DILocation(line: 250, column: 14, scope: !689)
!700 = !DILocation(line: 251, column: 14, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !1, line: 251, column: 14)
!702 = !DILocation(line: 251, column: 43, scope: !701)
!703 = !DILocation(line: 251, column: 14, scope: !697)
!704 = !DILocation(line: 252, column: 14, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !1, line: 252, column: 14)
!706 = !DILocation(line: 252, column: 43, scope: !705)
!707 = !DILocation(line: 252, column: 14, scope: !701)
!708 = !DILocation(line: 253, column: 14, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !1, line: 253, column: 14)
!710 = !DILocation(line: 253, column: 43, scope: !709)
!711 = !DILocation(line: 253, column: 14, scope: !705)
!712 = !DILocation(line: 254, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !1, line: 254, column: 14)
!714 = !DILocation(line: 254, column: 44, scope: !713)
!715 = !DILocation(line: 254, column: 14, scope: !709)
!716 = !DILocation(line: 255, column: 37, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !1, line: 254, column: 50)
!718 = !DILocation(line: 255, column: 16, scope: !717)
!719 = !DILocation(line: 256, column: 18, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !1, line: 256, column: 11)
!721 = !DILocation(line: 256, column: 11, scope: !717)
!722 = !DILocation(line: 257, column: 50, scope: !720)
!723 = !DILocation(line: 257, column: 2, scope: !720)
!724 = !DILocation(line: 259, column: 14, scope: !725)
!725 = distinct !DILexicalBlock(scope: !713, file: !1, line: 259, column: 14)
!726 = !DILocation(line: 259, column: 36, scope: !725)
!727 = !DILocation(line: 259, column: 14, scope: !713)
!728 = !DILocation(line: 260, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 259, column: 42)
!730 = !DILocation(line: 260, column: 7, scope: !729)
!731 = !DILocation(line: 261, column: 7, scope: !729)
!732 = !DILocation(line: 262, column: 7, scope: !729)
!733 = !DILocation(line: 263, column: 7, scope: !729)
!734 = !DILocation(line: 266, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !24, file: !1, line: 266, column: 7)
!736 = !{!595, !595, i64 0}
!737 = !DILocation(line: 266, column: 12, scope: !735)
!738 = !DILocation(line: 266, column: 21, scope: !735)
!739 = !DILocation(line: 266, column: 7, scope: !24)
!740 = !DILocation(line: 267, column: 5, scope: !735)
!741 = !DILocation(line: 269, column: 24, scope: !24)
!742 = !DILocation(line: 269, column: 13, scope: !24)
!743 = !DILocation(line: 156, column: 12, scope: !24)
!744 = !DILocation(line: 270, column: 24, scope: !24)
!745 = !DILocation(line: 270, column: 13, scope: !24)
!746 = !DILocation(line: 158, column: 12, scope: !24)
!747 = !DILocation(line: 272, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !24, file: !1, line: 272, column: 7)
!749 = !DILocation(line: 272, column: 14, scope: !748)
!750 = !DILocation(line: 273, column: 5, scope: !748)
!751 = !DILocation(line: 274, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !24, file: !1, line: 274, column: 7)
!753 = !DILocation(line: 274, column: 19, scope: !752)
!754 = !DILocation(line: 275, column: 5, scope: !752)
!755 = !DILocation(line: 280, column: 14, scope: !756)
!756 = distinct !DILexicalBlock(scope: !24, file: !1, line: 280, column: 7)
!757 = !DILocation(line: 280, column: 32, scope: !756)
!758 = !DILocation(line: 281, column: 8, scope: !756)
!759 = !DILocation(line: 281, column: 42, scope: !756)
!760 = !DILocation(line: 281, column: 45, scope: !756)
!761 = !DILocation(line: 281, column: 66, scope: !756)
!762 = !DILocation(line: 280, column: 7, scope: !24)
!763 = !DILocation(line: 282, column: 5, scope: !756)
!764 = !DILocation(line: 288, column: 15, scope: !765)
!765 = distinct !DILexicalBlock(scope: !24, file: !1, line: 288, column: 7)
!766 = !DILocation(line: 159, column: 13, scope: !24)
!767 = !DILocation(line: 288, column: 56, scope: !765)
!768 = !DILocation(line: 288, column: 7, scope: !24)
!769 = !DILocation(line: 289, column: 5, scope: !765)
!770 = !DILocation(line: 297, column: 16, scope: !771)
!771 = distinct !DILexicalBlock(scope: !24, file: !1, line: 297, column: 7)
!772 = !DILocation(line: 157, column: 12, scope: !24)
!773 = !DILocation(line: 297, column: 49, scope: !771)
!774 = !DILocation(line: 297, column: 7, scope: !24)
!775 = !DILocation(line: 298, column: 5, scope: !771)
!776 = !DILocation(line: 162, column: 20, scope: !24)
!777 = !DILocation(line: 299, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !24, file: !1, line: 299, column: 7)
!779 = !DILocation(line: 299, column: 7, scope: !24)
!780 = !DILocation(line: 300, column: 5, scope: !778)
!781 = !DILocation(line: 301, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !24, file: !1, line: 301, column: 7)
!783 = !DILocation(line: 301, column: 11, scope: !782)
!784 = !DILocation(line: 301, column: 7, scope: !24)
!785 = !DILocation(line: 302, column: 5, scope: !782)
!786 = !DILocation(line: 303, column: 16, scope: !24)
!787 = !DILocation(line: 303, column: 21, scope: !24)
!788 = !DILocation(line: 303, column: 3, scope: !24)
!789 = !DILocation(line: 305, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !24, file: !1, line: 305, column: 7)
!791 = !DILocation(line: 305, column: 31, scope: !790)
!792 = !DILocation(line: 305, column: 14, scope: !790)
!793 = !DILocation(line: 306, column: 5, scope: !790)
!794 = !DILocation(line: 313, column: 30, scope: !795)
!795 = distinct !DILexicalBlock(scope: !24, file: !1, line: 313, column: 7)
!796 = !DILocation(line: 186, column: 22, scope: !24)
!797 = !DILocation(line: 313, column: 9, scope: !795)
!798 = !DILocation(line: 313, column: 7, scope: !24)
!799 = !DILocation(line: 315, column: 2, scope: !795)
!800 = !DILocation(line: 315, column: 7, scope: !795)
!801 = !{!802, !620, i64 0}
!802 = !{!"plan7_s", !620, i64 0, !620, i64 8, !620, i64 16, !620, i64 24, !620, i64 32, !620, i64 40, !620, i64 48, !595, i64 56, !620, i64 64, !620, i64 72, !595, i64 80, !620, i64 88, !620, i64 96, !620, i64 104, !591, i64 112, !591, i64 116, !591, i64 120, !591, i64 124, !591, i64 128, !591, i64 132, !595, i64 136, !620, i64 144, !620, i64 152, !620, i64 160, !591, i64 168, !592, i64 172, !620, i64 208, !620, i64 216, !592, i64 224, !591, i64 304, !620, i64 312, !620, i64 320, !620, i64 328, !592, i64 336, !620, i64 368, !620, i64 376, !620, i64 384, !620, i64 392, !620, i64 400, !620, i64 408, !620, i64 416, !620, i64 424, !620, i64 432, !595, i64 440, !595, i64 444, !591, i64 448, !591, i64 452, !595, i64 456}
!803 = !DILocation(line: 314, column: 5, scope: !795)
!804 = !DILocation(line: 321, column: 15, scope: !24)
!805 = !DILocation(line: 321, column: 3, scope: !24)
!806 = !DILocation(line: 322, column: 63, scope: !24)
!807 = !DILocation(line: 322, column: 68, scope: !24)
!808 = !DILocation(line: 322, column: 3, scope: !24)
!809 = !DILocation(line: 323, column: 3, scope: !24)
!810 = !DILocation(line: 324, column: 7, scope: !24)
!811 = !DILocation(line: 325, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !24, file: !1, line: 324, column: 7)
!813 = !DILocation(line: 326, column: 3, scope: !24)
!814 = !DILocation(line: 327, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !24, file: !1, line: 327, column: 7)
!816 = !DILocation(line: 327, column: 20, scope: !815)
!817 = !DILocation(line: 327, column: 7, scope: !24)
!818 = !DILocation(line: 327, column: 33, scope: !815)
!819 = !DILocation(line: 329, column: 23, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !1, line: 328, column: 9)
!821 = !DILocation(line: 329, column: 5, scope: !820)
!822 = !DILocation(line: 330, column: 21, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !1, line: 330, column: 14)
!824 = !DILocation(line: 330, column: 14, scope: !820)
!825 = !DILocation(line: 330, column: 40, scope: !823)
!826 = !DILocation(line: 331, column: 40, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !1, line: 331, column: 14)
!828 = !DILocation(line: 332, column: 40, scope: !829)
!829 = distinct !DILexicalBlock(scope: !827, file: !1, line: 332, column: 14)
!830 = !DILocation(line: 333, column: 40, scope: !829)
!831 = !DILocation(line: 335, column: 3, scope: !24)
!832 = !DILocation(line: 336, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !24, file: !1, line: 336, column: 7)
!834 = !DILocation(line: 336, column: 19, scope: !833)
!835 = !DILocation(line: 336, column: 7, scope: !24)
!836 = !DILocation(line: 336, column: 32, scope: !833)
!837 = !DILocation(line: 338, column: 23, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !1, line: 337, column: 9)
!839 = !DILocation(line: 338, column: 5, scope: !838)
!840 = !DILocation(line: 339, column: 21, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !1, line: 339, column: 14)
!842 = !DILocation(line: 339, column: 14, scope: !838)
!843 = !DILocation(line: 339, column: 40, scope: !841)
!844 = !DILocation(line: 340, column: 40, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !1, line: 340, column: 14)
!846 = !DILocation(line: 341, column: 40, scope: !847)
!847 = distinct !DILexicalBlock(scope: !845, file: !1, line: 341, column: 14)
!848 = !DILocation(line: 342, column: 40, scope: !847)
!849 = !DILocation(line: 344, column: 3, scope: !24)
!850 = !DILocation(line: 345, column: 14, scope: !851)
!851 = distinct !DILexicalBlock(scope: !24, file: !1, line: 345, column: 7)
!852 = !DILocation(line: 345, column: 20, scope: !851)
!853 = !DILocation(line: 345, column: 7, scope: !24)
!854 = !DILocation(line: 345, column: 32, scope: !851)
!855 = !DILocation(line: 346, column: 25, scope: !851)
!856 = !DILocation(line: 348, column: 3, scope: !24)
!857 = !DILocation(line: 349, column: 14, scope: !858)
!858 = distinct !DILexicalBlock(scope: !24, file: !1, line: 349, column: 7)
!859 = !DILocation(line: 349, column: 19, scope: !858)
!860 = !DILocation(line: 349, column: 7, scope: !24)
!861 = !DILocation(line: 349, column: 31, scope: !858)
!862 = !DILocation(line: 350, column: 24, scope: !858)
!863 = !DILocation(line: 351, column: 3, scope: !24)
!864 = !DILocation(line: 358, column: 15, scope: !24)
!865 = !DILocation(line: 163, column: 23, scope: !24)
!866 = !DILocation(line: 359, column: 15, scope: !24)
!867 = !DILocation(line: 165, column: 22, scope: !24)
!868 = !DILocation(line: 360, column: 15, scope: !24)
!869 = !DILocation(line: 166, column: 22, scope: !24)
!870 = !DILocation(line: 366, column: 24, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 365, column: 12)
!872 = distinct !DILexicalBlock(scope: !24, file: !1, line: 362, column: 7)
!873 = !DILocation(line: 598, column: 34, scope: !457, inlinedAt: !874)
!874 = distinct !DILocation(line: 369, column: 5, scope: !871)
!875 = !DILocation(line: 598, column: 47, scope: !457, inlinedAt: !874)
!876 = !DILocation(line: 598, column: 73, scope: !457, inlinedAt: !874)
!877 = !DILocation(line: 598, column: 85, scope: !457, inlinedAt: !874)
!878 = !DILocation(line: 599, column: 8, scope: !457, inlinedAt: !874)
!879 = !DILocation(line: 599, column: 22, scope: !457, inlinedAt: !874)
!880 = !DILocation(line: 600, column: 24, scope: !457, inlinedAt: !874)
!881 = !DILocation(line: 601, column: 21, scope: !457, inlinedAt: !874)
!882 = !DILocation(line: 601, column: 44, scope: !457, inlinedAt: !874)
!883 = !DILocation(line: 607, column: 3, scope: !457, inlinedAt: !874)
!884 = !DILocation(line: 617, column: 34, scope: !457, inlinedAt: !874)
!885 = !{!802, !595, i64 136}
!886 = !DILocation(line: 617, column: 8, scope: !457, inlinedAt: !874)
!887 = !DILocation(line: 603, column: 22, scope: !457, inlinedAt: !874)
!888 = !DILocation(line: 611, column: 10, scope: !457, inlinedAt: !874)
!889 = !DILocation(line: 620, column: 30, scope: !457, inlinedAt: !874)
!890 = !DILocation(line: 626, column: 18, scope: !891, inlinedAt: !874)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 626, column: 11)
!892 = distinct !DILexicalBlock(scope: !457, file: !1, line: 621, column: 5)
!893 = !DILocation(line: 648, column: 11, scope: !894, inlinedAt: !874)
!894 = distinct !DILexicalBlock(scope: !892, file: !1, line: 648, column: 11)
!895 = !DILocation(line: 671, column: 7, scope: !896, inlinedAt: !874)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 668, column: 2)
!897 = distinct !DILexicalBlock(scope: !892, file: !1, line: 667, column: 11)
!898 = !DILocation(line: 672, column: 14, scope: !896, inlinedAt: !874)
!899 = !DILocation(line: 672, column: 36, scope: !896, inlinedAt: !874)
!900 = !DILocation(line: 673, column: 36, scope: !896, inlinedAt: !874)
!901 = !DILocation(line: 650, column: 6, scope: !902, inlinedAt: !874)
!902 = distinct !DILexicalBlock(scope: !903, file: !1, line: 650, column: 6)
!903 = distinct !DILexicalBlock(scope: !894, file: !1, line: 648, column: 23)
!904 = !DILocation(line: 620, column: 3, scope: !457, inlinedAt: !874)
!905 = !DILocation(line: 369, column: 5, scope: !871)
!906 = !{!907, !595, i64 144}
!907 = !{!"ReadSeqVars", !620, i64 0, !620, i64 8, !595, i64 16, !620, i64 24, !595, i64 32, !595, i64 36, !908, i64 40, !908, i64 56, !908, i64 72, !595, i64 88, !595, i64 92, !595, i64 96, !595, i64 100, !595, i64 104, !595, i64 108, !620, i64 112, !620, i64 120, !620, i64 128, !595, i64 136, !595, i64 140, !595, i64 144, !595, i64 148, !595, i64 152, !620, i64 160, !620, i64 168}
!908 = !{!"ssioffset_s", !592, i64 0, !592, i64 8}
!909 = !DILocation(line: 605, column: 11, scope: !457, inlinedAt: !874)
!910 = !DILocation(line: 607, column: 10, scope: !457, inlinedAt: !874)
!911 = !DILocation(line: 620, column: 10, scope: !457, inlinedAt: !874)
!912 = !{!913, !595, i64 324}
!913 = !{!"seqinfo_s", !595, i64 0, !592, i64 4, !592, i64 68, !592, i64 132, !592, i64 196, !595, i64 324, !595, i64 328, !595, i64 332, !595, i64 336, !595, i64 340, !620, i64 344, !620, i64 352}
!914 = !DILocation(line: 626, column: 22, scope: !891, inlinedAt: !874)
!915 = !DILocation(line: 626, column: 11, scope: !892, inlinedAt: !874)
!916 = !DILocation(line: 628, column: 11, scope: !892, inlinedAt: !874)
!917 = !DILocation(line: 629, column: 30, scope: !892, inlinedAt: !874)
!918 = !DILocation(line: 629, column: 13, scope: !892, inlinedAt: !874)
!919 = !DILocation(line: 606, column: 11, scope: !457, inlinedAt: !874)
!920 = !DILocation(line: 631, column: 35, scope: !921, inlinedAt: !874)
!921 = distinct !DILexicalBlock(scope: !892, file: !1, line: 631, column: 11)
!922 = !DILocation(line: 631, column: 18, scope: !921, inlinedAt: !874)
!923 = !DILocation(line: 631, column: 64, scope: !921, inlinedAt: !874)
!924 = !DILocation(line: 631, column: 48, scope: !921, inlinedAt: !874)
!925 = !DILocation(line: 639, column: 32, scope: !926, inlinedAt: !874)
!926 = distinct !DILexicalBlock(scope: !892, file: !1, line: 639, column: 11)
!927 = !DILocation(line: 639, column: 42, scope: !926, inlinedAt: !874)
!928 = !DILocation(line: 639, column: 11, scope: !926, inlinedAt: !874)
!929 = !DILocation(line: 639, column: 45, scope: !926, inlinedAt: !874)
!930 = !DILocation(line: 640, column: 29, scope: !926, inlinedAt: !874)
!931 = !DILocation(line: 604, column: 21, scope: !457, inlinedAt: !874)
!932 = !DILocation(line: 639, column: 11, scope: !892, inlinedAt: !874)
!933 = !DILocation(line: 640, column: 7, scope: !926, inlinedAt: !874)
!934 = !DILocation(line: 608, column: 10, scope: !457, inlinedAt: !874)
!935 = !DILocation(line: 640, column: 2, scope: !926, inlinedAt: !874)
!936 = !DILocation(line: 642, column: 7, scope: !926, inlinedAt: !874)
!937 = !DILocation(line: 648, column: 11, scope: !892, inlinedAt: !874)
!938 = !DILocation(line: 649, column: 30, scope: !903, inlinedAt: !874)
!939 = !DILocation(line: 649, column: 8, scope: !903, inlinedAt: !874)
!940 = !DILocation(line: 650, column: 6, scope: !903, inlinedAt: !874)
!941 = !DILocation(line: 650, column: 50, scope: !902, inlinedAt: !874)
!942 = !DILocation(line: 650, column: 24, scope: !902, inlinedAt: !874)
!943 = !DILocation(line: 650, column: 21, scope: !902, inlinedAt: !874)
!944 = !DILocation(line: 650, column: 18, scope: !902, inlinedAt: !874)
!945 = !DILocation(line: 665, column: 16, scope: !892, inlinedAt: !874)
!946 = !DILocation(line: 609, column: 10, scope: !457, inlinedAt: !874)
!947 = !DILocation(line: 666, column: 24, scope: !892, inlinedAt: !874)
!948 = !DILocation(line: 667, column: 25, scope: !897, inlinedAt: !874)
!949 = !DILocation(line: 667, column: 14, scope: !897, inlinedAt: !874)
!950 = !DILocation(line: 667, column: 31, scope: !897, inlinedAt: !874)
!951 = !DILocation(line: 666, column: 16, scope: !892, inlinedAt: !874)
!952 = !DILocation(line: 666, column: 28, scope: !892, inlinedAt: !874)
!953 = !DILocation(line: 667, column: 52, scope: !897, inlinedAt: !874)
!954 = !DILocation(line: 667, column: 41, scope: !897, inlinedAt: !874)
!955 = !DILocation(line: 667, column: 11, scope: !892, inlinedAt: !874)
!956 = !DILocation(line: 670, column: 7, scope: !896, inlinedAt: !874)
!957 = !DILocation(line: 670, column: 28, scope: !896, inlinedAt: !874)
!958 = !{!913, !595, i64 0}
!959 = !DILocation(line: 672, column: 20, scope: !896, inlinedAt: !874)
!960 = !DILocation(line: 672, column: 7, scope: !896, inlinedAt: !874)
!961 = !DILocation(line: 673, column: 20, scope: !896, inlinedAt: !874)
!962 = !DILocation(line: 673, column: 7, scope: !896, inlinedAt: !874)
!963 = !DILocation(line: 669, column: 9, scope: !896, inlinedAt: !874)
!964 = !DILocation(line: 678, column: 2, scope: !896, inlinedAt: !874)
!965 = !DILocation(line: 680, column: 7, scope: !892, inlinedAt: !874)
!966 = !DILocation(line: 681, column: 20, scope: !892, inlinedAt: !874)
!967 = !DILocation(line: 681, column: 7, scope: !892, inlinedAt: !874)
!968 = !DILocation(line: 682, column: 19, scope: !892, inlinedAt: !874)
!969 = !DILocation(line: 682, column: 7, scope: !892, inlinedAt: !874)
!970 = !DILocation(line: 683, column: 7, scope: !892, inlinedAt: !874)
!971 = !DILocation(line: 686, column: 3, scope: !457, inlinedAt: !874)
!972 = !DILocation(line: 601, column: 55, scope: !457, inlinedAt: !874)
!973 = !DILocation(line: 177, column: 11, scope: !24)
!974 = !DILocation(line: 689, column: 1, scope: !457, inlinedAt: !874)
!975 = !DILocation(line: 379, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !24, file: !1, line: 379, column: 7)
!977 = !DILocation(line: 379, column: 12, scope: !976)
!978 = !{!802, !595, i64 456}
!979 = !DILocation(line: 379, column: 18, scope: !976)
!980 = !DILocation(line: 379, column: 7, scope: !24)
!981 = !DILocation(line: 380, column: 46, scope: !976)
!982 = !{!802, !591, i64 448}
!983 = !DILocation(line: 380, column: 55, scope: !976)
!984 = !{!802, !591, i64 452}
!985 = !DILocation(line: 381, column: 20, scope: !976)
!986 = !{!987, !595, i64 20}
!987 = !{!"histogram_s", !620, i64 0, !595, i64 8, !595, i64 12, !595, i64 16, !595, i64 20, !595, i64 24, !595, i64 28, !620, i64 32, !595, i64 40, !592, i64 44, !591, i64 56, !591, i64 60}
!988 = !DILocation(line: 381, column: 9, scope: !976)
!989 = !DILocation(line: 381, column: 41, scope: !976)
!990 = !{!987, !595, i64 16}
!991 = !DILocation(line: 381, column: 30, scope: !976)
!992 = !DILocation(line: 380, column: 5, scope: !976)
!993 = !DILocation(line: 382, column: 15, scope: !994)
!994 = distinct !DILexicalBlock(scope: !24, file: !1, line: 382, column: 7)
!995 = !DILocation(line: 382, column: 8, scope: !994)
!996 = !DILocation(line: 382, column: 7, scope: !24)
!997 = !DILocation(line: 382, column: 27, scope: !994)
!998 = !DILocation(line: 382, column: 18, scope: !994)
!999 = !DILocation(line: 387, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !24, file: !1, line: 387, column: 7)
!1001 = !DILocation(line: 390, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 388, column: 5)
!1003 = !DILocation(line: 390, column: 12, scope: !1002)
!1004 = !DILocation(line: 387, column: 7, scope: !24)
!1005 = !DILocation(line: 391, column: 12, scope: !1002)
!1006 = !DILocation(line: 391, column: 18, scope: !1002)
!1007 = !DILocation(line: 391, column: 7, scope: !1002)
!1008 = !DILocation(line: 391, column: 38, scope: !1002)
!1009 = !{!802, !620, i64 8}
!1010 = !DILocation(line: 392, column: 18, scope: !1002)
!1011 = !DILocation(line: 392, column: 7, scope: !1002)
!1012 = !DILocation(line: 392, column: 38, scope: !1002)
!1013 = !{!802, !620, i64 16}
!1014 = !DILocation(line: 389, column: 7, scope: !1002)
!1015 = !DILocation(line: 393, column: 5, scope: !1002)
!1016 = !DILocation(line: 396, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 395, column: 5)
!1018 = !DILocation(line: 397, column: 35, scope: !1017)
!1019 = !DILocation(line: 397, column: 40, scope: !1017)
!1020 = !DILocation(line: 397, column: 46, scope: !1017)
!1021 = !DILocation(line: 397, column: 66, scope: !1017)
!1022 = !DILocation(line: 397, column: 7, scope: !1017)
!1023 = !DILocation(line: 398, column: 35, scope: !1017)
!1024 = !DILocation(line: 398, column: 40, scope: !1017)
!1025 = !DILocation(line: 398, column: 46, scope: !1017)
!1026 = !DILocation(line: 398, column: 66, scope: !1017)
!1027 = !DILocation(line: 398, column: 7, scope: !1017)
!1028 = !DILocation(line: 401, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !24, file: !1, line: 401, column: 7)
!1030 = !DILocation(line: 401, column: 12, scope: !1029)
!1031 = !DILocation(line: 401, column: 18, scope: !1029)
!1032 = !DILocation(line: 401, column: 7, scope: !24)
!1033 = !DILocation(line: 402, column: 5, scope: !1029)
!1034 = !DILocation(line: 404, column: 5, scope: !1029)
!1035 = !DILocation(line: 406, column: 3, scope: !24)
!1036 = !DILocation(line: 407, column: 15, scope: !24)
!1037 = !DILocation(line: 181, column: 11, scope: !24)
!1038 = !DILocation(line: 408, column: 15, scope: !24)
!1039 = !DILocation(line: 182, column: 11, scope: !24)
!1040 = !DILocation(line: 413, column: 3, scope: !24)
!1041 = !DILocation(line: 414, column: 3, scope: !24)
!1042 = !DILocation(line: 415, column: 3, scope: !24)
!1043 = !DILocation(line: 161, column: 13, scope: !24)
!1044 = !DILocation(line: 183, column: 11, scope: !24)
!1045 = !DILocation(line: 416, column: 40, scope: !455)
!1046 = !{!1047, !595, i64 20}
!1047 = !{!"tophit_s", !620, i64 0, !620, i64 8, !595, i64 16, !595, i64 20, !595, i64 24}
!1048 = !DILocation(line: 416, column: 32, scope: !455)
!1049 = !DILocation(line: 416, column: 3, scope: !456)
!1050 = !DILocation(line: 168, column: 13, scope: !24)
!1051 = !DILocation(line: 169, column: 11, scope: !24)
!1052 = !DILocation(line: 175, column: 11, scope: !24)
!1053 = !DILocation(line: 175, column: 18, scope: !24)
!1054 = !DILocation(line: 180, column: 11, scope: !24)
!1055 = !DILocation(line: 419, column: 7, scope: !454)
!1056 = !DILocation(line: 426, column: 16, scope: !454)
!1057 = !{!594, !594, i64 0}
!1058 = !DILocation(line: 426, column: 41, scope: !454)
!1059 = !DILocation(line: 426, column: 25, scope: !454)
!1060 = !DILocation(line: 426, column: 23, scope: !454)
!1061 = !DILocation(line: 170, column: 11, scope: !24)
!1062 = !DILocation(line: 433, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !454, file: !1, line: 433, column: 11)
!1064 = !DILocation(line: 433, column: 16, scope: !1063)
!1065 = !DILocation(line: 433, column: 24, scope: !1063)
!1066 = !DILocation(line: 433, column: 27, scope: !1063)
!1067 = !DILocation(line: 433, column: 40, scope: !1063)
!1068 = !DILocation(line: 433, column: 11, scope: !454)
!1069 = !DILocation(line: 435, column: 15, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 434, column: 2)
!1071 = !DILocation(line: 418, column: 13, scope: !454)
!1072 = !DILocation(line: 436, column: 4, scope: !1070)
!1073 = !DILocation(line: 437, column: 2, scope: !1070)
!1074 = !DILocation(line: 438, column: 23, scope: !1063)
!1075 = !DILocation(line: 440, column: 28, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !454, file: !1, line: 440, column: 11)
!1077 = !DILocation(line: 440, column: 18, scope: !1076)
!1078 = !DILocation(line: 440, column: 34, scope: !1076)
!1079 = !DILocation(line: 440, column: 37, scope: !1076)
!1080 = !{!591, !591, i64 0}
!1081 = !DILocation(line: 440, column: 50, scope: !1076)
!1082 = !DILocation(line: 440, column: 40, scope: !1076)
!1083 = !DILocation(line: 440, column: 11, scope: !454)
!1084 = !DILocation(line: 442, column: 20, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 440, column: 57)
!1086 = !DILocation(line: 443, column: 40, scope: !1085)
!1087 = !DILocation(line: 443, column: 31, scope: !1085)
!1088 = !DILocation(line: 444, column: 9, scope: !1085)
!1089 = !DILocation(line: 444, column: 21, scope: !1085)
!1090 = !DILocation(line: 441, column: 2, scope: !1085)
!1091 = !DILocation(line: 445, column: 11, scope: !1085)
!1092 = !DILocation(line: 446, column: 7, scope: !1085)
!1093 = !DILocation(line: 447, column: 7, scope: !454)
!1094 = !DILocation(line: 416, column: 46, scope: !455)
!1095 = !DILocation(line: 450, column: 17, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !24, file: !1, line: 450, column: 7)
!1097 = !DILocation(line: 450, column: 7, scope: !24)
!1098 = !DILocation(line: 450, column: 23, scope: !1096)
!1099 = !DILocation(line: 456, column: 3, scope: !24)
!1100 = !DILocation(line: 457, column: 15, scope: !24)
!1101 = !DILocation(line: 463, column: 3, scope: !24)
!1102 = !DILocation(line: 464, column: 3, scope: !24)
!1103 = !DILocation(line: 466, column: 3, scope: !24)
!1104 = !DILocation(line: 469, column: 40, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 469, column: 3)
!1106 = distinct !DILexicalBlock(scope: !24, file: !1, line: 469, column: 3)
!1107 = !DILocation(line: 469, column: 32, scope: !1105)
!1108 = !DILocation(line: 469, column: 3, scope: !1106)
!1109 = !DILocation(line: 171, column: 11, scope: !24)
!1110 = !DILocation(line: 172, column: 11, scope: !24)
!1111 = !DILocation(line: 173, column: 11, scope: !24)
!1112 = !DILocation(line: 173, column: 19, scope: !24)
!1113 = !DILocation(line: 174, column: 11, scope: !24)
!1114 = !DILocation(line: 174, column: 20, scope: !24)
!1115 = !DILocation(line: 176, column: 11, scope: !24)
!1116 = !DILocation(line: 179, column: 11, scope: !24)
!1117 = !DILocation(line: 471, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 470, column: 5)
!1119 = !DILocation(line: 478, column: 16, scope: !1118)
!1120 = !DILocation(line: 478, column: 41, scope: !1118)
!1121 = !DILocation(line: 478, column: 25, scope: !1118)
!1122 = !DILocation(line: 478, column: 23, scope: !1118)
!1123 = !DILocation(line: 480, column: 11, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 480, column: 11)
!1125 = !DILocation(line: 480, column: 19, scope: !1124)
!1126 = !DILocation(line: 480, column: 48, scope: !1124)
!1127 = !DILocation(line: 480, column: 39, scope: !1124)
!1128 = !DILocation(line: 480, column: 54, scope: !1124)
!1129 = !DILocation(line: 480, column: 57, scope: !1124)
!1130 = !DILocation(line: 480, column: 75, scope: !1124)
!1131 = !DILocation(line: 480, column: 66, scope: !1124)
!1132 = !DILocation(line: 482, column: 23, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 482, column: 16)
!1134 = !DILocation(line: 480, column: 11, scope: !1118)
!1135 = !DILocation(line: 482, column: 41, scope: !1133)
!1136 = !DILocation(line: 482, column: 54, scope: !1133)
!1137 = !DILocation(line: 482, column: 44, scope: !1133)
!1138 = !DILocation(line: 482, column: 16, scope: !1124)
!1139 = !DILocation(line: 484, column: 20, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 482, column: 60)
!1141 = !DILocation(line: 485, column: 9, scope: !1140)
!1142 = !DILocation(line: 485, column: 17, scope: !1140)
!1143 = !DILocation(line: 486, column: 9, scope: !1140)
!1144 = !DILocation(line: 486, column: 17, scope: !1140)
!1145 = !DILocation(line: 487, column: 16, scope: !1140)
!1146 = !DILocation(line: 487, column: 9, scope: !1140)
!1147 = !DILocation(line: 487, column: 42, scope: !1140)
!1148 = !DILocation(line: 487, column: 39, scope: !1140)
!1149 = !DILocation(line: 487, column: 34, scope: !1140)
!1150 = !DILocation(line: 488, column: 9, scope: !1140)
!1151 = !DILocation(line: 488, column: 18, scope: !1140)
!1152 = !DILocation(line: 489, column: 17, scope: !1140)
!1153 = !DILocation(line: 489, column: 9, scope: !1140)
!1154 = !DILocation(line: 489, column: 42, scope: !1140)
!1155 = !DILocation(line: 489, column: 47, scope: !1140)
!1156 = !DILocation(line: 489, column: 39, scope: !1140)
!1157 = !DILocation(line: 489, column: 33, scope: !1140)
!1158 = !DILocation(line: 490, column: 9, scope: !1140)
!1159 = !DILocation(line: 483, column: 2, scope: !1140)
!1160 = !DILocation(line: 491, column: 11, scope: !1140)
!1161 = !DILocation(line: 492, column: 7, scope: !1140)
!1162 = !DILocation(line: 469, column: 46, scope: !1105)
!1163 = !DILocation(line: 494, column: 17, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !24, file: !1, line: 494, column: 7)
!1165 = !DILocation(line: 494, column: 7, scope: !24)
!1166 = !DILocation(line: 494, column: 23, scope: !1164)
!1167 = !DILocation(line: 503, column: 14, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !24, file: !1, line: 503, column: 7)
!1169 = !DILocation(line: 503, column: 7, scope: !24)
!1170 = !DILocation(line: 505, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 504, column: 5)
!1172 = !DILocation(line: 506, column: 44, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 506, column: 7)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 506, column: 7)
!1175 = !DILocation(line: 506, column: 36, scope: !1173)
!1176 = !DILocation(line: 506, column: 7, scope: !1174)
!1177 = !DILocation(line: 528, column: 32, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 528, column: 11)
!1179 = !DILocation(line: 529, column: 11, scope: !1171)
!1180 = !DILocation(line: 164, column: 22, scope: !24)
!1181 = !DILocation(line: 509, column: 4, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 507, column: 2)
!1183 = !DILocation(line: 516, column: 13, scope: !1182)
!1184 = !DILocation(line: 516, column: 38, scope: !1182)
!1185 = !DILocation(line: 516, column: 22, scope: !1182)
!1186 = !DILocation(line: 516, column: 20, scope: !1182)
!1187 = !DILocation(line: 518, column: 8, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 518, column: 8)
!1189 = !DILocation(line: 518, column: 16, scope: !1188)
!1190 = !DILocation(line: 518, column: 45, scope: !1188)
!1191 = !DILocation(line: 518, column: 36, scope: !1188)
!1192 = !DILocation(line: 518, column: 51, scope: !1188)
!1193 = !DILocation(line: 518, column: 54, scope: !1188)
!1194 = !DILocation(line: 518, column: 72, scope: !1188)
!1195 = !DILocation(line: 518, column: 63, scope: !1188)
!1196 = !DILocation(line: 520, column: 20, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 520, column: 13)
!1198 = !DILocation(line: 518, column: 8, scope: !1182)
!1199 = !DILocation(line: 520, column: 38, scope: !1197)
!1200 = !DILocation(line: 520, column: 51, scope: !1197)
!1201 = !DILocation(line: 520, column: 41, scope: !1197)
!1202 = !DILocation(line: 520, column: 13, scope: !1188)
!1203 = !DILocation(line: 523, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 521, column: 6)
!1205 = !DILocation(line: 523, column: 14, scope: !1204)
!1206 = !DILocation(line: 523, column: 22, scope: !1204)
!1207 = !DILocation(line: 523, column: 28, scope: !1204)
!1208 = !DILocation(line: 523, column: 36, scope: !1204)
!1209 = !DILocation(line: 523, column: 42, scope: !1204)
!1210 = !DILocation(line: 522, column: 8, scope: !1204)
!1211 = !DILocation(line: 524, column: 22, scope: !1204)
!1212 = !DILocation(line: 524, column: 30, scope: !1204)
!1213 = !DILocation(line: 524, column: 8, scope: !1204)
!1214 = !DILocation(line: 525, column: 17, scope: !1204)
!1215 = !DILocation(line: 526, column: 6, scope: !1204)
!1216 = !DILocation(line: 506, column: 50, scope: !1173)
!1217 = !DILocation(line: 508, column: 18, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 508, column: 8)
!1219 = !DILocation(line: 528, column: 21, scope: !1178)
!1220 = !DILocation(line: 528, column: 11, scope: !1171)
!1221 = !DILocation(line: 529, column: 32, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 529, column: 11)
!1223 = !DILocation(line: 538, column: 3, scope: !24)
!1224 = !DILocation(line: 539, column: 23, scope: !24)
!1225 = !DILocation(line: 539, column: 3, scope: !24)
!1226 = !DILocation(line: 549, column: 3, scope: !24)
!1227 = !DILocation(line: 550, column: 3, scope: !24)
!1228 = !DILocation(line: 551, column: 30, scope: !24)
!1229 = !DILocation(line: 551, column: 3, scope: !24)
!1230 = !DILocation(line: 552, column: 3, scope: !24)
!1231 = !DILocation(line: 553, column: 30, scope: !24)
!1232 = !DILocation(line: 553, column: 3, scope: !24)
!1233 = !DILocation(line: 557, column: 1, scope: !24)
!1234 = !DILocation(line: 562, column: 3, scope: !24)
!1235 = !DILocation(line: 563, column: 3, scope: !24)
!1236 = !DILocation(line: 564, column: 3, scope: !24)
!1237 = !DILocation(line: 565, column: 3, scope: !24)
!1238 = !DILocation(line: 566, column: 3, scope: !24)
!1239 = !DILocation(line: 567, column: 13, scope: !24)
!1240 = !DILocation(line: 567, column: 3, scope: !24)
!1241 = !DILocation(line: 568, column: 3, scope: !24)
!1242 = !DILocation(line: 571, column: 1, scope: !24)
