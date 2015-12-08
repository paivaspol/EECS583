; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/spec_main_live_pretend.c'
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
%struct.partialhyp_t = type { i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"beams.dat\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [70 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/spec_main_live_pretend.c\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"Can't find beams.dat\0A\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"%lg%lg%lg%lg\00", align 1
@beams = common global [1000 x [4 x double]] zeroinitializer, align 16
@.str6 = private unnamed_addr constant [21 x i8] c"Not enough beams %d\0A\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"Processing %d beamsets\0A\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"\0AUSAGE: %s <ctlfile> <inrawdir> <argsfile>\0A\00", align 1
@.str10 = private unnamed_addr constant [19 x i8] c"Unable to read %s\0A\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"Filesize claimed to be %d for %s\0A\00", align 1
@.str13 = private unnamed_addr constant [37 x i8] c"Can't allocate %d bytes for file %s\0A\00", align 1
@.str14 = private unnamed_addr constant [37 x i8] c"Can't allocate %d bytes for uttid %s\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"%s/%s.raw\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str17 = private unnamed_addr constant [33 x i8] c"Only read %d, expected %d in %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str18 = private unnamed_addr constant [50 x i8] c"%d samples in %s will be decoded in blocks of %d\0A\00", align 1
@kb = external global %struct.kb_t*
@.str19 = private unnamed_addr constant [45 x i8] c"Beam= %d, PBeam= %d, WBeam= %d, SVQBeam= %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %samps = alloca [10000 x i16*], align 16
  %uttid = alloca [10000 x i8*], align 16
  %uttsize = alloca [10000 x i32], align 16
  %filename = alloca [512 x i8], align 16
  %cepfile = alloca [516 x i8], align 16
  %filesize = alloca i32, align 4
  %parthyp = alloca %struct.partialhyp_t*, align 8
  %0 = bitcast [10000 x i16*]* %samps to i8*
  call void @llvm.lifetime.start(i64 80000, i8* %0) #1
  %1 = bitcast [10000 x i8*]* %uttid to i8*
  call void @llvm.lifetime.start(i64 80000, i8* %1) #1
  %2 = bitcast [10000 x i32]* %uttsize to i8*
  call void @llvm.lifetime.start(i64 40000, i8* %2) #1
  %3 = getelementptr inbounds [512 x i8]* %filename, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %3) #1
  %4 = getelementptr inbounds [516 x i8]* %cepfile, i64 0, i64 0
  call void @llvm.lifetime.start(i64 516, i8* %4) #1
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %land.rhs

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 104, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0)) #5
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %5 = trunc i64 %indvars.iv.next245 to i32
  %cmp1 = icmp slt i32 %5, 1000
  br i1 %cmp1, label %land.rhs, label %if.end16

land.rhs:                                         ; preds = %entry, %if.then, %while.cond
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %while.cond ], [ 0, %if.then ], [ 0, %entry ]
  %ib.0233 = phi i32 [ %inc, %while.cond ], [ 0, %if.then ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv244, i64 0
  %arrayidx5 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv244, i64 1
  %arrayidx8 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv244, i64 2
  %arrayidx11 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv244, i64 3
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), double* %arrayidx2, double* %arrayidx5, double* %arrayidx8, double* %arrayidx11) #5
  %cmp13 = icmp eq i32 %call12, -1
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  %inc = add nsw i32 %ib.0233, 1
  br i1 %cmp13, label %while.end, label %while.cond

while.end:                                        ; preds = %land.rhs
  %cmp14 = icmp slt i32 %ib.0233, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.end
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 117, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0), i32 %ib.0233) #5
  br label %if.end16

if.end16:                                         ; preds = %while.cond, %if.then15, %while.end
  %ib.0232 = phi i32 [ %ib.0233, %if.then15 ], [ %ib.0233, %while.end ], [ %inc, %while.cond ]
  %call17 = call i32 @fclose(%struct._IO_FILE* %call) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 120, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i32 %ib.0232) #5
  %cmp18 = icmp eq i32 %argc, 4
  br i1 %cmp18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @parse_args_file(i8* null) #5
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 127, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  %6 = load i8** %argv, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), i8* %6) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %if.then19
  %arrayidx22 = getelementptr inbounds i8** %argv, i64 1
  %7 = load i8** %arrayidx22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i8** %argv, i64 2
  %8 = load i8** %arrayidx23, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i8** %argv, i64 3
  %9 = load i8** %arrayidx24, align 8, !tbaa !0
  %call25 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp26 = icmp eq %struct._IO_FILE* %call25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 132, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* %7) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21
  call void @live_initialize_decoder(i8* %9) #5
  br label %land.rhs31

for.cond.preheader:                               ; preds = %land.rhs31, %if.end99
  %iutt.0.lcssa = phi i32 [ %iutt.0230, %land.rhs31 ], [ %inc104, %if.end99 ]
  %cmp106228 = icmp sgt i32 %ib.0232, 0
  br i1 %cmp106228, label %for.body.lr.ph, label %for.end170

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp136226 = icmp sgt i32 %iutt.0.lcssa, 0
  br label %for.body

land.rhs31:                                       ; preds = %if.end28, %if.end99
  %indvars.iv240 = phi i64 [ 0, %if.end28 ], [ %indvars.iv.next241, %if.end99 ]
  %iutt.0230 = phi i32 [ 0, %if.end28 ], [ %inc104, %if.end99 ]
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call25, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* %3, i32* %filesize) #5
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %for.cond.preheader, label %while.body35

while.body35:                                     ; preds = %land.rhs31
  %10 = load i32* %filesize, align 4, !tbaa !3
  %cmp36 = icmp sgt i32 %10, 0
  %rem = and i32 %10, 1
  %cmp37 = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp36, %cmp37
  br i1 %or.cond, label %if.end41, label %if.then39

if.then39:                                        ; preds = %while.body35
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 140, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  %11 = load i32* %filesize, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i32 %11, i8* %3) #5
  %.pre = load i32* %filesize, align 4, !tbaa !3
  br label %if.end41

if.end41:                                         ; preds = %while.body35, %if.then39
  %12 = phi i32 [ %10, %while.body35 ], [ %.pre, %if.then39 ]
  %conv42 = sext i32 %12 to i64
  %div = lshr i64 %conv42, 1
  %conv43 = trunc i64 %div to i32
  %arrayidx45 = getelementptr inbounds [10000 x i32]* %uttsize, i64 0, i64 %indvars.iv240
  store i32 %conv43, i32* %arrayidx45, align 4, !tbaa !3
  %sext = shl i64 %div, 32
  %conv48 = ashr exact i64 %sext, 32
  %call49 = call noalias i8* @calloc(i64 %conv48, i64 2) #5
  %13 = bitcast i8* %call49 to i16*
  %arrayidx51 = getelementptr inbounds [10000 x i16*]* %samps, i64 0, i64 %indvars.iv240
  store i16* %13, i16** %arrayidx51, align 8, !tbaa !0
  %cmp52 = icmp eq i8* %call49, null
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end41
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 144, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  %14 = load i32* %filesize, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([37 x i8]* @.str13, i64 0, i64 0), i32 %14, i8* %3) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end41
  %call58 = call i64 @strlen(i8* %3) #6
  %add = add i64 %call58, 1
  %call59 = call noalias i8* @malloc(i64 %add) #5
  %arrayidx61 = getelementptr inbounds [10000 x i8*]* %uttid, i64 0, i64 %indvars.iv240
  store i8* %call59, i8** %arrayidx61, align 8, !tbaa !0
  %cmp62 = icmp eq i8* %call59, null
  br i1 %cmp62, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end56
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 147, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  %call66 = call i64 @strlen(i8* %3) #6
  %add67 = add i64 %call66, 1
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([37 x i8]* @.str14, i64 0, i64 0), i64 %add67, i8* %3) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end56
  %call73 = call i8* @strcpy(i8* %call59, i8* %3) #5
  %call76 = call i32 (i8*, i8*, ...)* @sprintf(i8* %4, i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i8* %8, i8* %3) #5
  %call78 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #5
  %cmp79 = icmp eq %struct._IO_FILE* %call78, null
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end69
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 152, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* %4) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end69
  %sext246 = shl i64 %div, 32
  %conv88 = ashr exact i64 %sext246, 32
  %call89 = call i64 @fread(i8* %call49, i64 2, i64 %conv88, %struct._IO_FILE* %call78) #5
  %conv90 = trunc i64 %call89 to i32
  %cmp93 = icmp eq i32 %conv90, %conv43
  br i1 %cmp93, label %if.end99, label %if.then95

if.then95:                                        ; preds = %if.end83
  call void @_E__pr_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 156, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str17, i64 0, i64 0), i32 %conv90, i32 %conv43, i8* %3) #5
  br label %if.end99

if.end99:                                         ; preds = %if.end83, %if.then95
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([50 x i8]* @.str18, i64 0, i64 0), i32 %conv90, i8* %4, i32 2000) #5
  %16 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call102 = call i32 @fflush(%struct._IO_FILE* %16) #5
  %call103 = call i32 @fclose(%struct._IO_FILE* %call78) #5
  %indvars.iv.next241 = add i64 %indvars.iv240, 1
  %inc104 = add nsw i32 %iutt.0230, 1
  %17 = trunc i64 %indvars.iv.next241 to i32
  %cmp30 = icmp slt i32 %17, 10000
  br i1 %cmp30, label %land.rhs31, label %for.cond.preheader

for.body:                                         ; preds = %for.inc168, %for.body.lr.ph
  %indvars.iv236 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next237, %for.inc168 ]
  %arrayidx110 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv236, i64 0
  %18 = load double* %arrayidx110, align 16, !tbaa !4
  %call111 = call i32 @logs3(double %18) #5
  %19 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %beam = getelementptr inbounds %struct.kb_t* %19, i64 0, i32 22
  %20 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %hmm = getelementptr inbounds %struct.beam_t* %20, i64 0, i32 1
  store i32 %call111, i32* %hmm, align 4, !tbaa !3
  %arrayidx114 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv236, i64 1
  %21 = load double* %arrayidx114, align 8, !tbaa !4
  %call115 = call i32 @logs3(double %21) #5
  %22 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %beam116 = getelementptr inbounds %struct.kb_t* %22, i64 0, i32 22
  %23 = load %struct.beam_t** %beam116, align 8, !tbaa !0
  %ptrans = getelementptr inbounds %struct.beam_t* %23, i64 0, i32 2
  store i32 %call115, i32* %ptrans, align 4, !tbaa !3
  %arrayidx119 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv236, i64 2
  %24 = load double* %arrayidx119, align 16, !tbaa !4
  %call120 = call i32 @logs3(double %24) #5
  %25 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %beam121 = getelementptr inbounds %struct.kb_t* %25, i64 0, i32 22
  %26 = load %struct.beam_t** %beam121, align 8, !tbaa !0
  %word = getelementptr inbounds %struct.beam_t* %26, i64 0, i32 3
  store i32 %call120, i32* %word, align 4, !tbaa !3
  %arrayidx124 = getelementptr inbounds [1000 x [4 x double]]* @beams, i64 0, i64 %indvars.iv236, i64 3
  %27 = load double* %arrayidx124, align 8, !tbaa !4
  %call125 = call i32 @logs3(double %27) #5
  %28 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %beam126 = getelementptr inbounds %struct.kb_t* %28, i64 0, i32 22
  %29 = load %struct.beam_t** %beam126, align 8, !tbaa !0
  %subvq = getelementptr inbounds %struct.beam_t* %29, i64 0, i32 0
  store i32 %call125, i32* %subvq, align 4, !tbaa !3
  call void @_E__pr_info_header(i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), i64 172, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #5
  %30 = load %struct.kb_t** @kb, align 8, !tbaa !0
  %beam127 = getelementptr inbounds %struct.kb_t* %30, i64 0, i32 22
  %31 = load %struct.beam_t** %beam127, align 8, !tbaa !0
  %hmm128 = getelementptr inbounds %struct.beam_t* %31, i64 0, i32 1
  %32 = load i32* %hmm128, align 4, !tbaa !3
  %ptrans130 = getelementptr inbounds %struct.beam_t* %31, i64 0, i32 2
  %33 = load i32* %ptrans130, align 4, !tbaa !3
  %word132 = getelementptr inbounds %struct.beam_t* %31, i64 0, i32 3
  %34 = load i32* %word132, align 4, !tbaa !3
  %subvq134 = getelementptr inbounds %struct.beam_t* %31, i64 0, i32 0
  %35 = load i32* %subvq134, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([45 x i8]* @.str19, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35) #5
  br i1 %cmp136226, label %for.body138, label %for.inc168

for.body138:                                      ; preds = %for.body, %for.inc165
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.inc165 ], [ 0, %for.body ]
  %arrayidx140 = getelementptr inbounds [10000 x i8*]* %uttid, i64 0, i64 %indvars.iv234
  %36 = load i8** %arrayidx140, align 8, !tbaa !0
  call void @live_utt_set_uttid(i8* %36) #5
  %arrayidx143 = getelementptr inbounds [10000 x i32]* %uttsize, i64 0, i64 %indvars.iv234
  %37 = load i32* %arrayidx143, align 4, !tbaa !3
  %cmp144224 = icmp sgt i32 %37, 0
  br i1 %cmp144224, label %for.body146.lr.ph, label %for.inc165

for.body146.lr.ph:                                ; preds = %for.body138
  %arrayidx162 = getelementptr inbounds [10000 x i16*]* %samps, i64 0, i64 %indvars.iv234
  %38 = load i16** %arrayidx162, align 8, !tbaa !0
  br label %for.body146

for.body146:                                      ; preds = %for.body146.lr.ph, %for.body146
  %indvars.iv = phi i64 [ 0, %for.body146.lr.ph ], [ %indvars.iv.next, %for.body146 ]
  %indvars.iv.next = add i64 %indvars.iv, 2000
  %39 = trunc i64 %indvars.iv.next to i32
  %cmp150 = icmp slt i32 %39, %37
  %40 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %37, %40
  %cond = select i1 %cmp150, i32 2000, i32 %sub
  %sub157 = add nsw i32 %37, -1
  %not.cmp158 = icmp sgt i32 %39, %sub157
  %cond160 = zext i1 %not.cmp158 to i32
  %add.ptr = getelementptr inbounds i16* %38, i64 %indvars.iv
  %call163 = call i32 @live_utt_decode_block(i16* %add.ptr, i32 %cond, i32 %cond160, %struct.partialhyp_t** %parthyp) #5
  br i1 %cmp150, label %for.body146, label %for.inc165

for.inc165:                                       ; preds = %for.body146, %for.body138
  %indvars.iv.next235 = add i64 %indvars.iv234, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next235 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %iutt.0.lcssa
  br i1 %exitcond, label %for.inc168, label %for.body138

for.inc168:                                       ; preds = %for.inc165, %for.body
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %lftr.wideiv238 = trunc i64 %indvars.iv.next237 to i32
  %exitcond239 = icmp eq i32 %lftr.wideiv238, %ib.0232
  br i1 %exitcond239, label %for.end170, label %for.body

for.end170:                                       ; preds = %for.inc168, %for.cond.preheader
  call void (...)* @live_utt_summary() #5
  call void @llvm.lifetime.end(i64 516, i8* %4) #1
  call void @llvm.lifetime.end(i64 512, i8* %3) #1
  call void @llvm.lifetime.end(i64 40000, i8* %2) #1
  call void @llvm.lifetime.end(i64 80000, i8* %1) #1
  call void @llvm.lifetime.end(i64 80000, i8* %0) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #3

; Function Attrs: optsize
declare void @parse_args_file(i8*) #3

; Function Attrs: optsize
declare void @live_initialize_decoder(i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @logs3(double) #3

; Function Attrs: optsize
declare void @live_utt_set_uttid(i8*) #3

; Function Attrs: optsize
declare i32 @live_utt_decode_block(i16*, i32, i32, %struct.partialhyp_t**) #3

; Function Attrs: optsize
declare void @live_utt_summary(...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
