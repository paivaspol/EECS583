; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/utt.c'
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

@tot_considered = global i64 0, align 8
@confp_open = global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s%s S 0 T %d A %d L %d\00", align 1
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str2 = private unnamed_addr constant [13 x i8] c" %d %d %d %s\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [10 x i8] c"-bptbldir\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"%s/%s.bpt\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str10 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/utt.c\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"fopen(%s,w) failed; using stdout\0A\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"\0ABacktrace(%s)\0A\00", align 1
@.str14 = private unnamed_addr constant [26 x i8] c"%6s %5s %5s %11s %8s %4s\0A\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"LatID\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"SFrm\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"EFrm\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"AScr\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"LScr\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"%6d %5d %5d %11d %8d %4d %s\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"       %5d %5d %11d %8d (Total)\0A\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"\0AFWDVIT: \00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"'%s' (%s)\0A\0A\00", align 1
@.str25 = private unnamed_addr constant [9 x i8] c"FWDXCT: \00", align 1
@.str27 = private unnamed_addr constant [15 x i8] c"considered.out\00", align 1
@confp = common global %struct._IO_FILE* null, align 8
@.str28 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str29 = private unnamed_addr constant [29 x i8] c"fopen considered.out failed\0A\00", align 1
@.str30 = private unnamed_addr constant [34 x i8] c"%22d considered for utterance %s\0A\00", align 1
@considered = external global i64
@.str31 = private unnamed_addr constant [11 x i8] c"-outlatdir\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@.str33 = private unnamed_addr constant [8 x i8] c"-latext\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str35 = private unnamed_addr constant [26 x i8] c"Writing lattice file: %s\0A\00", align 1
@.str36 = private unnamed_addr constant [26 x i8] c"fopen_comp (%s,w) failed\0A\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"# getcwd: %s\0A\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"-logbase\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"# -logbase %e\0A\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"# -dict %s\0A\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"-dict\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"-fdict\00", align 1
@.str43 = private unnamed_addr constant [13 x i8] c"# -fdict %s\0A\00", align 1
@.str44 = private unnamed_addr constant [10 x i8] c"# -lm %s\0A\00", align 1
@.str45 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str46 = private unnamed_addr constant [12 x i8] c"# -mdef %s\0A\00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c"-mdef\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"# -mean %s\0A\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"-mean\00", align 1
@.str50 = private unnamed_addr constant [11 x i8] c"# -var %s\0A\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"-var\00", align 1
@.str52 = private unnamed_addr constant [12 x i8] c"# -mixw %s\0A\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"-mixw\00", align 1
@.str54 = private unnamed_addr constant [12 x i8] c"# -tmat %s\0A\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"-tmat\00", align 1
@.str56 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str57 = private unnamed_addr constant [11 x i8] c"Frames %d\0A\00", align 1
@.str58 = private unnamed_addr constant [14 x i8] c"-outlatoldfmt\00", align 1
@.str59 = private unnamed_addr constant [21 x i8] c"%s: No recognition\0A\0A\00", align 1
@.str60 = private unnamed_addr constant [131 x i8] c"%4d frm;  %4d sen, %5d gau/fr, Sen %4.2f CPU %4.2f Clk [Ovrhd %4.2f CPU %4.2f Clk];  %5d hmm, %3d wd/fr, %4.2f CPU %4.2f Clk (%s)\0A\00", align 1
@.str61 = private unnamed_addr constant [20 x i8] c"HMMHist[0..%d](%s):\00", align 1
@.str62 = private unnamed_addr constant [8 x i8] c" %d(%d)\00", align 1
@utt_word_trans.bs = internal unnamed_addr global i32* null, align 8
@utt_word_trans.bv = internal unnamed_addr global i32* null, align 8
@utt_word_trans.epl = internal unnamed_addr global i32 0, align 4
@.str63 = private unnamed_addr constant [5 x i8] c"-epl\00", align 1
@.str64 = private unnamed_addr constant [11 x i8] c"-pheurtype\00", align 1
@.str65 = private unnamed_addr constant [26 x i8] c"Fr %d Lextree %d #HMM %d\0A\00", align 1
@.str66 = private unnamed_addr constant [63 x i8] c"***ERROR*** Fr %d, best HMM score > 0 (%d); int32 wraparound?\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @matchseg_write(%struct._IO_FILE* nocapture %fp, %struct.kb_t* nocapture %kb, %struct.gnode_s* %hyp, i8* %hdr) #0 {
entry:
  %tobool47 = icmp eq %struct.gnode_s* %hyp, null
  br i1 %tobool47, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %gn.050 = phi %struct.gnode_s* [ %5, %for.body ], [ %hyp, %entry ]
  %lscr.049 = phi i32 [ %add3, %for.body ], [ 0, %entry ]
  %ascr.048 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.050, i64 0, i32 0, i32 0
  %0 = load i8** %ptr, align 8, !tbaa !0
  %ascr1 = getelementptr inbounds i8* %0, i64 16
  %1 = bitcast i8* %ascr1 to i32*
  %2 = load i32* %1, align 4, !tbaa !3
  %add = add nsw i32 %2, %ascr.048
  %lscr2 = getelementptr inbounds i8* %0, i64 20
  %3 = bitcast i8* %lscr2 to i32*
  %4 = load i32* %3, align 4, !tbaa !3
  %add3 = add nsw i32 %4, %lscr.049
  %next = getelementptr inbounds %struct.gnode_s* %gn.050, i64 0, i32 1
  %5 = load %struct.gnode_s** %next, align 8, !tbaa !0
  %tobool = icmp eq %struct.gnode_s* %5, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %lscr.0.lcssa = phi i32 [ 0, %entry ], [ %add3, %for.body ]
  %ascr.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %6 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %dict4 = getelementptr inbounds %struct.kbcore_t* %6, i64 0, i32 2
  %7 = load %struct.dict_t** %dict4, align 8, !tbaa !0
  %tobool5 = icmp ne i8* %hdr, null
  %cond = select i1 %tobool5, i8* %hdr, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %uttid = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 33
  %8 = load i8** %uttid, align 8, !tbaa !0
  %add6 = add nsw i32 %lscr.0.lcssa, %ascr.0.lcssa
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i8* %cond, i8* %8, i32 %add6, i32 %ascr.0.lcssa, i32 %lscr.0.lcssa) #5
  br i1 %tobool47, label %for.end20, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.end
  %word = getelementptr inbounds %struct.dict_t* %7, i64 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body11
  %gn.146 = phi %struct.gnode_s* [ %hyp, %land.rhs.lr.ph ], [ %20, %for.body11 ]
  %next9 = getelementptr inbounds %struct.gnode_s* %gn.146, i64 0, i32 1
  %9 = load %struct.gnode_s** %next9, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.gnode_s* %9, null
  br i1 %tobool10, label %for.end20, label %for.body11

for.body11:                                       ; preds = %land.rhs
  %ptr13 = getelementptr inbounds %struct.gnode_s* %gn.146, i64 0, i32 0, i32 0
  %10 = load i8** %ptr13, align 8, !tbaa !0
  %sf = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %sf to i32*
  %12 = load i32* %11, align 4, !tbaa !3
  %ascr14 = getelementptr inbounds i8* %10, i64 16
  %13 = bitcast i8* %ascr14 to i32*
  %14 = load i32* %13, align 4, !tbaa !3
  %lscr15 = getelementptr inbounds i8* %10, i64 20
  %15 = bitcast i8* %lscr15 to i32*
  %16 = load i32* %15, align 4, !tbaa !3
  %id = bitcast i8* %10 to i32*
  %17 = load i32* %id, align 4, !tbaa !3
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %word16 = getelementptr inbounds %struct.dictword_t* %18, i64 %idxprom, i32 0
  %19 = load i8** %word16, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i8* %19) #5
  %20 = load %struct.gnode_s** %next9, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.gnode_s* %20, null
  br i1 %tobool8, label %for.end20, label %land.rhs

for.end20:                                        ; preds = %for.body11, %land.rhs, %for.end
  %nfr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 8
  %21 = load i32* %nfr, align 4, !tbaa !3
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 %21) #5
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @match_write(%struct._IO_FILE* nocapture %fp, %struct.kb_t* nocapture %kb, %struct.gnode_s* %hyp, i8* nocapture %hdr) #0 {
entry:
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %0 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %dict1 = getelementptr inbounds %struct.kbcore_t* %0, i64 0, i32 2
  %1 = load %struct.dict_t** %dict1, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.gnode_s* %hyp, null
  br i1 %tobool31, label %if.then13, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %finishwid = getelementptr inbounds %struct.dict_t* %1, i64 0, i32 12
  %word = getelementptr inbounds %struct.dict_t* %1, i64 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end
  %counter.033 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end ]
  %gn.032 = phi %struct.gnode_s* [ %hyp, %land.rhs.lr.ph ], [ %10, %if.end ]
  %next = getelementptr inbounds %struct.gnode_s* %gn.032, i64 0, i32 1
  %2 = load %struct.gnode_s** %next, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.gnode_s* %2, null
  br i1 %tobool2, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.032, i64 0, i32 0, i32 0
  %3 = load i8** %ptr, align 8, !tbaa !0
  %id = bitcast i8* %3 to i32*
  %4 = load i32* %id, align 4, !tbaa !3
  %call = tail call i32 @dict_filler_word(%struct.dict_t* %1, i32 %4) #5
  %tobool3 = icmp eq i32 %call, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32* %id, align 4, !tbaa !3
  %6 = load i32* %finishwid, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom = sext i32 %5 to i64
  %7 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %basewid = getelementptr inbounds %struct.dictword_t* %7, i64 %idxprom, i32 4
  %8 = load i32* %basewid, align 4, !tbaa !3
  %idxprom6 = sext i32 %8 to i64
  %word9 = getelementptr inbounds %struct.dictword_t* %7, i64 %idxprom6, i32 0
  %9 = load i8** %word9, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* %9) #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body, %if.then
  %inc = add nsw i32 %counter.033, 1
  %10 = load %struct.gnode_s** %next, align 8, !tbaa !0
  %tobool = icmp eq %struct.gnode_s* %10, null
  br i1 %tobool, label %for.end, label %land.rhs

for.end:                                          ; preds = %if.end, %land.rhs
  %counter.0.lcssa = phi i32 [ %counter.033, %land.rhs ], [ %inc, %if.end ]
  %cmp12 = icmp eq i32 %counter.0.lcssa, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %entry, %for.end
  %fputc = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fp)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.end
  %uttid = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 33
  %11 = load i8** %uttid, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %11) #5
  %call17 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  ret void
}

; Function Attrs: optsize
declare i32 @dict_filler_word(%struct.dict_t*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @utt_begin(%struct.kb_t* %kb) #0 {
entry:
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %0 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %vithist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 6
  %1 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %call = tail call i32 @vithist_utt_begin(%struct.vithist_t* %1, %struct.kbcore_t* %0) #5
  %ugtree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  %2 = load %struct.lextree_t*** %ugtree, align 8, !tbaa !0
  %3 = load %struct.lextree_t** %2, align 8, !tbaa !0
  %mdef = getelementptr inbounds %struct.kbcore_t* %0, i64 0, i32 1
  %4 = load %struct.mdef_t** %mdef, align 8, !tbaa !0
  %sil = getelementptr inbounds %struct.mdef_t* %4, i64 0, i32 14
  %5 = load i8* %sil, align 1, !tbaa !1
  %beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 22
  %6 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %hmm = getelementptr inbounds %struct.beam_t* %6, i64 0, i32 1
  %7 = load i32* %hmm, align 4, !tbaa !3
  tail call void @lextree_enter(%struct.lextree_t* %3, i8 signext %5, i32 -1, i32 0, i32 %call, i32 %7) #5
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  %8 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %9 = load %struct.lextree_t** %8, align 8, !tbaa !0
  %10 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %hmm8 = getelementptr inbounds %struct.beam_t* %10, i64 0, i32 1
  %11 = load i32* %hmm8, align 4, !tbaa !3
  tail call void @lextree_enter(%struct.lextree_t* %9, i8 signext -1, i32 -1, i32 0, i32 %call, i32 %11) #5
  %n_lextrans = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 5
  store i32 1, i32* %n_lextrans, align 4, !tbaa !3
  tail call void @kb_lextree_active_swap(%struct.kb_t* %kb) #5
  ret void
}

; Function Attrs: optsize
declare i32 @vithist_utt_begin(%struct.vithist_t*, %struct.kbcore_t*) #2

; Function Attrs: optsize
declare void @lextree_enter(%struct.lextree_t*, i8 signext, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare void @kb_lextree_active_swap(%struct.kb_t*) #2

; Function Attrs: nounwind optsize uwtable
define void @utt_end(%struct.kb_t* %kb) #0 {
entry:
  %file = alloca [8192 x i8], align 16
  %str = alloca [16384 x i8], align 16
  %ispipe = alloca i32, align 4
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %1 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %dict1 = getelementptr inbounds %struct.kbcore_t* %1, i64 0, i32 2
  %2 = load %struct.dict_t** %dict1, align 8, !tbaa !0
  call void @kb_freehyps(%struct.kb_t* %kb) #5
  %vithist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 6
  %3 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %4 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %call = call i32 @vithist_utt_end(%struct.vithist_t* %3, %struct.kbcore_t* %4) #5
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else173

if.then:                                          ; preds = %entry
  %call3 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0)) #5
  %tobool = icmp eq i8* %call3, null
  br i1 %tobool, label %if.then.if.end18_crit_edge, label %if.then4

if.then.if.end18_crit_edge:                       ; preds = %if.then
  %uttid21.pre = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 33
  br label %if.end18

if.then4:                                         ; preds = %if.then
  %5 = getelementptr inbounds [8192 x i8]* %file, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %5) #3
  %call5 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0)) #5
  %uttid = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 33
  %6 = load i8** %uttid, align 8, !tbaa !0
  %call6 = call i32 (i8*, i8*, ...)* @sprintf(i8* %5, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i8* %call5, i8* %6) #5
  %call8 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #5
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then4
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 199, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i8* %5) #5
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then4
  %latfp.0 = phi %struct._IO_FILE* [ %7, %if.then10 ], [ %call8, %if.then4 ]
  %8 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %9 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  call void @vithist_dump(%struct.vithist_t* %8, i32 -1, %struct.kbcore_t* %9, %struct._IO_FILE* %latfp.0) #5
  %10 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %cmp14 = icmp eq %struct._IO_FILE* %latfp.0, %10
  br i1 %cmp14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end
  %call16 = call i32 @fclose(%struct._IO_FILE* %latfp.0) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then.if.end18_crit_edge, %if.then15, %if.end
  %uttid21.pre-phi = phi i8** [ %uttid21.pre, %if.then.if.end18_crit_edge ], [ %uttid, %if.then15 ], [ %uttid, %if.end ]
  %11 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %call20 = call %struct.gnode_s* @vithist_backtrace(%struct.vithist_t* %11, i32 %call) #5
  %12 = load i8** %uttid21.pre-phi, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0), i8* %12) #5
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #5
  %tobool24420 = icmp eq %struct.gnode_s* %call20, null
  br i1 %tobool24420, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  %hyp_seglen53.pre = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 51
  %hyp_strlen56.pre = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 53
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %word = getelementptr inbounds %struct.dict_t* %2, i64 0, i32 4
  %hyp_seglen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 51
  %finishwid = getelementptr inbounds %struct.dict_t* %2, i64 0, i32 12
  %hyp_strlen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 53
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %ascr.0423 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  %lscr.0422 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %for.inc ]
  %gn.0421 = phi %struct.gnode_s* [ %call20, %for.body.lr.ph ], [ %39, %for.inc ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.0421, i64 0, i32 0, i32 0
  %13 = load i8** %ptr, align 8, !tbaa !0
  %vhid = getelementptr inbounds i8* %13, i64 4
  %14 = bitcast i8* %vhid to i32*
  %15 = load i32* %14, align 4, !tbaa !3
  %sf = getelementptr inbounds i8* %13, i64 8
  %16 = bitcast i8* %sf to i32*
  %17 = load i32* %16, align 4, !tbaa !3
  %ef = getelementptr inbounds i8* %13, i64 12
  %18 = bitcast i8* %ef to i32*
  %19 = load i32* %18, align 4, !tbaa !3
  %ascr25 = getelementptr inbounds i8* %13, i64 16
  %20 = bitcast i8* %ascr25 to i32*
  %21 = load i32* %20, align 4, !tbaa !3
  %lscr26 = getelementptr inbounds i8* %13, i64 20
  %22 = bitcast i8* %lscr26 to i32*
  %23 = load i32* %22, align 4, !tbaa !3
  %type = getelementptr inbounds i8* %13, i64 24
  %24 = bitcast i8* %type to i32*
  %25 = load i32* %24, align 4, !tbaa !3
  %id27 = bitcast i8* %13 to i32*
  %26 = load i32* %id27, align 4, !tbaa !3
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %word28 = getelementptr inbounds %struct.dictword_t* %27, i64 %idxprom, i32 0
  %28 = load i8** %word28, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i8* %28) #5
  %29 = load i32* %20, align 4, !tbaa !3
  %add = add nsw i32 %29, %ascr.0423
  %30 = load i32* %22, align 4, !tbaa !3
  %add32 = add nsw i32 %30, %lscr.0422
  %31 = load i32* %hyp_seglen, align 4, !tbaa !3
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %hyp_seglen, align 4, !tbaa !3
  %32 = load i32* %id27, align 4, !tbaa !3
  %call34 = call i32 @dict_filler_word(%struct.dict_t* %2, i32 %32) #5
  %tobool35 = icmp eq i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %33 = load i32* %id27, align 4, !tbaa !3
  %34 = load i32* %finishwid, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %33, %34
  br i1 %cmp37, label %for.inc, label %if.then38

if.then38:                                        ; preds = %land.lhs.true
  %idxprom40 = sext i32 %33 to i64
  %35 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %basewid = getelementptr inbounds %struct.dictword_t* %35, i64 %idxprom40, i32 4
  %36 = load i32* %basewid, align 4, !tbaa !3
  %idxprom43 = sext i32 %36 to i64
  %word46 = getelementptr inbounds %struct.dictword_t* %35, i64 %idxprom43, i32 0
  %37 = load i8** %word46, align 8, !tbaa !0
  %call47 = call i64 @strlen(i8* %37) #6
  %add48 = add i64 %call47, 1
  %38 = load i32* %hyp_strlen, align 4, !tbaa !3
  %conv406 = zext i32 %38 to i64
  %add49 = add i64 %add48, %conv406
  %conv50 = trunc i64 %add49 to i32
  store i32 %conv50, i32* %hyp_strlen, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then38
  %next = getelementptr inbounds %struct.gnode_s* %gn.0421, i64 0, i32 1
  %39 = load %struct.gnode_s** %next, align 8, !tbaa !0
  %tobool24 = icmp eq %struct.gnode_s* %39, null
  br i1 %tobool24, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end18.for.end_crit_edge
  %hyp_strlen56.pre-phi = phi i32* [ %hyp_strlen56.pre, %if.end18.for.end_crit_edge ], [ %hyp_strlen, %for.inc ]
  %hyp_seglen53.pre-phi = phi i32* [ %hyp_seglen53.pre, %if.end18.for.end_crit_edge ], [ %hyp_seglen, %for.inc ]
  %ascr.0.lcssa = phi i32 [ 0, %if.end18.for.end_crit_edge ], [ %add, %for.inc ]
  %lscr.0.lcssa = phi i32 [ 0, %if.end18.for.end_crit_edge ], [ %add32, %for.inc ]
  %nfr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 8
  %40 = load i32* %nfr, align 4, !tbaa !3
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i32 0, i32 %40, i32 %ascr.0.lcssa, i32 %lscr.0.lcssa) #5
  %41 = load i32* %hyp_seglen53.pre-phi, align 4, !tbaa !3
  %conv54 = sext i32 %41 to i64
  %call55 = call i8* @__ckd_calloc__(i64 %conv54, i64 8, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 234) #5
  %42 = bitcast i8* %call55 to %struct.hyp_t**
  %hyp_segs = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 50
  store %struct.hyp_t** %42, %struct.hyp_t*** %hyp_segs, align 8, !tbaa !0
  %43 = load i32* %hyp_strlen56.pre-phi, align 4, !tbaa !3
  %add57 = add nsw i32 %43, 1
  %conv58 = sext i32 %add57 to i64
  %call59 = call i8* @__ckd_calloc__(i64 %conv58, i64 1, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 235) #5
  %hyp_str = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 52
  store i8* %call59, i8** %hyp_str, align 8, !tbaa !0
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0)
  br i1 %tobool24420, label %for.end95, label %for.body64.lr.ph

for.body64.lr.ph:                                 ; preds = %for.end
  %finishwid76 = getelementptr inbounds %struct.dict_t* %2, i64 0, i32 12
  %word82 = getelementptr inbounds %struct.dict_t* %2, i64 0, i32 4
  br label %for.body64

for.body64:                                       ; preds = %for.body64.lr.ph, %for.inc93
  %indvars.iv429 = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next430, %for.inc93 ]
  %hyp_strptr.0419 = phi i8* [ %call59, %for.body64.lr.ph ], [ %hyp_strptr.1, %for.inc93 ]
  %gn.1417 = phi %struct.gnode_s* [ %call20, %for.body64.lr.ph ], [ %55, %for.inc93 ]
  %ptr66 = getelementptr inbounds %struct.gnode_s* %gn.1417, i64 0, i32 0, i32 0
  %45 = load i8** %ptr66, align 8, !tbaa !0
  %46 = bitcast i8* %45 to %struct.hyp_t*
  %indvars.iv.next430 = add i64 %indvars.iv429, 1
  %47 = load %struct.hyp_t*** %hyp_segs, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds %struct.hyp_t** %47, i64 %indvars.iv429
  store %struct.hyp_t* %46, %struct.hyp_t** %arrayidx70, align 8, !tbaa !0
  %id71 = bitcast i8* %45 to i32*
  %48 = load i32* %id71, align 4, !tbaa !3
  %call72 = call i32 @dict_filler_word(%struct.dict_t* %2, i32 %48) #5
  %tobool73 = icmp eq i32 %call72, 0
  br i1 %tobool73, label %land.lhs.true74, label %for.inc93

land.lhs.true74:                                  ; preds = %for.body64
  %49 = load i32* %id71, align 4, !tbaa !3
  %50 = load i32* %finishwid76, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %49, %50
  br i1 %cmp77, label %for.inc93, label %if.then79

if.then79:                                        ; preds = %land.lhs.true74
  %idxprom81 = sext i32 %49 to i64
  %51 = load %struct.dictword_t** %word82, align 8, !tbaa !0
  %basewid84 = getelementptr inbounds %struct.dictword_t* %51, i64 %idxprom81, i32 4
  %52 = load i32* %basewid84, align 4, !tbaa !3
  %idxprom85 = sext i32 %52 to i64
  %word88 = getelementptr inbounds %struct.dictword_t* %51, i64 %idxprom85, i32 0
  %53 = load i8** %word88, align 8, !tbaa !0
  %call89 = call i8* @strcat(i8* %hyp_strptr.0419, i8* %53) #5
  %call90 = call i64 @strlen(i8* %hyp_strptr.0419) #6
  %add.ptr = getelementptr inbounds i8* %hyp_strptr.0419, i64 %call90
  %strlen = call i64 @strlen(i8* %add.ptr)
  %add.ptr.sum407 = add i64 %strlen, %call90
  %endptr = getelementptr i8* %hyp_strptr.0419, i64 %add.ptr.sum407
  %54 = bitcast i8* %endptr to i16*
  store i16 32, i16* %54, align 1
  %add.ptr.sum = add i64 %call90, 1
  %incdec.ptr = getelementptr inbounds i8* %hyp_strptr.0419, i64 %add.ptr.sum
  br label %for.inc93

for.inc93:                                        ; preds = %land.lhs.true74, %for.body64, %if.then79
  %hyp_strptr.1 = phi i8* [ %hyp_strptr.0419, %for.body64 ], [ %incdec.ptr, %if.then79 ], [ %hyp_strptr.0419, %land.lhs.true74 ]
  %next94 = getelementptr inbounds %struct.gnode_s* %gn.1417, i64 0, i32 1
  %55 = load %struct.gnode_s** %next94, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.gnode_s* %55, null
  br i1 %tobool63, label %for.end95, label %for.body64

for.end95:                                        ; preds = %for.inc93, %for.end
  %56 = load i32* %hyp_strlen56.pre-phi, align 4, !tbaa !3
  %idxprom97 = sext i32 %56 to i64
  %57 = load i8** %hyp_str, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i8* %57, i64 %idxprom97
  store i8 0, i8* %arrayidx99, align 1, !tbaa !1
  %58 = load i8** %hyp_str, align 8, !tbaa !0
  %59 = load i8** %uttid21.pre-phi, align 8, !tbaa !0
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i8* %58, i8* %59) #5
  %matchsegfp = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 49
  %60 = load %struct._IO_FILE** %matchsegfp, align 8, !tbaa !0
  %tobool103 = icmp eq %struct._IO_FILE* %60, null
  br i1 %tobool103, label %if.end106, label %if.then104

if.then104:                                       ; preds = %for.end95
  call void @matchseg_write(%struct._IO_FILE* %60, %struct.kb_t* %kb, %struct.gnode_s* %call20, i8* null) #7
  br label %if.end106

if.end106:                                        ; preds = %for.end95, %if.then104
  call void @matchseg_write(%struct._IO_FILE* %0, %struct.kb_t* %kb, %struct.gnode_s* %call20, i8* getelementptr inbounds ([9 x i8]* @.str25, i64 0, i64 0)) #7
  %fputc410 = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  %61 = load i32* @confp_open, align 4, !tbaa !3
  %tobool108 = icmp eq i32 %61, 0
  br i1 %tobool108, label %if.then109, label %if.end115

if.then109:                                       ; preds = %if.end106
  %call110 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call110, %struct._IO_FILE** @confp, align 8, !tbaa !0
  %cmp111 = icmp eq %struct._IO_FILE* %call110, null
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then109
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 269, i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str29, i64 0, i64 0)) #5
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then109
  store i32 1, i32* @confp_open, align 4, !tbaa !3
  br label %if.end115

if.end115:                                        ; preds = %if.end106, %if.end114
  %62 = load %struct._IO_FILE** @confp, align 8, !tbaa !0
  %63 = load i64* @considered, align 8, !tbaa !4
  %64 = load i8** %uttid21.pre-phi, align 8, !tbaa !0
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([34 x i8]* @.str30, i64 0, i64 0), i64 %63, i8* %64) #5
  %65 = load i64* @considered, align 8, !tbaa !4
  %66 = load i64* @tot_considered, align 8, !tbaa !4
  %add118 = add nsw i64 %66, %65
  store i64 %add118, i64* @tot_considered, align 8, !tbaa !4
  store i64 0, i64* @considered, align 8, !tbaa !4
  %matchfp = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 48
  %67 = load %struct._IO_FILE** %matchfp, align 8, !tbaa !0
  %tobool119 = icmp eq %struct._IO_FILE* %67, null
  br i1 %tobool119, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.end115
  call void @match_write(%struct._IO_FILE* %67, %struct.kb_t* %kb, %struct.gnode_s* %call20, i8* undef) #7
  br label %if.end122

if.end122:                                        ; preds = %if.end115, %if.then120
  %call123 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0)) #5
  %tobool124 = icmp eq i8* %call123, null
  br i1 %tobool124, label %if.end172, label %if.then125

if.then125:                                       ; preds = %if.end122
  %68 = getelementptr inbounds [16384 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %68) #3
  %call127 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0)) #5
  %69 = load i8** %uttid21.pre-phi, align 8, !tbaa !0
  %call129 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0)) #5
  %call130 = call i32 (i8*, i8*, ...)* @sprintf(i8* %68, i8* getelementptr inbounds ([9 x i8]* @.str32, i64 0, i64 0), i8* %call127, i8* %69, i8* %call129) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 289, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([26 x i8]* @.str35, i64 0, i64 0), i8* %68) #5
  %call133 = call %struct._IO_FILE* @fopen_comp(i8* %68, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0), i32* %ispipe) #5
  %cmp134 = icmp eq %struct._IO_FILE* %call133, null
  br i1 %cmp134, label %if.then136, label %if.else

if.then136:                                       ; preds = %if.then125
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 292, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([26 x i8]* @.str36, i64 0, i64 0), i8* %68) #5
  br label %if.end172

if.else:                                          ; preds = %if.then125
  %call139 = call i8* @getcwd(i8* %68, i64 16384) #5
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0), i8* %68) #5
  %call142 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0)) #5
  %70 = bitcast i8* %call142 to float*
  %71 = load float* %70, align 4, !tbaa !5
  %conv143 = fpext float %71 to double
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0), double %conv143) #5
  %call145 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0)) #5
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0), i8* %call145) #5
  %call147 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0)) #5
  %tobool148 = icmp eq i8* %call147, null
  br i1 %tobool148, label %if.end152, label %if.then149

if.then149:                                       ; preds = %if.else
  %call150 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0)) #5
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([13 x i8]* @.str43, i64 0, i64 0), i8* %call150) #5
  br label %if.end152

if.end152:                                        ; preds = %if.else, %if.then149
  %call153 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8]* @.str45, i64 0, i64 0)) #5
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i8* %call153) #5
  %call155 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str47, i64 0, i64 0)) #5
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), i8* %call155) #5
  %call157 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0)) #5
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0), i8* %call157) #5
  %call159 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0)) #5
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([11 x i8]* @.str50, i64 0, i64 0), i8* %call159) #5
  %call161 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0)) #5
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([12 x i8]* @.str52, i64 0, i64 0), i8* %call161) #5
  %call163 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0)) #5
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([12 x i8]* @.str54, i64 0, i64 0), i8* %call163) #5
  %72 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %call133)
  %73 = load i32* %nfr, align 4, !tbaa !3
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call133, i8* getelementptr inbounds ([11 x i8]* @.str57, i64 0, i64 0), i32 %73) #5
  %74 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %call133)
  %75 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %call170 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([14 x i8]* @.str58, i64 0, i64 0)) #5
  %76 = bitcast i8* %call170 to i32*
  %77 = load i32* %76, align 4, !tbaa !3
  call void @vithist_dag_write(%struct.vithist_t* %75, %struct.gnode_s* %call20, %struct.dict_t* %2, i32 %77, %struct._IO_FILE* %call133) #5
  %78 = load i32* %ispipe, align 4, !tbaa !3
  call void @fclose_comp(%struct._IO_FILE* %call133, i32 %78) #5
  br label %if.end172

if.end172:                                        ; preds = %if.then136, %if.end152, %if.end122
  call void @glist_free(%struct.gnode_s* %call20) #5
  br label %if.end175

if.else173:                                       ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 328, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0)) #5
  %uttid174 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 33
  %79 = load i8** %uttid174, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([21 x i8]* @.str59, i64 0, i64 0), i8* %79) #5
  %nfr176.pre = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 8
  br label %if.end175

if.end175:                                        ; preds = %if.else173, %if.end172
  %nfr176.pre-phi = phi i32* [ %nfr176.pre, %if.else173 ], [ %nfr, %if.end172 ]
  call void @_E__pr_info_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 337, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #5
  %80 = load i32* %nfr176.pre-phi, align 4, !tbaa !3
  %utt_sen_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 35
  %81 = load i32* %utt_sen_eval, align 4, !tbaa !3
  %shr = ashr i32 %80, 1
  %add178 = add nsw i32 %81, %shr
  %div = sdiv i32 %add178, %80
  %utt_gau_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 36
  %82 = load i32* %utt_gau_eval, align 4, !tbaa !3
  %add182 = add nsw i32 %82, %shr
  %div184 = sdiv i32 %add182, %80
  %utt_hmm_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 34
  %83 = load i32* %utt_hmm_eval, align 4, !tbaa !3
  %add187 = add nsw i32 %83, %shr
  %div189 = sdiv i32 %add187, %80
  %84 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %n_entry = getelementptr inbounds %struct.vithist_t* %84, i64 0, i32 2
  %85 = load i32* %n_entry, align 4, !tbaa !3
  %add193 = add nsw i32 %85, %shr
  %div195 = sdiv i32 %add193, %80
  %uttid196 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 33
  %86 = load i8** %uttid196, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([131 x i8]* @.str60, i64 0, i64 0), i32 %80, i32 %div, i32 %div184, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 %div189, i32 %div195, double 0.000000e+00, double 0.000000e+00, i8* %86) #5
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 38
  %87 = load i32* %hmm_hist_bins, align 4, !tbaa !3
  %hmm_hist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 37
  %88 = sext i32 %87 to i64
  br label %for.cond197

for.cond197:                                      ; preds = %land.rhs, %if.end175
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %land.rhs ], [ %88, %if.end175 ]
  %j.0.in = phi i32 [ %j.0, %land.rhs ], [ %87, %if.end175 ]
  %indvars.iv.next428 = add i64 %indvars.iv427, -1
  %j.0 = add nsw i32 %j.0.in, -1
  %89 = trunc i64 %indvars.iv427 to i32
  %cmp198 = icmp sgt i32 %89, 0
  br i1 %cmp198, label %land.rhs, label %for.end206

land.rhs:                                         ; preds = %for.cond197
  %90 = load i32** %hmm_hist, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32* %90, i64 %indvars.iv.next428
  %91 = load i32* %arrayidx201, align 4, !tbaa !3
  %cmp202 = icmp eq i32 %91, 0
  br i1 %cmp202, label %for.cond197, label %for.end206

for.end206:                                       ; preds = %for.cond197, %land.rhs
  call void @_E__pr_info_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 375, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #5
  %92 = load i8** %uttid196, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([20 x i8]* @.str61, i64 0, i64 0), i32 %j.0, i8* %92) #5
  %cmp209413 = icmp slt i32 %j.0.in, 1
  br i1 %cmp209413, label %for.end224, label %for.body211

for.body211:                                      ; preds = %for.end206, %for.body211
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %for.body211 ], [ 0, %for.end206 ]
  %k.0415 = phi i32 [ %add215, %for.body211 ], [ 0, %for.end206 ]
  %93 = load i32** %hmm_hist, align 8, !tbaa !0
  %arrayidx214 = getelementptr inbounds i32* %93, i64 %indvars.iv425
  %94 = load i32* %arrayidx214, align 4, !tbaa !3
  %add215 = add nsw i32 %94, %k.0415
  %95 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %mul = mul nsw i32 %add215, 100
  %96 = load i32* %nfr176.pre-phi, align 4, !tbaa !3
  %div220 = sdiv i32 %mul, %96
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([8 x i8]* @.str62, i64 0, i64 0), i32 %94, i32 %div220) #5
  %indvars.iv.next426 = add i64 %indvars.iv425, 1
  %97 = trunc i64 %indvars.iv425 to i32
  %cmp209 = icmp slt i32 %97, %j.0
  br i1 %cmp209, label %for.body211, label %for.end224

for.end224:                                       ; preds = %for.body211, %for.end206
  %98 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %98)
  %99 = load i32* %utt_sen_eval, align 4, !tbaa !3
  %conv227 = sitofp i32 %99 to double
  %tot_sen_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 44
  %100 = load double* %tot_sen_eval, align 8, !tbaa !6
  %add228 = fadd double %100, %conv227
  store double %add228, double* %tot_sen_eval, align 8, !tbaa !6
  %101 = load i32* %utt_gau_eval, align 4, !tbaa !3
  %conv230 = sitofp i32 %101 to double
  %tot_gau_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 45
  %102 = load double* %tot_gau_eval, align 8, !tbaa !6
  %add231 = fadd double %102, %conv230
  store double %add231, double* %tot_gau_eval, align 8, !tbaa !6
  %103 = load i32* %utt_hmm_eval, align 4, !tbaa !3
  %conv233 = sitofp i32 %103 to double
  %tot_hmm_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 46
  %104 = load double* %tot_hmm_eval, align 8, !tbaa !6
  %add234 = fadd double %104, %conv233
  store double %add234, double* %tot_hmm_eval, align 8, !tbaa !6
  %105 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %n_entry236 = getelementptr inbounds %struct.vithist_t* %105, i64 0, i32 2
  %106 = load i32* %n_entry236, align 4, !tbaa !3
  %conv237 = sitofp i32 %106 to double
  %tot_wd_exit = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 47
  %107 = load double* %tot_wd_exit, align 8, !tbaa !6
  %add238 = fadd double %107, %conv237
  store double %add238, double* %tot_wd_exit, align 8, !tbaa !6
  %tm_sen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 40
  call void @ptmr_reset(%struct.ptmr_t* %tm_sen) #5
  %tm_srch = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 41
  call void @ptmr_reset(%struct.ptmr_t* %tm_srch) #5
  %tm_ovrhd = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 42
  call void @ptmr_reset(%struct.ptmr_t* %tm_ovrhd) #5
  %n_lextree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 1
  %108 = load i32* %n_lextree, align 4, !tbaa !3
  %cmp240411 = icmp sgt i32 %108, 0
  br i1 %cmp240411, label %for.body242.lr.ph, label %for.end251

for.body242.lr.ph:                                ; preds = %for.end224
  %ugtree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  br label %for.body242

for.body242:                                      ; preds = %for.body242.lr.ph, %for.body242
  %indvars.iv = phi i64 [ 0, %for.body242.lr.ph ], [ %indvars.iv.next, %for.body242 ]
  %109 = load %struct.lextree_t*** %ugtree, align 8, !tbaa !0
  %arrayidx244 = getelementptr inbounds %struct.lextree_t** %109, i64 %indvars.iv
  %110 = load %struct.lextree_t** %arrayidx244, align 8, !tbaa !0
  %111 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  call void @lextree_utt_end(%struct.lextree_t* %110, %struct.kbcore_t* %111) #5
  %112 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %arrayidx247 = getelementptr inbounds %struct.lextree_t** %112, i64 %indvars.iv
  %113 = load %struct.lextree_t** %arrayidx247, align 8, !tbaa !0
  %114 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  call void @lextree_utt_end(%struct.lextree_t* %113, %struct.kbcore_t* %114) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %115 = load i32* %n_lextree, align 4, !tbaa !3
  %116 = trunc i64 %indvars.iv.next to i32
  %cmp240 = icmp slt i32 %116, %115
  br i1 %cmp240, label %for.body242, label %for.end251

for.end251:                                       ; preds = %for.body242, %for.end224
  %117 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  call void @vithist_utt_reset(%struct.vithist_t* %117) #5
  %118 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %lm = getelementptr inbounds %struct.kbcore_t* %118, i64 0, i32 4
  %119 = load %struct.lm_s** %lm, align 8, !tbaa !0
  call void @lm_cache_stats_dump(%struct.lm_s* %119) #5
  %120 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %lm255 = getelementptr inbounds %struct.kbcore_t* %120, i64 0, i32 4
  %121 = load %struct.lm_s** %lm255, align 8, !tbaa !0
  call void @lm_cache_reset(%struct.lm_s* %121) #5
  ret void
}

; Function Attrs: optsize
declare void @kb_freehyps(%struct.kb_t*) #2

; Function Attrs: optsize
declare i32 @vithist_utt_end(%struct.vithist_t*, %struct.kbcore_t*) #2

; Function Attrs: optsize
declare i8* @cmd_ln_access(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #2

; Function Attrs: optsize
declare void @vithist_dump(%struct.vithist_t*, i32, %struct.kbcore_t*, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct.gnode_s* @vithist_backtrace(%struct.vithist_t*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @fopen_comp(i8*, i8*, i32*) #2

; Function Attrs: nounwind optsize
declare i8* @getcwd(i8*, i64) #1

; Function Attrs: optsize
declare void @vithist_dag_write(%struct.vithist_t*, %struct.gnode_s*, %struct.dict_t*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @fclose_comp(%struct._IO_FILE*, i32) #2

; Function Attrs: optsize
declare void @glist_free(%struct.gnode_s*) #2

; Function Attrs: optsize
declare void @ptmr_reset(%struct.ptmr_t*) #2

; Function Attrs: optsize
declare void @lextree_utt_end(%struct.lextree_t*, %struct.kbcore_t*) #2

; Function Attrs: optsize
declare void @vithist_utt_reset(%struct.vithist_t*) #2

; Function Attrs: optsize
declare void @lm_cache_stats_dump(%struct.lm_s*) #2

; Function Attrs: optsize
declare void @lm_cache_reset(%struct.lm_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @utt_word_trans(%struct.kb_t* nocapture %kb, i32 %cf) #0 {
entry:
  %vithist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 6
  %0 = load %struct.vithist_t** %vithist, align 8, !tbaa !0
  %bestscore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 19
  %1 = load i32* %bestscore, align 4, !tbaa !3
  %beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 22
  %2 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %hmm = getelementptr inbounds %struct.beam_t* %2, i64 0, i32 1
  %3 = load i32* %hmm, align 4, !tbaa !3
  %add = add nsw i32 %3, %1
  %idxprom = sext i32 %cf to i64
  %bestvh = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 7
  %4 = load i32** %bestvh, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %6 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !0
  %dict1 = getelementptr inbounds %struct.kbcore_t* %6, i64 0, i32 2
  %7 = load %struct.dict_t** %dict1, align 8, !tbaa !0
  %mdef3 = getelementptr inbounds %struct.kbcore_t* %6, i64 0, i32 1
  %8 = load %struct.mdef_t** %mdef3, align 8, !tbaa !0
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %8, i64 0, i32 0
  %9 = load i32* %n_ciphone, align 4, !tbaa !3
  %10 = load i32** @utt_word_trans.bs, align 8, !tbaa !0
  %tobool = icmp eq i32* %10, null
  br i1 %tobool, label %if.then4, label %for.cond.preheader

if.then4:                                         ; preds = %if.end
  %conv = sext i32 %9 to i64
  %call = tail call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 439) #5
  %11 = bitcast i8* %call to i32*
  store i32* %11, i32** @utt_word_trans.bs, align 8, !tbaa !0
  %call6 = tail call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 440) #5
  %12 = bitcast i8* %call6 to i32*
  store i32* %12, i32** @utt_word_trans.bv, align 8, !tbaa !0
  %call7 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0)) #5
  %13 = bitcast i8* %call7 to i32*
  %14 = load i32* %13, align 4, !tbaa !3
  store i32 %14, i32* @utt_word_trans.epl, align 4, !tbaa !3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end, %if.then4
  %cmp9158 = icmp sgt i32 %9, 0
  br i1 %cmp9158, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %15 = load i32** @utt_word_trans.bs, align 8, !tbaa !0
  %16 = load i32** @utt_word_trans.bv, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv160 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next161, %for.body ]
  %arrayidx12 = getelementptr inbounds i32* %15, i64 %indvars.iv160
  store i32 -2147483648, i32* %arrayidx12, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds i32* %16, i64 %indvars.iv160
  store i32 -1, i32* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next161 = add i64 %indvars.iv160, 1
  %lftr.wideiv162 = trunc i64 %indvars.iv.next161 to i32
  %exitcond163 = icmp eq i32 %lftr.wideiv162, %9
  br i1 %exitcond163, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %frame_start = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 1
  %17 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %17, i64 %idxprom
  %18 = load i32* %arrayidx16, align 4, !tbaa !3
  %n_entry = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 2
  %19 = load i32* %n_entry, align 4, !tbaa !3
  %sub = add nsw i32 %19, -1
  %cmp18155 = icmp sgt i32 %18, %sub
  br i1 %cmp18155, label %for.end59, label %for.body20.lr.ph

for.body20.lr.ph:                                 ; preds = %for.end
  %word = getelementptr inbounds %struct.dict_t* %7, i64 0, i32 4
  %ciphone36 = getelementptr inbounds %struct.mdef_t* %8, i64 0, i32 7
  %sil = getelementptr inbounds %struct.mdef_t* %8, i64 0, i32 14
  br label %for.body20

for.body20:                                       ; preds = %for.inc57, %for.body20.lr.ph
  %vhid.0157 = phi i32 [ %18, %for.body20.lr.ph ], [ %inc58, %for.inc57 ]
  %maxpscore.0156 = phi i32 [ -2147483648, %for.body20.lr.ph ], [ %maxpscore.1, %for.inc57 ]
  %call21 = tail call %struct.vithist_entry_t* @vithist_id2entry(%struct.vithist_t* %0, i32 %vhid.0157) #5
  %valid = getelementptr inbounds %struct.vithist_entry_t* %call21, i64 0, i32 8
  %20 = load i32* %valid, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %20, 0
  br i1 %tobool22, label %for.inc57, label %if.end24

if.end24:                                         ; preds = %for.body20
  %wid25 = getelementptr inbounds %struct.vithist_entry_t* %call21, i64 0, i32 0
  %21 = load i32* %wid25, align 4, !tbaa !3
  %idxprom26 = sext i32 %21 to i64
  %22 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %pronlen = getelementptr inbounds %struct.dictword_t* %22, i64 %idxprom26, i32 2
  %23 = load i32* %pronlen, align 4, !tbaa !3
  %sub28 = add nsw i32 %23, -1
  %idxprom29 = sext i32 %sub28 to i64
  %ciphone = getelementptr inbounds %struct.dictword_t* %22, i64 %idxprom26, i32 1
  %24 = load i8** %ciphone, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i8* %24, i64 %idxprom29
  %25 = load i8* %arrayidx33, align 1, !tbaa !1
  %idxprom35 = sext i8 %25 to i64
  %26 = load %struct.ciphone_t** %ciphone36, align 8, !tbaa !0
  %filler = getelementptr inbounds %struct.ciphone_t* %26, i64 %idxprom35, i32 1
  %27 = load i32* %filler, align 4, !tbaa !3
  %tobool38 = icmp eq i32 %27, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end24
  %28 = load i8* %sil, align 1, !tbaa !1
  br label %if.end41

if.end41:                                         ; preds = %if.end24, %if.then39
  %p.1.in = phi i8 [ %28, %if.then39 ], [ %25, %if.end24 ]
  %score42 = getelementptr inbounds %struct.vithist_entry_t* %call21, i64 0, i32 5
  %29 = load i32* %score42, align 4, !tbaa !3
  %idxprom43 = sext i8 %p.1.in to i64
  %30 = load i32** @utt_word_trans.bs, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i32* %30, i64 %idxprom43
  %31 = load i32* %arrayidx44, align 4, !tbaa !3
  %cmp45 = icmp sgt i32 %29, %31
  br i1 %cmp45, label %if.then47, label %for.inc57

if.then47:                                        ; preds = %if.end41
  store i32 %29, i32* %arrayidx44, align 4, !tbaa !3
  %32 = load i32** @utt_word_trans.bv, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i32* %32, i64 %idxprom43
  store i32 %vhid.0157, i32* %arrayidx51, align 4, !tbaa !3
  %cmp52 = icmp slt i32 %maxpscore.0156, %29
  %.maxpscore.0 = select i1 %cmp52, i32 %29, i32 %maxpscore.0156
  br label %for.inc57

for.inc57:                                        ; preds = %if.then47, %for.body20, %if.end41
  %maxpscore.1 = phi i32 [ %maxpscore.0156, %if.end41 ], [ %maxpscore.0156, %for.body20 ], [ %.maxpscore.0, %if.then47 ]
  %inc58 = add nsw i32 %vhid.0157, 1
  %cmp18 = icmp slt i32 %vhid.0157, %sub
  br i1 %cmp18, label %for.body20, label %for.end59

for.end59:                                        ; preds = %for.inc57, %for.end
  %maxpscore.0.lcssa = phi i32 [ -2147483648, %for.end ], [ %maxpscore.1, %for.inc57 ]
  %n_lextrans = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 5
  %33 = load i32* %n_lextrans, align 4, !tbaa !3
  %inc60 = add nsw i32 %33, 1
  store i32 %inc60, i32* %n_lextrans, align 4, !tbaa !3
  %n_lextree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 1
  %34 = load i32* %n_lextree, align 4, !tbaa !3
  %35 = load i32* @utt_word_trans.epl, align 4, !tbaa !3
  %mul = mul nsw i32 %35, %34
  %rem = srem i32 %33, %mul
  %div = sdiv i32 %rem, %35
  br i1 %cmp9158, label %for.body64.lr.ph, label %for.end59.for.end91_crit_edge

for.end59.for.end91_crit_edge:                    ; preds = %for.end59
  %idxprom92.pre = sext i32 %div to i64
  br label %for.end91

for.body64.lr.ph:                                 ; preds = %for.end59
  %wend_beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 32
  %idxprom80 = sext i32 %div to i64
  %ugtree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  br label %for.body64

for.body64:                                       ; preds = %for.inc89, %for.body64.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next, %for.inc89 ]
  %36 = load i32** @utt_word_trans.bv, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i32* %36, i64 %indvars.iv
  %37 = load i32* %arrayidx66, align 4, !tbaa !3
  %cmp67 = icmp sgt i32 %37, -1
  br i1 %cmp67, label %if.then69, label %for.inc89

if.then69:                                        ; preds = %for.body64
  %38 = load i32* %wend_beam, align 4, !tbaa !3
  %cmp70 = icmp eq i32 %38, 0
  %.pre = load i32** @utt_word_trans.bs, align 8, !tbaa !0
  %arrayidx84.phi.trans.insert = getelementptr inbounds i32* %.pre, i64 %indvars.iv
  %.pre164 = load i32* %arrayidx84.phi.trans.insert, align 4, !tbaa !3
  br i1 %cmp70, label %if.then79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then69
  %add76 = sub i32 %maxpscore.0.lcssa, %38
  %cmp77 = icmp sgt i32 %.pre164, %add76
  br i1 %cmp77, label %if.then79, label %for.inc89

if.then79:                                        ; preds = %if.then69, %lor.lhs.false
  %39 = load %struct.lextree_t*** %ugtree, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds %struct.lextree_t** %39, i64 %idxprom80
  %40 = load %struct.lextree_t** %arrayidx81, align 8, !tbaa !0
  %conv82 = trunc i64 %indvars.iv to i8
  tail call void @lextree_enter(%struct.lextree_t* %40, i8 signext %conv82, i32 %cf, i32 %.pre164, i32 %37, i32 %add) #5
  br label %for.inc89

for.inc89:                                        ; preds = %for.body64, %if.then79, %lor.lhs.false
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %for.end91, label %for.body64

for.end91:                                        ; preds = %for.inc89, %for.end59.for.end91_crit_edge
  %idxprom92.pre-phi = phi i64 [ %idxprom92.pre, %for.end59.for.end91_crit_edge ], [ %idxprom80, %for.inc89 ]
  %fillertree = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  %41 = load %struct.lextree_t*** %fillertree, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds %struct.lextree_t** %41, i64 %idxprom92.pre-phi
  %42 = load %struct.lextree_t** %arrayidx93, align 8, !tbaa !0
  %bestscore95 = getelementptr inbounds %struct.vithist_t* %0, i64 0, i32 6
  %43 = load i32** %bestscore95, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32* %43, i64 %idxprom
  %44 = load i32* %arrayidx96, align 4, !tbaa !3
  %45 = load i32** %bestvh, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i32* %45, i64 %idxprom
  %46 = load i32* %arrayidx99, align 4, !tbaa !3
  tail call void @lextree_enter(%struct.lextree_t* %42, i8 signext -1, i32 %cf, i32 %44, i32 %46, i32 %add) #5
  br label %return

return:                                           ; preds = %entry, %for.end91
  ret void
}

; Function Attrs: optsize
declare %struct.vithist_entry_t* @vithist_id2entry(%struct.vithist_t*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @computePhnHeur(%struct.mdef_t* nocapture %md, %struct.kb_t* nocapture %kb, i32 %heutype) #0 {
entry:
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %md, i64 0, i32 2
  %0 = load i32* %n_emit_state, align 4, !tbaa !3
  %cd2cisen = getelementptr inbounds %struct.mdef_t* %md, i64 0, i32 11
  %1 = load i16** %cd2cisen, align 8, !tbaa !0
  %2 = load i16* %1, align 2, !tbaa !7
  %cmp339 = icmp eq i16 %2, 0
  br i1 %cmp339, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sen2cimap = getelementptr inbounds %struct.mdef_t* %md, i64 0, i32 12
  %phn_heur_list = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  %.pre361 = load i8** %sen2cimap, align 8, !tbaa !0
  %.pre362 = load i32** %phn_heur_list, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv353 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next354, %for.body ]
  %arrayidx3 = getelementptr inbounds i8* %.pre361, i64 %indvars.iv353
  %3 = load i8* %arrayidx3, align 1, !tbaa !1
  %idxprom5 = sext i8 %3 to i64
  %arrayidx6 = getelementptr inbounds i32* %.pre362, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  %arrayidx = getelementptr inbounds i16* %1, i64 %indvars.iv.next354
  %4 = load i16* %arrayidx, align 2, !tbaa !7
  %conv = sext i16 %4 to i32
  %5 = trunc i64 %indvars.iv.next354 to i32
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  switch i32 %heutype, label %if.end192 [
    i32 1, label %if.then
    i32 2, label %if.then59
    i32 3, label %if.then109
  ]

if.then:                                          ; preds = %for.end
  %pl_window_start = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 29
  %6 = load i32* %pl_window_start, align 4, !tbaa !3
  %pl_window_effective = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 30
  %7 = load i32* %pl_window_effective, align 4, !tbaa !3
  %cmp10317 = icmp slt i32 %6, %7
  br i1 %cmp10317, label %for.cond13.preheader.lr.ph, label %if.end192

for.cond13.preheader.lr.ph:                       ; preds = %if.then
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  %sen2cimap34 = getelementptr inbounds %struct.mdef_t* %md, i64 0, i32 12
  %phn_heur_list45 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  %8 = sext i32 %6 to i64
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc54, %for.cond13.preheader.lr.ph
  %9 = phi i32 [ %7, %for.cond13.preheader.lr.ph ], [ %17, %for.inc54 ]
  %indvars.iv342 = phi i64 [ %8, %for.cond13.preheader.lr.ph ], [ %indvars.iv.next343, %for.inc54 ]
  br i1 %cmp339, label %for.body20.lr.ph, label %for.inc54

for.body20.lr.ph:                                 ; preds = %for.cond13.preheader
  %.pre = load i32*** %cache_ci_senscr, align 8, !tbaa !0
  %arrayidx23.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %indvars.iv342
  %.pre355 = load i32** %arrayidx23.phi.trans.insert, align 8, !tbaa !0
  %.pre356 = load i8** %sen2cimap34, align 8, !tbaa !0
  br label %for.body20

for.body20:                                       ; preds = %for.cond13.backedge, %for.body20.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next, %for.cond13.backedge ]
  %curFrmPhnVar.0315 = phi i32 [ -2147483648, %for.body20.lr.ph ], [ %curFrmPhnVar.0.be, %for.cond13.backedge ]
  %arrayidx24 = getelementptr inbounds i32* %.pre355, i64 %indvars.iv
  %10 = load i32* %arrayidx24, align 4, !tbaa !3
  %cmp25 = icmp slt i32 %curFrmPhnVar.0315, %10
  %.curFrmPhnVar.0 = select i1 %cmp25, i32 %10, i32 %curFrmPhnVar.0315
  %arrayidx35 = getelementptr inbounds i8* %.pre356, i64 %indvars.iv
  %11 = load i8* %arrayidx35, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx39 = getelementptr inbounds i8* %.pre356, i64 %indvars.iv.next
  %12 = load i8* %arrayidx39, align 1, !tbaa !1
  %cmp41 = icmp eq i8 %11, %12
  br i1 %cmp41, label %for.cond13.backedge, label %if.then43

for.cond13.backedge:                              ; preds = %for.body20, %if.then43
  %curFrmPhnVar.0.be = phi i32 [ %.curFrmPhnVar.0, %for.body20 ], [ -2147483648, %if.then43 ]
  %arrayidx16 = getelementptr inbounds i16* %1, i64 %indvars.iv.next
  %13 = load i16* %arrayidx16, align 2, !tbaa !7
  %conv17 = sext i16 %13 to i32
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp eq i32 %14, %conv17
  br i1 %cmp18, label %for.body20, label %for.cond13.for.inc54_crit_edge

if.then43:                                        ; preds = %for.body20
  %idxprom44 = sext i8 %11 to i64
  %15 = load i32** %phn_heur_list45, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i32* %15, i64 %idxprom44
  %16 = load i32* %arrayidx46, align 4, !tbaa !3
  %add.i = add nsw i32 %16, %.curFrmPhnVar.0
  %cmp.i = icmp sgt i32 %add.i, 0
  %cmp1.i = icmp slt i32 %16, 0
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  %cmp3.i = icmp slt i32 %.curFrmPhnVar.0, 0
  %or.cond8.i = and i1 %or.cond.i, %cmp3.i
  %cond.i = select i1 %or.cond8.i, i32 -2147483648, i32 %add.i
  store i32 %cond.i, i32* %arrayidx46, align 4, !tbaa !3
  br label %for.cond13.backedge

for.cond13.for.inc54_crit_edge:                   ; preds = %for.cond13.backedge
  %.pre363 = load i32* %pl_window_effective, align 4, !tbaa !3
  br label %for.inc54

for.inc54:                                        ; preds = %for.cond13.preheader, %for.cond13.for.inc54_crit_edge
  %17 = phi i32 [ %.pre363, %for.cond13.for.inc54_crit_edge ], [ %9, %for.cond13.preheader ]
  %indvars.iv.next343 = add i64 %indvars.iv342, 1
  %18 = trunc i64 %indvars.iv.next343 to i32
  %cmp10 = icmp slt i32 %18, %17
  br i1 %cmp10, label %for.cond13.preheader, label %if.end192

if.then59:                                        ; preds = %for.end
  %pl_window_start60 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 29
  %19 = load i32* %pl_window_start60, align 4, !tbaa !3
  %pl_window_effective62 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 30
  %20 = load i32* %pl_window_effective62, align 4, !tbaa !3
  %cmp63326 = icmp slt i32 %19, %20
  br i1 %cmp63326, label %for.cond66.preheader.lr.ph, label %if.end192

for.cond66.preheader.lr.ph:                       ; preds = %if.then59
  %cache_ci_senscr76 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  %sen2cimap81 = getelementptr inbounds %struct.mdef_t* %md, i64 0, i32 12
  %phn_heur_list93 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  %21 = sext i32 %19 to i64
  br label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.inc103, %for.cond66.preheader.lr.ph
  %22 = phi i32 [ %20, %for.cond66.preheader.lr.ph ], [ %30, %for.inc103 ]
  %indvars.iv346 = phi i64 [ %21, %for.cond66.preheader.lr.ph ], [ %indvars.iv.next347, %for.inc103 ]
  br i1 %cmp339, label %for.body73.lr.ph, label %for.inc103

for.body73.lr.ph:                                 ; preds = %for.cond66.preheader
  %.pre357 = load i32*** %cache_ci_senscr76, align 8, !tbaa !0
  %arrayidx77.phi.trans.insert = getelementptr inbounds i32** %.pre357, i64 %indvars.iv346
  %.pre358 = load i32** %arrayidx77.phi.trans.insert, align 8, !tbaa !0
  %.pre359 = load i8** %sen2cimap81, align 8, !tbaa !0
  br label %for.body73

for.body73:                                       ; preds = %for.cond66.backedge, %for.body73.lr.ph
  %indvars.iv344 = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next345, %for.cond66.backedge ]
  %curFrmPhnVar.3323 = phi i32 [ -2147483648, %for.body73.lr.ph ], [ %curFrmPhnVar.3.be, %for.cond66.backedge ]
  %arrayidx78 = getelementptr inbounds i32* %.pre358, i64 %indvars.iv344
  %23 = load i32* %arrayidx78, align 4, !tbaa !3
  %add.i304 = add nsw i32 %23, %curFrmPhnVar.3323
  %cmp.i305 = icmp sgt i32 %add.i304, 0
  %cmp1.i306 = icmp slt i32 %23, 0
  %or.cond.i307 = and i1 %cmp.i305, %cmp1.i306
  %cmp3.i308 = icmp slt i32 %curFrmPhnVar.3323, 0
  %or.cond8.i309 = and i1 %or.cond.i307, %cmp3.i308
  %cond.i310 = select i1 %or.cond8.i309, i32 -2147483648, i32 %add.i304
  %arrayidx82 = getelementptr inbounds i8* %.pre359, i64 %indvars.iv344
  %24 = load i8* %arrayidx82, align 1, !tbaa !1
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %arrayidx87 = getelementptr inbounds i8* %.pre359, i64 %indvars.iv.next345
  %25 = load i8* %arrayidx87, align 1, !tbaa !1
  %cmp89 = icmp eq i8 %24, %25
  br i1 %cmp89, label %for.cond66.backedge, label %if.then91

for.cond66.backedge:                              ; preds = %for.body73, %if.then91
  %curFrmPhnVar.3.be = phi i32 [ %cond.i310, %for.body73 ], [ -2147483648, %if.then91 ]
  %arrayidx69 = getelementptr inbounds i16* %1, i64 %indvars.iv.next345
  %26 = load i16* %arrayidx69, align 2, !tbaa !7
  %conv70 = sext i16 %26 to i32
  %27 = trunc i64 %indvars.iv.next345 to i32
  %cmp71 = icmp eq i32 %27, %conv70
  br i1 %cmp71, label %for.body73, label %for.cond66.for.inc103_crit_edge

if.then91:                                        ; preds = %for.body73
  %div = sdiv i32 %cond.i310, %0
  %idxprom92 = sext i8 %24 to i64
  %28 = load i32** %phn_heur_list93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i32* %28, i64 %idxprom92
  %29 = load i32* %arrayidx94, align 4, !tbaa !3
  %add.i297 = add nsw i32 %29, %div
  %cmp.i298 = icmp sgt i32 %add.i297, 0
  %cmp1.i299 = icmp slt i32 %29, 0
  %or.cond.i300 = and i1 %cmp.i298, %cmp1.i299
  %cmp3.i301 = icmp slt i32 %div, 0
  %or.cond8.i302 = and i1 %or.cond.i300, %cmp3.i301
  %cond.i303 = select i1 %or.cond8.i302, i32 -2147483648, i32 %add.i297
  store i32 %cond.i303, i32* %arrayidx94, align 4, !tbaa !3
  br label %for.cond66.backedge

for.cond66.for.inc103_crit_edge:                  ; preds = %for.cond66.backedge
  %.pre364 = load i32* %pl_window_effective62, align 4, !tbaa !3
  br label %for.inc103

for.inc103:                                       ; preds = %for.cond66.preheader, %for.cond66.for.inc103_crit_edge
  %30 = phi i32 [ %.pre364, %for.cond66.for.inc103_crit_edge ], [ %22, %for.cond66.preheader ]
  %indvars.iv.next347 = add i64 %indvars.iv346, 1
  %31 = trunc i64 %indvars.iv.next347 to i32
  %cmp63 = icmp slt i32 %31, %30
  br i1 %cmp63, label %for.cond66.preheader, label %if.end192

if.then109:                                       ; preds = %for.end
  %pl_window_start110 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 29
  %32 = load i32* %pl_window_start110, align 4, !tbaa !3
  %pl_window_effective112 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 30
  %33 = load i32* %pl_window_effective112, align 4, !tbaa !3
  %cmp113336 = icmp slt i32 %32, %33
  br i1 %cmp113336, label %for.cond116.preheader.lr.ph, label %if.end192

for.cond116.preheader.lr.ph:                      ; preds = %if.then109
  %phn_heur_list134 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  %cache_ci_senscr138 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  %sen2cimap147 = getelementptr inbounds %struct.mdef_t* %md, i64 0, i32 12
  %34 = sext i32 %32 to i64
  br label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.inc187, %for.cond116.preheader.lr.ph
  %35 = phi i32 [ %33, %for.cond116.preheader.lr.ph ], [ %53, %for.inc187 ]
  %indvars.iv351 = phi i64 [ %34, %for.cond116.preheader.lr.ph ], [ %indvars.iv.next352, %for.inc187 ]
  br i1 %cmp339, label %for.body123, label %for.inc187

for.body123:                                      ; preds = %for.cond116.preheader, %for.cond116.backedge
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %for.cond116.backedge ], [ 0, %for.cond116.preheader ]
  %curFrmPhnVar.5333 = phi i32 [ %curFrmPhnVar.5.be, %for.cond116.backedge ], [ -2147483648, %for.cond116.preheader ]
  %curPhn.0332 = phi i32 [ %conv149, %for.cond116.backedge ], [ 0, %for.cond116.preheader ]
  %cmp124 = icmp eq i32 %curPhn.0332, 0
  br i1 %cmp124, label %for.body123.if.then132_crit_edge, label %lor.lhs.false

for.body123.if.then132_crit_edge:                 ; preds = %for.body123
  %.pre360.pre = load i8** %sen2cimap147, align 8, !tbaa !0
  br label %if.then132

lor.lhs.false:                                    ; preds = %for.body123
  %36 = add nsw i64 %indvars.iv348, -1
  %37 = load i8** %sen2cimap147, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i8* %37, i64 %36
  %38 = load i8* %arrayidx128, align 1, !tbaa !1
  %conv129 = sext i8 %38 to i32
  %cmp130 = icmp eq i32 %curPhn.0332, %conv129
  br i1 %cmp130, label %lor.lhs.false.if.end145_crit_edge, label %if.then132

lor.lhs.false.if.end145_crit_edge:                ; preds = %lor.lhs.false
  %.pre367 = load i32*** %cache_ci_senscr138, align 8, !tbaa !0
  %arrayidx153.phi.trans.insert = getelementptr inbounds i32** %.pre367, i64 %indvars.iv351
  %.pre368 = load i32** %arrayidx153.phi.trans.insert, align 8, !tbaa !0
  br label %if.end145

if.then132:                                       ; preds = %lor.lhs.false, %for.body123.if.then132_crit_edge
  %.pre360 = phi i8* [ %.pre360.pre, %for.body123.if.then132_crit_edge ], [ %37, %lor.lhs.false ]
  %idxprom133 = sext i32 %curPhn.0332 to i64
  %39 = load i32** %phn_heur_list134, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %39, i64 %idxprom133
  %40 = load i32* %arrayidx135, align 4, !tbaa !3
  %41 = load i32*** %cache_ci_senscr138, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i32** %41, i64 %indvars.iv351
  %42 = load i32** %arrayidx139, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i32* %42, i64 %indvars.iv348
  %43 = load i32* %arrayidx140, align 4, !tbaa !3
  %add.i290 = add nsw i32 %43, %40
  %cmp.i291 = icmp sgt i32 %add.i290, 0
  %cmp1.i292 = icmp slt i32 %40, 0
  %or.cond.i293 = and i1 %cmp.i291, %cmp1.i292
  %cmp3.i294 = icmp slt i32 %43, 0
  %or.cond8.i295 = and i1 %or.cond.i293, %cmp3.i294
  %cond.i296 = select i1 %or.cond8.i295, i32 -2147483648, i32 %add.i290
  store i32 %cond.i296, i32* %arrayidx135, align 4, !tbaa !3
  br label %if.end145

if.end145:                                        ; preds = %lor.lhs.false.if.end145_crit_edge, %if.then132
  %44 = phi i32* [ %.pre368, %lor.lhs.false.if.end145_crit_edge ], [ %42, %if.then132 ]
  %45 = phi i8* [ %37, %lor.lhs.false.if.end145_crit_edge ], [ %.pre360, %if.then132 ]
  %arrayidx148 = getelementptr inbounds i8* %45, i64 %indvars.iv348
  %46 = load i8* %arrayidx148, align 1, !tbaa !1
  %conv149 = sext i8 %46 to i32
  %arrayidx154 = getelementptr inbounds i32* %44, i64 %indvars.iv348
  %47 = load i32* %arrayidx154, align 4, !tbaa !3
  %cmp155 = icmp slt i32 %curFrmPhnVar.5333, %47
  %.curFrmPhnVar.5 = select i1 %cmp155, i32 %47, i32 %curFrmPhnVar.5333
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %arrayidx171 = getelementptr inbounds i8* %45, i64 %indvars.iv.next349
  %48 = load i8* %arrayidx171, align 1, !tbaa !1
  %cmp173 = icmp eq i8 %46, %48
  br i1 %cmp173, label %for.cond116.backedge, label %if.then175

for.cond116.backedge:                             ; preds = %if.end145, %if.then175
  %curFrmPhnVar.5.be = phi i32 [ %.curFrmPhnVar.5, %if.end145 ], [ -2147483648, %if.then175 ]
  %arrayidx119 = getelementptr inbounds i16* %1, i64 %indvars.iv.next349
  %49 = load i16* %arrayidx119, align 2, !tbaa !7
  %conv120 = sext i16 %49 to i32
  %50 = trunc i64 %indvars.iv.next349 to i32
  %cmp121 = icmp eq i32 %50, %conv120
  br i1 %cmp121, label %for.body123, label %for.cond116.for.inc187_crit_edge

if.then175:                                       ; preds = %if.end145
  %idxprom176 = sext i8 %46 to i64
  %51 = load i32** %phn_heur_list134, align 8, !tbaa !0
  %arrayidx178 = getelementptr inbounds i32* %51, i64 %idxprom176
  %52 = load i32* %arrayidx178, align 4, !tbaa !3
  %add.i283 = add nsw i32 %52, %.curFrmPhnVar.5
  %cmp.i284 = icmp sgt i32 %add.i283, 0
  %cmp1.i285 = icmp slt i32 %52, 0
  %or.cond.i286 = and i1 %cmp.i284, %cmp1.i285
  %cmp3.i287 = icmp slt i32 %.curFrmPhnVar.5, 0
  %or.cond8.i288 = and i1 %or.cond.i286, %cmp3.i287
  %cond.i289 = select i1 %or.cond8.i288, i32 -2147483648, i32 %add.i283
  store i32 %cond.i289, i32* %arrayidx178, align 4, !tbaa !3
  br label %for.cond116.backedge

for.cond116.for.inc187_crit_edge:                 ; preds = %for.cond116.backedge
  %.pre365 = load i32* %pl_window_effective112, align 4, !tbaa !3
  br label %for.inc187

for.inc187:                                       ; preds = %for.cond116.preheader, %for.cond116.for.inc187_crit_edge
  %53 = phi i32 [ %.pre365, %for.cond116.for.inc187_crit_edge ], [ %35, %for.cond116.preheader ]
  %indvars.iv.next352 = add i64 %indvars.iv351, 1
  %54 = trunc i64 %indvars.iv.next352 to i32
  %cmp113 = icmp slt i32 %54, %53
  br i1 %cmp113, label %for.cond116.preheader, label %if.end192

if.end192:                                        ; preds = %if.then109, %for.inc187, %if.then59, %for.inc103, %if.then, %for.inc54, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @utt_decode_block(float*** nocapture %block_feat, i32 %block_nfeatvec, i32* nocapture %curfrm, %struct.kb_t* %kb, i32 %maxwpf, i32 %maxhistpf, i32 %maxhmmpf, i32 %ptranskip, %struct._IO_FILE* %hmmdumpfp) #0 {
entry:
  %call = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str64, i64 0, i64 0)) #5
  %0 = bitcast i8* %call to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %kbcore1 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %2 = load %struct.kbcore_t** %kbcore1, align 8, !tbaa !0
  %mdef2 = getelementptr inbounds %struct.kbcore_t* %2, i64 0, i32 1
  %3 = load %struct.mdef_t** %mdef2, align 8, !tbaa !0
  %dict3 = getelementptr inbounds %struct.kbcore_t* %2, i64 0, i32 2
  %4 = load %struct.dict_t** %dict3, align 8, !tbaa !0
  %dict2pid = getelementptr inbounds %struct.kbcore_t* %2, i64 0, i32 3
  %5 = load %struct.dict2pid_t** %dict2pid, align 8, !tbaa !0
  %mgau4 = getelementptr inbounds %struct.kbcore_t* %2, i64 0, i32 8
  %6 = load %struct.mgau_model_t** %mgau4, align 8, !tbaa !0
  %svq5 = getelementptr inbounds %struct.kbcore_t* %2, i64 0, i32 9
  %7 = load %struct.subvq_t** %svq5, align 8, !tbaa !0
  %gs6 = getelementptr inbounds %struct.kbcore_t* %2, i64 0, i32 10
  %8 = load %struct.gs_s** %gs6, align 8, !tbaa !0
  %9 = load i32* %curfrm, align 4, !tbaa !3
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 38
  %10 = load i32* %hmm_hist_bins, align 4, !tbaa !3
  %cmp735 = icmp sgt i32 %10, 0
  br i1 %cmp735, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hmm_hist = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 37
  %11 = load i32** %hmm_hist, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv761 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next762, %for.body ]
  %arrayidx = getelementptr inbounds i32* %11, i64 %indvars.iv761
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next762 = add i64 %indvars.iv761, 1
  %12 = load i32* %hmm_hist_bins, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next762 to i32
  %cmp = icmp slt i32 %13, %12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %tm_sen = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 40
  tail call void @ptmr_start(%struct.ptmr_t* %tm_sen) #5
  %pl_window = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 28
  %14 = load i32* %pl_window, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %14, %block_nfeatvec
  %block_nfeatvec. = select i1 %cmp7, i32 %block_nfeatvec, i32 %14
  %pl_window_effective = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 30
  store i32 %block_nfeatvec., i32* %pl_window_effective, align 4, !tbaa !3
  %pl_window_start = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 29
  store i32 0, i32* %pl_window_start, align 4, !tbaa !3
  %cmp11733 = icmp sgt i32 %block_nfeatvec., 0
  br i1 %cmp11733, label %for.body12.lr.ph, label %for.end49

for.body12.lr.ph:                                 ; preds = %for.end
  %cache_best_list = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 16
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  %cd2cisen = getelementptr inbounds %struct.mdef_t* %3, i64 0, i32 11
  br label %for.body12

for.body12:                                       ; preds = %for.inc47, %for.body12.lr.ph
  %indvars.iv759 = phi i64 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next760, %for.inc47 ]
  %15 = load i32** %cache_best_list, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %15, i64 %indvars.iv759
  store i32 -2147483648, i32* %arrayidx14, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds float*** %block_feat, i64 %indvars.iv759
  %16 = load float*** %arrayidx16, align 8, !tbaa !0
  %17 = load float** %16, align 8, !tbaa !0
  %18 = load i32*** %cache_ci_senscr, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32** %18, i64 %indvars.iv759
  %19 = load i32** %arrayidx19, align 8, !tbaa !0
  tail call void @approx_cont_mgau_ci_eval(%struct.mgau_model_t* %6, float* %17, i32* %19, %struct.kb_t* %kb) #5
  %20 = load i16** %cd2cisen, align 8, !tbaa !0
  %21 = load i16* %20, align 2, !tbaa !7
  %cmp23730 = icmp eq i16 %21, 0
  br i1 %cmp23730, label %for.body25.lr.ph, label %for.inc47

for.body25.lr.ph:                                 ; preds = %for.body12
  %22 = load i32*** %cache_ci_senscr, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32** %22, i64 %indvars.iv759
  %23 = load i32** %arrayidx29, align 8, !tbaa !0
  %24 = load i32** %cache_best_list, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32* %24, i64 %indvars.iv759
  %.pre763 = load i32* %arrayidx33, align 4, !tbaa !3
  br label %for.body25

for.body25:                                       ; preds = %for.body25.lr.ph, %for.inc44
  %25 = phi i32 [ %.pre763, %for.body25.lr.ph ], [ %27, %for.inc44 ]
  %indvars.iv757 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next758, %for.inc44 ]
  %arrayidx30 = getelementptr inbounds i32* %23, i64 %indvars.iv757
  %26 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp34 = icmp sgt i32 %26, %25
  br i1 %cmp34, label %if.then, label %for.inc44

if.then:                                          ; preds = %for.body25
  store i32 %26, i32* %arrayidx33, align 4, !tbaa !3
  br label %for.inc44

for.inc44:                                        ; preds = %for.body25, %if.then
  %27 = phi i32 [ %25, %for.body25 ], [ %26, %if.then ]
  %indvars.iv.next758 = add i64 %indvars.iv757, 1
  %arrayidx22 = getelementptr inbounds i16* %20, i64 %indvars.iv.next758
  %28 = load i16* %arrayidx22, align 2, !tbaa !7
  %conv = sext i16 %28 to i32
  %29 = trunc i64 %indvars.iv.next758 to i32
  %cmp23 = icmp eq i32 %29, %conv
  br i1 %cmp23, label %for.body25, label %for.inc47

for.inc47:                                        ; preds = %for.inc44, %for.body12
  %indvars.iv.next760 = add i64 %indvars.iv759, 1
  %30 = load i32* %pl_window_effective, align 4, !tbaa !3
  %31 = trunc i64 %indvars.iv.next760 to i32
  %cmp11 = icmp slt i32 %31, %30
  br i1 %cmp11, label %for.body12, label %for.end49

for.end49:                                        ; preds = %for.inc47, %for.end
  tail call void @ptmr_stop(%struct.ptmr_t* %tm_sen) #5
  %cmp52719 = icmp sgt i32 %block_nfeatvec, 0
  br i1 %cmp52719, label %for.body54.lr.ph, label %for.end410

for.body54.lr.ph:                                 ; preds = %for.end49
  %sen_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 11
  %beam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 22
  %ascr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 21
  %cache_ci_senscr95 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 15
  %frm_sen_eval = getelementptr inbounds %struct.mgau_model_t* %6, i64 0, i32 5
  %utt_sen_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 35
  %frm_gau_eval = getelementptr inbounds %struct.mgau_model_t* %6, i64 0, i32 6
  %utt_gau_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 36
  %tm_srch = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 41
  %cmp104 = icmp eq i32 %1, 0
  %n_lextree109 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 1
  %hmm_hist_binsize = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 39
  %hmm_hist158 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 37
  %shr = ashr i32 %maxhmmpf, 1
  %add161 = add nsw i32 %shr, %maxhmmpf
  %cmp197692 = icmp sgt i32 %maxhmmpf, 0
  %ugtree181 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 2
  %fillertree187 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 4
  %bestscore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 19
  %bestwordscore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 20
  %cmp239 = icmp eq i32 %ptranskip, 0
  %vithist404 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 6
  %cache_best_list359 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 16
  %cd2cisen363 = getelementptr inbounds %struct.mdef_t* %3, i64 0, i32 11
  %phn_heur_list296 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 17
  %pl_beam297 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 31
  %cmp129 = icmp eq %struct._IO_FILE* %hmmdumpfp, null
  %ssid_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 9
  %n_sseq = getelementptr inbounds %struct.mdef_t* %3, i64 0, i32 10
  %comssid_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 10
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t* %5, i64 0, i32 7
  %n_sen = getelementptr inbounds %struct.mdef_t* %3, i64 0, i32 4
  br label %for.body54

for.body54:                                       ; preds = %if.end403, %for.body54.lr.ph
  %indvars.iv755 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next756, %if.end403 ]
  %frmno.0723 = phi i32 [ %9, %for.body54.lr.ph ], [ %inc409, %if.end403 ]
  %n_hmm_eval.0722 = phi i32 [ 0, %for.body54.lr.ph ], [ %n_hmm_eval.1.lcssa768, %if.end403 ]
  tail call void @ptmr_start(%struct.ptmr_t* %tm_sen) #5
  %32 = load i32** %sen_active, align 8, !tbaa !0
  %tobool = icmp eq i32* %32, null
  br i1 %tobool, label %if.end88, label %if.then56

if.then56:                                        ; preds = %for.body54
  %33 = load i32** %ssid_active, align 8, !tbaa !0
  %34 = bitcast i32* %33 to i8*
  %35 = load i32* %n_sseq, align 4, !tbaa !3
  %conv57 = sext i32 %35 to i64
  %mul = shl nsw i64 %conv57, 2
  tail call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 %mul, i32 4, i1 false)
  %36 = load i32** %comssid_active, align 8, !tbaa !0
  %37 = bitcast i32* %36 to i8*
  %38 = load i32* %n_comsseq, align 4, !tbaa !3
  %conv58 = sext i32 %38 to i64
  %mul59 = shl nsw i64 %conv58, 2
  tail call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 %mul59, i32 4, i1 false)
  %39 = load i32* %n_lextree109, align 4, !tbaa !3
  %40 = trunc i32 %39 to i31
  %cmp61676 = icmp sgt i31 %40, 0
  br i1 %cmp61676, label %for.body63, label %for.end80

for.body63:                                       ; preds = %if.then56, %cond.end74
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end74 ], [ 0, %if.then56 ]
  %41 = phi i32 [ %47, %cond.end74 ], [ %39, %if.then56 ]
  %42 = trunc i64 %indvars.iv to i32
  %cmp65 = icmp slt i32 %42, %41
  br i1 %cmp65, label %cond.true67, label %cond.false70

cond.true67:                                      ; preds = %for.body63
  %43 = load %struct.lextree_t*** %ugtree181, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds %struct.lextree_t** %43, i64 %indvars.iv
  br label %cond.end74

cond.false70:                                     ; preds = %for.body63
  %sub = sub nsw i32 %42, %41
  %idxprom72 = sext i32 %sub to i64
  %44 = load %struct.lextree_t*** %fillertree187, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds %struct.lextree_t** %44, i64 %idxprom72
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false70, %cond.true67
  %cond75.in = phi %struct.lextree_t** [ %arrayidx69, %cond.true67 ], [ %arrayidx73, %cond.false70 ]
  %cond75 = load %struct.lextree_t** %cond75.in, align 8
  %45 = load i32** %ssid_active, align 8, !tbaa !0
  %46 = load i32** %comssid_active, align 8, !tbaa !0
  tail call void @lextree_ssid_active(%struct.lextree_t* %cond75, i32* %45, i32* %46) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %47 = load i32* %n_lextree109, align 4, !tbaa !3
  %shl = shl i32 %47, 1
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp61 = icmp slt i32 %48, %shl
  br i1 %cmp61, label %for.body63, label %for.end80

for.end80:                                        ; preds = %cond.end74, %if.then56
  %49 = load i32** %sen_active, align 8, !tbaa !0
  %50 = bitcast i32* %49 to i8*
  %51 = load i32* %n_sen, align 4, !tbaa !3
  %conv82 = sext i32 %51 to i64
  %mul83 = shl nsw i64 %conv82, 2
  tail call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %mul83, i32 4, i1 false)
  %52 = load i32** %ssid_active, align 8, !tbaa !0
  %53 = load i32** %sen_active, align 8, !tbaa !0
  tail call void @mdef_sseq2sen_active(%struct.mdef_t* %3, i32* %52, i32* %53) #5
  %54 = load i32** %comssid_active, align 8, !tbaa !0
  %55 = load i32** %sen_active, align 8, !tbaa !0
  tail call void @dict2pid_comsseq2sen_active(%struct.dict2pid_t* %5, %struct.mdef_t* %3, i32* %54, i32* %55) #5
  %.pre = load i32** %sen_active, align 8, !tbaa !0
  br label %if.end88

if.end88:                                         ; preds = %for.body54, %for.end80
  %56 = phi i32* [ null, %for.body54 ], [ %.pre, %for.end80 ]
  %57 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %subvq = getelementptr inbounds %struct.beam_t* %57, i64 0, i32 0
  %58 = load i32* %subvq, align 4, !tbaa !3
  %arrayidx90 = getelementptr inbounds float*** %block_feat, i64 %indvars.iv755
  %59 = load float*** %arrayidx90, align 8, !tbaa !0
  %60 = load float** %59, align 8, !tbaa !0
  %61 = load %struct.ascr_t** %ascr, align 8, !tbaa !0
  %sen = getelementptr inbounds %struct.ascr_t* %61, i64 0, i32 0
  %62 = load i32** %sen, align 8, !tbaa !0
  %63 = load i32* %pl_window_start, align 4, !tbaa !3
  %idxprom94 = sext i32 %63 to i64
  %64 = load i32*** %cache_ci_senscr95, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32** %64, i64 %idxprom94
  %65 = load i32** %arrayidx96, align 8, !tbaa !0
  %66 = trunc i64 %indvars.iv755 to i32
  %call97 = tail call i32 @approx_cont_mgau_frame_eval(%struct.mgau_model_t* %6, %struct.gs_s* %8, %struct.subvq_t* %7, i32 %58, float* %60, i32* %56, i32* %62, i32* %65, %struct.kb_t* %kb, i32 %66) #5
  %67 = load i32* %frm_sen_eval, align 4, !tbaa !3
  %68 = load i32* %utt_sen_eval, align 4, !tbaa !3
  %add = add nsw i32 %68, %67
  store i32 %add, i32* %utt_sen_eval, align 4, !tbaa !3
  %69 = load i32* %frm_gau_eval, align 4, !tbaa !3
  %70 = load i32* %utt_gau_eval, align 4, !tbaa !3
  %add98 = add nsw i32 %70, %69
  store i32 %add98, i32* %utt_gau_eval, align 4, !tbaa !3
  %71 = load %struct.dict2pid_t** %dict2pid, align 8, !tbaa !0
  %72 = load %struct.ascr_t** %ascr, align 8, !tbaa !0
  %sen101 = getelementptr inbounds %struct.ascr_t* %72, i64 0, i32 0
  %73 = load i32** %sen101, align 8, !tbaa !0
  %comsen = getelementptr inbounds %struct.ascr_t* %72, i64 0, i32 1
  %74 = load i32** %comsen, align 8, !tbaa !0
  tail call void @dict2pid_comsenscr(%struct.dict2pid_t* %71, i32* %73, i32* %74) #5
  tail call void @ptmr_stop(%struct.ptmr_t* %tm_sen) #5
  tail call void @ptmr_start(%struct.ptmr_t* %tm_srch) #5
  br i1 %cmp104, label %for.cond108.preheader, label %if.then106

if.then106:                                       ; preds = %if.end88
  tail call void @computePhnHeur(%struct.mdef_t* %3, %struct.kb_t* %kb, i32 %1) #7
  br label %for.cond108.preheader

for.cond108.preheader:                            ; preds = %if.end88, %if.then106
  %75 = load i32* %n_lextree109, align 4, !tbaa !3
  %76 = trunc i32 %75 to i31
  %cmp111679 = icmp sgt i31 %76, 0
  br i1 %cmp111679, label %for.body113, label %if.end156

for.body113:                                      ; preds = %for.cond108.preheader, %if.end133
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %if.end133 ], [ 0, %for.cond108.preheader ]
  %77 = phi i32 [ %86, %if.end133 ], [ %75, %for.cond108.preheader ]
  %besthmmscr.0684 = phi i32 [ %.besthmmscr.0, %if.end133 ], [ -2147483648, %for.cond108.preheader ]
  %bestwordscr.0683 = phi i32 [ %bestwordscr.1, %if.end133 ], [ -2147483648, %for.cond108.preheader ]
  %frm_nhmm.0681 = phi i32 [ %add149, %if.end133 ], [ 0, %for.cond108.preheader ]
  %n_hmm_eval.1680 = phi i32 [ %add147, %if.end133 ], [ %n_hmm_eval.0722, %for.cond108.preheader ]
  %78 = trunc i64 %indvars.iv737 to i32
  %cmp115 = icmp slt i32 %78, %77
  br i1 %cmp115, label %cond.true117, label %cond.false121

cond.true117:                                     ; preds = %for.body113
  %79 = load %struct.lextree_t*** %ugtree181, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds %struct.lextree_t** %79, i64 %indvars.iv737
  br label %cond.end127

cond.false121:                                    ; preds = %for.body113
  %sub123 = sub nsw i32 %78, %77
  %idxprom124 = sext i32 %sub123 to i64
  %80 = load %struct.lextree_t*** %fillertree187, align 8, !tbaa !0
  %arrayidx126 = getelementptr inbounds %struct.lextree_t** %80, i64 %idxprom124
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false121, %cond.true117
  %cond128.in = phi %struct.lextree_t** [ %arrayidx120, %cond.true117 ], [ %arrayidx126, %cond.false121 ]
  %cond128 = load %struct.lextree_t** %cond128.in, align 8
  %n_active146.pre = getelementptr inbounds %struct.lextree_t* %cond128, i64 0, i32 7
  br i1 %cmp129, label %if.end133, label %if.then131

if.then131:                                       ; preds = %cond.end127
  %81 = load i32* %n_active146.pre, align 4, !tbaa !3
  %call132 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %hmmdumpfp, i8* getelementptr inbounds ([26 x i8]* @.str65, i64 0, i64 0), i32 %frmno.0723, i32 %78, i32 %81) #5
  br label %if.end133

if.end133:                                        ; preds = %cond.end127, %if.then131
  %82 = load %struct.ascr_t** %ascr, align 8, !tbaa !0
  %call135 = tail call i32 @lextree_hmm_eval(%struct.lextree_t* %cond128, %struct.kbcore_t* %2, %struct.ascr_t* %82, i32 %frmno.0723, %struct._IO_FILE* %hmmdumpfp) #5
  %best = getelementptr inbounds %struct.lextree_t* %cond128, i64 0, i32 9
  %83 = load i32* %best, align 4, !tbaa !3
  %cmp136 = icmp slt i32 %besthmmscr.0684, %83
  %.besthmmscr.0 = select i1 %cmp136, i32 %83, i32 %besthmmscr.0684
  %wbest = getelementptr inbounds %struct.lextree_t* %cond128, i64 0, i32 10
  %84 = load i32* %wbest, align 4, !tbaa !3
  %cmp141 = icmp slt i32 %bestwordscr.0683, %84
  %bestwordscr.1 = select i1 %cmp141, i32 %84, i32 %bestwordscr.0683
  %85 = load i32* %n_active146.pre, align 4, !tbaa !3
  %add147 = add nsw i32 %85, %n_hmm_eval.1680
  %add149 = add nsw i32 %85, %frm_nhmm.0681
  %indvars.iv.next738 = add i64 %indvars.iv737, 1
  %86 = load i32* %n_lextree109, align 4, !tbaa !3
  %shl110 = shl i32 %86, 1
  %87 = trunc i64 %indvars.iv.next738 to i32
  %cmp111 = icmp slt i32 %87, %shl110
  br i1 %cmp111, label %for.body113, label %for.end152

for.end152:                                       ; preds = %if.end133
  %cmp153 = icmp sgt i32 %.besthmmscr.0, 0
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %for.end152
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i64 1041, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([63 x i8]* @.str66, i64 0, i64 0), i32 %frmno.0723, i32 %.besthmmscr.0) #5
  br label %if.end156

if.end156:                                        ; preds = %for.cond108.preheader, %if.then155, %for.end152
  %n_hmm_eval.1.lcssa768 = phi i32 [ %add147, %if.then155 ], [ %add147, %for.end152 ], [ %n_hmm_eval.0722, %for.cond108.preheader ]
  %frm_nhmm.0.lcssa767 = phi i32 [ %add149, %if.then155 ], [ %add149, %for.end152 ], [ 0, %for.cond108.preheader ]
  %bestwordscr.0.lcssa766 = phi i32 [ %bestwordscr.1, %if.then155 ], [ %bestwordscr.1, %for.end152 ], [ -2147483648, %for.cond108.preheader ]
  %besthmmscr.0.lcssa765 = phi i32 [ %.besthmmscr.0, %if.then155 ], [ %.besthmmscr.0, %for.end152 ], [ -2147483648, %for.cond108.preheader ]
  %88 = load i32* %hmm_hist_binsize, align 4, !tbaa !3
  %div = sdiv i32 %frm_nhmm.0.lcssa767, %88
  %idxprom157 = sext i32 %div to i64
  %89 = load i32** %hmm_hist158, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i32* %89, i64 %idxprom157
  %90 = load i32* %arrayidx159, align 4, !tbaa !3
  %inc160 = add nsw i32 %90, 1
  store i32 %inc160, i32* %arrayidx159, align 4, !tbaa !3
  %cmp162 = icmp sgt i32 %frm_nhmm.0.lcssa767, %add161
  %91 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %hmm = getelementptr inbounds %struct.beam_t* %91, i64 0, i32 1
  %92 = load i32* %hmm, align 4, !tbaa !3
  br i1 %cmp162, label %if.then164, label %if.else

if.then164:                                       ; preds = %if.end156
  %div167 = sdiv i32 %92, -1000
  %call169 = tail call i8* @__ckd_calloc__(i64 1000, i64 4, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 1056) #5
  %93 = bitcast i8* %call169 to i32*
  %94 = load i32* %n_lextree109, align 4, !tbaa !3
  %95 = trunc i32 %94 to i31
  %cmp173690 = icmp sgt i31 %95, 0
  br i1 %cmp173690, label %for.body175, label %for.cond194.loopexit

for.body175:                                      ; preds = %if.then164, %cond.end189
  %indvars.iv739 = phi i64 [ %indvars.iv.next740, %cond.end189 ], [ 0, %if.then164 ]
  %96 = phi i32 [ %100, %cond.end189 ], [ %94, %if.then164 ]
  %97 = trunc i64 %indvars.iv739 to i32
  %cmp177 = icmp slt i32 %97, %96
  br i1 %cmp177, label %cond.true179, label %cond.false183

cond.true179:                                     ; preds = %for.body175
  %98 = load %struct.lextree_t*** %ugtree181, align 8, !tbaa !0
  %arrayidx182 = getelementptr inbounds %struct.lextree_t** %98, i64 %indvars.iv739
  br label %cond.end189

cond.false183:                                    ; preds = %for.body175
  %sub185 = sub nsw i32 %97, %96
  %idxprom186 = sext i32 %sub185 to i64
  %99 = load %struct.lextree_t*** %fillertree187, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds %struct.lextree_t** %99, i64 %idxprom186
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false183, %cond.true179
  %cond190.in = phi %struct.lextree_t** [ %arrayidx182, %cond.true179 ], [ %arrayidx188, %cond.false183 ]
  %cond190 = load %struct.lextree_t** %cond190.in, align 8
  tail call void @lextree_hmm_histbin(%struct.lextree_t* %cond190, i32 %besthmmscr.0.lcssa765, i32* %93, i32 1000, i32 %div167) #5
  %indvars.iv.next740 = add i64 %indvars.iv739, 1
  %100 = load i32* %n_lextree109, align 4, !tbaa !3
  %shl172 = shl i32 %100, 1
  %101 = trunc i64 %indvars.iv.next740 to i32
  %cmp173 = icmp slt i32 %101, %shl172
  br i1 %cmp173, label %for.body175, label %for.cond194.loopexit

for.cond194.loopexit:                             ; preds = %cond.end189, %if.then164
  br i1 %cmp197692, label %for.inc200, label %for.end205

for.inc200:                                       ; preds = %for.cond194.loopexit, %for.inc200
  %indvars.iv741 = phi i64 [ %indvars.iv.next742, %for.inc200 ], [ 0, %for.cond194.loopexit ]
  %i.5695 = phi i32 [ %inc201, %for.inc200 ], [ 0, %for.cond194.loopexit ]
  %j.0694 = phi i32 [ %add204, %for.inc200 ], [ 0, %for.cond194.loopexit ]
  %indvars.iv.next742 = add i64 %indvars.iv741, 1
  %inc201 = add nsw i32 %i.5695, 1
  %arrayidx203 = getelementptr inbounds i32* %93, i64 %indvars.iv.next742
  %102 = load i32* %arrayidx203, align 4, !tbaa !3
  %add204 = add nsw i32 %102, %j.0694
  %103 = trunc i64 %indvars.iv.next742 to i32
  %cmp195 = icmp slt i32 %103, 1000
  %cmp197 = icmp slt i32 %add204, %maxhmmpf
  %or.cond = and i1 %cmp195, %cmp197
  br i1 %or.cond, label %for.inc200, label %for.end205

for.end205:                                       ; preds = %for.inc200, %for.cond194.loopexit
  %i.5.lcssa = phi i32 [ 0, %for.cond194.loopexit ], [ %inc201, %for.inc200 ]
  tail call void @ckd_free(i8* %call169) #5
  %mul206 = sub i32 0, %div167
  %sub207 = mul i32 %i.5.lcssa, %mul206
  %104 = load %struct.beam_t** %beam, align 8, !tbaa !0
  %ptrans = getelementptr inbounds %struct.beam_t* %104, i64 0, i32 2
  %105 = load i32* %ptrans, align 4, !tbaa !3
  %cmp209 = icmp slt i32 %105, %sub207
  %sub207. = select i1 %cmp209, i32 %sub207, i32 %105
  %word = getelementptr inbounds %struct.beam_t* %104, i64 0, i32 3
  %106 = load i32* %word, align 4, !tbaa !3
  %cmp218 = icmp slt i32 %106, %sub207
  %cond225 = select i1 %cmp218, i32 %sub207, i32 %106
  br label %if.end232

if.else:                                          ; preds = %if.end156
  %ptrans229 = getelementptr inbounds %struct.beam_t* %91, i64 0, i32 2
  %107 = load i32* %ptrans229, align 4, !tbaa !3
  %word231 = getelementptr inbounds %struct.beam_t* %91, i64 0, i32 3
  %108 = load i32* %word231, align 4, !tbaa !3
  br label %if.end232

if.end232:                                        ; preds = %for.end205, %if.else
  %hb.0 = phi i32 [ %92, %if.else ], [ %sub207, %for.end205 ]
  %pb.0 = phi i32 [ %107, %if.else ], [ %sub207., %for.end205 ]
  %wb.0 = phi i32 [ %108, %if.else ], [ %cond225, %for.end205 ]
  store i32 %besthmmscr.0.lcssa765, i32* %bestscore, align 4, !tbaa !3
  store i32 %bestwordscr.0.lcssa766, i32* %bestwordscore, align 4, !tbaa !3
  %add234 = add nsw i32 %besthmmscr.0.lcssa765, %hb.0
  %add236 = add nsw i32 %besthmmscr.0.lcssa765, %pb.0
  %add238 = add nsw i32 %wb.0, %bestwordscr.0.lcssa766
  %109 = load i32* %n_lextree109, align 4, !tbaa !3
  %110 = trunc i32 %109 to i31
  %cmp245702 = icmp sgt i31 %110, 0
  br i1 %cmp239, label %for.cond242.preheader, label %for.cond267.preheader

for.cond242.preheader:                            ; preds = %if.end232
  br i1 %cmp245702, label %for.body247, label %if.end302

for.cond267.preheader:                            ; preds = %if.end232
  br i1 %cmp245702, label %for.body272.lr.ph, label %if.end302

for.body272.lr.ph:                                ; preds = %for.cond267.preheader
  %rem = srem i32 %frmno.0723, %ptranskip
  %cmp288 = icmp eq i32 %rem, 0
  br label %for.body272

for.body247:                                      ; preds = %for.cond242.preheader, %cond.end261
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %cond.end261 ], [ 0, %for.cond242.preheader ]
  %111 = phi i32 [ %118, %cond.end261 ], [ %109, %for.cond242.preheader ]
  %112 = trunc i64 %indvars.iv745 to i32
  %cmp249 = icmp slt i32 %112, %111
  br i1 %cmp249, label %cond.true251, label %cond.false255

cond.true251:                                     ; preds = %for.body247
  %113 = load %struct.lextree_t*** %ugtree181, align 8, !tbaa !0
  %arrayidx254 = getelementptr inbounds %struct.lextree_t** %113, i64 %indvars.iv745
  br label %cond.end261

cond.false255:                                    ; preds = %for.body247
  %sub257 = sub nsw i32 %112, %111
  %idxprom258 = sext i32 %sub257 to i64
  %114 = load %struct.lextree_t*** %fillertree187, align 8, !tbaa !0
  %arrayidx260 = getelementptr inbounds %struct.lextree_t** %114, i64 %idxprom258
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false255, %cond.true251
  %cond262.in = phi %struct.lextree_t** [ %arrayidx254, %cond.true251 ], [ %arrayidx260, %cond.false255 ]
  %cond262 = load %struct.lextree_t** %cond262.in, align 8
  %115 = load %struct.vithist_t** %vithist404, align 8, !tbaa !0
  %116 = load i32** %phn_heur_list296, align 8, !tbaa !0
  %117 = load i32* %pl_beam297, align 4, !tbaa !3
  tail call void @lextree_hmm_propagate(%struct.lextree_t* %cond262, %struct.kbcore_t* %2, %struct.vithist_t* %115, i32 %frmno.0723, i32 %add234, i32 %add236, i32 %add238, i32* %116, i32 %117, i32 %1) #5
  %indvars.iv.next746 = add i64 %indvars.iv745, 1
  %118 = load i32* %n_lextree109, align 4, !tbaa !3
  %shl244 = shl i32 %118, 1
  %119 = trunc i64 %indvars.iv.next746 to i32
  %cmp245 = icmp slt i32 %119, %shl244
  br i1 %cmp245, label %for.body247, label %if.end302

for.body272:                                      ; preds = %for.body272.lr.ph, %for.inc299
  %indvars.iv743 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next744, %for.inc299 ]
  %120 = phi i32 [ %109, %for.body272.lr.ph ], [ %127, %for.inc299 ]
  %121 = trunc i64 %indvars.iv743 to i32
  %cmp274 = icmp slt i32 %121, %120
  br i1 %cmp274, label %cond.true276, label %cond.false280

cond.true276:                                     ; preds = %for.body272
  %122 = load %struct.lextree_t*** %ugtree181, align 8, !tbaa !0
  %arrayidx279 = getelementptr inbounds %struct.lextree_t** %122, i64 %indvars.iv743
  br label %cond.end286

cond.false280:                                    ; preds = %for.body272
  %sub282 = sub nsw i32 %121, %120
  %idxprom283 = sext i32 %sub282 to i64
  %123 = load %struct.lextree_t*** %fillertree187, align 8, !tbaa !0
  %arrayidx285 = getelementptr inbounds %struct.lextree_t** %123, i64 %idxprom283
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false280, %cond.true276
  %cond287.in = phi %struct.lextree_t** [ %arrayidx279, %cond.true276 ], [ %arrayidx285, %cond.false280 ]
  %cond287 = load %struct.lextree_t** %cond287.in, align 8
  %124 = load %struct.vithist_t** %vithist404, align 8, !tbaa !0
  %125 = load i32** %phn_heur_list296, align 8, !tbaa !0
  %126 = load i32* %pl_beam297, align 4, !tbaa !3
  br i1 %cmp288, label %if.else294, label %if.then290

if.then290:                                       ; preds = %cond.end286
  tail call void @lextree_hmm_propagate(%struct.lextree_t* %cond287, %struct.kbcore_t* %2, %struct.vithist_t* %124, i32 %frmno.0723, i32 %add234, i32 %add236, i32 %add238, i32* %125, i32 %126, i32 %1) #5
  br label %for.inc299

if.else294:                                       ; preds = %cond.end286
  tail call void @lextree_hmm_propagate(%struct.lextree_t* %cond287, %struct.kbcore_t* %2, %struct.vithist_t* %124, i32 %frmno.0723, i32 %add234, i32 %add238, i32 %add238, i32* %125, i32 %126, i32 %1) #5
  br label %for.inc299

for.inc299:                                       ; preds = %if.then290, %if.else294
  %indvars.iv.next744 = add i64 %indvars.iv743, 1
  %127 = load i32* %n_lextree109, align 4, !tbaa !3
  %shl269 = shl i32 %127, 1
  %128 = trunc i64 %indvars.iv.next744 to i32
  %cmp270 = icmp slt i32 %128, %shl269
  br i1 %cmp270, label %for.body272, label %if.end302

if.end302:                                        ; preds = %for.cond242.preheader, %cond.end261, %for.cond267.preheader, %for.inc299
  %129 = load i32* %pl_window_effective, align 4, !tbaa !3
  %sub304 = sub nsw i32 %block_nfeatvec, %129
  %cmp305 = icmp slt i32 %66, %sub304
  br i1 %cmp305, label %for.cond308.preheader, label %if.else400

for.cond308.preheader:                            ; preds = %if.end302
  %sub310709 = add nsw i32 %129, -1
  %cmp311710 = icmp sgt i32 %sub310709, 0
  br i1 %cmp311710, label %for.body313.lr.ph, label %for.end345

for.body313.lr.ph:                                ; preds = %for.cond308.preheader
  %130 = load i32** %cache_best_list359, align 8, !tbaa !0
  %131 = load i16** %cd2cisen363, align 8, !tbaa !0
  %132 = load i16* %131, align 2, !tbaa !7
  %cmp326706 = icmp eq i16 %132, 0
  br label %for.body313

for.cond308.loopexit:                             ; preds = %for.body328, %for.body313
  %133 = load i32* %pl_window_effective, align 4, !tbaa !3
  %sub310 = add nsw i32 %133, -1
  %134 = trunc i64 %indvars.iv.next752 to i32
  %cmp311 = icmp slt i32 %134, %sub310
  br i1 %cmp311, label %for.body313, label %for.end345

for.body313:                                      ; preds = %for.body313.lr.ph, %for.cond308.loopexit
  %indvars.iv751 = phi i64 [ 0, %for.body313.lr.ph ], [ %indvars.iv.next752, %for.cond308.loopexit ]
  %indvars.iv.next752 = add i64 %indvars.iv751, 1
  %arrayidx317 = getelementptr inbounds i32* %130, i64 %indvars.iv.next752
  %135 = load i32* %arrayidx317, align 4, !tbaa !3
  %arrayidx320 = getelementptr inbounds i32* %130, i64 %indvars.iv751
  store i32 %135, i32* %arrayidx320, align 4, !tbaa !3
  br i1 %cmp326706, label %for.body328.lr.ph, label %for.cond308.loopexit

for.body328.lr.ph:                                ; preds = %for.body313
  %136 = load i32*** %cache_ci_senscr95, align 8, !tbaa !0
  %arrayidx333 = getelementptr inbounds i32** %136, i64 %indvars.iv.next752
  %137 = load i32** %arrayidx333, align 8, !tbaa !0
  %arrayidx338 = getelementptr inbounds i32** %136, i64 %indvars.iv751
  %138 = load i32** %arrayidx338, align 8, !tbaa !0
  br label %for.body328

for.body328:                                      ; preds = %for.body328.lr.ph, %for.body328
  %indvars.iv747 = phi i64 [ 0, %for.body328.lr.ph ], [ %indvars.iv.next748, %for.body328 ]
  %arrayidx334 = getelementptr inbounds i32* %137, i64 %indvars.iv747
  %139 = load i32* %arrayidx334, align 4, !tbaa !3
  %arrayidx339 = getelementptr inbounds i32* %138, i64 %indvars.iv747
  store i32 %139, i32* %arrayidx339, align 4, !tbaa !3
  %indvars.iv.next748 = add i64 %indvars.iv747, 1
  %arrayidx324 = getelementptr inbounds i16* %131, i64 %indvars.iv.next748
  %140 = load i16* %arrayidx324, align 2, !tbaa !7
  %conv325 = sext i16 %140 to i32
  %141 = trunc i64 %indvars.iv.next748 to i32
  %cmp326 = icmp eq i32 %141, %conv325
  br i1 %cmp326, label %for.body328, label %for.cond308.loopexit

for.end345:                                       ; preds = %for.cond308.loopexit, %for.cond308.preheader
  %sub310.lcssa = phi i32 [ %sub310709, %for.cond308.preheader ], [ %sub310, %for.cond308.loopexit ]
  %.lcssa = phi i32 [ %129, %for.cond308.preheader ], [ %133, %for.cond308.loopexit ]
  %add347 = add nsw i32 %.lcssa, %66
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds float*** %block_feat, i64 %idxprom348
  %142 = load float*** %arrayidx349, align 8, !tbaa !0
  %143 = load float** %142, align 8, !tbaa !0
  %idxprom353 = sext i32 %sub310.lcssa to i64
  %144 = load i32*** %cache_ci_senscr95, align 8, !tbaa !0
  %arrayidx355 = getelementptr inbounds i32** %144, i64 %idxprom353
  %145 = load i32** %arrayidx355, align 8, !tbaa !0
  tail call void @approx_cont_mgau_ci_eval(%struct.mgau_model_t* %6, float* %143, i32* %145, %struct.kb_t* %kb) #5
  %146 = load i32* %pl_window_effective, align 4, !tbaa !3
  %sub357 = add nsw i32 %146, -1
  %idxprom358 = sext i32 %sub357 to i64
  %147 = load i32** %cache_best_list359, align 8, !tbaa !0
  %arrayidx360 = getelementptr inbounds i32* %147, i64 %idxprom358
  store i32 -2147483648, i32* %arrayidx360, align 4, !tbaa !3
  %148 = load i16** %cd2cisen363, align 8, !tbaa !0
  %149 = load i16* %148, align 2, !tbaa !7
  %cmp366716 = icmp eq i16 %149, 0
  br i1 %cmp366716, label %for.body368.lr.ph, label %if.end403

for.body368.lr.ph:                                ; preds = %for.end345
  %150 = load i32*** %cache_ci_senscr95, align 8, !tbaa !0
  br label %for.body368

for.body368:                                      ; preds = %for.inc397, %for.body368.lr.ph
  %indvars.iv753 = phi i64 [ 0, %for.body368.lr.ph ], [ %indvars.iv.next754, %for.inc397 ]
  %151 = load i32* %pl_window_effective, align 4, !tbaa !3
  %sub371 = add nsw i32 %151, -1
  %idxprom372 = sext i32 %sub371 to i64
  %arrayidx374 = getelementptr inbounds i32** %150, i64 %idxprom372
  %152 = load i32** %arrayidx374, align 8, !tbaa !0
  %arrayidx375 = getelementptr inbounds i32* %152, i64 %indvars.iv753
  %153 = load i32* %arrayidx375, align 4, !tbaa !3
  %arrayidx380 = getelementptr inbounds i32* %147, i64 %idxprom372
  %154 = load i32* %arrayidx380, align 4, !tbaa !3
  %cmp381 = icmp sgt i32 %153, %154
  br i1 %cmp381, label %if.then383, label %for.inc397

if.then383:                                       ; preds = %for.body368
  store i32 %153, i32* %arrayidx380, align 4, !tbaa !3
  br label %for.inc397

for.inc397:                                       ; preds = %for.body368, %if.then383
  %indvars.iv.next754 = add i64 %indvars.iv753, 1
  %arrayidx364 = getelementptr inbounds i16* %148, i64 %indvars.iv.next754
  %155 = load i16* %arrayidx364, align 2, !tbaa !7
  %conv365 = sext i16 %155 to i32
  %156 = trunc i64 %indvars.iv.next754 to i32
  %cmp366 = icmp eq i32 %156, %conv365
  br i1 %cmp366, label %for.body368, label %if.end403

if.else400:                                       ; preds = %if.end302
  %157 = load i32* %pl_window_start, align 4, !tbaa !3
  %inc402 = add nsw i32 %157, 1
  store i32 %inc402, i32* %pl_window_start, align 4, !tbaa !3
  br label %if.end403

if.end403:                                        ; preds = %for.end345, %for.inc397, %if.else400
  %158 = load %struct.vithist_t** %vithist404, align 8, !tbaa !0
  tail call void @vithist_prune(%struct.vithist_t* %158, %struct.dict_t* %4, i32 %frmno.0723, i32 %maxwpf, i32 %maxhistpf, i32 %wb.0) #5
  tail call void @utt_word_trans(%struct.kb_t* %kb, i32 %frmno.0723) #7
  %159 = load %struct.vithist_t** %vithist404, align 8, !tbaa !0
  tail call void @vithist_frame_windup(%struct.vithist_t* %159, i32 %frmno.0723, %struct._IO_FILE* null, %struct.kbcore_t* %2) #5
  tail call void @kb_lextree_active_swap(%struct.kb_t* %kb) #5
  tail call void @ptmr_stop(%struct.ptmr_t* %tm_srch) #5
  %indvars.iv.next756 = add i64 %indvars.iv755, 1
  %inc409 = add nsw i32 %frmno.0723, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next756 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %block_nfeatvec
  br i1 %exitcond, label %for.cond51.for.end410_crit_edge, label %for.body54

for.cond51.for.end410_crit_edge:                  ; preds = %if.end403
  %160 = add i32 %9, %block_nfeatvec
  br label %for.end410

for.end410:                                       ; preds = %for.cond51.for.end410_crit_edge, %for.end49
  %frmno.0.lcssa = phi i32 [ %160, %for.cond51.for.end410_crit_edge ], [ %9, %for.end49 ]
  %n_hmm_eval.0.lcssa = phi i32 [ %n_hmm_eval.1.lcssa768, %for.cond51.for.end410_crit_edge ], [ 0, %for.end49 ]
  %utt_hmm_eval = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 34
  %161 = load i32* %utt_hmm_eval, align 4, !tbaa !3
  %add411 = add nsw i32 %161, %n_hmm_eval.0.lcssa
  store i32 %add411, i32* %utt_hmm_eval, align 4, !tbaa !3
  %nfr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 8
  %162 = load i32* %nfr, align 4, !tbaa !3
  %add412 = add nsw i32 %162, %block_nfeatvec
  store i32 %add412, i32* %nfr, align 4, !tbaa !3
  store i32 %frmno.0.lcssa, i32* %curfrm, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @ptmr_start(%struct.ptmr_t*) #2

; Function Attrs: optsize
declare void @approx_cont_mgau_ci_eval(%struct.mgau_model_t*, float*, i32*, %struct.kb_t*) #2

; Function Attrs: optsize
declare void @ptmr_stop(%struct.ptmr_t*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: optsize
declare void @lextree_ssid_active(%struct.lextree_t*, i32*, i32*) #2

; Function Attrs: optsize
declare void @mdef_sseq2sen_active(%struct.mdef_t*, i32*, i32*) #2

; Function Attrs: optsize
declare void @dict2pid_comsseq2sen_active(%struct.dict2pid_t*, %struct.mdef_t*, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @approx_cont_mgau_frame_eval(%struct.mgau_model_t*, %struct.gs_s*, %struct.subvq_t*, i32, float*, i32*, i32*, i32*, %struct.kb_t*, i32) #2

; Function Attrs: optsize
declare void @dict2pid_comsenscr(%struct.dict2pid_t*, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @lextree_hmm_eval(%struct.lextree_t*, %struct.kbcore_t*, %struct.ascr_t*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @lextree_hmm_histbin(%struct.lextree_t*, i32, i32*, i32, i32) #2

; Function Attrs: optsize
declare void @ckd_free(i8*) #2

; Function Attrs: optsize
declare void @lextree_hmm_propagate(%struct.lextree_t*, %struct.kbcore_t*, %struct.vithist_t*, i32, i32, i32, i32, i32*, i32, i32) #2

; Function Attrs: optsize
declare void @vithist_prune(%struct.vithist_t*, %struct.dict_t*, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare void @vithist_frame_windup(%struct.vithist_t*, i32, %struct._IO_FILE*, %struct.kbcore_t*) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
!7 = metadata !{metadata !"short", metadata !1}
