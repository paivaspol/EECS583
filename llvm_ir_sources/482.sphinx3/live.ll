; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/live.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.partialhyp_t = type { i32, i32, i8*, i32, i32 }
%struct.fe_t = type { float, i32, i32, float, i32, i32, i32, i32, float, i16*, i32, %struct.melfb_t*, i32, i16, double* }
%struct.melfb_t = type { float, i32, i32, i32, float, float, float**, float**, float*, i32*, i32 }
%struct.param_t = type { float, i32, float, i32, i32, i32, i32, float, float, float, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@live_initialize_decoder.live_kb = internal global %struct.kb_t zeroinitializer, align 8
@kb = common global %struct.kb_t* null, align 8
@kbcore = internal unnamed_addr global %struct.kbcore_t* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/live.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"-hmmdump\00", align 1
@stderr = external global %struct._IO_FILE*
@hmmdumpfp = internal unnamed_addr global %struct._IO_FILE* null, align 8
@.str2 = private unnamed_addr constant [8 x i8] c"-maxwpf\00", align 1
@maxwpf = internal unnamed_addr global i32 0, align 4
@.str3 = private unnamed_addr constant [11 x i8] c"-maxhistpf\00", align 1
@maxhistpf = internal unnamed_addr global i32 0, align 4
@.str4 = private unnamed_addr constant [10 x i8] c"-maxhmmpf\00", align 1
@maxhmmpf = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [11 x i8] c"-ptranskip\00", align 1
@ptranskip = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [11 x i8] c"-maxhyplen\00", align 1
@parthyp = internal unnamed_addr global %struct.partialhyp_t* null, align 8
@.str7 = private unnamed_addr constant [10 x i8] c"-samprate\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str9 = private unnamed_addr constant [55 x i8] c"Sampling rate %s not supported. Must be 8000 or 16000\0A\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"-lowerf\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"-upperf\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"-nfilt\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"-frate\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"-nfft\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"-wlen\00", align 1
@fe = internal unnamed_addr global %struct.fe_t* null, align 8
@.str17 = private unnamed_addr constant [43 x i8] c"Front end initialization fe_init() failed\0A\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"-maxcepvecs\00", align 1
@dummyframe = internal unnamed_addr global float* null, align 8
@live_utt_decode_block.live_begin_new_utt = internal unnamed_addr global i1 false
@live_utt_decode_block.frmno = internal global i32 0, align 4
@live_utt_decode_block.live_feat = internal unnamed_addr global float*** null, align 8
@.str19 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str20 = private unnamed_addr constant [98 x i8] c"SUMMARY:  %d fr;  %d sen, %d gau/fr, %.2f xCPU [%.2f xOvrhd];  %d hmm/fr, %d wd/fr, %.2f xCPU;  \0A\00", align 1
@confp_open = external global i32
@confp = external global %struct._IO_FILE*
@.str21 = private unnamed_addr constant [21 x i8] c"total_considered.out\00", align 1
@.str22 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"fopen considered_total.out failed\0A\00", align 1
@.str24 = private unnamed_addr constant [29 x i8] c"%22d grand total considered\0A\00", align 1
@tot_considered = external global i64

; Function Attrs: nounwind optsize uwtable
define void @live_initialize_decoder(i8* %live_args) #0 {
entry:
  tail call void @parse_args_file(i8* %live_args) #3
  tail call void @unlimit() #3
  tail call void @kb_init(%struct.kb_t* @live_initialize_decoder.live_kb) #3
  store %struct.kb_t* @live_initialize_decoder.live_kb, %struct.kb_t** @kb, align 8, !tbaa !0
  %0 = load %struct.kbcore_t** getelementptr inbounds (%struct.kb_t* @live_initialize_decoder.live_kb, i64 0, i32 0), align 8, !tbaa !0
  store %struct.kbcore_t* %0, %struct.kbcore_t** @kbcore, align 8, !tbaa !0
  %call = tail call i8* @__ckd_calloc__(i64 1000, i64 1, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 93) #3
  %1 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %uttid = getelementptr inbounds %struct.kb_t* %1, i64 0, i32 33
  store i8* %call, i8** %uttid, align 8, !tbaa !0
  %call1 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #3
  %2 = bitcast i8* %call1 to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  %tobool = icmp ne i32 %3, 0
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %cond = select i1 %tobool, %struct._IO_FILE* %4, %struct._IO_FILE* null
  store %struct._IO_FILE* %cond, %struct._IO_FILE** @hmmdumpfp, align 8, !tbaa !0
  %call2 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #3
  %5 = bitcast i8* %call2 to i32*
  %6 = load i32* %5, align 4, !tbaa !3
  store i32 %6, i32* @maxwpf, align 4, !tbaa !3
  %call3 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) #3
  %7 = bitcast i8* %call3 to i32*
  %8 = load i32* %7, align 4, !tbaa !3
  store i32 %8, i32* @maxhistpf, align 4, !tbaa !3
  %call4 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #3
  %9 = bitcast i8* %call4 to i32*
  %10 = load i32* %9, align 4, !tbaa !3
  store i32 %10, i32* @maxhmmpf, align 4, !tbaa !3
  %call5 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0)) #3
  %11 = bitcast i8* %call5 to i32*
  %12 = load i32* %11, align 4, !tbaa !3
  store i32 %12, i32* @ptranskip, align 4, !tbaa !3
  %call6 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0)) #3
  %13 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %tobool7 = icmp eq %struct.partialhyp_t* %13, null
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = bitcast i8* %call6 to i32*
  %15 = load i32* %14, align 4, !tbaa !3
  %conv = sext i32 %15 to i64
  %call8 = tail call i8* @__ckd_calloc__(i64 %conv, i64 24, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 102) #3
  %16 = bitcast i8* %call8 to %struct.partialhyp_t*
  store %struct.partialhyp_t* %16, %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call9 = tail call i8* @__ckd_calloc__(i64 1, i64 120, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 104) #3
  %17 = bitcast i8* %call9 to %struct.param_t*
  %call10 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0)) #3
  %18 = bitcast i8* %call10 to i32*
  %19 = load i32* %18, align 4, !tbaa !3
  switch i32 %19, label %if.then14 [
    i32 16000, label %if.end15
    i32 8000, label %if.end15
  ]

if.then14:                                        ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 107, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %19) #3
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.end, %if.then14
  %conv16 = sitofp i32 %19 to float
  %SAMPLING_RATE = bitcast i8* %call9 to float*
  store float %conv16, float* %SAMPLING_RATE, align 4, !tbaa !4
  %call17 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0)) #3
  %20 = bitcast i8* %call17 to float*
  %21 = load float* %20, align 4, !tbaa !4
  %LOWER_FILT_FREQ = getelementptr inbounds i8* %call9, i64 28
  %22 = bitcast i8* %LOWER_FILT_FREQ to float*
  store float %21, float* %22, align 4, !tbaa !4
  %call18 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0)) #3
  %23 = bitcast i8* %call18 to float*
  %24 = load float* %23, align 4, !tbaa !4
  %UPPER_FILT_FREQ = getelementptr inbounds i8* %call9, i64 32
  %25 = bitcast i8* %UPPER_FILT_FREQ to float*
  store float %24, float* %25, align 4, !tbaa !4
  %call19 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0)) #3
  %26 = bitcast i8* %call19 to i32*
  %27 = load i32* %26, align 4, !tbaa !3
  %NUM_FILTERS = getelementptr inbounds i8* %call9, i64 20
  %28 = bitcast i8* %NUM_FILTERS to i32*
  store i32 %27, i32* %28, align 4, !tbaa !3
  %call20 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) #3
  %29 = bitcast i8* %call20 to i32*
  %30 = load i32* %29, align 4, !tbaa !3
  %FRAME_RATE = getelementptr inbounds i8* %call9, i64 4
  %31 = bitcast i8* %FRAME_RATE to i32*
  store i32 %30, i32* %31, align 4, !tbaa !3
  %call21 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) #3
  %32 = bitcast i8* %call21 to float*
  %33 = load float* %32, align 4, !tbaa !4
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds i8* %call9, i64 36
  %34 = bitcast i8* %PRE_EMPHASIS_ALPHA to float*
  store float %33, float* %34, align 4, !tbaa !4
  %call22 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0)) #3
  %35 = bitcast i8* %call22 to i32*
  %36 = load i32* %35, align 4, !tbaa !3
  %FFT_SIZE = getelementptr inbounds i8* %call9, i64 24
  %37 = bitcast i8* %FFT_SIZE to i32*
  store i32 %36, i32* %37, align 4, !tbaa !3
  %call23 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0)) #3
  %38 = bitcast i8* %call23 to float*
  %39 = load float* %38, align 4, !tbaa !4
  %WINDOW_LENGTH = getelementptr inbounds i8* %call9, i64 8
  %40 = bitcast i8* %WINDOW_LENGTH to float*
  store float %39, float* %40, align 4, !tbaa !4
  %doublebw = getelementptr inbounds i8* %call9, i64 116
  %41 = bitcast i8* %doublebw to i32*
  store i32 0, i32* %41, align 4, !tbaa !3
  %call24 = tail call %struct.fe_t* @fe_init(%struct.param_t* %17) #3
  store %struct.fe_t* %call24, %struct.fe_t** @fe, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.fe_t* %call24, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end15
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 127, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([43 x i8]* @.str17, i64 0, i64 0)) #3
  br label %if.end27

if.end27:                                         ; preds = %if.end15, %if.then26
  %call28 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0)) #3
  %42 = load %struct.kbcore_t** @kbcore, align 8, !tbaa !0
  %fcb = getelementptr inbounds %struct.kbcore_t* %42, i64 0, i32 0
  %43 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %cepsize = getelementptr inbounds %struct.feat_s* %43, i64 0, i32 1
  %44 = load i32* %cepsize, align 4, !tbaa !3
  %conv29 = sext i32 %44 to i64
  %call30 = tail call i8* @__ckd_calloc__(i64 %conv29, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 132) #3
  %45 = bitcast i8* %call30 to float*
  store float* %45, float** @dummyframe, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @parse_args_file(i8*) #1

; Function Attrs: optsize
declare void @unlimit() #1

; Function Attrs: optsize
declare void @kb_init(%struct.kb_t*) #1

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare i8* @cmd_ln_access(i8*) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: optsize
declare %struct.fe_t* @fe_init(%struct.param_t*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @live_free_memory() #0 {
entry:
  tail call void (...)* @parse_args_free() #3
  %0 = load %struct.fe_t** @fe, align 8, !tbaa !0
  %call = tail call i32 @fe_close(%struct.fe_t* %0) #3
  %1 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %uttid = getelementptr inbounds %struct.kb_t* %1, i64 0, i32 33
  %2 = load i8** %uttid, align 8, !tbaa !0
  tail call void @ckd_free(i8* %2) #3
  %3 = load %struct.kb_t** @kb, align 8, !tbaa !0
  tail call void @kb_free(%struct.kb_t* %3) #3
  %4 = load float** @dummyframe, align 8, !tbaa !0
  %5 = bitcast float* %4 to i8*
  tail call void @ckd_free(i8* %5) #3
  %6 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %7 = bitcast %struct.partialhyp_t* %6 to i8*
  tail call void @ckd_free(i8* %7) #3
  ret i32 0
}

; Function Attrs: optsize
declare void @parse_args_free(...) #1

; Function Attrs: optsize
declare i32 @fe_close(%struct.fe_t*) #1

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: optsize
declare void @kb_free(%struct.kb_t*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @live_get_partialhyp(i32 %endutt) #0 {
entry:
  %0 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %kbcore = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 0
  %1 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %dict1 = getelementptr inbounds %struct.kbcore_t* %1, i64 0, i32 2
  %2 = load %struct.dict_t** %dict1, align 8, !tbaa !0
  %tobool = icmp eq i32 %endutt, 0
  %vithist = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 6
  %3 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @vithist_utt_end(%struct.vithist_t* %3, %struct.kbcore_t* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @vithist_partialutt_end(%struct.vithist_t* %3, %struct.kbcore_t* %1) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %id.0 = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  %cmp = icmp sgt i32 %id.0, 0
  br i1 %cmp, label %if.then6, label %if.else62

if.then6:                                         ; preds = %if.end
  %4 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %vithist7 = getelementptr inbounds %struct.kb_t* %4, i64 0, i32 6
  %5 = load %struct.vithist_t** %vithist7, align 8, !tbaa !0
  %call8 = tail call %struct.gnode_s* @vithist_backtrace(%struct.vithist_t* %5, i32 %id.0) #3
  %tobool9107 = icmp eq %struct.gnode_s* %call8, null
  br i1 %tobool9107, label %if.then6.for.end_crit_edge, label %for.body.lr.ph

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  %.pre110 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then6
  %word21 = getelementptr inbounds %struct.dict_t* %2, i64 0, i32 4
  %.pre = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end18
  %6 = phi %struct.partialhyp_t* [ %.pre, %for.body.lr.ph ], [ %16, %if.end18 ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end18 ]
  %gn.0109 = phi %struct.gnode_s* [ %call8, %for.body.lr.ph ], [ %23, %if.end18 ]
  %nwds.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.0109, i64 0, i32 0, i32 0
  %7 = load i8** %ptr, align 8, !tbaa !0
  %word = getelementptr inbounds %struct.partialhyp_t* %6, i64 %indvars.iv, i32 2
  %8 = load i8** %word, align 8, !tbaa !0
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.end18, label %if.then11

if.then11:                                        ; preds = %for.body
  tail call void @ckd_free(i8* %8) #3
  %9 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %word17 = getelementptr inbounds %struct.partialhyp_t* %9, i64 %indvars.iv, i32 2
  store i8* null, i8** %word17, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %for.body, %if.then11
  %id19 = bitcast i8* %7 to i32*
  %10 = load i32* %id19, align 4, !tbaa !3
  %idxprom20 = sext i32 %10 to i64
  %11 = load %struct.dictword_t** %word21, align 8, !tbaa !0
  %word23 = getelementptr inbounds %struct.dictword_t* %11, i64 %idxprom20, i32 0
  %12 = load i8** %word23, align 8, !tbaa !0
  %call24 = tail call noalias i8* @strdup(i8* %12) #3
  %13 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %word27 = getelementptr inbounds %struct.partialhyp_t* %13, i64 %indvars.iv, i32 2
  store i8* %call24, i8** %word27, align 8, !tbaa !0
  %sf = getelementptr inbounds i8* %7, i64 8
  %14 = bitcast i8* %sf to i32*
  %15 = load i32* %14, align 4, !tbaa !3
  %16 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %sf30 = getelementptr inbounds %struct.partialhyp_t* %16, i64 %indvars.iv, i32 3
  store i32 %15, i32* %sf30, align 4, !tbaa !3
  %ef = getelementptr inbounds i8* %7, i64 12
  %17 = bitcast i8* %ef to i32*
  %18 = load i32* %17, align 4, !tbaa !3
  %ef33 = getelementptr inbounds %struct.partialhyp_t* %16, i64 %indvars.iv, i32 4
  store i32 %18, i32* %ef33, align 4, !tbaa !3
  %ascr = getelementptr inbounds i8* %7, i64 16
  %19 = bitcast i8* %ascr to i32*
  %20 = load i32* %19, align 4, !tbaa !3
  %ascr36 = getelementptr inbounds %struct.partialhyp_t* %16, i64 %indvars.iv, i32 0
  store i32 %20, i32* %ascr36, align 4, !tbaa !3
  %lscr = getelementptr inbounds i8* %7, i64 20
  %21 = bitcast i8* %lscr to i32*
  %22 = load i32* %21, align 4, !tbaa !3
  %lscr39 = getelementptr inbounds %struct.partialhyp_t* %16, i64 %indvars.iv, i32 1
  store i32 %22, i32* %lscr39, align 4, !tbaa !3
  %next = getelementptr inbounds %struct.gnode_s* %gn.0109, i64 0, i32 1
  %23 = load %struct.gnode_s** %next, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %nwds.0108, 1
  %tobool9 = icmp eq %struct.gnode_s* %23, null
  br i1 %tobool9, label %for.end, label %for.body

for.end:                                          ; preds = %if.end18, %if.then6.for.end_crit_edge
  %24 = phi %struct.partialhyp_t* [ %.pre110, %if.then6.for.end_crit_edge ], [ %16, %if.end18 ]
  %nwds.0.lcssa = phi i32 [ 0, %if.then6.for.end_crit_edge ], [ %inc, %if.end18 ]
  %idxprom40 = sext i32 %nwds.0.lcssa to i64
  %word42 = getelementptr inbounds %struct.partialhyp_t* %24, i64 %idxprom40, i32 2
  %25 = load i8** %word42, align 8, !tbaa !0
  %cmp43 = icmp eq i8* %25, null
  br i1 %cmp43, label %for.cond52.preheader, label %if.then44

if.then44:                                        ; preds = %for.end
  tail call void @ckd_free(i8* %25) #3
  %26 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %word50 = getelementptr inbounds %struct.partialhyp_t* %26, i64 %idxprom40, i32 2
  store i8* null, i8** %word50, align 8, !tbaa !0
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.end, %if.then44
  br i1 %tobool9107, label %for.end61, label %land.rhs

land.rhs:                                         ; preds = %for.cond52.preheader, %for.body56
  %gn.1106 = phi %struct.gnode_s* [ %29, %for.body56 ], [ %call8, %for.cond52.preheader ]
  %next54 = getelementptr inbounds %struct.gnode_s* %gn.1106, i64 0, i32 1
  %27 = load %struct.gnode_s** %next54, align 8, !tbaa !0
  %tobool55 = icmp eq %struct.gnode_s* %27, null
  br i1 %tobool55, label %for.end61, label %for.body56

for.body56:                                       ; preds = %land.rhs
  %ptr58 = getelementptr inbounds %struct.gnode_s* %gn.1106, i64 0, i32 0, i32 0
  %28 = load i8** %ptr58, align 8, !tbaa !0
  tail call void @ckd_free(i8* %28) #3
  %29 = load %struct.gnode_s** %next54, align 8, !tbaa !0
  %tobool53 = icmp eq %struct.gnode_s* %29, null
  br i1 %tobool53, label %for.end61, label %land.rhs

for.end61:                                        ; preds = %for.body56, %land.rhs, %for.cond52.preheader
  tail call void @glist_free(%struct.gnode_s* %call8) #3
  br label %if.end75

if.else62:                                        ; preds = %if.end
  %30 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %word65 = getelementptr inbounds %struct.partialhyp_t* %30, i64 0, i32 2
  %31 = load i8** %word65, align 8, !tbaa !0
  %cmp66 = icmp eq i8* %31, null
  br i1 %cmp66, label %if.end75, label %if.then67

if.then67:                                        ; preds = %if.else62
  tail call void @ckd_free(i8* %31) #3
  %32 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  %word73 = getelementptr inbounds %struct.partialhyp_t* %32, i64 0, i32 2
  store i8* null, i8** %word73, align 8, !tbaa !0
  br label %if.end75

if.end75:                                         ; preds = %if.else62, %if.then67, %for.end61
  %nwds.1 = phi i32 [ %nwds.0.lcssa, %for.end61 ], [ 0, %if.then67 ], [ 0, %if.else62 ]
  ret i32 %nwds.1
}

; Function Attrs: optsize
declare i32 @vithist_utt_end(%struct.vithist_t*, %struct.kbcore_t*) #1

; Function Attrs: optsize
declare i32 @vithist_partialutt_end(%struct.vithist_t*, %struct.kbcore_t*) #1

; Function Attrs: optsize
declare %struct.gnode_s* @vithist_backtrace(%struct.vithist_t*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: optsize
declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: nounwind optsize uwtable
define void @live_utt_set_uttid(i8* nocapture %uttname) #0 {
entry:
  %0 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %uttid = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 33
  %1 = load i8** %uttid, align 8, !tbaa !0
  %call = tail call i8* @strcpy(i8* %1, i8* %uttname) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @live_utt_decode_block(i16* %samples, i32 %nsamples, i32 %live_endutt, %struct.partialhyp_t** nocapture %ohyp) #0 {
entry:
  %mfcbuf = alloca float**, align 8
  %0 = load float**** @live_utt_decode_block.live_feat, align 8, !tbaa !0
  %cmp = icmp eq float*** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.kbcore_t** @kbcore, align 8, !tbaa !0
  %fcb = getelementptr inbounds %struct.kbcore_t* %1, i64 0, i32 0
  %2 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %call = call float*** @feat_array_alloc(%struct.feat_s* %2, i32 256) #3
  store float*** %call, float**** @live_utt_decode_block.live_feat, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.b27 = load i1* @live_utt_decode_block.live_begin_new_utt, align 1
  br i1 %.b27, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load %struct.fe_t** @fe, align 8, !tbaa !0
  %call2 = call i32 @fe_start_utt(%struct.fe_t* %3) #3
  %4 = load %struct.kb_t** @kb, align 8, !tbaa !0
  call void @utt_begin(%struct.kb_t* %4) #3
  store i32 0, i32* @live_utt_decode_block.frmno, align 4, !tbaa !3
  %5 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %nfr = getelementptr inbounds %struct.kb_t* %5, i64 0, i32 8
  store i32 0, i32* %nfr, align 4, !tbaa !3
  %utt_hmm_eval = getelementptr inbounds %struct.kb_t* %5, i64 0, i32 34
  store i32 0, i32* %utt_hmm_eval, align 4, !tbaa !3
  %utt_sen_eval = getelementptr inbounds %struct.kb_t* %5, i64 0, i32 35
  store i32 0, i32* %utt_sen_eval, align 4, !tbaa !3
  %utt_gau_eval = getelementptr inbounds %struct.kb_t* %5, i64 0, i32 36
  store i32 0, i32* %utt_gau_eval, align 4, !tbaa !3
  store i1 true, i1* @live_utt_decode_block.live_begin_new_utt, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then1
  store float** null, float*** %mfcbuf, align 8, !tbaa !0
  %6 = load %struct.fe_t** @fe, align 8, !tbaa !0
  %call4 = call i32 @fe_process_utt(%struct.fe_t* %6, i16* %samples, i32 %nsamples, float*** %mfcbuf) #3
  %tobool5 = icmp ne i32 %live_endutt, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %7 = load %struct.fe_t** @fe, align 8, !tbaa !0
  %8 = load float** @dummyframe, align 8, !tbaa !0
  %call7 = call i32 @fe_end_utt(%struct.fe_t* %7, float* %8) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %cmp9 = icmp sgt i32 %call4, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end8
  %9 = load %struct.kbcore_t** @kbcore, align 8, !tbaa !0
  %fcb11 = getelementptr inbounds %struct.kbcore_t* %9, i64 0, i32 0
  %10 = load %struct.feat_s** %fcb11, align 8, !tbaa !0
  %11 = load float*** %mfcbuf, align 8, !tbaa !0
  %.b = load i1* @live_utt_decode_block.live_begin_new_utt, align 1
  %12 = zext i1 %.b to i32
  %13 = xor i32 %12, 1
  %14 = load float**** @live_utt_decode_block.live_feat, align 8, !tbaa !0
  %call12 = call i32 @feat_s2mfc2feat_block(%struct.feat_s* %10, float** %11, i32 %call4, i32 %13, i32 %live_endutt, float*** %14) #3
  %15 = load float**** @live_utt_decode_block.live_feat, align 8, !tbaa !0
  %16 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %17 = load i32* @maxwpf, align 4, !tbaa !3
  %18 = load i32* @maxhistpf, align 4, !tbaa !3
  %19 = load i32* @maxhmmpf, align 4, !tbaa !3
  %20 = load i32* @ptranskip, align 4, !tbaa !3
  %21 = load %struct._IO_FILE** @hmmdumpfp, align 8, !tbaa !0
  call void @utt_decode_block(float*** %15, i32 %call12, i32* @live_utt_decode_block.frmno, %struct.kb_t* %16, i32 %17, i32 %18, i32 %19, i32 %20, %struct._IO_FILE* %21) #3
  %call13 = call i32 @live_get_partialhyp(i32 %live_endutt) #4
  %22 = load %struct.partialhyp_t** @parthyp, align 8, !tbaa !0
  store %struct.partialhyp_t* %22, %struct.partialhyp_t** %ohyp, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8
  %nwds.0 = phi i32 [ %call13, %if.then10 ], [ 0, %if.end8 ]
  br i1 %tobool5, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  store i1 false, i1* @live_utt_decode_block.live_begin_new_utt, align 1
  %23 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %nfr17 = getelementptr inbounds %struct.kb_t* %23, i64 0, i32 8
  %24 = load i32* %nfr17, align 4, !tbaa !3
  %tot_fr = getelementptr inbounds %struct.kb_t* %23, i64 0, i32 43
  %25 = load i32* %tot_fr, align 4, !tbaa !3
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %tot_fr, align 4, !tbaa !3
  call void @utt_end(%struct.kb_t* %23) #3
  br label %if.end18

if.else:                                          ; preds = %if.end14
  store i1 true, i1* @live_utt_decode_block.live_begin_new_utt, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  br i1 %cmp9, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %26 = load float*** %mfcbuf, align 8, !tbaa !0
  %27 = bitcast float** %26 to i8**
  call void @ckd_free_2d(i8** %27) #3
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  ret i32 %nwds.0
}

; Function Attrs: optsize
declare float*** @feat_array_alloc(%struct.feat_s*, i32) #1

; Function Attrs: optsize
declare i32 @fe_start_utt(%struct.fe_t*) #1

; Function Attrs: optsize
declare void @utt_begin(%struct.kb_t*) #1

; Function Attrs: optsize
declare i32 @fe_process_utt(%struct.fe_t*, i16*, i32, float***) #1

; Function Attrs: optsize
declare i32 @fe_end_utt(%struct.fe_t*, float*) #1

; Function Attrs: optsize
declare i32 @feat_s2mfc2feat_block(%struct.feat_s*, float**, i32, i32, i32, float***) #1

; Function Attrs: optsize
declare void @utt_decode_block(float***, i32, i32*, %struct.kb_t*, i32, i32, i32, i32, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @utt_end(%struct.kb_t*) #1

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #1

; Function Attrs: nounwind optsize uwtable
define void @live_utt_summary() #0 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 354, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0)) #3
  %0 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %tot_fr = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 43
  %1 = load i32* %tot_fr, align 4, !tbaa !3
  %tot_sen_eval = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 44
  %2 = load double* %tot_sen_eval, align 8, !tbaa !5
  %conv = sitofp i32 %1 to double
  %div = fdiv double %2, %conv
  %conv2 = fptosi double %div to i32
  %tot_gau_eval = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 45
  %3 = load double* %tot_gau_eval, align 8, !tbaa !5
  %div5 = fdiv double %3, %conv
  %conv6 = fptosi double %div5 to i32
  %tot_hmm_eval = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 46
  %4 = load double* %tot_hmm_eval, align 8, !tbaa !5
  %div9 = fdiv double %4, %conv
  %conv10 = fptosi double %div9 to i32
  %tot_wd_exit = getelementptr inbounds %struct.kb_t* %0, i64 0, i32 47
  %5 = load double* %tot_wd_exit, align 8, !tbaa !5
  %div13 = fdiv double %5, %conv
  %conv14 = fptosi double %div13 to i32
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([98 x i8]* @.str20, i64 0, i64 0), i32 %1, i32 %conv2, i32 %conv6, double 0.000000e+00, double 0.000000e+00, i32 %conv10, i32 %conv14, double 0.000000e+00) #3
  %6 = load i32* @confp_open, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE** @confp, align 8, !tbaa !0
  %call = tail call i32 @fclose(%struct._IO_FILE* %7) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call15 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([21 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0)) #3
  store %struct._IO_FILE* %call15, %struct._IO_FILE** @confp, align 8, !tbaa !0
  %cmp = icmp eq %struct._IO_FILE* %call15, null
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 365, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0)) #3
  %.pre = load %struct._IO_FILE** @confp, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %8 = phi %struct._IO_FILE* [ %.pre, %if.then17 ], [ %call15, %if.end ]
  %9 = load i64* @tot_considered, align 8, !tbaa !6
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([29 x i8]* @.str24, i64 0, i64 0), i64 %9) #3
  ret void
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
