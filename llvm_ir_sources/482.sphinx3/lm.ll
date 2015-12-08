; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/lm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.lmclass_set_s = type { %struct.lmclass_s* }
%struct.wordprob_t = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/lm.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"Warning, lm_delete is currently empty, no memory is deleted\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"lw = %e\0A\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"wip = %e\0A\00", align 1
@.str6 = private unnamed_addr constant [30 x i8] c"Reading LM control file '%s'\0A\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"-lminmemory\00", align 1
@LM_IN_MEMORY = internal unnamed_addr global i1 false
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str12 = private unnamed_addr constant [20 x i8] c"Unexpected EOF(%s)\0A\00", align 1
@.str13 = private unnamed_addr constant [44 x i8] c"Number of LM class specified %d in file %s\0A\00", align 1
@.str14 = private unnamed_addr constant [38 x i8] c"LMname missing after LMFileName '%s'\0A\00", align 1
@.str15 = private unnamed_addr constant [40 x i8] c"Too many LM classes specified for '%s'\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"LM class '%s' not found\0A\00", align 1
@.str17 = private unnamed_addr constant [43 x i8] c"No. of LM set allocated %d, no. of LM %d \0A\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"No LM file\0A\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"uw = %e\0A\00", align 1
@.str20 = private unnamed_addr constant [44 x i8] c"LM read('%s', lw= %.2f, wip= %d, uw= %.2f)\0A\00", align 1
@.str21 = private unnamed_addr constant [48 x i8] c"%d tg frees, %d in mem; %d bg frees, %d in mem\0A\00", align 1
@.str22 = private unnamed_addr constant [63 x i8] c"%9d tg(), %9d tgcache, %8d bo; %5d fills, %8d in mem (%.1f%%)\0A\00", align 1
@.str23 = private unnamed_addr constant [50 x i8] c"%8d bg(), %8d bo; %5d fills, %8d in mem (%.1f%%)\0A\00", align 1
@.str24 = private unnamed_addr constant [34 x i8] c"Bad argument (%d) to lm_ug_score\0A\00", align 1
@.str25 = private unnamed_addr constant [35 x i8] c"Bad w1 argument (%d) to lm_bglist\0A\00", align 1
@.str26 = private unnamed_addr constant [38 x i8] c"Bad lw2 argument (%d) to lm_bg_score\0A\00", align 1
@.str27 = private unnamed_addr constant [36 x i8] c"Bad lw1 argument (%d) to lm_tglist\0A\00", align 1
@.str28 = private unnamed_addr constant [36 x i8] c"Bad lw2 argument (%d) to lm_tglist\0A\00", align 1
@.str29 = private unnamed_addr constant [38 x i8] c"Bad lw1 argument (%d) to lm_tg_score\0A\00", align 1
@.str30 = private unnamed_addr constant [38 x i8] c"Bad lw2 argument (%d) to lm_tg_score\0A\00", align 1
@.str31 = private unnamed_addr constant [38 x i8] c"Bad lw3 argument (%d) to lm_tg_score\0A\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"fseek failed\0A\00", align 1
@.str34 = private unnamed_addr constant [28 x i8] c"fread(tg, %d at %d) failed\0A\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"fread failed\0A\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str37 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str38 = private unnamed_addr constant [18 x i8] c"fread(%s) failed\0A\00", align 1
@.str39 = private unnamed_addr constant [50 x i8] c"Bad magic number: %d(%08x), not an LM dumpfile??\0A\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"Bad header\0A\00", align 1
@.str41 = private unnamed_addr constant [32 x i8] c"Bad original filename size: %d\0A\00", align 1
@.str42 = private unnamed_addr constant [37 x i8] c"log2(bg_seg_sz) outside range 1..15\0A\00", align 1
@.str43 = private unnamed_addr constant [30 x i8] c"Bad #ug: %d (must be >0, <%d\0A\00", align 1
@.str44 = private unnamed_addr constant [18 x i8] c"Bad #bigrams: %d\0A\00", align 1
@.str45 = private unnamed_addr constant [19 x i8] c"Bad #trigrams: %d\0A\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"%8d ug\0A\00", align 1
@.str47 = private unnamed_addr constant [30 x i8] c"Read %8d bigrams [in memory]\0A\00", align 1
@.str48 = private unnamed_addr constant [31 x i8] c"Read %8d trigrams [in memory]\0A\00", align 1
@.str49 = private unnamed_addr constant [23 x i8] c"%8d bigrams [on disk]\0A\00", align 1
@.str50 = private unnamed_addr constant [24 x i8] c"%8d trigrams [on disk]\0A\00", align 1
@.str51 = private unnamed_addr constant [32 x i8] c"Bad bigram prob table size: %d\0A\00", align 1
@.str52 = private unnamed_addr constant [25 x i8] c"%8d bigram prob entries\0A\00", align 1
@.str53 = private unnamed_addr constant [33 x i8] c"Bad trigram bowt table size: %d\0A\00", align 1
@.str54 = private unnamed_addr constant [26 x i8] c"%8d trigram bowt entries\0A\00", align 1
@.str55 = private unnamed_addr constant [26 x i8] c"%8d trigram prob entries\0A\00", align 1
@.str56 = private unnamed_addr constant [32 x i8] c"Bad trigram seg table size: %d\0A\00", align 1
@.str57 = private unnamed_addr constant [43 x i8] c"%8d trigram segtable entries (%d segsize)\0A\00", align 1
@.str58 = private unnamed_addr constant [26 x i8] c"Bad wordstrings size: %d\0A\00", align 1
@.str59 = private unnamed_addr constant [16 x i8] c"Bad #words: %d\0A\00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str61 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str62 = private unnamed_addr constant [18 x i8] c"%8d word strings\0A\00", align 1
@.str63 = private unnamed_addr constant [29 x i8] c"LM->inclass_ugscore size %d\0A\00", align 1
@.str64 = private unnamed_addr constant [25 x i8] c"Number of class used %d\0A\00", align 1
@.str65 = private unnamed_addr constant [17 x i8] c"Darpa Trigram LM\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @lm_get_classid(%struct.lm_s* nocapture %model, i8* nocapture %name) #0 {
entry:
  %lmclass = getelementptr inbounds %struct.lm_s* %model, i64 0, i32 40
  %0 = load %struct.lmclass_s*** %lmclass, align 8, !tbaa !0
  %tobool = icmp eq %struct.lmclass_s** %0, null
  br i1 %tobool, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_lmclass = getelementptr inbounds %struct.lm_s* %model, i64 0, i32 41
  %1 = load i32* %n_lmclass, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body, label %return

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.012, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %1
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %i.012 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.lmclass_s** %0, i64 %indvars.iv
  %3 = load %struct.lmclass_s** %arrayidx, align 8, !tbaa !0
  %name2 = getelementptr inbounds %struct.lmclass_s* %3, i64 0, i32 0
  %4 = load i8** %name2, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %4, i8* %name) #7
  %cmp3 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp3, label %if.then4, label %for.cond

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %i.012, 16777216
  br label %return

return:                                           ; preds = %for.cond.preheader, %for.cond, %entry, %if.then4
  %retval.0 = phi i32 [ %add, %if.then4 ], [ -1, %entry ], [ -1, %for.cond ], [ -1, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @lm_delete(%struct.lm_s* nocapture %lm, %struct.lmset_s* nocapture %lmset) #2 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 151, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0)) #8
  ret i32 0
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @lm_set_param(%struct.lm_s* nocapture %lm, double %lw, double %wip) #2 {
entry:
  %cmp = fcmp ugt double %lw, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 207, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %lw) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = fcmp ugt double %wip, 0.000000e+00
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 209, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), double %wip) #8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %call = tail call i32 @logs3(double %wip) #8
  %lw4 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 25
  %0 = load float* %lw4, align 4, !tbaa !4
  %conv = fpext float %0 to double
  %div = fdiv double %lw, %conv
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %1 = load i32* %n_ug, align 4, !tbaa !3
  %cmp5146 = icmp sgt i32 %1, 0
  br i1 %cmp5146, label %for.body.lr.ph, label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %if.end3
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %2 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %wip7 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 26
  br label %for.body

for.cond27.preheader:                             ; preds = %for.body, %if.end3
  %n_bgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 18
  %3 = load i32* %n_bgprob, align 4, !tbaa !3
  %cmp28144 = icmp sgt i32 %3, 0
  br i1 %cmp28144, label %for.body30.lr.ph, label %for.end46

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %bgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 14
  %4 = load %union.lmlog_t** %bgprob, align 8, !tbaa !0
  %wip34 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 26
  br label %for.body30

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv152 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next153, %for.body ]
  %prob = getelementptr inbounds %struct.ug_t* %2, i64 %indvars.iv152, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %5 = load i32* %l, align 4, !tbaa !3
  %6 = load i32* %wip7, align 4, !tbaa !3
  %sub = sub nsw i32 %5, %6
  %conv8 = sitofp i32 %sub to double
  %mul = fmul double %div, %conv8
  %conv9 = fptosi double %mul to i32
  %add = add nsw i32 %conv9, %call
  store i32 %add, i32* %l, align 4, !tbaa !3
  %bowt = getelementptr inbounds %struct.ug_t* %2, i64 %indvars.iv152, i32 2
  %l18 = bitcast %union.lmlog_t* %bowt to i32*
  %7 = load i32* %l18, align 4, !tbaa !3
  %conv19 = sitofp i32 %7 to double
  %mul20 = fmul double %div, %conv19
  %conv21 = fptosi double %mul20 to i32
  store i32 %conv21, i32* %l18, align 4, !tbaa !3
  %indvars.iv.next153 = add i64 %indvars.iv152, 1
  %8 = load i32* %n_ug, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next153 to i32
  %cmp5 = icmp slt i32 %9, %8
  br i1 %cmp5, label %for.body, label %for.cond27.preheader

for.body30:                                       ; preds = %for.body30.lr.ph, %for.body30
  %indvars.iv150 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next151, %for.body30 ]
  %arrayidx32 = getelementptr inbounds %union.lmlog_t* %4, i64 %indvars.iv150
  %l33 = bitcast %union.lmlog_t* %arrayidx32 to i32*
  %10 = load i32* %l33, align 4, !tbaa !3
  %11 = load i32* %wip34, align 4, !tbaa !3
  %sub35 = sub nsw i32 %10, %11
  %conv36 = sitofp i32 %sub35 to double
  %mul37 = fmul double %div, %conv36
  %conv38 = fptosi double %mul37 to i32
  %add39 = add nsw i32 %conv38, %call
  store i32 %add39, i32* %l33, align 4, !tbaa !3
  %indvars.iv.next151 = add i64 %indvars.iv150, 1
  %12 = load i32* %n_bgprob, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next151 to i32
  %cmp28 = icmp slt i32 %13, %12
  br i1 %cmp28, label %for.body30, label %for.end46

for.end46:                                        ; preds = %for.body30, %for.cond27.preheader
  %n_tg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 2
  %14 = load i32* %n_tg, align 4, !tbaa !3
  %cmp47 = icmp sgt i32 %14, 0
  br i1 %cmp47, label %for.cond50.preheader, label %if.end87

for.cond50.preheader:                             ; preds = %for.end46
  %n_tgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 19
  %15 = load i32* %n_tgprob, align 4, !tbaa !3
  %cmp51142 = icmp sgt i32 %15, 0
  br i1 %cmp51142, label %for.body53.lr.ph, label %for.cond70.preheader

for.body53.lr.ph:                                 ; preds = %for.cond50.preheader
  %tgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 15
  %16 = load %union.lmlog_t** %tgprob, align 8, !tbaa !0
  %wip57 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 26
  br label %for.body53

for.cond70.preheader:                             ; preds = %for.body53, %for.cond50.preheader
  %n_tgbowt = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 20
  %17 = load i32* %n_tgbowt, align 4, !tbaa !3
  %cmp71140 = icmp sgt i32 %17, 0
  br i1 %cmp71140, label %for.body73.lr.ph, label %if.end87

for.body73.lr.ph:                                 ; preds = %for.cond70.preheader
  %tgbowt = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 16
  %18 = load %union.lmlog_t** %tgbowt, align 8, !tbaa !0
  br label %for.body73

for.body53:                                       ; preds = %for.body53.lr.ph, %for.body53
  %indvars.iv148 = phi i64 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next149, %for.body53 ]
  %arrayidx55 = getelementptr inbounds %union.lmlog_t* %16, i64 %indvars.iv148
  %l56 = bitcast %union.lmlog_t* %arrayidx55 to i32*
  %19 = load i32* %l56, align 4, !tbaa !3
  %20 = load i32* %wip57, align 4, !tbaa !3
  %sub58 = sub nsw i32 %19, %20
  %conv59 = sitofp i32 %sub58 to double
  %mul60 = fmul double %div, %conv59
  %conv61 = fptosi double %mul60 to i32
  %add62 = add nsw i32 %conv61, %call
  store i32 %add62, i32* %l56, align 4, !tbaa !3
  %indvars.iv.next149 = add i64 %indvars.iv148, 1
  %21 = load i32* %n_tgprob, align 4, !tbaa !3
  %22 = trunc i64 %indvars.iv.next149 to i32
  %cmp51 = icmp slt i32 %22, %21
  br i1 %cmp51, label %for.body53, label %for.cond70.preheader

for.body73:                                       ; preds = %for.body73.lr.ph, %for.body73
  %indvars.iv = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next, %for.body73 ]
  %arrayidx75 = getelementptr inbounds %union.lmlog_t* %18, i64 %indvars.iv
  %l76 = bitcast %union.lmlog_t* %arrayidx75 to i32*
  %23 = load i32* %l76, align 4, !tbaa !3
  %conv77 = sitofp i32 %23 to double
  %mul78 = fmul double %div, %conv77
  %conv79 = fptosi double %mul78 to i32
  store i32 %conv79, i32* %l76, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %24 = load i32* %n_tgbowt, align 4, !tbaa !3
  %25 = trunc i64 %indvars.iv.next to i32
  %cmp71 = icmp slt i32 %25, %24
  br i1 %cmp71, label %for.body73, label %if.end87

if.end87:                                         ; preds = %for.cond70.preheader, %for.body73, %for.end46
  %conv88 = fptrunc double %lw to float
  store float %conv88, float* %lw4, align 4, !tbaa !4
  %wip90 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 26
  store i32 %call, i32* %wip90, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #3

; Function Attrs: optsize
declare i32 @logs3(double) #3

; Function Attrs: nounwind optsize uwtable
define %struct.lmset_s* @lm_read_ctl(i8* %ctlfile, %struct.dict_t* %dict, double %lw, double %wip, double %uw, i8* nocapture %lmdumpdir, i32* nocapture %n_lm, i32* nocapture %n_alloclm, i32 %dict_size) #2 {
entry:
  %lmfile = alloca [4096 x i8], align 16
  %lmname = alloca [4096 x i8], align 16
  %str = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %lmfile, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #4
  %1 = getelementptr inbounds [4096 x i8]* %lmname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %2 = getelementptr inbounds [4096 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #4
  %call = call %struct.lmclass_set_s* @lmclass_newset() #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 291, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([30 x i8]* @.str6, i64 0, i64 0), i8* %ctlfile) #8
  %call12 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #8
  %3 = bitcast i8* %call12 to i32*
  %4 = load i32* %3, align 4, !tbaa !3
  %not.tobool = icmp ne i32 %4, 0
  store i1 %not.tobool, i1* @LM_IN_MEMORY, align 1
  %call13 = call %struct._IO_FILE* @_myfopen(i8* %ctlfile, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 299) #8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp = icmp eq i32 %call14, 1
  br i1 %cmp, label %if.then15, label %if.else39

if.then15:                                        ; preds = %entry
  %call17 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %while.cond.preheader, label %if.end41

while.cond.preheader:                             ; preds = %if.then15
  %call21241 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp22242 = icmp eq i32 %call21241, 1
  br i1 %cmp22242, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %lmclass_set.0243 = phi %struct.lmclass_set_s* [ %call27, %while.body ], [ %call, %while.cond.preheader ]
  %call24 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call27 = call %struct.lmclass_set_s* @lmclass_loadfile(%struct.lmclass_set_s* %lmclass_set.0243, i8* %2) #8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs, %while.cond.preheader
  %lmclass_set.0.lcssa = phi %struct.lmclass_set_s* [ %call, %while.cond.preheader ], [ %lmclass_set.0243, %land.rhs ], [ %call27, %while.body ]
  %call29 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %while.end
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 308, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* %ctlfile) #8
  br label %if.end32

if.end32:                                         ; preds = %while.end, %if.then31
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end32
  store i8 0, i8* %2, align 16, !tbaa !1
  br label %if.end41

if.else39:                                        ; preds = %entry
  store i8 0, i8* %2, align 16, !tbaa !1
  br label %if.end41

if.end41:                                         ; preds = %if.end32, %if.then15, %if.then36, %if.else39
  %lmclass_set.1 = phi %struct.lmclass_set_s* [ %lmclass_set.0.lcssa, %if.then36 ], [ %lmclass_set.0.lcssa, %if.end32 ], [ %call, %if.then15 ], [ %call, %if.else39 ]
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s* %lmclass_set.1, i64 0, i32 0
  %cl.0238 = load %struct.lmclass_s** %lmclass_list, align 8
  %cmp42239 = icmp eq %struct.lmclass_s* %cl.0238, null
  br i1 %cmp42239, label %for.end51, label %for.body

for.body:                                         ; preds = %if.end41, %for.inc49
  %cl.0240 = phi %struct.lmclass_s* [ %cl.0, %for.inc49 ], [ %cl.0238, %if.end41 ]
  %wordlist = getelementptr inbounds %struct.lmclass_s* %cl.0240, i64 0, i32 1
  %w.0235 = load %struct.lmclass_word_s** %wordlist, align 8
  %cmp46236 = icmp eq %struct.lmclass_word_s* %w.0235, null
  br i1 %cmp46236, label %for.inc49, label %for.body47

for.body47:                                       ; preds = %for.body, %for.body47
  %w.0237 = phi %struct.lmclass_word_s* [ %w.0, %for.body47 ], [ %w.0235, %for.body ]
  %word = getelementptr inbounds %struct.lmclass_word_s* %w.0237, i64 0, i32 0
  %5 = load i8** %word, align 8, !tbaa !0
  %call48 = call i32 @dict_wordid(%struct.dict_t* %dict, i8* %5) #8
  call void @lmclass_set_dictwid(%struct.lmclass_word_s* %w.0237, i32 %call48) #8
  %next = getelementptr inbounds %struct.lmclass_word_s* %w.0237, i64 0, i32 3
  %w.0 = load %struct.lmclass_word_s** %next, align 8
  %cmp46 = icmp eq %struct.lmclass_word_s* %w.0, null
  br i1 %cmp46, label %for.inc49, label %for.body47

for.inc49:                                        ; preds = %for.body47, %for.body
  %next50 = getelementptr inbounds %struct.lmclass_s* %cl.0240, i64 0, i32 2
  %cl.0 = load %struct.lmclass_s** %next50, align 8
  %cmp42 = icmp eq %struct.lmclass_s* %cl.0, null
  br i1 %cmp42, label %for.end51, label %for.body

for.end51:                                        ; preds = %for.inc49, %if.end41
  %call52 = call i32 @lmclass_get_nclass(%struct.lmclass_set_s* %lmclass_set.1) #8
  %conv = sext i32 %call52 to i64
  %call53 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 350) #8
  %6 = bitcast i8* %call53 to %struct.lmclass_s**
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 352, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([44 x i8]* @.str13, i64 0, i64 0), i32 %call52, i8* %ctlfile) #8
  %7 = load i8* %2, align 16, !tbaa !1
  %cmp57232 = icmp eq i8 %7, 0
  br i1 %cmp57232, label %while.end175, label %while.body59

while.body59:                                     ; preds = %for.end51, %if.end166
  %lmset.0233 = phi %struct.lmset_s* [ %lmset.1, %if.end166 ], [ null, %for.end51 ]
  %call62 = call i8* @strcpy(i8* %0, i8* %2) #8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %1) #8
  %cmp65 = icmp eq i32 %call64, 1
  br i1 %cmp65, label %if.end69, label %if.then67

if.then67:                                        ; preds = %while.body59
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 358, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str14, i64 0, i64 0), i8* %0) #8
  br label %if.end69

if.end69:                                         ; preds = %while.body59, %if.then67
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp72 = icmp eq i32 %call71, 1
  br i1 %cmp72, label %if.then74, label %if.else122

if.then74:                                        ; preds = %if.end69
  %call76 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #7
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %while.cond80.preheader, label %if.else142

while.cond80.preheader:                           ; preds = %if.then74
  %call82226 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp83227 = icmp eq i32 %call82226, 1
  br i1 %cmp83227, label %land.rhs85, label %while.end107

land.rhs85:                                       ; preds = %while.cond80.preheader, %if.end106
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end106 ], [ 0, %while.cond80.preheader ]
  %n_lmclass_used.0228 = phi i32 [ %inc, %if.end106 ], [ 0, %while.cond80.preheader ]
  %call87 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %while.end107, label %while.body91

while.body91:                                     ; preds = %land.rhs85
  %8 = trunc i64 %indvars.iv to i32
  %cmp92 = icmp slt i32 %8, %call52
  br i1 %cmp92, label %if.end96, label %if.then94

if.then94:                                        ; preds = %while.body91
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 367, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([40 x i8]* @.str15, i64 0, i64 0), i8* %0) #8
  br label %if.end96

if.end96:                                         ; preds = %while.body91, %if.then94
  %call98 = call %struct.lmclass_s* @lmclass_get_lmclass(%struct.lmclass_set_s* %lmclass_set.1, i8* %2) #8
  %arrayidx99 = getelementptr inbounds %struct.lmclass_s** %6, i64 %indvars.iv
  store %struct.lmclass_s* %call98, %struct.lmclass_s** %arrayidx99, align 8, !tbaa !0
  %cmp102 = icmp eq %struct.lmclass_s* %call98, null
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end96
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 374, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([25 x i8]* @.str16, i64 0, i64 0), i8* %2) #8
  br label %if.end106

if.end106:                                        ; preds = %if.end96, %if.then104
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %n_lmclass_used.0228, 1
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp83 = icmp eq i32 %call82, 1
  br i1 %cmp83, label %land.rhs85, label %while.end107

while.end107:                                     ; preds = %if.end106, %land.rhs85, %while.cond80.preheader
  %n_lmclass_used.0.lcssa = phi i32 [ 0, %while.cond80.preheader ], [ %n_lmclass_used.0228, %land.rhs85 ], [ %inc, %if.end106 ]
  %call109 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.end113, label %if.then112

if.then112:                                       ; preds = %while.end107
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 378, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* %ctlfile) #8
  br label %if.end113

if.end113:                                        ; preds = %while.end107, %if.then112
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call13, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %2) #8
  %cmp116 = icmp eq i32 %call115, 1
  br i1 %cmp116, label %if.end124, label %if.then118

if.then118:                                       ; preds = %if.end113
  store i8 0, i8* %2, align 16, !tbaa !1
  br label %if.end124

if.else122:                                       ; preds = %if.end69
  store i8 0, i8* %2, align 16, !tbaa !1
  br label %if.else142

if.end124:                                        ; preds = %if.end113, %if.then118
  %cmp125 = icmp sgt i32 %n_lmclass_used.0.lcssa, 0
  br i1 %cmp125, label %if.then127, label %if.else142

if.then127:                                       ; preds = %if.end124
  %call129 = call fastcc %struct.lm_s* @lm_read_dump(i8* %0, double %lw, double %wip, double %uw, i32 %n_lmclass_used.0.lcssa, %struct.lmclass_s** %6, i32 %dict_size) #9
  %call130 = call i8* @__ckd_calloc__(i64 100003, i64 12, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 399) #8
  %9 = bitcast i8* %call130 to %struct.lm_tgcache_entry_t*
  %tgcache = getelementptr inbounds %struct.lm_s* %call129, i64 0, i32 27
  store %struct.lm_tgcache_entry_t* %9, %struct.lm_tgcache_entry_t** %tgcache, align 8, !tbaa !0
  br label %for.body134

for.body134:                                      ; preds = %for.body134, %if.then127
  %indvars.iv248 = phi i64 [ 0, %if.then127 ], [ %indvars.iv.next249, %for.body134 ]
  %arrayidx138 = getelementptr inbounds %struct.lm_tgcache_entry_t* %9, i64 %indvars.iv248, i32 0, i64 0
  store i16 -1, i16* %arrayidx138, align 2, !tbaa !5
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  %lftr.wideiv250 = trunc i64 %indvars.iv.next249 to i32
  %exitcond251 = icmp eq i32 %lftr.wideiv250, 100003
  br i1 %exitcond251, label %if.end159, label %for.body134

if.else142:                                       ; preds = %if.else122, %if.then74, %if.end124
  %call144 = call fastcc %struct.lm_s* @lm_read_dump(i8* %0, double %lw, double %wip, double %uw, i32 0, %struct.lmclass_s** null, i32 %dict_size) #9
  %call145 = call i8* @__ckd_calloc__(i64 100003, i64 12, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 410) #8
  %10 = bitcast i8* %call145 to %struct.lm_tgcache_entry_t*
  %tgcache146 = getelementptr inbounds %struct.lm_s* %call144, i64 0, i32 27
  store %struct.lm_tgcache_entry_t* %10, %struct.lm_tgcache_entry_t** %tgcache146, align 8, !tbaa !0
  br label %for.body150

for.body150:                                      ; preds = %for.body150, %if.else142
  %indvars.iv246 = phi i64 [ 0, %if.else142 ], [ %indvars.iv.next247, %for.body150 ]
  %arrayidx155 = getelementptr inbounds %struct.lm_tgcache_entry_t* %10, i64 %indvars.iv246, i32 0, i64 0
  store i16 -1, i16* %arrayidx155, align 2, !tbaa !5
  %indvars.iv.next247 = add i64 %indvars.iv246, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next247 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100003
  br i1 %exitcond, label %if.end159, label %for.body150

if.end159:                                        ; preds = %for.body134, %for.body150
  %lm.0 = phi %struct.lm_s* [ %call144, %for.body150 ], [ %call129, %for.body134 ]
  %11 = load i32* %n_lm, align 4, !tbaa !3
  %12 = load i32* %n_alloclm, align 4, !tbaa !3
  %cmp160 = icmp eq i32 %11, %12
  br i1 %cmp160, label %if.then162, label %if.end166

if.then162:                                       ; preds = %if.end159
  %13 = bitcast %struct.lmset_s* %lmset.0233 to i8*
  %add = add nsw i32 %11, 16
  %conv163 = sext i32 %add to i64
  %mul = shl nsw i64 %conv163, 4
  %call164 = call i8* @__ckd_realloc__(i8* %13, i64 %mul, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 416) #8
  %14 = bitcast i8* %call164 to %struct.lmset_s*
  %15 = load i32* %n_alloclm, align 4, !tbaa !3
  %add165 = add nsw i32 %15, 16
  store i32 %add165, i32* %n_alloclm, align 4, !tbaa !3
  br label %if.end166

if.end166:                                        ; preds = %if.then162, %if.end159
  %lmset.1 = phi %struct.lmset_s* [ %14, %if.then162 ], [ %lmset.0233, %if.end159 ]
  %call168 = call i8* @__ckd_salloc__(i8* %1, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 419) #8
  %16 = load i32* %n_lm, align 4, !tbaa !3
  %idxprom169 = sext i32 %16 to i64
  %name = getelementptr inbounds %struct.lmset_s* %lmset.1, i64 %idxprom169, i32 0
  store i8* %call168, i8** %name, align 8, !tbaa !0
  %lm173 = getelementptr inbounds %struct.lmset_s* %lmset.1, i64 %idxprom169, i32 1
  store %struct.lm_s* %lm.0, %struct.lm_s** %lm173, align 8, !tbaa !0
  %add174 = add nsw i32 %16, 1
  store i32 %add174, i32* %n_lm, align 4, !tbaa !3
  %17 = load i8* %2, align 16, !tbaa !1
  %cmp57 = icmp eq i8 %17, 0
  br i1 %cmp57, label %while.end175, label %while.body59

while.end175:                                     ; preds = %if.end166, %for.end51
  %lmset.0.lcssa = phi %struct.lmset_s* [ null, %for.end51 ], [ %lmset.1, %if.end166 ]
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 424, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %18 = load i32* %n_alloclm, align 4, !tbaa !3
  %19 = load i32* %n_lm, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str17, i64 0, i64 0), i32 %18, i32 %19) #8
  %call176 = call i32 @fclose(%struct._IO_FILE* %call13) #8
  call void @llvm.lifetime.end(i64 4096, i8* %2) #4
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  call void @llvm.lifetime.end(i64 4096, i8* %0) #4
  ret %struct.lmset_s* %lmset.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.lmclass_set_s* @lmclass_newset() #3

; Function Attrs: optsize
declare i8* @cmd_ln_access(i8*) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: optsize
declare %struct.lmclass_set_s* @lmclass_loadfile(%struct.lmclass_set_s*, i8*) #3

; Function Attrs: optsize
declare i32 @dict_wordid(%struct.dict_t*, i8*) #3

; Function Attrs: optsize
declare void @lmclass_set_dictwid(%struct.lmclass_word_s*, i32) #3

; Function Attrs: optsize
declare i32 @lmclass_get_nclass(%struct.lmclass_set_s*) #3

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.lmclass_s* @lmclass_get_lmclass(%struct.lmclass_set_s*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.lm_s* @lm_read_dump(i8* %file, double %lw, double %wip, double %uw, i32 %n_lmclass_used, %struct.lmclass_s** nocapture %lmclass, i32 %dict_size) #2 {
entry:
  %k = alloca i32, align 4
  %str = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #4
  %call = call i8* @__ckd_calloc__(i64 1, i64 248, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 464) #8
  %1 = bitcast i8* %call to %struct.lm_s*
  %dict_size1 = getelementptr inbounds i8* %call, i64 216
  %2 = bitcast i8* %dict_size1 to i32*
  store i32 %dict_size, i32* %2, align 4, !tbaa !3
  %call2 = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str36, i64 0, i64 0)) #8
  %fp = getelementptr inbounds i8* %call, i64 128
  %3 = bitcast i8* %fp to %struct._IO_FILE**
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %3, align 8, !tbaa !0
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 468, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([21 x i8]* @.str37, i64 0, i64 0), i8* %file) #8
  %.pre = load %struct._IO_FILE** %3, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct._IO_FILE* [ %.pre, %if.then ], [ %call2, %entry ]
  %5 = bitcast i32* %k to i8*
  %call4 = call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %4) #8
  %cmp5 = icmp eq i64 %call4, 1
  br i1 %cmp5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 472, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then6
  %6 = load i32* %k, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %6, 17
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %byteswap = getelementptr inbounds i8* %call, i64 136
  %7 = bitcast i8* %byteswap to i32*
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %if.end39

if.else:                                          ; preds = %if.end7
  %or18 = call i32 @llvm.bswap.i32(i32 %6)
  store i32 %or18, i32* %k, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %6, 285212672
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  %byteswap25 = getelementptr inbounds i8* %call, i64 136
  %8 = bitcast i8* %byteswap25 to i32*
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %if.end39

if.else26:                                        ; preds = %if.else
  store i32 %6, i32* %k, align 4, !tbaa !3
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 481, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %9 = load i32* %k, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([50 x i8]* @.str39, i64 0, i64 0), i32 %9, i32 %9) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then24, %if.else26, %if.then11
  %10 = load i32* %k, align 4, !tbaa !3
  %conv40 = sext i32 %10 to i64
  %11 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call42 = call i64 @fread(i8* %0, i64 1, i64 %conv40, %struct._IO_FILE* %11) #8
  %12 = load i32* %k, align 4, !tbaa !3
  %conv43 = sext i32 %12 to i64
  %cmp44 = icmp eq i64 %call42, %conv43
  br i1 %cmp44, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end39
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 487, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  %.pre1056 = load i32* %k, align 4, !tbaa !3
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %if.then46
  %13 = phi i32 [ %12, %if.end39 ], [ %.pre1056, %if.then46 ]
  %conv49 = sext i32 %13 to i64
  %call50 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([17 x i8]* @.str65, i64 0, i64 0), i64 %conv49) #7
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end47
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 489, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0)) #8
  br label %if.end54

if.end54:                                         ; preds = %if.end47, %if.then53
  %call55 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call55, i32* %k, align 4, !tbaa !3
  %call55.off = add i32 %call55, -1
  %14 = icmp ugt i32 %call55.off, 1023
  br i1 %14, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end54
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 494, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %15 = load i32* %k, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str41, i64 0, i64 0), i32 %15) #8
  %.pre1057 = load i32* %k, align 4, !tbaa !3
  br label %if.end61

if.end61:                                         ; preds = %if.end54, %if.then60
  %16 = phi i32 [ %call55, %if.end54 ], [ %.pre1057, %if.then60 ]
  %conv63 = sext i32 %16 to i64
  %17 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call65 = call i64 @fread(i8* %0, i64 1, i64 %conv63, %struct._IO_FILE* %17) #8
  %18 = load i32* %k, align 4, !tbaa !3
  %conv66 = sext i32 %18 to i64
  %cmp67 = icmp eq i64 %call65, %conv66
  br i1 %cmp67, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end61
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 496, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end70

if.end70:                                         ; preds = %if.end61, %if.then69
  %call71 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %cmp72 = icmp slt i32 %call71, 1
  br i1 %cmp72, label %if.then74, label %if.else105

if.then74:                                        ; preds = %if.end70
  %call75 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call75, i32* %k, align 4, !tbaa !3
  %call761041 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call761041, i32* %k, align 4, !tbaa !3
  %cmp771042 = icmp eq i32 %call761041, 0
  br i1 %cmp771042, label %for.end, label %if.end80

if.end80:                                         ; preds = %if.then74, %for.cond.backedge
  %call761043 = phi i32 [ %call76, %for.cond.backedge ], [ %call761041, %if.then74 ]
  %conv82 = sext i32 %call761043 to i64
  %19 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call84 = call i64 @fread(i8* %0, i64 1, i64 %conv82, %struct._IO_FILE* %19) #8
  %20 = load i32* %k, align 4, !tbaa !3
  %conv85 = sext i32 %20 to i64
  %cmp86 = icmp eq i64 %call84, %conv85
  br i1 %cmp86, label %for.cond.backedge, label %if.then88

if.then88:                                        ; preds = %if.end80
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 509, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then88, %if.end80
  %call76 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call76, i32* %k, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %for.end, label %if.end80

for.end:                                          ; preds = %for.cond.backedge, %if.then74
  %cmp90 = icmp slt i32 %call71, -1
  br i1 %cmp90, label %if.then92, label %if.else101

if.then92:                                        ; preds = %for.end
  %call93 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call93, i32* %k, align 4, !tbaa !3
  %call93.off = add i32 %call93, -1
  %21 = icmp ugt i32 %call93.off, 14
  br i1 %21, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then92
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 516, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %22 = load i32* %k, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([37 x i8]* @.str42, i64 0, i64 0), i32 %22) #8
  %.pre1058 = load i32* %k, align 4, !tbaa !3
  br label %if.end100

if.end100:                                        ; preds = %if.then92, %if.then99
  %23 = phi i32 [ %call93, %if.then92 ], [ %.pre1058, %if.then99 ]
  %log_bg_seg_sz = getelementptr inbounds i8* %call, i64 28
  %24 = bitcast i8* %log_bg_seg_sz to i32*
  store i32 %23, i32* %24, align 4, !tbaa !3
  br label %if.end103

if.else101:                                       ; preds = %for.end
  %log_bg_seg_sz102 = getelementptr inbounds i8* %call, i64 28
  %25 = bitcast i8* %log_bg_seg_sz102 to i32*
  store i32 9, i32* %25, align 4, !tbaa !3
  br label %if.end103

if.end103:                                        ; preds = %if.else101, %if.end100
  %call104 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %n_ug = bitcast i8* %call to i32*
  store i32 %call104, i32* %n_ug, align 4, !tbaa !3
  br label %if.end108

if.else105:                                       ; preds = %if.end70
  %n_ug106 = bitcast i8* %call to i32*
  store i32 %call71, i32* %n_ug106, align 4, !tbaa !3
  %log_bg_seg_sz107 = getelementptr inbounds i8* %call, i64 28
  %26 = bitcast i8* %log_bg_seg_sz107 to i32*
  store i32 9, i32* %26, align 4, !tbaa !3
  br label %if.end108

if.end108:                                        ; preds = %if.else105, %if.end103
  %27 = phi i32 [ %call71, %if.else105 ], [ %call104, %if.end103 ]
  %n_ug109 = bitcast i8* %call to i32*
  %cmp110 = icmp slt i32 %27, 1
  %cmp114 = icmp ugt i32 %27, 65533
  %or.cond = or i1 %cmp110, %cmp114
  br i1 %or.cond, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end108
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 529, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %28 = load i32* %n_ug109, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str43, i64 0, i64 0), i32 %28, i32 65534) #8
  br label %if.end118

if.end118:                                        ; preds = %if.end108, %if.then116
  %log_bg_seg_sz119 = getelementptr inbounds i8* %call, i64 28
  %29 = bitcast i8* %log_bg_seg_sz119 to i32*
  %30 = load i32* %29, align 4, !tbaa !3
  %shl120 = shl i32 1, %30
  %bg_seg_sz = getelementptr inbounds i8* %call, i64 32
  %31 = bitcast i8* %bg_seg_sz to i32*
  store i32 %shl120, i32* %31, align 4, !tbaa !3
  %call121 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %n_bg = getelementptr inbounds i8* %call, i64 4
  %32 = bitcast i8* %n_bg to i32*
  store i32 %call121, i32* %32, align 4, !tbaa !3
  %cmp123 = icmp slt i32 %call121, 0
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end118
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 536, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %33 = load i32* %32, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str44, i64 0, i64 0), i32 %33) #8
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end118
  %call128 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %n_tg = getelementptr inbounds i8* %call, i64 8
  %34 = bitcast i8* %n_tg to i32*
  store i32 %call128, i32* %34, align 4, !tbaa !3
  %cmp130 = icmp slt i32 %call128, 0
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end127
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 541, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %35 = load i32* %34, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str45, i64 0, i64 0), i32 %35) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end127
  %36 = load i32* %n_ug109, align 4, !tbaa !3
  %add136 = add nsw i32 %36, 1
  %conv137 = sext i32 %add136 to i64
  %call138 = call i8* @__ckd_calloc__(i64 %conv137, i64 16, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 544) #8
  %37 = bitcast i8* %call138 to %struct.ug_t*
  %ug = getelementptr inbounds i8* %call, i64 40
  %38 = bitcast i8* %ug to %struct.ug_t**
  store %struct.ug_t* %37, %struct.ug_t** %38, align 8, !tbaa !0
  %39 = load i32* %n_ug109, align 4, !tbaa !3
  %add141 = add nsw i32 %39, 1
  %conv142 = sext i32 %add141 to i64
  %40 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call144 = call i64 @fread(i8* %call138, i64 16, i64 %conv142, %struct._IO_FILE* %40) #8
  %41 = load i32* %n_ug109, align 4, !tbaa !3
  %add146 = add nsw i32 %41, 1
  %conv147 = sext i32 %add146 to i64
  %cmp148 = icmp eq i64 %call144, %conv147
  br i1 %cmp148, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end134
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 546, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end151

if.end151:                                        ; preds = %if.end134, %if.then150
  %byteswap152 = getelementptr inbounds i8* %call, i64 136
  %42 = bitcast i8* %byteswap152 to i32*
  %43 = load i32* %42, align 4, !tbaa !3
  %tobool = icmp eq i32 %43, 0
  br i1 %tobool, label %if.end256, label %for.cond154.preheader

for.cond154.preheader:                            ; preds = %if.end151
  %44 = load i32* %n_ug109, align 4, !tbaa !3
  %cmp1561039 = icmp slt i32 %44, 0
  br i1 %cmp1561039, label %if.end256, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond154.preheader
  %45 = load %struct.ug_t** %38, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %for.body ], [ 0, %for.body.lr.ph ]
  %prob = getelementptr inbounds %struct.ug_t* %45, i64 %indvars.iv1054, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %46 = load i32* %l, align 4, !tbaa !3
  %or184 = call i32 @llvm.bswap.i32(i32 %46)
  store i32 %or184, i32* %l, align 4, !tbaa !3
  %bowt = getelementptr inbounds %struct.ug_t* %45, i64 %indvars.iv1054, i32 2
  %l193 = bitcast %union.lmlog_t* %bowt to i32*
  %47 = load i32* %l193, align 4, !tbaa !3
  %or219 = call i32 @llvm.bswap.i32(i32 %47)
  store i32 %or219, i32* %l193, align 4, !tbaa !3
  %firstbg = getelementptr inbounds %struct.ug_t* %45, i64 %indvars.iv1054, i32 3
  %48 = load i32* %firstbg, align 4, !tbaa !3
  %or250 = call i32 @llvm.bswap.i32(i32 %48)
  store i32 %or250, i32* %firstbg, align 4, !tbaa !3
  %indvars.iv.next1055 = add i64 %indvars.iv1054, 1
  %49 = load i32* %n_ug109, align 4, !tbaa !3
  %50 = trunc i64 %indvars.iv1054 to i32
  %cmp156 = icmp slt i32 %50, %49
  br i1 %cmp156, label %for.body, label %if.end256

if.end256:                                        ; preds = %for.cond154.preheader, %for.body, %if.end151
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 553, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %51 = load i32* %n_ug109, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([8 x i8]* @.str46, i64 0, i64 0), i32 %51) #8
  %.b = load i1* @LM_IN_MEMORY, align 1
  br i1 %.b, label %if.then259, label %if.else303

if.then259:                                       ; preds = %if.end256
  %52 = load i32* %32, align 4, !tbaa !3
  %add261 = add nsw i32 %52, 1
  %conv262 = sext i32 %add261 to i64
  %call263 = call i8* @__ckd_calloc__(i64 %conv262, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 557) #8
  %53 = bitcast i8* %call263 to %struct.bg_t*
  %bg = getelementptr inbounds i8* %call, i64 48
  %54 = bitcast i8* %bg to %struct.bg_t**
  store %struct.bg_t* %53, %struct.bg_t** %54, align 8, !tbaa !0
  %55 = load i32* %34, align 4, !tbaa !3
  %add265 = add nsw i32 %55, 1
  %conv266 = sext i32 %add265 to i64
  %call267 = call i8* @__ckd_calloc__(i64 %conv266, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 558) #8
  %56 = bitcast i8* %call267 to %struct.tg_t*
  %tg = getelementptr inbounds i8* %call, i64 56
  %57 = bitcast i8* %tg to %struct.tg_t**
  store %struct.tg_t* %56, %struct.tg_t** %57, align 8, !tbaa !0
  %58 = load i32* %32, align 4, !tbaa !3
  %cmp269 = icmp sgt i32 %58, 0
  br i1 %cmp269, label %if.then271, label %if.end285

if.then271:                                       ; preds = %if.then259
  %59 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call273 = call i64 @ftell(%struct._IO_FILE* %59) #8
  %conv274 = trunc i64 %call273 to i32
  %bgoff = getelementptr inbounds i8* %call, i64 140
  %60 = bitcast i8* %bgoff to i32*
  store i32 %conv274, i32* %60, align 4, !tbaa !3
  %61 = load %struct.bg_t** %54, align 8, !tbaa !0
  %62 = bitcast %struct.bg_t* %61 to i8*
  %63 = load i32* %32, align 4, !tbaa !3
  %add277 = add nsw i32 %63, 1
  %conv278 = sext i32 %add277 to i64
  %64 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call280 = call i64 @fread(i8* %62, i64 %conv278, i64 8, %struct._IO_FILE* %64) #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 563, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %65 = load i32* %32, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([30 x i8]* @.str47, i64 0, i64 0), i32 %65) #8
  %66 = load i32* %n_ug109, align 4, !tbaa !3
  %conv283 = sext i32 %66 to i64
  %call284 = call i8* @__ckd_calloc__(i64 %conv283, i64 16, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 565) #8
  %67 = bitcast i8* %call284 to %struct.membg_t*
  %membg = getelementptr inbounds i8* %call, i64 64
  %68 = bitcast i8* %membg to %struct.membg_t**
  store %struct.membg_t* %67, %struct.membg_t** %68, align 8, !tbaa !0
  br label %if.end285

if.end285:                                        ; preds = %if.then271, %if.then259
  %69 = load i32* %34, align 4, !tbaa !3
  %cmp287 = icmp sgt i32 %69, 0
  br i1 %cmp287, label %if.then289, label %if.end344

if.then289:                                       ; preds = %if.end285
  %70 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call291 = call i64 @ftell(%struct._IO_FILE* %70) #8
  %conv292 = trunc i64 %call291 to i32
  %tgoff = getelementptr inbounds i8* %call, i64 144
  %71 = bitcast i8* %tgoff to i32*
  store i32 %conv292, i32* %71, align 4, !tbaa !3
  %72 = load %struct.tg_t** %57, align 8, !tbaa !0
  %73 = bitcast %struct.tg_t* %72 to i8*
  %74 = load i32* %34, align 4, !tbaa !3
  %conv295 = sext i32 %74 to i64
  %75 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call297 = call i64 @fread(i8* %73, i64 %conv295, i64 4, %struct._IO_FILE* %75) #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 571, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %76 = load i32* %34, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([31 x i8]* @.str48, i64 0, i64 0), i32 %76) #8
  %77 = load i32* %n_ug109, align 4, !tbaa !3
  %conv300 = sext i32 %77 to i64
  %call301 = call i8* @__ckd_calloc__(i64 %conv300, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 573) #8
  %78 = bitcast i8* %call301 to %struct.tginfo_s**
  %tginfo = getelementptr inbounds i8* %call, i64 72
  %79 = bitcast i8* %tginfo to %struct.tginfo_s***
  store %struct.tginfo_s** %78, %struct.tginfo_s*** %79, align 8, !tbaa !0
  br label %if.end344

if.else303:                                       ; preds = %if.end256
  %bg304 = getelementptr inbounds i8* %call, i64 48
  call void @llvm.memset.p0i8.i64(i8* %bg304, i8 0, i64 16, i32 8, i1 false)
  %80 = load i32* %32, align 4, !tbaa !3
  %cmp307 = icmp sgt i32 %80, 0
  br i1 %cmp307, label %if.then309, label %if.end324

if.then309:                                       ; preds = %if.else303
  %81 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call311 = call i64 @ftell(%struct._IO_FILE* %81) #8
  %conv312 = trunc i64 %call311 to i32
  %bgoff313 = getelementptr inbounds i8* %call, i64 140
  %82 = bitcast i8* %bgoff313 to i32*
  store i32 %conv312, i32* %82, align 4, !tbaa !3
  %83 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %84 = load i32* %32, align 4, !tbaa !3
  %add316 = add nsw i32 %84, 1
  %conv317 = sext i32 %add316 to i64
  %mul = shl nsw i64 %conv317, 3
  %call318 = call i32 @fseek(%struct._IO_FILE* %83, i64 %mul, i32 1) #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 583, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %85 = load i32* %32, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([23 x i8]* @.str49, i64 0, i64 0), i32 %85) #8
  %86 = load i32* %n_ug109, align 4, !tbaa !3
  %conv321 = sext i32 %86 to i64
  %call322 = call i8* @__ckd_calloc__(i64 %conv321, i64 16, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 584) #8
  %87 = bitcast i8* %call322 to %struct.membg_t*
  %membg323 = getelementptr inbounds i8* %call, i64 64
  %88 = bitcast i8* %membg323 to %struct.membg_t**
  store %struct.membg_t* %87, %struct.membg_t** %88, align 8, !tbaa !0
  br label %if.end324

if.end324:                                        ; preds = %if.then309, %if.else303
  %89 = load i32* %34, align 4, !tbaa !3
  %cmp326 = icmp sgt i32 %89, 0
  br i1 %cmp326, label %if.then328, label %if.end344

if.then328:                                       ; preds = %if.end324
  %90 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call330 = call i64 @ftell(%struct._IO_FILE* %90) #8
  %conv331 = trunc i64 %call330 to i32
  %tgoff332 = getelementptr inbounds i8* %call, i64 144
  %91 = bitcast i8* %tgoff332 to i32*
  store i32 %conv331, i32* %91, align 4, !tbaa !3
  %92 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %93 = load i32* %34, align 4, !tbaa !3
  %conv335 = sext i32 %93 to i64
  %mul336 = shl nsw i64 %conv335, 2
  %call337 = call i32 @fseek(%struct._IO_FILE* %92, i64 %mul336, i32 1) #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 591, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %94 = load i32* %34, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([24 x i8]* @.str50, i64 0, i64 0), i32 %94) #8
  %95 = load i32* %n_ug109, align 4, !tbaa !3
  %conv340 = sext i32 %95 to i64
  %call341 = call i8* @__ckd_calloc__(i64 %conv340, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 593) #8
  %96 = bitcast i8* %call341 to %struct.tginfo_s**
  %tginfo342 = getelementptr inbounds i8* %call, i64 72
  %97 = bitcast i8* %tginfo342 to %struct.tginfo_s***
  store %struct.tginfo_s** %96, %struct.tginfo_s*** %97, align 8, !tbaa !0
  br label %if.end344

if.end344:                                        ; preds = %if.end324, %if.end285, %if.then328, %if.then289
  %98 = load i32* %32, align 4, !tbaa !3
  %cmp346 = icmp sgt i32 %98, 0
  br i1 %cmp346, label %if.then348, label %if.end418

if.then348:                                       ; preds = %if.end344
  %call349 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %n_bgprob = getelementptr inbounds i8* %call, i64 112
  %99 = bitcast i8* %n_bgprob to i32*
  store i32 %call349, i32* %99, align 4, !tbaa !3
  %call349.off = add i32 %call349, -1
  %100 = icmp ugt i32 %call349.off, 65535
  br i1 %100, label %if.then357, label %if.end359

if.then357:                                       ; preds = %if.then348
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 601, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %101 = load i32* %99, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str51, i64 0, i64 0), i32 %101) #8
  %.pre1059 = load i32* %99, align 4, !tbaa !3
  br label %if.end359

if.end359:                                        ; preds = %if.then348, %if.then357
  %102 = phi i32 [ %call349, %if.then348 ], [ %.pre1059, %if.then357 ]
  %conv361 = sext i32 %102 to i64
  %call362 = call i8* @__ckd_calloc__(i64 %conv361, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 604) #8
  %103 = bitcast i8* %call362 to %union.lmlog_t*
  %bgprob = getelementptr inbounds i8* %call, i64 80
  %104 = bitcast i8* %bgprob to %union.lmlog_t**
  store %union.lmlog_t* %103, %union.lmlog_t** %104, align 8, !tbaa !0
  %105 = load i32* %99, align 4, !tbaa !3
  %conv365 = sext i32 %105 to i64
  %106 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call367 = call i64 @fread(i8* %call362, i64 4, i64 %conv365, %struct._IO_FILE* %106) #8
  %107 = load i32* %99, align 4, !tbaa !3
  %conv369 = sext i32 %107 to i64
  %cmp370 = icmp eq i64 %call367, %conv369
  br i1 %cmp370, label %if.end373, label %if.then372

if.then372:                                       ; preds = %if.end359
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 607, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end373

if.end373:                                        ; preds = %if.end359, %if.then372
  %108 = load i32* %42, align 4, !tbaa !3
  %tobool375 = icmp eq i32 %108, 0
  br i1 %tobool375, label %if.end416, label %for.cond377.preheader

for.cond377.preheader:                            ; preds = %if.end373
  %109 = load i32* %99, align 4, !tbaa !3
  %cmp3791037 = icmp sgt i32 %109, 0
  br i1 %cmp3791037, label %for.body381.lr.ph, label %if.end416

for.body381.lr.ph:                                ; preds = %for.cond377.preheader
  %110 = load %union.lmlog_t** %104, align 8, !tbaa !0
  br label %for.body381

for.body381:                                      ; preds = %for.body381.lr.ph, %for.body381
  %indvars.iv1052 = phi i64 [ 0, %for.body381.lr.ph ], [ %indvars.iv.next1053, %for.body381 ]
  %arrayidx384 = getelementptr inbounds %union.lmlog_t* %110, i64 %indvars.iv1052
  %l385 = bitcast %union.lmlog_t* %arrayidx384 to i32*
  %111 = load i32* %l385, align 4, !tbaa !3
  %or408 = call i32 @llvm.bswap.i32(i32 %111)
  store i32 %or408, i32* %l385, align 4, !tbaa !3
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  %112 = load i32* %99, align 4, !tbaa !3
  %113 = trunc i64 %indvars.iv.next1053 to i32
  %cmp379 = icmp slt i32 %113, %112
  br i1 %cmp379, label %for.body381, label %if.end416

if.end416:                                        ; preds = %for.cond377.preheader, %for.body381, %if.end373
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 613, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %114 = load i32* %99, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([25 x i8]* @.str52, i64 0, i64 0), i32 %114) #8
  br label %if.end418

if.end418:                                        ; preds = %if.end344, %if.end416
  %115 = load i32* %34, align 4, !tbaa !3
  %cmp420 = icmp sgt i32 %115, 0
  br i1 %cmp420, label %if.then422, label %if.end619

if.then422:                                       ; preds = %if.end418
  %call423 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %n_tgbowt = getelementptr inbounds i8* %call, i64 120
  %116 = bitcast i8* %n_tgbowt to i32*
  store i32 %call423, i32* %116, align 4, !tbaa !3
  %call423.off = add i32 %call423, -1
  %117 = icmp ugt i32 %call423.off, 65535
  br i1 %117, label %if.then431, label %if.end433

if.then431:                                       ; preds = %if.then422
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 620, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %118 = load i32* %116, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str53, i64 0, i64 0), i32 %118) #8
  %.pre1060 = load i32* %116, align 4, !tbaa !3
  br label %if.end433

if.end433:                                        ; preds = %if.then422, %if.then431
  %119 = phi i32 [ %call423, %if.then422 ], [ %.pre1060, %if.then431 ]
  %conv435 = sext i32 %119 to i64
  %call436 = call i8* @__ckd_calloc__(i64 %conv435, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 623) #8
  %120 = bitcast i8* %call436 to %union.lmlog_t*
  %tgbowt = getelementptr inbounds i8* %call, i64 96
  %121 = bitcast i8* %tgbowt to %union.lmlog_t**
  store %union.lmlog_t* %120, %union.lmlog_t** %121, align 8, !tbaa !0
  %122 = load i32* %116, align 4, !tbaa !3
  %conv439 = sext i32 %122 to i64
  %123 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call441 = call i64 @fread(i8* %call436, i64 4, i64 %conv439, %struct._IO_FILE* %123) #8
  %124 = load i32* %116, align 4, !tbaa !3
  %conv443 = sext i32 %124 to i64
  %cmp444 = icmp eq i64 %call441, %conv443
  br i1 %cmp444, label %if.end447, label %if.then446

if.then446:                                       ; preds = %if.end433
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 626, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end447

if.end447:                                        ; preds = %if.end433, %if.then446
  %125 = load i32* %42, align 4, !tbaa !3
  %tobool449 = icmp eq i32 %125, 0
  br i1 %tobool449, label %if.end490, label %for.cond451.preheader

for.cond451.preheader:                            ; preds = %if.end447
  %126 = load i32* %116, align 4, !tbaa !3
  %cmp4531035 = icmp sgt i32 %126, 0
  br i1 %cmp4531035, label %for.body455.lr.ph, label %if.end490

for.body455.lr.ph:                                ; preds = %for.cond451.preheader
  %127 = load %union.lmlog_t** %121, align 8, !tbaa !0
  br label %for.body455

for.body455:                                      ; preds = %for.body455.lr.ph, %for.body455
  %indvars.iv1050 = phi i64 [ 0, %for.body455.lr.ph ], [ %indvars.iv.next1051, %for.body455 ]
  %arrayidx458 = getelementptr inbounds %union.lmlog_t* %127, i64 %indvars.iv1050
  %l459 = bitcast %union.lmlog_t* %arrayidx458 to i32*
  %128 = load i32* %l459, align 4, !tbaa !3
  %or482 = call i32 @llvm.bswap.i32(i32 %128)
  store i32 %or482, i32* %l459, align 4, !tbaa !3
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 1
  %129 = load i32* %116, align 4, !tbaa !3
  %130 = trunc i64 %indvars.iv.next1051 to i32
  %cmp453 = icmp slt i32 %130, %129
  br i1 %cmp453, label %for.body455, label %if.end490

if.end490:                                        ; preds = %for.cond451.preheader, %for.body455, %if.end447
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 631, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %131 = load i32* %116, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([26 x i8]* @.str54, i64 0, i64 0), i32 %131) #8
  %call492 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  %n_tgprob = getelementptr inbounds i8* %call, i64 116
  %132 = bitcast i8* %n_tgprob to i32*
  store i32 %call492, i32* %132, align 4, !tbaa !3
  %call492.off = add i32 %call492, -1
  %133 = icmp ugt i32 %call492.off, 65535
  br i1 %133, label %if.then500, label %if.end502

if.then500:                                       ; preds = %if.end490
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 636, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %134 = load i32* %132, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str53, i64 0, i64 0), i32 %134) #8
  %.pre1061 = load i32* %132, align 4, !tbaa !3
  br label %if.end502

if.end502:                                        ; preds = %if.end490, %if.then500
  %135 = phi i32 [ %call492, %if.end490 ], [ %.pre1061, %if.then500 ]
  %conv504 = sext i32 %135 to i64
  %call505 = call i8* @__ckd_calloc__(i64 %conv504, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 639) #8
  %136 = bitcast i8* %call505 to %union.lmlog_t*
  %tgprob = getelementptr inbounds i8* %call, i64 88
  %137 = bitcast i8* %tgprob to %union.lmlog_t**
  store %union.lmlog_t* %136, %union.lmlog_t** %137, align 8, !tbaa !0
  %138 = load i32* %132, align 4, !tbaa !3
  %conv508 = sext i32 %138 to i64
  %139 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call510 = call i64 @fread(i8* %call505, i64 4, i64 %conv508, %struct._IO_FILE* %139) #8
  %140 = load i32* %132, align 4, !tbaa !3
  %conv512 = sext i32 %140 to i64
  %cmp513 = icmp eq i64 %call510, %conv512
  br i1 %cmp513, label %if.end516, label %if.then515

if.then515:                                       ; preds = %if.end502
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 642, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end516

if.end516:                                        ; preds = %if.end502, %if.then515
  %141 = load i32* %42, align 4, !tbaa !3
  %tobool518 = icmp eq i32 %141, 0
  br i1 %tobool518, label %if.end559, label %for.cond520.preheader

for.cond520.preheader:                            ; preds = %if.end516
  %142 = load i32* %132, align 4, !tbaa !3
  %cmp5221033 = icmp sgt i32 %142, 0
  br i1 %cmp5221033, label %for.body524.lr.ph, label %if.end559

for.body524.lr.ph:                                ; preds = %for.cond520.preheader
  %143 = load %union.lmlog_t** %137, align 8, !tbaa !0
  br label %for.body524

for.body524:                                      ; preds = %for.body524.lr.ph, %for.body524
  %indvars.iv1048 = phi i64 [ 0, %for.body524.lr.ph ], [ %indvars.iv.next1049, %for.body524 ]
  %arrayidx527 = getelementptr inbounds %union.lmlog_t* %143, i64 %indvars.iv1048
  %l528 = bitcast %union.lmlog_t* %arrayidx527 to i32*
  %144 = load i32* %l528, align 4, !tbaa !3
  %or551 = call i32 @llvm.bswap.i32(i32 %144)
  store i32 %or551, i32* %l528, align 4, !tbaa !3
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %145 = load i32* %132, align 4, !tbaa !3
  %146 = trunc i64 %indvars.iv.next1049 to i32
  %cmp522 = icmp slt i32 %146, %145
  br i1 %cmp522, label %for.body524, label %if.end559

if.end559:                                        ; preds = %for.cond520.preheader, %for.body524, %if.end516
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 647, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %147 = load i32* %132, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([26 x i8]* @.str55, i64 0, i64 0), i32 %147) #8
  %call561 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call561, i32* %k, align 4, !tbaa !3
  %148 = load i32* %32, align 4, !tbaa !3
  %add563 = add nsw i32 %148, 1
  %149 = load i32* %31, align 4, !tbaa !3
  %div = sdiv i32 %add563, %149
  %add565 = add nsw i32 %div, 1
  %cmp566 = icmp eq i32 %call561, %add565
  br i1 %cmp566, label %if.end569, label %if.then568

if.then568:                                       ; preds = %if.end559
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 652, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %150 = load i32* %k, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str56, i64 0, i64 0), i32 %150) #8
  %.pre1062 = load i32* %k, align 4, !tbaa !3
  br label %if.end569

if.end569:                                        ; preds = %if.end559, %if.then568
  %151 = phi i32 [ %call561, %if.end559 ], [ %.pre1062, %if.then568 ]
  %conv570 = sext i32 %151 to i64
  %call571 = call i8* @__ckd_calloc__(i64 %conv570, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 655) #8
  %152 = bitcast i8* %call571 to i32*
  %tg_segbase = getelementptr inbounds i8* %call, i64 104
  %153 = bitcast i8* %tg_segbase to i32**
  store i32* %152, i32** %153, align 8, !tbaa !0
  %154 = load i32* %k, align 4, !tbaa !3
  %conv573 = sext i32 %154 to i64
  %155 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call575 = call i64 @fread(i8* %call571, i64 4, i64 %conv573, %struct._IO_FILE* %155) #8
  %156 = load i32* %k, align 4, !tbaa !3
  %conv576 = sext i32 %156 to i64
  %cmp577 = icmp eq i64 %call575, %conv576
  br i1 %cmp577, label %if.end580, label %if.then579

if.then579:                                       ; preds = %if.end569
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 657, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  br label %if.end580

if.end580:                                        ; preds = %if.end569, %if.then579
  %157 = load i32* %42, align 4, !tbaa !3
  %tobool582 = icmp eq i32 %157, 0
  br i1 %tobool582, label %if.end617, label %for.cond584.preheader

for.cond584.preheader:                            ; preds = %if.end580
  %158 = load i32* %k, align 4, !tbaa !3
  %cmp5851031 = icmp sgt i32 %158, 0
  br i1 %cmp5851031, label %for.body587.lr.ph, label %if.end617

for.body587.lr.ph:                                ; preds = %for.cond584.preheader
  %159 = load i32** %153, align 8, !tbaa !0
  br label %for.body587

for.body587:                                      ; preds = %for.body587.lr.ph, %for.body587
  %indvars.iv1046 = phi i64 [ 0, %for.body587.lr.ph ], [ %indvars.iv.next1047, %for.body587 ]
  %arrayidx590 = getelementptr inbounds i32* %159, i64 %indvars.iv1046
  %160 = load i32* %arrayidx590, align 4, !tbaa !3
  %or610 = call i32 @llvm.bswap.i32(i32 %160)
  store i32 %or610, i32* %arrayidx590, align 4, !tbaa !3
  %indvars.iv.next1047 = add i64 %indvars.iv1046, 1
  %161 = load i32* %k, align 4, !tbaa !3
  %162 = trunc i64 %indvars.iv.next1047 to i32
  %cmp585 = icmp slt i32 %162, %161
  br i1 %cmp585, label %for.body587, label %if.end617

if.end617:                                        ; preds = %for.cond584.preheader, %for.body587, %if.end580
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 662, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %163 = load i32* %k, align 4, !tbaa !3
  %164 = load i32* %31, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str57, i64 0, i64 0), i32 %163, i32 %164) #8
  br label %if.end619

if.end619:                                        ; preds = %if.end617, %if.end418
  %call620 = call fastcc i32 @lm_fread_int32(%struct.lm_s* %1) #9
  store i32 %call620, i32* %k, align 4, !tbaa !3
  %cmp621 = icmp slt i32 %call620, 1
  br i1 %cmp621, label %if.then623, label %if.end624

if.then623:                                       ; preds = %if.end619
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 668, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %165 = load i32* %k, align 4, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([26 x i8]* @.str58, i64 0, i64 0), i32 %165) #8
  %.pre1063 = load i32* %k, align 4, !tbaa !3
  br label %if.end624

if.end624:                                        ; preds = %if.then623, %if.end619
  %166 = phi i32 [ %.pre1063, %if.then623 ], [ %call620, %if.end619 ]
  %conv625 = sext i32 %166 to i64
  %call626 = call i8* @__ckd_calloc__(i64 %conv625, i64 1, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 670) #8
  %167 = load i32* %k, align 4, !tbaa !3
  %conv627 = sext i32 %167 to i64
  %168 = load %struct._IO_FILE** %3, align 8, !tbaa !0
  %call629 = call i64 @fread(i8* %call626, i64 1, i64 %conv627, %struct._IO_FILE* %168) #8
  %169 = load i32* %k, align 4, !tbaa !3
  %conv630 = sext i32 %169 to i64
  %cmp631 = icmp eq i64 %call629, %conv630
  br i1 %cmp631, label %for.cond635.preheader, label %if.then633

if.then633:                                       ; preds = %if.end624
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 672, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0), i8* %file) #8
  %.pre1064 = load i32* %k, align 4, !tbaa !3
  br label %for.cond635.preheader

for.cond635.preheader:                            ; preds = %if.end624, %if.then633
  %170 = phi i32 [ %169, %if.end624 ], [ %.pre1064, %if.then633 ]
  %cmp6361027 = icmp sgt i32 %170, 0
  br i1 %cmp6361027, label %for.body638, label %for.end649

for.body638:                                      ; preds = %for.cond635.preheader, %for.body638
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %for.body638 ], [ 0, %for.cond635.preheader ]
  %j.01028 = phi i32 [ %inc645.j.0, %for.body638 ], [ 0, %for.cond635.preheader ]
  %arrayidx640 = getelementptr inbounds i8* %call626, i64 %indvars.iv1044
  %171 = load i8* %arrayidx640, align 1, !tbaa !1
  %cmp642 = icmp eq i8 %171, 0
  %inc645 = zext i1 %cmp642 to i32
  %inc645.j.0 = add nsw i32 %inc645, %j.01028
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %172 = trunc i64 %indvars.iv.next1045 to i32
  %cmp636 = icmp slt i32 %172, %170
  br i1 %cmp636, label %for.body638, label %for.end649

for.end649:                                       ; preds = %for.body638, %for.cond635.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond635.preheader ], [ %inc645.j.0, %for.body638 ]
  %173 = load i32* %n_ug109, align 4, !tbaa !3
  %cmp651 = icmp eq i32 %j.0.lcssa, %173
  br i1 %cmp651, label %if.end654, label %if.then653

if.then653:                                       ; preds = %for.end649
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 679, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([16 x i8]* @.str59, i64 0, i64 0), i32 %j.0.lcssa) #8
  %.pre1065 = load i32* %n_ug109, align 4, !tbaa !3
  br label %if.end654

if.end654:                                        ; preds = %for.end649, %if.then653
  %174 = phi i32 [ %j.0.lcssa, %for.end649 ], [ %.pre1065, %if.then653 ]
  %conv656 = sext i32 %174 to i64
  %call657 = call i8* @__ckd_calloc__(i64 %conv656, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 683) #8
  %175 = bitcast i8* %call657 to i8**
  %wordstr = getelementptr inbounds i8* %call, i64 16
  %176 = bitcast i8* %wordstr to i8***
  store i8** %175, i8*** %176, align 8, !tbaa !0
  %177 = load i32* %n_ug109, align 4, !tbaa !3
  %cmp6601020 = icmp sgt i32 %177, 0
  br i1 %cmp6601020, label %for.body662, label %for.end693

for.body662:                                      ; preds = %if.end654, %if.end677
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end677 ], [ 0, %if.end654 ]
  %i.61024 = phi i32 [ %inc692, %if.end677 ], [ 0, %if.end654 ]
  %endwid.01023 = phi i16 [ %endwid.1, %if.end677 ], [ -1, %if.end654 ]
  %startwid.01022 = phi i16 [ %startwid.1, %if.end677 ], [ -1, %if.end654 ]
  %j.21021 = phi i64 [ %phitmp, %if.end677 ], [ 0, %if.end654 ]
  %add.ptr = getelementptr inbounds i8* %call626, i64 %j.21021
  %call663 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0)) #7
  %cmp664 = icmp eq i32 %call663, 0
  br i1 %cmp664, label %if.then666, label %if.else668

if.then666:                                       ; preds = %for.body662
  %conv667 = trunc i64 %indvars.iv to i16
  br label %if.end677

if.else668:                                       ; preds = %for.body662
  %call671 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str61, i64 0, i64 0)) #7
  %cmp672 = icmp eq i32 %call671, 0
  %conv675 = trunc i64 %indvars.iv to i16
  %conv675.endwid.0 = select i1 %cmp672, i16 %conv675, i16 %endwid.01023
  br label %if.end677

if.end677:                                        ; preds = %if.else668, %if.then666
  %startwid.1 = phi i16 [ %conv667, %if.then666 ], [ %startwid.01022, %if.else668 ]
  %endwid.1 = phi i16 [ %endwid.01023, %if.then666 ], [ %conv675.endwid.0, %if.else668 ]
  %call680 = call i8* @__ckd_salloc__(i8* %add.ptr, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 691) #8
  %178 = load i8*** %176, align 8, !tbaa !0
  %arrayidx683 = getelementptr inbounds i8** %178, i64 %indvars.iv
  store i8* %call680, i8** %arrayidx683, align 8, !tbaa !0
  %call686 = call i64 @strlen(i8* %add.ptr) #7
  %add687 = add i64 %j.21021, 1
  %add689 = add i64 %add687, %call686
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc692 = add nsw i32 %i.61024, 1
  %sext = shl i64 %add689, 32
  %phitmp = ashr exact i64 %sext, 32
  %179 = load i32* %n_ug109, align 4, !tbaa !3
  %180 = trunc i64 %indvars.iv.next to i32
  %cmp660 = icmp slt i32 %180, %179
  br i1 %cmp660, label %for.body662, label %for.end693

for.end693:                                       ; preds = %if.end677, %if.end654
  %i.6.lcssa = phi i32 [ 0, %if.end654 ], [ %inc692, %if.end677 ]
  %endwid.0.lcssa = phi i16 [ -1, %if.end654 ], [ %endwid.1, %if.end677 ]
  %startwid.0.lcssa = phi i16 [ -1, %if.end654 ], [ %startwid.1, %if.end677 ]
  call void @free(i8* %call626) #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 696, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([18 x i8]* @.str62, i64 0, i64 0), i32 %i.6.lcssa) #8
  %cmp695 = icmp eq i16 %startwid.0.lcssa, -1
  br i1 %cmp695, label %if.end702, label %if.then697

if.then697:                                       ; preds = %for.end693
  %idxprom698 = zext i16 %startwid.0.lcssa to i64
  %181 = load %struct.ug_t** %38, align 8, !tbaa !0
  %f = getelementptr inbounds %struct.ug_t* %181, i64 %idxprom698, i32 1, i32 0
  store float -9.900000e+01, float* %f, align 4, !tbaa !4
  %startlwid = getelementptr inbounds i8* %call, i64 24
  %182 = bitcast i8* %startlwid to i16*
  store i16 %startwid.0.lcssa, i16* %182, align 2, !tbaa !5
  br label %if.end702

if.end702:                                        ; preds = %for.end693, %if.then697
  %cmp704 = icmp eq i16 %endwid.0.lcssa, -1
  br i1 %cmp704, label %if.end712, label %if.then706

if.then706:                                       ; preds = %if.end702
  %idxprom707 = zext i16 %endwid.0.lcssa to i64
  %183 = load %struct.ug_t** %38, align 8, !tbaa !0
  %f711 = getelementptr inbounds %struct.ug_t* %183, i64 %idxprom707, i32 2, i32 0
  store float -9.900000e+01, float* %f711, align 4, !tbaa !4
  %finishlwid = getelementptr inbounds i8* %call, i64 26
  %184 = bitcast i8* %finishlwid to i16*
  store i16 %endwid.0.lcssa, i16* %184, align 2, !tbaa !5
  br label %if.end712

if.end712:                                        ; preds = %if.end702, %if.then706
  %cmp713 = icmp sgt i32 %n_lmclass_used, 0
  br i1 %cmp713, label %for.body.lr.ph.i, label %if.end717

for.body.lr.ph.i:                                 ; preds = %if.end712
  %conv.i = sext i32 %n_lmclass_used to i64
  %call.i = call i8* @__ckd_calloc__(i64 %conv.i, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 436) #8
  %185 = bitcast i8* %call.i to %struct.lmclass_s**
  %lmclass1.i = getelementptr inbounds i8* %call, i64 224
  %186 = bitcast i8* %lmclass1.i to %struct.lmclass_s***
  store %struct.lmclass_s** %185, %struct.lmclass_s*** %186, align 8, !tbaa !0
  %187 = load %struct.lmclass_s** %lmclass, align 8, !tbaa !0
  store %struct.lmclass_s* %187, %struct.lmclass_s** %185, align 8, !tbaa !0
  %exitcond.i1018 = icmp eq i32 %n_lmclass_used, 1
  br i1 %exitcond.i1018, label %lm_build_lmclass_info.exit, label %for.body.for.body_crit_edge.i

for.body.for.body_crit_edge.i:                    ; preds = %for.body.lr.ph.i, %for.body.for.body_crit_edge.i
  %indvars.iv.next.i1019 = phi i64 [ %indvars.iv.next.i, %for.body.for.body_crit_edge.i ], [ 1, %for.body.lr.ph.i ]
  %.pre.i = load %struct.lmclass_s*** %186, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds %struct.lmclass_s** %lmclass, i64 %indvars.iv.next.i1019
  %188 = load %struct.lmclass_s** %arrayidx.i, align 8, !tbaa !0
  %arrayidx6.i = getelementptr inbounds %struct.lmclass_s** %.pre.i, i64 %indvars.iv.next.i1019
  store %struct.lmclass_s* %188, %struct.lmclass_s** %arrayidx6.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.next.i1019, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_lmclass_used
  br i1 %exitcond, label %lm_build_lmclass_info.exit, label %for.body.for.body_crit_edge.i

lm_build_lmclass_info.exit:                       ; preds = %for.body.for.body_crit_edge.i, %for.body.lr.ph.i
  %n_lmclass.i = getelementptr inbounds i8* %call, i64 232
  %189 = bitcast i8* %n_lmclass.i to i32*
  store i32 %n_lmclass_used, i32* %189, align 4, !tbaa !3
  %190 = load i32* %2, align 4, !tbaa !3
  %conv8.i = sext i32 %190 to i64
  %call9.i = call i8* @__ckd_calloc__(i64 %conv8.i, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 443) #8
  %191 = bitcast i8* %call9.i to i32*
  %inclass_ugscore.i = getelementptr inbounds i8* %call, i64 240
  %192 = bitcast i8* %inclass_ugscore.i to i32**
  store i32* %191, i32** %192, align 8, !tbaa !0
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 445, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %193 = load i32* %2, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([29 x i8]* @.str63, i64 0, i64 0), i32 %193) #8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 446, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), i32 %n_lmclass_used) #8
  br label %if.end717

if.end717:                                        ; preds = %lm_build_lmclass_info.exit, %if.end712
  %194 = load i32* %n_ug109, align 4, !tbaa !3
  %cmp104.i = icmp sgt i32 %194, 0
  br i1 %cmp104.i, label %for.body.lr.ph.i1010, label %for.end.i

for.body.lr.ph.i1010:                             ; preds = %if.end717
  %.pre114.i = load %struct.ug_t** %38, align 8, !tbaa !0
  br label %for.body.i1014

for.body.i1014:                                   ; preds = %for.body.i1014, %for.body.lr.ph.i1010
  %195 = phi %struct.ug_t* [ %.pre114.i, %for.body.lr.ph.i1010 ], [ %199, %for.body.i1014 ]
  %indvars.iv110.i = phi i64 [ 0, %for.body.lr.ph.i1010 ], [ %indvars.iv.next111.i, %for.body.i1014 ]
  %f.i = getelementptr inbounds %struct.ug_t* %195, i64 %indvars.iv110.i, i32 1, i32 0
  %196 = load float* %f.i, align 4, !tbaa !4
  %conv.i1011 = fpext float %196 to double
  %call.i1012 = call i32 @log10_to_logs3(double %conv.i1011) #8
  %197 = load %struct.ug_t** %38, align 8, !tbaa !0
  %prob4.i = getelementptr inbounds %struct.ug_t* %197, i64 %indvars.iv110.i, i32 1
  %l.i = bitcast %union.lmlog_t* %prob4.i to i32*
  store i32 %call.i1012, i32* %l.i, align 4, !tbaa !3
  %f8.i = getelementptr inbounds %struct.ug_t* %197, i64 %indvars.iv110.i, i32 2, i32 0
  %198 = load float* %f8.i, align 4, !tbaa !4
  %conv9.i = fpext float %198 to double
  %call10.i = call i32 @log10_to_logs3(double %conv9.i) #8
  %199 = load %struct.ug_t** %38, align 8, !tbaa !0
  %bowt14.i = getelementptr inbounds %struct.ug_t* %199, i64 %indvars.iv110.i, i32 2
  %l15.i = bitcast %union.lmlog_t* %bowt14.i to i32*
  store i32 %call10.i, i32* %l15.i, align 4, !tbaa !3
  %indvars.iv.next111.i = add i64 %indvars.iv110.i, 1
  %200 = load i32* %n_ug109, align 4, !tbaa !3
  %201 = trunc i64 %indvars.iv.next111.i to i32
  %cmp.i1013 = icmp slt i32 %201, %200
  br i1 %cmp.i1013, label %for.body.i1014, label %for.end.i

for.end.i:                                        ; preds = %for.body.i1014, %if.end717
  %call.i.i = call i32 @logs3(double %uw) #8
  %sub.i.i = fsub double 1.000000e+00, %uw
  %call1.i.i = call i32 @logs3(double %sub.i.i) #8
  %202 = load i32* %n_ug109, align 4, !tbaa !3
  %sub2.i.i = add nsw i32 %202, -1
  %conv.i.i = sitofp i32 %sub2.i.i to double
  %div.i.i = fdiv double 1.000000e+00, %conv.i.i
  %call3.i.i = call i32 @logs3(double %div.i.i) #8
  %203 = load i32* %n_ug109, align 4, !tbaa !3
  %cmp27.i.i = icmp sgt i32 %203, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %for.cond16.preheader.i

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %add11.i.i = add nsw i32 %call3.i.i, %call1.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %204 = phi i32 [ %203, %for.body.lr.ph.i.i ], [ %210, %for.inc.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %205 = load i8*** %176, align 8, !tbaa !0
  %arrayidx.i.i = getelementptr inbounds i8** %205, i64 %indvars.iv.i.i
  %206 = load i8** %arrayidx.i.i, align 8, !tbaa !0
  %call6.i.i = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0)) #7
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %207 = load %struct.ug_t** %38, align 8, !tbaa !0
  %prob.i.i = getelementptr inbounds %struct.ug_t* %207, i64 %indvars.iv.i.i, i32 1
  %l.i.i = bitcast %union.lmlog_t* %prob.i.i to i32*
  %208 = load i32* %l.i.i, align 4, !tbaa !3
  %add.i.i = add nsw i32 %208, %call.i.i
  %call12.i.i = call i32 @logs3_add(i32 %add.i.i, i32 %add11.i.i) #8
  %209 = load %struct.ug_t** %38, align 8, !tbaa !0
  %prob16.i.i = getelementptr inbounds %struct.ug_t* %209, i64 %indvars.iv.i.i, i32 1
  %l17.i.i = bitcast %union.lmlog_t* %prob16.i.i to i32*
  store i32 %call12.i.i, i32* %l17.i.i, align 4, !tbaa !3
  %.pre.i.i = load i32* %n_ug109, align 4, !tbaa !3
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i
  %210 = phi i32 [ %204, %for.body.i.i ], [ %.pre.i.i, %if.then.i.i ]
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %211 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp.i.i = icmp slt i32 %211, %210
  br i1 %cmp.i.i, label %for.body.i.i, label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.inc.i.i, %for.end.i
  %n_bgprob.i = getelementptr inbounds i8* %call, i64 112
  %212 = bitcast i8* %n_bgprob.i to i32*
  %213 = load i32* %212, align 4, !tbaa !3
  %cmp17102.i = icmp sgt i32 %213, 0
  br i1 %cmp17102.i, label %for.body19.lr.ph.i, label %for.end31.i

for.body19.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %bgprob.i = getelementptr inbounds i8* %call, i64 80
  %214 = bitcast i8* %bgprob.i to %union.lmlog_t**
  %.pre113.i = load %union.lmlog_t** %214, align 8, !tbaa !0
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i, %for.body19.lr.ph.i
  %215 = phi %union.lmlog_t* [ %.pre113.i, %for.body19.lr.ph.i ], [ %217, %for.body19.i ]
  %indvars.iv108.i = phi i64 [ 0, %for.body19.lr.ph.i ], [ %indvars.iv.next109.i, %for.body19.i ]
  %f22.i = getelementptr inbounds %union.lmlog_t* %215, i64 %indvars.iv108.i, i32 0
  %216 = load float* %f22.i, align 4, !tbaa !4
  %conv23.i = fpext float %216 to double
  %call24.i = call i32 @log10_to_logs3(double %conv23.i) #8
  %217 = load %union.lmlog_t** %214, align 8, !tbaa !0
  %arrayidx27.i = getelementptr inbounds %union.lmlog_t* %217, i64 %indvars.iv108.i
  %l28.i = bitcast %union.lmlog_t* %arrayidx27.i to i32*
  store i32 %call24.i, i32* %l28.i, align 4, !tbaa !3
  %indvars.iv.next109.i = add i64 %indvars.iv108.i, 1
  %218 = load i32* %212, align 4, !tbaa !3
  %219 = trunc i64 %indvars.iv.next109.i to i32
  %cmp17.i = icmp slt i32 %219, %218
  br i1 %cmp17.i, label %for.body19.i, label %for.end31.i

for.end31.i:                                      ; preds = %for.body19.i, %for.cond16.preheader.i
  %220 = load i32* %34, align 4, !tbaa !3
  %cmp32.i = icmp sgt i32 %220, 0
  br i1 %cmp32.i, label %for.cond34.preheader.i, label %lm2logs3.exit

for.cond34.preheader.i:                           ; preds = %for.end31.i
  %n_tgprob.i = getelementptr inbounds i8* %call, i64 116
  %221 = bitcast i8* %n_tgprob.i to i32*
  %222 = load i32* %221, align 4, !tbaa !3
  %cmp35100.i = icmp sgt i32 %222, 0
  br i1 %cmp35100.i, label %for.body37.lr.ph.i, label %for.cond50.preheader.i

for.body37.lr.ph.i:                               ; preds = %for.cond34.preheader.i
  %tgprob.i = getelementptr inbounds i8* %call, i64 88
  %223 = bitcast i8* %tgprob.i to %union.lmlog_t**
  %.pre112.i = load %union.lmlog_t** %223, align 8, !tbaa !0
  br label %for.body37.i

for.cond50.preheader.i:                           ; preds = %for.body37.i, %for.cond34.preheader.i
  %n_tgbowt.i = getelementptr inbounds i8* %call, i64 120
  %224 = bitcast i8* %n_tgbowt.i to i32*
  %225 = load i32* %224, align 4, !tbaa !3
  %cmp5198.i = icmp sgt i32 %225, 0
  br i1 %cmp5198.i, label %for.body53.lr.ph.i, label %lm2logs3.exit

for.body53.lr.ph.i:                               ; preds = %for.cond50.preheader.i
  %tgbowt.i = getelementptr inbounds i8* %call, i64 96
  %226 = bitcast i8* %tgbowt.i to %union.lmlog_t**
  %.pre.i1015 = load %union.lmlog_t** %226, align 8, !tbaa !0
  br label %for.body53.i

for.body37.i:                                     ; preds = %for.body37.i, %for.body37.lr.ph.i
  %227 = phi %union.lmlog_t* [ %.pre112.i, %for.body37.lr.ph.i ], [ %229, %for.body37.i ]
  %indvars.iv106.i = phi i64 [ 0, %for.body37.lr.ph.i ], [ %indvars.iv.next107.i, %for.body37.i ]
  %f40.i = getelementptr inbounds %union.lmlog_t* %227, i64 %indvars.iv106.i, i32 0
  %228 = load float* %f40.i, align 4, !tbaa !4
  %conv41.i = fpext float %228 to double
  %call42.i = call i32 @log10_to_logs3(double %conv41.i) #8
  %229 = load %union.lmlog_t** %223, align 8, !tbaa !0
  %arrayidx45.i = getelementptr inbounds %union.lmlog_t* %229, i64 %indvars.iv106.i
  %l46.i = bitcast %union.lmlog_t* %arrayidx45.i to i32*
  store i32 %call42.i, i32* %l46.i, align 4, !tbaa !3
  %indvars.iv.next107.i = add i64 %indvars.iv106.i, 1
  %230 = load i32* %221, align 4, !tbaa !3
  %231 = trunc i64 %indvars.iv.next107.i to i32
  %cmp35.i = icmp slt i32 %231, %230
  br i1 %cmp35.i, label %for.body37.i, label %for.cond50.preheader.i

for.body53.i:                                     ; preds = %for.body53.i, %for.body53.lr.ph.i
  %232 = phi %union.lmlog_t* [ %.pre.i1015, %for.body53.lr.ph.i ], [ %234, %for.body53.i ]
  %indvars.iv.i1016 = phi i64 [ 0, %for.body53.lr.ph.i ], [ %indvars.iv.next.i1017, %for.body53.i ]
  %f56.i = getelementptr inbounds %union.lmlog_t* %232, i64 %indvars.iv.i1016, i32 0
  %233 = load float* %f56.i, align 4, !tbaa !4
  %conv57.i = fpext float %233 to double
  %call58.i = call i32 @log10_to_logs3(double %conv57.i) #8
  %234 = load %union.lmlog_t** %226, align 8, !tbaa !0
  %arrayidx61.i = getelementptr inbounds %union.lmlog_t* %234, i64 %indvars.iv.i1016
  %l62.i = bitcast %union.lmlog_t* %arrayidx61.i to i32*
  store i32 %call58.i, i32* %l62.i, align 4, !tbaa !3
  %indvars.iv.next.i1017 = add i64 %indvars.iv.i1016, 1
  %235 = load i32* %224, align 4, !tbaa !3
  %236 = trunc i64 %indvars.iv.next.i1017 to i32
  %cmp51.i = icmp slt i32 %236, %235
  br i1 %cmp51.i, label %for.body53.i, label %lm2logs3.exit

lm2logs3.exit:                                    ; preds = %for.body53.i, %for.end31.i, %for.cond50.preheader.i
  %lw718 = getelementptr inbounds i8* %call, i64 148
  %237 = bitcast i8* %lw718 to float*
  store float 1.000000e+00, float* %237, align 4, !tbaa !4
  %wip719 = getelementptr inbounds i8* %call, i64 152
  %238 = bitcast i8* %wip719 to i32*
  store i32 0, i32* %238, align 4, !tbaa !3
  call void @lm_set_param(%struct.lm_s* %1, double %lw, double %wip) #9
  call void @llvm.lifetime.end(i64 1024, i8* %0) #4
  ret %struct.lm_s* %1
}

; Function Attrs: optsize
declare i8* @__ckd_realloc__(i8*, i64, i8*, i32) #3

; Function Attrs: optsize
declare i8* @__ckd_salloc__(i8*, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define %struct.lm_s* @lm_read(i8* %file, double %lw, double %wip, double %uw) #2 {
entry:
  %tobool = icmp eq i8* %file, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 731, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp = fcmp ugt double %lw, 0.000000e+00
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 733, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %lw) #8
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  %cmp3 = fcmp ugt double %wip, 0.000000e+00
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 735, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), double %wip) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end2, %if.then4
  %cmp6 = fcmp olt double %uw, 0.000000e+00
  %cmp7 = fcmp ogt double %uw, 1.000000e+00
  %or.cond = or i1 %cmp6, %cmp7
  br i1 %or.cond, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 737, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %uw) #8
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then8
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 739, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %call = tail call i32 @logs3(double %wip) #8
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([44 x i8]* @.str20, i64 0, i64 0), i8* %file, double %lw, i32 %call, double %uw) #8
  %call10 = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #8
  %0 = bitcast i8* %call10 to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %not.tobool11 = icmp ne i32 %1, 0
  store i1 %not.tobool11, i1* @LM_IN_MEMORY, align 1
  %call14 = tail call fastcc %struct.lm_s* @lm_read_dump(i8* %file, double %lw, double %wip, double %uw, i32 0, %struct.lmclass_s** null, i32 0) #9
  %n_ug = getelementptr inbounds %struct.lm_s* %call14, i64 0, i32 0
  %2 = load i32* %n_ug, align 4, !tbaa !3
  %cmp1548 = icmp sgt i32 %2, 0
  br i1 %cmp1548, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %ug = getelementptr inbounds %struct.lm_s* %call14, i64 0, i32 9
  %3 = load %struct.ug_t** %ug, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv50 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next51, %for.body ]
  %dictwid = getelementptr inbounds %struct.ug_t* %3, i64 %indvars.iv50, i32 0
  store i32 -1, i32* %dictwid, align 4, !tbaa !3
  %indvars.iv.next51 = add i64 %indvars.iv50, 1
  %4 = load i32* %n_ug, align 4, !tbaa !3
  %5 = trunc i64 %indvars.iv.next51 to i32
  %cmp15 = icmp slt i32 %5, %4
  br i1 %cmp15, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end9
  %call16 = tail call i8* @__ckd_calloc__(i64 100003, i64 12, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 752) #8
  %6 = bitcast i8* %call16 to %struct.lm_tgcache_entry_t*
  %tgcache = getelementptr inbounds %struct.lm_s* %call14, i64 0, i32 27
  store %struct.lm_tgcache_entry_t* %6, %struct.lm_tgcache_entry_t** %tgcache, align 8, !tbaa !0
  br label %for.body19

for.body19:                                       ; preds = %for.body19, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body19 ]
  %arrayidx23 = getelementptr inbounds %struct.lm_tgcache_entry_t* %6, i64 %indvars.iv, i32 0, i64 0
  store i16 -1, i16* %arrayidx23, align 2, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100003
  br i1 %exitcond, label %for.end26, label %for.body19

for.end26:                                        ; preds = %for.body19
  ret %struct.lm_s* %call14
}

; Function Attrs: nounwind optsize uwtable
define void @lm_cache_reset(%struct.lm_s* nocapture %lm) #2 {
entry:
  %.b = load i1* @LM_IN_MEMORY, align 1
  br i1 %.b, label %if.end80, label %if.end

if.end:                                           ; preds = %entry
  %n_bg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 1
  %0 = load i32* %n_bg, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end
  %bg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 10
  %1 = load %struct.bg_t** %bg, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.bg_t* %1, null
  br i1 %tobool1, label %for.cond.preheader, label %if.end33

for.cond.preheader:                               ; preds = %land.lhs.true
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %2 = load i32* %n_ug, align 4, !tbaa !3
  %cmp3141 = icmp sgt i32 %2, 0
  br i1 %cmp3141, label %for.body.lr.ph, label %if.end33

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %membg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %n_bg_inmem = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 29
  %.pre = load %struct.membg_t** %membg, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end27
  %3 = phi %struct.membg_t* [ %.pre, %for.body.lr.ph ], [ %13, %if.end27 ]
  %indvars.iv149 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next150, %if.end27 ]
  %n_bgfree.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %n_bgfree.1, %if.end27 ]
  %bg4 = getelementptr inbounds %struct.membg_t* %3, i64 %indvars.iv149, i32 0
  %4 = load %struct.bg_t** %bg4, align 8, !tbaa !0
  %tobool5 = icmp eq %struct.bg_t* %4, null
  br i1 %tobool5, label %if.end27, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %for.body
  %used = getelementptr inbounds %struct.membg_t* %3, i64 %indvars.iv149, i32 1
  %5 = load i32* %used, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %5, 0
  br i1 %tobool10, label %if.then11, label %if.end27

if.then11:                                        ; preds = %land.lhs.true6
  %6 = add nsw i64 %indvars.iv149, 1
  %7 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %firstbg = getelementptr inbounds %struct.ug_t* %7, i64 %6, i32 3
  %8 = load i32* %firstbg, align 4, !tbaa !3
  %firstbg17 = getelementptr inbounds %struct.ug_t* %7, i64 %indvars.iv149, i32 3
  %9 = load i32* %firstbg17, align 4, !tbaa !3
  %10 = load i32* %n_bg_inmem, align 4, !tbaa !3
  %sub125 = sub i32 %9, %8
  %sub18 = add i32 %sub125, %10
  store i32 %sub18, i32* %n_bg_inmem, align 4, !tbaa !3
  %11 = bitcast %struct.bg_t* %4 to i8*
  tail call void @free(i8* %11) #8
  %12 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg26 = getelementptr inbounds %struct.membg_t* %12, i64 %indvars.iv149, i32 0
  store %struct.bg_t* null, %struct.bg_t** %bg26, align 8, !tbaa !0
  %inc = add nsw i32 %n_bgfree.0142, 1
  %.pre152 = load %struct.membg_t** %membg, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true6, %for.body, %if.then11
  %13 = phi %struct.membg_t* [ %3, %land.lhs.true6 ], [ %.pre152, %if.then11 ], [ %3, %for.body ]
  %n_bgfree.1 = phi i32 [ %n_bgfree.0142, %land.lhs.true6 ], [ %inc, %if.then11 ], [ %n_bgfree.0142, %for.body ]
  %used31 = getelementptr inbounds %struct.membg_t* %13, i64 %indvars.iv149, i32 1
  store i32 0, i32* %used31, align 4, !tbaa !3
  %indvars.iv.next150 = add i64 %indvars.iv149, 1
  %14 = load i32* %n_ug, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv.next150 to i32
  %cmp3 = icmp slt i32 %15, %14
  br i1 %cmp3, label %for.body, label %if.end33

if.end33:                                         ; preds = %for.cond.preheader, %if.end27, %land.lhs.true, %if.end
  %n_bgfree.2 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %for.cond.preheader ], [ %n_bgfree.1, %if.end27 ]
  %n_tg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 2
  %16 = load i32* %n_tg, align 4, !tbaa !3
  %cmp34 = icmp sgt i32 %16, 0
  br i1 %cmp34, label %for.cond36.preheader, label %if.end74

for.cond36.preheader:                             ; preds = %if.end33
  %n_ug37 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %17 = load i32* %n_ug37, align 4, !tbaa !3
  %cmp38137 = icmp sgt i32 %17, 0
  br i1 %cmp38137, label %for.body39.lr.ph, label %if.end74

for.body39.lr.ph:                                 ; preds = %for.cond36.preheader
  %tginfo41 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 13
  %tg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 11
  %n_tg_inmem = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 33
  br label %for.body39

for.body39:                                       ; preds = %for.inc71, %for.body39.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next, %for.inc71 ]
  %n_tgfree.0138 = phi i32 [ 0, %for.body39.lr.ph ], [ %n_tgfree.1.ph132, %for.inc71 ]
  %18 = load %struct.tginfo_s*** %tginfo41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds %struct.tginfo_s** %18, i64 %indvars.iv
  %19 = load %struct.tginfo_s** %arrayidx42, align 8, !tbaa !0
  %tobool44128133 = icmp eq %struct.tginfo_s* %19, null
  br i1 %tobool44128133, label %for.inc71, label %for.body45.lr.ph

for.body45.lr.ph:                                 ; preds = %for.body39, %for.cond43.outer.backedge
  %prev_tginfo.0.ph136 = phi %struct.tginfo_s* [ %prev_tginfo.0.ph.be, %for.cond43.outer.backedge ], [ null, %for.body39 ]
  %tginfo.0.ph135 = phi %struct.tginfo_s* [ %20, %for.cond43.outer.backedge ], [ %19, %for.body39 ]
  %n_tgfree.1.ph134 = phi i32 [ %n_tgfree.2, %for.cond43.outer.backedge ], [ %n_tgfree.0138, %for.body39 ]
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %if.else66
  %prev_tginfo.0130 = phi %struct.tginfo_s* [ %prev_tginfo.0.ph136, %for.body45.lr.ph ], [ %tginfo.0129, %if.else66 ]
  %tginfo.0129 = phi %struct.tginfo_s* [ %tginfo.0.ph135, %for.body45.lr.ph ], [ %20, %if.else66 ]
  %next = getelementptr inbounds %struct.tginfo_s* %tginfo.0129, i64 0, i32 5
  %20 = load %struct.tginfo_s** %next, align 8, !tbaa !0
  %used46 = getelementptr inbounds %struct.tginfo_s* %tginfo.0129, i64 0, i32 4
  %21 = load i32* %used46, align 4, !tbaa !3
  %tobool47 = icmp eq i32 %21, 0
  br i1 %tobool47, label %if.then48, label %if.else66

if.then48:                                        ; preds = %for.body45
  %22 = load %struct.tg_t** %tg, align 8, !tbaa !0
  %tobool49 = icmp eq %struct.tg_t* %22, null
  br i1 %tobool49, label %land.lhs.true50, label %if.end58

land.lhs.true50:                                  ; preds = %if.then48
  %tg51 = getelementptr inbounds %struct.tginfo_s* %tginfo.0129, i64 0, i32 2
  %23 = load %struct.tg_t** %tg51, align 8, !tbaa !0
  %tobool52 = icmp eq %struct.tg_t* %23, null
  br i1 %tobool52, label %if.end58, label %if.then53

if.then53:                                        ; preds = %land.lhs.true50
  %n_tg54 = getelementptr inbounds %struct.tginfo_s* %tginfo.0129, i64 0, i32 1
  %24 = load i32* %n_tg54, align 4, !tbaa !3
  %25 = load i32* %n_tg_inmem, align 4, !tbaa !3
  %sub55 = sub nsw i32 %25, %24
  store i32 %sub55, i32* %n_tg_inmem, align 4, !tbaa !3
  %26 = bitcast %struct.tg_t* %23 to i8*
  tail call void @free(i8* %26) #8
  %inc57 = add nsw i32 %n_tgfree.1.ph134, 1
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true50, %if.then48, %if.then53
  %n_tgfree.2 = phi i32 [ %n_tgfree.1.ph134, %if.then48 ], [ %inc57, %if.then53 ], [ %n_tgfree.1.ph134, %land.lhs.true50 ]
  %27 = bitcast %struct.tginfo_s* %tginfo.0129 to i8*
  tail call void @free(i8* %27) #8
  %tobool59 = icmp eq %struct.tginfo_s* %prev_tginfo.0130, null
  br i1 %tobool59, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end58
  %next61 = getelementptr inbounds %struct.tginfo_s* %prev_tginfo.0130, i64 0, i32 5
  store %struct.tginfo_s* %20, %struct.tginfo_s** %next61, align 8, !tbaa !0
  br label %for.cond43.outer.backedge

for.cond43.outer.backedge:                        ; preds = %if.then60, %if.else
  %prev_tginfo.0.ph.be = phi %struct.tginfo_s* [ %prev_tginfo.0130, %if.then60 ], [ null, %if.else ]
  %tobool44128 = icmp eq %struct.tginfo_s* %20, null
  br i1 %tobool44128, label %for.inc71, label %for.body45.lr.ph

if.else:                                          ; preds = %if.end58
  %28 = load %struct.tginfo_s*** %tginfo41, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds %struct.tginfo_s** %28, i64 %indvars.iv
  store %struct.tginfo_s* %20, %struct.tginfo_s** %arrayidx64, align 8, !tbaa !0
  br label %for.cond43.outer.backedge

if.else66:                                        ; preds = %for.body45
  store i32 0, i32* %used46, align 4, !tbaa !3
  %tobool44 = icmp eq %struct.tginfo_s* %20, null
  br i1 %tobool44, label %for.inc71, label %for.body45

for.inc71:                                        ; preds = %for.body39, %for.cond43.outer.backedge, %if.else66
  %n_tgfree.1.ph132 = phi i32 [ %n_tgfree.1.ph134, %if.else66 ], [ %n_tgfree.0138, %for.body39 ], [ %n_tgfree.2, %for.cond43.outer.backedge ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %29 = load i32* %n_ug37, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next to i32
  %cmp38 = icmp slt i32 %30, %29
  br i1 %cmp38, label %for.body39, label %if.end74

if.end74:                                         ; preds = %for.cond36.preheader, %for.inc71, %if.end33
  %n_tgfree.4 = phi i32 [ 0, %if.end33 ], [ 0, %for.cond36.preheader ], [ %n_tgfree.1.ph132, %for.inc71 ]
  %cmp75 = icmp sgt i32 %n_tgfree.4, 0
  %cmp76 = icmp sgt i32 %n_bgfree.2, 0
  %or.cond = or i1 %cmp75, %cmp76
  br i1 %or.cond, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end74
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 815, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %n_tg_inmem78 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 33
  %31 = load i32* %n_tg_inmem78, align 4, !tbaa !3
  %n_bg_inmem79 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 29
  %32 = load i32* %n_bg_inmem79, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([48 x i8]* @.str21, i64 0, i64 0), i32 %n_tgfree.4, i32 %31, i32 %n_bgfree.2, i32 %32) #8
  br label %if.end80

if.end80:                                         ; preds = %if.end74, %entry, %if.then77
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @lm_cache_stats_dump(%struct.lm_s* nocapture %lm) #2 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 823, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %n_tg_score = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 34
  %0 = load i32* %n_tg_score, align 4, !tbaa !3
  %n_tgcache_hit = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 36
  %1 = load i32* %n_tgcache_hit, align 4, !tbaa !3
  %n_tg_bo = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 35
  %2 = load i32* %n_tg_bo, align 4, !tbaa !3
  %n_tg_fill = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 32
  %3 = load i32* %n_tg_fill, align 4, !tbaa !3
  %n_tg_inmem = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 33
  %4 = load i32* %n_tg_inmem, align 4, !tbaa !3
  %conv = sitofp i32 %4 to double
  %mul = fmul double %conv, 1.000000e+02
  %n_tg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 2
  %5 = load i32* %n_tg, align 4, !tbaa !3
  %add = add nsw i32 %5, 1
  %conv2 = sitofp i32 %add to double
  %div = fdiv double %mul, %conv2
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([63 x i8]* @.str22, i64 0, i64 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double %div) #8
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 826, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8
  %n_bg_score = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 30
  %6 = load i32* %n_bg_score, align 4, !tbaa !3
  %n_bg_bo = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 31
  %7 = load i32* %n_bg_bo, align 4, !tbaa !3
  %n_bg_fill = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 28
  %8 = load i32* %n_bg_fill, align 4, !tbaa !3
  %n_bg_inmem = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 29
  %9 = load i32* %n_bg_inmem, align 4, !tbaa !3
  %conv4 = sitofp i32 %9 to double
  %mul5 = fmul double %conv4, 1.000000e+02
  %n_bg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 1
  %10 = load i32* %n_bg, align 4, !tbaa !3
  %add6 = add nsw i32 %10, 1
  %conv7 = sitofp i32 %add6 to double
  %div8 = fdiv double %mul5, %conv7
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([50 x i8]* @.str23, i64 0, i64 0), i32 %6, i32 %7, i32 %8, i32 %9, double %div8) #8
  store i32 0, i32* %n_tgcache_hit, align 4, !tbaa !3
  store i32 0, i32* %n_tg_fill, align 4, !tbaa !3
  store i32 0, i32* %n_tg_score, align 4, !tbaa !3
  store i32 0, i32* %n_tg_bo, align 4, !tbaa !3
  store i32 0, i32* %n_bg_fill, align 4, !tbaa !3
  store i32 0, i32* %n_bg_score, align 4, !tbaa !3
  store i32 0, i32* %n_bg_bo, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_ug_score(%struct.lm_s* nocapture %lm, i16 zeroext %lwid, i32 %wid) #2 {
entry:
  %conv = zext i16 %lwid to i32
  %cmp = icmp eq i16 %lwid, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %0 = load i32* %n_ug, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %0, %wid
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 843, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str24, i64 0, i64 0), i32 %conv) #8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %access_type = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 37
  store i32 1, i32* %access_type, align 4, !tbaa !3
  %inclass_ugscore = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 42
  %1 = load i32** %inclass_ugscore, align 8, !tbaa !0
  %tobool = icmp eq i32* %1, null
  %idxprom = zext i16 %lwid to i64
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %2 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %prob = getelementptr inbounds %struct.ug_t* %2, i64 %idxprom, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %3 = load i32* %l, align 4, !tbaa !3
  br i1 %tobool, label %return, label %if.then5

if.then5:                                         ; preds = %if.end
  %idxprom6 = sext i32 %wid to i64
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom6
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %add = add nsw i32 %4, %3
  br label %return

return:                                           ; preds = %if.end, %if.then5
  %retval.0 = phi i32 [ %add, %if.then5 ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_uglist(%struct.lm_s* nocapture %lm, %struct.ug_t** nocapture %ugptr) #2 {
entry:
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %0 = load %struct.ug_t** %ug, align 8, !tbaa !0
  store %struct.ug_t* %0, %struct.ug_t** %ugptr, align 8, !tbaa !0
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %1 = load i32* %n_ug, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_ug_wordprob(%struct.lm_s* nocapture %lm, %struct.dict_t* nocapture %dict, i32 %th, %struct.wordprob_t* nocapture %wp) #2 {
entry:
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %0 = load i32* %n_ug, align 4, !tbaa !3
  %cmp88 = icmp sgt i32 %0, 0
  br i1 %cmp88, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %lmclass15 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 40
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %inclass_ugscore = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 42
  %.pre = load %struct.ug_t** %ug, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.089 = phi i32 [ 0, %for.body.lr.ph ], [ %j.3, %for.inc ]
  %dictwid = getelementptr inbounds %struct.ug_t* %.pre, i64 %indvars.iv, i32 0
  %1 = load i32* %dictwid, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, -1
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %cmp2 = icmp slt i32 %1, 16777216
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %prob = getelementptr inbounds %struct.ug_t* %.pre, i64 %indvars.iv, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %2 = load i32* %l, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, %th
  br i1 %cmp7, label %for.inc, label %if.then8

if.then8:                                         ; preds = %if.then3
  %idxprom9 = sext i32 %j.089 to i64
  %wid = getelementptr inbounds %struct.wordprob_t* %wp, i64 %idxprom9, i32 0
  store i32 %1, i32* %wid, align 4, !tbaa !3
  %prob13 = getelementptr inbounds %struct.wordprob_t* %wp, i64 %idxprom9, i32 1
  store i32 %2, i32* %prob13, align 4, !tbaa !3
  %inc = add nsw i32 %j.089, 1
  br label %for.inc

if.else:                                          ; preds = %if.then
  %sub = add nsw i32 %1, -16777216
  %idxprom14 = sext i32 %sub to i64
  %3 = load %struct.lmclass_s*** %lmclass15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.lmclass_s** %3, i64 %idxprom14
  %4 = load %struct.lmclass_s** %arrayidx16, align 8, !tbaa !0
  %wordlist = getelementptr inbounds %struct.lmclass_s* %4, i64 0, i32 1
  %lm_cw.084 = load %struct.lmclass_word_s** %wordlist, align 8
  %cmp1785 = icmp eq %struct.lmclass_word_s* %lm_cw.084, null
  br i1 %cmp1785, label %for.inc, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else
  %.pre92 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %.pre93 = load i32** %inclass_ugscore, align 8, !tbaa !0
  br label %while.body

while.body:                                       ; preds = %if.end49, %while.body.lr.ph
  %lm_cw.087 = phi %struct.lmclass_word_s* [ %lm_cw.084, %while.body.lr.ph ], [ %lm_cw.0, %if.end49 ]
  %j.186 = phi i32 [ %j.089, %while.body.lr.ph ], [ %j.2, %if.end49 ]
  %dictwid18 = getelementptr inbounds %struct.lmclass_word_s* %lm_cw.087, i64 0, i32 1
  %5 = load i32* %dictwid18, align 4, !tbaa !3
  %idxprom19 = sext i32 %5 to i64
  %basewid = getelementptr inbounds %struct.dictword_t* %.pre92, i64 %idxprom19, i32 4
  %6 = load i32* %basewid, align 4, !tbaa !3
  %prob31 = getelementptr inbounds %struct.ug_t* %.pre, i64 %indvars.iv, i32 1
  %l32 = bitcast %union.lmlog_t* %prob31 to i32*
  %7 = load i32* %l32, align 4, !tbaa !3
  %idxprom33 = sext i32 %6 to i64
  %arrayidx34 = getelementptr inbounds i32* %.pre93, i64 %idxprom33
  %8 = load i32* %arrayidx34, align 4, !tbaa !3
  %add = add nsw i32 %8, %7
  %cmp35 = icmp slt i32 %add, %th
  br i1 %cmp35, label %if.end49, label %if.then36

if.then36:                                        ; preds = %while.body
  %idxprom37 = sext i32 %j.186 to i64
  %wid39 = getelementptr inbounds %struct.wordprob_t* %wp, i64 %idxprom37, i32 0
  store i32 %6, i32* %wid39, align 4, !tbaa !3
  %9 = load i32* %l32, align 4, !tbaa !3
  %prob47 = getelementptr inbounds %struct.wordprob_t* %wp, i64 %idxprom37, i32 1
  store i32 %9, i32* %prob47, align 4, !tbaa !3
  %inc48 = add nsw i32 %j.186, 1
  br label %if.end49

if.end49:                                         ; preds = %while.body, %if.then36
  %j.2 = phi i32 [ %inc48, %if.then36 ], [ %j.186, %while.body ]
  %next = getelementptr inbounds %struct.lmclass_word_s* %lm_cw.087, i64 0, i32 3
  %lm_cw.0 = load %struct.lmclass_word_s** %next, align 8
  %cmp17 = icmp eq %struct.lmclass_word_s* %lm_cw.0, null
  br i1 %cmp17, label %for.inc, label %while.body

for.inc:                                          ; preds = %if.else, %if.end49, %if.then3, %for.body, %if.then8
  %j.3 = phi i32 [ %inc, %if.then8 ], [ %j.089, %if.then3 ], [ %j.089, %for.body ], [ %j.089, %if.else ], [ %j.2, %if.end49 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %j.3, %for.inc ]
  ret i32 %j.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_bglist(%struct.lm_s* nocapture %lm, i16 zeroext %w1, %struct.bg_t** nocapture %bgptr, i32* nocapture %bowt) #2 {
entry:
  %conv = zext i16 %w1 to i32
  %cmp = icmp eq i16 %w1, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %0 = load i32* %n_ug, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %conv, %0
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 972, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([35 x i8]* @.str25, i64 0, i64 0), i32 %conv) #8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %n_bg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 1
  %1 = load i32* %n_bg, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %cond.end, label %if.else

cond.end:                                         ; preds = %if.end
  %add = add nsw i32 %conv, 1
  %idxprom52 = zext i32 %add to i64
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %2 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %firstbg = getelementptr inbounds %struct.ug_t* %2, i64 %idxprom52, i32 3
  %3 = load i32* %firstbg, align 4, !tbaa !3
  %idxprom9 = zext i16 %w1 to i64
  %firstbg12 = getelementptr inbounds %struct.ug_t* %2, i64 %idxprom9, i32 3
  %4 = load i32* %firstbg12, align 4, !tbaa !3
  %sub = sub nsw i32 %3, %4
  %cmp13 = icmp sgt i32 %sub, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %cond.end
  %membg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %5 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg = getelementptr inbounds %struct.membg_t* %5, i64 %idxprom9, i32 0
  %6 = load %struct.bg_t** %bg, align 8, !tbaa !0
  %tobool = icmp eq %struct.bg_t* %6, null
  br i1 %tobool, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  tail call fastcc void @load_bg(%struct.lm_s* %lm, i16 zeroext %w1) #9
  %.pre = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg26.phi.trans.insert = getelementptr inbounds %struct.membg_t* %.pre, i64 %idxprom9, i32 0
  %.pre56 = load %struct.bg_t** %bg26.phi.trans.insert, align 8, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then18
  %7 = phi %struct.bg_t* [ %6, %if.then15 ], [ %.pre56, %if.then18 ]
  %8 = phi %struct.membg_t* [ %5, %if.then15 ], [ %.pre, %if.then18 ]
  %used = getelementptr inbounds %struct.membg_t* %8, i64 %idxprom9, i32 1
  store i32 1, i32* %used, align 4, !tbaa !3
  store %struct.bg_t* %7, %struct.bg_t** %bgptr, align 8, !tbaa !0
  %9 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %bowt30 = getelementptr inbounds %struct.ug_t* %9, i64 %idxprom9, i32 2
  %l = bitcast %union.lmlog_t* %bowt30 to i32*
  %10 = load i32* %l, align 4, !tbaa !3
  br label %if.end31

if.else:                                          ; preds = %if.end, %cond.end
  %cond55 = phi i32 [ %sub, %cond.end ], [ 0, %if.end ]
  store %struct.bg_t* null, %struct.bg_t** %bgptr, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end19
  %cond54 = phi i32 [ %cond55, %if.else ], [ %sub, %if.end19 ]
  %storemerge = phi i32 [ 0, %if.else ], [ %10, %if.end19 ]
  store i32 %storemerge, i32* %bowt, align 4, !tbaa !3
  ret i32 %cond54
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @load_bg(%struct.lm_s* nocapture %lm, i16 zeroext %lw1) #2 {
entry:
  %idxprom = zext i16 %lw1 to i64
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %0 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %firstbg = getelementptr inbounds %struct.ug_t* %0, i64 %idxprom, i32 3
  %1 = load i32* %firstbg, align 4, !tbaa !3
  %add = add i64 %idxprom, 1
  %firstbg4 = getelementptr inbounds %struct.ug_t* %0, i64 %add, i32 3
  %2 = load i32* %firstbg4, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %1
  %.b = load i1* @LM_IN_MEMORY, align 1
  br i1 %.b, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom5 = sext i32 %1 to i64
  %bg6 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 10
  %3 = load %struct.bg_t** %bg6, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %struct.bg_t* %3, i64 %idxprom5
  %membg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %4 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg10 = getelementptr inbounds %struct.membg_t* %4, i64 %idxprom, i32 0
  store %struct.bg_t* %arrayidx7, %struct.bg_t** %bg10, align 8, !tbaa !0
  br label %if.end98

if.else:                                          ; preds = %entry
  %add11 = add nsw i32 %sub, 1
  %conv12 = sext i32 %add11 to i64
  %call = tail call i8* @__ckd_calloc__(i64 %conv12, i64 8, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 919) #8
  %5 = bitcast i8* %call to %struct.bg_t*
  %membg14 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %6 = load %struct.membg_t** %membg14, align 8, !tbaa !0
  %bg16 = getelementptr inbounds %struct.membg_t* %6, i64 %idxprom, i32 0
  store %struct.bg_t* %5, %struct.bg_t** %bg16, align 8, !tbaa !0
  %fp = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 21
  %7 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %bgoff = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 23
  %8 = load i32* %bgoff, align 4, !tbaa !3
  %conv17 = sext i32 %8 to i64
  %conv18 = sext i32 %1 to i64
  %mul = shl nsw i64 %conv18, 3
  %add19 = add i64 %conv17, %mul
  %call20 = tail call i32 @fseek(%struct._IO_FILE* %7, i64 %add19, i32 0) #8
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.else
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 922, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.else
  %9 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call26 = tail call i64 @fread(i8* %call, i64 8, i64 %conv12, %struct._IO_FILE* %9) #8
  %cmp29 = icmp eq i64 %call26, %conv12
  br i1 %cmp29, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 926, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then31
  %byteswap = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 22
  %10 = load i32* %byteswap, align 4, !tbaa !3
  %tobool33 = icmp eq i32 %10, 0
  %cmp35150 = icmp slt i32 %sub, 0
  %or.cond = or i1 %tobool33, %cmp35150
  br i1 %or.cond, label %if.end98, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end32
  %11 = add i32 %2, 1
  %12 = sub i32 %11, %1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.lr.ph ]
  %wid = getelementptr inbounds %struct.bg_t* %5, i64 %indvars.iv, i32 0
  %13 = load i16* %wid, align 2, !tbaa !5
  %or = tail call i16 @llvm.bswap.i16(i16 %13)
  store i16 %or, i16* %wid, align 2, !tbaa !5
  %probid = getelementptr inbounds %struct.bg_t* %5, i64 %indvars.iv, i32 1
  %14 = load i16* %probid, align 2, !tbaa !5
  %or60 = tail call i16 @llvm.bswap.i16(i16 %14)
  store i16 %or60, i16* %probid, align 2, !tbaa !5
  %bowtid = getelementptr inbounds %struct.bg_t* %5, i64 %indvars.iv, i32 2
  %15 = load i16* %bowtid, align 2, !tbaa !5
  %or76 = tail call i16 @llvm.bswap.i16(i16 %15)
  store i16 %or76, i16* %bowtid, align 2, !tbaa !5
  %firsttg = getelementptr inbounds %struct.bg_t* %5, i64 %indvars.iv, i32 3
  %16 = load i16* %firsttg, align 2, !tbaa !5
  %or92 = tail call i16 @llvm.bswap.i16(i16 %16)
  store i16 %or92, i16* %firsttg, align 2, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %if.end98, label %for.body

if.end98:                                         ; preds = %for.body, %if.end32, %if.then
  %n_bg_fill = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 28
  %17 = load i32* %n_bg_fill, align 4, !tbaa !3
  %inc99 = add nsw i32 %17, 1
  store i32 %inc99, i32* %n_bg_fill, align 4, !tbaa !3
  %n_bg_inmem = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 29
  %18 = load i32* %n_bg_inmem, align 4, !tbaa !3
  %add100 = add nsw i32 %18, %sub
  store i32 %add100, i32* %n_bg_inmem, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_bg_score(%struct.lm_s* nocapture %lm, i16 zeroext %lw1, i16 zeroext %lw2, i32 %w2) #2 {
entry:
  %n_bg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 1
  %0 = load i32* %n_bg, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %lw1 to i64
  %cmp1 = icmp eq i16 %lw1, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call i32 @lm_ug_score(%struct.lm_s* %lm, i16 zeroext %lw2, i32 %w2) #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %n_bg_score = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 30
  %1 = load i32* %n_bg_score, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %n_bg_score, align 4, !tbaa !3
  %conv3 = zext i16 %lw2 to i32
  %cmp4 = icmp eq i16 %lw2, -1
  br i1 %cmp4, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %2 = load i32* %n_ug, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %conv3, %2
  br i1 %cmp8, label %if.end12, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1038, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str26, i64 0, i64 0), i32 %conv3) #8
  br label %if.end12

if.end12:                                         ; preds = %lor.lhs.false6, %if.then10
  %add = add i64 %conv, 1
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %3 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %firstbg = getelementptr inbounds %struct.ug_t* %3, i64 %add, i32 3
  %4 = load i32* %firstbg, align 4, !tbaa !3
  %firstbg17 = getelementptr inbounds %struct.ug_t* %3, i64 %conv, i32 3
  %5 = load i32* %firstbg17, align 4, !tbaa !3
  %sub = sub nsw i32 %4, %5
  %cmp18 = icmp sgt i32 %sub, 0
  br i1 %cmp18, label %if.then20, label %if.else49

if.then20:                                        ; preds = %if.end12
  %membg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %6 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg23 = getelementptr inbounds %struct.membg_t* %6, i64 %conv, i32 0
  %7 = load %struct.bg_t** %bg23, align 8, !tbaa !0
  %tobool = icmp eq %struct.bg_t* %7, null
  br i1 %tobool, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.then20
  tail call fastcc void @load_bg(%struct.lm_s* %lm, i16 zeroext %lw1) #9
  %.pre = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg32.phi.trans.insert = getelementptr inbounds %struct.membg_t* %.pre, i64 %conv, i32 0
  %.pre98 = load %struct.bg_t** %bg32.phi.trans.insert, align 8, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %if.then24, %if.then20
  %8 = phi %struct.bg_t* [ %.pre98, %if.then24 ], [ %7, %if.then20 ]
  %9 = phi %struct.membg_t* [ %.pre, %if.then24 ], [ %6, %if.then20 ]
  %used = getelementptr inbounds %struct.membg_t* %9, i64 %conv, i32 1
  store i32 1, i32* %used, align 4, !tbaa !3
  %call33 = tail call fastcc i32 @find_bg(%struct.bg_t* %8, i32 %sub, i16 zeroext %lw2) #9
  %cmp35 = icmp sgt i32 %call33, -1
  br i1 %cmp35, label %if.then37, label %if.end34.if.else49_crit_edge

if.end34.if.else49_crit_edge:                     ; preds = %if.end34
  %.pre99 = load %struct.ug_t** %ug, align 8, !tbaa !0
  br label %if.else49

if.then37:                                        ; preds = %if.end34
  %idxprom38 = sext i32 %call33 to i64
  %probid = getelementptr inbounds %struct.bg_t* %8, i64 %idxprom38, i32 1
  %10 = load i16* %probid, align 2, !tbaa !5
  %idxprom40 = zext i16 %10 to i64
  %bgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 14
  %11 = load %union.lmlog_t** %bgprob, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds %union.lmlog_t* %11, i64 %idxprom40
  %l = bitcast %union.lmlog_t* %arrayidx41 to i32*
  %12 = load i32* %l, align 4, !tbaa !3
  %inclass_ugscore = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 42
  %13 = load i32** %inclass_ugscore, align 8, !tbaa !0
  %tobool42 = icmp eq i32* %13, null
  br i1 %tobool42, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.then37
  %idxprom44 = sext i32 %w2 to i64
  %arrayidx46 = getelementptr inbounds i32* %13, i64 %idxprom44
  %14 = load i32* %arrayidx46, align 4, !tbaa !3
  %add47 = add nsw i32 %14, %12
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %if.then43
  %score.0 = phi i32 [ %add47, %if.then43 ], [ %12, %if.then37 ]
  %access_type = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 37
  store i32 2, i32* %access_type, align 4, !tbaa !3
  br label %return

if.else49:                                        ; preds = %if.end34.if.else49_crit_edge, %if.end12
  %15 = phi %struct.ug_t* [ %.pre99, %if.end34.if.else49_crit_edge ], [ %3, %if.end12 ]
  %n_bg_bo = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 31
  %16 = load i32* %n_bg_bo, align 4, !tbaa !3
  %inc50 = add nsw i32 %16, 1
  store i32 %inc50, i32* %n_bg_bo, align 4, !tbaa !3
  %access_type51 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 37
  store i32 1, i32* %access_type51, align 4, !tbaa !3
  %bowt = getelementptr inbounds %struct.ug_t* %15, i64 %conv, i32 2
  %l55 = bitcast %union.lmlog_t* %bowt to i32*
  %17 = load i32* %l55, align 4, !tbaa !3
  %idxprom56 = zext i16 %lw2 to i64
  %prob = getelementptr inbounds %struct.ug_t* %15, i64 %idxprom56, i32 1
  %l59 = bitcast %union.lmlog_t* %prob to i32*
  %18 = load i32* %l59, align 4, !tbaa !3
  %add60 = add nsw i32 %18, %17
  br label %return

return:                                           ; preds = %if.end48, %if.else49, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %score.0, %if.end48 ], [ %add60, %if.else49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @find_bg(%struct.bg_t* nocapture %bg, i32 %n, i16 zeroext %w) #0 {
entry:
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %b.0.ph = phi i32 [ 0, %entry ], [ %add4, %if.then ]
  %e.0.ph = phi i32 [ %n, %entry ], [ %e.0, %if.then ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.else
  %e.0 = phi i32 [ %shr, %if.else ], [ %e.0.ph, %while.cond.outer ]
  %sub = sub nsw i32 %e.0, %b.0.ph
  %cmp = icmp sgt i32 %sub, 16
  br i1 %cmp, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %cmp1541 = icmp slt i32 %b.0.ph, %e.0
  br i1 %cmp1541, label %land.rhs.lr.ph, label %return

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = sext i32 %b.0.ph to i64
  br label %land.rhs

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %e.0, %b.0.ph
  %shr = ashr i32 %add, 1
  %idxprom = sext i32 %shr to i64
  %wid = getelementptr inbounds %struct.bg_t* %bg, i64 %idxprom, i32 0
  %1 = load i16* %wid, align 2, !tbaa !5
  %cmp2 = icmp ult i16 %1, %w
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add4 = add nsw i32 %shr, 1
  br label %while.cond.outer

if.else:                                          ; preds = %while.body
  %cmp10 = icmp ugt i16 %1, %w
  br i1 %cmp10, label %while.cond, label %return

for.cond:                                         ; preds = %land.rhs
  %inc = add nsw i32 %i.042, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %2, %e.0
  br i1 %cmp15, label %land.rhs, label %return

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %i.042 = phi i32 [ %b.0.ph, %land.rhs.lr.ph ], [ %inc, %for.cond ]
  %wid19 = getelementptr inbounds %struct.bg_t* %bg, i64 %indvars.iv, i32 0
  %3 = load i16* %wid19, align 2, !tbaa !5
  %cmp22 = icmp eq i16 %3, %w
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp22, label %return, label %for.cond

return:                                           ; preds = %if.else, %for.cond.preheader, %land.rhs, %for.cond
  %retval.0 = phi i32 [ -1, %for.cond.preheader ], [ %i.042, %land.rhs ], [ -1, %for.cond ], [ %shr, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_tglist(%struct.lm_s* nocapture %lm, i16 zeroext %lw1, i16 zeroext %lw2, %struct.tg_t** nocapture %tgptr, i32* nocapture %bowt) #2 {
entry:
  %n_tg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 2
  %0 = load i32* %n_tg, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tg_t* null, %struct.tg_t** %tgptr, align 8, !tbaa !0
  store i32 0, i32* %bowt, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %lw1 to i32
  %cmp1 = icmp eq i16 %lw1, -1
  br i1 %cmp1, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %1 = load i32* %n_ug, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %conv, %1
  br i1 %cmp4, label %if.end8, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1192, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str27, i64 0, i64 0), i32 %conv) #8
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.then6
  %conv9 = zext i16 %lw2 to i32
  %cmp10 = icmp eq i16 %lw2, -1
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end8
  %n_ug14 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %2 = load i32* %n_ug14, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %conv9, %2
  br i1 %cmp15, label %if.end19, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false12, %if.end8
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1194, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str28, i64 0, i64 0), i32 %conv9) #8
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false12, %if.then17
  %idxprom = zext i16 %lw2 to i64
  %tginfo20 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 13
  %3 = load %struct.tginfo_s*** %tginfo20, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.tginfo_s** %3, i64 %idxprom
  %tginfo.081 = load %struct.tginfo_s** %arrayidx, align 8
  %tobool82 = icmp eq %struct.tginfo_s* %tginfo.081, null
  br i1 %tobool82, label %if.then28, label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.tginfo_s* %tginfo.084, i64 0, i32 5
  %tginfo.0 = load %struct.tginfo_s** %next, align 8
  %tobool = icmp eq %struct.tginfo_s* %tginfo.0, null
  br i1 %tobool, label %if.then28, label %for.body

for.body:                                         ; preds = %if.end19, %for.cond
  %tginfo.084 = phi %struct.tginfo_s* [ %tginfo.0, %for.cond ], [ %tginfo.081, %if.end19 ]
  %prev_tginfo.083 = phi %struct.tginfo_s* [ %tginfo.084, %for.cond ], [ null, %if.end19 ]
  %w1 = getelementptr inbounds %struct.tginfo_s* %tginfo.084, i64 0, i32 0
  %4 = load i16* %w1, align 2, !tbaa !5
  %cmp23 = icmp eq i16 %4, %lw1
  br i1 %cmp23, label %if.else, label %for.cond

if.then28:                                        ; preds = %for.cond, %if.end19
  tail call fastcc void @load_tg(%struct.lm_s* %lm, i16 zeroext %lw1, i16 zeroext %lw2) #9
  %5 = load %struct.tginfo_s*** %tginfo20, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds %struct.tginfo_s** %5, i64 %idxprom
  %6 = load %struct.tginfo_s** %arrayidx31, align 8, !tbaa !0
  br label %if.end44

if.else:                                          ; preds = %for.body
  %tobool32 = icmp eq %struct.tginfo_s* %prev_tginfo.083, null
  br i1 %tobool32, label %if.end44, label %if.then33

if.then33:                                        ; preds = %if.else
  %next34 = getelementptr inbounds %struct.tginfo_s* %tginfo.084, i64 0, i32 5
  %7 = load %struct.tginfo_s** %next34, align 8, !tbaa !0
  %next35 = getelementptr inbounds %struct.tginfo_s* %prev_tginfo.083, i64 0, i32 5
  store %struct.tginfo_s* %7, %struct.tginfo_s** %next35, align 8, !tbaa !0
  %8 = load %struct.tginfo_s*** %tginfo20, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds %struct.tginfo_s** %8, i64 %idxprom
  %9 = load %struct.tginfo_s** %arrayidx38, align 8, !tbaa !0
  store %struct.tginfo_s* %9, %struct.tginfo_s** %next34, align 8, !tbaa !0
  %10 = load %struct.tginfo_s*** %tginfo20, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds %struct.tginfo_s** %10, i64 %idxprom
  store %struct.tginfo_s* %tginfo.084, %struct.tginfo_s** %arrayidx42, align 8, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then33, %if.then28
  %tginfo.1 = phi %struct.tginfo_s* [ %tginfo.084, %if.then33 ], [ %tginfo.084, %if.else ], [ %6, %if.then28 ]
  %used = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 4
  store i32 1, i32* %used, align 4, !tbaa !3
  %tg = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 2
  %11 = load %struct.tg_t** %tg, align 8, !tbaa !0
  store %struct.tg_t* %11, %struct.tg_t** %tgptr, align 8, !tbaa !0
  %bowt45 = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 3
  %12 = load i32* %bowt45, align 4, !tbaa !3
  store i32 %12, i32* %bowt, align 4, !tbaa !3
  %n_tg46 = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 1
  %13 = load i32* %n_tg46, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end44, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %13, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @load_tg(%struct.lm_s* nocapture %lm, i16 zeroext %lw1, i16 zeroext %lw2) #2 {
entry:
  %call = tail call i8* @__ckd_malloc__(i64 32, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 1087) #8
  %0 = bitcast i8* %call to %struct.tginfo_s*
  %w1 = bitcast i8* %call to i16*
  store i16 %lw1, i16* %w1, align 2, !tbaa !5
  %tg1 = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %tg1 to %struct.tg_t**
  store %struct.tg_t* null, %struct.tg_t** %1, align 8, !tbaa !0
  %idxprom = zext i16 %lw2 to i64
  %tginfo2 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 13
  %2 = load %struct.tginfo_s*** %tginfo2, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.tginfo_s** %2, i64 %idxprom
  %3 = load %struct.tginfo_s** %arrayidx, align 8, !tbaa !0
  %next = getelementptr inbounds i8* %call, i64 24
  %4 = bitcast i8* %next to %struct.tginfo_s**
  store %struct.tginfo_s* %3, %struct.tginfo_s** %4, align 8, !tbaa !0
  %5 = load %struct.tginfo_s*** %tginfo2, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds %struct.tginfo_s** %5, i64 %idxprom
  store %struct.tginfo_s* %0, %struct.tginfo_s** %arrayidx5, align 8, !tbaa !0
  %idxprom6 = zext i16 %lw1 to i64
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %6 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %firstbg = getelementptr inbounds %struct.ug_t* %6, i64 %idxprom6, i32 3
  %7 = load i32* %firstbg, align 4, !tbaa !3
  %add = add i64 %idxprom6, 1
  %firstbg11 = getelementptr inbounds %struct.ug_t* %6, i64 %add, i32 3
  %8 = load i32* %firstbg11, align 4, !tbaa !3
  %sub = sub nsw i32 %8, %7
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %membg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %9 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %bg15 = getelementptr inbounds %struct.membg_t* %9, i64 %idxprom6, i32 0
  %10 = load %struct.bg_t** %bg15, align 8, !tbaa !0
  %tobool = icmp eq %struct.bg_t* %10, null
  br i1 %tobool, label %if.end24, label %if.end24.thread208

if.end24.thread208:                               ; preds = %if.then
  %used209 = getelementptr inbounds %struct.membg_t* %9, i64 %idxprom6, i32 1
  store i32 1, i32* %used209, align 4, !tbaa !3
  br label %land.lhs.true

if.end24:                                         ; preds = %if.then
  tail call fastcc void @load_bg(%struct.lm_s* %lm, i16 zeroext %lw1) #9
  %11 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %used = getelementptr inbounds %struct.membg_t* %11, i64 %idxprom6, i32 1
  store i32 1, i32* %used, align 4, !tbaa !3
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24, %if.end24.thread208
  %.pn = load %struct.membg_t** %membg, align 8
  %.in = getelementptr inbounds %struct.membg_t* %.pn, i64 %idxprom6, i32 0
  %12 = load %struct.bg_t** %.in, align 8
  %call27 = tail call fastcc i32 @find_bg(%struct.bg_t* %12, i32 %sub, i16 zeroext %lw2) #9
  %cmp28 = icmp sgt i32 %call27, -1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %land.lhs.true
  %idxprom31 = sext i32 %call27 to i64
  %bowtid = getelementptr inbounds %struct.bg_t* %12, i64 %idxprom31, i32 2
  %13 = load i16* %bowtid, align 2, !tbaa !5
  %idxprom33 = zext i16 %13 to i64
  %tgbowt = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 16
  %14 = load %union.lmlog_t** %tgbowt, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds %union.lmlog_t* %14, i64 %idxprom33
  %l = bitcast %union.lmlog_t* %arrayidx34 to i32*
  %15 = load i32* %l, align 4, !tbaa !3
  %bowt = getelementptr inbounds i8* %call, i64 16
  %16 = bitcast i8* %bowt to i32*
  store i32 %15, i32* %16, align 4, !tbaa !3
  %add35 = add nsw i32 %call27, %7
  %log_bg_seg_sz = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 7
  %17 = load i32* %log_bg_seg_sz, align 4, !tbaa !3
  %shr = ashr i32 %add35, %17
  %idxprom36 = sext i32 %shr to i64
  %tg_segbase = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 17
  %18 = load i32** %tg_segbase, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %18, i64 %idxprom36
  %19 = load i32* %arrayidx37, align 4, !tbaa !3
  %firsttg = getelementptr inbounds %struct.bg_t* %12, i64 %idxprom31, i32 3
  %20 = load i16* %firsttg, align 2, !tbaa !5
  %conv40 = zext i16 %20 to i32
  %add41 = add nsw i32 %conv40, %19
  %add42 = add nsw i32 %add35, 1
  %shr44 = ashr i32 %add42, %17
  %idxprom45 = sext i32 %shr44 to i64
  %arrayidx47 = getelementptr inbounds i32* %18, i64 %idxprom45
  %21 = load i32* %arrayidx47, align 4, !tbaa !3
  %add48 = add nsw i32 %call27, 1
  %idxprom49 = sext i32 %add48 to i64
  %firsttg51 = getelementptr inbounds %struct.bg_t* %12, i64 %idxprom49, i32 3
  %22 = load i16* %firsttg51, align 2, !tbaa !5
  %conv52 = zext i16 %22 to i32
  %add53 = sub i32 %21, %add41
  %sub54 = add i32 %add53, %conv52
  %n_tg = getelementptr inbounds i8* %call, i64 4
  %23 = bitcast i8* %n_tg to i32*
  store i32 %sub54, i32* %23, align 4, !tbaa !3
  %phitmp = sext i32 %add41 to i64
  br label %if.end57

if.else:                                          ; preds = %entry, %land.lhs.true
  %bowt55 = getelementptr inbounds i8* %call, i64 16
  %24 = bitcast i8* %bowt55 to i32*
  store i32 0, i32* %24, align 4, !tbaa !3
  %n_tg56 = getelementptr inbounds i8* %call, i64 4
  %25 = bitcast i8* %n_tg56 to i32*
  store i32 0, i32* %25, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then30
  %n.0 = phi i32 [ %sub54, %if.then30 ], [ 0, %if.else ]
  %t.0 = phi i64 [ %phitmp, %if.then30 ], [ -1, %if.else ]
  %.b = load i1* @LM_IN_MEMORY, align 1
  %cmp60 = icmp sgt i32 %n.0, 0
  br i1 %.b, label %if.then59, label %if.else68

if.then59:                                        ; preds = %if.end57
  br i1 %cmp60, label %if.then62, label %if.end127

if.then62:                                        ; preds = %if.then59
  %tg64 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 11
  %26 = load %struct.tg_t** %tg64, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds %struct.tg_t* %26, i64 %t.0
  store %struct.tg_t* %arrayidx65, %struct.tg_t** %1, align 8, !tbaa !0
  br label %if.end127

if.else68:                                        ; preds = %if.end57
  br i1 %cmp60, label %if.then71, label %if.end127

if.then71:                                        ; preds = %if.else68
  %conv72 = sext i32 %n.0 to i64
  %call73 = tail call i8* @__ckd_calloc__(i64 %conv72, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 1140) #8
  %27 = bitcast i8* %call73 to %struct.tg_t*
  store %struct.tg_t* %27, %struct.tg_t** %1, align 8, !tbaa !0
  %fp = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 21
  %28 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %tgoff = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 24
  %29 = load i32* %tgoff, align 4, !tbaa !3
  %conv75 = sext i32 %29 to i64
  %mul = shl nsw i64 %t.0, 2
  %add77 = add i64 %conv75, %mul
  %call78 = tail call i32 @fseek(%struct._IO_FILE* %28, i64 %add77, i32 0) #8
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then71
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1142, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then71
  %30 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call85 = tail call i64 @fread(i8* %call73, i64 4, i64 %conv72, %struct._IO_FILE* %30) #8
  %cmp87 = icmp eq i64 %call85, %conv72
  br i1 %cmp87, label %if.end91, label %if.then89

if.then89:                                        ; preds = %if.end82
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1145, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  %31 = load i32* %tgoff, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([28 x i8]* @.str34, i64 0, i64 0), i32 %n.0, i32 %31) #8
  br label %if.end91

if.end91:                                         ; preds = %if.end82, %if.then89
  %byteswap = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 22
  %32 = load i32* %byteswap, align 4, !tbaa !3
  %tobool92 = icmp eq i32 %32, 0
  br i1 %tobool92, label %if.end127, label %for.body

for.body:                                         ; preds = %if.end91, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end91 ]
  %wid = getelementptr inbounds %struct.tg_t* %27, i64 %indvars.iv, i32 0
  %33 = load i16* %wid, align 2, !tbaa !5
  %or = tail call i16 @llvm.bswap.i16(i16 %33)
  store i16 %or, i16* %wid, align 2, !tbaa !5
  %probid = getelementptr inbounds %struct.tg_t* %27, i64 %indvars.iv, i32 1
  %34 = load i16* %probid, align 2, !tbaa !5
  %or120 = tail call i16 @llvm.bswap.i16(i16 %34)
  store i16 %or120, i16* %probid, align 2, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n.0
  br i1 %exitcond, label %if.end127, label %for.body

if.end127:                                        ; preds = %for.body, %if.end91, %if.else68, %if.then59, %if.then62
  %n_tg_fill = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 32
  %35 = load i32* %n_tg_fill, align 4, !tbaa !3
  %inc128 = add nsw i32 %35, 1
  store i32 %inc128, i32* %n_tg_fill, align 4, !tbaa !3
  %n_tg_inmem = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 33
  %36 = load i32* %n_tg_inmem, align 4, !tbaa !3
  %add129 = add nsw i32 %36, %n.0
  store i32 %add129, i32* %n_tg_inmem, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @lm_tg_score(%struct.lm_s* nocapture %lm, i16 zeroext %lw1, i16 zeroext %lw2, i16 zeroext %lw3, i32 %w3) #2 {
entry:
  %n_tg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 2
  %0 = load i32* %n_tg, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %lw1 to i32
  %cmp1 = icmp eq i16 %lw1, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call i32 @lm_bg_score(%struct.lm_s* %lm, i16 zeroext %lw2, i16 zeroext %lw3, i32 %w3) #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %n_tg_score = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 34
  %1 = load i32* %n_tg_score, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %n_tg_score, align 4, !tbaa !3
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %2 = load i32* %n_ug, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %conv, %2
  br i1 %cmp8, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1241, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str29, i64 0, i64 0), i32 %conv) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then10
  %conv13 = zext i16 %lw2 to i32
  %cmp14 = icmp eq i16 %lw2, -1
  br i1 %cmp14, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end12
  %3 = load i32* %n_ug, align 4, !tbaa !3
  %cmp19 = icmp slt i32 %conv13, %3
  br i1 %cmp19, label %if.end23, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false16, %if.end12
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1243, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str30, i64 0, i64 0), i32 %conv13) #8
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false16, %if.then21
  %conv24 = zext i16 %lw3 to i32
  %cmp25 = icmp eq i16 %lw3, -1
  br i1 %cmp25, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end23
  %4 = load i32* %n_ug, align 4, !tbaa !3
  %cmp30 = icmp slt i32 %conv24, %4
  br i1 %cmp30, label %if.end34, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false27, %if.end23
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 1245, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str31, i64 0, i64 0), i32 %conv24) #8
  br label %if.end34

if.end34:                                         ; preds = %lor.lhs.false27, %if.then32
  %and = shl i32 %conv, 21
  %shl = and i32 %and, 2145386496
  %and37 = shl nuw nsw i32 %conv13, 11
  %shl38 = and i32 %and37, 2095104
  %add = or i32 %shl38, %shl
  %and40 = and i32 %conv24, 2047
  %add41 = or i32 %add, %and40
  %rem = urem i32 %add41, 100003
  %idxprom218 = zext i32 %rem to i64
  %tgcache = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 27
  %5 = load %struct.lm_tgcache_entry_t** %tgcache, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds %struct.lm_tgcache_entry_t* %5, i64 %idxprom218, i32 0, i64 0
  %6 = load i16* %arrayidx42, align 2, !tbaa !5
  %cmp45 = icmp eq i16 %6, %lw1
  br i1 %cmp45, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %if.end34
  %arrayidx51 = getelementptr inbounds %struct.lm_tgcache_entry_t* %5, i64 %idxprom218, i32 0, i64 1
  %7 = load i16* %arrayidx51, align 2, !tbaa !5
  %cmp54 = icmp eq i16 %7, %lw2
  br i1 %cmp54, label %land.lhs.true56, label %if.end71

land.lhs.true56:                                  ; preds = %land.lhs.true
  %arrayidx61 = getelementptr inbounds %struct.lm_tgcache_entry_t* %5, i64 %idxprom218, i32 0, i64 2
  %8 = load i16* %arrayidx61, align 2, !tbaa !5
  %cmp64 = icmp eq i16 %8, %lw3
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %land.lhs.true56
  %n_tgcache_hit = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 36
  %9 = load i32* %n_tgcache_hit, align 4, !tbaa !3
  %inc67 = add nsw i32 %9, 1
  store i32 %inc67, i32* %n_tgcache_hit, align 4, !tbaa !3
  %lscr = getelementptr inbounds %struct.lm_tgcache_entry_t* %5, i64 %idxprom218, i32 1
  %10 = load i32* %lscr, align 4, !tbaa !3
  br label %return

if.end71:                                         ; preds = %land.lhs.true56, %land.lhs.true, %if.end34
  %idxprom72 = zext i16 %lw2 to i64
  %tginfo73 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 13
  %11 = load %struct.tginfo_s*** %tginfo73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds %struct.tginfo_s** %11, i64 %idxprom72
  %tginfo.0228 = load %struct.tginfo_s** %arrayidx74, align 8
  %tobool229 = icmp eq %struct.tginfo_s* %tginfo.0228, null
  br i1 %tobool229, label %if.then82, label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.tginfo_s* %tginfo.0231, i64 0, i32 5
  %tginfo.0 = load %struct.tginfo_s** %next, align 8
  %tobool = icmp eq %struct.tginfo_s* %tginfo.0, null
  br i1 %tobool, label %if.then82, label %for.body

for.body:                                         ; preds = %if.end71, %for.cond
  %tginfo.0231 = phi %struct.tginfo_s* [ %tginfo.0, %for.cond ], [ %tginfo.0228, %if.end71 ]
  %prev_tginfo.0230 = phi %struct.tginfo_s* [ %tginfo.0231, %for.cond ], [ null, %if.end71 ]
  %w1 = getelementptr inbounds %struct.tginfo_s* %tginfo.0231, i64 0, i32 0
  %12 = load i16* %w1, align 2, !tbaa !5
  %cmp77 = icmp eq i16 %12, %lw1
  br i1 %cmp77, label %if.else, label %for.cond

if.then82:                                        ; preds = %for.cond, %if.end71
  tail call fastcc void @load_tg(%struct.lm_s* %lm, i16 zeroext %lw1, i16 zeroext %lw2) #9
  %13 = load %struct.tginfo_s*** %tginfo73, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds %struct.tginfo_s** %13, i64 %idxprom72
  %14 = load %struct.tginfo_s** %arrayidx85, align 8, !tbaa !0
  br label %if.end98

if.else:                                          ; preds = %for.body
  %tobool86 = icmp eq %struct.tginfo_s* %prev_tginfo.0230, null
  br i1 %tobool86, label %if.end98, label %if.then87

if.then87:                                        ; preds = %if.else
  %next88 = getelementptr inbounds %struct.tginfo_s* %tginfo.0231, i64 0, i32 5
  %15 = load %struct.tginfo_s** %next88, align 8, !tbaa !0
  %next89 = getelementptr inbounds %struct.tginfo_s* %prev_tginfo.0230, i64 0, i32 5
  store %struct.tginfo_s* %15, %struct.tginfo_s** %next89, align 8, !tbaa !0
  %16 = load %struct.tginfo_s*** %tginfo73, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds %struct.tginfo_s** %16, i64 %idxprom72
  %17 = load %struct.tginfo_s** %arrayidx92, align 8, !tbaa !0
  store %struct.tginfo_s* %17, %struct.tginfo_s** %next88, align 8, !tbaa !0
  %18 = load %struct.tginfo_s*** %tginfo73, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds %struct.tginfo_s** %18, i64 %idxprom72
  store %struct.tginfo_s* %tginfo.0231, %struct.tginfo_s** %arrayidx96, align 8, !tbaa !0
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then87, %if.then82
  %tginfo.1 = phi %struct.tginfo_s* [ %tginfo.0231, %if.then87 ], [ %tginfo.0231, %if.else ], [ %14, %if.then82 ]
  %used = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 4
  store i32 1, i32* %used, align 4, !tbaa !3
  %n_tg99 = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 1
  %19 = load i32* %n_tg99, align 4, !tbaa !3
  %tg100 = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 2
  %20 = load %struct.tg_t** %tg100, align 8, !tbaa !0
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.then.i, %if.end98
  %b.0.ph.i = phi i32 [ 0, %if.end98 ], [ %add4.i, %if.then.i ]
  %e.0.ph.i = phi i32 [ %19, %if.end98 ], [ %e.0.i, %if.then.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i, %while.cond.outer.i
  %e.0.i = phi i32 [ %shr.i, %if.else.i ], [ %e.0.ph.i, %while.cond.outer.i ]
  %sub.i = sub nsw i32 %e.0.i, %b.0.ph.i
  %cmp.i = icmp sgt i32 %sub.i, 16
  br i1 %cmp.i, label %while.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.cond.i
  %cmp1541.i = icmp slt i32 %b.0.ph.i, %e.0.i
  br i1 %cmp1541.i, label %land.rhs.lr.ph.i, label %if.else116

land.rhs.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %21 = sext i32 %b.0.ph.i to i64
  br label %land.rhs.i

while.body.i:                                     ; preds = %while.cond.i
  %add.i = add nsw i32 %e.0.i, %b.0.ph.i
  %shr.i = ashr i32 %add.i, 1
  %idxprom.i = sext i32 %shr.i to i64
  %wid.i = getelementptr inbounds %struct.tg_t* %20, i64 %idxprom.i, i32 0
  %22 = load i16* %wid.i, align 2, !tbaa !5
  %cmp2.i = icmp ult i16 %22, %lw3
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %add4.i = add nsw i32 %shr.i, 1
  br label %while.cond.outer.i

if.else.i:                                        ; preds = %while.body.i
  %cmp10.i = icmp ugt i16 %22, %lw3
  br i1 %cmp10.i, label %while.cond.i, label %find_tg.exit

for.cond.i:                                       ; preds = %land.rhs.i
  %inc.i = add nsw i32 %i.042.i, 1
  %23 = trunc i64 %indvars.iv.next.i to i32
  %cmp15.i = icmp slt i32 %23, %e.0.i
  br i1 %cmp15.i, label %land.rhs.i, label %if.else116

land.rhs.i:                                       ; preds = %for.cond.i, %land.rhs.lr.ph.i
  %indvars.iv.i = phi i64 [ %21, %land.rhs.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i ]
  %i.042.i = phi i32 [ %b.0.ph.i, %land.rhs.lr.ph.i ], [ %inc.i, %for.cond.i ]
  %wid19.i = getelementptr inbounds %struct.tg_t* %20, i64 %indvars.iv.i, i32 0
  %24 = load i16* %wid19.i, align 2, !tbaa !5
  %cmp22.i = icmp eq i16 %24, %lw3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %cmp22.i, label %find_tg.exit, label %for.cond.i

find_tg.exit:                                     ; preds = %if.else.i, %land.rhs.i
  %retval.0.i = phi i32 [ %i.042.i, %land.rhs.i ], [ %shr.i, %if.else.i ]
  %cmp102 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp102, label %if.then104, label %if.else116

if.then104:                                       ; preds = %find_tg.exit
  %idxprom105 = sext i32 %retval.0.i to i64
  %probid = getelementptr inbounds %struct.tg_t* %20, i64 %idxprom105, i32 1
  %25 = load i16* %probid, align 2, !tbaa !5
  %idxprom107 = zext i16 %25 to i64
  %tgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 15
  %26 = load %union.lmlog_t** %tgprob, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds %union.lmlog_t* %26, i64 %idxprom107
  %l = bitcast %union.lmlog_t* %arrayidx108 to i32*
  %27 = load i32* %l, align 4, !tbaa !3
  %inclass_ugscore = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 42
  %28 = load i32** %inclass_ugscore, align 8, !tbaa !0
  %tobool109 = icmp eq i32* %28, null
  br i1 %tobool109, label %if.end115, label %if.then110

if.then110:                                       ; preds = %if.then104
  %idxprom111 = sext i32 %w3 to i64
  %arrayidx113 = getelementptr inbounds i32* %28, i64 %idxprom111
  %29 = load i32* %arrayidx113, align 4, !tbaa !3
  %add114 = add nsw i32 %29, %27
  br label %if.end115

if.end115:                                        ; preds = %if.then104, %if.then110
  %score.0 = phi i32 [ %add114, %if.then110 ], [ %27, %if.then104 ]
  %access_type = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 37
  store i32 3, i32* %access_type, align 4, !tbaa !3
  br label %if.end120

if.else116:                                       ; preds = %for.cond.i, %for.cond.preheader.i, %find_tg.exit
  %n_tg_bo = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 35
  %30 = load i32* %n_tg_bo, align 4, !tbaa !3
  %inc117 = add nsw i32 %30, 1
  store i32 %inc117, i32* %n_tg_bo, align 4, !tbaa !3
  %bowt = getelementptr inbounds %struct.tginfo_s* %tginfo.1, i64 0, i32 3
  %31 = load i32* %bowt, align 4, !tbaa !3
  %call118 = tail call i32 @lm_bg_score(%struct.lm_s* %lm, i16 zeroext %lw2, i16 zeroext %lw3, i32 %w3) #9
  %add119 = add nsw i32 %call118, %31
  br label %if.end120

if.end120:                                        ; preds = %if.else116, %if.end115
  %score.1 = phi i32 [ %score.0, %if.end115 ], [ %add119, %if.else116 ]
  %32 = load %struct.lm_tgcache_entry_t** %tgcache, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds %struct.lm_tgcache_entry_t* %32, i64 %idxprom218, i32 0, i64 0
  store i16 %lw1, i16* %arrayidx125, align 2, !tbaa !5
  %arrayidx130 = getelementptr inbounds %struct.lm_tgcache_entry_t* %32, i64 %idxprom218, i32 0, i64 1
  store i16 %lw2, i16* %arrayidx130, align 2, !tbaa !5
  %arrayidx135 = getelementptr inbounds %struct.lm_tgcache_entry_t* %32, i64 %idxprom218, i32 0, i64 2
  store i16 %lw3, i16* %arrayidx135, align 2, !tbaa !5
  %lscr139 = getelementptr inbounds %struct.lm_tgcache_entry_t* %32, i64 %idxprom218, i32 1
  store i32 %score.1, i32* %lscr139, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end120, %if.then66, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %10, %if.then66 ], [ %score.1, %if.end120 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i16 @lm_wid(%struct.lm_s* nocapture %lm, i8* nocapture %word) #0 {
entry:
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %0 = load i32* %n_ug, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %wordstr = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 4
  %1 = load i8*** %wordstr, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.07, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv
  %3 = load i8** %arrayidx, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %3, i8* %word) #7
  %cmp1 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %conv = trunc i32 %i.07 to i16
  br label %return

return:                                           ; preds = %entry, %for.cond, %if.then
  %retval.0 = phi i16 [ %conv, %if.then ], [ -1, %for.cond ], [ -1, %entry ]
  ret i16 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @lm_free(%struct.lm_s* %lm) #2 {
entry:
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %0 = load i32* %n_ug, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %0, 0
  %wordstr = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 4
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i8*** %wordstr, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  tail call void @ckd_free(i8* %2) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i32* %n_ug, align 4, !tbaa !3
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %4, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.body
  %membg = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 12
  %5 = load %struct.membg_t** %membg, align 8, !tbaa !0
  %6 = bitcast %struct.membg_t* %5 to i8*
  tail call void @ckd_free(i8* %6) #8
  %7 = load i8*** %wordstr, align 8, !tbaa !0
  %8 = bitcast i8** %7 to i8*
  tail call void @ckd_free(i8* %8) #8
  %tgcache = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 27
  %9 = load %struct.lm_tgcache_entry_t** %tgcache, align 8, !tbaa !0
  %10 = bitcast %struct.lm_tgcache_entry_t* %9 to i8*
  tail call void @ckd_free(i8* %10) #8
  %tg_segbase = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 17
  %11 = load i32** %tg_segbase, align 8, !tbaa !0
  %12 = bitcast i32* %11 to i8*
  tail call void @ckd_free(i8* %12) #8
  %tgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 15
  %13 = load %union.lmlog_t** %tgprob, align 8, !tbaa !0
  %14 = bitcast %union.lmlog_t* %13 to i8*
  tail call void @ckd_free(i8* %14) #8
  %tgbowt = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 16
  %15 = load %union.lmlog_t** %tgbowt, align 8, !tbaa !0
  %16 = bitcast %union.lmlog_t* %15 to i8*
  tail call void @ckd_free(i8* %16) #8
  %bgprob = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 14
  %17 = load %union.lmlog_t** %bgprob, align 8, !tbaa !0
  %18 = bitcast %union.lmlog_t* %17 to i8*
  tail call void @ckd_free(i8* %18) #8
  %tginfo = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 13
  %19 = load %struct.tginfo_s*** %tginfo, align 8, !tbaa !0
  %20 = bitcast %struct.tginfo_s** %19 to i8*
  tail call void @ckd_free(i8* %20) #8
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %21 = load %struct.ug_t** %ug, align 8, !tbaa !0
  %22 = bitcast %struct.ug_t* %21 to i8*
  tail call void @ckd_free(i8* %22) #8
  %23 = bitcast %struct.lm_s* %lm to i8*
  tail call void @ckd_free(i8* %23) #8
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #3

; Function Attrs: optsize
declare i8* @__ckd_malloc__(i64, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #5

; Function Attrs: optsize
declare void @_E__fatal_sys_error(i8*, ...) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @lm_fread_int32(%struct.lm_s* nocapture %lm) #2 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  %fp = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 21
  %1 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1) #8
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 242, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #8
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %byteswap = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 22
  %2 = load i32* %byteswap, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  %.pre = load i32* %val, align 4, !tbaa !3
  br i1 %tobool, label %if.end9, label %if.then1

if.then1:                                         ; preds = %if.end
  %or8 = call i32 @llvm.bswap.i32(i32 %.pre)
  store i32 %or8, i32* %val, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then1
  %3 = phi i32 [ %or8, %if.then1 ], [ %.pre, %if.end ]
  ret i32 %3
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #5

; Function Attrs: optsize
declare i32 @log10_to_logs3(double) #3

; Function Attrs: optsize
declare i32 @logs3_add(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind readnone
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
