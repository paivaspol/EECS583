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
@.str70 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c\00", align 1
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
  %desc = alloca i8*, align 8
  %sqlen = alloca i32, align 4
  %domidx = alloca i32, align 4
  %ndom = alloca i32, align 4
  %thresh = alloca %struct.threshold_s, align 8
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !31), !dbg !561
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !32), !dbg !561
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !350), !dbg !562
  call void @llvm.dbg.declare(metadata !{%struct.fancyali_s** %ali}, metadata !370), !dbg !563
  call void @llvm.dbg.declare(metadata !{float* %sc}, metadata !415), !dbg !564
  call void @llvm.dbg.declare(metadata !{double* %pvalue}, metadata !416), !dbg !565
  call void @llvm.dbg.declare(metadata !{double* %motherp}, metadata !418), !dbg !566
  call void @llvm.dbg.declare(metadata !{float* %mothersc}, metadata !419), !dbg !567
  call void @llvm.dbg.declare(metadata !{i32* %sqfrom}, metadata !420), !dbg !568
  call void @llvm.dbg.declare(metadata !{i32* %sqto}, metadata !421), !dbg !568
  call void @llvm.dbg.declare(metadata !{i32* %hmmfrom}, metadata !422), !dbg !569
  call void @llvm.dbg.declare(metadata !{i32* %hmmto}, metadata !423), !dbg !569
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !424), !dbg !570
  call void @llvm.dbg.declare(metadata !{i8** %desc}, metadata !425), !dbg !570
  call void @llvm.dbg.declare(metadata !{i32* %sqlen}, metadata !426), !dbg !571
  call void @llvm.dbg.declare(metadata !{i32* %domidx}, metadata !429), !dbg !572
  call void @llvm.dbg.declare(metadata !{i32* %ndom}, metadata !430), !dbg !573
  %0 = bitcast %struct.threshold_s* %thresh to i8*, !dbg !574
  call void @llvm.lifetime.start(i64 40, i8* %0) #2, !dbg !574
  call void @llvm.dbg.declare(metadata !{%struct.threshold_s* %thresh}, metadata !435), !dbg !574
  call void @llvm.dbg.declare(metadata !{i8** %optname}, metadata !436), !dbg !575
  call void @llvm.dbg.declare(metadata !{i8** %optarg}, metadata !437), !dbg !576
  call void @llvm.dbg.declare(metadata !{i32* %optind}, metadata !438), !dbg !577
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !348), !dbg !578
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !440), !dbg !579
  call void @llvm.dbg.value(metadata !580, i64 0, metadata !439), !dbg !581
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !441), !dbg !582
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !442), !dbg !583
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !428), !dbg !584
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !443), !dbg !585
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !446), !dbg !586
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !445), !dbg !587
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !444), !dbg !588
  call void @llvm.dbg.value(metadata !589, i64 0, metadata !434), !dbg !590
  %globE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !591
  store double 1.000000e+01, double* %globE, align 8, !dbg !591, !tbaa !592
  %globT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0, !dbg !595
  store float 0xC7EFFFFFE0000000, float* %globT, align 8, !dbg !595, !tbaa !596
  %domT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !597
  store float 0xC7EFFFFFE0000000, float* %domT, align 8, !dbg !597, !tbaa !596
  %domE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !598
  store double 0x47EFFFFFE0000000, double* %domE, align 8, !dbg !598, !tbaa !592
  %autocut = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 4, !dbg !599
  store i32 0, i32* %autocut, align 8, !dbg !599, !tbaa !600
  %Z1 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 5, !dbg !601
  store i32 0, i32* %Z1, align 4, !dbg !601, !tbaa !602
  %call670 = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !603
  %tobool671 = icmp eq i32 %call670, 0, !dbg !603
  br i1 %tobool671, label %while.end, label %while.body, !dbg !603

while.body:                                       ; preds = %entry, %while.cond.backedge
  %format.0679 = phi i32 [ %format.0.be, %while.cond.backedge ], [ 0, %entry ]
  %num_threads.0678 = phi i32 [ %num_threads.0.be, %while.cond.backedge ], [ 0, %entry ]
  %be_backwards.0677 = phi i32 [ %be_backwards.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_pvm.0676 = phi i32 [ %do_pvm.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_xnu.0675 = phi i32 [ %do_xnu.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_forward.0674 = phi i32 [ %do_forward.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_null2.0673 = phi i32 [ %do_null2.0.be, %while.cond.backedge ], [ 1, %entry ]
  %Alimit.0672 = phi i32 [ %Alimit.0.be, %while.cond.backedge ], [ 2147483647, %entry ]
  call void @llvm.dbg.value(metadata !{i8** %optname}, i64 0, metadata !436), !dbg !604
  %1 = load i8** %optname, align 8, !dbg !604, !tbaa !606
  %call2 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !604
  %cmp = icmp eq i32 %call2, 0, !dbg !604
  br i1 %cmp, label %if.then, label %if.else, !dbg !604

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !604
  %2 = load i8** %optarg, align 8, !dbg !604, !tbaa !606
  %call3 = call i32 @atoi(i8* %2) #8, !dbg !604
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !434), !dbg !604
  br label %while.cond.backedge, !dbg !604

if.else:                                          ; preds = %while.body
  %call4 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !607
  %cmp5 = icmp eq i32 %call4, 0, !dbg !607
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !607

if.then6:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !607
  %3 = load i8** %optarg, align 8, !dbg !607, !tbaa !606
  %call7 = call double @atof(i8* %3) #8, !dbg !607
  store double %call7, double* %globE, align 8, !dbg !607, !tbaa !592
  br label %while.cond.backedge, !dbg !607

while.cond.backedge:                              ; preds = %if.then6, %if.then19, %if.then31, %if.then43, %if.then55, %if.then94, %if.then90, %if.else95, %if.then62, %if.then49, %if.then37, %if.then12, %if.then, %if.else22, %if.else66, %if.else71, %if.else76, %if.else81
  %Alimit.0.be = phi i32 [ %call3, %if.then ], [ %Alimit.0672, %if.then6 ], [ %Alimit.0672, %if.then12 ], [ %Alimit.0672, %if.then19 ], [ %Alimit.0672, %if.then31 ], [ %Alimit.0672, %if.then37 ], [ %Alimit.0672, %if.then43 ], [ %Alimit.0672, %if.then49 ], [ %Alimit.0672, %if.then55 ], [ %Alimit.0672, %if.then62 ], [ %Alimit.0672, %if.then94 ], [ %Alimit.0672, %if.then90 ], [ %Alimit.0672, %if.else95 ], [ %Alimit.0672, %if.else22 ], [ %Alimit.0672, %if.else66 ], [ %Alimit.0672, %if.else71 ], [ %Alimit.0672, %if.else76 ], [ %Alimit.0672, %if.else81 ]
  %do_null2.0.be = phi i32 [ %do_null2.0673, %if.then ], [ %do_null2.0673, %if.then6 ], [ %do_null2.0673, %if.then12 ], [ %do_null2.0673, %if.then19 ], [ %do_null2.0673, %if.then31 ], [ %do_null2.0673, %if.then37 ], [ %do_null2.0673, %if.then43 ], [ %do_null2.0673, %if.then49 ], [ %do_null2.0673, %if.then55 ], [ %do_null2.0673, %if.then62 ], [ %do_null2.0673, %if.then94 ], [ %do_null2.0673, %if.then90 ], [ %do_null2.0673, %if.else95 ], [ %do_null2.0673, %if.else22 ], [ %do_null2.0673, %if.else66 ], [ 0, %if.else71 ], [ %do_null2.0673, %if.else76 ], [ %do_null2.0673, %if.else81 ]
  %do_forward.0.be = phi i32 [ %do_forward.0674, %if.then ], [ %do_forward.0674, %if.then6 ], [ %do_forward.0674, %if.then12 ], [ %do_forward.0674, %if.then19 ], [ %do_forward.0674, %if.then31 ], [ %do_forward.0674, %if.then37 ], [ %do_forward.0674, %if.then43 ], [ %do_forward.0674, %if.then49 ], [ %do_forward.0674, %if.then55 ], [ %do_forward.0674, %if.then62 ], [ %do_forward.0674, %if.then94 ], [ %do_forward.0674, %if.then90 ], [ %do_forward.0674, %if.else95 ], [ %do_forward.0674, %if.else22 ], [ 1, %if.else66 ], [ %do_forward.0674, %if.else71 ], [ %do_forward.0674, %if.else76 ], [ %do_forward.0674, %if.else81 ]
  %do_xnu.0.be = phi i32 [ %do_xnu.0675, %if.then ], [ %do_xnu.0675, %if.then6 ], [ %do_xnu.0675, %if.then12 ], [ %do_xnu.0675, %if.then19 ], [ %do_xnu.0675, %if.then31 ], [ %do_xnu.0675, %if.then37 ], [ %do_xnu.0675, %if.then43 ], [ %do_xnu.0675, %if.then49 ], [ %do_xnu.0675, %if.then55 ], [ %do_xnu.0675, %if.then62 ], [ %do_xnu.0675, %if.then94 ], [ %do_xnu.0675, %if.then90 ], [ %do_xnu.0675, %if.else95 ], [ %do_xnu.0675, %if.else22 ], [ %do_xnu.0675, %if.else66 ], [ %do_xnu.0675, %if.else71 ], [ %do_xnu.0675, %if.else76 ], [ 1, %if.else81 ]
  %do_pvm.0.be = phi i32 [ %do_pvm.0676, %if.then ], [ %do_pvm.0676, %if.then6 ], [ %do_pvm.0676, %if.then12 ], [ %do_pvm.0676, %if.then19 ], [ %do_pvm.0676, %if.then31 ], [ %do_pvm.0676, %if.then37 ], [ %do_pvm.0676, %if.then43 ], [ %do_pvm.0676, %if.then49 ], [ %do_pvm.0676, %if.then55 ], [ %do_pvm.0676, %if.then62 ], [ %do_pvm.0676, %if.then94 ], [ %do_pvm.0676, %if.then90 ], [ %do_pvm.0676, %if.else95 ], [ %do_pvm.0676, %if.else22 ], [ %do_pvm.0676, %if.else66 ], [ %do_pvm.0676, %if.else71 ], [ 1, %if.else76 ], [ %do_pvm.0676, %if.else81 ]
  %be_backwards.0.be = phi i32 [ %be_backwards.0677, %if.then ], [ %be_backwards.0677, %if.then6 ], [ %be_backwards.0677, %if.then12 ], [ %be_backwards.0677, %if.then19 ], [ %be_backwards.0677, %if.then31 ], [ %be_backwards.0677, %if.then37 ], [ %be_backwards.0677, %if.then43 ], [ %be_backwards.0677, %if.then49 ], [ %be_backwards.0677, %if.then55 ], [ %be_backwards.0677, %if.then62 ], [ %be_backwards.0677, %if.then94 ], [ %be_backwards.0677, %if.then90 ], [ %be_backwards.0677, %if.else95 ], [ 1, %if.else22 ], [ %be_backwards.0677, %if.else66 ], [ %be_backwards.0677, %if.else71 ], [ %be_backwards.0677, %if.else76 ], [ %be_backwards.0677, %if.else81 ]
  %num_threads.0.be = phi i32 [ %num_threads.0678, %if.then ], [ %num_threads.0678, %if.then6 ], [ %num_threads.0678, %if.then12 ], [ %num_threads.0678, %if.then19 ], [ %call32, %if.then31 ], [ %num_threads.0678, %if.then37 ], [ %num_threads.0678, %if.then43 ], [ %num_threads.0678, %if.then49 ], [ %num_threads.0678, %if.then55 ], [ %num_threads.0678, %if.then62 ], [ %num_threads.0678, %if.then94 ], [ %num_threads.0678, %if.then90 ], [ %num_threads.0678, %if.else95 ], [ %num_threads.0678, %if.else22 ], [ %num_threads.0678, %if.else66 ], [ %num_threads.0678, %if.else71 ], [ %num_threads.0678, %if.else76 ], [ %num_threads.0678, %if.else81 ]
  %format.0.be = phi i32 [ %format.0679, %if.then ], [ %format.0679, %if.then6 ], [ %format.0679, %if.then12 ], [ %format.0679, %if.then19 ], [ %format.0679, %if.then31 ], [ %format.0679, %if.then37 ], [ %format.0679, %if.then43 ], [ %format.0679, %if.then49 ], [ %format.0679, %if.then55 ], [ %format.0679, %if.then62 ], [ 0, %if.then94 ], [ %call91, %if.then90 ], [ %format.0679, %if.else95 ], [ %format.0679, %if.else22 ], [ %format.0679, %if.else66 ], [ %format.0679, %if.else71 ], [ %format.0679, %if.else76 ], [ %format.0679, %if.else81 ]
  %call = call i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* getelementptr inbounds ([17 x %struct.opt_s]* @OPTIONS, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0), i32* %optind, i8** %optname, i8** %optarg) #7, !dbg !603
  %tobool = icmp eq i32 %call, 0, !dbg !603
  br i1 %tobool, label %while.end, label %while.body, !dbg !603

if.else9:                                         ; preds = %if.else
  %call10 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !608
  %cmp11 = icmp eq i32 %call10, 0, !dbg !608
  br i1 %cmp11, label %if.then12, label %if.else15, !dbg !608

if.then12:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !608
  %4 = load i8** %optarg, align 8, !dbg !608, !tbaa !606
  %call13 = call double @atof(i8* %4) #8, !dbg !608
  %conv = fptrunc double %call13 to float, !dbg !608
  store float %conv, float* %globT, align 8, !dbg !608, !tbaa !596
  br label %while.cond.backedge, !dbg !608

if.else15:                                        ; preds = %if.else9
  %call16 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !609
  %cmp17 = icmp eq i32 %call16, 0, !dbg !609
  br i1 %cmp17, label %if.then19, label %if.else22, !dbg !609

if.then19:                                        ; preds = %if.else15
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !609
  %5 = load i8** %optarg, align 8, !dbg !609, !tbaa !606
  %call20 = call i32 @atoi(i8* %5) #8, !dbg !609
  store i32 %call20, i32* %Z1, align 4, !dbg !609, !tbaa !602
  br label %while.cond.backedge, !dbg !609

if.else22:                                        ; preds = %if.else15
  %call23 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !610
  %cmp24 = icmp eq i32 %call23, 0, !dbg !610
  br i1 %cmp24, label %while.cond.backedge, label %if.else27, !dbg !610

if.else27:                                        ; preds = %if.else22
  %call28 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !611
  %cmp29 = icmp eq i32 %call28, 0, !dbg !611
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !611

if.then31:                                        ; preds = %if.else27
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !611
  %6 = load i8** %optarg, align 8, !dbg !611, !tbaa !606
  %call32 = call i32 @atoi(i8* %6) #8, !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %call32}, i64 0, metadata !444), !dbg !611
  br label %while.cond.backedge, !dbg !611

if.else33:                                        ; preds = %if.else27
  %call34 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !612
  %cmp35 = icmp eq i32 %call34, 0, !dbg !612
  br i1 %cmp35, label %if.then37, label %if.else39, !dbg !612

if.then37:                                        ; preds = %if.else33
  store i32 1, i32* %autocut, align 8, !dbg !612, !tbaa !600
  br label %while.cond.backedge, !dbg !612

if.else39:                                        ; preds = %if.else33
  %call40 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !613
  %cmp41 = icmp eq i32 %call40, 0, !dbg !613
  br i1 %cmp41, label %if.then43, label %if.else45, !dbg !613

if.then43:                                        ; preds = %if.else39
  store i32 2, i32* %autocut, align 8, !dbg !613, !tbaa !600
  br label %while.cond.backedge, !dbg !613

if.else45:                                        ; preds = %if.else39
  %call46 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !614
  %cmp47 = icmp eq i32 %call46, 0, !dbg !614
  br i1 %cmp47, label %if.then49, label %if.else51, !dbg !614

if.then49:                                        ; preds = %if.else45
  store i32 3, i32* %autocut, align 8, !dbg !614, !tbaa !600
  br label %while.cond.backedge, !dbg !614

if.else51:                                        ; preds = %if.else45
  %call52 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #8, !dbg !615
  %cmp53 = icmp eq i32 %call52, 0, !dbg !615
  br i1 %cmp53, label %if.then55, label %if.else58, !dbg !615

if.then55:                                        ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !615
  %7 = load i8** %optarg, align 8, !dbg !615, !tbaa !606
  %call56 = call double @atof(i8* %7) #8, !dbg !615
  store double %call56, double* %domE, align 8, !dbg !615, !tbaa !592
  br label %while.cond.backedge, !dbg !615

if.else58:                                        ; preds = %if.else51
  %call59 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !616
  %cmp60 = icmp eq i32 %call59, 0, !dbg !616
  br i1 %cmp60, label %if.then62, label %if.else66, !dbg !616

if.then62:                                        ; preds = %if.else58
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !616
  %8 = load i8** %optarg, align 8, !dbg !616, !tbaa !606
  %call63 = call double @atof(i8* %8) #8, !dbg !616
  %conv64 = fptrunc double %call63 to float, !dbg !616
  store float %conv64, float* %domT, align 8, !dbg !616, !tbaa !596
  br label %while.cond.backedge, !dbg !616

if.else66:                                        ; preds = %if.else58
  %call67 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !617
  %cmp68 = icmp eq i32 %call67, 0, !dbg !617
  br i1 %cmp68, label %while.cond.backedge, label %if.else71, !dbg !617

if.else71:                                        ; preds = %if.else66
  %call72 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0)) #8, !dbg !618
  %cmp73 = icmp eq i32 %call72, 0, !dbg !618
  br i1 %cmp73, label %while.cond.backedge, label %if.else76, !dbg !618

if.else76:                                        ; preds = %if.else71
  %call77 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !619
  %cmp78 = icmp eq i32 %call77, 0, !dbg !619
  br i1 %cmp78, label %while.cond.backedge, label %if.else81, !dbg !619

if.else81:                                        ; preds = %if.else76
  %call82 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !620
  %cmp83 = icmp eq i32 %call82, 0, !dbg !620
  br i1 %cmp83, label %while.cond.backedge, label %if.else86, !dbg !620

if.else86:                                        ; preds = %if.else81
  %call87 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0)) #8, !dbg !621
  %cmp88 = icmp eq i32 %call87, 0, !dbg !621
  br i1 %cmp88, label %if.then90, label %if.else95, !dbg !621

if.then90:                                        ; preds = %if.else86
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !622
  %9 = load i8** %optarg, align 8, !dbg !622, !tbaa !606
  %call91 = call i32 @String2SeqfileFormat(i8* %9) #7, !dbg !622
  call void @llvm.dbg.value(metadata !{i32 %call91}, i64 0, metadata !348), !dbg !622
  %cmp92 = icmp eq i32 %call91, 0, !dbg !624
  br i1 %cmp92, label %if.then94, label %while.cond.backedge, !dbg !624

if.then94:                                        ; preds = %if.then90
  call void @llvm.dbg.value(metadata !{i8** %optarg}, i64 0, metadata !437), !dbg !625
  %10 = load i8** %optarg, align 8, !dbg !625, !tbaa !606
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str16, i64 0, i64 0), i8* %10) #7, !dbg !625
  br label %while.cond.backedge, !dbg !625

if.else95:                                        ; preds = %if.else86
  %call96 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #8, !dbg !626
  %cmp97 = icmp eq i32 %call96, 0, !dbg !626
  br i1 %cmp97, label %if.then99, label %while.cond.backedge, !dbg !626

if.then99:                                        ; preds = %if.else95
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !606
  call void @HMMERBanner(%struct._IO_FILE* %11, i8* getelementptr inbounds ([58 x i8]* @banner, i64 0, i64 0)) #7, !dbg !627
  %call100 = call i32 @puts(i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !629
  %call101 = call i32 @puts(i8* getelementptr inbounds ([759 x i8]* @experts, i64 0, i64 0)) #7, !dbg !630
  call void @exit(i32 0) #9, !dbg !631
  unreachable, !dbg !631

while.end:                                        ; preds = %while.cond.backedge, %entry
  %format.0.lcssa = phi i32 [ 0, %entry ], [ %format.0.be, %while.cond.backedge ]
  %num_threads.0.lcssa = phi i32 [ 0, %entry ], [ %num_threads.0.be, %while.cond.backedge ]
  %be_backwards.0.lcssa = phi i32 [ 0, %entry ], [ %be_backwards.0.be, %while.cond.backedge ]
  %do_pvm.0.lcssa = phi i32 [ 0, %entry ], [ %do_pvm.0.be, %while.cond.backedge ]
  %do_xnu.0.lcssa = phi i32 [ 0, %entry ], [ %do_xnu.0.be, %while.cond.backedge ]
  %do_forward.0.lcssa = phi i32 [ 0, %entry ], [ %do_forward.0.be, %while.cond.backedge ]
  %do_null2.0.lcssa = phi i32 [ 1, %entry ], [ %do_null2.0.be, %while.cond.backedge ]
  %Alimit.0.lcssa = phi i32 [ 2147483647, %entry ], [ %Alimit.0.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata !{i32* %optind}, i64 0, metadata !438), !dbg !632
  %12 = load i32* %optind, align 4, !dbg !632, !tbaa !602
  %sub = sub nsw i32 %argc, %12, !dbg !632
  %cmp119 = icmp eq i32 %sub, 2, !dbg !632
  br i1 %cmp119, label %if.end122, label %if.then121, !dbg !632

if.then121:                                       ; preds = %while.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !633
  call void @llvm.dbg.value(metadata !{i32* %optind}, i64 0, metadata !438), !dbg !634
  %.pre = load i32* %optind, align 4, !dbg !634, !tbaa !602
  br label %if.end122, !dbg !633

if.end122:                                        ; preds = %while.end, %if.then121
  %13 = phi i32 [ %12, %while.end ], [ %.pre, %if.then121 ]
  call void @llvm.dbg.value(metadata !{i32* %optind}, i64 0, metadata !438), !dbg !634
  %inc = add nsw i32 %13, 1, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !438), !dbg !634
  %idxprom = sext i32 %13 to i64, !dbg !634
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !634
  %14 = load i8** %arrayidx, align 8, !dbg !634, !tbaa !606
  call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !33), !dbg !634
  %inc123 = add nsw i32 %13, 2, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %inc123}, i64 0, metadata !438), !dbg !635
  store i32 %inc123, i32* %optind, align 4, !dbg !635, !tbaa !602
  %idxprom124 = sext i32 %inc to i64, !dbg !635
  %arrayidx125 = getelementptr inbounds i8** %argv, i64 %idxprom124, !dbg !635
  %15 = load i8** %arrayidx125, align 8, !dbg !635, !tbaa !606
  call void @llvm.dbg.value(metadata !{i8* %15}, i64 0, metadata !209), !dbg !635
  %tobool126 = icmp ne i32 %do_pvm.0.lcssa, 0, !dbg !636
  br i1 %tobool126, label %if.then128, label %if.end129, !dbg !636

if.then128:                                       ; preds = %if.end122
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([74 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !637
  br label %if.end129, !dbg !637

if.end129:                                        ; preds = %if.then128, %if.end122
  %tobool130 = icmp eq i32 %num_threads.0.lcssa, 0, !dbg !638
  br i1 %tobool130, label %if.end134, label %if.then133, !dbg !638

if.then133:                                       ; preds = %if.end129
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([80 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !639
  br label %if.end134, !dbg !639

if.end134:                                        ; preds = %if.end129, %if.then133
  %cmp135 = icmp eq i32 %format.0.lcssa, 0, !dbg !640
  br i1 %cmp135, label %land.lhs.true137, label %if.end144, !dbg !640

land.lhs.true137:                                 ; preds = %if.end134
  %call138 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* %15, i32 0) #7, !dbg !641
  %tobool139 = icmp eq i32 %call138, 0, !dbg !641
  br i1 %tobool139, label %lor.lhs.false, label %if.then143, !dbg !641

lor.lhs.false:                                    ; preds = %land.lhs.true137
  %call140 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0)) #8, !dbg !641
  %cmp141 = icmp eq i32 %call140, 0, !dbg !641
  br i1 %cmp141, label %if.then143, label %if.end144, !dbg !641

if.then143:                                       ; preds = %land.lhs.true137, %lor.lhs.false
  call void @llvm.dbg.value(metadata !642, i64 0, metadata !348), !dbg !643
  br label %if.end144, !dbg !643

if.end144:                                        ; preds = %if.then143, %lor.lhs.false, %if.end134
  %format.1 = phi i32 [ 7, %if.then143 ], [ 0, %lor.lhs.false ], [ %format.0.lcssa, %if.end134 ]
  %call145 = call %struct.ReadSeqVars* @SeqfileOpen(i8* %15, i32 %format.1, i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !644
  call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %call145}, i64 0, metadata !210), !dbg !644
  %cmp146 = icmp eq %struct.ReadSeqVars* %call145, null, !dbg !644
  br i1 %cmp146, label %if.then148, label %if.end149, !dbg !644

if.then148:                                       ; preds = %if.end144
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str24, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !645
  br label %if.end149, !dbg !645

if.end149:                                        ; preds = %if.then148, %if.end144
  %call150 = call %struct.hmmfile_s* @HMMFileOpen(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !646
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %call150}, i64 0, metadata !34), !dbg !646
  %cmp151 = icmp eq %struct.hmmfile_s* %call150, null, !dbg !646
  br i1 %cmp151, label %if.then153, label %if.end154, !dbg !646

if.then153:                                       ; preds = %if.end149
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str26, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([382 x i8]* @usage, i64 0, i64 0)) #7, !dbg !647
  br label %if.end154, !dbg !647

if.end154:                                        ; preds = %if.then153, %if.end149
  %call155 = call i32 @HMMFileRead(%struct.hmmfile_s* %call150, %struct.plan7_s** %hmm) #7, !dbg !648
  %tobool156 = icmp eq i32 %call155, 0, !dbg !648
  br i1 %tobool156, label %if.then157, label %if.end158, !dbg !648

if.then157:                                       ; preds = %if.end154
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([33 x i8]* @.str27, i64 0, i64 0), i8* %14) #7, !dbg !649
  br label %if.end158, !dbg !649

if.end158:                                        ; preds = %if.end154, %if.then157
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !650
  %16 = load %struct.plan7_s** %hmm, align 8, !dbg !650, !tbaa !606
  %cmp159 = icmp eq %struct.plan7_s* %16, null, !dbg !650
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !650

if.then161:                                       ; preds = %if.end158
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0), i8* %14) #7, !dbg !651
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !652
  %.pre689 = load %struct.plan7_s** %hmm, align 8, !dbg !652, !tbaa !606
  br label %if.end162, !dbg !651

if.end162:                                        ; preds = %if.then161, %if.end158
  %17 = phi %struct.plan7_s* [ %.pre689, %if.then161 ], [ %16, %if.end158 ]
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !652
  %18 = xor i32 %do_forward.0.lcssa, 1, !dbg !652
  call void @P7Logoddsify(%struct.plan7_s* %17, i32 %18) #7, !dbg !652
  %tobool164 = icmp ne i32 %do_xnu.0.lcssa, 0, !dbg !653
  %19 = load i32* @Alphabet_type, align 4, !dbg !653, !tbaa !602
  %cmp166 = icmp eq i32 %19, 2, !dbg !653
  %or.cond = and i1 %tobool164, %cmp166, !dbg !653
  br i1 %or.cond, label %if.then168, label %if.end169, !dbg !653

if.then168:                                       ; preds = %if.end162
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !654
  br label %if.end169, !dbg !654

if.end169:                                        ; preds = %if.then168, %if.end162
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !655
  %20 = load %struct.plan7_s** %hmm, align 8, !dbg !655, !tbaa !606
  %call170 = call i32 @SetAutocuts(%struct.threshold_s* %thresh, %struct.plan7_s* %20) #7, !dbg !655
  %tobool171 = icmp eq i32 %call170, 0, !dbg !655
  br i1 %tobool171, label %if.then172, label %if.end174, !dbg !655

if.then172:                                       ; preds = %if.end169
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !656
  %21 = load %struct.plan7_s** %hmm, align 8, !dbg !656, !tbaa !606
  %name173 = getelementptr inbounds %struct.plan7_s* %21, i64 0, i32 0, !dbg !656
  %22 = load i8** %name173, align 8, !dbg !656, !tbaa !606
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str30, i64 0, i64 0), i8* %22) #7, !dbg !656
  br label %if.end174, !dbg !656

if.end174:                                        ; preds = %if.end169, %if.then172
  %23 = load %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !606
  call void @HMMERBanner(%struct._IO_FILE* %23, i8* getelementptr inbounds ([58 x i8]* @banner, i64 0, i64 0)) #7, !dbg !657
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !658
  %24 = load %struct.plan7_s** %hmm, align 8, !dbg !658, !tbaa !606
  %name175 = getelementptr inbounds %struct.plan7_s* %24, i64 0, i32 0, !dbg !658
  %25 = load i8** %name175, align 8, !dbg !658, !tbaa !606
  %call176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str31, i64 0, i64 0), i8* %14, i8* %25) #7, !dbg !658
  %call177 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str32, i64 0, i64 0), i8* %15) #7, !dbg !659
  br i1 %tobool126, label %if.then179, label %if.end181, !dbg !660

if.then179:                                       ; preds = %if.end174
  %puts640 = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str112, i64 0, i64 0)) #2, !dbg !661
  br label %if.end181, !dbg !661

if.end181:                                        ; preds = %if.then179, %if.end174
  %call182 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !662
  %26 = load float* %globT, align 8, !dbg !663, !tbaa !596
  %cmp184 = fcmp oeq float %26, 0xC7EFFFFFE0000000, !dbg !663
  br i1 %cmp184, label %if.then186, label %if.else188, !dbg !663

if.then186:                                       ; preds = %if.end181
  %puts639 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #2, !dbg !663
  br label %if.end214, !dbg !663

if.else188:                                       ; preds = %if.end181
  %conv190 = fpext float %26 to double, !dbg !664
  %call191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), double %conv190) #7, !dbg !664
  %27 = load i32* %autocut, align 8, !dbg !666, !tbaa !600
  switch i32 %27, label %if.else209 [
    i32 1, label %if.then195
    i32 2, label %if.then201
    i32 3, label %if.then207
  ], !dbg !666

if.then195:                                       ; preds = %if.else188
  %puts638 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str110, i64 0, i64 0)) #2, !dbg !666
  br label %if.end214, !dbg !666

if.then201:                                       ; preds = %if.else188
  %puts637 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str109, i64 0, i64 0)) #2, !dbg !667
  br label %if.end214, !dbg !667

if.then207:                                       ; preds = %if.else188
  %puts636 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str108, i64 0, i64 0)) #2, !dbg !668
  br label %if.end214, !dbg !668

if.else209:                                       ; preds = %if.else188
  %putchar = call i32 @putchar(i32 10) #2, !dbg !669
  br label %if.end214

if.end214:                                        ; preds = %if.then195, %if.then207, %if.else209, %if.then201, %if.then186
  %call215 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0)) #7, !dbg !670
  %28 = load float* %domT, align 8, !dbg !671, !tbaa !596
  %cmp217 = fcmp oeq float %28, 0xC7EFFFFFE0000000, !dbg !671
  br i1 %cmp217, label %if.then219, label %if.else221, !dbg !671

if.then219:                                       ; preds = %if.end214
  %puts635 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #2, !dbg !671
  br label %if.end247, !dbg !671

if.else221:                                       ; preds = %if.end214
  %conv223 = fpext float %28 to double, !dbg !672
  %call224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), double %conv223) #7, !dbg !672
  %29 = load i32* %autocut, align 8, !dbg !674, !tbaa !600
  switch i32 %29, label %if.else242 [
    i32 1, label %if.then228
    i32 2, label %if.then234
    i32 3, label %if.then240
  ], !dbg !674

if.then228:                                       ; preds = %if.else221
  %puts634 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str106, i64 0, i64 0)) #2, !dbg !674
  br label %if.end247, !dbg !674

if.then234:                                       ; preds = %if.else221
  %puts633 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str105, i64 0, i64 0)) #2, !dbg !675
  br label %if.end247, !dbg !675

if.then240:                                       ; preds = %if.else221
  %puts632 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str104, i64 0, i64 0)) #2, !dbg !676
  br label %if.end247, !dbg !676

if.else242:                                       ; preds = %if.else221
  %putchar618 = call i32 @putchar(i32 10) #2, !dbg !677
  br label %if.end247

if.end247:                                        ; preds = %if.then228, %if.then240, %if.else242, %if.then234, %if.then219
  %call248 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0)) #7, !dbg !678
  %30 = load double* %globE, align 8, !dbg !679, !tbaa !592
  %cmp250 = fcmp oeq double %30, 0x47EFFFFFE0000000, !dbg !679
  br i1 %cmp250, label %if.then252, label %if.else254, !dbg !679

if.then252:                                       ; preds = %if.end247
  %puts631 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #2, !dbg !679
  br label %if.end257, !dbg !679

if.else254:                                       ; preds = %if.end247
  %call256 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), double %30) #7, !dbg !680
  br label %if.end257

if.end257:                                        ; preds = %if.else254, %if.then252
  %call258 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str47, i64 0, i64 0)) #7, !dbg !681
  %31 = load double* %domE, align 8, !dbg !682, !tbaa !592
  %cmp260 = fcmp oeq double %31, 0x47EFFFFFE0000000, !dbg !682
  br i1 %cmp260, label %if.then262, label %if.else264, !dbg !682

if.then262:                                       ; preds = %if.end257
  %puts630 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0)) #2, !dbg !682
  br label %if.end267, !dbg !682

if.else264:                                       ; preds = %if.end257
  %call266 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str48, i64 0, i64 0), double %31) #7, !dbg !683
  br label %if.end267

if.end267:                                        ; preds = %if.else264, %if.then262
  %puts = call i32 @puts(i8* getelementptr inbounds ([64 x i8]* @str, i64 0, i64 0)) #2, !dbg !684
  %call269 = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100) #7, !dbg !685
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call269}, i64 0, metadata !351), !dbg !685
  %call270 = call %struct.tophit_s* @AllocTophits(i32 200) #7, !dbg !686
  call void @llvm.dbg.value(metadata !{%struct.tophit_s* %call270}, i64 0, metadata !384), !dbg !686
  %call271 = call %struct.tophit_s* @AllocTophits(i32 200) #7, !dbg !687
  call void @llvm.dbg.value(metadata !{%struct.tophit_s* %call271}, i64 0, metadata !414), !dbg !687
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !688
  %32 = load %struct.plan7_s** %hmm, align 8, !dbg !688, !tbaa !606
  %33 = bitcast %struct.p7trace_s** %tr.i to i8*, !dbg !689
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !689
  %34 = bitcast i8** %seq.i to i8*, !dbg !689
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %32}, i64 0, metadata !690) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %call145}, i64 0, metadata !691) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{%struct.threshold_s* %thresh}, i64 0, metadata !692) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{i32 %do_forward.0.lcssa}, i64 0, metadata !693) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{i32 %do_null2.0.lcssa}, i64 0, metadata !694) #2, !dbg !695
  call void @llvm.dbg.value(metadata !{i32 %do_xnu.0.lcssa}, i64 0, metadata !696) #2, !dbg !695
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %call269}, i64 0, metadata !697) #2, !dbg !698
  call void @llvm.dbg.value(metadata !{%struct.tophit_s* %call270}, i64 0, metadata !699) #2, !dbg !700
  call void @llvm.dbg.value(metadata !{%struct.tophit_s* %call271}, i64 0, metadata !701) #2, !dbg !700
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr.i}, metadata !508) #2, !dbg !702
  call void @llvm.dbg.declare(metadata !{i8** %seq.i}, metadata !516) #2, !dbg !703
  %35 = bitcast %struct.seqinfo_s* %sqinfo.i to i8*, !dbg !704
  call void @llvm.lifetime.start(i64 360, i8* %35) #2, !dbg !704
  call void @llvm.dbg.declare(metadata !{%struct.seqinfo_s* %sqinfo.i}, metadata !518) #2, !dbg !704
  %M.i = getelementptr inbounds %struct.plan7_s* %32, i64 0, i32 20, !dbg !705
  %36 = load i32* %M.i, align 4, !dbg !705, !tbaa !602
  %call.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %36, i32 25, i32 0) #7, !dbg !705
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !706) #2, !dbg !705
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !707) #2, !dbg !708
  %format.i = getelementptr inbounds %struct.ReadSeqVars* %call145, i64 0, i32 20, !dbg !709
  %len.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 5, !dbg !710
  %tobool20.i = icmp eq i32 %do_forward.0.lcssa, 0, !dbg !712
  %arraydecay.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 1, i64 0, !dbg !713
  %flags.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 0, !dbg !713
  %arraydecay43.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 3, i64 0, !dbg !713
  %arraydecay51.i = getelementptr inbounds %struct.seqinfo_s* %sqinfo.i, i64 0, i32 4, i64 0, !dbg !713
  %tobool24.i = icmp eq i32 %do_null2.0.lcssa, 0, !dbg !715
  br label %while.cond.outer.i, !dbg !709

while.cond.outer.i:                               ; preds = %if.end56.i, %if.end267
  %nseq.0.ph.i = phi i32 [ 0, %if.end267 ], [ %inc.i, %if.end56.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.cond.outer.i
  %37 = load i32* %format.i, align 4, !dbg !709, !tbaa !602
  %call1.i = call i32 @ReadSeq(%struct.ReadSeqVars* %call145, i32 %37, i8** %seq.i, %struct.seqinfo_s* %sqinfo.i) #7, !dbg !709
  %tobool.i = icmp eq i32 %call1.i, 0, !dbg !709
  br i1 %tobool.i, label %main_loop_serial.exit, label %while.body.i, !dbg !709

while.body.i:                                     ; preds = %while.cond.i
  %38 = load i32* %len.i, align 4, !dbg !710, !tbaa !602
  %cmp.i = icmp eq i32 %38, 0, !dbg !710
  br i1 %cmp.i, label %while.cond.i, label %if.end.i, !dbg !710

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nsw i32 %nseq.0.ph.i, 1, !dbg !717
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !707) #2, !dbg !717
  call void @llvm.dbg.value(metadata !{i8** %seq.i}, i64 0, metadata !718) #2, !dbg !719
  call void @llvm.dbg.value(metadata !{i8** %seq.i}, i64 0, metadata !516), !dbg !719
  %39 = load i8** %seq.i, align 8, !dbg !719, !tbaa !606
  %call3.i = call i8* @DigitizeSequence(i8* %39, i32 %38) #7, !dbg !719
  call void @llvm.dbg.value(metadata !{i8* %call3.i}, i64 0, metadata !720) #2, !dbg !719
  %40 = load i32* @Alphabet_type, align 4, !dbg !721, !tbaa !602
  %cmp5.i = icmp eq i32 %40, 3, !dbg !721
  %or.cond.i = and i1 %tobool164, %cmp5.i, !dbg !721
  br i1 %or.cond.i, label %if.then6.i, label %if.end9.i, !dbg !721

if.then6.i:                                       ; preds = %if.end.i
  %41 = load i32* %len.i, align 4, !dbg !721, !tbaa !602
  %call8.i = call i32 @XNU(i8* %call3.i, i32 %41) #7, !dbg !721
  br label %if.end9.i, !dbg !721

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i
  %42 = load i32* %len.i, align 4, !dbg !722, !tbaa !602
  %43 = load i32* %M.i, align 4, !dbg !722, !tbaa !602
  %call12.i = call i32 @P7ViterbiSize(i32 %42, i32 %43) #7, !dbg !722
  %cmp13.i = icmp slt i32 %call12.i, 1001, !dbg !722
  %44 = load i32* %len.i, align 4, !dbg !723, !tbaa !602
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i, !dbg !722

if.then14.i:                                      ; preds = %if.end9.i
  %call16.i = call float @P7Viterbi(i8* %call3.i, i32 %44, %struct.plan7_s* %32, %struct.dpmatrix_s* %call.i, %struct.p7trace_s** %tr.i) #7, !dbg !723
  call void @llvm.dbg.value(metadata !{float %call16.i}, i64 0, metadata !724) #2, !dbg !723
  br label %if.end19.i, !dbg !723

if.else.i:                                        ; preds = %if.end9.i
  %call18.i = call float @P7SmallViterbi(i8* %call3.i, i32 %44, %struct.plan7_s* %32, %struct.dpmatrix_s* %call.i, %struct.p7trace_s** %tr.i) #7, !dbg !725
  call void @llvm.dbg.value(metadata !{float %call18.i}, i64 0, metadata !724) #2, !dbg !725
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then14.i
  %sc.0.i = phi float [ %call16.i, %if.then14.i ], [ %call18.i, %if.else.i ]
  br i1 %tobool20.i, label %if.end28.i, label %if.then21.i, !dbg !712

if.then21.i:                                      ; preds = %if.end19.i
  %45 = load i32* %len.i, align 4, !dbg !726, !tbaa !602
  %call23.i = call float @P7Forward(i8* %call3.i, i32 %45, %struct.plan7_s* %32, %struct.dpmatrix_s** null) #7, !dbg !726
  call void @llvm.dbg.value(metadata !{float %call23.i}, i64 0, metadata !724) #2, !dbg !726
  br i1 %tobool24.i, label %if.end28.i, label %if.then25.i, !dbg !715

if.then25.i:                                      ; preds = %if.then21.i
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr.i}, i64 0, metadata !727) #2, !dbg !715
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr.i}, i64 0, metadata !508), !dbg !715
  %46 = load %struct.p7trace_s** %tr.i, align 8, !dbg !715, !tbaa !606
  %call26.i = call float @TraceScoreCorrection(%struct.plan7_s* %32, %struct.p7trace_s* %46, i8* %call3.i) #7, !dbg !715
  %sub.i = fsub float %call23.i, %call26.i, !dbg !715
  call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !724) #2, !dbg !715
  br label %if.end28.i, !dbg !715

if.end28.i:                                       ; preds = %if.then25.i, %if.then21.i, %if.end19.i
  %sc.1.i = phi float [ %sub.i, %if.then25.i ], [ %call23.i, %if.then21.i ], [ %sc.0.i, %if.end19.i ]
  %call29.i = call double @PValue(%struct.plan7_s* %32, float %sc.1.i) #7, !dbg !728
  call void @llvm.dbg.value(metadata !{double %call29.i}, i64 0, metadata !729) #2, !dbg !728
  %47 = load i32* %Z1, align 4, !dbg !730, !tbaa !602
  %48 = load float* %globT, align 8, !dbg !731, !tbaa !596
  %cmp34.i = fcmp ult float %sc.1.i, %48, !dbg !731
  br i1 %cmp34.i, label %if.end56.i, label %land.lhs.true36.i, !dbg !731

land.lhs.true36.i:                                ; preds = %if.end28.i
  %tobool30.i = icmp eq i32 %47, 0, !dbg !730
  %inc..i = select i1 %tobool30.i, i32 %inc.i, i32 %47, !dbg !730
  %conv.pn.i = sitofp i32 %inc..i to double, !dbg !730
  %cond.i = fmul double %call29.i, %conv.pn.i, !dbg !730
  %49 = load double* %globE, align 8, !dbg !731, !tbaa !592
  %cmp37.i = fcmp ugt double %cond.i, %49, !dbg !731
  br i1 %cmp37.i, label %if.end56.i, label %if.then39.i, !dbg !731

if.then39.i:                                      ; preds = %land.lhs.true36.i
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr.i}, i64 0, metadata !727) #2, !dbg !713
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr.i}, i64 0, metadata !508), !dbg !713
  %50 = load %struct.p7trace_s** %tr.i, align 8, !dbg !713, !tbaa !606
  %51 = load i32* %len.i, align 4, !dbg !713, !tbaa !602
  %52 = load i32* %flags.i, align 8, !dbg !713, !tbaa !602
  %and.i = and i32 %52, 4, !dbg !713
  %tobool41.i = icmp eq i32 %and.i, 0, !dbg !713
  %.arraydecay43.i = select i1 %tobool41.i, i8* null, i8* %arraydecay43.i, !dbg !713
  %and48.i = and i32 %52, 8, !dbg !713
  %tobool49.i = icmp eq i32 %and48.i, 0, !dbg !713
  %cond54.i = select i1 %tobool49.i, i8* null, i8* %arraydecay51.i, !dbg !713
  %call55.i = call float @PostprocessSignificantHit(%struct.tophit_s* %call270, %struct.tophit_s* %call271, %struct.p7trace_s* %50, %struct.plan7_s* %32, i8* %call3.i, i32 %51, i8* %arraydecay.i, i8* %.arraydecay43.i, i8* %cond54.i, i32 %do_forward.0.lcssa, float %sc.1.i, i32 %do_null2.0.lcssa, %struct.threshold_s* %thresh, i32 0) #7, !dbg !713
  call void @llvm.dbg.value(metadata !{float %call55.i}, i64 0, metadata !724) #2, !dbg !713
  br label %if.end56.i, !dbg !732

if.end56.i:                                       ; preds = %if.then39.i, %land.lhs.true36.i, %if.end28.i
  %sc.2.i = phi float [ %call55.i, %if.then39.i ], [ %sc.1.i, %land.lhs.true36.i ], [ %sc.1.i, %if.end28.i ]
  call void @AddToHistogram(%struct.histogram_s* %call269, float %sc.2.i) #7, !dbg !733
  call void @llvm.dbg.value(metadata !{i8** %seq.i}, i64 0, metadata !718) #2, !dbg !734
  call void @llvm.dbg.value(metadata !{i8** %seq.i}, i64 0, metadata !516), !dbg !734
  %53 = load i8** %seq.i, align 8, !dbg !734, !tbaa !606
  call void @FreeSequence(i8* %53, %struct.seqinfo_s* %sqinfo.i) #7, !dbg !734
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr.i}, i64 0, metadata !727) #2, !dbg !735
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr.i}, i64 0, metadata !508), !dbg !735
  %54 = load %struct.p7trace_s** %tr.i, align 8, !dbg !735, !tbaa !606
  call void @P7FreeTrace(%struct.p7trace_s* %54) #7, !dbg !735
  call void @free(i8* %call3.i) #7, !dbg !736
  br label %while.cond.outer.i, !dbg !737

main_loop_serial.exit:                            ; preds = %while.cond.i
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #7, !dbg !738
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !427), !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !740), !dbg !700
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !427), !dbg !741
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !427), !dbg !742
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !427), !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !427), !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %nseq.0.ph.i}, i64 0, metadata !427), !dbg !745
  call void @llvm.lifetime.end(i64 360, i8* %35) #2, !dbg !746
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !747
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !747
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !748
  %55 = load %struct.plan7_s** %hmm, align 8, !dbg !748, !tbaa !606
  %flags = getelementptr inbounds %struct.plan7_s* %55, i64 0, i32 47, !dbg !748
  %56 = load i32* %flags, align 4, !dbg !748, !tbaa !602
  %and = and i32 %56, 128, !dbg !748
  %tobool284 = icmp eq i32 %and, 0, !dbg !748
  br i1 %tobool284, label %if.end288, label %if.then285, !dbg !748

if.then285:                                       ; preds = %main_loop_serial.exit
  %mu = getelementptr inbounds %struct.plan7_s* %55, i64 0, i32 45, !dbg !749
  %57 = load float* %mu, align 4, !dbg !749, !tbaa !596
  %lambda = getelementptr inbounds %struct.plan7_s* %55, i64 0, i32 46, !dbg !749
  %58 = load float* %lambda, align 4, !dbg !749, !tbaa !596
  %lowscore = getelementptr inbounds %struct.histogram_s* %call269, i64 0, i32 4, !dbg !749
  %59 = load i32* %lowscore, align 4, !dbg !749, !tbaa !602
  %conv286 = sitofp i32 %59 to float, !dbg !749
  %highscore = getelementptr inbounds %struct.histogram_s* %call269, i64 0, i32 3, !dbg !749
  %60 = load i32* %highscore, align 4, !dbg !749, !tbaa !602
  %conv287 = sitofp i32 %60 to float, !dbg !749
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %call269, float %57, float %58, float %conv286, float %conv287, i32 0) #7, !dbg !749
  br label %if.end288, !dbg !749

if.end288:                                        ; preds = %main_loop_serial.exit, %if.then285
  %61 = load i32* %Z1, align 4, !dbg !741, !tbaa !602
  %tobool290 = icmp eq i32 %61, 0, !dbg !741
  br i1 %tobool290, label %if.then291, label %if.end293, !dbg !741

if.then291:                                       ; preds = %if.end288
  store i32 %nseq.0.ph.i, i32* %Z1, align 4, !dbg !741, !tbaa !602
  br label %if.end293, !dbg !741

if.end293:                                        ; preds = %if.end288, %if.then291
  %tobool294 = icmp eq i32 %be_backwards.0.lcssa, 0, !dbg !750
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !751
  %62 = load %struct.plan7_s** %hmm, align 8, !dbg !751, !tbaa !606
  %name296 = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 0, !dbg !751
  %63 = load i8** %name296, align 8, !dbg !751, !tbaa !606
  br i1 %tobool294, label %if.else309, label %if.then295, !dbg !750

if.then295:                                       ; preds = %if.end293
  %flags297 = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 47, !dbg !751
  %64 = load i32* %flags297, align 4, !dbg !751, !tbaa !602
  %and298 = and i32 %64, 512, !dbg !751
  %tobool299 = icmp eq i32 %and298, 0, !dbg !751
  br i1 %tobool299, label %cond.end, label %cond.true, !dbg !751

cond.true:                                        ; preds = %if.then295
  %acc = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 1, !dbg !751
  %65 = load i8** %acc, align 8, !dbg !751, !tbaa !606
  br label %cond.end, !dbg !751

cond.end:                                         ; preds = %if.then295, %cond.true
  %cond = phi i8* [ %65, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), %if.then295 ], !dbg !751
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !751
  %and301 = and i32 %64, 2, !dbg !751
  %tobool302 = icmp eq i32 %and301, 0, !dbg !751
  br i1 %tobool302, label %cond.end306, label %cond.true303, !dbg !751

cond.true303:                                     ; preds = %cond.end
  %desc304 = getelementptr inbounds %struct.plan7_s* %62, i64 0, i32 2, !dbg !751
  %66 = load i8** %desc304, align 8, !dbg !751, !tbaa !606
  br label %cond.end306, !dbg !751

cond.end306:                                      ; preds = %cond.end, %cond.true303
  %cond307 = phi i8* [ %66, %cond.true303 ], [ getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), %cond.end ], !dbg !751
  %call308 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str50, i64 0, i64 0), i8* %63, i8* %cond, i8* %cond307) #7, !dbg !751
  br label %if.end330, !dbg !753

if.else309:                                       ; preds = %if.end293
  %call311 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str52, i64 0, i64 0), i8* %63) #7, !dbg !754
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !756
  %67 = load %struct.plan7_s** %hmm, align 8, !dbg !756, !tbaa !606
  %flags312 = getelementptr inbounds %struct.plan7_s* %67, i64 0, i32 47, !dbg !756
  %68 = load i32* %flags312, align 4, !dbg !756, !tbaa !602
  %and313 = and i32 %68, 512, !dbg !756
  %tobool314 = icmp eq i32 %and313, 0, !dbg !756
  br i1 %tobool314, label %cond.end318, label %cond.true315, !dbg !756

cond.true315:                                     ; preds = %if.else309
  %acc316 = getelementptr inbounds %struct.plan7_s* %67, i64 0, i32 1, !dbg !756
  %69 = load i8** %acc316, align 8, !dbg !756, !tbaa !606
  br label %cond.end318, !dbg !756

cond.end318:                                      ; preds = %if.else309, %cond.true315
  %cond319 = phi i8* [ %69, %cond.true315 ], [ getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0), %if.else309 ], !dbg !756
  %call320 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i8* %cond319) #7, !dbg !756
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !757
  %70 = load %struct.plan7_s** %hmm, align 8, !dbg !757, !tbaa !606
  %flags321 = getelementptr inbounds %struct.plan7_s* %70, i64 0, i32 47, !dbg !757
  %71 = load i32* %flags321, align 4, !dbg !757, !tbaa !602
  %and322 = and i32 %71, 2, !dbg !757
  %tobool323 = icmp eq i32 %and322, 0, !dbg !757
  br i1 %tobool323, label %cond.end327, label %cond.true324, !dbg !757

cond.true324:                                     ; preds = %cond.end318
  %desc325 = getelementptr inbounds %struct.plan7_s* %70, i64 0, i32 2, !dbg !757
  %72 = load i8** %desc325, align 8, !dbg !757, !tbaa !606
  br label %cond.end327, !dbg !757

cond.end327:                                      ; preds = %cond.end318, %cond.true324
  %cond328 = phi i8* [ %72, %cond.true324 ], [ getelementptr inbounds ([7 x i8]* @str111, i64 0, i64 0), %cond.end318 ], !dbg !757
  %call329 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i8* %cond328) #7, !dbg !757
  br label %if.end330

if.end330:                                        ; preds = %cond.end327, %cond.end306
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !758
  %73 = load %struct.plan7_s** %hmm, align 8, !dbg !758, !tbaa !606
  %flags331 = getelementptr inbounds %struct.plan7_s* %73, i64 0, i32 47, !dbg !758
  %74 = load i32* %flags331, align 4, !dbg !758, !tbaa !602
  %and332 = and i32 %74, 128, !dbg !758
  %tobool333 = icmp eq i32 %and332, 0, !dbg !758
  br i1 %tobool333, label %if.else336, label %if.then334, !dbg !758

if.then334:                                       ; preds = %if.end330
  %puts629 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str101, i64 0, i64 0)) #2, !dbg !759
  br label %if.end338, !dbg !759

if.else336:                                       ; preds = %if.end330
  %puts619 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str91, i64 0, i64 0)) #2, !dbg !760
  br label %if.end338

if.end338:                                        ; preds = %if.else336, %if.then334
  call void @FullSortTophits(%struct.tophit_s* %call270) #7, !dbg !761
  %call339 = call i32 @TophitsMaxName(%struct.tophit_s* %call270) #7, !dbg !762
  %cmp340 = icmp slt i32 %call339, 8, !dbg !762
  br i1 %cmp340, label %cond.end345, label %cond.false343, !dbg !762

cond.false343:                                    ; preds = %if.end338
  %call344 = call i32 @TophitsMaxName(%struct.tophit_s* %call270) #7, !dbg !762
  br label %cond.end345, !dbg !762

cond.end345:                                      ; preds = %if.end338, %cond.false343
  %cond346 = phi i32 [ %call344, %cond.false343 ], [ 8, %if.end338 ], !dbg !762
  call void @llvm.dbg.value(metadata !{i32 %cond346}, i64 0, metadata !431), !dbg !762
  %sub347 = sub nsw i32 52, %cond346, !dbg !763
  %cmp348 = icmp sgt i32 %sub347, 11, !dbg !763
  %sub347. = select i1 %cmp348, i32 %sub347, i32 11, !dbg !763
  call void @llvm.dbg.value(metadata !{i32 %sub347.}, i64 0, metadata !432), !dbg !763
  %puts620 = call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str92, i64 0, i64 0)) #2, !dbg !764
  %call356 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str59, i64 0, i64 0), i32 %cond346, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i32 %sub347., i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0)) #7, !dbg !765
  %call357 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str59, i64 0, i64 0), i32 %cond346, i8* getelementptr inbounds ([9 x i8]* @.str65, i64 0, i64 0), i32 %sub347., i8* getelementptr inbounds ([12 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str69, i64 0, i64 0)) #7, !dbg !766
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !349), !dbg !767
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !433), !dbg !767
  %num = getelementptr inbounds %struct.tophit_s* %call270, i64 0, i32 3, !dbg !767
  %75 = load i32* %num, align 4, !dbg !767, !tbaa !602
  %cmp358657 = icmp sgt i32 %75, 0, !dbg !767
  br i1 %cmp358657, label %for.body, label %if.then395, !dbg !767

for.body:                                         ; preds = %cond.end345, %if.end391
  %i.0659 = phi i32 [ %inc392, %if.end391 ], [ 0, %cond.end345 ]
  %nreported.0658 = phi i32 [ %nreported.1, %if.end391 ], [ 0, %cond.end345 ]
  call void @GetRankedHit(%struct.tophit_s* %call270, i32 %i.0659, double* %pvalue, float* %sc, double* null, float* null, i8** %name, i8** null, i8** %desc, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %ndom, %struct.fancyali_s** null) #7, !dbg !768
  call void @llvm.dbg.value(metadata !{double* %pvalue}, i64 0, metadata !416), !dbg !769
  %76 = load double* %pvalue, align 8, !dbg !769, !tbaa !592
  %77 = load i32* %Z1, align 4, !dbg !769, !tbaa !602
  %conv361 = sitofp i32 %77 to double, !dbg !769
  %mul = fmul double %76, %conv361, !dbg !769
  call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !417), !dbg !769
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !425), !dbg !770
  %78 = load i8** %desc, align 8, !dbg !770, !tbaa !606
  %cmp362 = icmp eq i8* %78, null, !dbg !770
  br i1 %cmp362, label %if.else371, label %land.lhs.true364, !dbg !770

land.lhs.true364:                                 ; preds = %for.body
  %call365 = call i64 @strlen(i8* %78) #8, !dbg !770
  %cmp366 = icmp ult i64 %call365, 80, !dbg !770
  br i1 %cmp366, label %if.then368, label %if.else371, !dbg !770

if.then368:                                       ; preds = %land.lhs.true364
  %call369 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str70, i64 0, i64 0), i32 435, i64 80) #7, !dbg !771
  call void @llvm.dbg.value(metadata !{i8* %call369}, i64 0, metadata !447), !dbg !771
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !425), !dbg !773
  %79 = load i8** %desc, align 8, !dbg !773, !tbaa !606
  %call370 = call i8* @strcpy(i8* %call369, i8* %79) #7, !dbg !773
  br label %if.end373, !dbg !774

if.else371:                                       ; preds = %for.body, %land.lhs.true364
  call void @llvm.dbg.value(metadata !{i8** %desc}, i64 0, metadata !425), !dbg !775
  %call372 = call i8* @Strdup(i8* %78) #7, !dbg !775
  call void @llvm.dbg.value(metadata !{i8* %call372}, i64 0, metadata !447), !dbg !775
  br label %if.end373

if.end373:                                        ; preds = %if.else371, %if.then368
  %safedesc.0 = phi i8* [ %call369, %if.then368 ], [ %call372, %if.else371 ]
  %80 = load double* %globE, align 8, !dbg !776, !tbaa !592
  %cmp375 = fcmp ugt double %mul, %80, !dbg !776
  br i1 %cmp375, label %if.end391, label %land.lhs.true377, !dbg !776

land.lhs.true377:                                 ; preds = %if.end373
  call void @llvm.dbg.value(metadata !{float* %sc}, i64 0, metadata !415), !dbg !776
  %81 = load float* %sc, align 4, !dbg !776, !tbaa !596
  %82 = load float* %globT, align 8, !dbg !776, !tbaa !596
  %cmp379 = fcmp ult float %81, %82, !dbg !776
  br i1 %cmp379, label %if.end391, label %if.then381, !dbg !776

if.then381:                                       ; preds = %land.lhs.true377
  call void @llvm.dbg.value(metadata !{i8** %name}, i64 0, metadata !424), !dbg !777
  %83 = load i8** %name, align 8, !dbg !777, !tbaa !606
  %cmp382 = icmp ne i8* %safedesc.0, null, !dbg !777
  %cond387 = select i1 %cmp382, i8* %safedesc.0, i8* getelementptr inbounds ([1 x i8]* @.str51, i64 0, i64 0), !dbg !777
  %conv388 = fpext float %81 to double, !dbg !777
  call void @llvm.dbg.value(metadata !{i32* %ndom}, i64 0, metadata !430), !dbg !777
  %84 = load i32* %ndom, align 4, !dbg !777, !tbaa !602
  %call389 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str71, i64 0, i64 0), i32 %cond346, i8* %83, i32 %sub347., i32 %sub347., i8* %cond387, double %conv388, double %mul, i32 %84) #7, !dbg !777
  %inc390 = add nsw i32 %nreported.0658, 1, !dbg !779
  call void @llvm.dbg.value(metadata !{i32 %inc390}, i64 0, metadata !433), !dbg !779
  br label %if.end391, !dbg !780

if.end391:                                        ; preds = %land.lhs.true377, %if.end373, %if.then381
  %nreported.1 = phi i32 [ %inc390, %if.then381 ], [ %nreported.0658, %land.lhs.true377 ], [ %nreported.0658, %if.end373 ]
  call void @free(i8* %safedesc.0) #7, !dbg !781
  %inc392 = add nsw i32 %i.0659, 1, !dbg !767
  call void @llvm.dbg.value(metadata !{i32 %inc392}, i64 0, metadata !349), !dbg !767
  %85 = load i32* %num, align 4, !dbg !767, !tbaa !602
  %cmp358 = icmp slt i32 %inc392, %85, !dbg !767
  br i1 %cmp358, label %for.body, label %for.end, !dbg !767

for.end:                                          ; preds = %if.end391
  %cmp393 = icmp eq i32 %nreported.1, 0, !dbg !782
  br i1 %cmp393, label %if.then395, label %if.end397, !dbg !782

if.then395:                                       ; preds = %cond.end345, %for.end
  %puts628 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #2, !dbg !782
  br label %if.end397, !dbg !782

if.end397:                                        ; preds = %if.then395, %for.end
  call void @FullSortTophits(%struct.tophit_s* %call271) #7, !dbg !783
  %call398 = call i32 @TophitsMaxName(%struct.tophit_s* %call271) #7, !dbg !784
  %cmp399 = icmp slt i32 %call398, 8, !dbg !784
  br i1 %cmp399, label %cond.end404, label %cond.false402, !dbg !784

cond.false402:                                    ; preds = %if.end397
  %call403 = call i32 @TophitsMaxName(%struct.tophit_s* %call271) #7, !dbg !784
  br label %cond.end404, !dbg !784

cond.end404:                                      ; preds = %if.end397, %cond.false402
  %cond405 = phi i32 [ %call403, %cond.false402 ], [ 8, %if.end397 ], !dbg !784
  call void @llvm.dbg.value(metadata !{i32 %cond405}, i64 0, metadata !431), !dbg !784
  %puts621 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str93, i64 0, i64 0)) #2, !dbg !785
  %call407 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str74, i64 0, i64 0), i32 %cond405, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0)) #7, !dbg !786
  %call408 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str74, i64 0, i64 0), i32 %cond405, i8* getelementptr inbounds ([9 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0)) #7, !dbg !787
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !349), !dbg !788
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !433), !dbg !788
  %num410 = getelementptr inbounds %struct.tophit_s* %call271, i64 0, i32 3, !dbg !788
  %86 = load i32* %num410, align 4, !dbg !788, !tbaa !602
  %cmp411652 = icmp sgt i32 %86, 0, !dbg !788
  br i1 %cmp411652, label %for.body413, label %if.then459, !dbg !788

for.body413:                                      ; preds = %cond.end404, %for.inc454
  %i.1654 = phi i32 [ %inc455, %for.inc454 ], [ 0, %cond.end404 ]
  %nreported.2653 = phi i32 [ %nreported.3, %for.inc454 ], [ 0, %cond.end404 ]
  call void @GetRankedHit(%struct.tophit_s* %call271, i32 %i.1654, double* %pvalue, float* %sc, double* %motherp, float* %mothersc, i8** %name, i8** null, i8** null, i32* %sqfrom, i32* %sqto, i32* %sqlen, i32* %hmmfrom, i32* %hmmto, i32* null, i32* %domidx, i32* %ndom, %struct.fancyali_s** null) #7, !dbg !790
  call void @llvm.dbg.value(metadata !{double* %pvalue}, i64 0, metadata !416), !dbg !792
  %87 = load double* %pvalue, align 8, !dbg !792, !tbaa !592
  %88 = load i32* %Z1, align 4, !dbg !792, !tbaa !602
  %conv415 = sitofp i32 %88 to double, !dbg !792
  %mul416 = fmul double %87, %conv415, !dbg !792
  call void @llvm.dbg.value(metadata !{double %mul416}, i64 0, metadata !417), !dbg !792
  call void @llvm.dbg.value(metadata !{double* %motherp}, i64 0, metadata !418), !dbg !793
  %89 = load double* %motherp, align 8, !dbg !793, !tbaa !592
  %mul419 = fmul double %89, %conv415, !dbg !793
  %90 = load double* %globE, align 8, !dbg !793, !tbaa !592
  %cmp421 = fcmp ogt double %mul419, %90, !dbg !793
  br i1 %cmp421, label %for.inc454, label %lor.lhs.false423, !dbg !793

lor.lhs.false423:                                 ; preds = %for.body413
  call void @llvm.dbg.value(metadata !{float* %mothersc}, i64 0, metadata !419), !dbg !793
  %91 = load float* %mothersc, align 4, !dbg !793, !tbaa !596
  %92 = load float* %globT, align 8, !dbg !793, !tbaa !596
  %cmp425 = fcmp olt float %91, %92, !dbg !793
  br i1 %cmp425, label %for.inc454, label %if.else428, !dbg !793

if.else428:                                       ; preds = %lor.lhs.false423
  %93 = load double* %domE, align 8, !dbg !794, !tbaa !592
  %cmp430 = fcmp ugt double %mul416, %93, !dbg !794
  br i1 %cmp430, label %for.inc454, label %land.lhs.true432, !dbg !794

land.lhs.true432:                                 ; preds = %if.else428
  call void @llvm.dbg.value(metadata !{float* %sc}, i64 0, metadata !415), !dbg !794
  %94 = load float* %sc, align 4, !dbg !794, !tbaa !596
  %95 = load float* %domT, align 8, !dbg !794, !tbaa !596
  %cmp434 = fcmp ult float %94, %95, !dbg !794
  br i1 %cmp434, label %for.inc454, label %if.then436, !dbg !794

if.then436:                                       ; preds = %land.lhs.true432
  call void @llvm.dbg.value(metadata !{i8** %name}, i64 0, metadata !424), !dbg !795
  %96 = load i8** %name, align 8, !dbg !795, !tbaa !606
  call void @llvm.dbg.value(metadata !{i32* %domidx}, i64 0, metadata !429), !dbg !795
  %97 = load i32* %domidx, align 4, !dbg !795, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %ndom}, i64 0, metadata !430), !dbg !795
  %98 = load i32* %ndom, align 4, !dbg !795, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %sqfrom}, i64 0, metadata !420), !dbg !795
  %99 = load i32* %sqfrom, align 4, !dbg !795, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %sqto}, i64 0, metadata !421), !dbg !795
  %100 = load i32* %sqto, align 4, !dbg !795, !tbaa !602
  %cmp437 = icmp eq i32 %99, 1, !dbg !795
  %cond439 = select i1 %cmp437, i32 91, i32 46, !dbg !795
  call void @llvm.dbg.value(metadata !{i32* %sqlen}, i64 0, metadata !426), !dbg !795
  %101 = load i32* %sqlen, align 4, !dbg !795, !tbaa !602
  %cmp440 = icmp eq i32 %100, %101, !dbg !795
  %cond442 = select i1 %cmp440, i32 93, i32 46, !dbg !795
  call void @llvm.dbg.value(metadata !{i32* %hmmfrom}, i64 0, metadata !422), !dbg !795
  %102 = load i32* %hmmfrom, align 4, !dbg !795, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %hmmto}, i64 0, metadata !423), !dbg !795
  %103 = load i32* %hmmto, align 4, !dbg !795, !tbaa !602
  %cmp443 = icmp eq i32 %102, 1, !dbg !795
  %cond445 = select i1 %cmp443, i32 91, i32 46, !dbg !795
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !795
  %104 = load %struct.plan7_s** %hmm, align 8, !dbg !795, !tbaa !606
  %M = getelementptr inbounds %struct.plan7_s* %104, i64 0, i32 20, !dbg !795
  %105 = load i32* %M, align 4, !dbg !795, !tbaa !602
  %cmp446 = icmp eq i32 %103, %105, !dbg !795
  %cond448 = select i1 %cmp446, i32 93, i32 46, !dbg !795
  %conv449 = fpext float %94 to double, !dbg !795
  %call450 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str81, i64 0, i64 0), i32 %cond405, i8* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %cond439, i32 %cond442, i32 %102, i32 %103, i32 %cond445, i32 %cond448, double %conv449, double %mul416) #7, !dbg !795
  %inc451 = add nsw i32 %nreported.2653, 1, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %inc451}, i64 0, metadata !433), !dbg !797
  br label %for.inc454, !dbg !798

for.inc454:                                       ; preds = %land.lhs.true432, %if.else428, %if.then436, %for.body413, %lor.lhs.false423
  %nreported.3 = phi i32 [ %nreported.2653, %for.body413 ], [ %nreported.2653, %lor.lhs.false423 ], [ %inc451, %if.then436 ], [ %nreported.2653, %land.lhs.true432 ], [ %nreported.2653, %if.else428 ]
  %inc455 = add nsw i32 %i.1654, 1, !dbg !788
  call void @llvm.dbg.value(metadata !{i32 %inc455}, i64 0, metadata !349), !dbg !788
  %106 = load i32* %num410, align 4, !dbg !788, !tbaa !602
  %cmp411 = icmp slt i32 %inc455, %106, !dbg !788
  br i1 %cmp411, label %for.body413, label %for.end456, !dbg !788

for.end456:                                       ; preds = %for.inc454
  %cmp457 = icmp eq i32 %nreported.3, 0, !dbg !799
  br i1 %cmp457, label %if.then459, label %if.end461, !dbg !799

if.then459:                                       ; preds = %cond.end404, %for.end456
  %puts627 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #2, !dbg !799
  br label %if.end461, !dbg !799

if.end461:                                        ; preds = %if.then459, %for.end456
  %cmp462 = icmp eq i32 %Alimit.0.lcssa, 0, !dbg !800
  br i1 %cmp462, label %if.end516, label %if.then464, !dbg !800

if.then464:                                       ; preds = %if.end461
  %puts625 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str97, i64 0, i64 0)) #2, !dbg !801
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !349), !dbg !803
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !433), !dbg !803
  %107 = load i32* %num410, align 4, !dbg !803, !tbaa !602
  %cmp468646 = icmp slt i32 %107, 1, !dbg !803
  br i1 %cmp468646, label %if.then508.thread, label %if.end474, !dbg !803

if.then508.thread:                                ; preds = %if.then464
  %puts626695 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #2, !dbg !805
  br label %if.end516, !dbg !806

if.end474:                                        ; preds = %if.then464, %for.inc503
  %i.2650 = phi i32 [ %inc504, %for.inc503 ], [ 0, %if.then464 ]
  %nreported.4649 = phi i32 [ %nreported.5, %for.inc503 ], [ 0, %if.then464 ]
  call void @GetRankedHit(%struct.tophit_s* %call271, i32 %i.2650, double* %pvalue, float* %sc, double* %motherp, float* %mothersc, i8** %name, i8** null, i8** null, i32* %sqfrom, i32* %sqto, i32* %sqlen, i32* %hmmfrom, i32* %hmmto, i32* null, i32* %domidx, i32* %ndom, %struct.fancyali_s** %ali) #7, !dbg !807
  call void @llvm.dbg.value(metadata !{double* %pvalue}, i64 0, metadata !416), !dbg !809
  %108 = load double* %pvalue, align 8, !dbg !809, !tbaa !592
  %109 = load i32* %Z1, align 4, !dbg !809, !tbaa !602
  %conv476 = sitofp i32 %109 to double, !dbg !809
  %mul477 = fmul double %108, %conv476, !dbg !809
  call void @llvm.dbg.value(metadata !{double %mul477}, i64 0, metadata !417), !dbg !809
  call void @llvm.dbg.value(metadata !{double* %motherp}, i64 0, metadata !418), !dbg !810
  %110 = load double* %motherp, align 8, !dbg !810, !tbaa !592
  %mul480 = fmul double %110, %conv476, !dbg !810
  %111 = load double* %globE, align 8, !dbg !810, !tbaa !592
  %cmp482 = fcmp ogt double %mul480, %111, !dbg !810
  br i1 %cmp482, label %for.inc503, label %lor.lhs.false484, !dbg !810

lor.lhs.false484:                                 ; preds = %if.end474
  call void @llvm.dbg.value(metadata !{float* %mothersc}, i64 0, metadata !419), !dbg !810
  %112 = load float* %mothersc, align 4, !dbg !810, !tbaa !596
  %113 = load float* %globT, align 8, !dbg !810, !tbaa !596
  %cmp486 = fcmp olt float %112, %113, !dbg !810
  br i1 %cmp486, label %for.inc503, label %if.else489, !dbg !810

if.else489:                                       ; preds = %lor.lhs.false484
  %114 = load double* %domE, align 8, !dbg !811, !tbaa !592
  %cmp491 = fcmp ugt double %mul477, %114, !dbg !811
  br i1 %cmp491, label %for.inc503, label %land.lhs.true493, !dbg !811

land.lhs.true493:                                 ; preds = %if.else489
  call void @llvm.dbg.value(metadata !{float* %sc}, i64 0, metadata !415), !dbg !811
  %115 = load float* %sc, align 4, !dbg !811, !tbaa !596
  %116 = load float* %domT, align 8, !dbg !811, !tbaa !596
  %cmp495 = fcmp ult float %115, %116, !dbg !811
  br i1 %cmp495, label %for.inc503, label %if.then497, !dbg !811

if.then497:                                       ; preds = %land.lhs.true493
  call void @llvm.dbg.value(metadata !{i8** %name}, i64 0, metadata !424), !dbg !812
  %117 = load i8** %name, align 8, !dbg !812, !tbaa !606
  call void @llvm.dbg.value(metadata !{i32* %domidx}, i64 0, metadata !429), !dbg !812
  %118 = load i32* %domidx, align 4, !dbg !812, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %ndom}, i64 0, metadata !430), !dbg !812
  %119 = load i32* %ndom, align 4, !dbg !812, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %sqfrom}, i64 0, metadata !420), !dbg !812
  %120 = load i32* %sqfrom, align 4, !dbg !812, !tbaa !602
  call void @llvm.dbg.value(metadata !{i32* %sqto}, i64 0, metadata !421), !dbg !812
  %121 = load i32* %sqto, align 4, !dbg !812, !tbaa !602
  %conv498 = fpext float %115 to double, !dbg !812
  %call499 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str83, i64 0, i64 0), i8* %117, i32 %118, i32 %119, i32 %120, i32 %121, double %conv498, double %mul477) #7, !dbg !812
  %122 = load %struct._IO_FILE** @stdout, align 8, !dbg !814, !tbaa !606
  call void @llvm.dbg.value(metadata !{%struct.fancyali_s** %ali}, i64 0, metadata !370), !dbg !814
  %123 = load %struct.fancyali_s** %ali, align 8, !dbg !814, !tbaa !606
  call void @PrintFancyAli(%struct._IO_FILE* %122, %struct.fancyali_s* %123) #7, !dbg !814
  %inc500 = add nsw i32 %nreported.4649, 1, !dbg !815
  call void @llvm.dbg.value(metadata !{i32 %inc500}, i64 0, metadata !433), !dbg !815
  br label %for.inc503, !dbg !816

for.inc503:                                       ; preds = %land.lhs.true493, %if.else489, %if.then497, %if.end474, %lor.lhs.false484
  %nreported.5 = phi i32 [ %nreported.4649, %if.end474 ], [ %nreported.4649, %lor.lhs.false484 ], [ %inc500, %if.then497 ], [ %nreported.4649, %land.lhs.true493 ], [ %nreported.4649, %if.else489 ]
  %inc504 = add nsw i32 %i.2650, 1, !dbg !803
  call void @llvm.dbg.value(metadata !{i32 %inc504}, i64 0, metadata !349), !dbg !803
  %124 = load i32* %num410, align 4, !dbg !803, !tbaa !602
  %cmp468 = icmp sge i32 %inc504, %124, !dbg !803
  %cmp471 = icmp eq i32 %nreported.5, %Alimit.0.lcssa, !dbg !817
  %or.cond641 = or i1 %cmp468, %cmp471, !dbg !803
  br i1 %or.cond641, label %for.end505, label %if.end474, !dbg !803

for.end505:                                       ; preds = %for.inc503
  %cmp506 = icmp eq i32 %nreported.5, 0, !dbg !805
  br i1 %cmp506, label %if.then508, label %if.end510, !dbg !805

if.then508:                                       ; preds = %for.end505
  %puts626 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str100, i64 0, i64 0)) #2, !dbg !805
  br i1 %cmp471, label %if.then513, label %if.end516, !dbg !806

if.end510:                                        ; preds = %for.end505
  br i1 %cmp471, label %if.then513, label %if.end516, !dbg !806

if.then513:                                       ; preds = %if.then508, %if.end510
  %call514 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str84, i64 0, i64 0), i32 %Alimit.0.lcssa) #7, !dbg !806
  br label %if.end516, !dbg !806

if.end516:                                        ; preds = %if.then508.thread, %if.then508, %if.end461, %if.end510, %if.then513
  %puts622 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str94, i64 0, i64 0)) #2, !dbg !818
  %125 = load %struct._IO_FILE** @stdout, align 8, !dbg !819, !tbaa !606
  call void @PrintASCIIHistogram(%struct._IO_FILE* %125, %struct.histogram_s* %call269) #7, !dbg !819
  %call518 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str86, i64 0, i64 0), i32 %nseq.0.ph.i) #7, !dbg !742
  %puts623 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str95, i64 0, i64 0)) #2, !dbg !820
  %126 = load double* %globE, align 8, !dbg !743, !tbaa !592
  call void @TophitsReport(%struct.tophit_s* %call270, double %126, i32 %nseq.0.ph.i) #7, !dbg !743
  %puts624 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str96, i64 0, i64 0)) #2, !dbg !821
  %127 = load double* %domE, align 8, !dbg !744, !tbaa !592
  call void @TophitsReport(%struct.tophit_s* %call271, double %127, i32 %nseq.0.ph.i) #7, !dbg !744
  %call523 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str86, i64 0, i64 0), i32 %nseq.0.ph.i) #7, !dbg !745
  call void @FreeHistogram(%struct.histogram_s* %call269) #7, !dbg !822
  call void @HMMFileClose(%struct.hmmfile_s* %call150) #7, !dbg !823
  call void @SeqfileClose(%struct.ReadSeqVars* %call145) #7, !dbg !824
  call void @FreeTophits(%struct.tophit_s* %call270) #7, !dbg !825
  call void @FreeTophits(%struct.tophit_s* %call271) #7, !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !350), !dbg !827
  %128 = load %struct.plan7_s** %hmm, align 8, !dbg !827, !tbaa !606
  call void @FreePlan7(%struct.plan7_s* %128) #7, !dbg !827
  call void @SqdClean() #7, !dbg !828
  call void @llvm.lifetime.end(i64 40, i8* %0) #2, !dbg !829
  ret i32 0, !dbg !830
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @String2SeqfileFormat(i8*) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare void @HMMERBanner(%struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture) #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #3

; Function Attrs: optsize
declare %struct.ReadSeqVars* @SeqfileOpen(i8*, i32, i8*) #3

; Function Attrs: optsize
declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #3

; Function Attrs: optsize
declare void @P7Logoddsify(%struct.plan7_s*, i32) #3

; Function Attrs: optsize
declare i32 @SetAutocuts(%struct.threshold_s*, %struct.plan7_s*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #5

; Function Attrs: optsize
declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #3

; Function Attrs: optsize
declare %struct.tophit_s* @AllocTophits(i32) #3

; Function Attrs: optsize
declare void @ExtremeValueSetHistogram(%struct.histogram_s*, float, float, float, float, i32) #3

; Function Attrs: optsize
declare void @FullSortTophits(%struct.tophit_s*) #3

; Function Attrs: optsize
declare i32 @TophitsMaxName(%struct.tophit_s*) #3

; Function Attrs: optsize
declare void @GetRankedHit(%struct.tophit_s*, i32, double*, float*, double*, float*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.fancyali_s**) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @Strdup(i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: optsize
declare void @PrintFancyAli(%struct._IO_FILE*, %struct.fancyali_s*) #3

; Function Attrs: optsize
declare void @PrintASCIIHistogram(%struct._IO_FILE*, %struct.histogram_s*) #3

; Function Attrs: optsize
declare void @TophitsReport(%struct.tophit_s*, double, i32) #3

; Function Attrs: optsize
declare void @FreeHistogram(%struct.histogram_s*) #3

; Function Attrs: optsize
declare void @HMMFileClose(%struct.hmmfile_s*) #3

; Function Attrs: optsize
declare void @SeqfileClose(%struct.ReadSeqVars*) #3

; Function Attrs: optsize
declare void @FreeTophits(%struct.tophit_s*) #3

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #3

; Function Attrs: optsize
declare void @SqdClean() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @ReadSeq(%struct.ReadSeqVars*, i32, i8**, %struct.seqinfo_s*) #3

; Function Attrs: optsize
declare i8* @DigitizeSequence(i8*, i32) #3

; Function Attrs: optsize
declare i32 @XNU(i8*, i32) #3

; Function Attrs: optsize
declare i32 @P7ViterbiSize(i32, i32) #3

; Function Attrs: optsize
declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #3

; Function Attrs: optsize
declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #3

; Function Attrs: optsize
declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #3

; Function Attrs: optsize
declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #3

; Function Attrs: optsize
declare double @PValue(%struct.plan7_s*, float) #3

; Function Attrs: optsize
declare float @PostprocessSignificantHit(%struct.tophit_s*, %struct.tophit_s*, %struct.p7trace_s*, %struct.plan7_s*, i8*, i32, i8*, i8*, i8*, i32, float, i32, %struct.threshold_s*, i32) #3

; Function Attrs: optsize
declare void @AddToHistogram(%struct.histogram_s*, float) #3

; Function Attrs: optsize
declare void @FreeSequence(i8*, %struct.seqinfo_s*) #3

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #3

; Function Attrs: optsize
declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !21, metadata !22, metadata !523, metadata !21, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, metadata !5, metadata !"", i32 524, i64 32, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 524, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{i32 786451, metadata !4, null, metadata !"threshold_s", i32 518, i64 320, i64 64, i32 0, i32 0, null, metadata !6, i32 0, null, null} ; [ DW_TAG_structure_type ] [threshold_s] [line 518, size 320, align 64, offset 0] [from ]
!6 = metadata !{metadata !7, metadata !9, metadata !11, metadata !12, metadata !13, metadata !14}
!7 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"globT", i32 519, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [globT] [line 519, size 32, align 32, offset 0] [from float]
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"globE", i32 520, i64 64, i64 64, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [globE] [line 520, size 64, align 64, offset 64] [from double]
!10 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"domT", i32 521, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [domT] [line 521, size 32, align 32, offset 128] [from float]
!12 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"domE", i32 522, i64 64, i64 64, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [domE] [line 522, size 64, align 64, offset 192] [from double]
!13 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"autocut", i32 524, i64 32, i64 32, i64 256, i32 0, metadata !3} ; [ DW_TAG_member ] [autocut] [line 524, size 32, align 32, offset 256] [from ]
!14 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"Z", i32 525, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [Z] [line 525, size 32, align 32, offset 288] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20}
!17 = metadata !{i32 786472, metadata !"CUT_NONE", i64 0} ; [ DW_TAG_enumerator ] [CUT_NONE :: 0]
!18 = metadata !{i32 786472, metadata !"CUT_GA", i64 1} ; [ DW_TAG_enumerator ] [CUT_GA :: 1]
!19 = metadata !{i32 786472, metadata !"CUT_NC", i64 2} ; [ DW_TAG_enumerator ] [CUT_NC :: 2]
!20 = metadata !{i32 786472, metadata !"CUT_TC", i64 3} ; [ DW_TAG_enumerator ] [CUT_TC :: 3]
!21 = metadata !{i32 0}
!22 = metadata !{metadata !23, metadata !450, metadata !466, metadata !480}
!23 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"main", metadata !"main", metadata !"", i32 154, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !30, i32 155} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 155] [main]
!24 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !15, metadata !15, metadata !27}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !209, metadata !210, metadata !348, metadata !349, metadata !350, metadata !351, metadata !370, metadata !384, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447}
!31 = metadata !{i32 786689, metadata !23, metadata !"argc", metadata !24, i32 16777370, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 154]
!32 = metadata !{i32 786689, metadata !23, metadata !"argv", metadata !24, i32 33554586, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 154]
!33 = metadata !{i32 786688, metadata !23, metadata !"hmmfile", metadata !24, i32 156, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmfile] [line 156]
!34 = metadata !{i32 786688, metadata !23, metadata !"hmmfp", metadata !24, i32 157, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmfp] [line 157]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from HMMFILE]
!36 = metadata !{i32 786454, metadata !1, null, metadata !"HMMFILE", i32 350, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [HMMFILE] [line 350, size 0, align 0, offset 0] [from hmmfile_s]
!37 = metadata !{i32 786451, metadata !4, null, metadata !"hmmfile_s", i32 332, i64 448, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null} ; [ DW_TAG_structure_type ] [hmmfile_s] [line 332, size 448, align 64, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !95, metadata !137, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!39 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"f", i32 333, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [f] [line 333, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!41 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!43 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !65, metadata !66, metadata !67, metadata !68, metadata !71, metadata !73, metadata !75, metadata !79, metadata !81, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !90, metadata !91}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!47 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!49 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!50 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!51 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!52 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!53 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!54 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!55 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!56 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!57 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !58} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!59 = metadata !{i32 786451, metadata !43, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62, metadata !64}
!61 = metadata !{i32 786445, metadata !43, metadata !59, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786445, metadata !43, metadata !59, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!64 = metadata !{i32 786445, metadata !43, metadata !59, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!65 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !63} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!66 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!67 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!68 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !69} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!69 = metadata !{i32 786454, metadata !43, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!70 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!71 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !72} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!72 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !74} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!74 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!75 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !76} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !29, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!79 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !80} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !82} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!82 = metadata !{i32 786454, metadata !43, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!83 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !80} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!84 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !80} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!85 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !80} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!86 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !80} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!87 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !88} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!88 = metadata !{i32 786454, metadata !43, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!89 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!90 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !15} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!91 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !92} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !29, metadata !93, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!95 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"ssi", i32 334, i64 64, i64 64, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ] [ssi] [line 334, size 64, align 64, offset 64] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!97 = metadata !{i32 786454, metadata !4, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!98 = metadata !{i32 786451, metadata !99, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!99 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!100 = metadata !{metadata !101, metadata !102, metadata !105, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !134, metadata !135, metadata !136}
!101 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!102 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!103 = metadata !{i32 786454, metadata !99, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!104 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !106} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!106 = metadata !{i32 786454, metadata !99, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!107 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !103} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!108 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !103} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!109 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !103} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!110 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !103} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!111 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !103} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!112 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !103} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!113 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!114 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !103} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!115 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !116} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!116 = metadata !{i32 786454, metadata !99, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!117 = metadata !{i32 786451, metadata !99, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !118, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 786445, metadata !99, metadata !117, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!120 = metadata !{i32 786445, metadata !99, metadata !117, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !121} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!121 = metadata !{i32 786455, metadata !99, metadata !117, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !122, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786445, metadata !99, metadata !121, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!124 = metadata !{i32 786445, metadata !99, metadata !121, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!125 = metadata !{i32 786454, metadata !99, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!126 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!127 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !116} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!128 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !116} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!129 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!130 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !29} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!131 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !27} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!132 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !133} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!134 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !133} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!135 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !133} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!136 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !133} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!137 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"parser", i32 335, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ] [parser] [line 335, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !15, metadata !141, metadata !142}
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hmmfile_s]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!144 = metadata !{i32 786451, metadata !4, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !171, metadata !172, metadata !173, metadata !174, metadata !179, metadata !180, metadata !181, metadata !183, metadata !184, metadata !186, metadata !187, metadata !188, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203}
!146 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!148 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!149 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!150 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!151 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!152 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!153 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!154 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!155 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !156} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!158 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !156} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!159 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !156} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!160 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !156} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!161 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!162 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!163 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!164 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !8} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!165 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !8} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!166 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !8} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!167 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !15} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!168 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !169} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!171 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !169} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!172 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !169} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!173 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !8} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!174 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !175} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!175 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !176, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!176 = metadata !{metadata !177, metadata !178}
!177 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!178 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!179 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !170} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!180 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !170} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!181 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !182} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!182 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !8, metadata !93, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!183 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !8} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!184 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !185} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!186 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !185} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!187 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !185} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!188 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !189} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!189 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !15, metadata !176, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!190 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !156} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!191 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !156} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!192 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !156} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!193 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !156} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!194 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !156} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!195 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !156} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!196 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !156} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!197 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !185} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!198 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !185} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!199 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !15} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!200 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !15} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!201 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!202 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !8} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!203 = metadata !{i32 786445, metadata !4, metadata !144, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!204 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"is_binary", i32 336, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [is_binary] [line 336, size 32, align 32, offset 192] [from int]
!205 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"byteswap", i32 337, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [byteswap] [line 337, size 32, align 32, offset 224] [from int]
!206 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"is_seekable", i32 346, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [is_seekable] [line 346, size 32, align 32, offset 256] [from int]
!207 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"mode", i32 347, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [mode] [line 347, size 32, align 32, offset 288] [from int]
!208 = metadata !{i32 786445, metadata !4, metadata !37, metadata !"offset", i32 348, i64 128, i64 64, i64 320, i32 0, metadata !116} ; [ DW_TAG_member ] [offset] [line 348, size 128, align 64, offset 320] [from SSIOFFSET]
!209 = metadata !{i32 786688, metadata !23, metadata !"seqfile", metadata !24, i32 158, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqfile] [line 158]
!210 = metadata !{i32 786688, metadata !23, metadata !"sqfp", metadata !24, i32 159, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqfp] [line 159]
!211 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SQFILE]
!212 = metadata !{i32 786454, metadata !1, null, metadata !"SQFILE", i32 240, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ] [SQFILE] [line 240, size 0, align 0, offset 0] [from ReadSeqVars]
!213 = metadata !{i32 786451, metadata !214, null, metadata !"ReadSeqVars", i32 197, i64 1408, i64 64, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [ReadSeqVars] [line 197, size 1408, align 64, offset 0] [from ]
!214 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !334}
!216 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"f", i32 198, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [f] [line 198, size 64, align 64, offset 0] [from ]
!217 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"fname", i32 199, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [fname] [line 199, size 64, align 64, offset 64] [from ]
!218 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"linenumber", i32 200, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [linenumber] [line 200, size 32, align 32, offset 128] [from int]
!219 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"buf", i32 202, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [buf] [line 202, size 64, align 64, offset 192] [from ]
!220 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"buflen", i32 203, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [buflen] [line 203, size 32, align 32, offset 256] [from int]
!221 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"ssimode", i32 205, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [ssimode] [line 205, size 32, align 32, offset 288] [from int]
!222 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"ssioffset", i32 206, i64 128, i64 64, i64 320, i32 0, metadata !116} ; [ DW_TAG_member ] [ssioffset] [line 206, size 128, align 64, offset 320] [from SSIOFFSET]
!223 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"r_off", i32 207, i64 128, i64 64, i64 448, i32 0, metadata !116} ; [ DW_TAG_member ] [r_off] [line 207, size 128, align 64, offset 448] [from SSIOFFSET]
!224 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"d_off", i32 208, i64 128, i64 64, i64 576, i32 0, metadata !116} ; [ DW_TAG_member ] [d_off] [line 208, size 128, align 64, offset 576] [from SSIOFFSET]
!225 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"rpl", i32 210, i64 32, i64 32, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [rpl] [line 210, size 32, align 32, offset 704] [from int]
!226 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"lastrpl", i32 211, i64 32, i64 32, i64 736, i32 0, metadata !15} ; [ DW_TAG_member ] [lastrpl] [line 211, size 32, align 32, offset 736] [from int]
!227 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"maxrpl", i32 212, i64 32, i64 32, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [maxrpl] [line 212, size 32, align 32, offset 768] [from int]
!228 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"bpl", i32 213, i64 32, i64 32, i64 800, i32 0, metadata !15} ; [ DW_TAG_member ] [bpl] [line 213, size 32, align 32, offset 800] [from int]
!229 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"lastbpl", i32 214, i64 32, i64 32, i64 832, i32 0, metadata !15} ; [ DW_TAG_member ] [lastbpl] [line 214, size 32, align 32, offset 832] [from int]
!230 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"maxbpl", i32 215, i64 32, i64 32, i64 864, i32 0, metadata !15} ; [ DW_TAG_member ] [maxbpl] [line 215, size 32, align 32, offset 864] [from int]
!231 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"seq", i32 217, i64 64, i64 64, i64 896, i32 0, metadata !28} ; [ DW_TAG_member ] [seq] [line 217, size 64, align 64, offset 896] [from ]
!232 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"sqinfo", i32 218, i64 64, i64 64, i64 960, i32 0, metadata !233} ; [ DW_TAG_member ] [sqinfo] [line 218, size 64, align 64, offset 960] [from ]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SQINFO]
!234 = metadata !{i32 786454, metadata !214, null, metadata !"SQINFO", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [SQINFO] [line 98, size 0, align 0, offset 0] [from seqinfo_s]
!235 = metadata !{i32 786451, metadata !214, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!236 = metadata !{metadata !237, metadata !238, metadata !242, metadata !243, metadata !244, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254}
!237 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!238 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !239} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!239 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !29, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!242 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !239} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!243 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !239} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!244 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !245} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!245 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !29, metadata !246, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!246 = metadata !{metadata !247}
!247 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!248 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !15} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!249 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !15} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!250 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !15} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!251 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !15} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!252 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!253 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !28} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!254 = metadata !{i32 786445, metadata !214, metadata !235, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !28} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!255 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"sp", i32 219, i64 64, i64 64, i64 1024, i32 0, metadata !28} ; [ DW_TAG_member ] [sp] [line 219, size 64, align 64, offset 1024] [from ]
!256 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"seqlen", i32 220, i64 32, i64 32, i64 1088, i32 0, metadata !15} ; [ DW_TAG_member ] [seqlen] [line 220, size 32, align 32, offset 1088] [from int]
!257 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"maxseq", i32 221, i64 32, i64 32, i64 1120, i32 0, metadata !15} ; [ DW_TAG_member ] [maxseq] [line 221, size 32, align 32, offset 1120] [from int]
!258 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"format", i32 223, i64 32, i64 32, i64 1152, i32 0, metadata !15} ; [ DW_TAG_member ] [format] [line 223, size 32, align 32, offset 1152] [from int]
!259 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"do_gzip", i32 224, i64 32, i64 32, i64 1184, i32 0, metadata !15} ; [ DW_TAG_member ] [do_gzip] [line 224, size 32, align 32, offset 1184] [from int]
!260 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"do_stdin", i32 225, i64 32, i64 32, i64 1216, i32 0, metadata !15} ; [ DW_TAG_member ] [do_stdin] [line 225, size 32, align 32, offset 1216] [from int]
!261 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"msa", i32 237, i64 64, i64 64, i64 1280, i32 0, metadata !262} ; [ DW_TAG_member ] [msa] [line 237, size 64, align 64, offset 1280] [from ]
!262 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!263 = metadata !{i32 786454, metadata !214, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!264 = metadata !{i32 786451, metadata !265, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !266, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!265 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!266 = metadata !{metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !289, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !301, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333}
!267 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!268 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!269 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !170} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!270 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!271 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!272 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!273 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!274 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!275 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!276 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!277 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!278 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !28} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!279 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!280 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!281 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!282 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !27} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!283 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !27} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!284 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !27} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!285 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !286} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!286 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !287, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!287 = metadata !{metadata !288}
!288 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!289 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !290} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!290 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !15, metadata !287, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!291 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !27} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!292 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !15} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!293 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!294 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !27} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!295 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !27} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!296 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !15} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!297 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!298 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !27} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!299 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !300} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!300 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!301 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !302} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!303 = metadata !{i32 786454, metadata !265, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!304 = metadata !{i32 786451, metadata !305, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !306, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!305 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!306 = metadata !{metadata !307, metadata !315, metadata !316, metadata !317}
!307 = metadata !{i32 786445, metadata !305, metadata !304, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !308} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!309 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !310} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!310 = metadata !{i32 786451, metadata !305, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !311, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!311 = metadata !{metadata !312, metadata !313, metadata !314}
!312 = metadata !{i32 786445, metadata !305, metadata !310, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!313 = metadata !{i32 786445, metadata !305, metadata !310, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!314 = metadata !{i32 786445, metadata !305, metadata !310, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !309} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!315 = metadata !{i32 786445, metadata !305, metadata !304, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!316 = metadata !{i32 786445, metadata !305, metadata !304, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!317 = metadata !{i32 786445, metadata !305, metadata !304, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!318 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !15} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!319 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !27} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!320 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !27} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!321 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !302} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!322 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !15} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!323 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !27} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!324 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !300} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!325 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !302} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!326 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !15} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!327 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !302} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!328 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !15} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!329 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !15} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!330 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !156} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!331 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !156} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!332 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !156} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!333 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !15} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!334 = metadata !{i32 786445, metadata !214, metadata !213, metadata !"afp", i32 238, i64 64, i64 64, i64 1344, i32 0, metadata !335} ; [ DW_TAG_member ] [afp] [line 238, size 64, align 64, offset 1344] [from ]
!335 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!336 = metadata !{i32 786454, metadata !214, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !337} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!337 = metadata !{i32 786451, metadata !265, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !338, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!338 = metadata !{metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347}
!339 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!340 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!341 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!342 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!343 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!344 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !96} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!345 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!346 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !15} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!347 = metadata !{i32 786445, metadata !265, metadata !337, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!348 = metadata !{i32 786688, metadata !23, metadata !"format", metadata !24, i32 160, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format] [line 160]
!349 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !24, i32 161, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 161]
!350 = metadata !{i32 786688, metadata !23, metadata !"hmm", metadata !24, i32 162, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 162]
!351 = metadata !{i32 786688, metadata !23, metadata !"histogram", metadata !24, i32 163, metadata !352, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [histogram] [line 163]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from histogram_s]
!353 = metadata !{i32 786451, metadata !4, null, metadata !"histogram_s", i32 419, i64 512, i64 64, i32 0, i32 0, null, metadata !354, i32 0, null, null} ; [ DW_TAG_structure_type ] [histogram_s] [line 419, size 512, align 64, offset 0] [from ]
!354 = metadata !{metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !368, metadata !369}
!355 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"histogram", i32 420, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [histogram] [line 420, size 64, align 64, offset 0] [from ]
!356 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"min", i32 421, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [min] [line 421, size 32, align 32, offset 64] [from int]
!357 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"max", i32 422, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [max] [line 422, size 32, align 32, offset 96] [from int]
!358 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"highscore", i32 423, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [highscore] [line 423, size 32, align 32, offset 128] [from int]
!359 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"lowscore", i32 424, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [lowscore] [line 424, size 32, align 32, offset 160] [from int]
!360 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"lumpsize", i32 425, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [lumpsize] [line 425, size 32, align 32, offset 192] [from int]
!361 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"total", i32 426, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [total] [line 426, size 32, align 32, offset 224] [from int]
!362 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"expect", i32 428, i64 64, i64 64, i64 256, i32 0, metadata !170} ; [ DW_TAG_member ] [expect] [line 428, size 64, align 64, offset 256] [from ]
!363 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"fit_type", i32 429, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [fit_type] [line 429, size 32, align 32, offset 320] [from int]
!364 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"param", i32 430, i64 96, i64 32, i64 352, i32 0, metadata !365} ; [ DW_TAG_member ] [param] [line 430, size 96, align 32, offset 352] [from ]
!365 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !366, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!366 = metadata !{metadata !367}
!367 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!368 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"chisq", i32 431, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [chisq] [line 431, size 32, align 32, offset 448] [from float]
!369 = metadata !{i32 786445, metadata !4, metadata !353, metadata !"chip", i32 432, i64 32, i64 32, i64 480, i32 0, metadata !8} ; [ DW_TAG_member ] [chip] [line 432, size 32, align 32, offset 480] [from float]
!370 = metadata !{i32 786688, metadata !23, metadata !"ali", metadata !24, i32 164, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ali] [line 164]
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fancyali_s]
!372 = metadata !{i32 786451, metadata !4, null, metadata !"fancyali_s", i32 447, i64 576, i64 64, i32 0, i32 0, null, metadata !373, i32 0, null, null} ; [ DW_TAG_structure_type ] [fancyali_s] [line 447, size 576, align 64, offset 0] [from ]
!373 = metadata !{metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383}
!374 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"rfline", i32 448, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [rfline] [line 448, size 64, align 64, offset 0] [from ]
!375 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"csline", i32 449, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [csline] [line 449, size 64, align 64, offset 64] [from ]
!376 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"model", i32 450, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [model] [line 450, size 64, align 64, offset 128] [from ]
!377 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"mline", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [mline] [line 451, size 64, align 64, offset 192] [from ]
!378 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"aseq", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [aseq] [line 452, size 64, align 64, offset 256] [from ]
!379 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"len", i32 453, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [len] [line 453, size 32, align 32, offset 320] [from int]
!380 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"query", i32 454, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [query] [line 454, size 64, align 64, offset 384] [from ]
!381 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"target", i32 455, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [target] [line 455, size 64, align 64, offset 448] [from ]
!382 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"sqfrom", i32 456, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [sqfrom] [line 456, size 32, align 32, offset 512] [from int]
!383 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"sqto", i32 457, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [sqto] [line 457, size 32, align 32, offset 544] [from int]
!384 = metadata !{i32 786688, metadata !23, metadata !"ghit", metadata !24, i32 165, metadata !385, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghit] [line 165]
!385 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !386} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tophit_s]
!386 = metadata !{i32 786451, metadata !4, null, metadata !"tophit_s", i32 497, i64 256, i64 64, i32 0, i32 0, null, metadata !387, i32 0, null, null} ; [ DW_TAG_structure_type ] [tophit_s] [line 497, size 256, align 64, offset 0] [from ]
!387 = metadata !{metadata !388, metadata !410, metadata !411, metadata !412, metadata !413}
!388 = metadata !{i32 786445, metadata !4, metadata !386, metadata !"hit", i32 498, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [hit] [line 498, size 64, align 64, offset 0] [from ]
!389 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !390} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!390 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !391} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hit_s]
!391 = metadata !{i32 786451, metadata !4, null, metadata !"hit_s", i32 470, i64 832, i64 64, i32 0, i32 0, null, metadata !392, i32 0, null, null} ; [ DW_TAG_structure_type ] [hit_s] [line 470, size 832, align 64, offset 0] [from ]
!392 = metadata !{metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409}
!393 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"sortkey", i32 471, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [sortkey] [line 471, size 64, align 64, offset 0] [from double]
!394 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"score", i32 472, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [score] [line 472, size 32, align 32, offset 64] [from float]
!395 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"pvalue", i32 473, i64 64, i64 64, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [pvalue] [line 473, size 64, align 64, offset 128] [from double]
!396 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"mothersc", i32 474, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [mothersc] [line 474, size 32, align 32, offset 192] [from float]
!397 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"motherp", i32 475, i64 64, i64 64, i64 256, i32 0, metadata !10} ; [ DW_TAG_member ] [motherp] [line 475, size 64, align 64, offset 256] [from double]
!398 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"name", i32 476, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [name] [line 476, size 64, align 64, offset 320] [from ]
!399 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"acc", i32 477, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [acc] [line 477, size 64, align 64, offset 384] [from ]
!400 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"desc", i32 478, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [desc] [line 478, size 64, align 64, offset 448] [from ]
!401 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"sqfrom", i32 479, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [sqfrom] [line 479, size 32, align 32, offset 512] [from int]
!402 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"sqto", i32 480, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [sqto] [line 480, size 32, align 32, offset 544] [from int]
!403 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"sqlen", i32 481, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [sqlen] [line 481, size 32, align 32, offset 576] [from int]
!404 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"hmmfrom", i32 482, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [hmmfrom] [line 482, size 32, align 32, offset 608] [from int]
!405 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"hmmto", i32 483, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [hmmto] [line 483, size 32, align 32, offset 640] [from int]
!406 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"hmmlen", i32 484, i64 32, i64 32, i64 672, i32 0, metadata !15} ; [ DW_TAG_member ] [hmmlen] [line 484, size 32, align 32, offset 672] [from int]
!407 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"domidx", i32 485, i64 32, i64 32, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [domidx] [line 485, size 32, align 32, offset 704] [from int]
!408 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"ndom", i32 486, i64 32, i64 32, i64 736, i32 0, metadata !15} ; [ DW_TAG_member ] [ndom] [line 486, size 32, align 32, offset 736] [from int]
!409 = metadata !{i32 786445, metadata !4, metadata !391, metadata !"ali", i32 487, i64 64, i64 64, i64 768, i32 0, metadata !371} ; [ DW_TAG_member ] [ali] [line 487, size 64, align 64, offset 768] [from ]
!410 = metadata !{i32 786445, metadata !4, metadata !386, metadata !"unsrt", i32 499, i64 64, i64 64, i64 64, i32 0, metadata !390} ; [ DW_TAG_member ] [unsrt] [line 499, size 64, align 64, offset 64] [from ]
!411 = metadata !{i32 786445, metadata !4, metadata !386, metadata !"alloc", i32 500, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc] [line 500, size 32, align 32, offset 128] [from int]
!412 = metadata !{i32 786445, metadata !4, metadata !386, metadata !"num", i32 501, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [num] [line 501, size 32, align 32, offset 160] [from int]
!413 = metadata !{i32 786445, metadata !4, metadata !386, metadata !"lump", i32 502, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [lump] [line 502, size 32, align 32, offset 192] [from int]
!414 = metadata !{i32 786688, metadata !23, metadata !"dhit", metadata !24, i32 166, metadata !385, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dhit] [line 166]
!415 = metadata !{i32 786688, metadata !23, metadata !"sc", metadata !24, i32 168, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 168]
!416 = metadata !{i32 786688, metadata !23, metadata !"pvalue", metadata !24, i32 169, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvalue] [line 169]
!417 = metadata !{i32 786688, metadata !23, metadata !"evalue", metadata !24, i32 170, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evalue] [line 170]
!418 = metadata !{i32 786688, metadata !23, metadata !"motherp", metadata !24, i32 171, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [motherp] [line 171]
!419 = metadata !{i32 786688, metadata !23, metadata !"mothersc", metadata !24, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mothersc] [line 172]
!420 = metadata !{i32 786688, metadata !23, metadata !"sqfrom", metadata !24, i32 173, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqfrom] [line 173]
!421 = metadata !{i32 786688, metadata !23, metadata !"sqto", metadata !24, i32 173, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqto] [line 173]
!422 = metadata !{i32 786688, metadata !23, metadata !"hmmfrom", metadata !24, i32 174, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmfrom] [line 174]
!423 = metadata !{i32 786688, metadata !23, metadata !"hmmto", metadata !24, i32 174, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmto] [line 174]
!424 = metadata !{i32 786688, metadata !23, metadata !"name", metadata !24, i32 175, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 175]
!425 = metadata !{i32 786688, metadata !23, metadata !"desc", metadata !24, i32 175, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [desc] [line 175]
!426 = metadata !{i32 786688, metadata !23, metadata !"sqlen", metadata !24, i32 176, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqlen] [line 176]
!427 = metadata !{i32 786688, metadata !23, metadata !"nseq", metadata !24, i32 177, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nseq] [line 177]
!428 = metadata !{i32 786688, metadata !23, metadata !"Z", metadata !24, i32 178, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Z] [line 178]
!429 = metadata !{i32 786688, metadata !23, metadata !"domidx", metadata !24, i32 179, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domidx] [line 179]
!430 = metadata !{i32 786688, metadata !23, metadata !"ndom", metadata !24, i32 180, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 180]
!431 = metadata !{i32 786688, metadata !23, metadata !"namewidth", metadata !24, i32 181, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [namewidth] [line 181]
!432 = metadata !{i32 786688, metadata !23, metadata !"descwidth", metadata !24, i32 182, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [descwidth] [line 182]
!433 = metadata !{i32 786688, metadata !23, metadata !"nreported", metadata !24, i32 183, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nreported] [line 183]
!434 = metadata !{i32 786688, metadata !23, metadata !"Alimit", metadata !24, i32 185, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Alimit] [line 185]
!435 = metadata !{i32 786688, metadata !23, metadata !"thresh", metadata !24, i32 186, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thresh] [line 186]
!436 = metadata !{i32 786688, metadata !23, metadata !"optname", metadata !24, i32 188, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optname] [line 188]
!437 = metadata !{i32 786688, metadata !23, metadata !"optarg", metadata !24, i32 189, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optarg] [line 189]
!438 = metadata !{i32 786688, metadata !23, metadata !"optind", metadata !24, i32 190, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optind] [line 190]
!439 = metadata !{i32 786688, metadata !23, metadata !"do_null2", metadata !24, i32 191, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_null2] [line 191]
!440 = metadata !{i32 786688, metadata !23, metadata !"do_forward", metadata !24, i32 192, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_forward] [line 192]
!441 = metadata !{i32 786688, metadata !23, metadata !"do_xnu", metadata !24, i32 193, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_xnu] [line 193]
!442 = metadata !{i32 786688, metadata !23, metadata !"do_pvm", metadata !24, i32 194, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_pvm] [line 194]
!443 = metadata !{i32 786688, metadata !23, metadata !"be_backwards", metadata !24, i32 195, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [be_backwards] [line 195]
!444 = metadata !{i32 786688, metadata !23, metadata !"num_threads", metadata !24, i32 196, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_threads] [line 196]
!445 = metadata !{i32 786688, metadata !23, metadata !"threads_support", metadata !24, i32 197, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threads_support] [line 197]
!446 = metadata !{i32 786688, metadata !23, metadata !"pvm_support", metadata !24, i32 198, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvm_support] [line 198]
!447 = metadata !{i32 786688, metadata !448, metadata !"safedesc", metadata !24, i32 418, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [safedesc] [line 418]
!448 = metadata !{i32 786443, metadata !1, metadata !449, i32 417, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!449 = metadata !{i32 786443, metadata !1, metadata !23, i32 416, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!450 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"main_loop_threaded", metadata !"main_loop_threaded", metadata !"", i32 1211, metadata !451, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !454, i32 1215} ; [ DW_TAG_subprogram ] [line 1211] [local] [def] [scope 1215] [main_loop_threaded]
!451 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!452 = metadata !{null, metadata !143, metadata !211, metadata !453, metadata !15, metadata !15, metadata !15, metadata !15, metadata !352, metadata !385, metadata !385, metadata !156}
!453 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !5} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from threshold_s]
!454 = metadata !{metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465}
!455 = metadata !{i32 786689, metadata !450, metadata !"hmm", metadata !24, i32 16778427, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 1211]
!456 = metadata !{i32 786689, metadata !450, metadata !"sqfp", metadata !24, i32 33555643, metadata !211, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfp] [line 1211]
!457 = metadata !{i32 786689, metadata !450, metadata !"thresh", metadata !24, i32 50332859, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thresh] [line 1211]
!458 = metadata !{i32 786689, metadata !450, metadata !"do_forward", metadata !24, i32 67110075, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_forward] [line 1211]
!459 = metadata !{i32 786689, metadata !450, metadata !"do_null2", metadata !24, i32 83887292, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_null2] [line 1212]
!460 = metadata !{i32 786689, metadata !450, metadata !"do_xnu", metadata !24, i32 100664508, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_xnu] [line 1212]
!461 = metadata !{i32 786689, metadata !450, metadata !"num_threads", metadata !24, i32 117441724, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_threads] [line 1212]
!462 = metadata !{i32 786689, metadata !450, metadata !"histogram", metadata !24, i32 134218941, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [histogram] [line 1213]
!463 = metadata !{i32 786689, metadata !450, metadata !"ghit", metadata !24, i32 150996158, metadata !385, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghit] [line 1214]
!464 = metadata !{i32 786689, metadata !450, metadata !"dhit", metadata !24, i32 167773374, metadata !385, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dhit] [line 1214]
!465 = metadata !{i32 786689, metadata !450, metadata !"ret_nseq", metadata !24, i32 184550590, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_nseq] [line 1214]
!466 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"main_loop_pvm", metadata !"main_loop_pvm", metadata !"", i32 932, metadata !467, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !469, i32 935} ; [ DW_TAG_subprogram ] [line 932] [local] [def] [scope 935] [main_loop_pvm]
!467 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{null, metadata !143, metadata !211, metadata !453, metadata !15, metadata !15, metadata !15, metadata !352, metadata !385, metadata !385, metadata !156}
!469 = metadata !{metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479}
!470 = metadata !{i32 786689, metadata !466, metadata !"hmm", metadata !24, i32 16778148, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 932]
!471 = metadata !{i32 786689, metadata !466, metadata !"sqfp", metadata !24, i32 33555364, metadata !211, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfp] [line 932]
!472 = metadata !{i32 786689, metadata !466, metadata !"thresh", metadata !24, i32 50332580, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thresh] [line 932]
!473 = metadata !{i32 786689, metadata !466, metadata !"do_forward", metadata !24, i32 67109796, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_forward] [line 932]
!474 = metadata !{i32 786689, metadata !466, metadata !"do_null2", metadata !24, i32 83887013, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_null2] [line 933]
!475 = metadata !{i32 786689, metadata !466, metadata !"do_xnu", metadata !24, i32 100664229, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_xnu] [line 933]
!476 = metadata !{i32 786689, metadata !466, metadata !"histogram", metadata !24, i32 117441445, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [histogram] [line 933]
!477 = metadata !{i32 786689, metadata !466, metadata !"ghit", metadata !24, i32 134218662, metadata !385, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghit] [line 934]
!478 = metadata !{i32 786689, metadata !466, metadata !"dhit", metadata !24, i32 150995878, metadata !385, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dhit] [line 934]
!479 = metadata !{i32 786689, metadata !466, metadata !"ret_nseq", metadata !24, i32 167773094, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_nseq] [line 934]
!480 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"main_loop_serial", metadata !"main_loop_serial", metadata !"", i32 598, metadata !467, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !481, i32 602} ; [ DW_TAG_subprogram ] [line 598] [local] [def] [scope 602] [main_loop_serial]
!481 = metadata !{metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !508, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!482 = metadata !{i32 786689, metadata !480, metadata !"hmm", metadata !24, i32 16777814, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 598]
!483 = metadata !{i32 786689, metadata !480, metadata !"sqfp", metadata !24, i32 33555030, metadata !211, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfp] [line 598]
!484 = metadata !{i32 786689, metadata !480, metadata !"thresh", metadata !24, i32 50332246, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thresh] [line 598]
!485 = metadata !{i32 786689, metadata !480, metadata !"do_forward", metadata !24, i32 67109462, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_forward] [line 598]
!486 = metadata !{i32 786689, metadata !480, metadata !"do_null2", metadata !24, i32 83886679, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_null2] [line 599]
!487 = metadata !{i32 786689, metadata !480, metadata !"do_xnu", metadata !24, i32 100663895, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_xnu] [line 599]
!488 = metadata !{i32 786689, metadata !480, metadata !"histogram", metadata !24, i32 117441112, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [histogram] [line 600]
!489 = metadata !{i32 786689, metadata !480, metadata !"ghit", metadata !24, i32 134218329, metadata !385, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghit] [line 601]
!490 = metadata !{i32 786689, metadata !480, metadata !"dhit", metadata !24, i32 150995545, metadata !385, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dhit] [line 601]
!491 = metadata !{i32 786689, metadata !480, metadata !"ret_nseq", metadata !24, i32 167772761, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_nseq] [line 601]
!492 = metadata !{i32 786688, metadata !480, metadata !"mx", metadata !24, i32 603, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 603]
!493 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !494} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpmatrix_s]
!494 = metadata !{i32 786451, metadata !4, null, metadata !"dpmatrix_s", i32 289, i64 640, i64 64, i32 0, i32 0, null, metadata !495, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpmatrix_s] [line 289, size 640, align 64, offset 0] [from ]
!495 = metadata !{metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507}
!496 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"xmx", i32 290, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_member ] [xmx] [line 290, size 64, align 64, offset 0] [from ]
!497 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"mmx", i32 291, i64 64, i64 64, i64 64, i32 0, metadata !185} ; [ DW_TAG_member ] [mmx] [line 291, size 64, align 64, offset 64] [from ]
!498 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"imx", i32 292, i64 64, i64 64, i64 128, i32 0, metadata !185} ; [ DW_TAG_member ] [imx] [line 292, size 64, align 64, offset 128] [from ]
!499 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"dmx", i32 293, i64 64, i64 64, i64 192, i32 0, metadata !185} ; [ DW_TAG_member ] [dmx] [line 293, size 64, align 64, offset 192] [from ]
!500 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"xmx_mem", i32 299, i64 64, i64 64, i64 256, i32 0, metadata !80} ; [ DW_TAG_member ] [xmx_mem] [line 299, size 64, align 64, offset 256] [from ]
!501 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"mmx_mem", i32 299, i64 64, i64 64, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [mmx_mem] [line 299, size 64, align 64, offset 320] [from ]
!502 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"imx_mem", i32 299, i64 64, i64 64, i64 384, i32 0, metadata !80} ; [ DW_TAG_member ] [imx_mem] [line 299, size 64, align 64, offset 384] [from ]
!503 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"dmx_mem", i32 299, i64 64, i64 64, i64 448, i32 0, metadata !80} ; [ DW_TAG_member ] [dmx_mem] [line 299, size 64, align 64, offset 448] [from ]
!504 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"maxN", i32 308, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [maxN] [line 308, size 32, align 32, offset 512] [from int]
!505 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"maxM", i32 309, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [maxM] [line 309, size 32, align 32, offset 544] [from int]
!506 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"padN", i32 311, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [padN] [line 311, size 32, align 32, offset 576] [from int]
!507 = metadata !{i32 786445, metadata !4, metadata !494, metadata !"padM", i32 312, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [padM] [line 312, size 32, align 32, offset 608] [from int]
!508 = metadata !{i32 786688, metadata !480, metadata !"tr", metadata !24, i32 604, metadata !509, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 604]
!509 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !510} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!510 = metadata !{i32 786451, metadata !4, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !511, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!511 = metadata !{metadata !512, metadata !513, metadata !514, metadata !515}
!512 = metadata !{i32 786445, metadata !4, metadata !510, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!513 = metadata !{i32 786445, metadata !4, metadata !510, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!514 = metadata !{i32 786445, metadata !4, metadata !510, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!515 = metadata !{i32 786445, metadata !4, metadata !510, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !156} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!516 = metadata !{i32 786688, metadata !480, metadata !"seq", metadata !24, i32 605, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 605]
!517 = metadata !{i32 786688, metadata !480, metadata !"dsq", metadata !24, i32 606, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsq] [line 606]
!518 = metadata !{i32 786688, metadata !480, metadata !"sqinfo", metadata !24, i32 607, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqinfo] [line 607]
!519 = metadata !{i32 786688, metadata !480, metadata !"sc", metadata !24, i32 608, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 608]
!520 = metadata !{i32 786688, metadata !480, metadata !"pvalue", metadata !24, i32 609, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvalue] [line 609]
!521 = metadata !{i32 786688, metadata !480, metadata !"evalue", metadata !24, i32 610, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evalue] [line 610]
!522 = metadata !{i32 786688, metadata !480, metadata !"nseq", metadata !24, i32 611, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nseq] [line 611]
!523 = metadata !{metadata !524, metadata !530, metadata !531, metadata !532, metadata !533, metadata !537, metadata !540, metadata !544, metadata !548, metadata !552}
!524 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet", metadata !"Alphabet", metadata !"", metadata !525, i32 19, metadata !527, i32 0, i32 1, [25 x i8]* @Alphabet, null} ; [ DW_TAG_variable ] [Alphabet] [line 19] [def]
!525 = metadata !{i32 786473, metadata !526}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/globals.h]
!526 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/globals.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!527 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 200, i64 8, i32 0, i32 0, metadata !29, metadata !528, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 200, align 8, offset 0] [from char]
!528 = metadata !{metadata !529}
!529 = metadata !{i32 786465, i64 0, i64 25}      ; [ DW_TAG_subrange_type ] [0, 24]
!530 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet_type", metadata !"Alphabet_type", metadata !"", metadata !525, i32 20, metadata !15, i32 0, i32 1, i32* @Alphabet_type, null} ; [ DW_TAG_variable ] [Alphabet_type] [line 20] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet_size", metadata !"Alphabet_size", metadata !"", metadata !525, i32 21, metadata !15, i32 0, i32 1, i32* @Alphabet_size, null} ; [ DW_TAG_variable ] [Alphabet_size] [line 21] [def]
!532 = metadata !{i32 786484, i32 0, null, metadata !"Alphabet_iupac", metadata !"Alphabet_iupac", metadata !"", metadata !525, i32 22, metadata !15, i32 0, i32 1, i32* @Alphabet_iupac, null} ; [ DW_TAG_variable ] [Alphabet_iupac] [line 22] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"Degenerate", metadata !"Degenerate", metadata !"", metadata !525, i32 23, metadata !534, i32 0, i32 1, [24 x [20 x i8]]* @Degenerate, null} ; [ DW_TAG_variable ] [Degenerate] [line 23] [def]
!534 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3840, i64 8, i32 0, i32 0, metadata !29, metadata !535, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3840, align 8, offset 0] [from char]
!535 = metadata !{metadata !536, metadata !94}
!536 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!537 = metadata !{i32 786484, i32 0, null, metadata !"DegenCount", metadata !"DegenCount", metadata !"", metadata !525, i32 24, metadata !538, i32 0, i32 1, [24 x i32]* @DegenCount, null} ; [ DW_TAG_variable ] [DegenCount] [line 24] [def]
!538 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !15, metadata !539, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from int]
!539 = metadata !{metadata !536}
!540 = metadata !{i32 786484, i32 0, null, metadata !"experts", metadata !"experts", metadata !"", metadata !24, i32 57, metadata !541, i32 1, i32 1, [759 x i8]* @experts, null} ; [ DW_TAG_variable ] [experts] [line 57] [local] [def]
!541 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6072, i64 8, i32 0, i32 0, metadata !29, metadata !542, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6072, align 8, offset 0] [from char]
!542 = metadata !{metadata !543}
!543 = metadata !{i32 786465, i64 0, i64 759}     ; [ DW_TAG_subrange_type ] [0, 758]
!544 = metadata !{i32 786484, i32 0, null, metadata !"banner", metadata !"banner", metadata !"", metadata !24, i32 45, metadata !545, i32 1, i32 1, [58 x i8]* @banner, null} ; [ DW_TAG_variable ] [banner] [line 45] [local] [def]
!545 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 464, i64 8, i32 0, i32 0, metadata !29, metadata !546, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 464, align 8, offset 0] [from char]
!546 = metadata !{metadata !547}
!547 = metadata !{i32 786465, i64 0, i64 58}      ; [ DW_TAG_subrange_type ] [0, 57]
!548 = metadata !{i32 786484, i32 0, null, metadata !"usage", metadata !"usage", metadata !"", metadata !24, i32 47, metadata !549, i32 1, i32 1, [382 x i8]* @usage, null} ; [ DW_TAG_variable ] [usage] [line 47] [local] [def]
!549 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3056, i64 8, i32 0, i32 0, metadata !29, metadata !550, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3056, align 8, offset 0] [from char]
!550 = metadata !{metadata !551}
!551 = metadata !{i32 786465, i64 0, i64 382}     ; [ DW_TAG_subrange_type ] [0, 381]
!552 = metadata !{i32 786484, i32 0, null, metadata !"OPTIONS", metadata !"OPTIONS", metadata !"", metadata !24, i32 72, metadata !553, i32 1, i32 1, [17 x %struct.opt_s]* @OPTIONS, null} ; [ DW_TAG_variable ] [OPTIONS] [line 72] [local] [def]
!553 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2176, i64 64, i32 0, i32 0, metadata !554, metadata !559, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2176, align 64, offset 0] [from opt_s]
!554 = metadata !{i32 786451, metadata !214, null, metadata !"opt_s", i32 330, i64 128, i64 64, i32 0, i32 0, null, metadata !555, i32 0, null, null} ; [ DW_TAG_structure_type ] [opt_s] [line 330, size 128, align 64, offset 0] [from ]
!555 = metadata !{metadata !556, metadata !557, metadata !558}
!556 = metadata !{i32 786445, metadata !214, metadata !554, metadata !"name", i32 331, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [name] [line 331, size 64, align 64, offset 0] [from ]
!557 = metadata !{i32 786445, metadata !214, metadata !554, metadata !"single", i32 332, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [single] [line 332, size 32, align 32, offset 64] [from int]
!558 = metadata !{i32 786445, metadata !214, metadata !554, metadata !"argtype", i32 333, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [argtype] [line 333, size 32, align 32, offset 96] [from int]
!559 = metadata !{metadata !560}
!560 = metadata !{i32 786465, i64 0, i64 17}      ; [ DW_TAG_subrange_type ] [0, 16]
!561 = metadata !{i32 154, i32 0, metadata !23, null}
!562 = metadata !{i32 162, i32 0, metadata !23, null}
!563 = metadata !{i32 164, i32 0, metadata !23, null}
!564 = metadata !{i32 168, i32 0, metadata !23, null}
!565 = metadata !{i32 169, i32 0, metadata !23, null}
!566 = metadata !{i32 171, i32 0, metadata !23, null}
!567 = metadata !{i32 172, i32 0, metadata !23, null}
!568 = metadata !{i32 173, i32 0, metadata !23, null}
!569 = metadata !{i32 174, i32 0, metadata !23, null}
!570 = metadata !{i32 175, i32 0, metadata !23, null}
!571 = metadata !{i32 176, i32 0, metadata !23, null}
!572 = metadata !{i32 179, i32 0, metadata !23, null}
!573 = metadata !{i32 180, i32 0, metadata !23, null}
!574 = metadata !{i32 186, i32 0, metadata !23, null}
!575 = metadata !{i32 188, i32 0, metadata !23, null}
!576 = metadata !{i32 189, i32 0, metadata !23, null}
!577 = metadata !{i32 190, i32 0, metadata !23, null}
!578 = metadata !{i32 210, i32 0, metadata !23, null}
!579 = metadata !{i32 211, i32 0, metadata !23, null}
!580 = metadata !{i32 1}
!581 = metadata !{i32 212, i32 0, metadata !23, null}
!582 = metadata !{i32 213, i32 0, metadata !23, null}
!583 = metadata !{i32 214, i32 0, metadata !23, null}
!584 = metadata !{i32 215, i32 0, metadata !23, null}
!585 = metadata !{i32 216, i32 0, metadata !23, null}
!586 = metadata !{i32 218, i32 0, metadata !23, null}
!587 = metadata !{i32 219, i32 0, metadata !23, null}
!588 = metadata !{i32 220, i32 0, metadata !23, null}
!589 = metadata !{i32 2147483647}
!590 = metadata !{i32 229, i32 0, metadata !23, null}
!591 = metadata !{i32 230, i32 0, metadata !23, null}
!592 = metadata !{metadata !"double", metadata !593}
!593 = metadata !{metadata !"omnipotent char", metadata !594}
!594 = metadata !{metadata !"Simple C/C++ TBAA"}
!595 = metadata !{i32 231, i32 0, metadata !23, null}
!596 = metadata !{metadata !"float", metadata !593}
!597 = metadata !{i32 232, i32 0, metadata !23, null}
!598 = metadata !{i32 233, i32 0, metadata !23, null}
!599 = metadata !{i32 234, i32 0, metadata !23, null}
!600 = metadata !{metadata !"_ZTSN11threshold_s3$_0E", metadata !593}
!601 = metadata !{i32 235, i32 0, metadata !23, null}
!602 = metadata !{metadata !"int", metadata !593}
!603 = metadata !{i32 237, i32 0, metadata !23, null}
!604 = metadata !{i32 239, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !23, i32 238, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!606 = metadata !{metadata !"any pointer", metadata !593}
!607 = metadata !{i32 240, i32 0, metadata !605, null}
!608 = metadata !{i32 241, i32 0, metadata !605, null}
!609 = metadata !{i32 242, i32 0, metadata !605, null}
!610 = metadata !{i32 243, i32 0, metadata !605, null}
!611 = metadata !{i32 244, i32 0, metadata !605, null}
!612 = metadata !{i32 245, i32 0, metadata !605, null}
!613 = metadata !{i32 246, i32 0, metadata !605, null}
!614 = metadata !{i32 247, i32 0, metadata !605, null}
!615 = metadata !{i32 248, i32 0, metadata !605, null}
!616 = metadata !{i32 249, i32 0, metadata !605, null}
!617 = metadata !{i32 250, i32 0, metadata !605, null}
!618 = metadata !{i32 251, i32 0, metadata !605, null}
!619 = metadata !{i32 252, i32 0, metadata !605, null}
!620 = metadata !{i32 253, i32 0, metadata !605, null}
!621 = metadata !{i32 254, i32 0, metadata !605, null}
!622 = metadata !{i32 255, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !605, i32 254, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!624 = metadata !{i32 256, i32 0, metadata !623, null}
!625 = metadata !{i32 257, i32 0, metadata !623, null}
!626 = metadata !{i32 259, i32 0, metadata !605, null}
!627 = metadata !{i32 260, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !605, i32 259, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!629 = metadata !{i32 261, i32 0, metadata !628, null}
!630 = metadata !{i32 262, i32 0, metadata !628, null}
!631 = metadata !{i32 263, i32 0, metadata !628, null}
!632 = metadata !{i32 266, i32 0, metadata !23, null}
!633 = metadata !{i32 267, i32 0, metadata !23, null}
!634 = metadata !{i32 269, i32 0, metadata !23, null}
!635 = metadata !{i32 270, i32 0, metadata !23, null}
!636 = metadata !{i32 272, i32 0, metadata !23, null}
!637 = metadata !{i32 273, i32 0, metadata !23, null}
!638 = metadata !{i32 274, i32 0, metadata !23, null}
!639 = metadata !{i32 275, i32 0, metadata !23, null}
!640 = metadata !{i32 280, i32 0, metadata !23, null}
!641 = metadata !{i32 281, i32 0, metadata !23, null}
!642 = metadata !{i32 7}
!643 = metadata !{i32 282, i32 0, metadata !23, null}
!644 = metadata !{i32 288, i32 0, metadata !23, null}
!645 = metadata !{i32 289, i32 0, metadata !23, null}
!646 = metadata !{i32 297, i32 0, metadata !23, null}
!647 = metadata !{i32 298, i32 0, metadata !23, null}
!648 = metadata !{i32 299, i32 0, metadata !23, null}
!649 = metadata !{i32 300, i32 0, metadata !23, null}
!650 = metadata !{i32 301, i32 0, metadata !23, null}
!651 = metadata !{i32 302, i32 0, metadata !23, null}
!652 = metadata !{i32 303, i32 0, metadata !23, null}
!653 = metadata !{i32 305, i32 0, metadata !23, null}
!654 = metadata !{i32 306, i32 0, metadata !23, null}
!655 = metadata !{i32 313, i32 0, metadata !23, null}
!656 = metadata !{i32 314, i32 0, metadata !23, null}
!657 = metadata !{i32 321, i32 0, metadata !23, null}
!658 = metadata !{i32 322, i32 0, metadata !23, null}
!659 = metadata !{i32 323, i32 0, metadata !23, null}
!660 = metadata !{i32 324, i32 0, metadata !23, null}
!661 = metadata !{i32 325, i32 0, metadata !23, null}
!662 = metadata !{i32 326, i32 0, metadata !23, null}
!663 = metadata !{i32 327, i32 0, metadata !23, null}
!664 = metadata !{i32 329, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !23, i32 328, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!666 = metadata !{i32 330, i32 0, metadata !665, null}
!667 = metadata !{i32 331, i32 0, metadata !665, null}
!668 = metadata !{i32 332, i32 0, metadata !665, null}
!669 = metadata !{i32 333, i32 0, metadata !665, null}
!670 = metadata !{i32 335, i32 0, metadata !23, null}
!671 = metadata !{i32 336, i32 0, metadata !23, null}
!672 = metadata !{i32 338, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !23, i32 337, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!674 = metadata !{i32 339, i32 0, metadata !673, null}
!675 = metadata !{i32 340, i32 0, metadata !673, null}
!676 = metadata !{i32 341, i32 0, metadata !673, null}
!677 = metadata !{i32 342, i32 0, metadata !673, null}
!678 = metadata !{i32 344, i32 0, metadata !23, null}
!679 = metadata !{i32 345, i32 0, metadata !23, null}
!680 = metadata !{i32 346, i32 0, metadata !23, null}
!681 = metadata !{i32 348, i32 0, metadata !23, null}
!682 = metadata !{i32 349, i32 0, metadata !23, null}
!683 = metadata !{i32 350, i32 0, metadata !23, null}
!684 = metadata !{i32 351, i32 0, metadata !23, null}
!685 = metadata !{i32 358, i32 0, metadata !23, null}
!686 = metadata !{i32 359, i32 0, metadata !23, null}
!687 = metadata !{i32 360, i32 0, metadata !23, null}
!688 = metadata !{i32 369, i32 0, metadata !23, null}
!689 = metadata !{i32 598, i32 0, metadata !480, metadata !688}
!690 = metadata !{i32 786689, metadata !480, metadata !"hmm", metadata !24, i32 16777814, metadata !143, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [hmm] [line 598]
!691 = metadata !{i32 786689, metadata !480, metadata !"sqfp", metadata !24, i32 33555030, metadata !211, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [sqfp] [line 598]
!692 = metadata !{i32 786689, metadata !480, metadata !"thresh", metadata !24, i32 50332246, metadata !453, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [thresh] [line 598]
!693 = metadata !{i32 786689, metadata !480, metadata !"do_forward", metadata !24, i32 67109462, metadata !15, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [do_forward] [line 598]
!694 = metadata !{i32 786689, metadata !480, metadata !"do_null2", metadata !24, i32 83886679, metadata !15, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [do_null2] [line 599]
!695 = metadata !{i32 599, i32 0, metadata !480, metadata !688}
!696 = metadata !{i32 786689, metadata !480, metadata !"do_xnu", metadata !24, i32 100663895, metadata !15, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [do_xnu] [line 599]
!697 = metadata !{i32 786689, metadata !480, metadata !"histogram", metadata !24, i32 117441112, metadata !352, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [histogram] [line 600]
!698 = metadata !{i32 600, i32 0, metadata !480, metadata !688}
!699 = metadata !{i32 786689, metadata !480, metadata !"ghit", metadata !24, i32 134218329, metadata !385, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [ghit] [line 601]
!700 = metadata !{i32 601, i32 0, metadata !480, metadata !688}
!701 = metadata !{i32 786689, metadata !480, metadata !"dhit", metadata !24, i32 150995545, metadata !385, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [dhit] [line 601]
!702 = metadata !{i32 604, i32 0, metadata !480, metadata !688}
!703 = metadata !{i32 605, i32 0, metadata !480, metadata !688}
!704 = metadata !{i32 607, i32 0, metadata !480, metadata !688}
!705 = metadata !{i32 617, i32 0, metadata !480, metadata !688}
!706 = metadata !{i32 786688, metadata !480, metadata !"mx", metadata !24, i32 603, metadata !493, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [mx] [line 603]
!707 = metadata !{i32 786688, metadata !480, metadata !"nseq", metadata !24, i32 611, metadata !15, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [nseq] [line 611]
!708 = metadata !{i32 619, i32 0, metadata !480, metadata !688}
!709 = metadata !{i32 620, i32 0, metadata !480, metadata !688}
!710 = metadata !{i32 626, i32 0, metadata !711, metadata !688}
!711 = metadata !{i32 786443, metadata !1, metadata !480, i32 621, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!712 = metadata !{i32 648, i32 0, metadata !711, metadata !688}
!713 = metadata !{i32 669, i32 0, metadata !714, metadata !688}
!714 = metadata !{i32 786443, metadata !1, metadata !711, i32 668, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!715 = metadata !{i32 650, i32 0, metadata !716, metadata !688}
!716 = metadata !{i32 786443, metadata !1, metadata !711, i32 648, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!717 = metadata !{i32 628, i32 0, metadata !711, metadata !688}
!718 = metadata !{i32 786688, metadata !480, metadata !"seq", metadata !24, i32 605, metadata !28, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [seq] [line 605]
!719 = metadata !{i32 629, i32 0, metadata !711, metadata !688}
!720 = metadata !{i32 786688, metadata !480, metadata !"dsq", metadata !24, i32 606, metadata !28, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [dsq] [line 606]
!721 = metadata !{i32 631, i32 0, metadata !711, metadata !688}
!722 = metadata !{i32 639, i32 0, metadata !711, metadata !688}
!723 = metadata !{i32 640, i32 0, metadata !711, metadata !688}
!724 = metadata !{i32 786688, metadata !480, metadata !"sc", metadata !24, i32 608, metadata !8, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [sc] [line 608]
!725 = metadata !{i32 642, i32 0, metadata !711, metadata !688}
!726 = metadata !{i32 649, i32 0, metadata !716, metadata !688}
!727 = metadata !{i32 786688, metadata !480, metadata !"tr", metadata !24, i32 604, metadata !509, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [tr] [line 604]
!728 = metadata !{i32 665, i32 0, metadata !711, metadata !688}
!729 = metadata !{i32 786688, metadata !480, metadata !"pvalue", metadata !24, i32 609, metadata !10, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [pvalue] [line 609]
!730 = metadata !{i32 666, i32 0, metadata !711, metadata !688}
!731 = metadata !{i32 667, i32 0, metadata !711, metadata !688}
!732 = metadata !{i32 678, i32 0, metadata !714, metadata !688}
!733 = metadata !{i32 680, i32 0, metadata !711, metadata !688}
!734 = metadata !{i32 681, i32 0, metadata !711, metadata !688}
!735 = metadata !{i32 682, i32 0, metadata !711, metadata !688}
!736 = metadata !{i32 683, i32 0, metadata !711, metadata !688}
!737 = metadata !{i32 684, i32 0, metadata !711, metadata !688}
!738 = metadata !{i32 686, i32 0, metadata !480, metadata !688}
!739 = metadata !{i32 687, i32 0, metadata !480, metadata !688}
!740 = metadata !{i32 786689, metadata !480, metadata !"ret_nseq", metadata !24, i32 167772761, metadata !156, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [ret_nseq] [line 601]
!741 = metadata !{i32 382, i32 0, metadata !23, null}
!742 = metadata !{i32 549, i32 0, metadata !23, null}
!743 = metadata !{i32 551, i32 0, metadata !23, null}
!744 = metadata !{i32 553, i32 0, metadata !23, null}
!745 = metadata !{i32 557, i32 0, metadata !23, null}
!746 = metadata !{i32 688, i32 0, metadata !480, metadata !688}
!747 = metadata !{i32 689, i32 0, metadata !480, metadata !688}
!748 = metadata !{i32 379, i32 0, metadata !23, null}
!749 = metadata !{i32 380, i32 0, metadata !23, null}
!750 = metadata !{i32 387, i32 0, metadata !23, null}
!751 = metadata !{i32 389, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !23, i32 388, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!753 = metadata !{i32 393, i32 0, metadata !752, null}
!754 = metadata !{i32 396, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !23, i32 395, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!756 = metadata !{i32 397, i32 0, metadata !755, null}
!757 = metadata !{i32 398, i32 0, metadata !755, null}
!758 = metadata !{i32 401, i32 0, metadata !23, null}
!759 = metadata !{i32 402, i32 0, metadata !23, null}
!760 = metadata !{i32 404, i32 0, metadata !23, null}
!761 = metadata !{i32 406, i32 0, metadata !23, null}
!762 = metadata !{i32 407, i32 0, metadata !23, null}
!763 = metadata !{i32 408, i32 0, metadata !23, null}
!764 = metadata !{i32 413, i32 0, metadata !23, null}
!765 = metadata !{i32 414, i32 0, metadata !23, null}
!766 = metadata !{i32 415, i32 0, metadata !23, null}
!767 = metadata !{i32 416, i32 0, metadata !449, null}
!768 = metadata !{i32 419, i32 0, metadata !448, null}
!769 = metadata !{i32 426, i32 0, metadata !448, null}
!770 = metadata !{i32 433, i32 0, metadata !448, null}
!771 = metadata !{i32 435, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !448, i32 434, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!773 = metadata !{i32 436, i32 0, metadata !772, null}
!774 = metadata !{i32 437, i32 0, metadata !772, null}
!775 = metadata !{i32 438, i32 0, metadata !448, null}
!776 = metadata !{i32 440, i32 0, metadata !448, null}
!777 = metadata !{i32 441, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !448, i32 440, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!779 = metadata !{i32 445, i32 0, metadata !778, null}
!780 = metadata !{i32 446, i32 0, metadata !778, null}
!781 = metadata !{i32 447, i32 0, metadata !448, null}
!782 = metadata !{i32 450, i32 0, metadata !23, null}
!783 = metadata !{i32 456, i32 0, metadata !23, null}
!784 = metadata !{i32 457, i32 0, metadata !23, null}
!785 = metadata !{i32 463, i32 0, metadata !23, null}
!786 = metadata !{i32 464, i32 0, metadata !23, null}
!787 = metadata !{i32 466, i32 0, metadata !23, null}
!788 = metadata !{i32 469, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !23, i32 469, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!790 = metadata !{i32 471, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !789, i32 470, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!792 = metadata !{i32 478, i32 0, metadata !791, null}
!793 = metadata !{i32 480, i32 0, metadata !791, null}
!794 = metadata !{i32 482, i32 0, metadata !791, null}
!795 = metadata !{i32 483, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !791, i32 482, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!797 = metadata !{i32 491, i32 0, metadata !796, null}
!798 = metadata !{i32 492, i32 0, metadata !796, null}
!799 = metadata !{i32 494, i32 0, metadata !23, null}
!800 = metadata !{i32 503, i32 0, metadata !23, null}
!801 = metadata !{i32 505, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !23, i32 504, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!803 = metadata !{i32 506, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !802, i32 506, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!805 = metadata !{i32 528, i32 0, metadata !802, null}
!806 = metadata !{i32 529, i32 0, metadata !802, null}
!807 = metadata !{i32 509, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !804, i32 507, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!809 = metadata !{i32 516, i32 0, metadata !808, null}
!810 = metadata !{i32 518, i32 0, metadata !808, null}
!811 = metadata !{i32 520, i32 0, metadata !808, null}
!812 = metadata !{i32 522, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !808, i32 521, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmsearch.c]
!814 = metadata !{i32 524, i32 0, metadata !813, null}
!815 = metadata !{i32 525, i32 0, metadata !813, null}
!816 = metadata !{i32 526, i32 0, metadata !813, null}
!817 = metadata !{i32 508, i32 0, metadata !808, null}
!818 = metadata !{i32 538, i32 0, metadata !23, null}
!819 = metadata !{i32 539, i32 0, metadata !23, null}
!820 = metadata !{i32 550, i32 0, metadata !23, null}
!821 = metadata !{i32 552, i32 0, metadata !23, null}
!822 = metadata !{i32 562, i32 0, metadata !23, null}
!823 = metadata !{i32 563, i32 0, metadata !23, null}
!824 = metadata !{i32 564, i32 0, metadata !23, null}
!825 = metadata !{i32 565, i32 0, metadata !23, null}
!826 = metadata !{i32 566, i32 0, metadata !23, null}
!827 = metadata !{i32 567, i32 0, metadata !23, null}
!828 = metadata !{i32 568, i32 0, metadata !23, null}
!829 = metadata !{i32 570, i32 0, metadata !23, null}
!830 = metadata !{i32 571, i32 0, metadata !23, null}
