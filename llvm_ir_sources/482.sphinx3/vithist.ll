; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/vithist.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vithist_t = type { %struct.vithist_entry_t**, i32*, i32, i32, i32, i32, i32*, i32*, %struct.vh_lms2vh_t**, %struct.gnode_s* }
%struct.vithist_entry_t = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, %union.vh_lmstate_t }
%union.vh_lmstate_t = type { %struct.anon }
%struct.anon = type { [2 x i16] }
%struct.vh_lms2vh_t = type { i32, i32, %struct.vithist_entry_t*, %struct.gnode_s* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
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

@.str = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/vithist.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"Initializing Viterbi-history module\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"Allocation for viterbi history, finall size %d\0A\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str5 = private unnamed_addr constant [82 x i8] c"Hmm->out.history equals to -1 with score %d, some active phone was not computed?\0A\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"VITHIST  frame %d  #entries %d\0A\00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"VITHIST  #frames %d  #entries %d\0A\00", align 1
@.str8 = private unnamed_addr constant [51 x i8] c"\09%7s %5s %5s %11s %9s %8s %7s %4s Word (LM-state)\0A\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"Seq/Val\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"SFrm\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"EFrm\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"PathScr\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"SegAScr\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"SegLScr\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"Pred\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"%5d BS: %11d BV: %8d\0A\00", align 1
@.str18 = private unnamed_addr constant [39 x i8] c"\09%c%6d %5d %5d %11d %9d %8d %7d %4d %s\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"END_VITHIST\0A\00", align 1
@.str24 = private unnamed_addr constant [64 x i8] c"Nodes %d (NODEID WORD STARTFRAME FIRST-ENDFRAME LAST-ENDFRAME)\0A\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"%d %s %d %d %d\0A\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"Initial %d\0AFinal %d\0A\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"BestSegAscr 0 (NODEID ENDFRAME ASCORE)\0A\00", align 1
@.str29 = private unnamed_addr constant [38 x i8] c"Edges (FROM-NODEID TO-NODEID ASCORE)\0A\00", align 1
@.str30 = private unnamed_addr constant [37 x i8] c"Edges (FROM-NODEID ENDFRAME ASCORE)\0A\00", align 1
@.str31 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1
@.str33 = private unnamed_addr constant [59 x i8] c"Viterbi history array exhausted; increase VITHIST_MAXBLKS\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.vithist_t* @vithist_init(%struct.kbcore_t* nocapture %kbc, i32 %wbeam, i32 %bghist) #0 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 77, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0)) #6
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 64, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 79) #6
  %0 = bitcast i8* %call to %struct.vithist_t*
  %call1 = tail call i8* @__ckd_calloc__(i64 256, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 81) #6
  %1 = bitcast i8* %call1 to %struct.vithist_entry_t**
  %entry2 = bitcast i8* %call to %struct.vithist_entry_t***
  store %struct.vithist_entry_t** %1, %struct.vithist_entry_t*** %entry2, align 8, !tbaa !0
  %n_entry = getelementptr inbounds i8* %call, i64 16
  %2 = bitcast i8* %n_entry to i32*
  store i32 0, i32* %2, align 4, !tbaa !3
  %call3 = tail call i8* @__ckd_calloc__(i64 15001, i64 4, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 84) #6
  %3 = bitcast i8* %call3 to i32*
  %frame_start = getelementptr inbounds i8* %call, i64 8
  %4 = bitcast i8* %frame_start to i32**
  store i32* %3, i32** %4, align 8, !tbaa !0
  %call4 = tail call i8* @__ckd_calloc__(i64 15001, i64 4, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 86) #6
  %5 = bitcast i8* %call4 to i32*
  %bestscore = getelementptr inbounds i8* %call, i64 32
  %6 = bitcast i8* %bestscore to i32**
  store i32* %5, i32** %6, align 8, !tbaa !0
  %call5 = tail call i8* @__ckd_calloc__(i64 15001, i64 4, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 87) #6
  %7 = bitcast i8* %call5 to i32*
  %bestvh = getelementptr inbounds i8* %call, i64 40
  %8 = bitcast i8* %bestvh to i32**
  store i32* %7, i32** %8, align 8, !tbaa !0
  %wbeam6 = getelementptr inbounds i8* %call, i64 28
  %9 = bitcast i8* %wbeam6 to i32*
  store i32 %wbeam, i32* %9, align 4, !tbaa !3
  %bghist7 = getelementptr inbounds i8* %call, i64 24
  %10 = bitcast i8* %bghist7 to i32*
  store i32 %bghist, i32* %10, align 4, !tbaa !3
  %lm8 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %11 = load %struct.lm_s** %lm8, align 8, !tbaa !0
  %lmset9 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 5
  %12 = load %struct.lmset_s** %lmset9, align 8, !tbaa !0
  %dict10 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %13 = load %struct.dict_t** %dict10, align 8, !tbaa !0
  %n_word = getelementptr inbounds %struct.dict_t* %13, i64 0, i32 7
  %14 = load i32* %n_word, align 4, !tbaa !3
  %conv = sext i32 %14 to i64
  %call11 = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 96) #6
  %tobool = icmp eq %struct.lmset_s* %12, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_lm = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 12
  %15 = load i32* %n_lm, align 4, !tbaa !3
  %cmp52 = icmp sgt i32 %15, 0
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %max.054 = phi i32 [ %.max.0, %for.body ], [ -1, %for.cond.preheader ]
  %lm13 = getelementptr inbounds %struct.lmset_s* %12, i64 %indvars.iv, i32 1
  %16 = load %struct.lm_s** %lm13, align 8, !tbaa !0
  %n_ug = getelementptr inbounds %struct.lm_s* %16, i64 0, i32 0
  %17 = load i32* %n_ug, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %17, %max.054
  %.max.0 = select i1 %cmp14, i32 %17, i32 %max.054
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %18, %15
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %max.0.lcssa = phi i32 [ -1, %for.cond.preheader ], [ %.max.0, %for.body ]
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 105, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), i32 %max.0.lcssa) #6
  %conv21 = sext i32 %max.0.lcssa to i64
  %call22 = tail call i8* @__ckd_calloc__(i64 %conv21, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 106) #6
  %19 = bitcast i8* %call22 to %struct.vh_lms2vh_t**
  %lms2vh_root = getelementptr inbounds i8* %call, i64 48
  %20 = bitcast i8* %lms2vh_root to %struct.vh_lms2vh_t***
  store %struct.vh_lms2vh_t** %19, %struct.vh_lms2vh_t*** %20, align 8, !tbaa !0
  br label %if.end30

if.else:                                          ; preds = %entry
  %tobool23 = icmp eq %struct.lm_s* %11, null
  br i1 %tobool23, label %if.end30, label %if.then24

if.then24:                                        ; preds = %if.else
  %n_ug25 = getelementptr inbounds %struct.lm_s* %11, i64 0, i32 0
  %21 = load i32* %n_ug25, align 4, !tbaa !3
  %conv26 = sext i32 %21 to i64
  %call27 = tail call i8* @__ckd_calloc__(i64 %conv26, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 109) #6
  %22 = bitcast i8* %call27 to %struct.vh_lms2vh_t**
  %lms2vh_root28 = getelementptr inbounds i8* %call, i64 48
  %23 = bitcast i8* %lms2vh_root28 to %struct.vh_lms2vh_t***
  store %struct.vh_lms2vh_t** %22, %struct.vh_lms2vh_t*** %23, align 8, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24, %for.end
  tail call void @ckd_free(i8* %call11) #6
  %lwidlist = getelementptr inbounds i8* %call, i64 56
  %24 = bitcast i8* %lwidlist to %struct.gnode_s**
  store %struct.gnode_s* null, %struct.gnode_s** %24, align 8, !tbaa !0
  ret %struct.vithist_t* %0
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @vithist_utt_begin(%struct.vithist_t* nocapture %vh, %struct.kbcore_t* nocapture %kbc) #0 {
entry:
  %lm1 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %0 = load %struct.lm_s** %lm1, align 8, !tbaa !0
  %dict2 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %1 = load %struct.dict_t** %dict2, align 8, !tbaa !0
  %call = tail call fastcc %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %vh) #7
  %startwid = getelementptr inbounds %struct.dict_t* %1, i64 0, i32 11
  %2 = load i32* %startwid, align 4, !tbaa !3
  %wid = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 0
  store i32 %2, i32* %wid, align 4, !tbaa !3
  %sf = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 1
  store i16 -1, i16* %sf, align 2, !tbaa !4
  %ef = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 2
  store i16 -1, i16* %ef, align 2, !tbaa !4
  %ascr = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 3
  store i32 0, i32* %ascr, align 4, !tbaa !3
  %lscr = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 4
  store i32 0, i32* %lscr, align 4, !tbaa !3
  %score = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 5
  store i32 0, i32* %score, align 4, !tbaa !3
  %pred = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 6
  store i32 -1, i32* %pred, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 7
  store i32 0, i32* %type, align 4, !tbaa !3
  %valid = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 8
  store i32 1, i32* %valid, align 4, !tbaa !3
  %startlwid = getelementptr inbounds %struct.lm_s* %0, i64 0, i32 5
  %3 = load i16* %startlwid, align 2, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 9, i32 0, i32 0, i64 0
  store i16 %3, i16* %arrayidx, align 2, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct.vithist_entry_t* %call, i64 0, i32 9, i32 0, i32 0, i64 1
  store i16 -1, i16* %arrayidx6, align 2, !tbaa !4
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  store i32 0, i32* %n_frm, align 4, !tbaa !3
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %4 = load i32** %frame_start, align 8, !tbaa !0
  store i32 1, i32* %4, align 4, !tbaa !3
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %5 = load i32** %bestscore, align 8, !tbaa !0
  store i32 -2147483648, i32* %5, align 4, !tbaa !3
  %bestvh = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 7
  %6 = load i32** %bestvh, align 8, !tbaa !0
  store i32 -1, i32* %6, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* nocapture %vh) #0 {
entry:
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %0 = load i32* %n_entry, align 4, !tbaa !3
  %shr = ashr i32 %0, 14
  %and = and i32 %0, 16383
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %shr, 255
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 132, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([59 x i8]* @.str33, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %call = tail call i8* @__ckd_calloc__(i64 16384, i64 36, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 136) #6
  %1 = bitcast i8* %call to %struct.vithist_entry_t*
  %idxprom = sext i32 %shr to i64
  %entry4 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %2 = load %struct.vithist_entry_t*** %entry4, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %2, i64 %idxprom
  store %struct.vithist_entry_t* %1, %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %.pre = load i32* %n_entry, align 4, !tbaa !3
  br label %if.end8

if.else:                                          ; preds = %entry
  %idxprom5 = sext i32 %shr to i64
  %entry6 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %3 = load %struct.vithist_entry_t*** %entry6, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %struct.vithist_entry_t** %3, i64 %idxprom5
  %4 = load %struct.vithist_entry_t** %arrayidx7, align 8, !tbaa !0
  %idx.ext17 = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext17
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %5 = phi i32 [ %.pre, %if.end ], [ %0, %if.else ]
  %ve.0 = phi %struct.vithist_entry_t* [ %1, %if.end ], [ %add.ptr, %if.else ]
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n_entry, align 4, !tbaa !3
  ret %struct.vithist_entry_t* %ve.0
}

; Function Attrs: nounwind optsize readonly uwtable
define %struct.vithist_entry_t* @vithist_id2entry(%struct.vithist_t* nocapture %vh, i32 %id) #2 {
entry:
  %shr = ashr i32 %id, 14
  %idxprom = sext i32 %shr to i64
  %entry1 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %0 = load %struct.vithist_entry_t*** %entry1, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %0, i64 %idxprom
  %1 = load %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %and = and i32 %id, 16383
  %idx.ext3 = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext3
  ret %struct.vithist_entry_t* %add.ptr
}

; Function Attrs: nounwind optsize uwtable
define void @vithist_rescore(%struct.vithist_t* nocapture %vh, %struct.kbcore_t* nocapture %kbc, i32 %wid, i32 %ef, i32 %score, i32 %pred, i32 %type) #0 {
entry:
  %tve = alloca %struct.vithist_entry_t, align 4
  %0 = bitcast %struct.vithist_entry_t* %tve to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %cmp = icmp eq i32 %pred, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 286, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([82 x i8]* @.str5, i64 0, i64 0), i32 %score) #6
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %shr = ashr i32 %pred, 14
  %idxprom = sext i32 %shr to i64
  %entry1 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %1 = load %struct.vithist_entry_t*** %entry1, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %1, i64 %idxprom
  %2 = load %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %and = and i32 %pred, 16383
  %idx.ext129 = zext i32 %and to i64
  %wid2 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 0
  store i32 %wid, i32* %wid2, align 4, !tbaa !3
  %ef3 = getelementptr inbounds %struct.vithist_entry_t* %2, i64 %idx.ext129, i32 2
  %3 = load i16* %ef3, align 2, !tbaa !4
  %add = add i16 %3, 1
  %sf = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 1
  store i16 %add, i16* %sf, align 4, !tbaa !4
  %conv5 = trunc i32 %ef to i16
  %ef6 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 2
  store i16 %conv5, i16* %ef6, align 2, !tbaa !4
  %type7 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 7
  store i32 %type, i32* %type7, align 4, !tbaa !3
  %valid = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 8
  store i32 1, i32* %valid, align 4, !tbaa !3
  %score8 = getelementptr inbounds %struct.vithist_entry_t* %2, i64 %idx.ext129, i32 5
  %4 = load i32* %score8, align 4, !tbaa !3
  %sub = sub nsw i32 %score, %4
  %ascr = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 3
  store i32 %sub, i32* %ascr, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %pred, 0
  br i1 %cmp9, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end
  %idxprom13 = sext i16 %3 to i64
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %5 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %5, i64 %idxprom13
  %6 = load i32* %arrayidx14, align 4, !tbaa !3
  %add17 = add i64 %idxprom13, 1
  %arrayidx20 = getelementptr inbounds i32* %5, i64 %add17
  %7 = load i32* %arrayidx20, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.else
  %se.0 = phi i32 [ %6, %if.else ], [ 0, %if.end ]
  %fe.0 = phi i32 [ %7, %if.else ], [ 1, %if.end ]
  %dict = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %8 = load %struct.dict_t** %dict, align 8, !tbaa !0
  %call = call i32 @dict_filler_word(%struct.dict_t* %8, i32 %wid) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.else30, label %if.then22

if.then22:                                        ; preds = %if.end21
  %fillpen = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 6
  %9 = load %struct.fillpen_t** %fillpen, align 8, !tbaa !0
  %call23 = call i32 @fillpen(%struct.fillpen_t* %9, i32 %wid) #6
  %lscr = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 4
  store i32 %call23, i32* %lscr, align 4, !tbaa !3
  %add25 = add nsw i32 %call23, %score
  %score26 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 5
  store i32 %add25, i32* %score26, align 4, !tbaa !3
  %pred27 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 6
  store i32 %pred, i32* %pred27, align 4, !tbaa !3
  %lm3g = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 9, i32 0
  %lm3g29 = getelementptr inbounds %struct.vithist_entry_t* %2, i64 %idx.ext129, i32 9, i32 0
  %10 = bitcast %struct.anon* %lm3g29 to i32*
  %11 = bitcast %struct.anon* %lm3g to i32*
  %12 = load i32* %10, align 2
  store i32 %12, i32* %11, align 4
  call fastcc void @vithist_enter(%struct.vithist_t* %vh, %struct.vithist_entry_t* %tve) #7
  br label %if.end91

if.else30:                                        ; preds = %if.end21
  %lmset = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 5
  %13 = load %struct.lmset_s** %lmset, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.lmset_s* %13, null
  %idxprom33 = sext i32 %wid to i64
  br i1 %tobool31, label %if.else35, label %if.then32

if.then32:                                        ; preds = %if.else30
  %lm = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %14 = load %struct.lm_s** %lm, align 8, !tbaa !0
  %dict2lmwid = getelementptr inbounds %struct.lm_s* %14, i64 0, i32 38
  br label %if.end39

if.else35:                                        ; preds = %if.else30
  %dict2lmwid37 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 7
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then32
  %.pn.in = phi i16** [ %dict2lmwid, %if.then32 ], [ %dict2lmwid37, %if.else35 ]
  %.pn = load i16** %.pn.in, align 8
  %lwid.0.in = getelementptr inbounds i16* %.pn, i64 %idxprom33
  %lwid.0 = load i16* %lwid.0.in, align 2
  %arrayidx43 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 9, i32 0, i32 0, i64 0
  store i16 %lwid.0, i16* %arrayidx43, align 4, !tbaa !4
  %cmp44132 = icmp slt i32 %se.0, %fe.0
  br i1 %cmp44132, label %for.body.lr.ph, label %if.end91

for.body.lr.ph:                                   ; preds = %if.end39
  %lm56 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %lscr66 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 4
  %score72 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 5
  %wbeam = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 5
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %pred80 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 6
  %arrayidx88 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 9, i32 0, i32 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %i.0133 = phi i32 [ %se.0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %shr46 = ashr i32 %i.0133, 14
  %idxprom47 = sext i32 %shr46 to i64
  %15 = load %struct.vithist_entry_t*** %entry1, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds %struct.vithist_entry_t** %15, i64 %idxprom47
  %16 = load %struct.vithist_entry_t** %arrayidx49, align 8, !tbaa !0
  %and50 = and i32 %i.0133, 16383
  %idx.ext51131 = zext i32 %and50 to i64
  %valid53 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext51131, i32 8
  %17 = load i32* %valid53, align 4, !tbaa !3
  %tobool54 = icmp eq i32 %17, 0
  br i1 %tobool54, label %for.inc, label %if.then55

if.then55:                                        ; preds = %for.body
  %18 = load %struct.lm_s** %lm56, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext51131, i32 9, i32 0, i32 0, i64 1
  %19 = load i16* %arrayidx60, align 2, !tbaa !4
  %arrayidx64 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext51131, i32 9, i32 0, i32 0, i64 0
  %20 = load i16* %arrayidx64, align 2, !tbaa !4
  %call65 = call i32 @lm_tg_score(%struct.lm_s* %18, i16 zeroext %19, i16 zeroext %20, i16 zeroext %lwid.0, i32 %wid) #6
  store i32 %call65, i32* %lscr66, align 4, !tbaa !3
  %score67 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext51131, i32 5
  %21 = load i32* %score67, align 4, !tbaa !3
  %22 = load i32* %ascr, align 4, !tbaa !3
  %add69 = add i32 %21, %call65
  %add71 = add i32 %add69, %22
  store i32 %add71, i32* %score72, align 4, !tbaa !3
  %23 = load i32* %wbeam, align 4, !tbaa !3
  %sub74 = sub nsw i32 %add71, %23
  %24 = load i32* %n_frm, align 4, !tbaa !3
  %idxprom75 = sext i32 %24 to i64
  %25 = load i32** %bestscore, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32* %25, i64 %idxprom75
  %26 = load i32* %arrayidx76, align 4, !tbaa !3
  %cmp77 = icmp slt i32 %sub74, %26
  br i1 %cmp77, label %for.inc, label %if.then79

if.then79:                                        ; preds = %if.then55
  store i32 %i.0133, i32* %pred80, align 4, !tbaa !3
  %27 = load i16* %arrayidx64, align 2, !tbaa !4
  store i16 %27, i16* %arrayidx88, align 2, !tbaa !4
  call fastcc void @vithist_enter(%struct.vithist_t* %vh, %struct.vithist_entry_t* %tve) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %for.body, %if.then79
  %inc = add nsw i32 %i.0133, 1
  %exitcond = icmp eq i32 %inc, %fe.0
  br i1 %exitcond, label %if.end91, label %for.body

if.end91:                                         ; preds = %if.end39, %for.inc, %if.then22
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare i32 @dict_filler_word(%struct.dict_t*, i32) #1

; Function Attrs: optsize
declare i32 @fillpen(%struct.fillpen_t*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @vithist_enter(%struct.vithist_t* nocapture %vh, %struct.vithist_entry_t* nocapture %tve) #0 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 9, i32 0, i32 0, i64 0
  %0 = load i16* %arrayidx.i, align 2, !tbaa !4
  %idxprom.i = zext i16 %0 to i64
  %lms2vh_root.i = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 8
  %1 = load %struct.vh_lms2vh_t*** %lms2vh_root.i, align 8, !tbaa !0
  %arrayidx2.i = getelementptr inbounds %struct.vh_lms2vh_t** %1, i64 %idxprom.i
  %2 = load %struct.vh_lms2vh_t** %arrayidx2.i, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.vh_lms2vh_t* %2, null
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  %children.i = getelementptr inbounds %struct.vh_lms2vh_t* %2, i64 0, i32 3
  %gn.016.i = load %struct.gnode_s** %children.i, align 8
  %tobool17.i = icmp eq %struct.gnode_s* %gn.016.i, null
  br i1 %tobool17.i, label %if.then, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %arrayidx5.i = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 9, i32 0, i32 0, i64 1
  %3 = load i16* %arrayidx5.i, align 2, !tbaa !4
  %conv.i = zext i16 %3 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %next.i = getelementptr inbounds %struct.gnode_s* %gn.018.i, i64 0, i32 1
  %gn.0.i = load %struct.gnode_s** %next.i, align 8
  %tobool.i = icmp eq %struct.gnode_s* %gn.0.i, null
  br i1 %tobool.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i, %for.body.lr.ph.i
  %gn.018.i = phi %struct.gnode_s* [ %gn.016.i, %for.body.lr.ph.i ], [ %gn.0.i, %for.cond.i ]
  %ptr.i = getelementptr inbounds %struct.gnode_s* %gn.018.i, i64 0, i32 0, i32 0
  %4 = load i8** %ptr.i, align 8, !tbaa !0
  %state.i = bitcast i8* %4 to i32*
  %5 = load i32* %state.i, align 4, !tbaa !3
  %cmp6.i = icmp eq i32 %5, %conv.i
  br i1 %cmp6.i, label %vh_lmstate_find.exit, label %for.cond.i

vh_lmstate_find.exit:                             ; preds = %for.body.i
  %vhid.i = getelementptr inbounds i8* %4, i64 4
  %6 = bitcast i8* %vhid.i to i32*
  %7 = load i32* %6, align 4, !tbaa !3
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond.i, %if.end.i, %entry, %vh_lmstate_find.exit
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %8 = load i32* %n_entry, align 4, !tbaa !3
  %call1 = tail call fastcc %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %vh) #7
  %9 = bitcast %struct.vithist_entry_t* %call1 to i8*
  %10 = bitcast %struct.vithist_entry_t* %tve to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 36, i32 4, i1 false), !tbaa.struct !5
  %arrayidx.i2 = getelementptr inbounds %struct.vithist_entry_t* %call1, i64 0, i32 9, i32 0, i32 0, i64 0
  %11 = load i16* %arrayidx.i2, align 2, !tbaa !4
  %idxprom.i3 = zext i16 %11 to i64
  %12 = load %struct.vh_lms2vh_t*** %lms2vh_root.i, align 8, !tbaa !0
  %arrayidx2.i5 = getelementptr inbounds %struct.vh_lms2vh_t** %12, i64 %idxprom.i3
  %13 = load %struct.vh_lms2vh_t** %arrayidx2.i5, align 8, !tbaa !0
  %cmp.i6 = icmp eq %struct.vh_lms2vh_t* %13, null
  br i1 %cmp.i6, label %if.then.i, label %vithist_lmstate_enter.exit

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 218) #6
  %14 = bitcast i8* %call.i to %struct.vh_lms2vh_t*
  %15 = load %struct.vh_lms2vh_t*** %lms2vh_root.i, align 8, !tbaa !0
  %arrayidx5.i7 = getelementptr inbounds %struct.vh_lms2vh_t** %15, i64 %idxprom.i3
  store %struct.vh_lms2vh_t* %14, %struct.vh_lms2vh_t** %arrayidx5.i7, align 8, !tbaa !0
  %conv.i8 = zext i16 %11 to i32
  %state.i9 = bitcast i8* %call.i to i32*
  store i32 %conv.i8, i32* %state.i9, align 4, !tbaa !3
  %children.i10 = getelementptr inbounds i8* %call.i, i64 16
  %16 = bitcast i8* %children.i10 to %struct.gnode_s**
  store %struct.gnode_s* null, %struct.gnode_s** %16, align 8, !tbaa !0
  %lwidlist.i = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 9
  %17 = load %struct.gnode_s** %lwidlist.i, align 8, !tbaa !0
  %call7.i = tail call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %17, i32 %conv.i8) #6
  store %struct.gnode_s* %call7.i, %struct.gnode_s** %lwidlist.i, align 8, !tbaa !0
  br label %vithist_lmstate_enter.exit

vithist_lmstate_enter.exit:                       ; preds = %if.then, %if.then.i
  %lms2vh.0.i = phi %struct.vh_lms2vh_t* [ %14, %if.then.i ], [ %13, %if.then ]
  %call9.i = tail call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 229) #6
  %arrayidx13.i = getelementptr inbounds %struct.vithist_entry_t* %call1, i64 0, i32 9, i32 0, i32 0, i64 1
  %18 = load i16* %arrayidx13.i, align 2, !tbaa !4
  %conv14.i = zext i16 %18 to i32
  %state15.i = bitcast i8* %call9.i to i32*
  store i32 %conv14.i, i32* %state15.i, align 4, !tbaa !3
  %children16.i = getelementptr inbounds i8* %call9.i, i64 16
  %19 = bitcast i8* %children16.i to %struct.gnode_s**
  store %struct.gnode_s* null, %struct.gnode_s** %19, align 8, !tbaa !0
  %vhid17.i = getelementptr inbounds i8* %call9.i, i64 4
  %20 = bitcast i8* %vhid17.i to i32*
  store i32 %8, i32* %20, align 4, !tbaa !3
  %ve18.i = getelementptr inbounds i8* %call9.i, i64 8
  %21 = bitcast i8* %ve18.i to %struct.vithist_entry_t**
  store %struct.vithist_entry_t* %call1, %struct.vithist_entry_t** %21, align 8, !tbaa !0
  %children19.i = getelementptr inbounds %struct.vh_lms2vh_t* %lms2vh.0.i, i64 0, i32 3
  %22 = load %struct.gnode_s** %children19.i, align 8, !tbaa !0
  %call20.i = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %22, i8* %call9.i) #6
  store %struct.gnode_s* %call20.i, %struct.gnode_s** %children19.i, align 8, !tbaa !0
  %score9.pre = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 5
  br label %if.end6

if.else:                                          ; preds = %vh_lmstate_find.exit
  %shr = ashr i32 %7, 14
  %idxprom = sext i32 %shr to i64
  %entry2 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %23 = load %struct.vithist_entry_t*** %entry2, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %23, i64 %idxprom
  %24 = load %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %and = and i32 %7, 16383
  %idx.ext1 = zext i32 %and to i64
  %score = getelementptr inbounds %struct.vithist_entry_t* %24, i64 %idx.ext1, i32 5
  %25 = load i32* %score, align 4, !tbaa !3
  %score3 = getelementptr inbounds %struct.vithist_entry_t* %tve, i64 0, i32 5
  %26 = load i32* %score3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %25, %26
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t* %24, i64 %idx.ext1
  %27 = bitcast %struct.vithist_entry_t* %add.ptr to i8*
  %28 = bitcast %struct.vithist_entry_t* %tve to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 36, i32 4, i1 false), !tbaa.struct !5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %vithist_lmstate_enter.exit
  %score9.pre-phi = phi i32* [ %score3, %if.else ], [ %score3, %if.then5 ], [ %score9.pre, %vithist_lmstate_enter.exit ]
  %vhid.0 = phi i32 [ %7, %if.else ], [ %7, %if.then5 ], [ %8, %vithist_lmstate_enter.exit ]
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %29 = load i32* %n_frm, align 4, !tbaa !3
  %idxprom7 = sext i32 %29 to i64
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %30 = load i32** %bestscore, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %30, i64 %idxprom7
  %31 = load i32* %arrayidx8, align 4, !tbaa !3
  %32 = load i32* %score9.pre-phi, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %31, %32
  br i1 %cmp10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.end6
  store i32 %32, i32* %arrayidx8, align 4, !tbaa !3
  %33 = load i32* %n_frm, align 4, !tbaa !3
  %idxprom18 = sext i32 %33 to i64
  %bestvh = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 7
  %34 = load i32** %bestvh, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %34, i64 %idxprom18
  store i32 %vhid.0, i32* %arrayidx19, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end6
  ret void
}

; Function Attrs: optsize
declare i32 @lm_tg_score(%struct.lm_s*, i16 zeroext, i16 zeroext, i16 zeroext, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @vithist_prune(%struct.vithist_t* nocapture %vh, %struct.dict_t* %dict, i32 %frm, i32 %maxwpf, i32 %maxhist, i32 %beam) #0 {
entry:
  %ve = alloca %struct.vithist_entry_t*, align 8
  %i = alloca i32, align 4
  %idxprom = sext i32 %frm to i64
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %0 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %2 = load i32* %n_entry, align 4, !tbaa !3
  %sub = add nsw i32 %2, -1
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %3 = load i32** %bestscore, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx2, align 4, !tbaa !3
  %add = add nsw i32 %4, %beam
  %call = call i8* @heap_new() #6
  %add3 = add nsw i32 %maxwpf, 1
  %conv = sext i32 %add3 to i64
  %call4 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 410) #6
  %5 = bitcast i8* %call4 to i32*
  store i32 -1, i32* %5, align 4, !tbaa !3
  store i32 %1, i32* %i, align 4, !tbaa !3
  %cmp89 = icmp sgt i32 %1, %sub
  br i1 %cmp89, label %while.cond.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %entry8 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  br label %for.body

while.cond.preheader:                             ; preds = %for.body, %entry
  %6 = bitcast %struct.vithist_entry_t** %ve to i8**
  %bghist = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 4
  br label %while.cond.outer.outer.outer

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %storemerge90 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.body ]
  %shr = ashr i32 %storemerge90, 14
  %idxprom7 = sext i32 %shr to i64
  %7 = load %struct.vithist_entry_t*** %entry8, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.vithist_entry_t** %7, i64 %idxprom7
  %8 = load %struct.vithist_entry_t** %arrayidx9, align 8, !tbaa !0
  %and = and i32 %storemerge90, 16383
  %idx.ext86 = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t* %8, i64 %idx.ext86
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8, !tbaa !0
  %9 = bitcast %struct.vithist_entry_t* %add.ptr to i8*
  %score = getelementptr inbounds %struct.vithist_entry_t* %8, i64 %idx.ext86, i32 5
  %10 = load i32* %score, align 4, !tbaa !3
  %sub10 = sub nsw i32 0, %10
  %call11 = call i32 @heap_insert(i8* %call, i8* %9, i32 %sub10) #6
  %11 = load %struct.vithist_entry_t** %ve, align 8, !tbaa !0
  %valid = getelementptr inbounds %struct.vithist_entry_t* %11, i64 0, i32 8
  store i32 0, i32* %valid, align 4, !tbaa !3
  %12 = load i32* %i, align 4, !tbaa !3
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !3
  %cmp = icmp slt i32 %12, %sub
  br i1 %cmp, label %for.body, label %while.cond.preheader

while.cond:                                       ; preds = %while.body, %while.cond.outer
  %call12 = call i32 @heap_pop(i8* %call, i8** %6, i32* %i) #6
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %13 = load %struct.vithist_entry_t** %ve, align 8, !tbaa !0
  %score15 = getelementptr inbounds %struct.vithist_entry_t* %13, i64 0, i32 5
  %14 = load i32* %score15, align 4, !tbaa !3
  %cmp16 = icmp sge i32 %14, %add
  %or.cond = and i1 %cmp16, %cmp18
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %land.lhs.true
  %wid20 = getelementptr inbounds %struct.vithist_entry_t* %13, i64 0, i32 0
  %15 = load i32* %wid20, align 4, !tbaa !3
  %call21 = call i32 @dict_filler_word(%struct.dict_t* %dict, i32 %15) #6
  %tobool = icmp eq i32 %call21, 0
  %brmerge = or i1 %tobool, %tobool22
  %filler_done.0.ph.mux = select i1 %tobool, i32 %filler_done.0.ph, i32 1
  br i1 %brmerge, label %if.end24, label %while.cond

if.end24:                                         ; preds = %while.body
  store i32 0, i32* %i, align 4, !tbaa !3
  %16 = load i32* %5, align 4, !tbaa !3
  %cmp2887 = icmp sgt i32 %16, -1
  br i1 %cmp2887, label %land.rhs30.lr.ph, label %for.end40

land.rhs30.lr.ph:                                 ; preds = %if.end24
  %17 = load %struct.vithist_entry_t** %ve, align 8, !tbaa !0
  %wid33 = getelementptr inbounds %struct.vithist_entry_t* %17, i64 0, i32 0
  br label %land.rhs30

for.cond25:                                       ; preds = %land.rhs30
  %18 = trunc i64 %indvars.iv.next to i32
  store i32 %18, i32* %i, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32* %5, i64 %indvars.iv.next
  %19 = load i32* %arrayidx27, align 4, !tbaa !3
  %cmp28 = icmp sgt i32 %19, -1
  br i1 %cmp28, label %land.rhs30, label %for.end40

land.rhs30:                                       ; preds = %land.rhs30.lr.ph, %for.cond25
  %20 = phi i64 [ 0, %land.rhs30.lr.ph ], [ %indvars.iv.next, %for.cond25 ]
  %21 = phi i32 [ %16, %land.rhs30.lr.ph ], [ %19, %for.cond25 ]
  %22 = load i32* %wid33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %21, %22
  %indvars.iv.next = add i64 %20, 1
  br i1 %cmp34, label %for.end40, label %for.cond25

for.end40:                                        ; preds = %for.cond25, %land.rhs30, %if.end24
  %23 = phi i64 [ 0, %if.end24 ], [ %20, %land.rhs30 ], [ %indvars.iv.next, %for.cond25 ]
  %sext = shl i64 %23, 32
  %idxprom41 = ashr exact i64 %sext, 32
  %arrayidx42 = getelementptr inbounds i32* %5, i64 %idxprom41
  %24 = load i32* %arrayidx42, align 4, !tbaa !3
  %cmp43 = icmp slt i32 %24, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.end40
  br i1 %cmp46, label %if.then48, label %while.cond.outer

if.then48:                                        ; preds = %if.then45
  %25 = load %struct.vithist_entry_t** %ve, align 8, !tbaa !0
  %wid49 = getelementptr inbounds %struct.vithist_entry_t* %25, i64 0, i32 0
  %26 = load i32* %wid49, align 4, !tbaa !3
  store i32 %26, i32* %arrayidx42, align 4, !tbaa !3
  %27 = load i32* %i, align 4, !tbaa !3
  %add52 = add nsw i32 %27, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i32* %5, i64 %idxprom53
  store i32 -1, i32* %arrayidx54, align 4, !tbaa !3
  %dec = add nsw i32 %maxwpf.addr.0.ph.ph.ph, -1
  %dec55 = add nsw i32 %maxhist.addr.0.ph.ph, -1
  %valid56 = getelementptr inbounds %struct.vithist_entry_t* %25, i64 0, i32 8
  store i32 1, i32* %valid56, align 4, !tbaa !3
  br label %while.cond.outer.outer.outer

while.cond.outer.outer.outer:                     ; preds = %while.cond.preheader, %if.then48
  %filler_done.0.ph.ph.ph = phi i32 [ %filler_done.0.ph.mux, %if.then48 ], [ 0, %while.cond.preheader ]
  %maxhist.addr.0.ph.ph.ph = phi i32 [ %dec55, %if.then48 ], [ %maxhist, %while.cond.preheader ]
  %maxwpf.addr.0.ph.ph.ph = phi i32 [ %dec, %if.then48 ], [ %maxwpf, %while.cond.preheader ]
  %cmp46 = icmp sgt i32 %maxwpf.addr.0.ph.ph.ph, 0
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %while.cond.outer.outer.outer, %if.then59
  %filler_done.0.ph.ph = phi i32 [ %filler_done.0.ph.mux, %if.then59 ], [ %filler_done.0.ph.ph.ph, %while.cond.outer.outer.outer ]
  %maxhist.addr.0.ph.ph = phi i32 [ %dec60, %if.then59 ], [ %maxhist.addr.0.ph.ph.ph, %while.cond.outer.outer.outer ]
  %cmp18 = icmp sgt i32 %maxhist.addr.0.ph.ph, 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.else, %if.then45, %while.cond.outer.outer
  %filler_done.0.ph = phi i32 [ %filler_done.0.ph.ph, %while.cond.outer.outer ], [ %filler_done.0.ph.mux, %if.then45 ], [ %filler_done.0.ph.mux, %if.else ]
  %tobool22 = icmp eq i32 %filler_done.0.ph, 0
  br label %while.cond

if.else:                                          ; preds = %for.end40
  %28 = load i32* %bghist, align 4, !tbaa !3
  %tobool58 = icmp eq i32 %28, 0
  br i1 %tobool58, label %if.then59, label %while.cond.outer

if.then59:                                        ; preds = %if.else
  %dec60 = add nsw i32 %maxhist.addr.0.ph.ph, -1
  %29 = load %struct.vithist_entry_t** %ve, align 8, !tbaa !0
  %valid61 = getelementptr inbounds %struct.vithist_entry_t* %29, i64 0, i32 8
  store i32 1, i32* %valid61, align 4, !tbaa !3
  br label %while.cond.outer.outer

while.end:                                        ; preds = %land.lhs.true, %while.cond
  call void @ckd_free(i8* %call4) #6
  %call64 = call i32 @heap_destroy(i8* %call) #6
  %30 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i32* %30, i64 %idxprom
  %31 = load i32* %arrayidx.i, align 4, !tbaa !3
  %32 = load i32* %n_entry, align 4, !tbaa !3
  %sub.i = add nsw i32 %32, -1
  %cmp69.i = icmp sgt i32 %31, %sub.i
  br i1 %cmp69.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %while.end
  %entry2.i = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %te.073.i = phi i32 [ %31, %for.body.lr.ph.i ], [ %te.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.072.i = phi i32 [ %31, %for.body.lr.ph.i ], [ %inc18.i, %for.inc.i.for.body.i_crit_edge ]
  %bv.071.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %bv.2.i, %for.inc.i.for.body.i_crit_edge ]
  %bs.070.i = phi i32 [ -2147483648, %for.body.lr.ph.i ], [ %bs.2.i, %for.inc.i.for.body.i_crit_edge ]
  %shr.i = ashr i32 %i.072.i, 14
  %idxprom1.i = sext i32 %shr.i to i64
  %33 = load %struct.vithist_entry_t*** %entry2.i, align 8, !tbaa !0
  %arrayidx3.i = getelementptr inbounds %struct.vithist_entry_t** %33, i64 %idxprom1.i
  %34 = load %struct.vithist_entry_t** %arrayidx3.i, align 8, !tbaa !0
  %and.i = and i32 %i.072.i, 16383
  %idx.ext65.i = zext i32 %and.i to i64
  %add.ptr.i = getelementptr inbounds %struct.vithist_entry_t* %34, i64 %idx.ext65.i
  %valid.i = getelementptr inbounds %struct.vithist_entry_t* %34, i64 %idx.ext65.i, i32 8
  %35 = load i32* %valid.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %35, 0
  br i1 %tobool.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %cmp4.i = icmp eq i32 %i.072.i, %te.073.i
  br i1 %cmp4.i, label %if.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  %shr6.i = ashr i32 %te.073.i, 14
  %idxprom7.i = sext i32 %shr6.i to i64
  %arrayidx9.i = getelementptr inbounds %struct.vithist_entry_t** %33, i64 %idxprom7.i
  %36 = load %struct.vithist_entry_t** %arrayidx9.i, align 8, !tbaa !0
  %and10.i = and i32 %te.073.i, 16383
  %idx.ext1166.i = zext i32 %and10.i to i64
  %add.ptr12.i = getelementptr inbounds %struct.vithist_entry_t* %36, i64 %idx.ext1166.i
  %37 = bitcast %struct.vithist_entry_t* %add.ptr12.i to i8*
  %38 = bitcast %struct.vithist_entry_t* %add.ptr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 36, i32 4, i1 false) #3, !tbaa.struct !5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i
  %score.i = getelementptr inbounds %struct.vithist_entry_t* %34, i64 %idx.ext65.i, i32 5
  %39 = load i32* %score.i, align 4, !tbaa !3
  %cmp13.i = icmp sgt i32 %39, %bs.070.i
  %.bs.0.i = select i1 %cmp13.i, i32 %39, i32 %bs.070.i
  %te.0.bv.0.i = select i1 %cmp13.i, i32 %te.073.i, i32 %bv.071.i
  %inc.i = add nsw i32 %te.073.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i
  %bs.2.i = phi i32 [ %.bs.0.i, %if.end.i ], [ %bs.070.i, %for.body.i ]
  %bv.2.i = phi i32 [ %te.0.bv.0.i, %if.end.i ], [ %bv.071.i, %for.body.i ]
  %te.1.i = phi i32 [ %inc.i, %if.end.i ], [ %te.073.i, %for.body.i ]
  %cmp.i = icmp slt i32 %i.072.i, %sub.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  %inc18.i = add nsw i32 %i.072.i, 1
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %while.end
  %te.0.lcssa.i = phi i32 [ %31, %while.end ], [ %te.1.i, %for.inc.i ]
  %bv.0.lcssa.i = phi i32 [ -1, %while.end ], [ %bv.2.i, %for.inc.i ]
  %bestvh.i = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 7
  %40 = load i32** %bestvh.i, align 8, !tbaa !0
  %arrayidx20.i = getelementptr inbounds i32* %40, i64 %idxprom
  store i32 %bv.0.lcssa.i, i32* %arrayidx20.i, align 4, !tbaa !3
  %41 = load i32* %n_entry, align 4, !tbaa !3
  %sub22.i = add nsw i32 %41, -1
  %shr23.i = ashr i32 %sub22.i, 14
  %sub24.i = add nsw i32 %te.0.lcssa.i, -1
  %shr25.i = ashr i32 %sub24.i, 14
  %cmp2767.i = icmp sgt i32 %shr23.i, %shr25.i
  br i1 %cmp2767.i, label %for.body28.lr.ph.i, label %vithist_frame_gc.exit

for.body28.lr.ph.i:                               ; preds = %for.end.i
  %entry30.i = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %42 = sext i32 %shr23.i to i64
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i, %for.body28.lr.ph.i
  %indvars.iv.i = phi i64 [ %42, %for.body28.lr.ph.i ], [ %indvars.iv.next.i, %for.body28.i ]
  %43 = load %struct.vithist_entry_t*** %entry30.i, align 8, !tbaa !0
  %arrayidx31.i = getelementptr inbounds %struct.vithist_entry_t** %43, i64 %indvars.iv.i
  %44 = load %struct.vithist_entry_t** %arrayidx31.i, align 8, !tbaa !0
  %45 = bitcast %struct.vithist_entry_t* %44 to i8*
  call void @ckd_free(i8* %45) #6
  %46 = load %struct.vithist_entry_t*** %entry30.i, align 8, !tbaa !0
  %arrayidx34.i = getelementptr inbounds %struct.vithist_entry_t** %46, i64 %indvars.iv.i
  store %struct.vithist_entry_t* null, %struct.vithist_entry_t** %arrayidx34.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %47 = trunc i64 %indvars.iv.next.i to i32
  %cmp27.i = icmp sgt i32 %47, %shr25.i
  br i1 %cmp27.i, label %for.body28.i, label %vithist_frame_gc.exit

vithist_frame_gc.exit:                            ; preds = %for.body28.i, %for.end.i
  store i32 %te.0.lcssa.i, i32* %n_entry, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @heap_new() #1

; Function Attrs: optsize
declare i32 @heap_insert(i8*, i8*, i32) #1

; Function Attrs: optsize
declare i32 @heap_pop(i8*, i8**, i32*) #1

; Function Attrs: optsize
declare i32 @heap_destroy(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @vithist_frame_windup(%struct.vithist_t* nocapture %vh, i32 %frm, %struct._IO_FILE* %fp, %struct.kbcore_t* nocapture %kbc) #0 {
entry:
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %0 = load i32* %n_frm, align 4, !tbaa !3
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %n_frm, align 4, !tbaa !3
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %1 = load i32* %n_entry, align 4, !tbaa !3
  %idxprom = sext i32 %inc to i64
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %2 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @vithist_dump(%struct.vithist_t* %vh, i32 %frm, %struct.kbcore_t* %kbc, %struct._IO_FILE* %fp) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @vithist_lmstate_reset(%struct.vithist_t* %vh) #7
  %3 = load i32* %n_frm, align 4, !tbaa !3
  %idxprom3 = sext i32 %3 to i64
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %4 = load i32** %bestscore, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %4, i64 %idxprom3
  store i32 -2147483648, i32* %arrayidx4, align 4, !tbaa !3
  %5 = load i32* %n_frm, align 4, !tbaa !3
  %idxprom6 = sext i32 %5 to i64
  %bestvh = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 7
  %6 = load i32** %bestvh, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32* %6, i64 %idxprom6
  store i32 -1, i32* %arrayidx7, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @vithist_dump(%struct.vithist_t* nocapture %vh, i32 %frm, %struct.kbcore_t* nocapture %kbc, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %dict1 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %0 = load %struct.dict_t** %dict1, align 8, !tbaa !0
  %lm2 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %1 = load %struct.lm_s** %lm2, align 8, !tbaa !0
  %cmp = icmp sgt i32 %frm, -1
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %add = add nsw i32 %frm, 1
  %idxprom = sext i32 %add to i64
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %2 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom3 = sext i32 %frm to i64
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %idxprom3
  %4 = load i32* %arrayidx5, align 4, !tbaa !3
  %sub = sub nsw i32 %3, %4
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i32 %frm, i32 %sub) #6
  %call9125 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0)) #6
  %phitmp = sext i32 %frm to i64
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %5 = load i32* %n_frm, align 4, !tbaa !3
  %sub6 = add nsw i32 %5, -1
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %6 = load i32* %n_entry, align 4, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str7, i64 0, i64 0), i32 %5, i32 %6) #6
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0)) #6
  %cmp10122 = icmp slt i32 %5, 1
  br i1 %cmp10122, label %for.end65, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.thread, %if.end
  %ef.0128 = phi i32 [ %frm, %if.end.thread ], [ %sub6, %if.end ]
  %sf.0127 = phi i64 [ %phitmp, %if.end.thread ], [ 0, %if.end ]
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %bestvh = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 7
  %frame_start17 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %entry27 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %word = getelementptr inbounds %struct.dict_t* %0, i64 0, i32 4
  %wordstr = getelementptr inbounds %struct.lm_s* %1, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.backedge ], [ %sf.0127, %for.body.lr.ph ]
  %7 = load i32** %bestscore, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %8 = load i32* %arrayidx12, align 4, !tbaa !3
  %9 = load i32** %bestvh, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx14, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv to i32
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0), i32 %11, i32 %8, i32 %10) #6
  %12 = load i32** %frame_start17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %13 = load i32* %arrayidx18, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx23117 = getelementptr inbounds i32* %12, i64 %indvars.iv.next
  %14 = load i32* %arrayidx23117, align 4, !tbaa !3
  %cmp24118 = icmp slt i32 %13, %14
  br i1 %cmp24118, label %for.body25, label %if.then60

for.body25:                                       ; preds = %for.body, %if.end53
  %j.0119 = phi i32 [ %inc, %if.end53 ], [ %13, %for.body ]
  %shr = ashr i32 %j.0119, 14
  %and = and i32 %j.0119, 16383
  %idxprom26 = sext i32 %shr to i64
  %15 = load %struct.vithist_entry_t*** %entry27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds %struct.vithist_entry_t** %15, i64 %idxprom26
  %16 = load %struct.vithist_entry_t** %arrayidx28, align 8, !tbaa !0
  %idx.ext116 = zext i32 %and to i64
  %valid = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 8
  %17 = load i32* %valid, align 4, !tbaa !3
  %tobool = icmp ne i32 %17, 0
  %cond = select i1 %tobool, i32 32, i32 42
  %sf29 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 1
  %18 = load i16* %sf29, align 2, !tbaa !4
  %conv = sext i16 %18 to i32
  %ef30 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 2
  %19 = load i16* %ef30, align 2, !tbaa !4
  %conv31 = sext i16 %19 to i32
  %score = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 5
  %20 = load i32* %score, align 4, !tbaa !3
  %ascr = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 3
  %21 = load i32* %ascr, align 4, !tbaa !3
  %lscr = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 4
  %22 = load i32* %lscr, align 4, !tbaa !3
  %pred = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 6
  %23 = load i32* %pred, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 7
  %24 = load i32* %type, align 4, !tbaa !3
  %wid = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 0
  %25 = load i32* %wid, align 4, !tbaa !3
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %word34 = getelementptr inbounds %struct.dictword_t* %26, i64 %idxprom32, i32 0
  %27 = load i8** %word34, align 8, !tbaa !0
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str18, i64 0, i64 0), i32 %cond, i32 %j.0119, i32 %conv, i32 %conv31, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i8* %27) #6
  %arrayidx37 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 9, i32 0, i32 0, i64 0
  %28 = load i16* %arrayidx37, align 2, !tbaa !4
  %idxprom38 = zext i16 %28 to i64
  %29 = load i8*** %wordstr, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i8** %29, i64 %idxprom38
  %30 = load i8** %arrayidx39, align 8, !tbaa !0
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* %30) #6
  %arrayidx44 = getelementptr inbounds %struct.vithist_entry_t* %16, i64 %idx.ext116, i32 9, i32 0, i32 0, i64 1
  %31 = load i16* %arrayidx44, align 2, !tbaa !4
  %cmp46 = icmp eq i16 %31, -1
  br i1 %cmp46, label %if.end53, label %if.then48

if.then48:                                        ; preds = %for.body25
  %idxprom49 = zext i16 %31 to i64
  %32 = load i8*** %wordstr, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8** %32, i64 %idxprom49
  %33 = load i8** %arrayidx51, align 8, !tbaa !0
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* %33) #6
  br label %if.end53

if.end53:                                         ; preds = %for.body25, %if.then48
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %inc = add nsw i32 %j.0119, 1
  %35 = load i32** %frame_start17, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i32* %35, i64 %indvars.iv.next
  %36 = load i32* %arrayidx23, align 4, !tbaa !3
  %cmp24 = icmp slt i32 %inc, %36
  br i1 %cmp24, label %for.body25, label %for.end

for.end:                                          ; preds = %if.end53
  %arrayidx57.phi.trans.insert = getelementptr inbounds i32* %35, i64 %indvars.iv
  %.pre = load i32* %arrayidx57.phi.trans.insert, align 4, !tbaa !3
  %cmp58 = icmp eq i32 %inc, %.pre
  br i1 %cmp58, label %if.then60, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.end, %if.then60
  %cmp10 = icmp slt i32 %11, %ef.0128
  br i1 %cmp10, label %for.body, label %for.end65

if.then60:                                        ; preds = %for.body, %for.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %for.cond.backedge

for.end65:                                        ; preds = %for.cond.backedge, %if.end
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %fp)
  %call67 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @vithist_lmstate_reset(%struct.vithist_t* nocapture %vh) #0 {
entry:
  %lwidlist = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 9
  %lgn.028 = load %struct.gnode_s** %lwidlist, align 8
  %tobool29 = icmp eq %struct.gnode_s* %lgn.028, null
  br i1 %tobool29, label %for.end11, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %lms2vh_root = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %lgn.030 = phi %struct.gnode_s* [ %lgn.028, %for.body.lr.ph ], [ %lgn.0, %for.end ]
  %int32 = bitcast %struct.gnode_s* %lgn.030 to i32*
  %0 = load i32* %int32, align 4, !tbaa !3
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.vh_lms2vh_t*** %lms2vh_root, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vh_lms2vh_t** %1, i64 %idxprom
  %2 = load %struct.vh_lms2vh_t** %arrayidx, align 8, !tbaa !0
  %children = getelementptr inbounds %struct.vh_lms2vh_t* %2, i64 0, i32 3
  %gn.025 = load %struct.gnode_s** %children, align 8
  %tobool226 = icmp eq %struct.gnode_s* %gn.025, null
  br i1 %tobool226, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %gn.027 = phi %struct.gnode_s* [ %gn.0, %for.body3 ], [ %gn.025, %for.body ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.027, i64 0, i32 0, i32 0
  %3 = load i8** %ptr, align 8, !tbaa !0
  tail call void @ckd_free(i8* %3) #6
  %next = getelementptr inbounds %struct.gnode_s* %gn.027, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool2 = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool2, label %for.cond1.for.end_crit_edge, label %for.body3

for.cond1.for.end_crit_edge:                      ; preds = %for.body3
  %.pre31 = load %struct.gnode_s** %children, align 8, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond1.for.end_crit_edge, %for.body
  %4 = phi %struct.gnode_s* [ %.pre31, %for.cond1.for.end_crit_edge ], [ null, %for.body ]
  tail call void @glist_free(%struct.gnode_s* %4) #6
  %5 = bitcast %struct.vh_lms2vh_t* %2 to i8*
  tail call void @ckd_free(i8* %5) #6
  %6 = load %struct.vh_lms2vh_t*** %lms2vh_root, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds %struct.vh_lms2vh_t** %6, i64 %idxprom
  store %struct.vh_lms2vh_t* null, %struct.vh_lms2vh_t** %arrayidx8, align 8, !tbaa !0
  %next10 = getelementptr inbounds %struct.gnode_s* %lgn.030, i64 0, i32 1
  %lgn.0 = load %struct.gnode_s** %next10, align 8
  %tobool = icmp eq %struct.gnode_s* %lgn.0, null
  br i1 %tobool, label %for.cond.for.end11_crit_edge, label %for.body

for.cond.for.end11_crit_edge:                     ; preds = %for.end
  %.pre = load %struct.gnode_s** %lwidlist, align 8, !tbaa !0
  br label %for.end11

for.end11:                                        ; preds = %for.cond.for.end11_crit_edge, %entry
  %7 = phi %struct.gnode_s* [ %.pre, %for.cond.for.end11_crit_edge ], [ null, %entry ]
  tail call void @glist_free(%struct.gnode_s* %7) #6
  store %struct.gnode_s* null, %struct.gnode_s** %lwidlist, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @vithist_utt_end(%struct.vithist_t* nocapture %vh, %struct.kbcore_t* nocapture %kbc) #0 {
entry:
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %lm8 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %dict9 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %entry14 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then30, %entry
  %0 = load i32* %n_frm, align 4, !tbaa !3
  %1 = sext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %tailrecurse
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %1, %tailrecurse ]
  %f.0.in = phi i32 [ %f.0, %for.body ], [ %0, %tailrecurse ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %f.0 = add nsw i32 %f.0.in, -1
  %2 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %3 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv.next
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds i32* %3, i64 %indvars.iv
  %5 = load i32* %arrayidx3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %cmp5 = icmp slt i32 %f.0.in, 1
  br i1 %cmp5, label %return, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %for.end
  %6 = load %struct.lm_s** %lm8, align 8, !tbaa !0
  %finishlwid = getelementptr inbounds %struct.lm_s* %6, i64 0, i32 6
  %7 = load i16* %finishlwid, align 2, !tbaa !4
  %8 = load %struct.dict_t** %dict9, align 8, !tbaa !0
  %finishwid = getelementptr inbounds %struct.dict_t* %8, i64 0, i32 12
  br label %for.body12

for.body12:                                       ; preds = %for.inc25, %for.body12.lr.ph
  %i.0135 = phi i32 [ %4, %for.body12.lr.ph ], [ %inc, %for.inc25 ]
  %bestve.0134 = phi %struct.vithist_entry_t* [ null, %for.body12.lr.ph ], [ %bestve.1, %for.inc25 ]
  %bestvh.0133 = phi i32 [ -1, %for.body12.lr.ph ], [ %bestvh.1, %for.inc25 ]
  %bestscore.0132 = phi i32 [ -2147483648, %for.body12.lr.ph ], [ %bestscore.1, %for.inc25 ]
  %shr = ashr i32 %i.0135, 14
  %and = and i32 %i.0135, 16383
  %idxprom13 = sext i32 %shr to i64
  %9 = load %struct.vithist_entry_t*** %entry14, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.vithist_entry_t** %9, i64 %idxprom13
  %10 = load %struct.vithist_entry_t** %arrayidx15, align 8, !tbaa !0
  %idx.ext126 = zext i32 %and to i64
  %score = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext126, i32 5
  %11 = load i32* %score, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext126, i32 9, i32 0, i32 0, i64 1
  %12 = load i16* %arrayidx16, align 2, !tbaa !4
  %arrayidx20 = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext126, i32 9, i32 0, i32 0, i64 0
  %13 = load i16* %arrayidx20, align 2, !tbaa !4
  %14 = load i32* %finishwid, align 4, !tbaa !3
  %call = tail call i32 @lm_tg_score(%struct.lm_s* %6, i16 zeroext %12, i16 zeroext %13, i16 zeroext %7, i32 %14) #6
  %add21 = add nsw i32 %call, %11
  %cmp22 = icmp slt i32 %bestscore.0132, %add21
  br i1 %cmp22, label %if.then23, label %for.inc25

if.then23:                                        ; preds = %for.body12
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext126
  br label %for.inc25

for.inc25:                                        ; preds = %for.body12, %if.then23
  %bestscore.1 = phi i32 [ %add21, %if.then23 ], [ %bestscore.0132, %for.body12 ]
  %bestvh.1 = phi i32 [ %i.0135, %if.then23 ], [ %bestvh.0133, %for.body12 ]
  %bestve.1 = phi %struct.vithist_entry_t* [ %add.ptr, %if.then23 ], [ %bestve.0134, %for.body12 ]
  %inc = add nsw i32 %i.0135, 1
  %exitcond = icmp eq i32 %inc, %5
  br i1 %exitcond, label %for.end26, label %for.body12

for.end26:                                        ; preds = %for.inc25
  %.pre = load i32* %n_frm, align 4, !tbaa !3
  %sub28 = add nsw i32 %.pre, -1
  %cmp29 = icmp eq i32 %f.0, %sub28
  br i1 %cmp29, label %if.end42, label %if.then30

if.then30:                                        ; preds = %for.end26
  store i32 %sub28, i32* %n_frm, align 4, !tbaa !3
  %silwid = getelementptr inbounds %struct.dict_t* %8, i64 0, i32 13
  %15 = load i32* %silwid, align 4, !tbaa !3
  %score34 = getelementptr inbounds %struct.vithist_entry_t* %bestve.1, i64 0, i32 5
  %16 = load i32* %score34, align 4, !tbaa !3
  tail call void @vithist_rescore(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc, i32 %15, i32 %sub28, i32 %16, i32 %bestvh.1, i32 -1) #7
  %17 = load i32* %n_frm, align 4, !tbaa !3
  %add36 = add nsw i32 %17, 1
  store i32 %add36, i32* %n_frm, align 4, !tbaa !3
  %18 = load i32* %n_entry, align 4, !tbaa !3
  %idxprom38 = sext i32 %add36 to i64
  %19 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i32* %19, i64 %idxprom38
  store i32 %18, i32* %arrayidx40, align 4, !tbaa !3
  br label %tailrecurse

if.end42:                                         ; preds = %for.end26
  %20 = load i32* %n_entry, align 4, !tbaa !3
  %call44 = tail call fastcc %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %vh) #7
  %finishwid45 = getelementptr inbounds %struct.dict_t* %8, i64 0, i32 12
  %21 = load i32* %finishwid45, align 4, !tbaa !3
  %wid = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 0
  store i32 %21, i32* %wid, align 4, !tbaa !3
  %ef = getelementptr inbounds %struct.vithist_entry_t* %bestve.1, i64 0, i32 2
  %22 = load i16* %ef, align 2, !tbaa !4
  %add50 = add i16 %22, 1
  %sf = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 1
  store i16 %add50, i16* %sf, align 2, !tbaa !4
  %23 = load i32* %n_frm, align 4, !tbaa !3
  %conv53 = trunc i32 %23 to i16
  %ef54 = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 2
  store i16 %conv53, i16* %ef54, align 2, !tbaa !4
  %ascr = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 3
  store i32 0, i32* %ascr, align 4, !tbaa !3
  %score55 = getelementptr inbounds %struct.vithist_entry_t* %bestve.1, i64 0, i32 5
  %24 = load i32* %score55, align 4, !tbaa !3
  %sub56 = sub nsw i32 %bestscore.1, %24
  %lscr = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 4
  store i32 %sub56, i32* %lscr, align 4, !tbaa !3
  %score57 = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 5
  store i32 %bestscore.1, i32* %score57, align 4, !tbaa !3
  %pred = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 6
  store i32 %bestvh.1, i32* %pred, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 7
  store i32 0, i32* %type, align 4, !tbaa !3
  %valid = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 8
  store i32 1, i32* %valid, align 4, !tbaa !3
  %arrayidx61 = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 9, i32 0, i32 0, i64 0
  store i16 %7, i16* %arrayidx61, align 2, !tbaa !4
  %arrayidx69 = getelementptr inbounds %struct.vithist_entry_t* %call44, i64 0, i32 9, i32 0, i32 0, i64 1
  store i16 %7, i16* %arrayidx69, align 2, !tbaa !4
  br label %return

return:                                           ; preds = %for.end, %for.cond, %if.end42
  %retval.0 = phi i32 [ %20, %if.end42 ], [ -1, %for.cond ], [ -1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @vithist_partialutt_end(%struct.vithist_t* nocapture %vh, %struct.kbcore_t* nocapture %kbc) #0 {
entry:
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %0 = load i32* %n_frm, align 4, !tbaa !3
  %frame_start = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 1
  %1 = sext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %1, %entry ]
  %f.0.in = phi i32 [ %f.0, %for.body ], [ %0, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %2 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %f.0 = add nsw i32 %f.0.in, -1
  %3 = load i32** %frame_start, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv.next
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds i32* %3, i64 %indvars.iv
  %5 = load i32* %arrayidx3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %cmp5 = icmp sgt i32 %f.0.in, 0
  %cmp10 = icmp eq i32 %f.0.in, %0
  %or.cond = and i1 %cmp5, %cmp10
  br i1 %or.cond, label %for.body17.lr.ph, label %return

for.body17.lr.ph:                                 ; preds = %for.end
  %lm13 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 4
  %6 = load %struct.lm_s** %lm13, align 8, !tbaa !0
  %finishlwid = getelementptr inbounds %struct.lm_s* %6, i64 0, i32 6
  %7 = load i16* %finishlwid, align 2, !tbaa !4
  %dict14 = getelementptr inbounds %struct.kbcore_t* %kbc, i64 0, i32 2
  %8 = load %struct.dict_t** %dict14, align 8, !tbaa !0
  %entry19 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %finishwid = getelementptr inbounds %struct.dict_t* %8, i64 0, i32 12
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %i.059 = phi i32 [ %4, %for.body17.lr.ph ], [ %inc, %for.body17 ]
  %bestvh.058 = phi i32 [ -1, %for.body17.lr.ph ], [ %i.0.bestvh.0, %for.body17 ]
  %bestscore.057 = phi i32 [ -2147483648, %for.body17.lr.ph ], [ %add26.bestscore.0, %for.body17 ]
  %shr = ashr i32 %i.059, 14
  %and = and i32 %i.059, 16383
  %idxprom18 = sext i32 %shr to i64
  %9 = load %struct.vithist_entry_t*** %entry19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds %struct.vithist_entry_t** %9, i64 %idxprom18
  %10 = load %struct.vithist_entry_t** %arrayidx20, align 8, !tbaa !0
  %idx.ext54 = zext i32 %and to i64
  %score = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext54, i32 5
  %11 = load i32* %score, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext54, i32 9, i32 0, i32 0, i64 1
  %12 = load i16* %arrayidx21, align 2, !tbaa !4
  %arrayidx25 = getelementptr inbounds %struct.vithist_entry_t* %10, i64 %idx.ext54, i32 9, i32 0, i32 0, i64 0
  %13 = load i16* %arrayidx25, align 2, !tbaa !4
  %14 = load i32* %finishwid, align 4, !tbaa !3
  %call = tail call i32 @lm_tg_score(%struct.lm_s* %6, i16 zeroext %12, i16 zeroext %13, i16 zeroext %7, i32 %14) #6
  %add26 = add nsw i32 %call, %11
  %cmp27 = icmp slt i32 %bestscore.057, %add26
  %add26.bestscore.0 = select i1 %cmp27, i32 %add26, i32 %bestscore.057
  %i.0.bestvh.0 = select i1 %cmp27, i32 %i.059, i32 %bestvh.058
  %inc = add nsw i32 %i.059, 1
  %exitcond = icmp eq i32 %inc, %5
  br i1 %exitcond, label %return, label %for.body17

return:                                           ; preds = %for.end, %for.cond, %for.body17
  %retval.0 = phi i32 [ -1, %for.end ], [ %i.0.bestvh.0, %for.body17 ], [ -1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @vithist_utt_reset(%struct.vithist_t* nocapture %vh) #0 {
entry:
  tail call fastcc void @vithist_lmstate_reset(%struct.vithist_t* %vh) #7
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %0 = load i32* %n_entry, align 4, !tbaa !3
  %sub = add nsw i32 %0, -1
  %shr = ashr i32 %sub, 14
  %cmp17 = icmp sgt i32 %shr, -1
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %entry1 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  %1 = sext i32 %shr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load %struct.vithist_entry_t*** %entry1, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %2, i64 %indvars.iv
  %3 = load %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %4 = bitcast %struct.vithist_entry_t* %3 to i8*
  tail call void @ckd_free(i8* %4) #6
  %5 = load %struct.vithist_entry_t*** %entry1, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.vithist_entry_t** %5, i64 %indvars.iv
  store %struct.vithist_entry_t* null, %struct.vithist_entry_t** %arrayidx4, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %6 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  store i32 0, i32* %n_entry, align 4, !tbaa !3
  %bestscore = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 6
  %7 = load i32** %bestscore, align 8, !tbaa !0
  store i32 -2147483648, i32* %7, align 4, !tbaa !3
  %bestvh = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 7
  %8 = load i32** %bestvh, align 8, !tbaa !0
  store i32 -1, i32* %8, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define %struct.gnode_s* @vithist_backtrace(%struct.vithist_t* nocapture %vh, i32 %id) #0 {
entry:
  %cmp28 = icmp sgt i32 %id, 0
  br i1 %cmp28, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %entry1 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %id.addr.030 = phi i32 [ %id, %while.body.lr.ph ], [ %14, %while.body ]
  %hyp.029 = phi %struct.gnode_s* [ null, %while.body.lr.ph ], [ %call9, %while.body ]
  %shr = ashr i32 %id.addr.030, 14
  %and = and i32 %id.addr.030, 16383
  %idxprom = sext i32 %shr to i64
  %0 = load %struct.vithist_entry_t*** %entry1, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %0, i64 %idxprom
  %1 = load %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %idx.ext27 = zext i32 %and to i64
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 28, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 784) #6
  %wid = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 0
  %2 = load i32* %wid, align 4, !tbaa !3
  %id2 = bitcast i8* %call to i32*
  store i32 %2, i32* %id2, align 4, !tbaa !3
  %sf = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 1
  %3 = load i16* %sf, align 2, !tbaa !4
  %conv = sext i16 %3 to i32
  %sf3 = getelementptr inbounds i8* %call, i64 8
  %4 = bitcast i8* %sf3 to i32*
  store i32 %conv, i32* %4, align 4, !tbaa !3
  %ef = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 2
  %5 = load i16* %ef, align 2, !tbaa !4
  %conv4 = sext i16 %5 to i32
  %ef5 = getelementptr inbounds i8* %call, i64 12
  %6 = bitcast i8* %ef5 to i32*
  store i32 %conv4, i32* %6, align 4, !tbaa !3
  %ascr = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 3
  %7 = load i32* %ascr, align 4, !tbaa !3
  %ascr6 = getelementptr inbounds i8* %call, i64 16
  %8 = bitcast i8* %ascr6 to i32*
  store i32 %7, i32* %8, align 4, !tbaa !3
  %lscr = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 4
  %9 = load i32* %lscr, align 4, !tbaa !3
  %lscr7 = getelementptr inbounds i8* %call, i64 20
  %10 = bitcast i8* %lscr7 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 7
  %11 = load i32* %type, align 4, !tbaa !3
  %type8 = getelementptr inbounds i8* %call, i64 24
  %12 = bitcast i8* %type8 to i32*
  store i32 %11, i32* %12, align 4, !tbaa !3
  %vhid = getelementptr inbounds i8* %call, i64 4
  %13 = bitcast i8* %vhid to i32*
  store i32 %id.addr.030, i32* %13, align 4, !tbaa !3
  %call9 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %hyp.029, i8* %call) #6
  %pred = getelementptr inbounds %struct.vithist_entry_t* %1, i64 %idx.ext27, i32 6
  %14 = load i32* %pred, align 4, !tbaa !3
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %hyp.0.lcssa = phi %struct.gnode_s* [ null, %entry ], [ %call9, %while.body ]
  ret %struct.gnode_s* %hyp.0.lcssa
}

; Function Attrs: optsize
declare %struct.gnode_s* @glist_add_ptr(%struct.gnode_s*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @vithist_dag_write(%struct.vithist_t* nocapture %vh, %struct.gnode_s* %hyp, %struct.dict_t* nocapture %dict, i32 %oldfmt, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %n_frm = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 3
  %0 = load i32* %n_frm, align 4, !tbaa !3
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 823) #6
  %1 = bitcast i8* %call to %struct.gnode_s**
  %n_entry = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 2
  %2 = load i32* %n_entry, align 4, !tbaa !3
  %cmp483 = icmp sgt i32 %2, 0
  br i1 %cmp483, label %for.body.lr.ph, label %for.cond79.preheader

for.body.lr.ph:                                   ; preds = %entry
  %entry2 = getelementptr inbounds %struct.vithist_t* %vh, i64 0, i32 0
  br label %for.body

for.cond79.preheader:                             ; preds = %for.inc76, %entry
  %tobool80470 = icmp eq %struct.gnode_s* %hyp, null
  br i1 %tobool80470, label %for.end103, label %for.body81

for.body:                                         ; preds = %for.inc76, %for.body.lr.ph
  %i.0486 = phi i32 [ 0, %for.body.lr.ph ], [ %inc77, %for.inc76 ]
  %shr = ashr i32 %i.0486, 14
  %idxprom = sext i32 %shr to i64
  %3 = load %struct.vithist_entry_t*** %entry2, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t** %3, i64 %idxprom
  %4 = load %struct.vithist_entry_t** %arrayidx, align 8, !tbaa !0
  %and = and i32 %i.0486, 16383
  %idx.ext432 = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432
  %valid = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432, i32 8
  %5 = load i32* %valid, align 4, !tbaa !3
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %for.inc76, label %if.end

if.end:                                           ; preds = %for.body
  %sf3 = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432, i32 1
  %6 = load i16* %sf3, align 2, !tbaa !4
  %conv4 = sext i16 %6 to i32
  %cmp5 = icmp slt i16 %6, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %add10 = add nsw i32 %conv4, 1
  %ef11 = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432, i32 2
  %7 = load i16* %ef11, align 2, !tbaa !4
  %cmp13 = icmp slt i16 %7, 0
  %conv12 = sext i16 %7 to i32
  %.conv12 = select i1 %cmp13, i32 0, i32 %conv12
  br label %if.end21

if.else:                                          ; preds = %if.end
  %ef19 = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432, i32 2
  %8 = load i16* %ef19, align 2, !tbaa !4
  %conv20 = sext i16 %8 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then7
  %sf.0 = phi i32 [ %add10, %if.then7 ], [ %conv4, %if.else ]
  %ef.0 = phi i32 [ %.conv12, %if.then7 ], [ %conv20, %if.else ]
  %idxprom22 = sext i32 %sf.0 to i64
  %arrayidx23 = getelementptr inbounds %struct.gnode_s** %1, i64 %idxprom22
  %gn.0472 = load %struct.gnode_s** %arrayidx23, align 8
  %tobool25473 = icmp eq %struct.gnode_s* %gn.0472, null
  %wid35.pre = getelementptr inbounds %struct.vithist_entry_t* %add.ptr, i64 0, i32 0
  br i1 %tobool25473, label %if.then33, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %if.end21
  %9 = load i32* %wid35.pre, align 4, !tbaa !3
  br label %for.body26

for.cond24:                                       ; preds = %for.body26
  %next = getelementptr inbounds %struct.gnode_s* %gn.0474, i64 0, i32 1
  %gn.0 = load %struct.gnode_s** %next, align 8
  %tobool25 = icmp eq %struct.gnode_s* %gn.0, null
  br i1 %tobool25, label %if.then33, label %for.body26

for.body26:                                       ; preds = %for.body26.lr.ph, %for.cond24
  %gn.0474 = phi %struct.gnode_s* [ %gn.0472, %for.body26.lr.ph ], [ %gn.0, %for.cond24 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.0474, i64 0, i32 0, i32 0
  %10 = load i8** %ptr, align 8, !tbaa !0
  %wid = bitcast i8* %10 to i32*
  %11 = load i32* %wid, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %11, %9
  br i1 %cmp28, label %if.else42, label %for.cond24

if.then33:                                        ; preds = %if.end21, %for.cond24
  %call34 = tail call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 854) #6
  %12 = load i32* %wid35.pre, align 4, !tbaa !3
  %wid36 = bitcast i8* %call34 to i32*
  store i32 %12, i32* %wid36, align 4, !tbaa !3
  %fef = getelementptr inbounds i8* %call34, i64 4
  %13 = bitcast i8* %fef to i32*
  store i32 %ef.0, i32* %13, align 4, !tbaa !3
  %lef = getelementptr inbounds i8* %call34, i64 8
  %14 = bitcast i8* %lef to i32*
  store i32 %ef.0, i32* %14, align 4, !tbaa !3
  %seqid = getelementptr inbounds i8* %call34, i64 12
  %15 = bitcast i8* %seqid to i32*
  store i32 -1, i32* %15, align 4, !tbaa !3
  %velist = getelementptr inbounds i8* %call34, i64 16
  %16 = bitcast i8* %velist to %struct.gnode_s**
  store %struct.gnode_s* null, %struct.gnode_s** %16, align 8, !tbaa !0
  %17 = load %struct.gnode_s** %arrayidx23, align 8, !tbaa !0
  %call39 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %17, i8* %call34) #6
  store %struct.gnode_s* %call39, %struct.gnode_s** %arrayidx23, align 8, !tbaa !0
  br label %if.end44

if.else42:                                        ; preds = %for.body26
  %lef43 = getelementptr inbounds i8* %10, i64 8
  %18 = bitcast i8* %lef43 to i32*
  store i32 %ef.0, i32* %18, align 4, !tbaa !3
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then33
  %dn.3.in = phi i8* [ %10, %if.else42 ], [ %call34, %if.then33 ]
  %velist45 = getelementptr inbounds i8* %dn.3.in, i64 16
  %19 = bitcast i8* %velist45 to %struct.gnode_s**
  %gn.1479 = load %struct.gnode_s** %19, align 8
  %tobool47480 = icmp eq %struct.gnode_s* %gn.1479, null
  br i1 %tobool47480, label %if.else71, label %for.body48.lr.ph

for.body48.lr.ph:                                 ; preds = %if.end44
  %ef53 = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432, i32 2
  %20 = load i16* %ef53, align 2, !tbaa !4
  br label %for.body48

for.cond46:                                       ; preds = %for.body48
  %next60 = getelementptr inbounds %struct.gnode_s* %gn.1481, i64 0, i32 1
  %gn.1 = load %struct.gnode_s** %next60, align 8
  %tobool47 = icmp eq %struct.gnode_s* %gn.1, null
  br i1 %tobool47, label %if.else71, label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.cond46
  %gn.1481 = phi %struct.gnode_s* [ %gn.1479, %for.body48.lr.ph ], [ %gn.1, %for.cond46 ]
  %ptr50 = getelementptr inbounds %struct.gnode_s* %gn.1481, i64 0, i32 0, i32 0
  %21 = load i8** %ptr50, align 8, !tbaa !0
  %ef51 = getelementptr inbounds i8* %21, i64 6
  %22 = bitcast i8* %ef51 to i16*
  %23 = load i16* %22, align 2, !tbaa !4
  %cmp55 = icmp eq i16 %23, %20
  br i1 %cmp55, label %if.then63, label %for.cond46

if.then63:                                        ; preds = %for.body48
  %score = getelementptr inbounds %struct.vithist_entry_t* %4, i64 %idx.ext432, i32 5
  %24 = load i32* %score, align 4, !tbaa !3
  %score64 = getelementptr inbounds i8* %21, i64 16
  %25 = bitcast i8* %score64 to i32*
  %26 = load i32* %25, align 4, !tbaa !3
  %cmp65 = icmp sgt i32 %24, %26
  br i1 %cmp65, label %if.then67, label %for.inc76

if.then67:                                        ; preds = %if.then63
  %27 = bitcast %struct.vithist_entry_t* %add.ptr to i8*
  store i8* %27, i8** %ptr50, align 8, !tbaa !0
  br label %for.inc76

if.else71:                                        ; preds = %for.cond46, %if.end44
  %28 = bitcast %struct.vithist_entry_t* %add.ptr to i8*
  %call73 = tail call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %gn.1479, i8* %28) #6
  store %struct.gnode_s* %call73, %struct.gnode_s** %19, align 8, !tbaa !0
  br label %for.inc76

for.inc76:                                        ; preds = %if.then63, %for.body, %if.else71, %if.then67
  %inc77 = add nsw i32 %i.0486, 1
  %29 = load i32* %n_entry, align 4, !tbaa !3
  %cmp = icmp slt i32 %inc77, %29
  br i1 %cmp, label %for.body, label %for.cond79.preheader

for.body81:                                       ; preds = %for.cond79.preheader, %for.inc101
  %gn.2471 = phi %struct.gnode_s* [ %37, %for.inc101 ], [ %hyp, %for.cond79.preheader ]
  %ptr83 = getelementptr inbounds %struct.gnode_s* %gn.2471, i64 0, i32 0, i32 0
  %30 = load i8** %ptr83, align 8, !tbaa !0
  %sf84 = getelementptr inbounds i8* %30, i64 8
  %31 = bitcast i8* %sf84 to i32*
  %32 = load i32* %31, align 4, !tbaa !3
  %idxprom85 = sext i32 %32 to i64
  %arrayidx86 = getelementptr inbounds %struct.gnode_s** %1, i64 %idxprom85
  %gn2.0467 = load %struct.gnode_s** %arrayidx86, align 8
  %tobool88468 = icmp eq %struct.gnode_s* %gn2.0467, null
  br i1 %tobool88468, label %for.inc101, label %for.body89.lr.ph

for.body89.lr.ph:                                 ; preds = %for.body81
  %id = bitcast i8* %30 to i32*
  br label %for.body89

for.body89:                                       ; preds = %for.inc98, %for.body89.lr.ph
  %gn2.0469 = phi %struct.gnode_s* [ %gn2.0467, %for.body89.lr.ph ], [ %gn2.0, %for.inc98 ]
  %ptr91 = getelementptr inbounds %struct.gnode_s* %gn2.0469, i64 0, i32 0, i32 0
  %33 = load i8** %ptr91, align 8, !tbaa !0
  %34 = load i32* %id, align 4, !tbaa !3
  %wid92 = bitcast i8* %33 to i32*
  %35 = load i32* %wid92, align 4, !tbaa !3
  %cmp93 = icmp eq i32 %34, %35
  br i1 %cmp93, label %if.then95, label %for.inc98

if.then95:                                        ; preds = %for.body89
  %seqid96 = getelementptr inbounds i8* %33, i64 12
  %36 = bitcast i8* %seqid96 to i32*
  store i32 0, i32* %36, align 4, !tbaa !3
  br label %for.inc98

for.inc98:                                        ; preds = %for.body89, %if.then95
  %next99 = getelementptr inbounds %struct.gnode_s* %gn2.0469, i64 0, i32 1
  %gn2.0 = load %struct.gnode_s** %next99, align 8
  %tobool88 = icmp eq %struct.gnode_s* %gn2.0, null
  br i1 %tobool88, label %for.inc101, label %for.body89

for.inc101:                                       ; preds = %for.inc98, %for.body81
  %next102 = getelementptr inbounds %struct.gnode_s* %gn.2471, i64 0, i32 1
  %37 = load %struct.gnode_s** %next102, align 8, !tbaa !0
  %tobool80 = icmp eq %struct.gnode_s* %37, null
  br i1 %tobool80, label %for.end103, label %for.body81

for.end103:                                       ; preds = %for.inc101, %for.cond79.preheader
  %38 = load %struct.gnode_s** %1, align 8, !tbaa !0
  %ptr106 = getelementptr inbounds %struct.gnode_s* %38, i64 0, i32 0, i32 0
  %39 = load i8** %ptr106, align 8, !tbaa !0
  %seqid107 = getelementptr inbounds i8* %39, i64 12
  %40 = bitcast i8* %seqid107 to i32*
  store i32 0, i32* %40, align 4, !tbaa !3
  %41 = load i32* %n_frm, align 4, !tbaa !3
  %idxprom109 = sext i32 %41 to i64
  %arrayidx110 = getelementptr inbounds %struct.gnode_s** %1, i64 %idxprom109
  %42 = load %struct.gnode_s** %arrayidx110, align 8, !tbaa !0
  %ptr112 = getelementptr inbounds %struct.gnode_s* %42, i64 0, i32 0, i32 0
  %43 = load i8** %ptr112, align 8, !tbaa !0
  %seqid113 = getelementptr inbounds i8* %43, i64 12
  %44 = bitcast i8* %seqid113 to i32*
  store i32 0, i32* %44, align 4, !tbaa !3
  %45 = load i32* %n_frm, align 4, !tbaa !3
  %cmp116463 = icmp sgt i32 %45, -1
  br i1 %cmp116463, label %for.body118.lr.ph, label %for.end143

for.body118.lr.ph:                                ; preds = %for.end103
  %46 = sext i32 %45 to i64
  br label %for.body118

for.body118:                                      ; preds = %for.body118.lr.ph, %for.inc142
  %indvars.iv491 = phi i64 [ %46, %for.body118.lr.ph ], [ %indvars.iv.next492, %for.inc142 ]
  %i.1465 = phi i32 [ 0, %for.body118.lr.ph ], [ %i.2.lcssa, %for.inc142 ]
  %arrayidx120 = getelementptr inbounds %struct.gnode_s** %1, i64 %indvars.iv491
  %gn.3459 = load %struct.gnode_s** %arrayidx120, align 8
  %tobool122460 = icmp eq %struct.gnode_s* %gn.3459, null
  br i1 %tobool122460, label %for.inc142, label %for.body123

for.body123:                                      ; preds = %for.body118, %for.inc139
  %gn.3462 = phi %struct.gnode_s* [ %gn.3, %for.inc139 ], [ %gn.3459, %for.body118 ]
  %i.2461 = phi i32 [ %i.3, %for.inc139 ], [ %i.1465, %for.body118 ]
  %ptr125 = getelementptr inbounds %struct.gnode_s* %gn.3462, i64 0, i32 0, i32 0
  %47 = load i8** %ptr125, align 8, !tbaa !0
  %lef126 = getelementptr inbounds i8* %47, i64 8
  %48 = bitcast i8* %lef126 to i32*
  %49 = load i32* %48, align 4, !tbaa !3
  %fef127 = getelementptr inbounds i8* %47, i64 4
  %50 = bitcast i8* %fef127 to i32*
  %51 = load i32* %50, align 4, !tbaa !3
  %cmp128 = icmp sgt i32 %49, %51
  %seqid135.pre = getelementptr inbounds i8* %47, i64 12
  %.pre499 = bitcast i8* %seqid135.pre to i32*
  br i1 %cmp128, label %if.then133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body123
  %52 = load i32* %.pre499, align 4, !tbaa !3
  %cmp131 = icmp sgt i32 %52, -1
  br i1 %cmp131, label %if.then133, label %if.else136

if.then133:                                       ; preds = %for.body123, %lor.lhs.false
  %inc134 = add nsw i32 %i.2461, 1
  br label %for.inc139

if.else136:                                       ; preds = %lor.lhs.false
  br label %for.inc139

for.inc139:                                       ; preds = %if.then133, %if.else136
  %storemerge = phi i32 [ %i.2461, %if.then133 ], [ -1, %if.else136 ]
  %i.3 = phi i32 [ %inc134, %if.then133 ], [ %i.2461, %if.else136 ]
  store i32 %storemerge, i32* %.pre499, align 4, !tbaa !3
  %next140 = getelementptr inbounds %struct.gnode_s* %gn.3462, i64 0, i32 1
  %gn.3 = load %struct.gnode_s** %next140, align 8
  %tobool122 = icmp eq %struct.gnode_s* %gn.3, null
  br i1 %tobool122, label %for.inc142, label %for.body123

for.inc142:                                       ; preds = %for.inc139, %for.body118
  %i.2.lcssa = phi i32 [ %i.1465, %for.body118 ], [ %i.3, %for.inc139 ]
  %indvars.iv.next492 = add i64 %indvars.iv491, -1
  %53 = trunc i64 %indvars.iv491 to i32
  %cmp116 = icmp sgt i32 %53, 0
  br i1 %cmp116, label %for.body118, label %for.end143

for.end143:                                       ; preds = %for.inc142, %for.end103
  %i.1.lcssa = phi i32 [ 0, %for.end103 ], [ %i.2.lcssa, %for.inc142 ]
  %call144 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([64 x i8]* @.str24, i64 0, i64 0), i32 %i.1.lcssa) #6
  %54 = load i32* %n_frm, align 4, !tbaa !3
  %cmp147457 = icmp sgt i32 %54, -1
  br i1 %cmp147457, label %for.body149.lr.ph, label %for.end175

for.body149.lr.ph:                                ; preds = %for.end143
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %55 = sext i32 %54 to i64
  br label %for.body149

for.body149:                                      ; preds = %for.body149.lr.ph, %for.inc173
  %indvars.iv489 = phi i64 [ %55, %for.body149.lr.ph ], [ %indvars.iv.next490, %for.inc173 ]
  %arrayidx151 = getelementptr inbounds %struct.gnode_s** %1, i64 %indvars.iv489
  %gn.4454 = load %struct.gnode_s** %arrayidx151, align 8
  %tobool153455 = icmp eq %struct.gnode_s* %gn.4454, null
  br i1 %tobool153455, label %for.inc173, label %for.body154

for.body154:                                      ; preds = %for.body149, %for.inc170
  %gn.4456 = phi %struct.gnode_s* [ %gn.4, %for.inc170 ], [ %gn.4454, %for.body149 ]
  %ptr156 = getelementptr inbounds %struct.gnode_s* %gn.4456, i64 0, i32 0, i32 0
  %56 = load i8** %ptr156, align 8, !tbaa !0
  %seqid157 = getelementptr inbounds i8* %56, i64 12
  %57 = bitcast i8* %seqid157 to i32*
  %58 = load i32* %57, align 4, !tbaa !3
  %cmp158 = icmp sgt i32 %58, -1
  br i1 %cmp158, label %if.then160, label %for.inc170

if.then160:                                       ; preds = %for.body154
  %wid162 = bitcast i8* %56 to i32*
  %59 = load i32* %wid162, align 4, !tbaa !3
  %idxprom163 = sext i32 %59 to i64
  %60 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %word165 = getelementptr inbounds %struct.dictword_t* %60, i64 %idxprom163, i32 0
  %61 = load i8** %word165, align 8, !tbaa !0
  %fef166 = getelementptr inbounds i8* %56, i64 4
  %62 = bitcast i8* %fef166 to i32*
  %63 = load i32* %62, align 4, !tbaa !3
  %lef167 = getelementptr inbounds i8* %56, i64 8
  %64 = bitcast i8* %lef167 to i32*
  %65 = load i32* %64, align 4, !tbaa !3
  %66 = trunc i64 %indvars.iv489 to i32
  %call168 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i32 %58, i8* %61, i32 %66, i32 %63, i32 %65) #6
  br label %for.inc170

for.inc170:                                       ; preds = %for.body154, %if.then160
  %next171 = getelementptr inbounds %struct.gnode_s* %gn.4456, i64 0, i32 1
  %gn.4 = load %struct.gnode_s** %next171, align 8
  %tobool153 = icmp eq %struct.gnode_s* %gn.4, null
  br i1 %tobool153, label %for.inc173, label %for.body154

for.inc173:                                       ; preds = %for.inc170, %for.body149
  %indvars.iv.next490 = add i64 %indvars.iv489, -1
  %67 = trunc i64 %indvars.iv489 to i32
  %cmp147 = icmp sgt i32 %67, 0
  br i1 %cmp147, label %for.body149, label %for.end175

for.end175:                                       ; preds = %for.inc173, %for.end143
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str26, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %sub = add nsw i32 %i.1.lcssa, -1
  %call177 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), i32 %sub, i32 0) #6
  %69 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str26, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp)
  %71 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str26, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %tobool181 = icmp ne i32 %oldfmt, 0
  br i1 %tobool181, label %if.then182, label %if.else184

if.then182:                                       ; preds = %for.end175
  %72 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str29, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %fp)
  br label %if.end186

if.else184:                                       ; preds = %for.end175
  %73 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str30, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp)
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  %74 = load i32* %n_frm, align 4, !tbaa !3
  %cmp190452 = icmp sgt i32 %74, 0
  br i1 %cmp190452, label %for.body192.lr.ph, label %for.end271

for.body192.lr.ph:                                ; preds = %if.end186
  %75 = sext i32 %74 to i64
  br label %for.body192

for.cond189.loopexit:                             ; preds = %for.inc266, %for.body192
  %76 = trunc i64 %indvars.iv.next488 to i32
  %cmp190 = icmp sgt i32 %76, 0
  br i1 %cmp190, label %for.body192, label %for.end271

for.body192:                                      ; preds = %for.body192.lr.ph, %for.cond189.loopexit
  %indvars.iv487 = phi i64 [ %75, %for.body192.lr.ph ], [ %indvars.iv.next488, %for.cond189.loopexit ]
  %indvars.iv.next488 = add i64 %indvars.iv487, -1
  %arrayidx194 = getelementptr inbounds %struct.gnode_s** %1, i64 %indvars.iv.next488
  %gn.5448 = load %struct.gnode_s** %arrayidx194, align 8
  %tobool196449 = icmp eq %struct.gnode_s* %gn.5448, null
  br i1 %tobool196449, label %for.cond189.loopexit, label %for.body197

for.body197:                                      ; preds = %for.body192, %for.inc266
  %gn.5450 = phi %struct.gnode_s* [ %gn.5, %for.inc266 ], [ %gn.5448, %for.body192 ]
  %ptr199 = getelementptr inbounds %struct.gnode_s* %gn.5450, i64 0, i32 0, i32 0
  %77 = load i8** %ptr199, align 8, !tbaa !0
  %seqid200 = getelementptr inbounds i8* %77, i64 12
  %78 = bitcast i8* %seqid200 to i32*
  %79 = load i32* %78, align 4, !tbaa !3
  %cmp201 = icmp slt i32 %79, 0
  br i1 %cmp201, label %for.inc266, label %if.end204

if.end204:                                        ; preds = %for.body197
  %velist205 = getelementptr inbounds i8* %77, i64 16
  %80 = bitcast i8* %velist205 to %struct.gnode_s**
  %gn2.1445 = load %struct.gnode_s** %80, align 8
  %tobool207446 = icmp eq %struct.gnode_s* %gn2.1445, null
  br i1 %tobool207446, label %for.inc266, label %for.body208

for.body208:                                      ; preds = %if.end204, %for.inc263
  %gn2.1447 = phi %struct.gnode_s* [ %gn2.1, %for.inc263 ], [ %gn2.1445, %if.end204 ]
  %ptr210 = getelementptr inbounds %struct.gnode_s* %gn2.1447, i64 0, i32 0, i32 0
  %81 = load i8** %ptr210, align 8, !tbaa !0
  %ef211 = getelementptr inbounds i8* %81, i64 6
  %82 = bitcast i8* %ef211 to i16*
  %83 = load i16* %82, align 2, !tbaa !4
  %cmp213 = icmp slt i16 %83, 0
  br i1 %cmp213, label %cond.end220, label %cond.false216

cond.false216:                                    ; preds = %for.body208
  %conv212 = sext i16 %83 to i32
  %add219 = add nsw i32 %conv212, 1
  br label %cond.end220

cond.end220:                                      ; preds = %for.body208, %cond.false216
  %cond221 = phi i32 [ %add219, %cond.false216 ], [ 1, %for.body208 ]
  %idxprom224 = sext i32 %cond221 to i64
  %arrayidx225 = getelementptr inbounds %struct.gnode_s** %1, i64 %idxprom224
  %84 = load %struct.gnode_s** %arrayidx225, align 8, !tbaa !0
  %tobool227443 = icmp eq %struct.gnode_s* %84, null
  br i1 %tobool181, label %for.cond226.preheader, label %for.cond245.preheader

for.cond226.preheader:                            ; preds = %cond.end220
  br i1 %tobool227443, label %for.inc263, label %for.body228.lr.ph

for.body228.lr.ph:                                ; preds = %for.cond226.preheader
  %ascr = getelementptr inbounds i8* %81, i64 8
  %85 = bitcast i8* %ascr to i32*
  br label %for.body228

for.cond245.preheader:                            ; preds = %cond.end220
  br i1 %tobool227443, label %for.inc263, label %for.body247

for.body228:                                      ; preds = %for.body228.lr.ph, %for.inc239
  %gn3.0444 = phi %struct.gnode_s* [ %84, %for.body228.lr.ph ], [ %91, %for.inc239 ]
  %ptr230 = getelementptr inbounds %struct.gnode_s* %gn3.0444, i64 0, i32 0, i32 0
  %86 = load i8** %ptr230, align 8, !tbaa !0
  %seqid231 = getelementptr inbounds i8* %86, i64 12
  %87 = bitcast i8* %seqid231 to i32*
  %88 = load i32* %87, align 4, !tbaa !3
  %cmp232 = icmp sgt i32 %88, -1
  br i1 %cmp232, label %if.then234, label %for.inc239

if.then234:                                       ; preds = %for.body228
  %89 = load i32* %78, align 4, !tbaa !3
  %90 = load i32* %85, align 4, !tbaa !3
  %call237 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str31, i64 0, i64 0), i32 %89, i32 %88, i32 %90) #6
  br label %for.inc239

for.inc239:                                       ; preds = %for.body228, %if.then234
  %next240 = getelementptr inbounds %struct.gnode_s* %gn3.0444, i64 0, i32 1
  %91 = load %struct.gnode_s** %next240, align 8, !tbaa !0
  %tobool227 = icmp eq %struct.gnode_s* %91, null
  br i1 %tobool227, label %for.inc263, label %for.body228

for.body247:                                      ; preds = %for.cond245.preheader, %for.inc259
  %gn3.1441 = phi %struct.gnode_s* [ %98, %for.inc259 ], [ %84, %for.cond245.preheader ]
  %ptr249 = getelementptr inbounds %struct.gnode_s* %gn3.1441, i64 0, i32 0, i32 0
  %92 = load i8** %ptr249, align 8, !tbaa !0
  %seqid250 = getelementptr inbounds i8* %92, i64 12
  %93 = bitcast i8* %seqid250 to i32*
  %94 = load i32* %93, align 4, !tbaa !3
  %cmp251 = icmp sgt i32 %94, -1
  br i1 %cmp251, label %if.then253, label %for.inc259

if.then253:                                       ; preds = %for.body247
  %95 = load i32* %78, align 4, !tbaa !3
  %sub255 = add nsw i32 %cond221, -1
  %ascr256 = getelementptr inbounds i8* %81, i64 8
  %96 = bitcast i8* %ascr256 to i32*
  %97 = load i32* %96, align 4, !tbaa !3
  %call257 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str31, i64 0, i64 0), i32 %95, i32 %sub255, i32 %97) #6
  br label %for.inc263

for.inc259:                                       ; preds = %for.body247
  %next260 = getelementptr inbounds %struct.gnode_s* %gn3.1441, i64 0, i32 1
  %98 = load %struct.gnode_s** %next260, align 8, !tbaa !0
  %tobool246 = icmp eq %struct.gnode_s* %98, null
  br i1 %tobool246, label %for.inc263, label %for.body247

for.inc263:                                       ; preds = %for.cond226.preheader, %for.inc239, %for.cond245.preheader, %for.inc259, %if.then253
  %next264 = getelementptr inbounds %struct.gnode_s* %gn2.1447, i64 0, i32 1
  %gn2.1 = load %struct.gnode_s** %next264, align 8
  %tobool207 = icmp eq %struct.gnode_s* %gn2.1, null
  br i1 %tobool207, label %for.inc266, label %for.body208

for.inc266:                                       ; preds = %if.end204, %for.inc263, %for.body197
  %next267 = getelementptr inbounds %struct.gnode_s* %gn.5450, i64 0, i32 1
  %gn.5 = load %struct.gnode_s** %next267, align 8
  %tobool196 = icmp eq %struct.gnode_s* %gn.5, null
  br i1 %tobool196, label %for.cond189.loopexit, label %for.body197

for.end271:                                       ; preds = %for.cond189.loopexit, %if.end186
  %99 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp)
  %100 = load i32* %n_frm, align 4, !tbaa !3
  %cmp275438 = icmp slt i32 %100, 0
  br i1 %cmp275438, label %for.end293, label %for.body277

for.body277:                                      ; preds = %for.end271, %for.end288
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end288 ], [ 0, %for.end271 ]
  %arrayidx279 = getelementptr inbounds %struct.gnode_s** %1, i64 %indvars.iv
  %gn.6435 = load %struct.gnode_s** %arrayidx279, align 8
  %tobool281436 = icmp eq %struct.gnode_s* %gn.6435, null
  br i1 %tobool281436, label %for.end288, label %for.body282

for.body282:                                      ; preds = %for.body277, %for.body282
  %gn.6437 = phi %struct.gnode_s* [ %gn.6, %for.body282 ], [ %gn.6435, %for.body277 ]
  %ptr284 = getelementptr inbounds %struct.gnode_s* %gn.6437, i64 0, i32 0, i32 0
  %101 = load i8** %ptr284, align 8, !tbaa !0
  %velist285 = getelementptr inbounds i8* %101, i64 16
  %102 = bitcast i8* %velist285 to %struct.gnode_s**
  %103 = load %struct.gnode_s** %102, align 8, !tbaa !0
  tail call void @glist_free(%struct.gnode_s* %103) #6
  tail call void @ckd_free(i8* %101) #6
  %next287 = getelementptr inbounds %struct.gnode_s* %gn.6437, i64 0, i32 1
  %gn.6 = load %struct.gnode_s** %next287, align 8
  %tobool281 = icmp eq %struct.gnode_s* %gn.6, null
  br i1 %tobool281, label %for.cond280.for.end288_crit_edge, label %for.body282

for.cond280.for.end288_crit_edge:                 ; preds = %for.body282
  %.pre = load %struct.gnode_s** %arrayidx279, align 8, !tbaa !0
  br label %for.end288

for.end288:                                       ; preds = %for.cond280.for.end288_crit_edge, %for.body277
  %104 = phi %struct.gnode_s* [ %.pre, %for.cond280.for.end288_crit_edge ], [ null, %for.body277 ]
  tail call void @glist_free(%struct.gnode_s* %104) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %105 = load i32* %n_frm, align 4, !tbaa !3
  %106 = trunc i64 %indvars.iv to i32
  %cmp275 = icmp slt i32 %106, %105
  br i1 %cmp275, label %for.body277, label %for.end293

for.end293:                                       ; preds = %for.end288, %for.end271
  tail call void @ckd_free(i8* %call) #6
  ret void
}

; Function Attrs: optsize
declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: nounwind optsize uwtable
define void @vithist_free(%struct.vithist_t* %v) #0 {
entry:
  %tobool = icmp eq %struct.vithist_t* %v, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.vithist_t* %v to i8*
  tail call void @ckd_free(i8* %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare %struct.gnode_s* @glist_add_int32(%struct.gnode_s*, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{i64 0, i64 4, metadata !3, i64 4, i64 2, metadata !4, i64 6, i64 2, metadata !4, i64 8, i64 4, metadata !3, i64 12, i64 4, metadata !3, i64 16, i64 4, metadata !3, i64 20, i64 4, metadata !3, i64 24, i64 4, metadata !3, i64 28, i64 4, metadata !3, i64 32, i64 4, metadata !1}
