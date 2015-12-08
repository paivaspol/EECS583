; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/lextree.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lextree_t = type { i32, %struct.gnode_s*, %struct.lextree_lcroot_t*, i32, i32, %struct.lextree_node_t**, %struct.lextree_node_t**, i32, i32, i32, i32 }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
%struct.lextree_lcroot_t = type { i8, %struct.gnode_s* }
%struct.lextree_node_t = type { %struct.hmm_t, %struct.gnode_s*, i32, i32, i32, i32*, i8, i8, i16 }
%struct.hmm_t = type { %struct.hmm_state_t*, %struct.hmm_state_t, %struct.hmm_state_t, i32**, i32 }
%struct.hmm_state_t = type { i32, i32 }
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
%struct.wordprob_t = type { i32, i32 }
%struct.ascr_t = type { i32*, i32* }
%struct.vithist_t = type { %struct.vithist_entry_t**, i32*, i32, i32, i32, i32, i32*, i32*, %struct.vh_lms2vh_t**, %struct.gnode_s* }
%struct.vithist_entry_t = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, %union.vh_lmstate_t }
%union.vh_lmstate_t = type { %struct.anon }
%struct.anon = type { [2 x i16] }
%struct.vh_lms2vh_t = type { i32, i32, %struct.vithist_entry_t*, %struct.gnode_s* }

@.str = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/lextree.c\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str2 = private unnamed_addr constant [42 x i8] c"#Nodes allocated(%d) != #nodes freed(%d)\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"lcroot %d\0A\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str5 = private unnamed_addr constant [24 x i8] c"#State= %d unsupported\0A\00", align 1
@.str6 = private unnamed_addr constant [38 x i8] c"Fr %d  #active %d  best %d  wbest %d\0A\00", align 1
@lextree_hmm_propagate.maxNewHeurScore = internal unnamed_addr global i32 -2147483648, align 4
@lextree_hmm_propagate.lastfrm = internal unnamed_addr global i32 -1, align 4
@.str7 = private unnamed_addr constant [78 x i8] c"Hmm->out.history equals to -1 with score %d and active idx %d, lextree->type\0A\00", align 1
@.str8 = private unnamed_addr constant [27 x i8] c"wid(%d)pr(%d)com(%d)ss(%d)\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"    \00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.lextree_t* @lextree_build(%struct.kbcore_t* nocapture %kbc, %struct.wordprob_t* nocapture %wordprob, i32 %n_word, i8* %lc) #0 {
entry:
  %mdef1 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 1
  %0 = load %struct.mdef_t** %mdef1, align 8, !tbaa !0
  %dict2 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %1 = load %struct.dict_t** %dict2, align 8, !tbaa !0
  %tmat3 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 11
  %2 = load %struct.tmat_t** %tmat3, align 8, !tbaa !0
  %dict2pid = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 3
  %3 = load %struct.dict2pid_t** %dict2pid, align 8, !tbaa !0
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 0
  %4 = load i32* %n_ciphone, align 4, !tbaa !3
  %n_sseq4 = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 10
  %5 = load i32* %n_sseq4, align 4, !tbaa !3
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 2
  %6 = load i32* %n_emit_state, align 4, !tbaa !3
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 64, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 115) #4
  %7 = bitcast i8* %call to %struct.lextree_t*
  %root = getelementptr inbounds i8* %call, i64 8
  %8 = bitcast i8* %root to %struct.gnode_s**
  store %struct.gnode_s* null, %struct.gnode_s** %8, align 8, !tbaa !0
  %conv = sext i32 %5 to i64
  %call5 = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 119) #4
  %9 = bitcast i8* %call5 to %struct.lextree_node_t**
  %call7 = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 122) #4
  %10 = bitcast i8* %call7 to i32**
  %cmp867 = icmp sgt i32 %5, 0
  br i1 %cmp867, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %4, 31
  %shr = ashr i32 %add, 5
  %conv9 = sext i32 %shr to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv931 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next932, %for.body ]
  %call10 = tail call i8* @__ckd_calloc__(i64 %conv9, i64 4, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 124) #4
  %11 = bitcast i8* %call10 to i32*
  %arrayidx = getelementptr inbounds i32** %10, i64 %indvars.iv931
  store i32* %11, i32** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next932 = add i64 %indvars.iv931, 1
  %lftr.wideiv933 = trunc i64 %indvars.iv.next932 to i32
  %exitcond934 = icmp eq i32 %lftr.wideiv933, %5
  br i1 %exitcond934, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp ne i8* %lc, null
  br i1 %tobool, label %for.cond14, label %if.then

if.then:                                          ; preds = %for.end
  %n_lc11 = getelementptr inbounds i8* %call, i64 24
  %12 = bitcast i8* %n_lc11 to i32*
  store i32 0, i32* %12, align 4, !tbaa !3
  %lcroot12 = getelementptr inbounds i8* %call, i64 16
  %13 = bitcast i8* %lcroot12 to %struct.lextree_lcroot_t**
  store %struct.lextree_lcroot_t* null, %struct.lextree_lcroot_t** %13, align 8, !tbaa !0
  %call13 = tail call i8* @__ckd_calloc__(i64 1, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 135) #4
  br label %if.end

for.cond14:                                       ; preds = %for.end, %for.cond14
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %for.cond14 ], [ 0, %for.end ]
  %indvars.iv925 = phi i32 [ %indvars.iv.next926, %for.cond14 ], [ 0, %for.end ]
  %arrayidx16 = getelementptr inbounds i8* %lc, i64 %indvars.iv929
  %14 = load i8* %arrayidx16, align 1, !tbaa !1
  %cmp18 = icmp sgt i8 %14, -1
  %indvars.iv.next930 = add i64 %indvars.iv929, 1
  %indvars.iv.next926 = add i32 %indvars.iv925, 1
  br i1 %cmp18, label %for.cond14, label %for.end23

for.end23:                                        ; preds = %for.cond14
  %n_lc24 = getelementptr inbounds i8* %call, i64 24
  %15 = bitcast i8* %n_lc24 to i32*
  store i32 %indvars.iv925, i32* %15, align 4, !tbaa !3
  %call26 = tail call i8* @__ckd_calloc__(i64 %indvars.iv929, i64 16, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 141) #4
  %16 = bitcast i8* %call26 to %struct.lextree_lcroot_t*
  %lcroot27 = getelementptr inbounds i8* %call, i64 16
  %17 = bitcast i8* %lcroot27 to %struct.lextree_lcroot_t**
  store %struct.lextree_lcroot_t* %16, %struct.lextree_lcroot_t** %17, align 8, !tbaa !0
  %cmp29865 = icmp sgt i32 %indvars.iv925, 0
  br i1 %cmp29865, label %for.body31, label %for.end42

for.body31:                                       ; preds = %for.end23, %for.body31
  %indvars.iv923 = phi i64 [ %indvars.iv.next924, %for.body31 ], [ 0, %for.end23 ]
  %arrayidx33 = getelementptr inbounds i8* %lc, i64 %indvars.iv923
  %18 = load i8* %arrayidx33, align 1, !tbaa !1
  %lc36 = getelementptr inbounds %struct.lextree_lcroot_t* %16, i64 %indvars.iv923, i32 0
  store i8 %18, i8* %lc36, align 1, !tbaa !1
  %root39 = getelementptr inbounds %struct.lextree_lcroot_t* %16, i64 %indvars.iv923, i32 1
  store %struct.gnode_s* null, %struct.gnode_s** %root39, align 8, !tbaa !0
  %indvars.iv.next924 = add i64 %indvars.iv923, 1
  %lftr.wideiv927 = trunc i64 %indvars.iv.next924 to i32
  %exitcond928 = icmp eq i32 %lftr.wideiv927, %indvars.iv925
  br i1 %exitcond928, label %for.end42, label %for.body31

for.end42:                                        ; preds = %for.body31, %for.end23
  %call44 = tail call i8* @__ckd_calloc__(i64 %indvars.iv929, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 149) #4
  br label %if.end

if.end:                                           ; preds = %for.end42, %if.then
  %parent.0.in = phi i8* [ %call44, %for.end42 ], [ %call13, %if.then ]
  %n_lc.1 = phi i32 [ %indvars.iv925, %for.end42 ], [ 0, %if.then ]
  %lcroot.0 = phi %struct.lextree_lcroot_t* [ %16, %for.end42 ], [ null, %if.then ]
  %parent.0 = bitcast i8* %parent.0.in to %struct.lextree_node_t**
  %cmp46859 = icmp sgt i32 %n_word, 0
  br i1 %cmp46859, label %for.body48.lr.ph, label %for.end483

for.body48.lr.ph:                                 ; preds = %if.end
  %word = getelementptr inbounds %struct.dict_t* %1, i64 0, i32 4
  %internal = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 0
  %phone = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 8
  %tp = getelementptr inbounds %struct.tmat_t* %2, i64 0, i32 0
  %cmp90850 = icmp sgt i32 %n_lc.1, 0
  %single_lc = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 2
  %ldiph_lc224 = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 1
  br label %for.body48

for.body48:                                       ; preds = %for.inc481, %for.body48.lr.ph
  %indvars.iv919 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next920, %for.inc481 ]
  %gn.0862 = phi %struct.gnode_s* [ null, %for.body48.lr.ph ], [ %gn.7, %for.inc481 ]
  %ln.0861 = phi %struct.lextree_node_t* [ null, %for.body48.lr.ph ], [ %ln.15, %for.inc481 ]
  %n_node.0860 = phi i32 [ 0, %for.body48.lr.ph ], [ %n_node.9, %for.inc481 ]
  %wid51 = getelementptr inbounds %struct.wordprob_t* %wordprob, i64 %indvars.iv919, i32 0
  %19 = load i32* %wid51, align 4, !tbaa !3
  %prob54 = getelementptr inbounds %struct.wordprob_t* %wordprob, i64 %indvars.iv919, i32 1
  %20 = load i32* %prob54, align 4, !tbaa !3
  %idxprom55 = sext i32 %19 to i64
  %21 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %pronlen57 = getelementptr inbounds %struct.dictword_t* %21, i64 %idxprom55, i32 2
  %22 = load i32* %pronlen57, align 4, !tbaa !3
  %cmp58 = icmp eq i32 %22, 1
  br i1 %cmp58, label %if.then60, label %if.else154

if.then60:                                        ; preds = %for.body48
  %ciphone = getelementptr inbounds %struct.dictword_t* %21, i64 %idxprom55, i32 1
  %23 = load i8** %ciphone, align 8, !tbaa !0
  %24 = load i8* %23, align 1, !tbaa !1
  %conv65 = sext i8 %24 to i32
  br i1 %tobool, label %for.cond89.preheader, label %if.then67

for.cond89.preheader:                             ; preds = %if.then60
  br i1 %cmp90850, label %for.body92.lr.ph, label %for.inc481

for.body92.lr.ph:                                 ; preds = %for.cond89.preheader
  %idxprom97 = sext i8 %24 to i64
  br label %for.body92

if.then67:                                        ; preds = %if.then60
  %25 = load i32*** %internal, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32** %25, i64 %idxprom55
  %26 = load i32** %arrayidx69, align 8, !tbaa !0
  %27 = load i32* %26, align 4, !tbaa !3
  %call77 = tail call fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 %19, i32 %20, i32 1, i32 %27, i32 %6, i32 %conv65) #5
  %idxprom78 = sext i8 %24 to i64
  %28 = load %struct.phone_t** %phone, align 8, !tbaa !0
  %tmat80 = getelementptr inbounds %struct.phone_t* %28, i64 %idxprom78, i32 1
  %29 = load i32* %tmat80, align 4, !tbaa !3
  %idxprom81 = sext i32 %29 to i64
  %30 = load i32**** %tp, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32*** %30, i64 %idxprom81
  %31 = load i32*** %arrayidx82, align 8, !tbaa !0
  %tp83 = getelementptr inbounds %struct.lextree_node_t* %call77, i64 0, i32 0, i32 3
  store i32** %31, i32*** %tp83, align 8, !tbaa !0
  %32 = load %struct.gnode_s** %8, align 8, !tbaa !0
  %33 = bitcast %struct.lextree_node_t* %call77 to i8*
  %call85 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %32, i8* %33) #4
  store %struct.gnode_s* %call85, %struct.gnode_s** %8, align 8, !tbaa !0
  %inc87 = add nsw i32 %n_node.0860, 1
  br label %for.inc481

for.body92:                                       ; preds = %for.inc150, %for.body92.lr.ph
  %indvars.iv915 = phi i64 [ 0, %for.body92.lr.ph ], [ %indvars.iv.next916, %for.inc150 ]
  %ln.1855 = phi %struct.lextree_node_t* [ %ln.0861, %for.body92.lr.ph ], [ %ln.2, %for.inc150 ]
  %n_node.1853 = phi i32 [ %n_node.0860, %for.body92.lr.ph ], [ %n_node.2, %for.inc150 ]
  %np.0851 = phi i32 [ 0, %for.body92.lr.ph ], [ %np.1, %for.inc150 ]
  %arrayidx94 = getelementptr inbounds i8* %lc, i64 %indvars.iv915
  %34 = load i8* %arrayidx94, align 1, !tbaa !1
  %idxprom96 = sext i8 %34 to i64
  %35 = load i32*** %single_lc, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i32** %35, i64 %idxprom97
  %36 = load i32** %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i32* %36, i64 %idxprom96
  %37 = load i32* %arrayidx99, align 4, !tbaa !3
  %cmp101848 = icmp sgt i32 %np.0851, 0
  br i1 %cmp101848, label %land.rhs, label %if.then114

for.cond100:                                      ; preds = %land.rhs
  %inc110 = add nsw i32 %k.0849, 1
  %38 = trunc i64 %indvars.iv.next914 to i32
  %cmp101 = icmp slt i32 %38, %np.0851
  br i1 %cmp101, label %land.rhs, label %if.then114

land.rhs:                                         ; preds = %for.body92, %for.cond100
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %for.cond100 ], [ 0, %for.body92 ]
  %k.0849 = phi i32 [ %inc110, %for.cond100 ], [ 0, %for.body92 ]
  %arrayidx104 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv913
  %39 = load %struct.lextree_node_t** %arrayidx104, align 8, !tbaa !0
  %ssid105 = getelementptr inbounds %struct.lextree_node_t* %39, i64 0, i32 4
  %40 = load i32* %ssid105, align 4, !tbaa !3
  %cmp106 = icmp eq i32 %40, %37
  %indvars.iv.next914 = add i64 %indvars.iv913, 1
  br i1 %cmp106, label %if.else139, label %for.cond100

if.then114:                                       ; preds = %for.cond100, %for.body92
  %call115 = tail call fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 %19, i32 %20, i32 1, i32 %37, i32 %6, i32 %conv65) #5
  %41 = load %struct.phone_t** %phone, align 8, !tbaa !0
  %tmat119 = getelementptr inbounds %struct.phone_t* %41, i64 %idxprom97, i32 1
  %42 = load i32* %tmat119, align 4, !tbaa !3
  %idxprom120 = sext i32 %42 to i64
  %43 = load i32**** %tp, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i32*** %43, i64 %idxprom120
  %44 = load i32*** %arrayidx122, align 8, !tbaa !0
  %tp124 = getelementptr inbounds %struct.lextree_node_t* %call115, i64 0, i32 0, i32 3
  store i32** %44, i32*** %tp124, align 8, !tbaa !0
  %45 = load %struct.gnode_s** %8, align 8, !tbaa !0
  %46 = bitcast %struct.lextree_node_t* %call115 to i8*
  %call126 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %45, i8* %46) #4
  store %struct.gnode_s* %call126, %struct.gnode_s** %8, align 8, !tbaa !0
  %inc128 = add nsw i32 %n_node.1853, 1
  %root131 = getelementptr inbounds %struct.lextree_lcroot_t* %lcroot.0, i64 %indvars.iv915, i32 1
  %47 = load %struct.gnode_s** %root131, align 8, !tbaa !0
  %call132 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %47, i8* %46) #4
  store %struct.gnode_s* %call132, %struct.gnode_s** %root131, align 8, !tbaa !0
  %inc136 = add nsw i32 %np.0851, 1
  %idxprom137 = sext i32 %np.0851 to i64
  %arrayidx138 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %idxprom137
  store %struct.lextree_node_t* %call115, %struct.lextree_node_t** %arrayidx138, align 8, !tbaa !0
  br label %for.inc150

if.else139:                                       ; preds = %land.rhs
  %root142 = getelementptr inbounds %struct.lextree_lcroot_t* %lcroot.0, i64 %indvars.iv915, i32 1
  %48 = load %struct.gnode_s** %root142, align 8, !tbaa !0
  %idxprom143 = sext i32 %k.0849 to i64
  %arrayidx144 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %idxprom143
  %49 = load %struct.lextree_node_t** %arrayidx144, align 8, !tbaa !0
  %50 = bitcast %struct.lextree_node_t* %49 to i8*
  %call145 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %48, i8* %50) #4
  store %struct.gnode_s* %call145, %struct.gnode_s** %root142, align 8, !tbaa !0
  br label %for.inc150

for.inc150:                                       ; preds = %if.then114, %if.else139
  %np.1 = phi i32 [ %inc136, %if.then114 ], [ %np.0851, %if.else139 ]
  %n_node.2 = phi i32 [ %inc128, %if.then114 ], [ %n_node.1853, %if.else139 ]
  %ln.2 = phi %struct.lextree_node_t* [ %call115, %if.then114 ], [ %ln.1855, %if.else139 ]
  %indvars.iv.next916 = add i64 %indvars.iv915, 1
  %lftr.wideiv917 = trunc i64 %indvars.iv.next916 to i32
  %exitcond918 = icmp eq i32 %lftr.wideiv917, %n_lc.1
  br i1 %exitcond918, label %for.inc481, label %for.body92

if.else154:                                       ; preds = %for.body48
  br i1 %tobool, label %if.else209, label %if.then156

if.then156:                                       ; preds = %if.else154
  %51 = load i32*** %internal, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i32** %51, i64 %idxprom55
  %52 = load i32** %arrayidx159, align 8, !tbaa !0
  %53 = load i32* %52, align 4, !tbaa !3
  %ciphone164 = getelementptr inbounds %struct.dictword_t* %21, i64 %idxprom55, i32 1
  %54 = load i8** %ciphone164, align 8, !tbaa !0
  %55 = load i8* %54, align 1, !tbaa !1
  %conv166 = sext i8 %55 to i32
  %gn.1781 = load %struct.gnode_s** %8, align 8
  %tobool169782 = icmp eq %struct.gnode_s* %gn.1781, null
  br i1 %tobool169782, label %if.then185, label %for.body170

for.body170:                                      ; preds = %if.then156, %for.inc182
  %gn.1783 = phi %struct.gnode_s* [ %gn.1, %for.inc182 ], [ %gn.1781, %if.then156 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.1783, i64 0, i32 0, i32 0
  %56 = load i8** %ptr, align 8, !tbaa !0
  %57 = bitcast i8* %56 to %struct.lextree_node_t*
  %ssid171 = getelementptr inbounds i8* %56, i64 56
  %58 = bitcast i8* %ssid171 to i32*
  %59 = load i32* %58, align 4, !tbaa !3
  %cmp172 = icmp eq i32 %59, %53
  br i1 %cmp172, label %land.lhs.true, label %for.inc182

land.lhs.true:                                    ; preds = %for.body170
  %60 = getelementptr inbounds i8* %56, i64 73
  %61 = load i8* %60, align 1, !tbaa !1
  %tobool175 = icmp eq i8 %61, 0
  br i1 %tobool175, label %for.inc182, label %land.lhs.true176

land.lhs.true176:                                 ; preds = %land.lhs.true
  %wid177 = getelementptr inbounds i8* %56, i64 48
  %62 = bitcast i8* %wid177 to i32*
  %63 = load i32* %62, align 4, !tbaa !3
  %cmp178 = icmp slt i32 %63, 0
  br i1 %cmp178, label %if.else200, label %for.inc182

for.inc182:                                       ; preds = %land.lhs.true, %for.body170, %land.lhs.true176
  %next = getelementptr inbounds %struct.gnode_s* %gn.1783, i64 0, i32 1
  %gn.1 = load %struct.gnode_s** %next, align 8
  %tobool169 = icmp eq %struct.gnode_s* %gn.1, null
  br i1 %tobool169, label %if.then185, label %for.body170

if.then185:                                       ; preds = %if.then156, %for.inc182
  %call186 = tail call fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 -1, i32 %20, i32 1, i32 %53, i32 %6, i32 %conv166) #5
  %idxprom187 = sext i8 %55 to i64
  %64 = load %struct.phone_t** %phone, align 8, !tbaa !0
  %tmat190 = getelementptr inbounds %struct.phone_t* %64, i64 %idxprom187, i32 1
  %65 = load i32* %tmat190, align 4, !tbaa !3
  %idxprom191 = sext i32 %65 to i64
  %66 = load i32**** %tp, align 8, !tbaa !0
  %arrayidx193 = getelementptr inbounds i32*** %66, i64 %idxprom191
  %67 = load i32*** %arrayidx193, align 8, !tbaa !0
  %tp195 = getelementptr inbounds %struct.lextree_node_t* %call186, i64 0, i32 0, i32 3
  store i32** %67, i32*** %tp195, align 8, !tbaa !0
  %68 = load %struct.gnode_s** %8, align 8, !tbaa !0
  %69 = bitcast %struct.lextree_node_t* %call186 to i8*
  %call197 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %68, i8* %69) #4
  store %struct.gnode_s* %call197, %struct.gnode_s** %8, align 8, !tbaa !0
  %inc199 = add nsw i32 %n_node.0860, 1
  br label %if.end207

if.else200:                                       ; preds = %land.lhs.true176
  %prob201 = getelementptr inbounds i8* %56, i64 52
  %70 = bitcast i8* %prob201 to i32*
  %71 = load i32* %70, align 4, !tbaa !3
  %cmp202 = icmp slt i32 %71, %20
  br i1 %cmp202, label %if.then204, label %if.end207

if.then204:                                       ; preds = %if.else200
  store i32 %20, i32* %70, align 4, !tbaa !3
  br label %if.end207

if.end207:                                        ; preds = %if.else200, %if.then204, %if.then185
  %gn.1777 = phi %struct.gnode_s* [ %gn.1783, %if.then204 ], [ %gn.1783, %if.else200 ], [ null, %if.then185 ]
  %n_node.3 = phi i32 [ %n_node.0860, %if.then204 ], [ %n_node.0860, %if.else200 ], [ %inc199, %if.then185 ]
  %ln.5 = phi %struct.lextree_node_t* [ %57, %if.then204 ], [ %57, %if.else200 ], [ %call186, %if.then185 ]
  store %struct.lextree_node_t* %ln.5, %struct.lextree_node_t** %parent.0, align 8, !tbaa !0
  br label %for.cond324.preheader

if.else209:                                       ; preds = %if.else154
  %ciphone213 = getelementptr inbounds %struct.dictword_t* %21, i64 %idxprom55, i32 1
  %72 = load i8** %ciphone213, align 8, !tbaa !0
  %73 = load i8* %72, align 1, !tbaa !1
  %conv215 = sext i8 %73 to i32
  %arrayidx220 = getelementptr inbounds i8* %72, i64 1
  %74 = load i8* %arrayidx220, align 1, !tbaa !1
  %idxprom222 = sext i8 %74 to i64
  %idxprom223 = sext i8 %73 to i64
  %75 = load i32**** %ldiph_lc224, align 8, !tbaa !0
  %arrayidx225 = getelementptr inbounds i32*** %75, i64 %idxprom223
  %76 = load i32*** %arrayidx225, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i32** %76, i64 %idxprom222
  %77 = load i32** %arrayidx226, align 8, !tbaa !0
  br i1 %cmp90850, label %for.body230, label %for.cond324.preheader

for.body230:                                      ; preds = %if.else209, %for.inc320
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %for.inc320 ], [ 0, %if.else209 ]
  %n_node.4790 = phi i32 [ %n_node.5, %for.inc320 ], [ %n_node.0860, %if.else209 ]
  %np.2788 = phi i32 [ %np.3, %for.inc320 ], [ 0, %if.else209 ]
  %arrayidx232 = getelementptr inbounds i8* %lc, i64 %indvars.iv877
  %78 = load i8* %arrayidx232, align 1, !tbaa !1
  %idxprom234 = sext i8 %78 to i64
  %arrayidx235 = getelementptr inbounds i32* %77, i64 %idxprom234
  %79 = load i32* %arrayidx235, align 4, !tbaa !3
  %idxprom236 = sext i32 %79 to i64
  %arrayidx237 = getelementptr inbounds %struct.lextree_node_t** %9, i64 %idxprom236
  %80 = load %struct.lextree_node_t** %arrayidx237, align 8, !tbaa !0
  %tobool238 = icmp eq %struct.lextree_node_t* %80, null
  br i1 %tobool238, label %if.then239, label %if.else256

if.then239:                                       ; preds = %for.body230
  %call240 = tail call fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 -1, i32 %20, i32 0, i32 %79, i32 %6, i32 %conv215) #5
  %81 = load %struct.phone_t** %phone, align 8, !tbaa !0
  %tmat244 = getelementptr inbounds %struct.phone_t* %81, i64 %idxprom223, i32 1
  %82 = load i32* %tmat244, align 4, !tbaa !3
  %idxprom245 = sext i32 %82 to i64
  %83 = load i32**** %tp, align 8, !tbaa !0
  %arrayidx247 = getelementptr inbounds i32*** %83, i64 %idxprom245
  %84 = load i32*** %arrayidx247, align 8, !tbaa !0
  %tp249 = getelementptr inbounds %struct.lextree_node_t* %call240, i64 0, i32 0, i32 3
  store i32** %84, i32*** %tp249, align 8, !tbaa !0
  %85 = load %struct.gnode_s** %8, align 8, !tbaa !0
  %86 = bitcast %struct.lextree_node_t* %call240 to i8*
  %call251 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %85, i8* %86) #4
  store %struct.gnode_s* %call251, %struct.gnode_s** %8, align 8, !tbaa !0
  %inc253 = add nsw i32 %n_node.4790, 1
  store %struct.lextree_node_t* %call240, %struct.lextree_node_t** %arrayidx237, align 8, !tbaa !0
  br label %if.end263

if.else256:                                       ; preds = %for.body230
  %prob257 = getelementptr inbounds %struct.lextree_node_t* %80, i64 0, i32 3
  %87 = load i32* %prob257, align 4, !tbaa !3
  %cmp258 = icmp slt i32 %87, %20
  br i1 %cmp258, label %if.then260, label %if.end263

if.then260:                                       ; preds = %if.else256
  store i32 %20, i32* %prob257, align 4, !tbaa !3
  br label %if.end263

if.end263:                                        ; preds = %if.else256, %if.then260, %if.then239
  %n_node.5 = phi i32 [ %n_node.4790, %if.then260 ], [ %n_node.4790, %if.else256 ], [ %inc253, %if.then239 ]
  %ln.7 = phi %struct.lextree_node_t* [ %80, %if.then260 ], [ %80, %if.else256 ], [ %call240, %if.then239 ]
  %88 = load i8* %arrayidx232, align 1, !tbaa !1
  %conv266 = sext i8 %88 to i32
  %shr267 = ashr i32 %conv266, 5
  %idxprom268 = sext i32 %shr267 to i64
  %arrayidx270 = getelementptr inbounds i32** %10, i64 %idxprom236
  %89 = load i32** %arrayidx270, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i32* %89, i64 %idxprom268
  %90 = load i32* %arrayidx271, align 4, !tbaa !3
  %and = and i32 %conv266, 31
  %shl = shl i32 1, %and
  %and275 = and i32 %shl, %90
  %tobool276 = icmp eq i32 %and275, 0
  br i1 %tobool276, label %if.then277, label %for.cond299.preheader

if.then277:                                       ; preds = %if.end263
  %root280 = getelementptr inbounds %struct.lextree_lcroot_t* %lcroot.0, i64 %indvars.iv877, i32 1
  %91 = load %struct.gnode_s** %root280, align 8, !tbaa !0
  %92 = bitcast %struct.lextree_node_t* %ln.7 to i8*
  %call281 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %91, i8* %92) #4
  store %struct.gnode_s* %call281, %struct.gnode_s** %root280, align 8, !tbaa !0
  %93 = load i8* %arrayidx232, align 1, !tbaa !1
  %conv287 = sext i8 %93 to i32
  %and288 = and i32 %conv287, 31
  %shl289 = shl i32 1, %and288
  %shr293 = ashr i32 %conv287, 5
  %idxprom294 = sext i32 %shr293 to i64
  %94 = load i32** %arrayidx270, align 8, !tbaa !0
  %arrayidx297 = getelementptr inbounds i32* %94, i64 %idxprom294
  %95 = load i32* %arrayidx297, align 4, !tbaa !3
  %or = or i32 %shl289, %95
  store i32 %or, i32* %arrayidx297, align 4, !tbaa !3
  br label %for.cond299.preheader

for.cond299.preheader:                            ; preds = %if.end263, %if.then277
  %cmp300785 = icmp sgt i32 %np.2788, 0
  br i1 %cmp300785, label %land.rhs302, label %if.then315

for.cond299:                                      ; preds = %land.rhs302
  %96 = trunc i64 %indvars.iv.next876 to i32
  %cmp300 = icmp slt i32 %96, %np.2788
  br i1 %cmp300, label %land.rhs302, label %if.then315

land.rhs302:                                      ; preds = %for.cond299.preheader, %for.cond299
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %for.cond299 ], [ 0, %for.cond299.preheader ]
  %arrayidx304 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv875
  %97 = load %struct.lextree_node_t** %arrayidx304, align 8, !tbaa !0
  %ssid305 = getelementptr inbounds %struct.lextree_node_t* %97, i64 0, i32 4
  %98 = load i32* %ssid305, align 4, !tbaa !3
  %cmp306 = icmp eq i32 %98, %79
  %indvars.iv.next876 = add i64 %indvars.iv875, 1
  br i1 %cmp306, label %for.inc320, label %for.cond299

if.then315:                                       ; preds = %for.cond299, %for.cond299.preheader
  %inc316 = add nsw i32 %np.2788, 1
  %idxprom317 = sext i32 %np.2788 to i64
  %arrayidx318 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %idxprom317
  store %struct.lextree_node_t* %ln.7, %struct.lextree_node_t** %arrayidx318, align 8, !tbaa !0
  br label %for.inc320

for.inc320:                                       ; preds = %land.rhs302, %if.then315
  %np.3 = phi i32 [ %inc316, %if.then315 ], [ %np.2788, %land.rhs302 ]
  %indvars.iv.next878 = add i64 %indvars.iv877, 1
  %lftr.wideiv879 = trunc i64 %indvars.iv.next878 to i32
  %exitcond880 = icmp eq i32 %lftr.wideiv879, %n_lc.1
  br i1 %exitcond880, label %for.cond324.preheader, label %for.body230

for.cond324.preheader:                            ; preds = %if.else209, %for.inc320, %if.end207
  %np.5.ph = phi i32 [ 1, %if.end207 ], [ 0, %if.else209 ], [ %np.3, %for.inc320 ]
  %n_node.7.ph = phi i32 [ %n_node.3, %if.end207 ], [ %n_node.0860, %if.else209 ], [ %n_node.5, %for.inc320 ]
  %ln.9.ph = phi %struct.lextree_node_t* [ %ln.5, %if.end207 ], [ %ln.0861, %if.else209 ], [ %ln.7, %for.inc320 ]
  %gn.3.ph = phi %struct.gnode_s* [ %gn.1777, %if.end207 ], [ %gn.0862, %if.else209 ], [ %gn.0862, %for.inc320 ]
  %sub = add i32 %22, -1
  %cmp325827 = icmp sgt i32 %sub, 1
  %99 = load i32*** %internal, align 8, !tbaa !0
  %arrayidx331828 = getelementptr inbounds i32** %99, i64 %idxprom55
  %100 = load i32** %arrayidx331828, align 8, !tbaa !0
  %arrayidx332829 = getelementptr inbounds i32* %100, i64 1
  %101 = load i32* %arrayidx332829, align 4, !tbaa !3
  %102 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %ciphone337830 = getelementptr inbounds %struct.dictword_t* %102, i64 %idxprom55, i32 1
  %103 = load i8** %ciphone337830, align 8, !tbaa !0
  %arrayidx338831 = getelementptr inbounds i8* %103, i64 1
  %104 = load i8* %arrayidx338831, align 1, !tbaa !1
  %conv339832 = sext i8 %104 to i32
  br i1 %cmp325827, label %for.cond340.preheader, label %for.end442

for.cond340.preheader:                            ; preds = %for.cond324.preheader, %if.end438
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %if.end438 ], [ 1, %for.cond324.preheader ]
  %conv339838 = phi i32 [ %conv339, %if.end438 ], [ %conv339832, %for.cond324.preheader ]
  %105 = phi i8 [ %140, %if.end438 ], [ %104, %for.cond324.preheader ]
  %106 = phi i32 [ %137, %if.end438 ], [ %101, %for.cond324.preheader ]
  %gn.3836 = phi %struct.gnode_s* [ %gn.6772, %if.end438 ], [ %gn.3.ph, %for.cond324.preheader ]
  %ln.9835 = phi %struct.lextree_node_t* [ %ln.14, %if.end438 ], [ %ln.9.ph, %for.cond324.preheader ]
  %n_node.7834 = phi i32 [ %n_node.8, %if.end438 ], [ %n_node.7.ph, %for.cond324.preheader ]
  %np.5833 = phi i32 [ 1, %if.end438 ], [ %np.5.ph, %for.cond324.preheader ]
  %cmp341810 = icmp sgt i32 %np.5833, 0
  br i1 %cmp341810, label %for.body343, label %for.end367

for.body343:                                      ; preds = %for.inc365, %for.cond340.preheader
  %indvars.iv887 = phi i64 [ 0, %for.cond340.preheader ], [ %indvars.iv.next888, %for.inc365 ]
  %j.2812 = phi i32 [ 0, %for.cond340.preheader ], [ %inc366, %for.inc365 ]
  %arrayidx345 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv887
  %107 = load %struct.lextree_node_t** %arrayidx345, align 8, !tbaa !0
  %children = getelementptr inbounds %struct.lextree_node_t* %107, i64 0, i32 1
  %gn.5800 = load %struct.gnode_s** %children, align 8
  %tobool347801 = icmp eq %struct.gnode_s* %gn.5800, null
  br i1 %tobool347801, label %for.inc365, label %for.body348

for.body348:                                      ; preds = %for.body343, %for.inc359
  %gn.5802 = phi %struct.gnode_s* [ %gn.5, %for.inc359 ], [ %gn.5800, %for.body343 ]
  %ptr350 = getelementptr inbounds %struct.gnode_s* %gn.5802, i64 0, i32 0, i32 0
  %108 = load i8** %ptr350, align 8, !tbaa !0
  %ssid351 = getelementptr inbounds i8* %108, i64 56
  %109 = bitcast i8* %ssid351 to i32*
  %110 = load i32* %109, align 4, !tbaa !3
  %cmp352 = icmp eq i32 %110, %106
  br i1 %cmp352, label %land.lhs.true354, label %for.inc359

land.lhs.true354:                                 ; preds = %for.body348
  %111 = bitcast i8* %108 to %struct.lextree_node_t*
  %112 = getelementptr inbounds i8* %108, i64 73
  %113 = load i8* %112, align 1, !tbaa !1
  %tobool356 = icmp eq i8 %113, 0
  br i1 %tobool356, label %if.else395, label %for.inc359

for.inc359:                                       ; preds = %land.lhs.true354, %for.body348
  %next360 = getelementptr inbounds %struct.gnode_s* %gn.5802, i64 0, i32 1
  %gn.5 = load %struct.gnode_s** %next360, align 8
  %tobool347 = icmp eq %struct.gnode_s* %gn.5, null
  br i1 %tobool347, label %for.inc365, label %for.body348

for.inc365:                                       ; preds = %for.body343, %for.inc359
  %indvars.iv.next888 = add i64 %indvars.iv887, 1
  %inc366 = add nsw i32 %j.2812, 1
  %114 = trunc i64 %indvars.iv.next888 to i32
  %cmp341 = icmp slt i32 %114, %np.5833
  br i1 %cmp341, label %for.body343, label %if.then369

for.end367:                                       ; preds = %for.cond340.preheader
  %tobool368 = icmp eq %struct.gnode_s* %gn.3836, null
  br i1 %tobool368, label %if.then369, label %if.else395

if.then369:                                       ; preds = %for.inc365, %for.end367
  %call370 = tail call fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 -1, i32 %20, i32 0, i32 %106, i32 %6, i32 %conv339838) #5
  %idxprom371 = sext i8 %105 to i64
  %115 = load %struct.phone_t** %phone, align 8, !tbaa !0
  %tmat374 = getelementptr inbounds %struct.phone_t* %115, i64 %idxprom371, i32 1
  %116 = load i32* %tmat374, align 4, !tbaa !3
  %idxprom375 = sext i32 %116 to i64
  %117 = load i32**** %tp, align 8, !tbaa !0
  %arrayidx377 = getelementptr inbounds i32*** %117, i64 %idxprom375
  %118 = load i32*** %arrayidx377, align 8, !tbaa !0
  %tp379 = getelementptr inbounds %struct.lextree_node_t* %call370, i64 0, i32 0, i32 3
  store i32** %118, i32*** %tp379, align 8, !tbaa !0
  br i1 %cmp341810, label %for.body383.lr.ph, label %for.end393

for.body383.lr.ph:                                ; preds = %if.then369
  %119 = bitcast %struct.lextree_node_t* %call370 to i8*
  br label %for.body383

for.body383:                                      ; preds = %for.body383, %for.body383.lr.ph
  %indvars.iv889 = phi i64 [ 0, %for.body383.lr.ph ], [ %indvars.iv.next890, %for.body383 ]
  %arrayidx385 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv889
  %120 = load %struct.lextree_node_t** %arrayidx385, align 8, !tbaa !0
  %children386 = getelementptr inbounds %struct.lextree_node_t* %120, i64 0, i32 1
  %121 = load %struct.gnode_s** %children386, align 8, !tbaa !0
  %call387 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %121, i8* %119) #4
  %122 = load %struct.lextree_node_t** %arrayidx385, align 8, !tbaa !0
  %children390 = getelementptr inbounds %struct.lextree_node_t* %122, i64 0, i32 1
  store %struct.gnode_s* %call387, %struct.gnode_s** %children390, align 8, !tbaa !0
  %indvars.iv.next890 = add i64 %indvars.iv889, 1
  %lftr.wideiv891 = trunc i64 %indvars.iv.next890 to i32
  %exitcond892 = icmp eq i32 %lftr.wideiv891, %np.5833
  br i1 %exitcond892, label %for.end393, label %for.body383

for.end393:                                       ; preds = %for.body383, %if.then369
  %inc394 = add nsw i32 %n_node.7834, 1
  br label %if.end438

if.else395:                                       ; preds = %land.lhs.true354, %for.end367
  %j.2809 = phi i32 [ 0, %for.end367 ], [ %j.2812, %land.lhs.true354 ]
  %gn.6773 = phi %struct.gnode_s* [ %gn.3836, %for.end367 ], [ %gn.5802, %land.lhs.true354 ]
  %ln.13771 = phi %struct.lextree_node_t* [ %ln.9835, %for.end367 ], [ %111, %land.lhs.true354 ]
  %prob396 = getelementptr inbounds %struct.lextree_node_t* %ln.13771, i64 0, i32 3
  %123 = load i32* %prob396, align 4, !tbaa !3
  %cmp397 = icmp slt i32 %123, %20
  br i1 %cmp397, label %if.then399, label %for.cond402.preheader

if.then399:                                       ; preds = %if.else395
  store i32 %20, i32* %prob396, align 4, !tbaa !3
  br label %for.cond402.preheader

for.cond402.preheader:                            ; preds = %if.then399, %if.else395
  %cmp403820 = icmp sgt i32 %j.2809, 0
  br i1 %cmp403820, label %for.body405.lr.ph, label %for.cond417.loopexit

for.body405.lr.ph:                                ; preds = %for.cond402.preheader
  %124 = bitcast %struct.lextree_node_t* %ln.13771 to i8*
  br label %for.body405

for.body405:                                      ; preds = %for.body405, %for.body405.lr.ph
  %indvars.iv893 = phi i64 [ 0, %for.body405.lr.ph ], [ %indvars.iv.next894, %for.body405 ]
  %arrayidx407 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv893
  %125 = load %struct.lextree_node_t** %arrayidx407, align 8, !tbaa !0
  %children408 = getelementptr inbounds %struct.lextree_node_t* %125, i64 0, i32 1
  %126 = load %struct.gnode_s** %children408, align 8, !tbaa !0
  %call409 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %126, i8* %124) #4
  %127 = load %struct.lextree_node_t** %arrayidx407, align 8, !tbaa !0
  %children412 = getelementptr inbounds %struct.lextree_node_t* %127, i64 0, i32 1
  store %struct.gnode_s* %call409, %struct.gnode_s** %children412, align 8, !tbaa !0
  %indvars.iv.next894 = add i64 %indvars.iv893, 1
  %lftr.wideiv895 = trunc i64 %indvars.iv.next894 to i32
  %exitcond896 = icmp eq i32 %lftr.wideiv895, %j.2809
  br i1 %exitcond896, label %for.cond417.loopexit, label %for.body405

for.cond417.loopexit:                             ; preds = %for.body405, %for.cond402.preheader
  %j.5822 = add i32 %j.2809, 1
  %cmp418823 = icmp slt i32 %j.5822, %np.5833
  br i1 %cmp418823, label %for.body420.lr.ph, label %if.end438

for.body420.lr.ph:                                ; preds = %for.cond417.loopexit
  %128 = bitcast %struct.lextree_node_t* %ln.13771 to i8*
  %129 = sext i32 %j.5822 to i64
  br label %for.body420

for.body420:                                      ; preds = %for.cond417.backedge, %for.body420.lr.ph
  %indvars.iv897 = phi i64 [ %129, %for.body420.lr.ph ], [ %indvars.iv.next898, %for.cond417.backedge ]
  %j.5824 = phi i32 [ %j.5822, %for.body420.lr.ph ], [ %j.5, %for.cond417.backedge ]
  %arrayidx422 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv897
  %130 = load %struct.lextree_node_t** %arrayidx422, align 8, !tbaa !0
  %children423 = getelementptr inbounds %struct.lextree_node_t* %130, i64 0, i32 1
  %131 = load %struct.gnode_s** %children423, align 8, !tbaa !0
  %call424 = tail call i32 @glist_chkdup_ptr(%struct.gnode_s* %131, i8* %128) #4
  %tobool425 = icmp eq i32 %call424, 0
  br i1 %tobool425, label %if.then426, label %for.cond417.backedge

for.cond417.backedge:                             ; preds = %for.body420, %if.then426
  %j.5 = add nsw i32 %j.5824, 1
  %indvars.iv.next898 = add i64 %indvars.iv897, 1
  %exitcond900 = icmp eq i32 %j.5, %np.5833
  br i1 %exitcond900, label %if.end438, label %for.body420

if.then426:                                       ; preds = %for.body420
  %132 = load %struct.lextree_node_t** %arrayidx422, align 8, !tbaa !0
  %children429 = getelementptr inbounds %struct.lextree_node_t* %132, i64 0, i32 1
  %133 = load %struct.gnode_s** %children429, align 8, !tbaa !0
  %call430 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %133, i8* %128) #4
  %134 = load %struct.lextree_node_t** %arrayidx422, align 8, !tbaa !0
  %children433 = getelementptr inbounds %struct.lextree_node_t* %134, i64 0, i32 1
  store %struct.gnode_s* %call430, %struct.gnode_s** %children433, align 8, !tbaa !0
  br label %for.cond417.backedge

if.end438:                                        ; preds = %for.cond417.loopexit, %for.cond417.backedge, %for.end393
  %gn.6772 = phi %struct.gnode_s* [ null, %for.end393 ], [ %gn.6773, %for.cond417.backedge ], [ %gn.6773, %for.cond417.loopexit ]
  %n_node.8 = phi i32 [ %inc394, %for.end393 ], [ %n_node.7834, %for.cond417.backedge ], [ %n_node.7834, %for.cond417.loopexit ]
  %ln.14 = phi %struct.lextree_node_t* [ %call370, %for.end393 ], [ %ln.13771, %for.cond417.backedge ], [ %ln.13771, %for.cond417.loopexit ]
  store %struct.lextree_node_t* %ln.14, %struct.lextree_node_t** %parent.0, align 8, !tbaa !0
  %indvars.iv.next905 = add i64 %indvars.iv904, 1
  %135 = load i32*** %internal, align 8, !tbaa !0
  %arrayidx331 = getelementptr inbounds i32** %135, i64 %idxprom55
  %136 = load i32** %arrayidx331, align 8, !tbaa !0
  %arrayidx332 = getelementptr inbounds i32* %136, i64 %indvars.iv.next905
  %137 = load i32* %arrayidx332, align 4, !tbaa !3
  %138 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %ciphone337 = getelementptr inbounds %struct.dictword_t* %138, i64 %idxprom55, i32 1
  %139 = load i8** %ciphone337, align 8, !tbaa !0
  %arrayidx338 = getelementptr inbounds i8* %139, i64 %indvars.iv.next905
  %140 = load i8* %arrayidx338, align 1, !tbaa !1
  %conv339 = sext i8 %140 to i32
  %lftr.wideiv906 = trunc i64 %indvars.iv.next905 to i32
  %exitcond907 = icmp eq i32 %lftr.wideiv906, %sub
  br i1 %exitcond907, label %for.end442, label %for.cond340.preheader

for.end442:                                       ; preds = %if.end438, %for.cond324.preheader
  %conv339.lcssa = phi i32 [ %conv339832, %for.cond324.preheader ], [ %conv339, %if.end438 ]
  %.lcssa826 = phi i8 [ %104, %for.cond324.preheader ], [ %140, %if.end438 ]
  %.lcssa825 = phi i32 [ %101, %for.cond324.preheader ], [ %137, %if.end438 ]
  %gn.3.lcssa = phi %struct.gnode_s* [ %gn.3.ph, %for.cond324.preheader ], [ %gn.6772, %if.end438 ]
  %n_node.7.lcssa = phi i32 [ %n_node.7.ph, %for.cond324.preheader ], [ %n_node.8, %if.end438 ]
  %np.5.lcssa = phi i32 [ %np.5.ph, %for.cond324.preheader ], [ 1, %if.end438 ]
  %call455 = tail call fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 %19, i32 %20, i32 1, i32 %.lcssa825, i32 %6, i32 %conv339.lcssa) #5
  %idxprom456 = sext i8 %.lcssa826 to i64
  %141 = load %struct.phone_t** %phone, align 8, !tbaa !0
  %tmat459 = getelementptr inbounds %struct.phone_t* %141, i64 %idxprom456, i32 1
  %142 = load i32* %tmat459, align 4, !tbaa !3
  %idxprom460 = sext i32 %142 to i64
  %143 = load i32**** %tp, align 8, !tbaa !0
  %arrayidx462 = getelementptr inbounds i32*** %143, i64 %idxprom460
  %144 = load i32*** %arrayidx462, align 8, !tbaa !0
  %tp464 = getelementptr inbounds %struct.lextree_node_t* %call455, i64 0, i32 0, i32 3
  store i32** %144, i32*** %tp464, align 8, !tbaa !0
  %cmp466845 = icmp sgt i32 %np.5.lcssa, 0
  br i1 %cmp466845, label %for.body468.lr.ph, label %for.end478

for.body468.lr.ph:                                ; preds = %for.end442
  %145 = bitcast %struct.lextree_node_t* %call455 to i8*
  br label %for.body468

for.body468:                                      ; preds = %for.body468, %for.body468.lr.ph
  %indvars.iv908 = phi i64 [ 0, %for.body468.lr.ph ], [ %indvars.iv.next909, %for.body468 ]
  %arrayidx470 = getelementptr inbounds %struct.lextree_node_t** %parent.0, i64 %indvars.iv908
  %146 = load %struct.lextree_node_t** %arrayidx470, align 8, !tbaa !0
  %children471 = getelementptr inbounds %struct.lextree_node_t* %146, i64 0, i32 1
  %147 = load %struct.gnode_s** %children471, align 8, !tbaa !0
  %call472 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %147, i8* %145) #4
  %148 = load %struct.lextree_node_t** %arrayidx470, align 8, !tbaa !0
  %children475 = getelementptr inbounds %struct.lextree_node_t* %148, i64 0, i32 1
  store %struct.gnode_s* %call472, %struct.gnode_s** %children475, align 8, !tbaa !0
  %indvars.iv.next909 = add i64 %indvars.iv908, 1
  %lftr.wideiv910 = trunc i64 %indvars.iv.next909 to i32
  %exitcond911 = icmp eq i32 %lftr.wideiv910, %np.5.lcssa
  br i1 %exitcond911, label %for.end478, label %for.body468

for.end478:                                       ; preds = %for.body468, %for.end442
  %inc479 = add nsw i32 %n_node.7.lcssa, 1
  br label %for.inc481

for.inc481:                                       ; preds = %for.cond89.preheader, %for.inc150, %for.end478, %if.then67
  %n_node.9 = phi i32 [ %inc87, %if.then67 ], [ %inc479, %for.end478 ], [ %n_node.0860, %for.cond89.preheader ], [ %n_node.2, %for.inc150 ]
  %ln.15 = phi %struct.lextree_node_t* [ %call77, %if.then67 ], [ %call455, %for.end478 ], [ %ln.0861, %for.cond89.preheader ], [ %ln.2, %for.inc150 ]
  %gn.7 = phi %struct.gnode_s* [ %gn.0862, %if.then67 ], [ %gn.3.lcssa, %for.end478 ], [ %gn.0862, %for.cond89.preheader ], [ %gn.0862, %for.inc150 ]
  %indvars.iv.next920 = add i64 %indvars.iv919, 1
  %lftr.wideiv921 = trunc i64 %indvars.iv.next920 to i32
  %exitcond922 = icmp eq i32 %lftr.wideiv921, %n_word
  br i1 %exitcond922, label %for.end483, label %for.body48

for.end483:                                       ; preds = %for.inc481, %if.end
  %n_node.0.lcssa = phi i32 [ 0, %if.end ], [ %n_node.9, %for.inc481 ]
  %n_node484 = getelementptr inbounds i8* %call, i64 28
  %149 = bitcast i8* %n_node484 to i32*
  store i32 %n_node.0.lcssa, i32* %149, align 4, !tbaa !3
  %conv485 = sext i32 %n_node.0.lcssa to i64
  %call486 = tail call i8* @__ckd_calloc__(i64 %conv485, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 329) #4
  %150 = bitcast i8* %call486 to %struct.lextree_node_t**
  %active = getelementptr inbounds i8* %call, i64 32
  %151 = bitcast i8* %active to %struct.lextree_node_t***
  store %struct.lextree_node_t** %150, %struct.lextree_node_t*** %151, align 8, !tbaa !0
  %call488 = tail call i8* @__ckd_calloc__(i64 %conv485, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 330) #4
  %152 = bitcast i8* %call488 to %struct.lextree_node_t**
  %next_active = getelementptr inbounds i8* %call, i64 40
  %153 = bitcast i8* %next_active to %struct.lextree_node_t***
  store %struct.lextree_node_t** %152, %struct.lextree_node_t*** %153, align 8, !tbaa !0
  %n_active = getelementptr inbounds i8* %call, i64 48
  %154 = bitcast i8* %n_active to i32*
  store i32 0, i32* %154, align 4, !tbaa !3
  %n_next_active = getelementptr inbounds i8* %call, i64 52
  %155 = bitcast i8* %n_next_active to i32*
  store i32 0, i32* %155, align 4, !tbaa !3
  tail call void @ckd_free(i8* %call5) #4
  br i1 %cmp867, label %for.body492, label %for.end497

for.body492:                                      ; preds = %for.end483, %for.body492
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body492 ], [ 0, %for.end483 ]
  %arrayidx494 = getelementptr inbounds i32** %10, i64 %indvars.iv
  %156 = load i32** %arrayidx494, align 8, !tbaa !0
  %157 = bitcast i32* %156 to i8*
  tail call void @ckd_free(i8* %157) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end497, label %for.body492

for.end497:                                       ; preds = %for.body492, %for.end483
  tail call void @ckd_free(i8* %call7) #4
  tail call void @ckd_free(i8* %parent.0.in) #4
  ret %struct.lextree_t* %7
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.lextree_node_t* @lextree_node_alloc(i32 %wid, i32 %prob, i32 %comp, i32 %ssid, i32 %n_state, i32 %ci) #0 {
entry:
  %call = tail call i8* @__mymalloc__(i32 80, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 76) #4
  %0 = bitcast i8* %call to %struct.lextree_node_t*
  %children = getelementptr inbounds i8* %call, i64 40
  %1 = bitcast i8* %children to %struct.gnode_s**
  store %struct.gnode_s* null, %struct.gnode_s** %1, align 8, !tbaa !0
  %wid1 = getelementptr inbounds i8* %call, i64 48
  %2 = bitcast i8* %wid1 to i32*
  store i32 %wid, i32* %2, align 4, !tbaa !3
  %prob2 = getelementptr inbounds i8* %call, i64 52
  %3 = bitcast i8* %prob2 to i32*
  store i32 %prob, i32* %3, align 4, !tbaa !3
  %ssid3 = getelementptr inbounds i8* %call, i64 56
  %4 = bitcast i8* %ssid3 to i32*
  store i32 %ssid, i32* %4, align 4, !tbaa !3
  %conv = trunc i32 %ci to i8
  %5 = getelementptr inbounds i8* %call, i64 72
  store i8 %conv, i8* %5, align 1, !tbaa !1
  %conv5 = trunc i32 %comp to i8
  %6 = getelementptr inbounds i8* %call, i64 73
  store i8 %conv5, i8* %6, align 1, !tbaa !1
  %frame = getelementptr inbounds i8* %call, i64 74
  %7 = bitcast i8* %frame to i16*
  store i16 -1, i16* %7, align 2, !tbaa !4
  %conv6 = sext i32 %n_state to i64
  %call7 = tail call i8* @__ckd_calloc__(i64 %conv6, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 84) #4
  %8 = bitcast i8* %call7 to %struct.hmm_state_t*
  %hmm = bitcast i8* %call to %struct.hmm_t*
  %state = bitcast i8* %call to %struct.hmm_state_t**
  store %struct.hmm_state_t* %8, %struct.hmm_state_t** %state, align 8, !tbaa !0
  tail call void @hmm_clear(%struct.hmm_t* %hmm, i32 %n_state) #4
  ret %struct.lextree_node_t* %0
}

; Function Attrs: optsize
declare %struct.gnode_s* @glist_add_ptr(%struct.gnode_s*, i8*) #1

; Function Attrs: optsize
declare i32 @glist_chkdup_ptr(%struct.gnode_s*, i8*) #1

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @lextree_free(%struct.lextree_t* %lextree) #0 {
entry:
  %n_lc = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 3
  %0 = load i32* %n_lc, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %lcroot = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load %struct.lextree_lcroot_t** %lcroot, align 8, !tbaa !0
  %root = getelementptr inbounds %struct.lextree_lcroot_t* %1, i64 %indvars.iv, i32 1
  %2 = load %struct.gnode_s** %root, align 8, !tbaa !0
  tail call void @glist_free(%struct.gnode_s* %2) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i32* %n_lc, align 4, !tbaa !3
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %4, %3
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %5 = load %struct.lextree_lcroot_t** %lcroot, align 8, !tbaa !0
  %6 = getelementptr inbounds %struct.lextree_lcroot_t* %5, i64 0, i32 0
  tail call void @ckd_free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %root4 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 1
  %gn.071 = load %struct.gnode_s** %root4, align 8
  %tobool72 = icmp eq %struct.gnode_s* %gn.071, null
  br i1 %tobool72, label %for.end32, label %for.body6

for.cond25.preheader:                             ; preds = %for.inc21
  %gn.164.pre = load %struct.gnode_s** %root4, align 8
  %tobool2665 = icmp eq %struct.gnode_s* %gn.164.pre, null
  br i1 %tobool2665, label %for.end32, label %for.body27

for.body6:                                        ; preds = %if.end, %for.inc21
  %gn.073 = phi %struct.gnode_s* [ %gn.0, %for.inc21 ], [ %gn.071, %if.end ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.073, i64 0, i32 0, i32 0
  %7 = load i8** %ptr, align 8, !tbaa !0
  %children = getelementptr inbounds i8* %7, i64 40
  %8 = bitcast i8* %children to %struct.gnode_s**
  %gn2.068 = load %struct.gnode_s** %8, align 8
  %tobool869 = icmp eq %struct.gnode_s* %gn2.068, null
  br i1 %tobool869, label %for.inc21, label %for.body9

for.body9:                                        ; preds = %for.body6, %for.inc19
  %gn2.070 = phi %struct.gnode_s* [ %gn2.0, %for.inc19 ], [ %gn2.068, %for.body6 ]
  %ptr11 = getelementptr inbounds %struct.gnode_s* %gn2.070, i64 0, i32 0, i32 0
  %9 = load i8** %ptr11, align 8, !tbaa !0
  %10 = getelementptr inbounds i8* %9, i64 73
  %11 = load i8* %10, align 1, !tbaa !1
  %cmp12 = icmp sgt i8 %11, -1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body9
  store i8 -1, i8* %10, align 1, !tbaa !1
  %ssid = getelementptr inbounds i8* %9, i64 56
  %12 = bitcast i8* %ssid to i32*
  store i32 1, i32* %12, align 4, !tbaa !3
  br label %for.inc19

if.else:                                          ; preds = %for.body9
  %ssid16 = getelementptr inbounds i8* %9, i64 56
  %13 = bitcast i8* %ssid16 to i32*
  %14 = load i32* %13, align 4, !tbaa !3
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %13, align 4, !tbaa !3
  br label %for.inc19

for.inc19:                                        ; preds = %if.then14, %if.else
  %next = getelementptr inbounds %struct.gnode_s* %gn2.070, i64 0, i32 1
  %gn2.0 = load %struct.gnode_s** %next, align 8
  %tobool8 = icmp eq %struct.gnode_s* %gn2.0, null
  br i1 %tobool8, label %for.inc21, label %for.body9

for.inc21:                                        ; preds = %for.inc19, %for.body6
  %next22 = getelementptr inbounds %struct.gnode_s* %gn.073, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next22, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.cond25.preheader, label %for.body6

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %gn.167 = phi %struct.gnode_s* [ %gn.1, %for.body27 ], [ %gn.164.pre, %for.cond25.preheader ]
  %k.066 = phi i32 [ %add, %for.body27 ], [ 0, %for.cond25.preheader ]
  %ptr29 = getelementptr inbounds %struct.gnode_s* %gn.167, i64 0, i32 0, i32 0
  %15 = load i8** %ptr29, align 8, !tbaa !0
  %16 = bitcast i8* %15 to %struct.lextree_node_t*
  %call = tail call fastcc i32 @lextree_subtree_free(%struct.lextree_node_t* %16, i32 0) #5
  %add = add nsw i32 %call, %k.066
  %next31 = getelementptr inbounds %struct.gnode_s* %gn.167, i64 0, i32 1
  %gn.1 = load %struct.gnode_s** %next31, align 8
  %tobool26 = icmp eq %struct.gnode_s* %gn.1, null
  br i1 %tobool26, label %for.cond25.for.end32_crit_edge, label %for.body27

for.cond25.for.end32_crit_edge:                   ; preds = %for.body27
  %.pre = load %struct.gnode_s** %root4, align 8, !tbaa !0
  br label %for.end32

for.end32:                                        ; preds = %if.end, %for.cond25.for.end32_crit_edge, %for.cond25.preheader
  %17 = phi %struct.gnode_s* [ %.pre, %for.cond25.for.end32_crit_edge ], [ null, %for.cond25.preheader ], [ null, %if.end ]
  %k.0.lcssa = phi i32 [ %add, %for.cond25.for.end32_crit_edge ], [ 0, %for.cond25.preheader ], [ 0, %if.end ]
  tail call void @glist_free(%struct.gnode_s* %17) #4
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %18 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %19 = bitcast %struct.lextree_node_t** %18 to i8*
  tail call void @ckd_free(i8* %19) #4
  %next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 6
  %20 = load %struct.lextree_node_t*** %next_active, align 8, !tbaa !0
  %21 = bitcast %struct.lextree_node_t** %20 to i8*
  tail call void @ckd_free(i8* %21) #4
  %n_node = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 4
  %22 = load i32* %n_node, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %k.0.lcssa, %22
  br i1 %cmp34, label %if.end38, label %if.then36

if.then36:                                        ; preds = %for.end32
  tail call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 413, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #4
  %23 = load i32* %n_node, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([42 x i8]* @.str2, i64 0, i64 0), i32 %23, i32 %k.0.lcssa) #4
  br label %if.end38

if.end38:                                         ; preds = %for.end32, %if.then36
  %24 = bitcast %struct.lextree_t* %lextree to i8*
  tail call void @ckd_free(i8* %24) #4
  ret void
}

; Function Attrs: optsize
declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @lextree_subtree_free(%struct.lextree_node_t* %ln, i32 %level) #0 {
entry:
  %children = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 1
  %gn.014 = load %struct.gnode_s** %children, align 8
  %tobool15 = icmp eq %struct.gnode_s* %gn.014, null
  br i1 %tobool15, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %level, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %gn.017 = phi %struct.gnode_s* [ %gn.014, %for.body.lr.ph ], [ %gn.0, %for.body ]
  %k.016 = phi i32 [ 0, %for.body.lr.ph ], [ %add1, %for.body ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.017, i64 0, i32 0, i32 0
  %0 = load i8** %ptr, align 8, !tbaa !0
  %1 = bitcast i8* %0 to %struct.lextree_node_t*
  %call = tail call fastcc i32 @lextree_subtree_free(%struct.lextree_node_t* %1, i32 %add) #5
  %add1 = add nsw i32 %call, %k.016
  %next = getelementptr inbounds %struct.gnode_s* %gn.017, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load %struct.gnode_s** %children, align 8, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %2 = phi %struct.gnode_s* [ %.pre, %for.cond.for.end_crit_edge ], [ null, %entry ]
  %k.0.lcssa = phi i32 [ %add1, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  tail call void @glist_free(%struct.gnode_s* %2) #4
  store %struct.gnode_s* null, %struct.gnode_s** %children, align 8, !tbaa !0
  %cmp = icmp eq i32 %level, 1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %ssid = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 4
  %3 = load i32* %ssid, align 4, !tbaa !3
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %ssid, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end, %lor.lhs.false
  %4 = bitcast %struct.lextree_node_t* %ln to i8*
  tail call void @__myfree__(i8* %4, i32 80, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 362) #4
  %inc = add nsw i32 %k.0.lcssa, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %k.1 = phi i32 [ %inc, %if.then ], [ %k.0.lcssa, %lor.lhs.false ]
  ret i32 %k.1
}

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @lextree_ci_active(%struct.lextree_t* nocapture %lextree, i32* nocapture %ci_active) #0 {
entry:
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %0 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %n_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %1 = load i32* %n_active, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.lextree_node_t** %0, i64 %indvars.iv
  %2 = load %struct.lextree_node_t** %arrayidx, align 8, !tbaa !0
  %ci = getelementptr inbounds %struct.lextree_node_t* %2, i64 0, i32 6
  %3 = load i8* %ci, align 1, !tbaa !1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 31
  %shl = shl i32 1, %and
  %shr = ashr i32 %conv, 5
  %idxprom3 = sext i32 %shr to i64
  %arrayidx4 = getelementptr inbounds i32* %ci_active, i64 %idxprom3
  %4 = load i32* %arrayidx4, align 4, !tbaa !3
  %or = or i32 %shl, %4
  store i32 %or, i32* %arrayidx4, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %n_active, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lextree_ssid_active(%struct.lextree_t* nocapture %lextree, i32* nocapture %ssid, i32* nocapture %comssid) #0 {
entry:
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %0 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %n_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %1 = load i32* %n_active, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.lextree_node_t** %0, i64 %indvars.iv
  %2 = load %struct.lextree_node_t** %arrayidx, align 8, !tbaa !0
  %composite = getelementptr inbounds %struct.lextree_node_t* %2, i64 0, i32 7
  %3 = load i8* %composite, align 1, !tbaa !1
  %tobool = icmp eq i8 %3, 0
  %ssid1 = getelementptr inbounds %struct.lextree_node_t* %2, i64 0, i32 4
  %4 = load i32* %ssid1, align 4, !tbaa !3
  %idxprom2 = sext i32 %4 to i64
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i32* %comssid, i64 %idxprom2
  store i32 1, i32* %arrayidx3, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32* %ssid, i64 %idxprom2
  store i32 1, i32* %arrayidx6, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %n_active, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lextree_utt_end(%struct.lextree_t* nocapture %l, %struct.kbcore_t* nocapture %kbc) #0 {
entry:
  %n_active = getelementptr inbounds %struct.lextree_t* %l, i64 0, i32 7
  %0 = load i32* %n_active, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mdef1 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 1
  %1 = load %struct.mdef_t** %mdef1, align 8, !tbaa !0
  %active = getelementptr inbounds %struct.lextree_t* %l, i64 0, i32 5
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %1, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.lextree_node_t** %2, i64 %indvars.iv
  %3 = load %struct.lextree_node_t** %arrayidx, align 8, !tbaa !0
  %frame = getelementptr inbounds %struct.lextree_node_t* %3, i64 0, i32 8
  store i16 -1, i16* %frame, align 2, !tbaa !4
  %hmm = getelementptr inbounds %struct.lextree_node_t* %3, i64 0, i32 0
  %4 = load i32* %n_emit_state, align 4, !tbaa !3
  tail call void @hmm_clear(%struct.hmm_t* %hmm, i32 %4) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %n_active, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  store i32 0, i32* %n_active, align 4, !tbaa !3
  %n_next_active = getelementptr inbounds %struct.lextree_t* %l, i64 0, i32 8
  store i32 0, i32* %n_next_active, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @hmm_clear(%struct.hmm_t*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @lextree_dump(%struct.lextree_t* nocapture %lextree, %struct.dict_t* nocapture %dict, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %root = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 1
  %gn.040 = load %struct.gnode_s** %root, align 8
  %tobool41 = icmp eq %struct.gnode_s* %gn.040, null
  br i1 %tobool41, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %gn.042 = phi %struct.gnode_s* [ %gn.0, %for.body ], [ %gn.040, %entry ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.042, i64 0, i32 0, i32 0
  %0 = load i8** %ptr, align 8, !tbaa !0
  %1 = bitcast i8* %0 to %struct.lextree_node_t*
  tail call fastcc void @lextree_subtree_print(%struct.lextree_node_t* %1, i32 0, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #5
  %next = getelementptr inbounds %struct.gnode_s* %gn.042, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %n_lc = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 3
  %2 = load i32* %n_lc, align 4, !tbaa !3
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body4.lr.ph, label %if.end

for.body4.lr.ph:                                  ; preds = %for.end
  %lcroot = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 2
  br label %for.body4

for.body4:                                        ; preds = %for.inc17, %for.body4.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %for.inc17 ]
  %3 = load %struct.lextree_lcroot_t** %lcroot, align 8, !tbaa !0
  %lc = getelementptr inbounds %struct.lextree_lcroot_t* %3, i64 %indvars.iv, i32 0
  %4 = load i8* %lc, align 1, !tbaa !1
  %conv = sext i8 %4 to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 %conv) #4
  %5 = load %struct.lextree_lcroot_t** %lcroot, align 8, !tbaa !0
  %root8 = getelementptr inbounds %struct.lextree_lcroot_t* %5, i64 %indvars.iv, i32 1
  %gn.135 = load %struct.gnode_s** %root8, align 8
  %tobool1036 = icmp eq %struct.gnode_s* %gn.135, null
  br i1 %tobool1036, label %for.inc17, label %for.body11

for.body11:                                       ; preds = %for.body4, %for.body11
  %gn.137 = phi %struct.gnode_s* [ %gn.1, %for.body11 ], [ %gn.135, %for.body4 ]
  %ptr13 = getelementptr inbounds %struct.gnode_s* %gn.137, i64 0, i32 0, i32 0
  %6 = load i8** %ptr13, align 8, !tbaa !0
  %7 = bitcast i8* %6 to %struct.lextree_node_t*
  tail call fastcc void @lextree_node_print(%struct.lextree_node_t* %7, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #5
  %next15 = getelementptr inbounds %struct.gnode_s* %gn.137, i64 0, i32 1
  %gn.1 = load %struct.gnode_s** %next15, align 8
  %tobool10 = icmp eq %struct.gnode_s* %gn.1, null
  br i1 %tobool10, label %for.inc17, label %for.body11

for.inc17:                                        ; preds = %for.body11, %for.body4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* %n_lc, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %9, %8
  br i1 %cmp3, label %for.body4, label %if.end

if.end:                                           ; preds = %for.inc17, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @lextree_subtree_print(%struct.lextree_node_t* nocapture %ln, i32 %level, %struct.dict_t* nocapture %dict, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %cmp17 = icmp sgt i32 %level, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp)
  %inc = add nsw i32 %i.018, 1
  %exitcond = icmp eq i32 %inc, %level
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  tail call fastcc void @lextree_node_print(%struct.lextree_node_t* %ln, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #5
  %children = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 1
  %gn.014 = load %struct.gnode_s** %children, align 8
  %tobool15 = icmp eq %struct.gnode_s* %gn.014, null
  br i1 %tobool15, label %for.end4, label %for.body2.lr.ph

for.body2.lr.ph:                                  ; preds = %for.end
  %add = add nsw i32 %level, 1
  br label %for.body2

for.body2:                                        ; preds = %for.body2.lr.ph, %for.body2
  %gn.016 = phi %struct.gnode_s* [ %gn.014, %for.body2.lr.ph ], [ %gn.0, %for.body2 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.016, i64 0, i32 0, i32 0
  %1 = load i8** %ptr, align 8, !tbaa !0
  %2 = bitcast i8* %1 to %struct.lextree_node_t*
  tail call fastcc void @lextree_subtree_print(%struct.lextree_node_t* %2, i32 %add, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #5
  %next = getelementptr inbounds %struct.gnode_s* %gn.016, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.end4, label %for.body2

for.end4:                                         ; preds = %for.body2, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @lextree_node_print(%struct.lextree_node_t* nocapture %ln, %struct.dict_t* nocapture %dict, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %wid = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 2
  %0 = load i32* %wid, align 4, !tbaa !3
  %prob = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 3
  %1 = load i32* %prob, align 4, !tbaa !3
  %composite = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 7
  %2 = load i8* %composite, align 1, !tbaa !1
  %conv = sext i8 %2 to i32
  %ssid = getelementptr inbounds %struct.lextree_node_t* %ln, i64 0, i32 4
  %3 = load i32* %ssid, align 4, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str8, i64 0, i64 0), i32 %0, i32 %1, i32 %conv, i32 %3) #4
  %4 = load i32* %wid, align 4, !tbaa !3
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %4 to i64
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %5 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %word4 = getelementptr inbounds %struct.dictword_t* %5, i64 %idxprom, i32 0
  %6 = load i8** %word4, align 8, !tbaa !0
  %fputs = tail call i32 @fputs(i8* %6, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lextree_enter(%struct.lextree_t* nocapture %lextree, i8 signext %lc, i32 %cf, i32 %inscore, i32 %inhist, i32 %thresh) #0 {
entry:
  %add = add nsw i32 %cf, 1
  %n_lc = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 3
  %0 = load i32* %n_lc, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp364 = icmp sgt i32 %0, 0
  %lcroot = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 2
  %1 = load %struct.lextree_lcroot_t** %lcroot, align 8, !tbaa !0
  br i1 %cmp364, label %land.rhs, label %for.end

if.then:                                          ; preds = %entry
  %root1 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 1
  br label %if.end

for.cond:                                         ; preds = %land.rhs
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %2, %0
  br i1 %cmp3, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %i.065 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %lc4 = getelementptr inbounds %struct.lextree_lcroot_t* %1, i64 %indvars.iv, i32 0
  %3 = load i8* %lc4, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %3, %lc
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.065, 1
  br i1 %cmp6, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond.preheader, %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %i.065, %land.rhs ], [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %idxprom8 = sext i32 %i.0.lcssa to i64
  %root11 = getelementptr inbounds %struct.lextree_lcroot_t* %1, i64 %idxprom8, i32 1
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %root.0.in = phi %struct.gnode_s** [ %root1, %if.then ], [ %root11, %for.end ]
  %n_next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 8
  %4 = load i32* %n_next_active, align 4, !tbaa !3
  %gn.060 = load %struct.gnode_s** %root.0.in, align 8
  %tobool61 = icmp eq %struct.gnode_s* %gn.060, null
  br i1 %tobool61, label %for.end36, label %for.body13.lr.ph

for.body13.lr.ph:                                 ; preds = %if.end
  %conv28 = trunc i32 %add to i16
  %next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 6
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc35
  %gn.063 = phi %struct.gnode_s* [ %gn.060, %for.body13.lr.ph ], [ %gn.0, %for.inc35 ]
  %n.062 = phi i32 [ %4, %for.body13.lr.ph ], [ %n.1, %for.inc35 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.063, i64 0, i32 0, i32 0
  %5 = load i8** %ptr, align 8, !tbaa !0
  %6 = bitcast i8* %5 to %struct.lextree_node_t*
  %prob = getelementptr inbounds i8* %5, i64 52
  %7 = bitcast i8* %prob to i32*
  %8 = load i32* %7, align 4, !tbaa !3
  %add15 = add nsw i32 %8, %inscore
  %cmp16 = icmp slt i32 %add15, %thresh
  br i1 %cmp16, label %for.inc35, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body13
  %in = getelementptr inbounds i8* %5, i64 8
  %score = bitcast i8* %in to i32*
  %9 = load i32* %score, align 4, !tbaa !3
  %cmp18 = icmp slt i32 %9, %add15
  br i1 %cmp18, label %if.then20, label %for.inc35

if.then20:                                        ; preds = %land.lhs.true
  store i32 %add15, i32* %score, align 4, !tbaa !3
  %history = getelementptr inbounds i8* %5, i64 12
  %10 = bitcast i8* %history to i32*
  store i32 %inhist, i32* %10, align 4, !tbaa !3
  %frame = getelementptr inbounds i8* %5, i64 74
  %11 = bitcast i8* %frame to i16*
  %12 = load i16* %11, align 2, !tbaa !4
  %conv24 = sext i16 %12 to i32
  %cmp25 = icmp eq i32 %conv24, %add
  br i1 %cmp25, label %for.inc35, label %if.then27

if.then27:                                        ; preds = %if.then20
  store i16 %conv28, i16* %11, align 2, !tbaa !4
  %inc30 = add nsw i32 %n.062, 1
  %idxprom31 = sext i32 %n.062 to i64
  %13 = load %struct.lextree_node_t*** %next_active, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds %struct.lextree_node_t** %13, i64 %idxprom31
  store %struct.lextree_node_t* %6, %struct.lextree_node_t** %arrayidx32, align 8, !tbaa !0
  br label %for.inc35

for.inc35:                                        ; preds = %if.then20, %for.body13, %land.lhs.true, %if.then27
  %n.1 = phi i32 [ %inc30, %if.then27 ], [ %n.062, %if.then20 ], [ %n.062, %land.lhs.true ], [ %n.062, %for.body13 ]
  %next = getelementptr inbounds %struct.gnode_s* %gn.063, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.end36, label %for.body13

for.end36:                                        ; preds = %for.inc35, %if.end
  %n.0.lcssa = phi i32 [ %4, %if.end ], [ %n.1, %for.inc35 ]
  store i32 %n.0.lcssa, i32* %n_next_active, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lextree_active_swap(%struct.lextree_t* nocapture %lextree) #0 {
entry:
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %0 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 6
  %1 = load %struct.lextree_node_t*** %next_active, align 8, !tbaa !0
  store %struct.lextree_node_t** %1, %struct.lextree_node_t*** %active, align 8, !tbaa !0
  store %struct.lextree_node_t** %0, %struct.lextree_node_t*** %next_active, align 8, !tbaa !0
  %n_next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 8
  %2 = load i32* %n_next_active, align 4, !tbaa !3
  %n_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  store i32 %2, i32* %n_active, align 4, !tbaa !3
  store i32 0, i32* %n_next_active, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @lextree_hmm_eval(%struct.lextree_t* nocapture %lextree, %struct.kbcore_t* nocapture %kbc, %struct.ascr_t* nocapture %ascr, i32 %frm, %struct._IO_FILE* %fp) #0 {
entry:
  %mdef1 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 1
  %0 = load %struct.mdef_t** %mdef1, align 8, !tbaa !0
  %dict2pid = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 3
  %1 = load %struct.dict2pid_t** %dict2pid, align 8, !tbaa !0
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 2
  %2 = load i32* %n_emit_state, align 4, !tbaa !3
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %3 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %tobool = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool, label %for.cond.preheader, label %if.else20

for.cond.preheader:                               ; preds = %entry
  %n_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %4 = load i32* %n_active, align 4, !tbaa !3
  %cmp188 = icmp sgt i32 %4, 0
  br i1 %cmp188, label %for.body.lr.ph, label %if.end105.thread211

if.end105.thread211:                              ; preds = %for.cond.preheader
  %best106212 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 9
  store i32 -2147483648, i32* %best106212, align 4, !tbaa !3
  %wbest107213 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 10
  store i32 -2147483648, i32* %wbest107213, align 4, !tbaa !3
  br label %if.then109

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dict = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %sseq = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 9
  %sen = getelementptr inbounds %struct.ascr_t* %ascr, i64 0, i32 0
  %comsseq = getelementptr inbounds %struct.dict2pid_t* %1, i64 0, i32 4
  %comsen = getelementptr inbounds %struct.ascr_t* %ascr, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %best.0191 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %k.0.best.0, %if.end ]
  %wbest.0190 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %wbest.1, %if.end ]
  %arrayidx = getelementptr inbounds %struct.lextree_node_t** %3, i64 %indvars.iv
  %5 = load %struct.lextree_node_t** %arrayidx, align 8, !tbaa !0
  %6 = load %struct.dict_t** %dict, align 8, !tbaa !0
  tail call fastcc void @lextree_node_print(%struct.lextree_node_t* %5, %struct.dict_t* %6, %struct._IO_FILE* %fp) #5
  %composite = getelementptr inbounds %struct.lextree_node_t* %5, i64 0, i32 7
  %7 = load i8* %composite, align 1, !tbaa !1
  %tobool2 = icmp eq i8 %7, 0
  %hmm6 = getelementptr inbounds %struct.lextree_node_t* %5, i64 0, i32 0
  %ssid7 = getelementptr inbounds %struct.lextree_node_t* %5, i64 0, i32 4
  %8 = load i32* %ssid7, align 4, !tbaa !3
  %idxprom8 = sext i32 %8 to i64
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %9 = load i16*** %sseq, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i16** %9, i64 %idxprom8
  %10 = load i16** %arrayidx5, align 8, !tbaa !0
  %11 = load i32** %sen, align 8, !tbaa !0
  %call = tail call i32 @hmm_dump_vit_eval(%struct.hmm_t* %hmm6, i32 %2, i16* %10, i32* %11, %struct._IO_FILE* %fp) #4
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load i16*** %comsseq, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i16** %12, i64 %idxprom8
  %13 = load i16** %arrayidx9, align 8, !tbaa !0
  %14 = load i32** %comsen, align 8, !tbaa !0
  %call10 = tail call i32 @hmm_dump_vit_eval(%struct.hmm_t* %hmm6, i32 %2, i16* %13, i32* %14, %struct._IO_FILE* %fp) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %k.0 = phi i32 [ %call10, %if.else ], [ %call, %if.then3 ]
  %cmp11 = icmp slt i32 %best.0191, %k.0
  %k.0.best.0 = select i1 %cmp11, i32 %k.0, i32 %best.0191
  %wid = getelementptr inbounds %struct.lextree_node_t* %5, i64 0, i32 2
  %15 = load i32* %wid, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %15, -1
  %cmp16 = icmp slt i32 %wbest.0190, %k.0
  %or.cond = and i1 %cmp14, %cmp16
  %wbest.1 = select i1 %or.cond, i32 %k.0, i32 %wbest.0190
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = load i32* %n_active, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %17, %16
  br i1 %cmp, label %for.body, label %if.end105

if.else20:                                        ; preds = %entry
  switch i32 %2, label %if.end105.thread [
    i32 3, label %for.cond23.preheader
    i32 5, label %for.cond64.preheader
  ]

for.cond64.preheader:                             ; preds = %if.else20
  %n_active65 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %18 = load i32* %n_active65, align 4, !tbaa !3
  %cmp66201 = icmp sgt i32 %18, 0
  br i1 %cmp66201, label %for.body67.lr.ph, label %if.end105

for.body67.lr.ph:                                 ; preds = %for.cond64.preheader
  %sseq76 = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 9
  %sen78 = getelementptr inbounds %struct.ascr_t* %ascr, i64 0, i32 0
  %comsseq84 = getelementptr inbounds %struct.dict2pid_t* %1, i64 0, i32 4
  %comsen86 = getelementptr inbounds %struct.ascr_t* %ascr, i64 0, i32 1
  br label %for.body67

for.cond23.preheader:                             ; preds = %if.else20
  %n_active24 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %19 = load i32* %n_active24, align 4, !tbaa !3
  %cmp25194 = icmp sgt i32 %19, 0
  br i1 %cmp25194, label %for.body26.lr.ph, label %if.end105.thread216

if.end105.thread216:                              ; preds = %for.cond23.preheader
  %best106217 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 9
  store i32 -2147483648, i32* %best106217, align 4, !tbaa !3
  %wbest107218 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 10
  store i32 -2147483648, i32* %wbest107218, align 4, !tbaa !3
  br label %if.end113

for.body26.lr.ph:                                 ; preds = %for.cond23.preheader
  %sseq35 = getelementptr inbounds %struct.mdef_t* %0, i64 0, i32 9
  %sen37 = getelementptr inbounds %struct.ascr_t* %ascr, i64 0, i32 0
  %comsseq43 = getelementptr inbounds %struct.dict2pid_t* %1, i64 0, i32 4
  %comsen45 = getelementptr inbounds %struct.ascr_t* %ascr, i64 0, i32 1
  br label %for.body26

for.body26:                                       ; preds = %for.body26.lr.ph, %if.end47
  %indvars.iv207 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next208, %if.end47 ]
  %best.2197 = phi i32 [ -2147483648, %for.body26.lr.ph ], [ %k.1.best.2, %if.end47 ]
  %wbest.2196 = phi i32 [ -2147483648, %for.body26.lr.ph ], [ %wbest.3, %if.end47 ]
  %arrayidx28 = getelementptr inbounds %struct.lextree_node_t** %3, i64 %indvars.iv207
  %20 = load %struct.lextree_node_t** %arrayidx28, align 8, !tbaa !0
  %composite29 = getelementptr inbounds %struct.lextree_node_t* %20, i64 0, i32 7
  %21 = load i8* %composite29, align 1, !tbaa !1
  %tobool30 = icmp eq i8 %21, 0
  %hmm40 = getelementptr inbounds %struct.lextree_node_t* %20, i64 0, i32 0
  %ssid41 = getelementptr inbounds %struct.lextree_node_t* %20, i64 0, i32 4
  %22 = load i32* %ssid41, align 4, !tbaa !3
  %idxprom42 = sext i32 %22 to i64
  br i1 %tobool30, label %if.then31, label %if.else39

if.then31:                                        ; preds = %for.body26
  %23 = load i16*** %sseq35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i16** %23, i64 %idxprom42
  %24 = load i16** %arrayidx36, align 8, !tbaa !0
  %25 = load i32** %sen37, align 8, !tbaa !0
  %call38 = tail call i32 @hmm_vit_eval_3st(%struct.hmm_t* %hmm40, i16* %24, i32* %25) #4
  br label %if.end47

if.else39:                                        ; preds = %for.body26
  %26 = load i16*** %comsseq43, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i16** %26, i64 %idxprom42
  %27 = load i16** %arrayidx44, align 8, !tbaa !0
  %28 = load i32** %comsen45, align 8, !tbaa !0
  %call46 = tail call i32 @hmm_vit_eval_3st(%struct.hmm_t* %hmm40, i16* %27, i32* %28) #4
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then31
  %k.1 = phi i32 [ %call46, %if.else39 ], [ %call38, %if.then31 ]
  %cmp48 = icmp slt i32 %best.2197, %k.1
  %k.1.best.2 = select i1 %cmp48, i32 %k.1, i32 %best.2197
  %wid51 = getelementptr inbounds %struct.lextree_node_t* %20, i64 0, i32 2
  %29 = load i32* %wid51, align 4, !tbaa !3
  %cmp52 = icmp sgt i32 %29, -1
  %cmp54 = icmp slt i32 %wbest.2196, %k.1
  %or.cond183 = and i1 %cmp52, %cmp54
  %wbest.3 = select i1 %or.cond183, i32 %k.1, i32 %wbest.2196
  %indvars.iv.next208 = add i64 %indvars.iv207, 1
  %30 = load i32* %n_active24, align 4, !tbaa !3
  %31 = trunc i64 %indvars.iv.next208 to i32
  %cmp25 = icmp slt i32 %31, %30
  br i1 %cmp25, label %for.body26, label %if.end105

for.body67:                                       ; preds = %for.body67.lr.ph, %if.end88
  %indvars.iv209 = phi i64 [ 0, %for.body67.lr.ph ], [ %indvars.iv.next210, %if.end88 ]
  %best.4204 = phi i32 [ -2147483648, %for.body67.lr.ph ], [ %k.2.best.4, %if.end88 ]
  %wbest.4203 = phi i32 [ -2147483648, %for.body67.lr.ph ], [ %wbest.5, %if.end88 ]
  %arrayidx69 = getelementptr inbounds %struct.lextree_node_t** %3, i64 %indvars.iv209
  %32 = load %struct.lextree_node_t** %arrayidx69, align 8, !tbaa !0
  %composite70 = getelementptr inbounds %struct.lextree_node_t* %32, i64 0, i32 7
  %33 = load i8* %composite70, align 1, !tbaa !1
  %tobool71 = icmp eq i8 %33, 0
  %hmm81 = getelementptr inbounds %struct.lextree_node_t* %32, i64 0, i32 0
  %ssid82 = getelementptr inbounds %struct.lextree_node_t* %32, i64 0, i32 4
  %34 = load i32* %ssid82, align 4, !tbaa !3
  %idxprom83 = sext i32 %34 to i64
  br i1 %tobool71, label %if.then72, label %if.else80

if.then72:                                        ; preds = %for.body67
  %35 = load i16*** %sseq76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i16** %35, i64 %idxprom83
  %36 = load i16** %arrayidx77, align 8, !tbaa !0
  %37 = load i32** %sen78, align 8, !tbaa !0
  %call79 = tail call i32 @hmm_vit_eval_5st(%struct.hmm_t* %hmm81, i16* %36, i32* %37) #4
  br label %if.end88

if.else80:                                        ; preds = %for.body67
  %38 = load i16*** %comsseq84, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i16** %38, i64 %idxprom83
  %39 = load i16** %arrayidx85, align 8, !tbaa !0
  %40 = load i32** %comsen86, align 8, !tbaa !0
  %call87 = tail call i32 @hmm_vit_eval_5st(%struct.hmm_t* %hmm81, i16* %39, i32* %40) #4
  br label %if.end88

if.end88:                                         ; preds = %if.else80, %if.then72
  %k.2 = phi i32 [ %call87, %if.else80 ], [ %call79, %if.then72 ]
  %cmp89 = icmp slt i32 %best.4204, %k.2
  %k.2.best.4 = select i1 %cmp89, i32 %k.2, i32 %best.4204
  %wid92 = getelementptr inbounds %struct.lextree_node_t* %32, i64 0, i32 2
  %41 = load i32* %wid92, align 4, !tbaa !3
  %cmp93 = icmp sgt i32 %41, -1
  %cmp95 = icmp slt i32 %wbest.4203, %k.2
  %or.cond184 = and i1 %cmp93, %cmp95
  %wbest.5 = select i1 %or.cond184, i32 %k.2, i32 %wbest.4203
  %indvars.iv.next210 = add i64 %indvars.iv209, 1
  %42 = load i32* %n_active65, align 4, !tbaa !3
  %43 = trunc i64 %indvars.iv.next210 to i32
  %cmp66 = icmp slt i32 %43, %42
  br i1 %cmp66, label %for.body67, label %if.end105

if.end105.thread:                                 ; preds = %if.else20
  tail call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 656, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i32 %2) #4
  %best106185 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 9
  store i32 -2147483648, i32* %best106185, align 4, !tbaa !3
  %wbest107186 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 10
  store i32 -2147483648, i32* %wbest107186, align 4, !tbaa !3
  br label %if.end113

if.end105:                                        ; preds = %for.cond64.preheader, %if.end88, %if.end47, %if.end
  %44 = phi i32 [ %16, %if.end ], [ %30, %if.end47 ], [ %18, %for.cond64.preheader ], [ %42, %if.end88 ]
  %wbest.6 = phi i32 [ %wbest.1, %if.end ], [ %wbest.3, %if.end47 ], [ -2147483648, %for.cond64.preheader ], [ %wbest.5, %if.end88 ]
  %best.6 = phi i32 [ %k.0.best.0, %if.end ], [ %k.1.best.2, %if.end47 ], [ -2147483648, %for.cond64.preheader ], [ %k.2.best.4, %if.end88 ]
  %best106 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 9
  store i32 %best.6, i32* %best106, align 4, !tbaa !3
  %wbest107 = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 10
  store i32 %wbest.6, i32* %wbest107, align 4, !tbaa !3
  br i1 %tobool, label %if.then109, label %if.end113

if.then109:                                       ; preds = %if.end105.thread211, %if.end105
  %best.6215 = phi i32 [ -2147483648, %if.end105.thread211 ], [ %best.6, %if.end105 ]
  %wbest.6214 = phi i32 [ -2147483648, %if.end105.thread211 ], [ %wbest.6, %if.end105 ]
  %45 = phi i32 [ %4, %if.end105.thread211 ], [ %44, %if.end105 ]
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([38 x i8]* @.str6, i64 0, i64 0), i32 %frm, i32 %45, i32 %best.6215, i32 %wbest.6214) #4
  %call112 = tail call i32 @fflush(%struct._IO_FILE* %fp) #4
  br label %if.end113

if.end113:                                        ; preds = %if.end105.thread216, %if.end105.thread, %if.then109, %if.end105
  %best.6187 = phi i32 [ -2147483648, %if.end105.thread ], [ %best.6215, %if.then109 ], [ %best.6, %if.end105 ], [ -2147483648, %if.end105.thread216 ]
  ret i32 %best.6187
}

; Function Attrs: optsize
declare i32 @hmm_dump_vit_eval(%struct.hmm_t*, i32, i16*, i32*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare i32 @hmm_vit_eval_3st(%struct.hmm_t*, i16*, i32*) #1

; Function Attrs: optsize
declare i32 @hmm_vit_eval_5st(%struct.hmm_t*, i16*, i32*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @lextree_hmm_histbin(%struct.lextree_t* nocapture %lextree, i32 %bestscr, i32* nocapture %bin, i32 %nbin, i32 %bw) #0 {
entry:
  %conv = sext i32 %nbin to i64
  %call = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 680) #4
  %0 = bitcast i8* %call to %struct.gnode_s**
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %1 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %n_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %2 = load i32* %n_active, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %2, 0
  br i1 %cmp62, label %for.body.lr.ph, label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %entry
  %sub5 = add nsw i32 %nbin, -1
  br label %for.body

for.cond14.preheader:                             ; preds = %for.body, %entry
  %cmp1559 = icmp sgt i32 %nbin, 0
  br i1 %cmp1559, label %for.body17, label %for.end31

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv66 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next67, %for.body ]
  %arrayidx = getelementptr inbounds %struct.lextree_node_t** %1, i64 %indvars.iv66
  %3 = load %struct.lextree_node_t** %arrayidx, align 8, !tbaa !0
  %bestscore = getelementptr inbounds %struct.lextree_node_t* %3, i64 0, i32 0, i32 4
  %4 = load i32* %bestscore, align 4, !tbaa !3
  %sub = sub nsw i32 %bestscr, %4
  %div = sdiv i32 %sub, %bw
  %cmp3 = icmp slt i32 %div, %nbin
  %div.sub5 = select i1 %cmp3, i32 %div, i32 %sub5
  %idxprom6 = sext i32 %div.sub5 to i64
  %arrayidx7 = getelementptr inbounds i32* %bin, i64 %idxprom6
  %5 = load i32* %arrayidx7, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.gnode_s** %0, i64 %idxprom6
  %6 = load %struct.gnode_s** %arrayidx9, align 8, !tbaa !0
  %7 = bitcast %struct.lextree_node_t* %3 to i8*
  %call10 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %6, i8* %7) #4
  store %struct.gnode_s* %call10, %struct.gnode_s** %arrayidx9, align 8, !tbaa !0
  %indvars.iv.next67 = add i64 %indvars.iv66, 1
  %8 = load i32* %n_active, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next67 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.body17:                                       ; preds = %for.cond14.preheader, %for.end26
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.end26 ], [ 0, %for.cond14.preheader ]
  %k.161 = phi i32 [ %k.2.lcssa, %for.end26 ], [ 0, %for.cond14.preheader ]
  %arrayidx19 = getelementptr inbounds %struct.gnode_s** %0, i64 %indvars.iv64
  %gn.055 = load %struct.gnode_s** %arrayidx19, align 8
  %tobool56 = icmp eq %struct.gnode_s* %gn.055, null
  br i1 %tobool56, label %for.end26, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %for.body17
  %10 = sext i32 %k.161 to i64
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.body21
  %indvars.iv = phi i64 [ %10, %for.body21.lr.ph ], [ %indvars.iv.next, %for.body21 ]
  %gn.058 = phi %struct.gnode_s* [ %gn.055, %for.body21.lr.ph ], [ %gn.0, %for.body21 ]
  %k.257 = phi i32 [ %k.161, %for.body21.lr.ph ], [ %inc22, %for.body21 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.058, i64 0, i32 0, i32 0
  %11 = load i8** %ptr, align 8, !tbaa !0
  %12 = bitcast i8* %11 to %struct.lextree_node_t*
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc22 = add nsw i32 %k.257, 1
  %arrayidx24 = getelementptr inbounds %struct.lextree_node_t** %1, i64 %indvars.iv
  store %struct.lextree_node_t* %12, %struct.lextree_node_t** %arrayidx24, align 8, !tbaa !0
  %next = getelementptr inbounds %struct.gnode_s* %gn.058, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.cond20.for.end26_crit_edge, label %for.body21

for.cond20.for.end26_crit_edge:                   ; preds = %for.body21
  %.pre = load %struct.gnode_s** %arrayidx19, align 8, !tbaa !0
  br label %for.end26

for.end26:                                        ; preds = %for.cond20.for.end26_crit_edge, %for.body17
  %13 = phi %struct.gnode_s* [ %.pre, %for.cond20.for.end26_crit_edge ], [ null, %for.body17 ]
  %k.2.lcssa = phi i32 [ %inc22, %for.cond20.for.end26_crit_edge ], [ %k.161, %for.body17 ]
  tail call void @glist_free(%struct.gnode_s* %13) #4
  %indvars.iv.next65 = add i64 %indvars.iv64, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nbin
  br i1 %exitcond, label %for.end31, label %for.body17

for.end31:                                        ; preds = %for.end26, %for.cond14.preheader
  tail call void @ckd_free(i8* %call) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lextree_hmm_propagate(%struct.lextree_t* nocapture %lextree, %struct.kbcore_t* %kbc, %struct.vithist_t* %vh, i32 %cf, i32 %th, i32 %pth, i32 %wth, i32* nocapture %phn_heur_list, i32 %heur_beam, i32 %heur_type) #0 {
entry:
  %add = add nsw i32 %cf, 1
  %active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 5
  %0 = load %struct.lextree_node_t*** %active, align 8, !tbaa !0
  %n_next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 8
  %1 = load i32* %n_next_active, align 4, !tbaa !3
  %n_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 7
  %2 = load i32* %n_active, align 4, !tbaa !3
  %cmp196 = icmp sgt i32 %2, 0
  br i1 %cmp196, label %for.body.lr.ph, label %for.end124

for.body.lr.ph:                                   ; preds = %entry
  %mdef1 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 1
  %3 = load %struct.mdef_t** %mdef1, align 8, !tbaa !0
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %3, i64 0, i32 2
  %conv9 = trunc i32 %add to i16
  %next_active = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 6
  %cmp22 = icmp sgt i32 %heur_type, 0
  %cmp63 = icmp eq i32 %heur_type, 0
  %cmp22.not = xor i1 %cmp22, true
  %type = getelementptr inbounds %struct.lextree_t* %lextree, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc122
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc122 ]
  %hth.0199 = phi i32 [ undef, %for.body.lr.ph ], [ %hth.2, %for.inc122 ]
  %n.0198 = phi i32 [ %1, %for.body.lr.ph ], [ %n.4, %for.inc122 ]
  %arrayidx = getelementptr inbounds %struct.lextree_node_t** %0, i64 %indvars.iv
  %4 = load %struct.lextree_node_t** %arrayidx, align 8, !tbaa !0
  %hmm3 = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 0
  %frame = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 8
  %5 = load i16* %frame, align 2, !tbaa !4
  %conv = sext i16 %5 to i32
  %cmp4 = icmp slt i32 %conv, %add
  br i1 %cmp4, label %if.then, label %if.end14

if.then:                                          ; preds = %for.body
  %bestscore = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 0, i32 4
  %6 = load i32* %bestscore, align 4, !tbaa !3
  %cmp6 = icmp slt i32 %6, %th
  br i1 %cmp6, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  store i16 %conv9, i16* %frame, align 2, !tbaa !4
  %inc = add nsw i32 %n.0198, 1
  %idxprom11 = sext i32 %n.0198 to i64
  %7 = load %struct.lextree_node_t*** %next_active, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.lextree_node_t** %7, i64 %idxprom11
  store %struct.lextree_node_t* %4, %struct.lextree_node_t** %arrayidx12, align 8, !tbaa !0
  br label %if.end14

if.else:                                          ; preds = %if.then
  store i16 -1, i16* %frame, align 2, !tbaa !4
  %8 = load i32* %n_emit_state, align 4, !tbaa !3
  tail call void @hmm_clear(%struct.hmm_t* %hmm3, i32 %8) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else, %for.body
  %n.1 = phi i32 [ %inc, %if.then8 ], [ %n.0198, %if.else ], [ %n.0198, %for.body ]
  %wid = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 2
  %9 = load i32* %wid, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %9, 0
  %score = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 0, i32 2, i32 0
  %10 = load i32* %score, align 4, !tbaa !3
  br i1 %cmp15, label %if.then17, label %if.else98

if.then17:                                        ; preds = %if.end14
  %cmp18 = icmp slt i32 %10, %pth
  br i1 %cmp18, label %for.inc122, label %if.end21

if.end21:                                         ; preds = %if.then17
  br i1 %cmp22, label %if.then24, label %if.end21.if.end44_crit_edge

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  %children45.phi.trans.insert = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 1
  %gn.1192.pre = load %struct.gnode_s** %children45.phi.trans.insert, align 8
  br label %if.end44

if.then24:                                        ; preds = %if.end21
  %11 = load i32* @lextree_hmm_propagate.lastfrm, align 4, !tbaa !3
  %cmp25 = icmp eq i32 %11, %cf
  br i1 %cmp25, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then24
  store i32 %cf, i32* @lextree_hmm_propagate.lastfrm, align 4, !tbaa !3
  store i32 -2147483648, i32* @lextree_hmm_propagate.maxNewHeurScore, align 4, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then27
  %children = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 1
  %gn.0189 = load %struct.gnode_s** %children, align 8
  %tobool190 = icmp eq %struct.gnode_s* %gn.0189, null
  br i1 %tobool190, label %if.end28.for.end_crit_edge, label %for.body30.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  %.pre204 = load i32* @lextree_hmm_propagate.maxNewHeurScore, align 4, !tbaa !3
  br label %for.end

for.body30.lr.ph:                                 ; preds = %if.end28
  %prob33 = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 3
  %.pre = load i32* @lextree_hmm_propagate.maxNewHeurScore, align 4, !tbaa !3
  br label %for.body30

for.body30:                                       ; preds = %for.inc, %for.body30.lr.ph
  %12 = phi i32 [ %.pre, %for.body30.lr.ph ], [ %21, %for.inc ]
  %gn.0191 = phi %struct.gnode_s* [ %gn.0189, %for.body30.lr.ph ], [ %gn.0, %for.inc ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.0191, i64 0, i32 0, i32 0
  %13 = load i8** %ptr, align 8, !tbaa !0
  %14 = load i32* %score, align 4, !tbaa !3
  %prob = getelementptr inbounds i8* %13, i64 52
  %15 = bitcast i8* %prob to i32*
  %16 = load i32* %15, align 4, !tbaa !3
  %17 = load i32* %prob33, align 4, !tbaa !3
  %18 = getelementptr inbounds i8* %13, i64 72
  %19 = load i8* %18, align 1, !tbaa !1
  %idxprom36 = sext i8 %19 to i64
  %arrayidx37 = getelementptr inbounds i32* %phn_heur_list, i64 %idxprom36
  %20 = load i32* %arrayidx37, align 4, !tbaa !3
  %sub = add i32 %16, %14
  %add34 = sub i32 %sub, %17
  %add38 = add i32 %add34, %20
  %cmp39 = icmp slt i32 %12, %add38
  br i1 %cmp39, label %if.then41, label %for.inc

if.then41:                                        ; preds = %for.body30
  store i32 %add38, i32* @lextree_hmm_propagate.maxNewHeurScore, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body30, %if.then41
  %21 = phi i32 [ %12, %for.body30 ], [ %add38, %if.then41 ]
  %next = getelementptr inbounds %struct.gnode_s* %gn.0191, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool, label %for.end, label %for.body30

for.end:                                          ; preds = %for.inc, %if.end28.for.end_crit_edge
  %22 = phi i32 [ %.pre204, %if.end28.for.end_crit_edge ], [ %21, %for.inc ]
  %add43 = add nsw i32 %22, %heur_beam
  br label %if.end44

if.end44:                                         ; preds = %if.end21.if.end44_crit_edge, %for.end
  %gn.1192 = phi %struct.gnode_s* [ %gn.0189, %for.end ], [ %gn.1192.pre, %if.end21.if.end44_crit_edge ]
  %hth.1 = phi i32 [ %add43, %for.end ], [ %hth.0199, %if.end21.if.end44_crit_edge ]
  %tobool47193 = icmp eq %struct.gnode_s* %gn.1192, null
  br i1 %tobool47193, label %for.inc122, label %for.body48.lr.ph

for.body48.lr.ph:                                 ; preds = %if.end44
  %prob55 = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 3
  %history = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 0, i32 2, i32 1
  br label %for.body48

for.body48:                                       ; preds = %for.inc95, %for.body48.lr.ph
  %gn.1195 = phi %struct.gnode_s* [ %gn.1192, %for.body48.lr.ph ], [ %gn.1, %for.inc95 ]
  %n.2194 = phi i32 [ %n.1, %for.body48.lr.ph ], [ %n.3, %for.inc95 ]
  %ptr50 = getelementptr inbounds %struct.gnode_s* %gn.1195, i64 0, i32 0, i32 0
  %23 = load i8** %ptr50, align 8, !tbaa !0
  %24 = bitcast i8* %23 to %struct.lextree_node_t*
  %25 = load i32* %score, align 4, !tbaa !3
  %prob54 = getelementptr inbounds i8* %23, i64 52
  %26 = bitcast i8* %prob54 to i32*
  %27 = load i32* %26, align 4, !tbaa !3
  %28 = load i32* %prob55, align 4, !tbaa !3
  %sub56 = sub nsw i32 %27, %28
  %add57 = add nsw i32 %sub56, %25
  br i1 %cmp63, label %land.lhs.true69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body48
  %29 = getelementptr inbounds i8* %23, i64 72
  %30 = load i8* %29, align 1, !tbaa !1
  %idxprom60 = sext i8 %30 to i64
  %arrayidx61 = getelementptr inbounds i32* %phn_heur_list, i64 %idxprom60
  %31 = load i32* %arrayidx61, align 4, !tbaa !3
  %add62 = add nsw i32 %31, %add57
  %cmp67 = icmp slt i32 %add62, %hth.1
  %or.cond = or i1 %cmp67, %cmp22.not
  %cmp70 = icmp slt i32 %add57, %th
  %or.cond188 = or i1 %or.cond, %cmp70
  br i1 %or.cond188, label %for.inc95, label %land.lhs.true72

land.lhs.true69:                                  ; preds = %for.body48
  %cmp70.old = icmp slt i32 %add57, %th
  br i1 %cmp70.old, label %for.inc95, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %lor.lhs.false, %land.lhs.true69
  %in = getelementptr inbounds i8* %23, i64 8
  %score73 = bitcast i8* %in to i32*
  %32 = load i32* %score73, align 4, !tbaa !3
  %cmp74 = icmp slt i32 %32, %add57
  br i1 %cmp74, label %if.then76, label %for.inc95

if.then76:                                        ; preds = %land.lhs.true72
  store i32 %add57, i32* %score73, align 4, !tbaa !3
  %33 = load i32* %history, align 4, !tbaa !3
  %history81 = getelementptr inbounds i8* %23, i64 12
  %34 = bitcast i8* %history81 to i32*
  store i32 %33, i32* %34, align 4, !tbaa !3
  %frame82 = getelementptr inbounds i8* %23, i64 74
  %35 = bitcast i8* %frame82 to i16*
  %36 = load i16* %35, align 2, !tbaa !4
  %conv83 = sext i16 %36 to i32
  %cmp84 = icmp eq i32 %conv83, %add
  br i1 %cmp84, label %for.inc95, label %if.then86

if.then86:                                        ; preds = %if.then76
  store i16 %conv9, i16* %35, align 2, !tbaa !4
  %inc89 = add nsw i32 %n.2194, 1
  %idxprom90 = sext i32 %n.2194 to i64
  %37 = load %struct.lextree_node_t*** %next_active, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds %struct.lextree_node_t** %37, i64 %idxprom90
  store %struct.lextree_node_t* %24, %struct.lextree_node_t** %arrayidx92, align 8, !tbaa !0
  br label %for.inc95

for.inc95:                                        ; preds = %lor.lhs.false, %if.then76, %land.lhs.true69, %land.lhs.true72, %if.then86
  %n.3 = phi i32 [ %inc89, %if.then86 ], [ %n.2194, %if.then76 ], [ %n.2194, %land.lhs.true72 ], [ %n.2194, %land.lhs.true69 ], [ %n.2194, %lor.lhs.false ]
  %next96 = getelementptr inbounds %struct.gnode_s* %gn.1195, i64 0, i32 1
  %gn.1 = load %struct.gnode_s** %next96, align 8
  %tobool47 = icmp eq %struct.gnode_s* %gn.1, null
  br i1 %tobool47, label %for.inc122, label %for.body48

if.else98:                                        ; preds = %if.end14
  %cmp101 = icmp slt i32 %10, %wth
  br i1 %cmp101, label %for.inc122, label %if.end104

if.end104:                                        ; preds = %if.else98
  %history106 = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 0, i32 2, i32 1
  %38 = load i32* %history106, align 4, !tbaa !3
  %cmp107 = icmp eq i32 %38, -1
  br i1 %cmp107, label %if.then109, label %if.end112

if.then109:                                       ; preds = %if.end104
  tail call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 805, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #4
  %39 = load i32* %score, align 4, !tbaa !3
  %40 = load i32* %type, align 4, !tbaa !3
  %41 = trunc i64 %indvars.iv to i32
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([78 x i8]* @.str7, i64 0, i64 0), i32 %39, i32 %41, i32 %40) #4
  %.pre201 = load i32* %wid, align 4, !tbaa !3
  %.pre202 = load i32* %score, align 4, !tbaa !3
  %.pre203 = load i32* %history106, align 4, !tbaa !3
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end104
  %42 = phi i32 [ %.pre203, %if.then109 ], [ %38, %if.end104 ]
  %43 = phi i32 [ %.pre202, %if.then109 ], [ %10, %if.end104 ]
  %44 = phi i32 [ %.pre201, %if.then109 ], [ %9, %if.end104 ]
  %prob116 = getelementptr inbounds %struct.lextree_node_t* %4, i64 0, i32 3
  %45 = load i32* %prob116, align 4, !tbaa !3
  %sub117 = sub nsw i32 %43, %45
  %46 = load i32* %type, align 4, !tbaa !3
  tail call void @vithist_rescore(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc, i32 %44, i32 %cf, i32 %sub117, i32 %42, i32 %46) #4
  br label %for.inc122

for.inc122:                                       ; preds = %if.end44, %for.inc95, %if.else98, %if.then17, %if.end112
  %n.4 = phi i32 [ %n.1, %if.end112 ], [ %n.1, %if.then17 ], [ %n.1, %if.else98 ], [ %n.1, %if.end44 ], [ %n.3, %for.inc95 ]
  %hth.2 = phi i32 [ %hth.0199, %if.end112 ], [ %hth.0199, %if.then17 ], [ %hth.0199, %if.else98 ], [ %hth.1, %if.end44 ], [ %hth.1, %for.inc95 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %47 = load i32* %n_active, align 4, !tbaa !3
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %48, %47
  br i1 %cmp, label %for.body, label %for.end124

for.end124:                                       ; preds = %for.inc122, %entry
  %n.0.lcssa = phi i32 [ %1, %entry ], [ %n.4, %for.inc122 ]
  store i32 %n.0.lcssa, i32* %n_next_active, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @vithist_rescore(%struct.vithist_t*, %struct.kbcore_t*, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare void @__myfree__(i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @__mymalloc__(i32, i8*, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
