; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/wid.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
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
%struct.wordprob_t = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/wid.c\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str2 = private unnamed_addr constant [40 x i8] c"%s is both a word and an LM class name\0A\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Filler dictionary word '%s' found in LM\0A\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"LM word '%s' is an alternative pronunciation in dictionary\0A\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"map[dictid] = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [33 x i8] c"Multiple mappings of '%s' in LM\0A\00", align 1
@.str8 = private unnamed_addr constant [40 x i8] c"%d LM words not in dictionary; ignored\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str10 = private unnamed_addr constant [50 x i8] c"Error in mapping, please read the log to see why\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i16* @wid_dict_lm_map(%struct.dict_t* %dict, %struct.lm_s* %lm, i32 %lw) #0 {
entry:
  %n_word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 7
  %0 = load i32* %n_word, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call = tail call i8* @__ckd_calloc__(i64 %conv, i64 2, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 76) #2
  %1 = bitcast i8* %call to i16*
  %2 = load i32* %n_word, align 4, !tbaa !0
  %cmp263 = icmp sgt i32 %2, 0
  br i1 %cmp263, label %for.body.lr.ph, label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %entry
  %inclass_ugscore = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 42
  %3 = load i32** %inclass_ugscore, align 8, !tbaa !3
  %tobool = icmp eq i32* %3, null
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc, %entry
  %n_ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 0
  %4 = load i32* %n_ug, align 4, !tbaa !0
  %cmp7255 = icmp sgt i32 %4, 0
  br i1 %cmp7255, label %for.body9.lr.ph, label %if.end162

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %wordstr = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 4
  %lmclass = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 40
  %ug = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 9
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %inclass_ugscore137 = getelementptr inbounds %struct.lm_s* %lm, i64 0, i32 42
  br label %for.body9

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %5 = phi i32 [ %2, %for.body.lr.ph ], [ %6, %for.inc ]
  %indvars.iv265 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next266, %for.inc ]
  %arrayidx = getelementptr inbounds i16* %1, i64 %indvars.iv265
  store i16 -1, i16* %arrayidx, align 2, !tbaa !4
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i32* %3, i64 %indvars.iv265
  store i32 0, i32* %arrayidx5, align 4, !tbaa !0
  %.pre267 = load i32* %n_word, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = phi i32 [ %5, %for.body ], [ %.pre267, %if.then ]
  %indvars.iv.next266 = add i64 %indvars.iv265, 1
  %7 = trunc i64 %indvars.iv.next266 to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc153
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc153 ]
  %maperr.0260 = phi i32 [ 0, %for.body9.lr.ph ], [ %maperr.3, %for.inc153 ]
  %classid.0257 = phi i32 [ undef, %for.body9.lr.ph ], [ %classid.1, %for.inc153 ]
  %n.1256 = phi i32 [ 0, %for.body9.lr.ph ], [ %n.4, %for.inc153 ]
  %8 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i8** %8, i64 %indvars.iv
  %9 = load i8** %arrayidx11, align 8, !tbaa !3
  %call12 = tail call i32 @dict_wordid(%struct.dict_t* %dict, i8* %9) #2
  %10 = load %struct.lmclass_s*** %lmclass, align 8, !tbaa !3
  %tobool13 = icmp eq %struct.lmclass_s** %10, null
  br i1 %tobool13, label %if.end19, label %if.then14

if.then14:                                        ; preds = %for.body9
  %11 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i8** %11, i64 %indvars.iv
  %12 = load i8** %arrayidx17, align 8, !tbaa !3
  %call18 = tail call i32 @lm_get_classid(%struct.lm_s* %lm, i8* %12) #2
  %.pre = load %struct.lmclass_s*** %lmclass, align 8, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %for.body9, %if.then14
  %13 = phi %struct.lmclass_s** [ %.pre, %if.then14 ], [ null, %for.body9 ]
  %classid.1 = phi i32 [ %call18, %if.then14 ], [ %classid.0257, %for.body9 ]
  %14 = load %struct.ug_t** %ug, align 8, !tbaa !3
  %dictwid = getelementptr inbounds %struct.ug_t* %14, i64 %indvars.iv, i32 0
  store i32 %call12, i32* %dictwid, align 4, !tbaa !0
  %cmp22 = icmp sgt i32 %call12, -1
  %tobool26 = icmp ne %struct.lmclass_s** %13, null
  %cmp27 = icmp sgt i32 %classid.1, -1
  %or.cond = and i1 %tobool26, %cmp27
  br i1 %cmp22, label %if.then24, label %if.else70

if.then24:                                        ; preds = %if.end19
  br i1 %or.cond, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then24
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 101, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #2
  %15 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i8** %15, i64 %indvars.iv
  %16 = load i8** %arrayidx32, align 8, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str2, i64 0, i64 0), i8* %16) #2
  br label %for.inc153

if.else:                                          ; preds = %if.then24
  %call33 = tail call i32 @dict_filler_word(%struct.dict_t* %dict, i32 %call12) #2
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.end39, label %if.then35

if.then35:                                        ; preds = %if.else
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 108, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #2
  %17 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx38 = getelementptr inbounds i8** %17, i64 %indvars.iv
  %18 = load i8** %arrayidx38, align 8, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i8* %18) #2
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35
  %idxprom40 = sext i32 %call12 to i64
  %19 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %basewid = getelementptr inbounds %struct.dictword_t* %19, i64 %idxprom40, i32 4
  %20 = load i32* %basewid, align 4, !tbaa !0
  %cmp42 = icmp eq i32 %call12, %20
  br i1 %cmp42, label %for.cond57.preheader, label %if.then44

if.then44:                                        ; preds = %if.end39
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 111, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #2
  %21 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds i8** %21, i64 %indvars.iv
  %22 = load i8** %arrayidx47, align 8, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), i8* %22) #2
  %23 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %basewid51 = getelementptr inbounds %struct.dictword_t* %23, i64 %idxprom40, i32 4
  %24 = load i32* %basewid51, align 4, !tbaa !0
  %25 = load %struct.ug_t** %ug, align 8, !tbaa !3
  %dictwid55 = getelementptr inbounds %struct.ug_t* %25, i64 %indvars.iv, i32 0
  store i32 %24, i32* %dictwid55, align 4, !tbaa !0
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %if.then44, %if.end39
  %26 = phi %struct.dictword_t* [ %19, %if.end39 ], [ %23, %if.then44 ]
  %w.0.ph = phi i32 [ %call12, %if.end39 ], [ %24, %if.then44 ]
  %cmp58253 = icmp sgt i32 %w.0.ph, -1
  br i1 %cmp58253, label %for.body60.lr.ph, label %for.inc153

for.body60.lr.ph:                                 ; preds = %for.cond57.preheader
  %conv61 = trunc i64 %indvars.iv to i16
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.body60
  %w.0254 = phi i32 [ %w.0.ph, %for.body60.lr.ph ], [ %27, %for.body60 ]
  %idxprom62 = sext i32 %w.0254 to i64
  %arrayidx63 = getelementptr inbounds i16* %1, i64 %idxprom62
  store i16 %conv61, i16* %arrayidx63, align 2, !tbaa !4
  %alt = getelementptr inbounds %struct.dictword_t* %26, i64 %idxprom62, i32 3
  %27 = load i32* %alt, align 4, !tbaa !0
  %cmp58 = icmp sgt i32 %27, -1
  br i1 %cmp58, label %for.body60, label %for.inc153

if.else70:                                        ; preds = %if.end19
  br i1 %or.cond, label %if.then76, label %if.else149

if.then76:                                        ; preds = %if.else70
  store i32 %classid.1, i32* %dictwid, align 4, !tbaa !0
  %sub = add nsw i32 %classid.1, -16777216
  %idxprom81 = sext i32 %sub to i64
  %arrayidx83 = getelementptr inbounds %struct.lmclass_s** %13, i64 %idxprom81
  %28 = load %struct.lmclass_s** %arrayidx83, align 8, !tbaa !3
  %wordlist = getelementptr inbounds %struct.lmclass_s* %28, i64 0, i32 1
  %lmclass_word.0246 = load %struct.lmclass_word_s** %wordlist, align 8
  %cmp84247 = icmp eq %struct.lmclass_word_s* %lmclass_word.0246, null
  br i1 %cmp84247, label %for.inc153, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then76
  %conv133 = trunc i64 %indvars.iv to i16
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end148
  %lmclass_word.0250 = phi %struct.lmclass_word_s* [ %lmclass_word.0246, %while.body.lr.ph ], [ %lmclass_word.0, %if.end148 ]
  %maperr.1249 = phi i32 [ %maperr.0260, %while.body.lr.ph ], [ %maperr.2, %if.end148 ]
  %n.2248 = phi i32 [ %n.1256, %while.body.lr.ph ], [ %n.3, %if.end148 ]
  %dictwid86 = getelementptr inbounds %struct.lmclass_word_s* %lmclass_word.0250, i64 0, i32 1
  %29 = load i32* %dictwid86, align 4, !tbaa !0
  %cmp87 = icmp sgt i32 %29, -1
  br i1 %cmp87, label %if.then89, label %if.else146

if.then89:                                        ; preds = %while.body
  %idxprom90 = sext i32 %29 to i64
  %arrayidx91 = getelementptr inbounds i16* %1, i64 %idxprom90
  %30 = load i16* %arrayidx91, align 2, !tbaa !4
  %cmp99 = icmp eq i16 %30, -1
  br i1 %cmp99, label %if.else106, label %if.then101

if.then101:                                       ; preds = %if.then89
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 138, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #2
  %31 = load i16* %arrayidx91, align 2, !tbaa !4
  %conv104 = zext i16 %31 to i32
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i32 %conv104) #2
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 139, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #2
  %word105 = getelementptr inbounds %struct.lmclass_word_s* %lmclass_word.0250, i64 0, i32 0
  %32 = load i8** %word105, align 8, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0), i8* %32) #2
  br label %if.end148

if.else106:                                       ; preds = %if.then89
  %call107 = tail call i32 @dict_filler_word(%struct.dict_t* %dict, i32 %29) #2
  %tobool108 = icmp eq i32 %call107, 0
  br i1 %tobool108, label %if.end113, label %if.then109

if.then109:                                       ; preds = %if.else106
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 144, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #2
  %33 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx112 = getelementptr inbounds i8** %33, i64 %idxprom90
  %34 = load i8** %arrayidx112, align 8, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i8* %34) #2
  br label %if.end113

if.end113:                                        ; preds = %if.else106, %if.then109
  %35 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %basewid117 = getelementptr inbounds %struct.dictword_t* %35, i64 %idxprom90, i32 4
  %36 = load i32* %basewid117, align 4, !tbaa !0
  %cmp118 = icmp eq i32 %29, %36
  br i1 %cmp118, label %for.cond129.preheader, label %if.then120

if.then120:                                       ; preds = %if.end113
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 147, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #2
  %37 = load i8*** %wordstr, align 8, !tbaa !3
  %arrayidx123 = getelementptr inbounds i8** %37, i64 %idxprom90
  %38 = load i8** %arrayidx123, align 8, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), i8* %38) #2
  %39 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %basewid127 = getelementptr inbounds %struct.dictword_t* %39, i64 %idxprom90, i32 4
  %40 = load i32* %basewid127, align 4, !tbaa !0
  br label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %if.then120, %if.end113
  %41 = phi %struct.dictword_t* [ %35, %if.end113 ], [ %39, %if.then120 ]
  %dictid.0.ph = phi i32 [ %29, %if.end113 ], [ %40, %if.then120 ]
  %cmp130244 = icmp sgt i32 %dictid.0.ph, -1
  br i1 %cmp130244, label %for.body132.lr.ph, label %if.end148

for.body132.lr.ph:                                ; preds = %for.cond129.preheader
  %LOGprob = getelementptr inbounds %struct.lmclass_word_s* %lmclass_word.0250, i64 0, i32 2
  %42 = load i32** %inclass_ugscore137, align 8, !tbaa !3
  br label %for.body132

for.body132:                                      ; preds = %for.body132.lr.ph, %for.body132
  %dictid.0245 = phi i32 [ %dictid.0.ph, %for.body132.lr.ph ], [ %44, %for.body132 ]
  %idxprom134 = sext i32 %dictid.0245 to i64
  %arrayidx135 = getelementptr inbounds i16* %1, i64 %idxprom134
  store i16 %conv133, i16* %arrayidx135, align 2, !tbaa !4
  %43 = load i32* %LOGprob, align 4, !tbaa !0
  %mul = mul nsw i32 %43, %lw
  %arrayidx138 = getelementptr inbounds i32* %42, i64 %idxprom134
  store i32 %mul, i32* %arrayidx138, align 4, !tbaa !0
  %alt143 = getelementptr inbounds %struct.dictword_t* %41, i64 %idxprom134, i32 3
  %44 = load i32* %alt143, align 4, !tbaa !0
  %cmp130 = icmp sgt i32 %44, -1
  br i1 %cmp130, label %for.body132, label %if.end148

if.else146:                                       ; preds = %while.body
  %inc147 = add nsw i32 %n.2248, 1
  br label %if.end148

if.end148:                                        ; preds = %for.cond129.preheader, %for.body132, %if.then101, %if.else146
  %n.3 = phi i32 [ %n.2248, %if.then101 ], [ %inc147, %if.else146 ], [ %n.2248, %for.body132 ], [ %n.2248, %for.cond129.preheader ]
  %maperr.2 = phi i32 [ 1, %if.then101 ], [ %maperr.1249, %if.else146 ], [ %maperr.1249, %for.body132 ], [ %maperr.1249, %for.cond129.preheader ]
  %next = getelementptr inbounds %struct.lmclass_word_s* %lmclass_word.0250, i64 0, i32 3
  %lmclass_word.0 = load %struct.lmclass_word_s** %next, align 8
  %cmp84 = icmp eq %struct.lmclass_word_s* %lmclass_word.0, null
  br i1 %cmp84, label %for.inc153, label %while.body

if.else149:                                       ; preds = %if.else70
  %inc150 = add nsw i32 %n.1256, 1
  br label %for.inc153

for.inc153:                                       ; preds = %for.cond57.preheader, %for.body60, %if.then76, %if.end148, %if.then29, %if.else149
  %n.4 = phi i32 [ %n.1256, %if.then29 ], [ %inc150, %if.else149 ], [ %n.1256, %if.then76 ], [ %n.3, %if.end148 ], [ %n.1256, %for.body60 ], [ %n.1256, %for.cond57.preheader ]
  %maperr.3 = phi i32 [ 1, %if.then29 ], [ %maperr.0260, %if.else149 ], [ %maperr.0260, %if.then76 ], [ %maperr.2, %if.end148 ], [ %maperr.0260, %for.body60 ], [ %maperr.0260, %for.cond57.preheader ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %45 = load i32* %n_ug, align 4, !tbaa !0
  %46 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %46, %45
  br i1 %cmp7, label %for.body9, label %for.end155

for.end155:                                       ; preds = %for.inc153
  %cmp156 = icmp sgt i32 %n.4, 0
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %for.end155
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 178, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #2
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([40 x i8]* @.str8, i64 0, i64 0), i32 %n.4) #2
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %for.end155
  %tobool160 = icmp eq i32 %maperr.3, 0
  br i1 %tobool160, label %if.end162, label %if.then161

if.then161:                                       ; preds = %if.end159
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i64 187, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #2
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([50 x i8]* @.str10, i64 0, i64 0)) #2
  br label %if.end162

if.end162:                                        ; preds = %for.cond6.preheader, %if.end159, %if.then161
  ret i16* %1
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare i32 @dict_wordid(%struct.dict_t*, i8*) #1

; Function Attrs: optsize
declare i32 @lm_get_classid(%struct.lm_s*, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: optsize
declare i32 @dict_filler_word(%struct.dict_t*, i32) #1

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @wid_wordprob2alt(%struct.dict_t* nocapture %dict, %struct.wordprob_t* nocapture %wp, i32 %n) #0 {
entry:
  %cmp39 = icmp sgt i32 %n, 0
  br i1 %cmp39, label %for.body.lr.ph, label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %.pre = load %struct.dictword_t** %word, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc18, %for.body.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc18 ]
  %j.041 = phi i32 [ %n, %for.body.lr.ph ], [ %j.1.lcssa, %for.inc18 ]
  %wid = getelementptr inbounds %struct.wordprob_t* %wp, i64 %indvars.iv43, i32 0
  %0 = load i32* %wid, align 4, !tbaa !0
  %idxprom1 = sext i32 %0 to i64
  %alt = getelementptr inbounds %struct.dictword_t* %.pre, i64 %idxprom1, i32 3
  %w.035 = load i32* %alt, align 4
  %cmp436 = icmp sgt i32 %w.035, -1
  br i1 %cmp436, label %for.body5.lr.ph, label %for.inc18

for.body5.lr.ph:                                  ; preds = %for.body
  %prob = getelementptr inbounds %struct.wordprob_t* %wp, i64 %indvars.iv43, i32 1
  %1 = sext i32 %j.041 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv = phi i64 [ %1, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %w.038 = phi i32 [ %w.035, %for.body5.lr.ph ], [ %w.0, %for.body5 ]
  %j.137 = phi i32 [ %j.041, %for.body5.lr.ph ], [ %inc, %for.body5 ]
  %wid8 = getelementptr inbounds %struct.wordprob_t* %wp, i64 %indvars.iv, i32 0
  store i32 %w.038, i32* %wid8, align 4, !tbaa !0
  %2 = load i32* %prob, align 4, !tbaa !0
  %prob13 = getelementptr inbounds %struct.wordprob_t* %wp, i64 %indvars.iv, i32 1
  store i32 %2, i32* %prob13, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %j.137, 1
  %idxprom14 = sext i32 %w.038 to i64
  %alt17 = getelementptr inbounds %struct.dictword_t* %.pre, i64 %idxprom14, i32 3
  %w.0 = load i32* %alt17, align 4
  %cmp4 = icmp sgt i32 %w.0, -1
  br i1 %cmp4, label %for.body5, label %for.inc18

for.inc18:                                        ; preds = %for.body5, %for.body
  %j.1.lcssa = phi i32 [ %j.041, %for.body ], [ %inc, %for.body5 ]
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end20, label %for.body

for.end20:                                        ; preds = %for.inc18, %entry
  %j.0.lcssa = phi i32 [ %n, %entry ], [ %j.1.lcssa, %for.inc18 ]
  ret i32 %j.0.lcssa
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
