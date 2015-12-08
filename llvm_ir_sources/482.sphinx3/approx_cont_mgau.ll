; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/approx_cont_mgau.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_s = type { i32, i32, i32, i32, i32, i32, float**, i32***, %struct._IO_FILE*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.subvq_t = type { %struct.arraysize_t, i32, i32, i32**, %struct.vector_gautbl_t*, i32***, float*, i32**, i32*, i32* }
%struct.arraysize_t = type { i32, i32 }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }
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

@most_recent_best_cid = global i32 -1, align 4
@.str = private unnamed_addr constant [64 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/approx_cont_mgau.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [35 x i8] c"Re-normalizing the previous score\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @approx_isskip(i32 %frame, i32 %ds_ratio, i32 %cond_ds, i32 %isSameBestIdx, i32* nocapture %skip_count) #0 {
entry:
  %cmp = icmp sgt i32 %cond_ds, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %isSameBestIdx, 0
  br i1 %tobool, label %return, label %if.then1

if.then1:                                         ; preds = %if.then
  %0 = load i32* %skip_count, align 4, !tbaa !0
  %sub = add nsw i32 %ds_ratio, -1
  %cmp2 = icmp slt i32 %0, %sub
  br i1 %cmp2, label %return, label %if.else

if.else:                                          ; preds = %if.then1
  store i32 0, i32* %skip_count, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %rem = srem i32 %frame, %ds_ratio
  %not.cmp5 = icmp ne i32 %rem, 0
  %. = zext i1 %not.cmp5 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then, %if.then1, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then1 ], [ 0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @approx_mgau_eval(%struct.gs_s* %gs, %struct.subvq_t* %svq, %struct.mgau_model_t* %g, %struct.kb_t* nocapture %kb, i32 %s, i32* nocapture %senscr, float* %feat, i32 %best_cid, i32 %svq_beam) #0 {
entry:
  %tobool = icmp eq %struct.gs_s* %gs, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gs4gs = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 25
  %0 = load i32* %gs4gs, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %0, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom = sext i32 %s to i64
  %mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %1 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %n_comp = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 0
  %2 = load i32* %n_comp, align 4, !tbaa !0
  %call = tail call i32 @gs_mgau_shortlist(%struct.gs_s* %gs, i32 %s, i32 %2, float* %feat, i32 %best_cid) #2
  %mgau_sl2 = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 9
  %3 = load i32** %mgau_sl2, align 8, !tbaa !3
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %entry
  %tobool3 = icmp eq %struct.subvq_t* %svq, null
  %idxprom12 = sext i32 %s to i64
  %mgau13 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %4 = load %struct.mgau_t** %mgau13, align 8, !tbaa !3
  %n_comp15 = getelementptr inbounds %struct.mgau_t* %4, i64 %idxprom12, i32 0
  %5 = load i32* %n_comp15, align 4, !tbaa !0
  br i1 %tobool3, label %if.end16, label %if.then4

if.then4:                                         ; preds = %if.else
  %call9 = tail call i32 @subvq_mgau_shortlist(%struct.subvq_t* %svq, i32 %s, i32 %5, i32 %svq_beam) #2
  %mgau_sl10 = getelementptr inbounds %struct.subvq_t* %svq, i64 0, i32 9
  %6 = load i32** %mgau_sl10, align 8, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then4, %if.then
  %ng.0 = phi i32 [ %call, %if.then ], [ %call9, %if.then4 ], [ %5, %if.else ]
  %mgau_sl.0 = phi i32* [ %3, %if.then ], [ %6, %if.then4 ], [ null, %if.else ]
  %cmp = icmp eq i32 %ng.0, 0
  br i1 %cmp, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end16
  %idxprom18 = sext i32 %s to i64
  %mgau19 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %7 = load %struct.mgau_t** %mgau19, align 8, !tbaa !3
  %n_comp21 = getelementptr inbounds %struct.mgau_t* %7, i64 %idxprom18, i32 0
  %8 = load i32* %n_comp21, align 4, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end16
  %ng.1 = phi i32 [ %8, %if.then17 ], [ %ng.0, %if.end16 ]
  %mgau_sl.1 = phi i32* [ null, %if.then17 ], [ %mgau_sl.0, %if.end16 ]
  %tobool23 = icmp ne %struct.subvq_t* %svq, null
  br i1 %tobool23, label %land.lhs.true24, label %if.else34

land.lhs.true24:                                  ; preds = %if.end22
  %svq4svq = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 26
  %9 = load i32* %svq4svq, align 4, !tbaa !0
  %tobool25 = icmp eq i32 %9, 0
  br i1 %tobool25, label %if.else34, label %if.then26

if.then26:                                        ; preds = %land.lhs.true24
  %idxprom27 = sext i32 %s to i64
  %mgau28 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %10 = load %struct.mgau_t** %mgau28, align 8, !tbaa !3
  %n_comp30 = getelementptr inbounds %struct.mgau_t* %10, i64 %idxprom27, i32 0
  %11 = load i32* %n_comp30, align 4, !tbaa !0
  %call31 = tail call i32 @subvq_mgau_eval(%struct.mgau_model_t* %g, %struct.subvq_t* %svq, i32 %s, i32 %11, i32* %mgau_sl.1) #2
  %arrayidx33 = getelementptr inbounds i32* %senscr, i64 %idxprom27
  store i32 %call31, i32* %arrayidx33, align 4, !tbaa !0
  br label %if.end38

if.else34:                                        ; preds = %land.lhs.true24, %if.end22
  %call35 = tail call i32 @mgau_eval(%struct.mgau_model_t* %g, i32 %s, i32* %mgau_sl.1, float* %feat) #2
  %idxprom36 = sext i32 %s to i64
  %arrayidx37 = getelementptr inbounds i32* %senscr, i64 %idxprom36
  store i32 %call35, i32* %arrayidx37, align 4, !tbaa !0
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then26
  %12 = phi i32 [ %call35, %if.else34 ], [ %call31, %if.then26 ]
  %idxprom39 = sext i32 %s to i64
  %arrayidx40 = getelementptr inbounds i32* %senscr, i64 %idxprom39
  %cmp41 = icmp sgt i32 %12, -939424097
  %cmp43 = icmp eq i32* %mgau_sl.1, null
  %or.cond = or i1 %cmp41, %cmp43
  br i1 %or.cond, label %if.end68, label %if.else45

if.else45:                                        ; preds = %if.end38
  %mgau47 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %13 = load %struct.mgau_t** %mgau47, align 8, !tbaa !3
  %n_comp49 = getelementptr inbounds %struct.mgau_t* %13, i64 %idxprom39, i32 0
  %14 = load i32* %n_comp49, align 4, !tbaa !0
  %add = add nsw i32 %14, %ng.1
  br i1 %tobool23, label %land.lhs.true51, label %if.else62

land.lhs.true51:                                  ; preds = %if.else45
  %svq4svq52 = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 26
  %15 = load i32* %svq4svq52, align 4, !tbaa !0
  %tobool53 = icmp eq i32 %15, 0
  br i1 %tobool53, label %if.else62, label %if.then54

if.then54:                                        ; preds = %land.lhs.true51
  %call59 = tail call i32 @subvq_mgau_eval(%struct.mgau_model_t* %g, %struct.subvq_t* %svq, i32 %s, i32 %14, i32* null) #2
  store i32 %call59, i32* %arrayidx40, align 4, !tbaa !0
  br label %if.end68

if.else62:                                        ; preds = %land.lhs.true51, %if.else45
  %call63 = tail call i32 @mgau_eval(%struct.mgau_model_t* %g, i32 %s, i32* null, float* %feat) #2
  store i32 %call63, i32* %arrayidx40, align 4, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %if.end38, %if.else62, %if.then54
  %ng.2 = phi i32 [ %add, %if.then54 ], [ %add, %if.else62 ], [ %ng.1, %if.end38 ]
  ret i32 %ng.2
}

; Function Attrs: optsize
declare i32 @gs_mgau_shortlist(%struct.gs_s*, i32, i32, float*, i32) #1

; Function Attrs: optsize
declare i32 @subvq_mgau_shortlist(%struct.subvq_t*, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @subvq_mgau_eval(%struct.mgau_model_t*, %struct.subvq_t*, i32, i32, i32*) #1

; Function Attrs: optsize
declare i32 @mgau_eval(%struct.mgau_model_t*, i32, i32*, float*) #1

; Function Attrs: nounwind optsize uwtable
define void @approx_cont_mgau_ci_eval(%struct.mgau_model_t* %g, float* %feat, i32* nocapture %ci_senscr, %struct.kb_t* nocapture %kb) #0 {
entry:
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %0 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !3
  %mdef1 = getelementptr inbounds %struct.kbcore_t* %0, i64 0, i32 1
  %1 = load %struct.mdef_t** %mdef1, align 8, !tbaa !3
  %cd2cisen2 = getelementptr inbounds %struct.mdef_t* %1, i64 0, i32 11
  %2 = load i16** %cd2cisen2, align 8, !tbaa !3
  %3 = load i16* %2, align 2, !tbaa !4
  %cmp11 = icmp eq i16 %3, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %4 = trunc i64 %indvars.iv to i32
  %call = tail call i32 @mgau_eval(%struct.mgau_model_t* %g, i32 %4, i32* null, float* %feat) #2
  %arrayidx5 = getelementptr inbounds i32* %ci_senscr, i64 %indvars.iv
  store i32 %call, i32* %arrayidx5, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i16* %2, i64 %indvars.iv.next
  %5 = load i16* %arrayidx, align 2, !tbaa !4
  %conv = sext i16 %5 to i32
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp eq i32 %6, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @approx_cont_mgau_frame_eval(%struct.mgau_model_t* %g, %struct.gs_s* %gs, %struct.subvq_t* %svq, i32 %svq_beam, float* %feat, i32* %sen_active, i32* nocapture %senscr, i32* nocapture %cache_ci_senscr, %struct.kb_t* %kb, i32 %frame) #0 {
entry:
  %tm_ovrhd = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 42
  tail call void @ptmr_start(%struct.ptmr_t* %tm_ovrhd) #2
  %tobool = icmp eq %struct.gs_s* %gs, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @gc_compute_closest_cw(%struct.gs_s* %gs, float* %feat) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %best_cid.0 = phi i32 [ %call, %if.then ], [ -1, %entry ]
  %tobool1 = icmp eq %struct.subvq_t* %svq, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @subvq_gautbl_eval_logs3(%struct.subvq_t* %svq, float* %feat) #2
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  tail call void @ptmr_stop(%struct.ptmr_t* %tm_ovrhd) #2
  %ds_ratio = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 23
  %0 = load i32* %ds_ratio, align 4, !tbaa !0
  %cond_ds = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 24
  %1 = load i32* %cond_ds, align 4, !tbaa !0
  %rec_bstcid = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 13
  %skip_count = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 18
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end3
  %2 = load i32* %rec_bstcid, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, %best_cid.0
  br i1 %cmp, label %if.then1.i, label %approx_isskip.exit

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i32* %skip_count, align 4, !tbaa !0
  %sub.i = add nsw i32 %0, -1
  %cmp2.i = icmp slt i32 %3, %sub.i
  br i1 %cmp2.i, label %approx_isskip.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then1.i
  store i32 0, i32* %skip_count, align 4, !tbaa !0
  br label %approx_isskip.exit

if.end.i:                                         ; preds = %if.end3
  %rem.i = srem i32 %frame, %0
  %not.cmp5.i = icmp ne i32 %rem.i, 0
  %..i = zext i1 %not.cmp5.i to i32
  br label %approx_isskip.exit

approx_isskip.exit:                               ; preds = %if.then.i, %if.then1.i, %if.else.i, %if.end.i
  %retval.0.i = phi i32 [ 0, %if.else.i ], [ 1, %if.then1.i ], [ 0, %if.then.i ], [ %..i, %if.end.i ]
  store i32 %best_cid.0, i32* %rec_bstcid, align 4, !tbaa !0
  %kbcore = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 0
  %4 = load %struct.kbcore_t** %kbcore, align 8, !tbaa !3
  %mdef7 = getelementptr inbounds %struct.kbcore_t* %4, i64 0, i32 1
  %5 = load %struct.mdef_t** %mdef7, align 8, !tbaa !3
  %cd2cisen8 = getelementptr inbounds %struct.mdef_t* %5, i64 0, i32 11
  %6 = load i16** %cd2cisen8, align 8, !tbaa !3
  %n_mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %7 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp9278 = icmp sgt i32 %7, 0
  br i1 %cmp9278, label %for.body.lr.ph, label %for.end138

for.body.lr.ph:                                   ; preds = %approx_isskip.exit
  %tobool11 = icmp eq i32* %sen_active, null
  %tobool18 = icmp eq i32 %retval.0.i, 0
  %mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %rec_sen_active = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 12
  %ci_pbeam = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 27
  %rec_bst_senscr = getelementptr inbounds %struct.kb_t* %kb, i64 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc136
  %indvars.iv292 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next293, %for.inc136 ]
  %best.0282 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %best.3, %for.inc136 ]
  %pbest.0281 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %pbest.3, %for.inc136 ]
  %ns.0280 = phi i32 [ 0, %for.body.lr.ph ], [ %ns.3, %for.inc136 ]
  %ng.0279 = phi i32 [ 0, %for.body.lr.ph ], [ %ng.3, %for.inc136 ]
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %sen_active, i64 %indvars.iv292
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool12 = icmp ne i32 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %for.body, %lor.rhs
  %9 = phi i1 [ true, %for.body ], [ %tobool12, %lor.rhs ]
  %arrayidx14 = getelementptr inbounds i16* %6, i64 %indvars.iv292
  %10 = load i16* %arrayidx14, align 2, !tbaa !4
  br i1 %tobool18, label %if.then19, label %if.else80

if.then19:                                        ; preds = %lor.end
  %conv15 = sext i16 %10 to i32
  %11 = trunc i64 %indvars.iv292 to i32
  %cmp16 = icmp eq i32 %11, %conv15
  br i1 %cmp16, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  %arrayidx23 = getelementptr inbounds i32* %cache_ci_senscr, i64 %indvars.iv292
  %12 = load i32* %arrayidx23, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds i32* %senscr, i64 %indvars.iv292
  store i32 %12, i32* %arrayidx25, align 4, !tbaa !0
  %cmp28 = icmp slt i32 %pbest.0281, %12
  %.pbest.0 = select i1 %cmp28, i32 %12, i32 %pbest.0281
  %cmp36 = icmp slt i32 %best.0282, %12
  %best.1 = select i1 %cmp36, i32 %12, i32 %best.0282
  %arrayidx43 = getelementptr inbounds i32* %sen_active, i64 %indvars.iv292
  store i32 1, i32* %arrayidx43, align 4, !tbaa !0
  %13 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %n_comp = getelementptr inbounds %struct.mgau_t* %13, i64 %indvars.iv292, i32 0
  %14 = load i32* %n_comp, align 4, !tbaa !0
  %add = add nsw i32 %14, %ng.0279
  %inc = add nsw i32 %ns.0280, 1
  br label %if.end75

if.else:                                          ; preds = %if.then19
  br i1 %9, label %if.then47, label %if.end75

if.then47:                                        ; preds = %if.else
  %idxprom50 = sext i16 %10 to i64
  %arrayidx51 = getelementptr inbounds i32* %senscr, i64 %idxprom50
  %15 = load i32* %arrayidx51, align 4, !tbaa !0
  %sub = sub nsw i32 %pbest.0281, %15
  %16 = load i32* %ci_pbeam, align 4, !tbaa !0
  %cmp52 = icmp slt i32 %sub, %16
  br i1 %cmp52, label %if.then54, label %if.else58

if.then54:                                        ; preds = %if.then47
  %call55 = tail call i32 @approx_mgau_eval(%struct.gs_s* %gs, %struct.subvq_t* %svq, %struct.mgau_model_t* %g, %struct.kb_t* %kb, i32 %11, i32* %senscr, float* %feat, i32 %best_cid.0, i32 %svq_beam) #3
  %add56 = add nsw i32 %call55, %ng.0279
  %inc57 = add nsw i32 %ns.0280, 1
  %arrayidx67.phi.trans.insert = getelementptr inbounds i32* %senscr, i64 %indvars.iv292
  %.pre294 = load i32* %arrayidx67.phi.trans.insert, align 4, !tbaa !0
  br label %if.end65

if.else58:                                        ; preds = %if.then47
  %arrayidx64 = getelementptr inbounds i32* %senscr, i64 %indvars.iv292
  store i32 %15, i32* %arrayidx64, align 4, !tbaa !0
  br label %if.end65

if.end65:                                         ; preds = %if.else58, %if.then54
  %17 = phi i32 [ %.pre294, %if.then54 ], [ %15, %if.else58 ]
  %ng.1 = phi i32 [ %add56, %if.then54 ], [ %ng.0279, %if.else58 ]
  %ns.1 = phi i32 [ %inc57, %if.then54 ], [ %ns.0280, %if.else58 ]
  %cmp68 = icmp slt i32 %best.0282, %17
  %.best.0 = select i1 %cmp68, i32 %17, i32 %best.0282
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.end65, %if.then21
  %ng.2 = phi i32 [ %add, %if.then21 ], [ %ng.1, %if.end65 ], [ %ng.0279, %if.else ]
  %ns.2 = phi i32 [ %inc, %if.then21 ], [ %ns.1, %if.end65 ], [ %ns.0280, %if.else ]
  %pbest.2 = phi i32 [ %.pbest.0, %if.then21 ], [ %pbest.0281, %if.end65 ], [ %pbest.0281, %if.else ]
  %best.2 = phi i32 [ %best.1, %if.then21 ], [ %.best.0, %if.end65 ], [ %best.0282, %if.else ]
  %arrayidx77 = getelementptr inbounds i32* %sen_active, i64 %indvars.iv292
  %18 = load i32* %arrayidx77, align 4, !tbaa !0
  %19 = load i32** %rec_sen_active, align 8, !tbaa !3
  %arrayidx79 = getelementptr inbounds i32* %19, i64 %indvars.iv292
  store i32 %18, i32* %arrayidx79, align 4, !tbaa !0
  br label %for.inc136

if.else80:                                        ; preds = %lor.end
  br i1 %9, label %if.then82, label %for.inc136

if.then82:                                        ; preds = %if.else80
  %20 = load i32** %rec_sen_active, align 8, !tbaa !3
  %arrayidx85 = getelementptr inbounds i32* %20, i64 %indvars.iv292
  %21 = load i32* %arrayidx85, align 4, !tbaa !0
  %tobool86 = icmp eq i32 %21, 0
  br i1 %tobool86, label %if.else92, label %for.inc136

if.else92:                                        ; preds = %if.then82
  store i32 1, i32* %arrayidx85, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv292 to i32
  %call96 = tail call i32 @approx_mgau_eval(%struct.gs_s* %gs, %struct.subvq_t* %svq, %struct.mgau_model_t* %g, %struct.kb_t* %kb, i32 %22, i32* %senscr, float* %feat, i32 %best_cid.0, i32 %svq_beam) #3
  %add97 = add nsw i32 %call96, %ng.0279
  %inc98 = add nsw i32 %ns.0280, 1
  %arrayidx100 = getelementptr inbounds i32* %senscr, i64 %indvars.iv292
  %23 = load i32* %arrayidx100, align 4, !tbaa !0
  %24 = load i32* %rec_bst_senscr, align 4, !tbaa !0
  %cmp101 = icmp sgt i32 %23, %24
  br i1 %cmp101, label %if.then103, label %if.end128

if.then103:                                       ; preds = %if.else92
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i64 328, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #2
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0)) #2
  %25 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp106274 = icmp sgt i32 %25, 0
  br i1 %cmp106274, label %for.body108.lr.ph, label %for.end

for.body108.lr.ph:                                ; preds = %if.then103
  %26 = load i32** %rec_sen_active, align 8, !tbaa !3
  br label %for.body108

for.body108:                                      ; preds = %for.body108.lr.ph, %for.inc
  %27 = phi i32 [ %25, %for.body108.lr.ph ], [ %33, %for.inc ]
  %indvars.iv290 = phi i64 [ 0, %for.body108.lr.ph ], [ %indvars.iv.next291, %for.inc ]
  %arrayidx111 = getelementptr inbounds i32* %26, i64 %indvars.iv290
  %28 = load i32* %arrayidx111, align 4, !tbaa !0
  %tobool112 = icmp eq i32 %28, 0
  %29 = trunc i64 %indvars.iv290 to i32
  %cmp113 = icmp eq i32 %29, %22
  %or.cond = or i1 %tobool112, %cmp113
  br i1 %or.cond, label %for.inc, label %if.then115

if.then115:                                       ; preds = %for.body108
  %30 = load i32* %arrayidx100, align 4, !tbaa !0
  %31 = load i32* %rec_bst_senscr, align 4, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %senscr, i64 %indvars.iv290
  %32 = load i32* %arrayidx121, align 4, !tbaa !0
  %sub119271 = sub i32 %31, %30
  %sub122 = add i32 %sub119271, %32
  store i32 %sub122, i32* %arrayidx121, align 4, !tbaa !0
  %.pre295 = load i32* %n_mgau, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body108, %if.then115
  %33 = phi i32 [ %27, %for.body108 ], [ %.pre295, %if.then115 ]
  %indvars.iv.next291 = add i64 %indvars.iv290, 1
  %34 = trunc i64 %indvars.iv.next291 to i32
  %cmp106 = icmp slt i32 %34, %33
  br i1 %cmp106, label %for.body108, label %for.end

for.end:                                          ; preds = %for.inc, %if.then103
  %35 = load i32* %arrayidx100, align 4, !tbaa !0
  store i32 %35, i32* %rec_bst_senscr, align 4, !tbaa !0
  %.pre296 = load i32* %arrayidx100, align 4, !tbaa !0
  br label %if.end128

if.end128:                                        ; preds = %for.end, %if.else92
  %36 = phi i32 [ %.pre296, %for.end ], [ %23, %if.else92 ]
  %37 = phi i32 [ %35, %for.end ], [ %24, %if.else92 ]
  %sub132 = sub nsw i32 %36, %37
  store i32 %sub132, i32* %arrayidx100, align 4, !tbaa !0
  br label %for.inc136

for.inc136:                                       ; preds = %if.then82, %if.end75, %if.end128, %if.else80
  %ng.3 = phi i32 [ %add97, %if.end128 ], [ %ng.0279, %if.else80 ], [ %ng.2, %if.end75 ], [ %ng.0279, %if.then82 ]
  %ns.3 = phi i32 [ %inc98, %if.end128 ], [ %ns.0280, %if.else80 ], [ %ns.2, %if.end75 ], [ %ns.0280, %if.then82 ]
  %pbest.3 = phi i32 [ %pbest.0281, %if.end128 ], [ %pbest.0281, %if.else80 ], [ %pbest.2, %if.end75 ], [ %pbest.0281, %if.then82 ]
  %best.3 = phi i32 [ %best.0282, %if.end128 ], [ %best.0282, %if.else80 ], [ %best.2, %if.end75 ], [ %best.0282, %if.then82 ]
  %indvars.iv.next293 = add i64 %indvars.iv292, 1
  %38 = load i32* %n_mgau, align 4, !tbaa !0
  %39 = trunc i64 %indvars.iv.next293 to i32
  %cmp9 = icmp slt i32 %39, %38
  br i1 %cmp9, label %for.body, label %for.end138

for.end138:                                       ; preds = %for.inc136, %approx_isskip.exit
  %40 = phi i32 [ %7, %approx_isskip.exit ], [ %38, %for.inc136 ]
  %best.0.lcssa = phi i32 [ -2147483648, %approx_isskip.exit ], [ %best.3, %for.inc136 ]
  %ns.0.lcssa = phi i32 [ 0, %approx_isskip.exit ], [ %ns.3, %for.inc136 ]
  %ng.0.lcssa = phi i32 [ 0, %approx_isskip.exit ], [ %ng.3, %for.inc136 ]
  %tobool139 = icmp eq i32 %retval.0.i, 0
  %cmp143272 = icmp sgt i32 %40, 0
  %or.cond297 = and i1 %tobool139, %cmp143272
  br i1 %or.cond297, label %for.body145, label %if.end158

for.body145:                                      ; preds = %for.end138, %for.inc154
  %41 = phi i32 [ %44, %for.inc154 ], [ %40, %for.end138 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc154 ], [ 0, %for.end138 ]
  %arrayidx147 = getelementptr inbounds i32* %sen_active, i64 %indvars.iv
  %42 = load i32* %arrayidx147, align 4, !tbaa !0
  %tobool148 = icmp eq i32 %42, 0
  br i1 %tobool148, label %for.inc154, label %if.then149

if.then149:                                       ; preds = %for.body145
  %arrayidx151 = getelementptr inbounds i32* %senscr, i64 %indvars.iv
  %43 = load i32* %arrayidx151, align 4, !tbaa !0
  %sub152 = sub nsw i32 %43, %best.0.lcssa
  store i32 %sub152, i32* %arrayidx151, align 4, !tbaa !0
  %.pre = load i32* %n_mgau, align 4, !tbaa !0
  br label %for.inc154

for.inc154:                                       ; preds = %for.body145, %if.then149
  %44 = phi i32 [ %41, %for.body145 ], [ %.pre, %if.then149 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %45 = trunc i64 %indvars.iv.next to i32
  %cmp143 = icmp slt i32 %45, %44
  br i1 %cmp143, label %for.body145, label %if.end158

if.end158:                                        ; preds = %for.inc154, %for.end138
  %frm_sen_eval = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 5
  store i32 %ns.0.lcssa, i32* %frm_sen_eval, align 4, !tbaa !0
  %frm_gau_eval = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 6
  store i32 %ng.0.lcssa, i32* %frm_gau_eval, align 4, !tbaa !0
  ret i32 %best.0.lcssa
}

; Function Attrs: optsize
declare void @ptmr_start(%struct.ptmr_t*) #1

; Function Attrs: optsize
declare i32 @gc_compute_closest_cw(%struct.gs_s*, float*) #1

; Function Attrs: optsize
declare void @subvq_gautbl_eval_logs3(%struct.subvq_t*, float*) #1

; Function Attrs: optsize
declare void @ptmr_stop(%struct.ptmr_t*) #1

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
