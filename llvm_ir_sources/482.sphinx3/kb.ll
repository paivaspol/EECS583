; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/kb.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.kb_t = type { %struct.kbcore_t*, i32, %struct.lextree_t**, %struct.lextree_t**, %struct.lextree_t**, i32, %struct.vithist_t*, float***, i32, i32*, i32*, i32*, i32*, i32, i32, i32**, i32*, i32*, i32, i32, i32, %struct.ascr_t*, %struct.beam_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32*, i32, i32, %struct.ptmr_t, %struct.ptmr_t, %struct.ptmr_t, i32, double, double, double, double, %struct._IO_FILE*, %struct._IO_FILE*, %struct.hyp_t**, i32, i8*, i32 }
%struct.kbcore_t = type { %struct.feat_s*, %struct.mdef_t*, %struct.dict_t*, %struct.dict2pid_t*, %struct.lm_s*, %struct.lmset_s*, %struct.fillpen_t*, i16*, %struct.mgau_model_t*, %struct.subvq_t*, %struct.gs_s*, %struct.tmat_t*, i32, i32 }
%struct.feat_s = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i32, void (%struct.feat_s*, float**, float**)* }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.dict2pid_t = type { i32**, i32***, i32**, i16**, i16**, i32*, i32, i32 }
%struct.lm_s = type { i32, i32, i32, i32, i8**, i16, i16, i32, i32, %struct.ug_t*, %struct.bg_t*, %struct.tg_t*, %struct.membg_t*, %struct.tginfo_s**, %union.lmlog_t*, %union.lmlog_t*, %union.lmlog_t*, i32*, i32, i32, i32, %struct._IO_FILE*, i32, i32, i32, float, i32, %struct.lm_tgcache_entry_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16*, i32, %struct.lmclass_s**, i32, i32* }
%struct.ug_t = type { i32, %union.lmlog_t, %union.lmlog_t, i32 }
%union.lmlog_t = type { float }
%struct.bg_t = type { i16, i16, i16, i16 }
%struct.tg_t = type { i16, i16 }
%struct.membg_t = type { %struct.bg_t*, i32 }
%struct.tginfo_s = type { i16, i32, %struct.tg_t*, i32, i32, %struct.tginfo_s* }
%struct.lm_tgcache_entry_t = type { [3 x i16], i32 }
%struct.lmclass_s = type { i8*, %struct.lmclass_word_s*, %struct.lmclass_s* }
%struct.lmclass_word_s = type { i8*, i32, i32, %struct.lmclass_word_s* }
%struct.lmset_s = type { i8*, %struct.lm_s* }
%struct.fillpen_t = type { %struct.dict_t*, i32*, double, double }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }
%struct.subvq_t = type { %struct.arraysize_t, i32, i32, i32**, %struct.vector_gautbl_t*, i32***, float*, i32**, i32*, i32* }
%struct.arraysize_t = type { i32, i32 }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }
%struct.gs_s = type { i32, i32, i32, i32, i32, i32, float**, i32***, %struct._IO_FILE*, i32* }
%struct.tmat_t = type { i32***, i32, i32 }
%struct.lextree_t = type { i32, %struct.gnode_s*, %struct.lextree_lcroot_t*, i32, i32, %struct.lextree_node_t**, %struct.lextree_node_t**, i32, i32, i32, i32 }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
%struct.lextree_lcroot_t = type { i8, %struct.gnode_s* }
%struct.lextree_node_t = type { %struct.hmm_t, %struct.gnode_s*, i32, i32, i32, i32*, i8, i8, i16 }
%struct.hmm_t = type { %struct.hmm_state_t*, %struct.hmm_state_t, %struct.hmm_state_t, i32**, i32 }
%struct.hmm_state_t = type { i32, i32 }
%struct.vithist_t = type { %struct.vithist_entry_t**, i32*, i32, i32, i32, i32, i32*, i32*, %struct.vh_lms2vh_t**, %struct.gnode_s* }
%struct.vithist_entry_t = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, %union.vh_lmstate_t }
%union.vh_lmstate_t = type { %struct.anon }
%struct.anon = type { [2 x i16] }
%struct.vh_lms2vh_t = type { i32, i32, %struct.vithist_entry_t*, %struct.gnode_s* }
%struct.ascr_t = type { i32*, i32* }
%struct.beam_t = type { i32, i32, i32, i32 }
%struct.ptmr_t = type { i8*, double, double, double, double, double, double }
%struct.hyp_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wordprob_t = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"-logbase\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"-feat\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"-cmn\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"-varnorm\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"-agc\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"-mdef\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"-dict\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"-fdict\00", align 1
@.str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"-lmctlfn\00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"-lmdumpdir\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"-fillpen\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"-senmgau\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"-silprob\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"-fillprob\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"-lw\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"-wip\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"-uw\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"-mean\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"-var\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"-varfloor\00", align 1
@.str22 = private unnamed_addr constant [6 x i8] c"-mixw\00", align 1
@.str23 = private unnamed_addr constant [11 x i8] c"-mixwfloor\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"-subvq\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"-gs\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"-tmat\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"-tmatfloor\00", align 1
@.str28 = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/kb.c\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str30 = private unnamed_addr constant [29 x i8] c"Initialization of kb failed\0A\00", align 1
@.str31 = private unnamed_addr constant [28 x i8] c"%s or %s not in dictionary\0A\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str34 = private unnamed_addr constant [23 x i8] c"%s or %s not in LM %s\0A\00", align 1
@.str35 = private unnamed_addr constant [20 x i8] c"%s or %s not in LM\0A\00", align 1
@.str36 = private unnamed_addr constant [47 x i8] c"Tmat contains arcs skipping more than 1 state\0A\00", align 1
@.str37 = private unnamed_addr constant [32 x i8] c"Silence phone '%s' not in mdef\0A\00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"SIL\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str40 = private unnamed_addr constant [19 x i8] c"Building lextrees\0A\00", align 1
@.str41 = private unnamed_addr constant [10 x i8] c"-Nlextree\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str43 = private unnamed_addr constant [57 x i8] c"No. of ugtrees specified: %d; will instantiate 1 ugtree\0A\00", align 1
@.str44 = private unnamed_addr constant [42 x i8] c"Creating Unigram Table for lm %d name %s\0A\00", align 1
@.str45 = private unnamed_addr constant [56 x i8] c"Size of word table after unigram + words in class: %d.\0A\00", align 1
@.str46 = private unnamed_addr constant [23 x i8] c"%d active words in %s\0A\00", align 1
@.str47 = private unnamed_addr constant [56 x i8] c"Size of word table after adding alternative prons: %d.\0A\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"-treeugprob\00", align 1
@.str49 = private unnamed_addr constant [47 x i8] c"Lextrees (%d) for lm %d name %s, %d nodes(ug)\0A\00", align 1
@.str50 = private unnamed_addr constant [24 x i8] c"Creating Unigram Table\0A\00", align 1
@.str51 = private unnamed_addr constant [55 x i8] c"Size of word table after unigram + words in class: %d\0A\00", align 1
@.str52 = private unnamed_addr constant [17 x i8] c"%d active words\0A\00", align 1
@.str53 = private unnamed_addr constant [28 x i8] c"Lextrees(%d), %d nodes(ug)\0A\00", align 1
@.str54 = private unnamed_addr constant [32 x i8] c"Lextrees(%d), %d nodes(filler)\0A\00", align 1
@.str55 = private unnamed_addr constant [13 x i8] c"-lextreedump\00", align 1
@.str56 = private unnamed_addr constant [58 x i8] c"Currently, doesn't support -lextreedump for multiple-LMs\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str57 = private unnamed_addr constant [11 x i8] c"UGTREE %d\0A\00", align 1
@.str58 = private unnamed_addr constant [15 x i8] c"FILLERTREE %d\0A\00", align 1
@.str59 = private unnamed_addr constant [11 x i8] c"-subvqbeam\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"-beam\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"-pbeam\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"-wbeam\00", align 1
@.str63 = private unnamed_addr constant [45 x i8] c"Beam= %d, PBeam= %d, WBeam= %d, SVQBeam= %d\0A\00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c"-ds\00", align 1
@.str65 = private unnamed_addr constant [26 x i8] c"Down Sampling Ratio = %d\0A\00", align 1
@.str66 = private unnamed_addr constant [9 x i8] c"-cond_ds\00", align 1
@.str67 = private unnamed_addr constant [42 x i8] c"Conditional Down Sampling Parameter = %d\0A\00", align 1
@.str68 = private unnamed_addr constant [69 x i8] c"Conditional Down Sampling require the use of Gaussian Selection map\0A\00", align 1
@.str69 = private unnamed_addr constant [7 x i8] c"-gs4gs\00", align 1
@.str70 = private unnamed_addr constant [51 x i8] c"GS map would be used for Gaussian Selection? = %d\0A\00", align 1
@.str71 = private unnamed_addr constant [9 x i8] c"-svq4svq\00", align 1
@.str72 = private unnamed_addr constant [43 x i8] c"SVQ would be used as Gaussian Score ?= %d\0A\00", align 1
@.str73 = private unnamed_addr constant [10 x i8] c"-ci_pbeam\00", align 1
@.str74 = private unnamed_addr constant [85 x i8] c"CI phone beam to prune the number of parent CI phones in CI-base GMM Selection = %d\0A\00", align 1
@.str75 = private unnamed_addr constant [63 x i8] c"Virtually no CI phone beam is applied now. (ci_pbeam>1000000)\0A\00", align 1
@.str76 = private unnamed_addr constant [11 x i8] c"-wend_beam\00", align 1
@.str77 = private unnamed_addr constant [27 x i8] c"Word-end pruning beam: %d\0A\00", align 1
@.str78 = private unnamed_addr constant [11 x i8] c"-pl_window\00", align 1
@.str79 = private unnamed_addr constant [37 x i8] c"Phoneme look-ahead window size = %d\0A\00", align 1
@.str80 = private unnamed_addr constant [9 x i8] c"-pl_beam\00", align 1
@.str81 = private unnamed_addr constant [30 x i8] c"Phoneme look-ahead beam = %d\0A\00", align 1
@.str82 = private unnamed_addr constant [27 x i8] c"feat_array_alloc() failed\0A\00", align 1
@.str83 = private unnamed_addr constant [8 x i8] c"-bghist\00", align 1
@.str84 = private unnamed_addr constant [16 x i8] c"-hmmhistbinsize\00", align 1
@.str85 = private unnamed_addr constant [8 x i8] c"-hypseg\00", align 1
@.str86 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str87 = private unnamed_addr constant [50 x i8] c"fopen(%s,w) failed; use FWDXCT: from std logfile\0A\00", align 1
@.str88 = private unnamed_addr constant [5 x i8] c"-hyp\00", align 1
@.str89 = private unnamed_addr constant [17 x i8] c"Inside kb_setlm\0A\00", align 1
@.str90 = private unnamed_addr constant [60 x i8] c"LM name %s cannot be found! Fall back to use base LM model\0A\00", align 1
@.str91 = private unnamed_addr constant [21 x i8] c"Current LM name %s.\0A\00", align 1
@.str92 = private unnamed_addr constant [20 x i8] c"Current LM name %s\0A\00", align 1
@.str93 = private unnamed_addr constant [15 x i8] c"LM ug size %d\0A\00", align 1
@.str94 = private unnamed_addr constant [15 x i8] c"LM bg size %d\0A\00", align 1
@.str95 = private unnamed_addr constant [15 x i8] c"LM tg size %d\0A\00", align 1
@.str96 = private unnamed_addr constant [25 x i8] c"HMM history bin size %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @kb_init(%struct.kb_t* %kb) #0 {
entry:
  %0 = bitcast %struct.kb_t* %kb to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 504, i32 8, i1 false)
  %kbcore1 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  store %struct.kbcore_t* null, %struct.kbcore_t** %kbcore1, align 8, !tbaa !0
  %call = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #5
  %1 = bitcast i8* %call to float*
  %2 = load float* %1, align 4, !tbaa !3
  %conv = fpext float %2 to double
  %call2 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #5
  %call3 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %call4 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #5
  %call5 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #5
  %call6 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #5
  %call7 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #5
  %call8 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #5
  %call9 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0)) #5
  %call10 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str10, i64 0, i64 0)) #5
  %call11 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #5
  %call12 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #5
  %call13 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #5
  %call14 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0)) #5
  %3 = bitcast i8* %call14 to float*
  %4 = load float* %3, align 4, !tbaa !3
  %conv15 = fpext float %4 to double
  %call16 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0)) #5
  %5 = bitcast i8* %call16 to float*
  %6 = load float* %5, align 4, !tbaa !3
  %conv17 = fpext float %6 to double
  %call18 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #5
  %7 = bitcast i8* %call18 to float*
  %8 = load float* %7, align 4, !tbaa !3
  %conv19 = fpext float %8 to double
  %call20 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #5
  %9 = bitcast i8* %call20 to float*
  %10 = load float* %9, align 4, !tbaa !3
  %conv21 = fpext float %10 to double
  %call22 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #5
  %11 = bitcast i8* %call22 to float*
  %12 = load float* %11, align 4, !tbaa !3
  %conv23 = fpext float %12 to double
  %call24 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0)) #5
  %call25 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #5
  %call26 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str21, i64 0, i64 0)) #5
  %13 = bitcast i8* %call26 to float*
  %14 = load float* %13, align 4, !tbaa !3
  %conv27 = fpext float %14 to double
  %call28 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str22, i64 0, i64 0)) #5
  %call29 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0)) #5
  %15 = bitcast i8* %call29 to float*
  %16 = load float* %15, align 4, !tbaa !3
  %conv30 = fpext float %16 to double
  %call31 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0)) #5
  %call32 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0)) #5
  %call33 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str26, i64 0, i64 0)) #5
  %call34 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0)) #5
  %17 = bitcast i8* %call34 to float*
  %18 = load float* %17, align 4, !tbaa !3
  %conv35 = fpext float %18 to double
  %call36 = tail call %struct.kbcore_t* @kbcore_init(double %conv, i8* %call2, i8* %call3, i8* %call4, i8* %call5, i8* %call6, i8* %call7, i8* %call8, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %call9, i8* %call10, i8* %call11, i8* %call12, i8* %call13, double %conv15, double %conv17, double %conv19, double %conv21, double %conv23, i8* %call24, i8* %call25, double %conv27, i8* %call28, double %conv30, i8* %call31, i8* %call32, i8* %call33, double %conv35) #5
  store %struct.kbcore_t* %call36, %struct.kbcore_t** %kbcore1, align 8, !tbaa !0
  %cmp = icmp eq %struct.kbcore_t* %call36, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 117, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str30, i64 0, i64 0)) #5
  %.pre = load %struct.kbcore_t** %kbcore1, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = phi %struct.kbcore_t* [ %.pre, %if.then ], [ %call36, %entry ]
  %mdef41 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 1
  %20 = load %struct.mdef_t** %mdef41, align 8, !tbaa !0
  %dict42 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 2
  %21 = load %struct.dict_t** %dict42, align 8, !tbaa !0
  %lm43 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 4
  %22 = load %struct.lm_s** %lm43, align 8, !tbaa !0
  %lmset44 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 5
  %23 = load %struct.lmset_s** %lmset44, align 8, !tbaa !0
  %dict2pid = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 3
  %24 = load %struct.dict2pid_t** %dict2pid, align 8, !tbaa !0
  %startwid = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 11
  %25 = load i32* %startwid, align 4, !tbaa !4
  %cmp45 = icmp slt i32 %25, 0
  br i1 %cmp45, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %finishwid = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 12
  %26 = load i32* %finishwid, align 4, !tbaa !4
  %cmp47 = icmp slt i32 %26, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 129, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([28 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %lor.lhs.false
  %tobool = icmp ne %struct.lmset_s* %23, null
  br i1 %tobool, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end50
  %n_lm = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 12
  %27 = load i32* %n_lm, align 4, !tbaa !4
  %cmp52978 = icmp sgt i32 %27, 0
  br i1 %cmp52978, label %for.body, label %if.end83

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %28 = phi i32 [ %33, %for.inc ], [ %27, %for.cond.preheader ]
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %for.inc ], [ 0, %for.cond.preheader ]
  %lm54 = getelementptr inbounds %struct.lmset_s* %23, i64 %indvars.iv1001, i32 1
  %29 = load %struct.lm_s** %lm54, align 8, !tbaa !0
  %startlwid = getelementptr inbounds %struct.lm_s* %29, i64 0, i32 5
  %30 = load i16* %startlwid, align 2, !tbaa !5
  %cmp56 = icmp eq i16 %30, -1
  br i1 %cmp56, label %if.then65, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %for.body
  %finishlwid = getelementptr inbounds %struct.lm_s* %29, i64 0, i32 6
  %31 = load i16* %finishlwid, align 2, !tbaa !5
  %cmp63 = icmp eq i16 %31, -1
  br i1 %cmp63, label %if.then65, label %for.inc

if.then65:                                        ; preds = %lor.lhs.false58, %for.body
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 134, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  %name = getelementptr inbounds %struct.lmset_s* %23, i64 %indvars.iv1001, i32 0
  %32 = load i8** %name, align 8, !tbaa !0
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %32) #5
  %.pre1015 = load i32* %n_lm, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false58, %if.then65
  %33 = phi i32 [ %28, %lor.lhs.false58 ], [ %.pre1015, %if.then65 ]
  %indvars.iv.next1002 = add i64 %indvars.iv1001, 1
  %34 = trunc i64 %indvars.iv.next1002 to i32
  %cmp52 = icmp slt i32 %34, %33
  br i1 %cmp52, label %for.body, label %if.end83

if.else:                                          ; preds = %if.end50
  %tobool69 = icmp eq %struct.lm_s* %22, null
  br i1 %tobool69, label %if.end83, label %if.then70

if.then70:                                        ; preds = %if.else
  %startlwid71 = getelementptr inbounds %struct.lm_s* %22, i64 0, i32 5
  %35 = load i16* %startlwid71, align 2, !tbaa !5
  %cmp73 = icmp eq i16 %35, -1
  br i1 %cmp73, label %if.then80, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then70
  %finishlwid76 = getelementptr inbounds %struct.lm_s* %22, i64 0, i32 6
  %36 = load i16* %finishlwid76, align 2, !tbaa !5
  %cmp78 = icmp eq i16 %36, -1
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %lor.lhs.false75, %if.then70
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 138, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #5
  br label %if.end83

if.end83:                                         ; preds = %for.cond.preheader, %for.inc, %if.else, %if.then80, %lor.lhs.false75
  %tmat = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 11
  %37 = load %struct.tmat_t** %tmat, align 8, !tbaa !0
  %call84 = tail call i32 @tmat_chk_1skip(%struct.tmat_t* %37) #5
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end83
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 144, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0)) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end83
  br i1 %tobool, label %for.cond91.preheader, label %if.else150

for.cond91.preheader:                             ; preds = %if.end88
  %n_lm92 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 12
  %38 = load i32* %n_lm92, align 4, !tbaa !4
  %cmp93969 = icmp sgt i32 %38, 0
  br i1 %cmp93969, label %for.body95.lr.ph, label %if.end192

for.body95.lr.ph:                                 ; preds = %for.cond91.preheader
  %finishwid130 = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 12
  %word143 = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 4
  br label %for.body95

for.body95:                                       ; preds = %for.body95.lr.ph, %for.inc147
  %indvars.iv999 = phi i64 [ 0, %for.body95.lr.ph ], [ %indvars.iv.next1000, %for.inc147 ]
  %lm98 = getelementptr inbounds %struct.lmset_s* %23, i64 %indvars.iv999, i32 1
  %39 = load %struct.lm_s** %lm98, align 8, !tbaa !0
  %startlwid99 = getelementptr inbounds %struct.lm_s* %39, i64 0, i32 5
  %40 = load i16* %startlwid99, align 2, !tbaa !5
  %idxprom100 = zext i16 %40 to i64
  %ug = getelementptr inbounds %struct.lm_s* %39, i64 0, i32 9
  %41 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %dictwid = getelementptr inbounds %struct.ug_t* %41, i64 %idxprom100, i32 0
  store i32 -1, i32* %dictwid, align 4, !tbaa !4
  %finishlwid108 = getelementptr inbounds %struct.lm_s* %39, i64 0, i32 6
  %42 = load i16* %finishlwid108, align 2, !tbaa !5
  %idxprom109 = zext i16 %42 to i64
  %dictwid115 = getelementptr inbounds %struct.ug_t* %41, i64 %idxprom109, i32 0
  store i32 -1, i32* %dictwid115, align 4, !tbaa !4
  %w.0963 = load i32* %startwid, align 4
  %cmp118964 = icmp sgt i32 %w.0963, -1
  br i1 %cmp118964, label %for.body120.lr.ph, label %for.end129

for.body120.lr.ph:                                ; preds = %for.body95
  %dict2lmwid.phi.trans.insert = getelementptr inbounds %struct.lm_s* %39, i64 0, i32 38
  %.pre1013 = load i16** %dict2lmwid.phi.trans.insert, align 8, !tbaa !0
  %.pre1014 = load %struct.dictword_t** %word143, align 8, !tbaa !0
  br label %for.body120

for.body120:                                      ; preds = %for.body120.lr.ph, %for.body120
  %w.0965 = phi i32 [ %w.0963, %for.body120.lr.ph ], [ %w.0, %for.body120 ]
  %idxprom121 = sext i32 %w.0965 to i64
  %arrayidx125 = getelementptr inbounds i16* %.pre1013, i64 %idxprom121
  store i16 -1, i16* %arrayidx125, align 2, !tbaa !5
  %alt = getelementptr inbounds %struct.dictword_t* %.pre1014, i64 %idxprom121, i32 3
  %w.0 = load i32* %alt, align 4
  %cmp118 = icmp sgt i32 %w.0, -1
  br i1 %cmp118, label %for.body120, label %for.end129

for.end129:                                       ; preds = %for.body120, %for.body95
  %w.1966 = load i32* %finishwid130, align 4
  %cmp132967 = icmp sgt i32 %w.1966, -1
  br i1 %cmp132967, label %for.body134.lr.ph, label %for.inc147

for.body134.lr.ph:                                ; preds = %for.end129
  %dict2lmwid139.phi.trans.insert = getelementptr inbounds %struct.lm_s* %39, i64 0, i32 38
  %.pre1011 = load i16** %dict2lmwid139.phi.trans.insert, align 8, !tbaa !0
  %.pre1012 = load %struct.dictword_t** %word143, align 8, !tbaa !0
  br label %for.body134

for.body134:                                      ; preds = %for.body134.lr.ph, %for.body134
  %w.1968 = phi i32 [ %w.1966, %for.body134.lr.ph ], [ %w.1, %for.body134 ]
  %idxprom135 = sext i32 %w.1968 to i64
  %arrayidx140 = getelementptr inbounds i16* %.pre1011, i64 %idxprom135
  store i16 -1, i16* %arrayidx140, align 2, !tbaa !5
  %alt145 = getelementptr inbounds %struct.dictword_t* %.pre1012, i64 %idxprom135, i32 3
  %w.1 = load i32* %alt145, align 4
  %cmp132 = icmp sgt i32 %w.1, -1
  br i1 %cmp132, label %for.body134, label %for.inc147

for.inc147:                                       ; preds = %for.body134, %for.end129
  %indvars.iv.next1000 = add i64 %indvars.iv999, 1
  %43 = load i32* %n_lm92, align 4, !tbaa !4
  %44 = trunc i64 %indvars.iv.next1000 to i32
  %cmp93 = icmp slt i32 %44, %43
  br i1 %cmp93, label %for.body95, label %if.end192

if.else150:                                       ; preds = %if.end88
  %tobool151 = icmp eq %struct.lm_s* %22, null
  br i1 %tobool151, label %if.end192, label %if.then152

if.then152:                                       ; preds = %if.else150
  %startlwid153 = getelementptr inbounds %struct.lm_s* %22, i64 0, i32 5
  %45 = load i16* %startlwid153, align 2, !tbaa !5
  %idxprom154 = zext i16 %45 to i64
  %ug155 = getelementptr inbounds %struct.lm_s* %22, i64 0, i32 9
  %46 = load %struct.ug_t** %ug155, align 8, !tbaa !0
  %dictwid157 = getelementptr inbounds %struct.ug_t* %46, i64 %idxprom154, i32 0
  store i32 -1, i32* %dictwid157, align 4, !tbaa !4
  %finishlwid158 = getelementptr inbounds %struct.lm_s* %22, i64 0, i32 6
  %47 = load i16* %finishlwid158, align 2, !tbaa !5
  %idxprom159 = zext i16 %47 to i64
  %dictwid162 = getelementptr inbounds %struct.ug_t* %46, i64 %idxprom159, i32 0
  store i32 -1, i32* %dictwid162, align 4, !tbaa !4
  %w.2975 = load i32* %startwid, align 4
  %cmp165976 = icmp sgt i32 %w.2975, -1
  br i1 %cmp165976, label %for.body167.lr.ph, label %for.end176

for.body167.lr.ph:                                ; preds = %if.then152
  %dict2lmwid169 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 7
  %word173 = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 4
  %.pre1009 = load i16** %dict2lmwid169, align 8, !tbaa !0
  %.pre1010 = load %struct.dictword_t** %word173, align 8, !tbaa !0
  br label %for.body167

for.body167:                                      ; preds = %for.body167.lr.ph, %for.body167
  %w.2977 = phi i32 [ %w.2975, %for.body167.lr.ph ], [ %w.2, %for.body167 ]
  %idxprom168 = sext i32 %w.2977 to i64
  %arrayidx170 = getelementptr inbounds i16* %.pre1009, i64 %idxprom168
  store i16 -1, i16* %arrayidx170, align 2, !tbaa !5
  %alt175 = getelementptr inbounds %struct.dictword_t* %.pre1010, i64 %idxprom168, i32 3
  %w.2 = load i32* %alt175, align 4
  %cmp165 = icmp sgt i32 %w.2, -1
  br i1 %cmp165, label %for.body167, label %for.end176

for.end176:                                       ; preds = %for.body167, %if.then152
  %finishwid177 = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 12
  %w.3972 = load i32* %finishwid177, align 4
  %cmp179973 = icmp sgt i32 %w.3972, -1
  br i1 %cmp179973, label %for.body181.lr.ph, label %if.end192

for.body181.lr.ph:                                ; preds = %for.end176
  %dict2lmwid183 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 7
  %word187 = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 4
  %.pre1007 = load i16** %dict2lmwid183, align 8, !tbaa !0
  %.pre1008 = load %struct.dictword_t** %word187, align 8, !tbaa !0
  br label %for.body181

for.body181:                                      ; preds = %for.body181.lr.ph, %for.body181
  %w.3974 = phi i32 [ %w.3972, %for.body181.lr.ph ], [ %w.3, %for.body181 ]
  %idxprom182 = sext i32 %w.3974 to i64
  %arrayidx184 = getelementptr inbounds i16* %.pre1007, i64 %idxprom182
  store i16 -1, i16* %arrayidx184, align 2, !tbaa !5
  %alt189 = getelementptr inbounds %struct.dictword_t* %.pre1008, i64 %idxprom182, i32 3
  %w.3 = load i32* %alt189, align 4
  %cmp179 = icmp sgt i32 %w.3, -1
  br i1 %cmp179, label %for.body181, label %if.end192

if.end192:                                        ; preds = %for.end176, %for.body181, %for.cond91.preheader, %for.inc147, %if.else150
  %48 = load %struct.mdef_t** %mdef41, align 8, !tbaa !0
  %sil194 = getelementptr inbounds %struct.mdef_t* %48, i64 0, i32 14
  %49 = load i8* %sil194, align 1, !tbaa !1
  %cmp196 = icmp slt i8 %49, 0
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.end192
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 173, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0)) #5
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.end192
  %n_sen = getelementptr inbounds %struct.mdef_t* %20, i64 0, i32 4
  %50 = load i32* %n_sen, align 4, !tbaa !4
  %conv200 = sext i32 %50 to i64
  %call201 = tail call i8* @__ckd_calloc__(i64 %conv200, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 176) #5
  %51 = bitcast i8* %call201 to i32*
  %sen_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 11
  store i32* %51, i32** %sen_active, align 8, !tbaa !0
  %52 = load i32* %n_sen, align 4, !tbaa !4
  %conv203 = sext i32 %52 to i64
  %call204 = tail call i8* @__ckd_calloc__(i64 %conv203, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 177) #5
  %53 = bitcast i8* %call204 to i32*
  %rec_sen_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 12
  store i32* %53, i32** %rec_sen_active, align 8, !tbaa !0
  %n_sseq = getelementptr inbounds %struct.mdef_t* %20, i64 0, i32 10
  %54 = load i32* %n_sseq, align 4, !tbaa !4
  %conv205 = sext i32 %54 to i64
  %call206 = tail call i8* @__ckd_calloc__(i64 %conv205, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 178) #5
  %55 = bitcast i8* %call206 to i32*
  %ssid_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 9
  store i32* %55, i32** %ssid_active, align 8, !tbaa !0
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t* %24, i64 0, i32 7
  %56 = load i32* %n_comsseq, align 4, !tbaa !4
  %conv207 = sext i32 %56 to i64
  %call208 = tail call i8* @__ckd_calloc__(i64 %conv207, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 179) #5
  %57 = bitcast i8* %call208 to i32*
  %comssid_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 10
  store i32* %57, i32** %comssid_active, align 8, !tbaa !0
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %20, i64 0, i32 0
  %58 = load i32* %n_ciphone, align 4, !tbaa !4
  %add = add nsw i32 %58, 1
  %conv209 = sext i32 %add to i64
  %call210 = tail call i8* @__ckd_calloc__(i64 %conv209, i64 1, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 182) #5
  %59 = load i32* %n_ciphone, align 4, !tbaa !4
  %add212 = add nsw i32 %59, 31
  %shr = ashr i32 %add212, 5
  %conv213 = sext i32 %shr to i64
  %call214 = tail call i8* @__ckd_calloc__(i64 %conv213, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 183) #5
  %60 = bitcast i8* %call214 to i32*
  %n_word = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 7
  %61 = load i32* %n_word, align 4, !tbaa !4
  %cmp216960 = icmp sgt i32 %61, 0
  br i1 %cmp216960, label %for.body218.lr.ph, label %for.end241

for.body218.lr.ph:                                ; preds = %if.end199
  %word220 = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 4
  %ciphone229 = getelementptr inbounds %struct.mdef_t* %20, i64 0, i32 7
  %.pre1004 = load %struct.dictword_t** %word220, align 8, !tbaa !0
  %.pre1005 = load %struct.ciphone_t** %ciphone229, align 8, !tbaa !0
  br label %for.body218

for.body218:                                      ; preds = %for.body218.lr.ph, %for.inc239
  %62 = phi i32 [ %61, %for.body218.lr.ph ], [ %68, %for.inc239 ]
  %indvars.iv997 = phi i64 [ 0, %for.body218.lr.ph ], [ %indvars.iv.next998, %for.inc239 ]
  %pronlen = getelementptr inbounds %struct.dictword_t* %.pre1004, i64 %indvars.iv997, i32 2
  %63 = load i32* %pronlen, align 4, !tbaa !4
  %sub = add nsw i32 %63, -1
  %idxprom222 = sext i32 %sub to i64
  %ciphone = getelementptr inbounds %struct.dictword_t* %.pre1004, i64 %indvars.iv997, i32 1
  %64 = load i8** %ciphone, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i8* %64, i64 %idxprom222
  %65 = load i8* %arrayidx226, align 1, !tbaa !1
  %conv227 = sext i8 %65 to i32
  %idxprom228 = sext i8 %65 to i64
  %filler = getelementptr inbounds %struct.ciphone_t* %.pre1005, i64 %idxprom228, i32 1
  %66 = load i32* %filler, align 4, !tbaa !4
  %tobool231 = icmp eq i32 %66, 0
  br i1 %tobool231, label %if.then232, label %for.inc239

if.then232:                                       ; preds = %for.body218
  %and = and i32 %conv227, 31
  %shl = shl i32 1, %and
  %shr235 = ashr i32 %conv227, 5
  %idxprom236 = sext i32 %shr235 to i64
  %arrayidx237 = getelementptr inbounds i32* %60, i64 %idxprom236
  %67 = load i32* %arrayidx237, align 4, !tbaa !4
  %or = or i32 %67, %shl
  store i32 %or, i32* %arrayidx237, align 4, !tbaa !4
  %.pre1006 = load i32* %n_word, align 4, !tbaa !4
  br label %for.inc239

for.inc239:                                       ; preds = %for.body218, %if.then232
  %68 = phi i32 [ %62, %for.body218 ], [ %.pre1006, %if.then232 ]
  %indvars.iv.next998 = add i64 %indvars.iv997, 1
  %69 = trunc i64 %indvars.iv.next998 to i32
  %cmp216 = icmp slt i32 %69, %68
  br i1 %cmp216, label %for.body218, label %for.end241

for.end241:                                       ; preds = %for.inc239, %if.end199
  %sil242 = getelementptr inbounds %struct.mdef_t* %20, i64 0, i32 14
  %70 = load i8* %sil242, align 1, !tbaa !1
  %conv243 = sext i8 %70 to i32
  %and244 = and i32 %conv243, 31
  %shl245 = shl i32 1, %and244
  %shr247 = ashr i32 %conv243, 5
  %idxprom248 = sext i32 %shr247 to i64
  %arrayidx249 = getelementptr inbounds i32* %60, i64 %idxprom248
  %71 = load i32* %arrayidx249, align 4, !tbaa !4
  %or250 = or i32 %shl245, %71
  store i32 %or250, i32* %arrayidx249, align 4, !tbaa !4
  %72 = load i32* %n_ciphone, align 4, !tbaa !4
  %cmp254955 = icmp sgt i32 %72, 0
  br i1 %cmp254955, label %for.body256, label %for.end273

for.body256:                                      ; preds = %for.end241, %for.inc271
  %73 = phi i32 [ %75, %for.inc271 ], [ %72, %for.end241 ]
  %conv252958 = phi i32 [ %conv252, %for.inc271 ], [ 0, %for.end241 ]
  %ci.0957 = phi i8 [ %inc272, %for.inc271 ], [ 0, %for.end241 ]
  %n_lc.0956 = phi i32 [ %n_lc.1, %for.inc271 ], [ 0, %for.end241 ]
  %shr258 = ashr i32 %conv252958, 5
  %idxprom259 = sext i32 %shr258 to i64
  %arrayidx260 = getelementptr inbounds i32* %60, i64 %idxprom259
  %74 = load i32* %arrayidx260, align 4, !tbaa !4
  %and262 = and i32 %conv252958, 31
  %shl263 = shl i32 1, %and262
  %and264 = and i32 %74, %shl263
  %tobool265 = icmp eq i32 %and264, 0
  br i1 %tobool265, label %for.inc271, label %if.then266

if.then266:                                       ; preds = %for.body256
  %inc267 = add nsw i32 %n_lc.0956, 1
  %idxprom268 = sext i32 %n_lc.0956 to i64
  %arrayidx269 = getelementptr inbounds i8* %call210, i64 %idxprom268
  store i8 %ci.0957, i8* %arrayidx269, align 1, !tbaa !1
  %.pre1003 = load i32* %n_ciphone, align 4, !tbaa !4
  br label %for.inc271

for.inc271:                                       ; preds = %for.body256, %if.then266
  %75 = phi i32 [ %.pre1003, %if.then266 ], [ %73, %for.body256 ]
  %n_lc.1 = phi i32 [ %inc267, %if.then266 ], [ %n_lc.0956, %for.body256 ]
  %inc272 = add i8 %ci.0957, 1
  %conv252 = sext i8 %inc272 to i32
  %cmp254 = icmp slt i32 %conv252, %75
  br i1 %cmp254, label %for.body256, label %for.end273

for.end273:                                       ; preds = %for.inc271, %for.end241
  %n_lc.0.lcssa = phi i32 [ 0, %for.end241 ], [ %n_lc.1, %for.inc271 ]
  %idxprom274 = sext i32 %n_lc.0.lcssa to i64
  %arrayidx275 = getelementptr inbounds i8* %call210, i64 %idxprom274
  store i8 -1, i8* %arrayidx275, align 1, !tbaa !1
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 197, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([19 x i8]* @.str40, i64 0, i64 0)) #5
  %call276 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str41, i64 0, i64 0)) #5
  %76 = bitcast i8* %call276 to i32*
  %77 = load i32* %76, align 4, !tbaa !4
  %n_lextree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 1
  store i32 %77, i32* %n_lextree, align 4, !tbaa !4
  %cmp278 = icmp slt i32 %77, 1
  br i1 %cmp278, label %if.then280, label %if.end283

if.then280:                                       ; preds = %for.end273
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 201, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #5
  %78 = load i32* %n_lextree, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([57 x i8]* @.str43, i64 0, i64 0), i32 %78) #5
  store i32 1, i32* %n_lextree, align 4, !tbaa !4
  br label %if.end283

if.end283:                                        ; preds = %if.then280, %for.end273
  %79 = load i32* %n_word, align 4, !tbaa !4
  %conv285 = sext i32 %79 to i64
  %call286 = tail call i8* @__ckd_calloc__(i64 %conv285, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 208) #5
  %80 = bitcast i8* %call286 to %struct.wordprob_t*
  br i1 %tobool, label %if.then288, label %if.else377

if.then288:                                       ; preds = %if.end283
  %n_lm289 = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 12
  %81 = load i32* %n_lm289, align 4, !tbaa !4
  %82 = load i32* %n_lextree, align 4, !tbaa !4
  %mul = mul nsw i32 %82, %81
  %conv291 = sext i32 %mul to i64
  %call292 = tail call i8* @__ckd_calloc__(i64 %conv291, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 212) #5
  %83 = bitcast i8* %call292 to %struct.lextree_t**
  %ugtreeMulti = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 3
  store %struct.lextree_t** %83, %struct.lextree_t*** %ugtreeMulti, align 8, !tbaa !0
  %84 = load i32* %n_lextree, align 4, !tbaa !4
  %conv294 = sext i32 %84 to i64
  %call295 = tail call i8* @__ckd_calloc__(i64 %conv294, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 214) #5
  %85 = bitcast i8* %call295 to %struct.lextree_t**
  %ugtree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  store %struct.lextree_t** %85, %struct.lextree_t*** %ugtree, align 8, !tbaa !0
  %86 = load i32* %n_lm289, align 4, !tbaa !4
  %cmp298949 = icmp sgt i32 %86, 0
  br i1 %cmp298949, label %for.body300, label %if.end426

for.body300:                                      ; preds = %if.then288, %for.inc374
  %i.2950 = phi i32 [ %inc375, %for.inc374 ], [ 0, %if.then288 ]
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 217, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %idxprom301 = sext i32 %i.2950 to i64
  %name303 = getelementptr inbounds %struct.lmset_s* %23, i64 %idxprom301, i32 0
  %87 = load i8** %name303, align 8, !tbaa !0
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([42 x i8]* @.str44, i64 0, i64 0), i32 %i.2950, i8* %87) #5
  %88 = load i32* %n_word, align 4, !tbaa !4
  %cmp306942 = icmp sgt i32 %88, 0
  br i1 %cmp306942, label %for.body308, label %for.end315

for.body308:                                      ; preds = %for.body300, %for.body308
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %for.body308 ], [ 0, %for.body300 ]
  %wid = getelementptr inbounds %struct.wordprob_t* %80, i64 %indvars.iv987, i32 0
  store i32 -1, i32* %wid, align 4, !tbaa !4
  %prob = getelementptr inbounds %struct.wordprob_t* %80, i64 %indvars.iv987, i32 1
  store i32 -1, i32* %prob, align 4, !tbaa !4
  %indvars.iv.next988 = add i64 %indvars.iv987, 1
  %89 = load i32* %n_word, align 4, !tbaa !4
  %90 = trunc i64 %indvars.iv.next988 to i32
  %cmp306 = icmp slt i32 %90, %89
  br i1 %cmp306, label %for.body308, label %for.end315

for.end315:                                       ; preds = %for.body308, %for.body300
  %lm318 = getelementptr inbounds %struct.lmset_s* %23, i64 %idxprom301, i32 1
  %91 = load %struct.lm_s** %lm318, align 8, !tbaa !0
  %call319 = tail call i32 @lm_ug_wordprob(%struct.lm_s* %91, %struct.dict_t* %21, i32 -2147483648, %struct.wordprob_t* %80) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 224, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([56 x i8]* @.str45, i64 0, i64 0), i32 %call319) #5
  %cmp320 = icmp slt i32 %call319, 1
  br i1 %cmp320, label %if.then322, label %if.end326

if.then322:                                       ; preds = %for.end315
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 226, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  %92 = load i8** %name303, align 8, !tbaa !0
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str46, i64 0, i64 0), i32 %call319, i8* %92) #5
  br label %if.end326

if.end326:                                        ; preds = %if.then322, %for.end315
  %call327 = tail call i32 @wid_wordprob2alt(%struct.dict_t* %21, %struct.wordprob_t* %80, i32 %call319) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 228, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([56 x i8]* @.str47, i64 0, i64 0), i32 %call327) #5
  %call328 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0)) #5
  %93 = bitcast i8* %call328 to i32*
  %94 = load i32* %93, align 4, !tbaa !4
  %cmp329 = icmp eq i32 %94, 0
  br i1 %cmp329, label %for.cond332.preheader, label %if.end342

for.cond332.preheader:                            ; preds = %if.end326
  %cmp333944 = icmp sgt i32 %call327, 0
  br i1 %cmp333944, label %for.body335, label %if.end342

for.body335:                                      ; preds = %for.cond332.preheader, %for.body335
  %indvars.iv989 = phi i64 [ %indvars.iv.next990, %for.body335 ], [ 0, %for.cond332.preheader ]
  %prob338 = getelementptr inbounds %struct.wordprob_t* %80, i64 %indvars.iv989, i32 1
  store i32 -1, i32* %prob338, align 4, !tbaa !4
  %indvars.iv.next990 = add i64 %indvars.iv989, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next990 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call327
  br i1 %exitcond, label %if.end342, label %for.body335

if.end342:                                        ; preds = %for.cond332.preheader, %for.body335, %if.end326
  %i.4 = phi i32 [ %i.2950, %if.end326 ], [ 0, %for.cond332.preheader ], [ %call327, %for.body335 ]
  %95 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp345947 = icmp sgt i32 %95, 0
  br i1 %cmp345947, label %for.body347.lr.ph, label %for.inc374

for.body347.lr.ph:                                ; preds = %if.end342
  %idxprom362 = sext i32 %i.4 to i64
  %name364 = getelementptr inbounds %struct.lmset_s* %23, i64 %idxprom362, i32 0
  br label %for.body347

for.body347:                                      ; preds = %for.body347.lr.ph, %for.body347
  %j.1948 = phi i32 [ 0, %for.body347.lr.ph ], [ %inc372, %for.body347 ]
  %call348 = tail call %struct.lextree_t* @lextree_build(%struct.kbcore_t* %19, %struct.wordprob_t* %80, i32 %call327, i8* %call210) #5
  %96 = load i32* %n_lextree, align 4, !tbaa !4
  %mul350 = mul nsw i32 %96, %i.4
  %add351 = add nsw i32 %mul350, %j.1948
  %idxprom352 = sext i32 %add351 to i64
  %97 = load %struct.lextree_t*** %ugtreeMulti, align 8, !tbaa !0
  %arrayidx354 = getelementptr inbounds %struct.lextree_t** %97, i64 %idxprom352
  store %struct.lextree_t* %call348, %struct.lextree_t** %arrayidx354, align 8, !tbaa !0
  %98 = load %struct.lextree_t*** %ugtreeMulti, align 8, !tbaa !0
  %arrayidx360 = getelementptr inbounds %struct.lextree_t** %98, i64 %idxprom352
  %99 = load %struct.lextree_t** %arrayidx360, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.lextree_t* %99, i64 0, i32 0
  store i32 0, i32* %type, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 237, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %100 = load i32* %n_lextree, align 4, !tbaa !4
  %101 = load i8** %name364, align 8, !tbaa !0
  %mul366 = mul nsw i32 %100, %i.4
  %add367 = add nsw i32 %mul366, %j.1948
  %idxprom368 = sext i32 %add367 to i64
  %102 = load %struct.lextree_t*** %ugtreeMulti, align 8, !tbaa !0
  %arrayidx370 = getelementptr inbounds %struct.lextree_t** %102, i64 %idxprom368
  %103 = load %struct.lextree_t** %arrayidx370, align 8, !tbaa !0
  %n_node = getelementptr inbounds %struct.lextree_t* %103, i64 0, i32 4
  %104 = load i32* %n_node, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([47 x i8]* @.str49, i64 0, i64 0), i32 %100, i32 %i.4, i8* %101, i32 %104) #5
  %inc372 = add nsw i32 %j.1948, 1
  %105 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp345 = icmp slt i32 %inc372, %105
  br i1 %cmp345, label %for.body347, label %for.inc374

for.inc374:                                       ; preds = %for.body347, %if.end342
  %inc375 = add nsw i32 %i.4, 1
  %106 = load i32* %n_lm289, align 4, !tbaa !4
  %cmp298 = icmp slt i32 %inc375, %106
  br i1 %cmp298, label %for.body300, label %if.end426

if.else377:                                       ; preds = %if.end283
  %tobool378 = icmp eq %struct.lm_s* %22, null
  br i1 %tobool378, label %if.end426, label %if.then379

if.then379:                                       ; preds = %if.else377
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 243, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([24 x i8]* @.str50, i64 0, i64 0)) #5
  %call380 = tail call i32 @lm_ug_wordprob(%struct.lm_s* %22, %struct.dict_t* %21, i32 -2147483648, %struct.wordprob_t* %80) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 246, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([55 x i8]* @.str51, i64 0, i64 0), i32 %call380) #5
  %cmp381 = icmp slt i32 %call380, 1
  br i1 %cmp381, label %if.then383, label %if.end384

if.then383:                                       ; preds = %if.then379
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 248, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0), i32 %call380) #5
  br label %if.end384

if.end384:                                        ; preds = %if.then383, %if.then379
  %call385 = tail call i32 @wid_wordprob2alt(%struct.dict_t* %21, %struct.wordprob_t* %80, i32 %call380) #5
  %call386 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0)) #5
  %107 = bitcast i8* %call386 to i32*
  %108 = load i32* %107, align 4, !tbaa !4
  %cmp387 = icmp eq i32 %108, 0
  %cmp391953 = icmp sgt i32 %call385, 0
  %or.cond = and i1 %cmp387, %cmp391953
  br i1 %or.cond, label %for.body393, label %if.end400

for.body393:                                      ; preds = %if.end384, %for.body393
  %indvars.iv993 = phi i64 [ %indvars.iv.next994, %for.body393 ], [ 0, %if.end384 ]
  %prob396 = getelementptr inbounds %struct.wordprob_t* %80, i64 %indvars.iv993, i32 1
  store i32 -1, i32* %prob396, align 4, !tbaa !4
  %indvars.iv.next994 = add i64 %indvars.iv993, 1
  %lftr.wideiv995 = trunc i64 %indvars.iv.next994 to i32
  %exitcond996 = icmp eq i32 %lftr.wideiv995, %call385
  br i1 %exitcond996, label %if.end400, label %for.body393

if.end400:                                        ; preds = %for.body393, %if.end384
  %109 = load i32* %n_lextree, align 4, !tbaa !4
  %conv402 = sext i32 %109 to i64
  %call403 = tail call i8* @__ckd_calloc__(i64 %conv402, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 258) #5
  %110 = bitcast i8* %call403 to %struct.lextree_t**
  %ugtree404 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  store %struct.lextree_t** %110, %struct.lextree_t*** %ugtree404, align 8, !tbaa !0
  %111 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp407951 = icmp sgt i32 %111, 0
  br i1 %cmp407951, label %for.body409, label %for.end420

for.body409:                                      ; preds = %if.end400, %for.body409
  %indvars.iv991 = phi i64 [ %indvars.iv.next992, %for.body409 ], [ 0, %if.end400 ]
  %call410 = tail call %struct.lextree_t* @lextree_build(%struct.kbcore_t* %19, %struct.wordprob_t* %80, i32 %call385, i8* %call210) #5
  %112 = load %struct.lextree_t*** %ugtree404, align 8, !tbaa !0
  %arrayidx413 = getelementptr inbounds %struct.lextree_t** %112, i64 %indvars.iv991
  store %struct.lextree_t* %call410, %struct.lextree_t** %arrayidx413, align 8, !tbaa !0
  %113 = load %struct.lextree_t*** %ugtree404, align 8, !tbaa !0
  %arrayidx416 = getelementptr inbounds %struct.lextree_t** %113, i64 %indvars.iv991
  %114 = load %struct.lextree_t** %arrayidx416, align 8, !tbaa !0
  %type417 = getelementptr inbounds %struct.lextree_t* %114, i64 0, i32 0
  store i32 0, i32* %type417, align 4, !tbaa !4
  %indvars.iv.next992 = add i64 %indvars.iv991, 1
  %115 = load i32* %n_lextree, align 4, !tbaa !4
  %116 = trunc i64 %indvars.iv.next992 to i32
  %cmp407 = icmp slt i32 %116, %115
  br i1 %cmp407, label %for.body409, label %for.end420

for.end420:                                       ; preds = %for.body409, %if.end400
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 263, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %117 = load i32* %n_lextree, align 4, !tbaa !4
  %118 = load %struct.lextree_t*** %ugtree404, align 8, !tbaa !0
  %119 = load %struct.lextree_t** %118, align 8, !tbaa !0
  %n_node424 = getelementptr inbounds %struct.lextree_t* %119, i64 0, i32 4
  %120 = load i32* %n_node424, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str53, i64 0, i64 0), i32 %117, i32 %120) #5
  br label %if.end426

if.end426:                                        ; preds = %if.then288, %for.inc374, %if.else377, %for.end420
  %filler_start = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 8
  %121 = load i32* %filler_start, align 4, !tbaa !4
  %filler_end = getelementptr inbounds %struct.dict_t* %21, i64 0, i32 9
  %122 = load i32* %filler_end, align 4, !tbaa !4
  %cmp428938 = icmp sgt i32 %121, %122
  br i1 %cmp428938, label %for.end445, label %for.body430.lr.ph

for.body430.lr.ph:                                ; preds = %if.end426
  %fillpen = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 6
  br label %for.body430

for.body430:                                      ; preds = %for.inc443, %for.body430.lr.ph
  %i.7940 = phi i32 [ %121, %for.body430.lr.ph ], [ %inc444, %for.inc443 ]
  %n.0939 = phi i32 [ 0, %for.body430.lr.ph ], [ %n.1, %for.inc443 ]
  %call431 = tail call i32 @dict_filler_word(%struct.dict_t* %21, i32 %i.7940) #5
  %tobool432 = icmp eq i32 %call431, 0
  br i1 %tobool432, label %for.inc443, label %if.then433

if.then433:                                       ; preds = %for.body430
  %idxprom434 = sext i32 %n.0939 to i64
  %wid436 = getelementptr inbounds %struct.wordprob_t* %80, i64 %idxprom434, i32 0
  store i32 %i.7940, i32* %wid436, align 4, !tbaa !4
  %123 = load %struct.fillpen_t** %fillpen, align 8, !tbaa !0
  %call437 = tail call i32 @fillpen(%struct.fillpen_t* %123, i32 %i.7940) #5
  %prob440 = getelementptr inbounds %struct.wordprob_t* %80, i64 %idxprom434, i32 1
  store i32 %call437, i32* %prob440, align 4, !tbaa !4
  %inc441 = add nsw i32 %n.0939, 1
  br label %for.inc443

for.inc443:                                       ; preds = %for.body430, %if.then433
  %n.1 = phi i32 [ %inc441, %if.then433 ], [ %n.0939, %for.body430 ]
  %inc444 = add nsw i32 %i.7940, 1
  %124 = load i32* %filler_end, align 4, !tbaa !4
  %cmp428 = icmp slt i32 %i.7940, %124
  br i1 %cmp428, label %for.body430, label %for.end445

for.end445:                                       ; preds = %for.inc443, %if.end426
  %n.0.lcssa = phi i32 [ 0, %if.end426 ], [ %n.1, %for.inc443 ]
  %125 = load i32* %n_lextree, align 4, !tbaa !4
  %conv447 = sext i32 %125 to i64
  %call448 = tail call i8* @__ckd_calloc__(i64 %conv447, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 281) #5
  %126 = bitcast i8* %call448 to %struct.lextree_t**
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  store %struct.lextree_t** %126, %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %127 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp451936 = icmp sgt i32 %127, 0
  br i1 %cmp451936, label %for.body453, label %for.end464

for.body453:                                      ; preds = %for.end445, %for.body453
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %for.body453 ], [ 0, %for.end445 ]
  %call454 = tail call %struct.lextree_t* @lextree_build(%struct.kbcore_t* %19, %struct.wordprob_t* %80, i32 %n.0.lcssa, i8* null) #5
  %128 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %arrayidx457 = getelementptr inbounds %struct.lextree_t** %128, i64 %indvars.iv985
  store %struct.lextree_t* %call454, %struct.lextree_t** %arrayidx457, align 8, !tbaa !0
  %129 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %arrayidx460 = getelementptr inbounds %struct.lextree_t** %129, i64 %indvars.iv985
  %130 = load %struct.lextree_t** %arrayidx460, align 8, !tbaa !0
  %type461 = getelementptr inbounds %struct.lextree_t* %130, i64 0, i32 0
  store i32 -1, i32* %type461, align 4, !tbaa !4
  %indvars.iv.next986 = add i64 %indvars.iv985, 1
  %131 = load i32* %n_lextree, align 4, !tbaa !4
  %132 = trunc i64 %indvars.iv.next986 to i32
  %cmp451 = icmp slt i32 %132, %131
  br i1 %cmp451, label %for.body453, label %for.end464

for.end464:                                       ; preds = %for.body453, %for.end445
  tail call void @ckd_free(i8* %call286) #5
  tail call void @ckd_free(i8* %call210) #5
  tail call void @ckd_free(i8* %call214) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 291, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %133 = load i32* %n_lextree, align 4, !tbaa !4
  %134 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %135 = load %struct.lextree_t** %134, align 8, !tbaa !0
  %n_node468 = getelementptr inbounds %struct.lextree_t* %135, i64 0, i32 4
  %136 = load i32* %n_node468, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([32 x i8]* @.str54, i64 0, i64 0), i32 %133, i32 %136) #5
  %call469 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([13 x i8]* @.str55, i64 0, i64 0)) #5
  %137 = bitcast i8* %call469 to i32*
  %138 = load i32* %137, align 4, !tbaa !4
  %tobool470 = icmp eq i32 %138, 0
  br i1 %tobool470, label %if.end500, label %if.then471

if.then471:                                       ; preds = %for.end464
  br i1 %tobool, label %if.then473, label %for.cond475.preheader

if.then473:                                       ; preds = %if.then471
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 298, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([58 x i8]* @.str56, i64 0, i64 0)) #5
  br label %for.cond475.preheader

for.cond475.preheader:                            ; preds = %if.then473, %if.then471
  %139 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp477934 = icmp sgt i32 %139, 0
  br i1 %cmp477934, label %for.body479.lr.ph, label %for.cond487.preheader.thread

for.cond487.preheader.thread:                     ; preds = %for.cond475.preheader
  %140 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  br label %for.end498

for.body479.lr.ph:                                ; preds = %for.cond475.preheader
  %ugtree482 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  br label %for.body479

for.cond487.preheader:                            ; preds = %for.body479
  %cmp489932 = icmp sgt i32 %147, 0
  %141 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  br i1 %cmp489932, label %for.body491, label %for.end498

for.body479:                                      ; preds = %for.body479.lr.ph, %for.body479
  %indvars.iv983 = phi i64 [ 0, %for.body479.lr.ph ], [ %indvars.iv.next984, %for.body479 ]
  %142 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %143 = trunc i64 %indvars.iv983 to i32
  %call480 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([11 x i8]* @.str57, i64 0, i64 0), i32 %143) #5
  %144 = load %struct.lextree_t*** %ugtree482, align 8, !tbaa !0
  %arrayidx483 = getelementptr inbounds %struct.lextree_t** %144, i64 %indvars.iv983
  %145 = load %struct.lextree_t** %arrayidx483, align 8, !tbaa !0
  %146 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @lextree_dump(%struct.lextree_t* %145, %struct.dict_t* %21, %struct._IO_FILE* %146) #5
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  %147 = load i32* %n_lextree, align 4, !tbaa !4
  %148 = trunc i64 %indvars.iv.next984 to i32
  %cmp477 = icmp slt i32 %148, %147
  br i1 %cmp477, label %for.body479, label %for.cond487.preheader

for.body491:                                      ; preds = %for.cond487.preheader, %for.body491
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %for.body491 ], [ 0, %for.cond487.preheader ]
  %149 = phi %struct._IO_FILE* [ %156, %for.body491 ], [ %141, %for.cond487.preheader ]
  %150 = trunc i64 %indvars.iv981 to i32
  %call492 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([15 x i8]* @.str58, i64 0, i64 0), i32 %150) #5
  %151 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %arrayidx495 = getelementptr inbounds %struct.lextree_t** %151, i64 %indvars.iv981
  %152 = load %struct.lextree_t** %arrayidx495, align 8, !tbaa !0
  %153 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @lextree_dump(%struct.lextree_t* %152, %struct.dict_t* %21, %struct._IO_FILE* %153) #5
  %indvars.iv.next982 = add i64 %indvars.iv981, 1
  %154 = load i32* %n_lextree, align 4, !tbaa !4
  %155 = trunc i64 %indvars.iv.next982 to i32
  %cmp489 = icmp slt i32 %155, %154
  %156 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  br i1 %cmp489, label %for.body491, label %for.end498

for.end498:                                       ; preds = %for.body491, %for.cond487.preheader.thread, %for.cond487.preheader
  %.lcssa = phi %struct._IO_FILE* [ %141, %for.cond487.preheader ], [ %140, %for.cond487.preheader.thread ], [ %156, %for.body491 ]
  %call499 = tail call i32 @fflush(%struct._IO_FILE* %.lcssa) #5
  br label %if.end500

if.end500:                                        ; preds = %for.end464, %for.end498
  %mgau = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 8
  %157 = load %struct.mgau_model_t** %mgau, align 8, !tbaa !0
  %n_mgau = getelementptr inbounds %struct.mgau_model_t* %157, i64 0, i32 0
  %158 = load i32* %n_mgau, align 4, !tbaa !4
  %159 = load %struct.dict2pid_t** %dict2pid, align 8, !tbaa !0
  %n_comstate = getelementptr inbounds %struct.dict2pid_t* %159, i64 0, i32 6
  %160 = load i32* %n_comstate, align 4, !tbaa !4
  %call502 = tail call %struct.ascr_t* @ascr_init(i32 %158, i32 %160) #5
  %ascr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 21
  store %struct.ascr_t* %call502, %struct.ascr_t** %ascr, align 8, !tbaa !0
  %call503 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str59, i64 0, i64 0)) #5
  %161 = bitcast i8* %call503 to double*
  %162 = load double* %161, align 8, !tbaa !6
  %call504 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0)) #5
  %163 = bitcast i8* %call504 to double*
  %164 = load double* %163, align 8, !tbaa !6
  %call505 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0)) #5
  %165 = bitcast i8* %call505 to double*
  %166 = load double* %165, align 8, !tbaa !6
  %call506 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0)) #5
  %167 = bitcast i8* %call506 to double*
  %168 = load double* %167, align 8, !tbaa !6
  %call507 = tail call %struct.beam_t* @beam_init(double %162, double %164, double %166, double %168) #5
  %beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 22
  store %struct.beam_t* %call507, %struct.beam_t** %beam, align 8, !tbaa !0
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 317, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %169 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %hmm = getelementptr inbounds %struct.beam_t* %169, i64 0, i32 1
  %170 = load i32* %hmm, align 4, !tbaa !4
  %ptrans = getelementptr inbounds %struct.beam_t* %169, i64 0, i32 2
  %171 = load i32* %ptrans, align 4, !tbaa !4
  %word511 = getelementptr inbounds %struct.beam_t* %169, i64 0, i32 3
  %172 = load i32* %word511, align 4, !tbaa !4
  %subvq = getelementptr inbounds %struct.beam_t* %169, i64 0, i32 0
  %173 = load i32* %subvq, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([45 x i8]* @.str63, i64 0, i64 0), i32 %170, i32 %171, i32 %172, i32 %173) #5
  %call513 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0)) #5
  %174 = bitcast i8* %call513 to i32*
  %175 = load i32* %174, align 4, !tbaa !4
  %ds_ratio = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 23
  store i32 %175, i32* %ds_ratio, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 322, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %176 = load i32* %ds_ratio, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([26 x i8]* @.str65, i64 0, i64 0), i32 %176) #5
  %rec_bstcid = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 13
  store i32 -1, i32* %rec_bstcid, align 4, !tbaa !4
  %skip_count = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 18
  store i32 0, i32* %skip_count, align 4, !tbaa !4
  %call515 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #5
  %177 = bitcast i8* %call515 to i32*
  %178 = load i32* %177, align 4, !tbaa !4
  %cond_ds = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 24
  store i32 %178, i32* %cond_ds, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 328, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %179 = load i32* %cond_ds, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([42 x i8]* @.str67, i64 0, i64 0), i32 %179) #5
  %180 = load i32* %cond_ds, align 4, !tbaa !4
  %cmp518 = icmp sgt i32 %180, 0
  br i1 %cmp518, label %land.lhs.true, label %if.end524

land.lhs.true:                                    ; preds = %if.end500
  %181 = load %struct.kbcore_t** %kbcore1, align 8, !tbaa !0
  %gs = getelementptr inbounds %struct.kbcore_t* %181, i64 0, i32 10
  %182 = load %struct.gs_s** %gs, align 8, !tbaa !0
  %cmp521 = icmp eq %struct.gs_s* %182, null
  br i1 %cmp521, label %if.then523, label %if.end524

if.then523:                                       ; preds = %land.lhs.true
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 330, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([69 x i8]* @.str68, i64 0, i64 0)) #5
  br label %if.end524

if.end524:                                        ; preds = %if.then523, %land.lhs.true, %if.end500
  %call525 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str69, i64 0, i64 0)) #5
  %183 = bitcast i8* %call525 to i32*
  %184 = load i32* %183, align 4, !tbaa !4
  %gs4gs = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 25
  store i32 %184, i32* %gs4gs, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 333, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %185 = load i32* %gs4gs, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([51 x i8]* @.str70, i64 0, i64 0), i32 %185) #5
  %call527 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str71, i64 0, i64 0)) #5
  %186 = bitcast i8* %call527 to i32*
  %187 = load i32* %186, align 4, !tbaa !4
  %svq4svq = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 26
  store i32 %187, i32* %svq4svq, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 336, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %188 = load i32* %svq4svq, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str72, i64 0, i64 0), i32 %188) #5
  %call529 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str73, i64 0, i64 0)) #5
  %189 = bitcast i8* %call529 to float*
  %190 = load float* %189, align 4, !tbaa !3
  %conv530 = fpext float %190 to double
  %call531 = tail call i32 @logs3(double %conv530) #5
  %mul532 = sub i32 0, %call531
  %ci_pbeam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 27
  store i32 %mul532, i32* %ci_pbeam, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 339, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %191 = load i32* %ci_pbeam, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([85 x i8]* @.str74, i64 0, i64 0), i32 %191) #5
  %192 = load i32* %ci_pbeam, align 4, !tbaa !4
  %cmp535 = icmp sgt i32 %192, 10000000
  br i1 %cmp535, label %if.then537, label %if.end538

if.then537:                                       ; preds = %if.end524
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 341, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([63 x i8]* @.str75, i64 0, i64 0)) #5
  br label %if.end538

if.end538:                                        ; preds = %if.then537, %if.end524
  %call539 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str76, i64 0, i64 0)) #5
  %193 = bitcast i8* %call539 to float*
  %194 = load float* %193, align 4, !tbaa !3
  %conv540 = fpext float %194 to double
  %call541 = tail call i32 @logs3(double %conv540) #5
  %mul542 = sub i32 0, %call541
  %wend_beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 32
  store i32 %mul542, i32* %wend_beam, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 345, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %195 = load i32* %wend_beam, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([27 x i8]* @.str77, i64 0, i64 0), i32 %195) #5
  %call544 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str78, i64 0, i64 0)) #5
  %196 = bitcast i8* %call544 to i32*
  %197 = load i32* %196, align 4, !tbaa !4
  %pl_window = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 28
  store i32 %197, i32* %pl_window, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 348, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %198 = load i32* %pl_window, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([37 x i8]* @.str79, i64 0, i64 0), i32 %198) #5
  %pl_window_start = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 29
  store i32 0, i32* %pl_window_start, align 4, !tbaa !4
  %call546 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str80, i64 0, i64 0)) #5
  %199 = bitcast i8* %call546 to float*
  %200 = load float* %199, align 4, !tbaa !3
  %conv547 = fpext float %200 to double
  %call548 = tail call i32 @logs3(double %conv547) #5
  %pl_beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 31
  store i32 %call548, i32* %pl_beam, align 4, !tbaa !4
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 353, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %201 = load i32* %pl_beam, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([30 x i8]* @.str81, i64 0, i64 0), i32 %201) #5
  %cd2cisen = getelementptr inbounds %struct.mdef_t* %20, i64 0, i32 11
  %202 = load i16** %cd2cisen, align 8, !tbaa !0
  br label %for.cond550

for.cond550:                                      ; preds = %for.cond550, %if.end538
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond550 ], [ 0, %if.end538 ]
  %cisencnt.0 = phi i32 [ %inc558, %for.cond550 ], [ 0, %if.end538 ]
  %arrayidx552 = getelementptr inbounds i16* %202, i64 %indvars.iv
  %203 = load i16* %arrayidx552, align 2, !tbaa !5
  %conv553 = sext i16 %203 to i32
  %204 = trunc i64 %indvars.iv to i32
  %cmp554 = icmp eq i32 %204, %conv553
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc558 = add nsw i32 %cisencnt.0, 1
  br i1 %cmp554, label %for.cond550, label %for.end559

for.end559:                                       ; preds = %for.cond550
  %205 = load i32* %pl_window, align 4, !tbaa !4
  %call561 = tail call i8** @__ckd_calloc_2d__(i32 %205, i32 %cisencnt.0, i32 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 358) #5
  %206 = bitcast i8** %call561 to i32**
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  store i32** %206, i32*** %cache_ci_senscr, align 8, !tbaa !0
  %207 = load i32* %pl_window, align 4, !tbaa !4
  %conv563 = sext i32 %207 to i64
  %call564 = tail call i8* @__ckd_calloc__(i64 %conv563, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 359) #5
  %208 = bitcast i8* %call564 to i32*
  %cache_best_list = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 16
  store i32* %208, i32** %cache_best_list, align 8, !tbaa !0
  %209 = load i32* %n_ciphone, align 4, !tbaa !4
  %conv566 = sext i32 %209 to i64
  %call567 = tail call i8* @__ckd_calloc__(i64 %conv566, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 360) #5
  %210 = bitcast i8* %call567 to i32*
  %phn_heur_list = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  store i32* %210, i32** %phn_heur_list, align 8, !tbaa !0
  %fcb = getelementptr inbounds %struct.kbcore_t* %19, i64 0, i32 0
  %211 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %call568 = tail call float*** @feat_array_alloc(%struct.feat_s* %211, i32 15000) #5
  %feat = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 7
  store float*** %call568, float**** %feat, align 8, !tbaa !0
  %cmp569 = icmp eq float*** %call568, null
  br i1 %cmp569, label %if.then571, label %if.end572

if.then571:                                       ; preds = %for.end559
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 364, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str82, i64 0, i64 0)) #5
  br label %if.end572

if.end572:                                        ; preds = %if.then571, %for.end559
  %212 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %word574 = getelementptr inbounds %struct.beam_t* %212, i64 0, i32 3
  %213 = load i32* %word574, align 4, !tbaa !4
  %call575 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str83, i64 0, i64 0)) #5
  %214 = bitcast i8* %call575 to i32*
  %215 = load i32* %214, align 4, !tbaa !4
  %call576 = tail call %struct.vithist_t* @vithist_init(%struct.kbcore_t* %19, i32 %213, i32 %215) #5
  %vithist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 6
  store %struct.vithist_t* %call576, %struct.vithist_t** %vithist, align 8, !tbaa !0
  %tm_sen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 40
  tail call void @ptmr_init(%struct.ptmr_t* %tm_sen) #5
  %tm_srch = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 41
  tail call void @ptmr_init(%struct.ptmr_t* %tm_srch) #5
  %tm_ovrhd = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 42
  tail call void @ptmr_init(%struct.ptmr_t* %tm_ovrhd) #5
  %tot_fr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 43
  store i32 0, i32* %tot_fr, align 4, !tbaa !4
  %tot_sen_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 44
  %216 = bitcast double* %tot_sen_eval to i8*
  call void @llvm.memset.p0i8.i64(i8* %216, i8 0, i64 32, i32 8, i1 false)
  %call577 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([16 x i8]* @.str84, i64 0, i64 0)) #5
  %217 = bitcast i8* %call577 to i32*
  %218 = load i32* %217, align 4, !tbaa !4
  %hmm_hist_binsize = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 39
  store i32 %218, i32* %hmm_hist_binsize, align 4, !tbaa !4
  br i1 %tobool, label %if.then579, label %if.else589

if.then579:                                       ; preds = %if.end572
  %ugtreeMulti580 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 3
  %219 = load %struct.lextree_t*** %ugtreeMulti580, align 8, !tbaa !0
  %220 = load %struct.lextree_t** %219, align 8, !tbaa !0
  %n_node582 = getelementptr inbounds %struct.lextree_t* %220, i64 0, i32 4
  %221 = load i32* %n_node582, align 4, !tbaa !4
  %222 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %223 = load %struct.lextree_t** %222, align 8, !tbaa !0
  %n_node585 = getelementptr inbounds %struct.lextree_t* %223, i64 0, i32 4
  %224 = load i32* %n_node585, align 4, !tbaa !4
  %add586 = add nsw i32 %224, %221
  %225 = load i32* %n_lextree, align 4, !tbaa !4
  %mul588 = mul nsw i32 %add586, %225
  br label %if.end599

if.else589:                                       ; preds = %if.end572
  %ugtree590 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  %226 = load %struct.lextree_t*** %ugtree590, align 8, !tbaa !0
  %227 = load %struct.lextree_t** %226, align 8, !tbaa !0
  %n_node592 = getelementptr inbounds %struct.lextree_t* %227, i64 0, i32 4
  %228 = load i32* %n_node592, align 4, !tbaa !4
  %229 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %230 = load %struct.lextree_t** %229, align 8, !tbaa !0
  %n_node595 = getelementptr inbounds %struct.lextree_t* %230, i64 0, i32 4
  %231 = load i32* %n_node595, align 4, !tbaa !4
  %add596 = add nsw i32 %231, %228
  %232 = load i32* %n_lextree, align 4, !tbaa !4
  %mul598 = mul nsw i32 %add596, %232
  br label %if.end599

if.end599:                                        ; preds = %if.else589, %if.then579
  %n.2 = phi i32 [ %mul588, %if.then579 ], [ %mul598, %if.else589 ]
  %div = sdiv i32 %n.2, %218
  %add601 = add nsw i32 %div, 1
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 38
  store i32 %add601, i32* %hmm_hist_bins, align 4, !tbaa !4
  %conv603 = sext i32 %add601 to i64
  %call604 = tail call i8* @__ckd_calloc__(i64 %conv603, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 386) #5
  %233 = bitcast i8* %call604 to i32*
  %hmm_hist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 37
  store i32* %233, i32** %hmm_hist, align 8, !tbaa !0
  %call605 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str85, i64 0, i64 0)) #5
  %matchsegfp = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 49
  store %struct._IO_FILE* null, %struct._IO_FILE** %matchsegfp, align 8, !tbaa !0
  %tobool606 = icmp eq i8* %call605, null
  br i1 %tobool606, label %if.end614, label %if.then607

if.then607:                                       ; preds = %if.end599
  %call608 = tail call %struct._IO_FILE* @fopen(i8* %call605, i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call608, %struct._IO_FILE** %matchsegfp, align 8, !tbaa !0
  %cmp610 = icmp eq %struct._IO_FILE* %call608, null
  br i1 %cmp610, label %if.then612, label %if.end614

if.then612:                                       ; preds = %if.then607
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 397, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([50 x i8]* @.str87, i64 0, i64 0), i8* %call605) #5
  br label %if.end614

if.end614:                                        ; preds = %if.end599, %if.then607, %if.then612
  %call615 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str88, i64 0, i64 0)) #5
  %matchfp = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 48
  store %struct._IO_FILE* null, %struct._IO_FILE** %matchfp, align 8, !tbaa !0
  %tobool616 = icmp eq i8* %call615, null
  br i1 %tobool616, label %if.end624, label %if.then617

if.then617:                                       ; preds = %if.end614
  %call618 = tail call %struct._IO_FILE* @fopen(i8* %call615, i8* getelementptr inbounds ([2 x i8]* @.str86, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call618, %struct._IO_FILE** %matchfp, align 8, !tbaa !0
  %cmp620 = icmp eq %struct._IO_FILE* %call618, null
  br i1 %cmp620, label %if.then622, label %if.end624

if.then622:                                       ; preds = %if.then617
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 408, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([50 x i8]* @.str87, i64 0, i64 0), i8* %call615) #5
  br label %if.end624

if.end624:                                        ; preds = %if.end614, %if.then617, %if.then622
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: optsize
declare %struct.kbcore_t* @kbcore_init(double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, double, double, double, double, double, i8*, i8*, double, i8*, double, i8*, i8*, i8*, double) #2

; Function Attrs: optsize
declare i8* @cmd_ln_access(i8*) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: optsize
declare i32 @tmat_chk_1skip(%struct.tmat_t*) #2

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #2

; Function Attrs: optsize
declare i32 @lm_ug_wordprob(%struct.lm_s*, %struct.dict_t*, i32, %struct.wordprob_t*) #2

; Function Attrs: optsize
declare i32 @wid_wordprob2alt(%struct.dict_t*, %struct.wordprob_t*, i32) #2

; Function Attrs: optsize
declare %struct.lextree_t* @lextree_build(%struct.kbcore_t*, %struct.wordprob_t*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @dict_filler_word(%struct.dict_t*, i32) #2

; Function Attrs: optsize
declare i32 @fillpen(%struct.fillpen_t*, i32) #2

; Function Attrs: optsize
declare void @ckd_free(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @lextree_dump(%struct.lextree_t*, %struct.dict_t*, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare %struct.ascr_t* @ascr_init(i32, i32) #2

; Function Attrs: optsize
declare %struct.beam_t* @beam_init(double, double, double, double) #2

; Function Attrs: optsize
declare i32 @logs3(double) #2

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare float*** @feat_array_alloc(%struct.feat_s*, i32) #2

; Function Attrs: optsize
declare %struct.vithist_t* @vithist_init(%struct.kbcore_t*, i32, i32) #2

; Function Attrs: optsize
declare void @ptmr_init(%struct.ptmr_t*) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @kb_setlm(i8* %lmname, %struct.kb_t* nocapture %kb) #0 {
entry:
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %0 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %lmset = getelementptr inbounds %struct.kbcore_t* %0, i64 0, i32 5
  %1 = load %struct.lmset_s** %lmset, align 8, !tbaa !0
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 424, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([17 x i8]* @.str89, i64 0, i64 0)) #5
  %lm = getelementptr inbounds %struct.kbcore_t* %0, i64 0, i32 4
  store %struct.lm_s* null, %struct.lm_s** %lm, align 8, !tbaa !0
  %n_lextree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 1
  %2 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp154 = icmp sgt i32 %2, 0
  br i1 %cmp154, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ugtree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv166 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next167, %for.body ]
  %3 = load %struct.lextree_t*** %ugtree, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.lextree_t** %3, i64 %indvars.iv166
  store %struct.lextree_t* null, %struct.lextree_t** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next167 = add i64 %indvars.iv166, 1
  %4 = trunc i64 %indvars.iv.next167 to i32
  %cmp = icmp slt i32 %4, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 430, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([17 x i8]* @.str89, i64 0, i64 0)) #5
  %cmp1 = icmp eq %struct.lmset_s* %1, null
  br i1 %cmp1, label %lor.lhs.false, label %for.cond2.preheader

lor.lhs.false:                                    ; preds = %for.end
  %call = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str10, i64 0, i64 0)) #5
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.end50, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %lor.lhs.false, %for.end
  %n_lm = getelementptr inbounds %struct.kbcore_t* %0, i64 0, i32 12
  %5 = load i32* %n_lm, align 4, !tbaa !4
  %cmp3149 = icmp sgt i32 %5, 0
  br i1 %cmp3149, label %for.body4, label %for.end29thread-pre-split

for.cond2:                                        ; preds = %for.body4
  %6 = trunc i64 %indvars.iv.next165 to i32
  %cmp3 = icmp slt i32 %6, %5
  br i1 %cmp3, label %for.body4, label %for.end29thread-pre-split

for.body4:                                        ; preds = %for.cond2.preheader, %for.cond2
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.cond2 ], [ 0, %for.cond2.preheader ]
  %i.0150 = phi i32 [ %inc28, %for.cond2 ], [ 0, %for.cond2.preheader ]
  %name = getelementptr inbounds %struct.lmset_s* %1, i64 %indvars.iv164, i32 0
  %7 = load i8** %name, align 8, !tbaa !0
  %call7 = tail call i32 @strcmp(i8* %lmname, i8* %7) #6
  %tobool8 = icmp eq i32 %call7, 0
  %indvars.iv.next165 = add i64 %indvars.iv164, 1
  %inc28 = add nsw i32 %i.0150, 1
  br i1 %tobool8, label %if.then9, label %for.cond2

if.then9:                                         ; preds = %for.body4
  %lm12 = getelementptr inbounds %struct.lmset_s* %1, i64 %indvars.iv164, i32 1
  %8 = load %struct.lm_s** %lm12, align 8, !tbaa !0
  store %struct.lm_s* %8, %struct.lm_s** %lm, align 8, !tbaa !0
  %9 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp16144 = icmp sgt i32 %9, 0
  br i1 %cmp16144, label %for.body17.lr.ph, label %for.end29

for.body17.lr.ph:                                 ; preds = %if.then9
  %ugtreeMulti = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 3
  %ugtree22 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv159 = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next160, %for.body17 ]
  %mul = mul nsw i32 %9, %i.0150
  %10 = trunc i64 %indvars.iv159 to i32
  %add = add nsw i32 %mul, %10
  %idxprom19 = sext i32 %add to i64
  %11 = load %struct.lextree_t*** %ugtreeMulti, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds %struct.lextree_t** %11, i64 %idxprom19
  %12 = load %struct.lextree_t** %arrayidx20, align 8, !tbaa !0
  %13 = load %struct.lextree_t*** %ugtree22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %struct.lextree_t** %13, i64 %indvars.iv159
  store %struct.lextree_t* %12, %struct.lextree_t** %arrayidx23, align 8, !tbaa !0
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %14 = trunc i64 %indvars.iv.next160 to i32
  %cmp16 = icmp slt i32 %14, %9
  br i1 %cmp16, label %for.body17, label %for.end29thread-pre-split

for.end29thread-pre-split:                        ; preds = %for.body17, %for.cond2, %for.cond2.preheader
  %i.0148.ph = phi i32 [ 0, %for.cond2.preheader ], [ %inc28, %for.cond2 ], [ %i.0150, %for.body17 ]
  %.pr = load %struct.lm_s** %lm, align 8, !tbaa !0
  br label %for.end29

for.end29:                                        ; preds = %for.end29thread-pre-split, %if.then9
  %15 = phi %struct.lm_s* [ %.pr, %for.end29thread-pre-split ], [ %8, %if.then9 ]
  %i.0148 = phi i32 [ %i.0148.ph, %for.end29thread-pre-split ], [ %i.0150, %if.then9 ]
  %cmp31 = icmp eq %struct.lm_s* %15, null
  br i1 %cmp31, label %if.then32, label %if.end50

if.then32:                                        ; preds = %for.end29
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 445, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([60 x i8]* @.str90, i64 0, i64 0), i8* %lmname) #5
  %lm34 = getelementptr inbounds %struct.lmset_s* %1, i64 0, i32 1
  %16 = load %struct.lm_s** %lm34, align 8, !tbaa !0
  store %struct.lm_s* %16, %struct.lm_s** %lm, align 8, !tbaa !0
  %17 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp38142 = icmp sgt i32 %17, 0
  br i1 %cmp38142, label %for.body39.lr.ph, label %if.end50

for.body39.lr.ph:                                 ; preds = %if.then32
  %ugtreeMulti41 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 3
  %ugtree44 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.body39
  %indvars.iv157 = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next158, %for.body39 ]
  %18 = load %struct.lextree_t*** %ugtreeMulti41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds %struct.lextree_t** %18, i64 %indvars.iv157
  %19 = load %struct.lextree_t** %arrayidx42, align 8, !tbaa !0
  %20 = load %struct.lextree_t*** %ugtree44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds %struct.lextree_t** %20, i64 %indvars.iv157
  store %struct.lextree_t* %19, %struct.lextree_t** %arrayidx45, align 8, !tbaa !0
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %21 = trunc i64 %indvars.iv.next158 to i32
  %cmp38 = icmp slt i32 %21, %17
  br i1 %cmp38, label %for.body39, label %if.end50

if.end50:                                         ; preds = %if.then32, %for.body39, %lor.lhs.false, %for.end29
  %i.1 = phi i32 [ %i.0148, %for.end29 ], [ undef, %lor.lhs.false ], [ %i.0148, %for.body39 ], [ %i.0148, %if.then32 ]
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 453, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %idxprom51 = sext i32 %i.1 to i64
  %name53 = getelementptr inbounds %struct.lmset_s* %1, i64 %idxprom51, i32 0
  %22 = load i8** %name53, align 8, !tbaa !0
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([21 x i8]* @.str91, i64 0, i64 0), i8* %22) #5
  %ugtree54 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  %23 = load %struct.lextree_t*** %ugtree54, align 8, !tbaa !0
  %24 = load %struct.lextree_t** %23, align 8, !tbaa !0
  %n_node = getelementptr inbounds %struct.lextree_t* %24, i64 0, i32 4
  %25 = load i32* %n_node, align 4, !tbaa !4
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  %26 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %27 = load %struct.lextree_t** %26, align 8, !tbaa !0
  %n_node57 = getelementptr inbounds %struct.lextree_t* %27, i64 0, i32 4
  %28 = load i32* %n_node57, align 4, !tbaa !4
  %add58 = add nsw i32 %28, %25
  %29 = load i32* %n_lextree, align 4, !tbaa !4
  %mul60 = mul nsw i32 %add58, %29
  %hmm_hist_binsize = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 39
  %30 = load i32* %hmm_hist_binsize, align 4, !tbaa !4
  %div = sdiv i32 %mul60, %30
  %add61 = add nsw i32 %div, 1
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 38
  store i32 %add61, i32* %hmm_hist_bins, align 4, !tbaa !4
  %hmm_hist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 37
  %31 = load i32** %hmm_hist, align 8, !tbaa !0
  %32 = bitcast i32* %31 to i8*
  %conv = sext i32 %add61 to i64
  %mul63 = shl nsw i64 %conv, 2
  %call64 = tail call i8* @__ckd_realloc__(i8* %32, i64 %mul63, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i32 466) #5
  %33 = bitcast i8* %call64 to i32*
  store i32* %33, i32** %hmm_hist, align 8, !tbaa !0
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 468, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %34 = load i8** %name53, align 8, !tbaa !0
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([20 x i8]* @.str92, i64 0, i64 0), i8* %34) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 469, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %35 = load %struct.lm_s** %lm, align 8, !tbaa !0
  %n_ug = getelementptr inbounds %struct.lm_s* %35, i64 0, i32 0
  %36 = load i32* %n_ug, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([15 x i8]* @.str93, i64 0, i64 0), i32 %36) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 470, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %37 = load %struct.lm_s** %lm, align 8, !tbaa !0
  %n_bg = getelementptr inbounds %struct.lm_s* %37, i64 0, i32 1
  %38 = load i32* %n_bg, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([15 x i8]* @.str94, i64 0, i64 0), i32 %38) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 471, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %39 = load %struct.lm_s** %lm, align 8, !tbaa !0
  %n_tg = getelementptr inbounds %struct.lm_s* %39, i64 0, i32 2
  %40 = load i32* %n_tg, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([15 x i8]* @.str95, i64 0, i64 0), i32 %40) #5
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 472, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([25 x i8]* @.str96, i64 0, i64 0), i32 %add61) #5
  %41 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp75140 = icmp sgt i32 %41, 0
  br i1 %cmp75140, label %for.body77, label %for.end85

for.body77:                                       ; preds = %if.end50, %for.body77
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body77 ], [ 0, %if.end50 ]
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), i64 475, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #5
  %42 = load i32* %n_lextree, align 4, !tbaa !4
  %43 = load %struct.lextree_t*** %ugtree54, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds %struct.lextree_t** %43, i64 %indvars.iv
  %44 = load %struct.lextree_t** %arrayidx81, align 8, !tbaa !0
  %n_node82 = getelementptr inbounds %struct.lextree_t* %44, i64 0, i32 4
  %45 = load i32* %n_node82, align 4, !tbaa !4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str53, i64 0, i64 0), i32 %42, i32 %45) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %46 = load i32* %n_lextree, align 4, !tbaa !4
  %47 = trunc i64 %indvars.iv.next to i32
  %cmp75 = icmp slt i32 %47, %46
  br i1 %cmp75, label %for.body77, label %for.end85

for.end85:                                        ; preds = %for.body77, %if.end50
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @__ckd_realloc__(i8*, i64, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @kb_lextree_active_swap(%struct.kb_t* nocapture %kb) #0 {
entry:
  %n_lextree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 1
  %0 = load i32* %n_lextree, align 4, !tbaa !4
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ugtree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load %struct.lextree_t*** %ugtree, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.lextree_t** %1, i64 %indvars.iv
  %2 = load %struct.lextree_t** %arrayidx, align 8, !tbaa !0
  tail call void @lextree_active_swap(%struct.lextree_t* %2) #5
  %3 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds %struct.lextree_t** %3, i64 %indvars.iv
  %4 = load %struct.lextree_t** %arrayidx2, align 8, !tbaa !0
  tail call void @lextree_active_swap(%struct.lextree_t* %4) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %n_lextree, align 4, !tbaa !4
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: optsize
declare void @lextree_active_swap(%struct.lextree_t*) #2

; Function Attrs: nounwind optsize uwtable
define void @kb_freehyps(%struct.kb_t* nocapture %kb) #0 {
entry:
  %hyp_segs = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 50
  %0 = load %struct.hyp_t*** %hyp_segs, align 8, !tbaa !0
  %tobool = icmp eq %struct.hyp_t** %0, null
  br i1 %tobool, label %if.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %hyp_seglen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 51
  %1 = load i32* %hyp_seglen, align 4, !tbaa !4
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %2 = phi %struct.hyp_t** [ %0, %for.cond.preheader ], [ %.pre28, %for.inc ]
  %3 = phi i32 [ %1, %for.cond.preheader ], [ %6, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.hyp_t** %2, i64 %indvars.iv
  %4 = load %struct.hyp_t** %arrayidx, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.hyp_t* %4, null
  br i1 %tobool2, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  %5 = bitcast %struct.hyp_t* %4 to i8*
  tail call void @ckd_free(i8* %5) #5
  %.pre27 = load i32* %hyp_seglen, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %6 = phi i32 [ %3, %for.body ], [ %.pre27, %if.then3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %7, %6
  %.pre28 = load %struct.hyp_t*** %hyp_segs, align 8, !tbaa !0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %8 = phi %struct.hyp_t** [ %0, %for.cond.preheader ], [ %.pre28, %for.inc ]
  %9 = bitcast %struct.hyp_t** %8 to i8*
  tail call void @ckd_free(i8* %9) #5
  store i32 0, i32* %hyp_seglen, align 4, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %entry, %for.end
  %hyp_str = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 52
  %10 = load i8** %hyp_str, align 8, !tbaa !0
  %tobool10 = icmp eq i8* %10, null
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @ckd_free(i8* %10) #5
  %hyp_strlen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 53
  store i32 0, i32* %hyp_strlen, align 4, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @kb_free(%struct.kb_t* nocapture %kb) #0 {
entry:
  %vithist1 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 6
  %0 = load %struct.vithist_t** %vithist1, align 8, !tbaa !0
  %sen_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 11
  %1 = load i32** %sen_active, align 8, !tbaa !0
  %tobool = icmp eq i32* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to i8*
  tail call void @ckd_free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ssid_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 9
  %3 = load i32** %ssid_active, align 8, !tbaa !0
  %tobool3 = icmp eq i32* %3, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = bitcast i32* %3 to i8*
  tail call void @ckd_free(i8* %4) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then4
  %comssid_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 10
  %5 = load i32** %comssid_active, align 8, !tbaa !0
  %tobool7 = icmp eq i32* %5, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %6 = bitcast i32* %5 to i8*
  tail call void @ckd_free(i8* %6) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %if.then8
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  %7 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.lextree_t** %7, null
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %8 = bitcast %struct.lextree_t** %7 to i8*
  tail call void @ckd_free(i8* %8) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.then12
  %hmm_hist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 37
  %9 = load i32** %hmm_hist, align 8, !tbaa !0
  %tobool15 = icmp eq i32* %9, null
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  %10 = bitcast i32* %9 to i8*
  tail call void @ckd_free(i8* %10) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.then16
  %tobool19 = icmp eq %struct.vithist_t* %0, null
  br i1 %tobool19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end18
  %entry21 = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 0
  %11 = load %struct.vithist_entry_t*** %entry21, align 8, !tbaa !0
  %12 = bitcast %struct.vithist_entry_t** %11 to i8*
  tail call void @ckd_free(i8* %12) #5
  %frame_start = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 1
  %13 = load i32** %frame_start, align 8, !tbaa !0
  %14 = bitcast i32* %13 to i8*
  tail call void @ckd_free(i8* %14) #5
  %bestscore = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 6
  %15 = load i32** %bestscore, align 8, !tbaa !0
  %16 = bitcast i32* %15 to i8*
  tail call void @ckd_free(i8* %16) #5
  %bestvh = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 7
  %17 = load i32** %bestvh, align 8, !tbaa !0
  %18 = bitcast i32* %17 to i8*
  tail call void @ckd_free(i8* %18) #5
  %lms2vh_root = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 8
  %19 = load %struct.vh_lms2vh_t*** %lms2vh_root, align 8, !tbaa !0
  %20 = bitcast %struct.vh_lms2vh_t** %19 to i8*
  tail call void @ckd_free(i8* %20) #5
  %21 = load %struct.vithist_t** %vithist1, align 8, !tbaa !0
  %22 = bitcast %struct.vithist_t* %21 to i8*
  tail call void @ckd_free(i8* %22) #5
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.then20
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %23 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  tail call void @kbcore_free(%struct.kbcore_t* %23) #5
  %feat = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 7
  %24 = load float**** %feat, align 8, !tbaa !0
  %tobool24 = icmp eq float*** %24, null
  br i1 %tobool24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end23
  %25 = load float*** %24, align 8, !tbaa !0
  %26 = load float** %25, align 8, !tbaa !0
  %27 = bitcast float* %26 to i8*
  tail call void @ckd_free(i8* %27) #5
  %28 = load float**** %feat, align 8, !tbaa !0
  %29 = bitcast float*** %28 to i8**
  tail call void @ckd_free_2d(i8** %29) #5
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.then25
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  %30 = load i32*** %cache_ci_senscr, align 8, !tbaa !0
  %tobool30 = icmp eq i32** %30, null
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end29
  %31 = bitcast i32** %30 to i8**
  tail call void @ckd_free_2d(i8** %31) #5
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %if.then31
  %cache_best_list = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 16
  %32 = load i32** %cache_best_list, align 8, !tbaa !0
  %tobool34 = icmp eq i32* %32, null
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  %33 = bitcast i32* %32 to i8*
  tail call void @ckd_free(i8* %33) #5
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.then35
  %phn_heur_list = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  %34 = load i32** %phn_heur_list, align 8, !tbaa !0
  %tobool38 = icmp eq i32* %34, null
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %35 = bitcast i32* %34 to i8*
  tail call void @ckd_free(i8* %35) #5
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.then39
  %matchsegfp = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 49
  %36 = load %struct._IO_FILE** %matchsegfp, align 8, !tbaa !0
  %tobool42 = icmp eq %struct._IO_FILE* %36, null
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  %call = tail call i32 @fclose(%struct._IO_FILE* %36) #5
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.then43
  %matchfp = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 48
  %37 = load %struct._IO_FILE** %matchfp, align 8, !tbaa !0
  %tobool46 = icmp eq %struct._IO_FILE* %37, null
  br i1 %tobool46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end45
  %call49 = tail call i32 @fclose(%struct._IO_FILE* %37) #5
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %if.then47
  tail call void @kb_freehyps(%struct.kb_t* %kb) #7
  ret void
}

; Function Attrs: optsize
declare void @kbcore_free(%struct.kbcore_t*) #2

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
