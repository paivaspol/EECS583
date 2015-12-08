; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/dict.c'
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/dict.c\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str2 = private unnamed_addr constant [33 x i8] c"Dictionary full; add(%s) failed\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"Missing base word for: %s\0A\00", align 1
@.str5 = private unnamed_addr constant [20 x i8] c"No dictionary file\0A\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"fopen(%s,r) failed\0A\00", align 1
@.str9 = private unnamed_addr constant [48 x i8] c"#Words in dictionaries (%d) exceeds limit (%d)\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str11 = private unnamed_addr constant [29 x i8] c"Reading main dictionary: %s\0A\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"%d words read\0A\00", align 1
@.str13 = private unnamed_addr constant [31 x i8] c"Reading filler dictionary: %s\0A\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"<sil>\00", align 1
@.str17 = private unnamed_addr constant [44 x i8] c"Building compound words (separator = '%c')\0A\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"%d compound words\0A\00", align 1
@.str19 = private unnamed_addr constant [53 x i8] c"Bad compound word %s: leading or trailing separator\0A\00", align 1
@.str20 = private unnamed_addr constant [47 x i8] c"Compound special/filler word (%s) not allowed\0A\00", align 1
@.str21 = private unnamed_addr constant [45 x i8] c"Bad compound word %s: successive separators\0A\00", align 1
@.str22 = private unnamed_addr constant [43 x i8] c"Component word %s of %s not in dictionary\0A\00", align 1
@.str23 = private unnamed_addr constant [46 x i8] c"str2words(%s) failed; Increase maxwd from %d\0A\00", align 1
@.str24 = private unnamed_addr constant [48 x i8] c"Line %d: No pronunciation for word %s; ignored\0A\00", align 1
@.str25 = private unnamed_addr constant [43 x i8] c"Line %d: Bad ciphone: %s; word %s ignored\0A\00", align 1
@.str26 = private unnamed_addr constant [58 x i8] c"Line %d: dict_add_word (%s) failed (duplicate?); ignored\0A\00", align 1
@.str27 = private unnamed_addr constant [55 x i8] c"Too many CIphones in dictionary; increase MAX_S3CIPID\0A\00", align 1
@.str28 = private unnamed_addr constant [41 x i8] c"hash_enter(local-phonetable, %s) failed\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @dict_ciphone_str(%struct.dict_t* nocapture %d, i32 %wid, i32 %pos) #0 {
entry:
  %mdef = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 0
  %0 = load %struct.mdef_t** %mdef, align 8, !tbaa !0
  %tobool = icmp eq %struct.mdef_t* %0, null
  %idxprom4 = sext i32 %pos to i64
  %idxprom5 = sext i32 %wid to i64
  %word6 = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %1 = load %struct.dictword_t** %word6, align 8, !tbaa !0
  %ciphone8 = getelementptr inbounds %struct.dictword_t* %1, i64 %idxprom5, i32 1
  %2 = load i8** %ciphone8, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8* %2, i64 %idxprom4
  %3 = load i8* %arrayidx9, align 1, !tbaa !1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @mdef_ciphone_str(%struct.mdef_t* %0, i8 signext %3) #6
  br label %return

if.else:                                          ; preds = %entry
  %idxprom10 = sext i8 %3 to i64
  %ciphone_str = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 2
  %4 = load i8*** %ciphone_str, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i8** %4, i64 %idxprom10
  %5 = load i8** %arrayidx11, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %5, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i8* @mdef_ciphone_str(%struct.mdef_t*, i8 signext) #1

; Function Attrs: nounwind optsize uwtable
define i32 @dict_add_word(%struct.dict_t* nocapture %d, i8* %word, i8* %p, i32 %np) #0 {
entry:
  %w = alloca i32, align 4
  %n_word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 7
  %0 = load i32* %n_word, align 4, !tbaa !3
  %max_words = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 6
  %1 = load i32* %max_words, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 112, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0), i8* %word) #6
  br label %return

if.end:                                           ; preds = %entry
  %word1 = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %2 = load %struct.dictword_t** %word1, align 8, !tbaa !0
  %idx.ext = sext i32 %0 to i64
  %call = call i8* @__ckd_salloc__(i8* %word, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 117) #6
  %word3 = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 0
  store i8* %call, i8** %word3, align 8, !tbaa !0
  %ht = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 5
  %3 = load %struct.hash_table_t** %ht, align 8, !tbaa !0
  %4 = load i32* %n_word, align 4, !tbaa !3
  %call6 = call i32 @hash_enter(%struct.hash_table_t* %3, i8* %call, i32 %4) #6
  %5 = load i32* %n_word, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %call6, %5
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %6 = load i8** %word3, align 8, !tbaa !0
  call void @ckd_free(i8* %6) #6
  br label %return

if.end11:                                         ; preds = %if.end
  %tobool = icmp ne i8* %p, null
  %cmp12 = icmp sgt i32 %np, 0
  %or.cond = and i1 %tobool, %cmp12
  br i1 %or.cond, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %conv = sext i32 %np to i64
  %call14 = call i8* @__ckd_malloc__(i64 %conv, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 127) #6
  %ciphone = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 1
  store i8* %call14, i8** %ciphone, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call14, i8* %p, i64 %conv, i32 1, i1 false)
  %pronlen = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 2
  store i32 %np, i32* %pronlen, align 4, !tbaa !3
  br label %if.end20

if.else:                                          ; preds = %if.end11
  %ciphone18 = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 1
  store i8* null, i8** %ciphone18, align 8, !tbaa !0
  %pronlen19 = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 2
  store i32 0, i32* %pronlen19, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  %alt = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 3
  store i32 -1, i32* %alt, align 4, !tbaa !3
  %7 = load i32* %n_word, align 4, !tbaa !3
  %basewid = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 4
  store i32 %7, i32* %basewid, align 4, !tbaa !3
  %n_comp = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 5
  store i32 0, i32* %n_comp, align 4, !tbaa !3
  %comp = getelementptr inbounds %struct.dictword_t* %2, i64 %idx.ext, i32 6
  store i32* null, i32** %comp, align 8, !tbaa !0
  %call22 = call i32 @dict_word2basestr(i8* %word) #7
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end46

if.then25:                                        ; preds = %if.end20
  %8 = load %struct.hash_table_t** %ht, align 8, !tbaa !0
  %call27 = call i32 @hash_lookup(%struct.hash_table_t* %8, i8* %word, i32* %w) #6
  %cmp28 = icmp slt i32 %call27, 0
  %idxprom = sext i32 %call22 to i64
  %arrayidx = getelementptr inbounds i8* %word, i64 %idxprom
  store i8 40, i8* %arrayidx, align 1, !tbaa !1
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.then25
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 144, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i8* %word) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.then30
  %9 = load i32* %w, align 4, !tbaa !3
  store i32 %9, i32* %basewid, align 4, !tbaa !3
  %10 = load i32* %w, align 4, !tbaa !3
  %idxprom36 = sext i32 %10 to i64
  %11 = load %struct.dictword_t** %word1, align 8, !tbaa !0
  %alt39 = getelementptr inbounds %struct.dictword_t* %11, i64 %idxprom36, i32 3
  %12 = load i32* %alt39, align 4, !tbaa !3
  store i32 %12, i32* %alt, align 4, !tbaa !3
  %13 = load i32* %n_word, align 4, !tbaa !3
  %14 = load i32* %w, align 4, !tbaa !3
  %idxprom42 = sext i32 %14 to i64
  %alt45 = getelementptr inbounds %struct.dictword_t* %11, i64 %idxprom42, i32 3
  store i32 %13, i32* %alt45, align 4, !tbaa !3
  br label %if.end46

if.end46:                                         ; preds = %if.end34, %if.end20
  %15 = load i32* %n_word, align 4, !tbaa !3
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %n_word, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end46, %if.then9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then9 ], [ %15, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: optsize
declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

; Function Attrs: optsize
declare i32 @hash_enter(%struct.hash_table_t*, i8*, i32) #1

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: optsize
declare i8* @__ckd_malloc__(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define i32 @dict_word2basestr(i8* nocapture %word) #0 {
entry:
  %call = tail call i64 @strlen(i8* %word) #8
  %sub = shl i64 %call, 32
  %sext = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %word, i64 %idxprom
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 41
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %conv = trunc i64 %call to i32
  %sub3 = add i32 %conv, -2
  %cmp427 = icmp sgt i32 %sub3, 0
  br i1 %cmp427, label %land.rhs.lr.ph, label %return

land.rhs.lr.ph:                                   ; preds = %if.then
  %1 = sext i32 %sub3 to i64
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %cmp4 = icmp sgt i32 %dec, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp4, label %land.rhs, label %return

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %1, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %i.028 = phi i32 [ %sub3, %land.rhs.lr.ph ], [ %dec, %for.cond ]
  %arrayidx7 = getelementptr inbounds i8* %word, i64 %indvars.iv
  %2 = load i8* %arrayidx7, align 1, !tbaa !1
  %cmp9 = icmp eq i8 %2, 40
  %dec = add nsw i32 %i.028, -1
  br i1 %cmp9, label %if.then13, label %for.cond

if.then13:                                        ; preds = %land.rhs
  store i8 0, i8* %arrayidx7, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then, %for.cond, %entry, %if.then13
  %retval.0 = phi i32 [ %i.028, %if.then13 ], [ -1, %entry ], [ -1, %for.cond ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @hash_lookup(%struct.hash_table_t*, i8*, i32*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.dict_t* @dict_init(%struct.mdef_t* %mdef, i8* %dictfile, i8* %fillerfile, i8 signext %comp_sep) #0 {
entry:
  %w.i.i = alloca i32, align 4
  %wd.i = alloca [4096 x i8], align 16
  %w.i129 = alloca i32, align 4
  %w.i124 = alloca i32, align 4
  %w.i = alloca i32, align 4
  %line = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #2
  %tobool = icmp eq i8* %dictfile, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 302, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = call %struct._IO_FILE* @fopen(i8* %dictfile, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then1, label %while.cond.preheader

if.then1:                                         ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 310, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i8* %dictfile) #6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then1, %if.end
  %call3140 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %call) #6
  %cmp4141 = icmp eq i8* %call3140, null
  br i1 %cmp4141, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %n.0142 = phi i32 [ %n.0.inc, %while.body ], [ 0, %while.cond.preheader ]
  %1 = load i8* %0, align 16, !tbaa !1
  %not.cmp5 = icmp ne i8 %1, 35
  %inc = zext i1 %not.cmp5 to i32
  %n.0.inc = add nsw i32 %inc, %n.0142
  %call3 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %call) #6
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %n.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %n.0.inc, %while.body ]
  call void @rewind(%struct._IO_FILE* %call) #6
  %tobool9 = icmp ne i8* %fillerfile, null
  br i1 %tobool9, label %if.then10, label %if.end30

if.then10:                                        ; preds = %while.end
  %call11 = call %struct._IO_FILE* @fopen(i8* %fillerfile, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp12 = icmp eq %struct._IO_FILE* %call11, null
  br i1 %cmp12, label %if.then14, label %while.cond16.preheader

if.then14:                                        ; preds = %if.then10
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 321, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i8* %fillerfile) #6
  br label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %if.then14, %if.then10
  %call18137 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %call11) #6
  %cmp19138 = icmp eq i8* %call18137, null
  br i1 %cmp19138, label %while.end29, label %while.body21

while.body21:                                     ; preds = %while.cond16.preheader, %while.body21
  %n.1139 = phi i32 [ %n.1.inc27, %while.body21 ], [ %n.0.lcssa, %while.cond16.preheader ]
  %2 = load i8* %0, align 16, !tbaa !1
  %not.cmp24 = icmp ne i8 %2, 35
  %inc27 = zext i1 %not.cmp24 to i32
  %n.1.inc27 = add nsw i32 %inc27, %n.1139
  %call18 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %call11) #6
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %while.end29, label %while.body21

while.end29:                                      ; preds = %while.body21, %while.cond16.preheader
  %n.1.lcssa = phi i32 [ %n.0.lcssa, %while.cond16.preheader ], [ %n.1.inc27, %while.body21 ]
  call void @rewind(%struct._IO_FILE* %call11) #6
  br label %if.end30

if.end30:                                         ; preds = %while.end29, %while.end
  %n.2 = phi i32 [ %n.1.lcssa, %while.end29 ], [ %n.0.lcssa, %while.end ]
  %fp2.0 = phi %struct._IO_FILE* [ %call11, %while.end29 ], [ null, %while.end ]
  %call31 = call i8* @__ckd_calloc__(i64 1, i64 88, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 334) #6
  %3 = bitcast i8* %call31 to %struct.dict_t*
  %add = add nsw i32 %n.2, 1024
  %cmp32 = icmp slt i32 %add, 2147483646
  %add. = select i1 %cmp32, i32 %add, i32 2147483646
  %max_words = getelementptr inbounds i8* %call31, i64 48
  %4 = bitcast i8* %max_words to i32*
  store i32 %add., i32* %4, align 4, !tbaa !3
  %cmp35 = icmp sgt i32 %n.2, 2147483645
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end30
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 337, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([48 x i8]* @.str9, i64 0, i64 0), i32 %n.2, i32 2147483646) #6
  %.pre = load i32* %4, align 4, !tbaa !3
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end30
  %5 = phi i32 [ %.pre, %if.then37 ], [ %add., %if.end30 ]
  %conv40 = sext i32 %5 to i64
  %call41 = call i8* @__ckd_calloc__(i64 %conv40, i64 40, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 339) #6
  %6 = bitcast i8* %call41 to %struct.dictword_t*
  %word = getelementptr inbounds i8* %call31, i64 32
  %7 = bitcast i8* %word to %struct.dictword_t**
  store %struct.dictword_t* %6, %struct.dictword_t** %7, align 8, !tbaa !0
  %n_word = getelementptr inbounds i8* %call31, i64 52
  %8 = bitcast i8* %n_word to i32*
  store i32 0, i32* %8, align 4, !tbaa !3
  %mdef42 = bitcast i8* %call31 to %struct.mdef_t**
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef42, align 8, !tbaa !0
  %tobool43 = icmp eq %struct.mdef_t* %mdef, null
  br i1 %tobool43, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end38
  %pht = getelementptr inbounds i8* %call31, i64 8
  call void @llvm.memset.p0i8.i64(i8* %pht, i8 0, i64 16, i32 8, i1 false)
  br label %if.end49

if.else:                                          ; preds = %if.end38
  %call45 = call %struct.hash_table_t* @hash_new(i32 128, i32 1) #6
  %pht46 = getelementptr inbounds i8* %call31, i64 8
  %9 = bitcast i8* %pht46 to %struct.hash_table_t**
  store %struct.hash_table_t* %call45, %struct.hash_table_t** %9, align 8, !tbaa !0
  %call47 = call i8* @__ckd_calloc__(i64 128, i64 8, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 347) #6
  %10 = bitcast i8* %call47 to i8**
  %ciphone_str48 = getelementptr inbounds i8* %call31, i64 16
  %11 = bitcast i8* %ciphone_str48 to i8***
  store i8** %10, i8*** %11, align 8, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then44
  %n_ciphone = getelementptr inbounds i8* %call31, i64 24
  %12 = bitcast i8* %n_ciphone to i32*
  store i32 0, i32* %12, align 4, !tbaa !3
  %13 = load i32* %4, align 4, !tbaa !3
  %call51 = call %struct.hash_table_t* @hash_new(i32 %13, i32 1) #6
  %ht = getelementptr inbounds i8* %call31, i64 40
  %14 = bitcast i8* %ht to %struct.hash_table_t**
  store %struct.hash_table_t* %call51, %struct.hash_table_t** %14, align 8, !tbaa !0
  %comp_head = getelementptr inbounds i8* %call31, i64 64
  %15 = bitcast i8* %comp_head to i32**
  store i32* null, i32** %15, align 8, !tbaa !0
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 358, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0), i8* %dictfile) #6
  call fastcc void @dict_read(%struct._IO_FILE* %call, %struct.dict_t* %3) #7
  %call53 = call i32 @fclose(%struct._IO_FILE* %call) #6
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 361, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  %16 = load i32* %8, align 4, !tbaa !3
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i32 %16) #6
  %17 = load i32* %8, align 4, !tbaa !3
  %filler_start = getelementptr inbounds i8* %call31, i64 56
  %18 = bitcast i8* %filler_start to i32*
  store i32 %17, i32* %18, align 4, !tbaa !3
  br i1 %tobool9, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end49
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 366, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([31 x i8]* @.str13, i64 0, i64 0), i8* %fillerfile) #6
  call fastcc void @dict_read(%struct._IO_FILE* %fp2.0, %struct.dict_t* %3) #7
  %call59 = call i32 @fclose(%struct._IO_FILE* %fp2.0) #6
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 369, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  %19 = load i32* %8, align 4, !tbaa !3
  %20 = load i32* %18, align 4, !tbaa !3
  %sub = sub nsw i32 %19, %20
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i32 %sub) #6
  %.pre145 = load i32* %8, align 4, !tbaa !3
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end49
  %21 = phi i32 [ %.pre145, %if.then57 ], [ %17, %if.end49 ]
  %sub64 = add nsw i32 %21, -1
  %filler_end = getelementptr inbounds i8* %call31, i64 60
  %22 = bitcast i8* %filler_end to i32*
  store i32 %sub64, i32* %22, align 4, !tbaa !3
  %23 = bitcast i32* %w.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.hash_table_t** %14, align 8, !tbaa !0
  %call.i = call i32 @hash_lookup(%struct.hash_table_t* %24, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32* %w.i) #6
  %cmp.i = icmp slt i32 %call.i, 0
  %25 = load i32* %w.i, align 4, !tbaa !3
  %retval.0.i = select i1 %cmp.i, i32 -1, i32 %25
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %startwid = getelementptr inbounds i8* %call31, i64 72
  %26 = bitcast i8* %startwid to i32*
  store i32 %retval.0.i, i32* %26, align 4, !tbaa !3
  %27 = bitcast i32* %w.i124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.hash_table_t** %14, align 8, !tbaa !0
  %call.i126 = call i32 @hash_lookup(%struct.hash_table_t* %28, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i32* %w.i124) #6
  %cmp.i127 = icmp slt i32 %call.i126, 0
  %29 = load i32* %w.i124, align 4, !tbaa !3
  %retval.0.i128 = select i1 %cmp.i127, i32 -1, i32 %29
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %finishwid = getelementptr inbounds i8* %call31, i64 76
  %30 = bitcast i8* %finishwid to i32*
  store i32 %retval.0.i128, i32* %30, align 4, !tbaa !3
  %31 = bitcast i32* %w.i129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load %struct.hash_table_t** %14, align 8, !tbaa !0
  %call.i131 = call i32 @hash_lookup(%struct.hash_table_t* %32, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i32* %w.i129) #6
  %cmp.i132 = icmp slt i32 %call.i131, 0
  %33 = load i32* %w.i129, align 4, !tbaa !3
  %retval.0.i133 = select i1 %cmp.i132, i32 -1, i32 %33
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %silwid = getelementptr inbounds i8* %call31, i64 80
  %34 = bitcast i8* %silwid to i32*
  store i32 %retval.0.i133, i32* %34, align 4, !tbaa !3
  %tobool68 = icmp eq i8 %comp_sep, 0
  br i1 %tobool68, label %if.end72, label %if.then69

if.then69:                                        ; preds = %if.end62
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 388, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  %conv70 = sext i8 %comp_sep to i32
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([44 x i8]* @.str17, i64 0, i64 0), i32 %conv70) #6
  %35 = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %35) #2
  %36 = load i32* %8, align 4, !tbaa !3
  %cmp157.i = icmp sgt i32 %36, 0
  br i1 %cmp157.i, label %for.body.lr.ph.i, label %dict_build_comp.exit

for.body.lr.ph.i:                                 ; preds = %if.then69
  %37 = bitcast i32* %w.i.i to i8*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc91.i, %for.body.lr.ph.i
  %indvars.iv170.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next171.i, %for.inc91.i ]
  %nc.0158.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nc.1.i, %for.inc91.i ]
  %38 = load %struct.dictword_t** %7, align 8, !tbaa !0
  %basewid.i = getelementptr inbounds %struct.dictword_t* %38, i64 %indvars.iv170.i, i32 4
  %39 = load i32* %basewid.i, align 4, !tbaa !3
  %idx.ext.i = sext i32 %39 to i64
  %word2.i = getelementptr inbounds %struct.dictword_t* %38, i64 %idx.ext.i, i32 0
  %40 = load i8** %word2.i, align 8, !tbaa !0
  %call.i134 = call i8* @strcpy(i8* %35, i8* %40) #6
  %call4.i = call i64 @strlen(i8* %35) #8
  %conv.i = trunc i64 %call4.i to i32
  %41 = load i8* %35, align 16, !tbaa !1
  %cmp8.i = icmp eq i8 %41, %comp_sep
  br i1 %cmp8.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %sub.i = shl i64 %call4.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom10.i = ashr exact i64 %sext.i, 32
  %arrayidx11.i = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 %idxprom10.i
  %42 = load i8* %arrayidx11.i, align 1, !tbaa !1
  %cmp14.i = icmp eq i8 %42, %comp_sep
  br i1 %cmp14.i, label %if.then.i, label %for.cond17.preheader.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 253, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  %43 = load i8** %word2.i, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([53 x i8]* @.str19, i64 0, i64 0), i8* %43) #6
  br label %for.cond17.preheader.i

for.cond17.preheader.i:                           ; preds = %if.then.i, %lor.lhs.false.i
  %sub18.i = add i32 %conv.i, -1
  %cmp19147.i = icmp sgt i32 %sub18.i, 1
  br i1 %cmp19147.i, label %for.body21.i, label %for.inc91.i

for.body21.i:                                     ; preds = %for.cond17.preheader.i, %for.body21.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body21.i ], [ 1, %for.cond17.preheader.i ]
  %n.0149.i = phi i32 [ %inc.n.0.i, %for.body21.i ], [ 1, %for.cond17.preheader.i ]
  %arrayidx23.i = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 %indvars.iv.i
  %44 = load i8* %arrayidx23.i, align 1, !tbaa !1
  %cmp26.i = icmp eq i8 %44, %comp_sep
  %inc.i = zext i1 %cmp26.i to i32
  %inc.n.0.i = add nsw i32 %inc.i, %n.0149.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub18.i
  br i1 %exitcond, label %for.end.i, label %for.body21.i

for.end.i:                                        ; preds = %for.body21.i
  %cmp31.i = icmp eq i32 %inc.n.0.i, 1
  br i1 %cmp31.i, label %for.inc91.i, label %if.end34.i

if.end34.i:                                       ; preds = %for.end.i
  %inc35.i = add nsw i32 %nc.0158.i, 1
  %45 = load i32* %26, align 4, !tbaa !3
  %46 = trunc i64 %indvars.iv170.i to i32
  %cmp36.i = icmp eq i32 %46, %45
  br i1 %cmp36.i, label %if.then43.i, label %lor.lhs.false38.i

lor.lhs.false38.i:                                ; preds = %if.end34.i
  %47 = load i32* %30, align 4, !tbaa !3
  %cmp39.i = icmp eq i32 %46, %47
  br i1 %cmp39.i, label %if.then43.i, label %lor.lhs.false41.i

lor.lhs.false41.i:                                ; preds = %lor.lhs.false38.i
  %call42.i = call i32 @dict_filler_word(%struct.dict_t* %3, i32 %46) #6
  %tobool.i = icmp eq i32 %call42.i, 0
  br i1 %tobool.i, label %if.end45.i, label %if.then43.i

if.then43.i:                                      ; preds = %lor.lhs.false41.i, %lor.lhs.false38.i, %if.end34.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 265, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  %48 = load i8** %word2.i, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([47 x i8]* @.str20, i64 0, i64 0), i8* %48) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %lor.lhs.false41.i
  %n_comp.i = getelementptr inbounds %struct.dictword_t* %38, i64 %idx.ext.i, i32 5
  store i32 %inc.n.0.i, i32* %n_comp.i, align 4, !tbaa !3
  %conv46.i = sext i32 %inc.n.0.i to i64
  %call47.i = call i8* @__ckd_calloc__(i64 %conv46.i, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 269) #6
  %49 = bitcast i8* %call47.i to i32*
  %comp.i = getelementptr inbounds %struct.dictword_t* %38, i64 %idx.ext.i, i32 6
  store i32* %49, i32** %comp.i, align 8, !tbaa !0
  %cmp49153.i = icmp sgt i32 %conv.i, 0
  br i1 %cmp49153.i, label %for.cond52.preheader.i, label %for.inc91.i

for.cond52.preheader.i:                           ; preds = %if.end45.i, %if.end83.i
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i, %if.end83.i ], [ 0, %if.end45.i ]
  %i.1154.i = phi i32 [ %inc89.i, %if.end83.i ], [ 0, %if.end45.i ]
  %cmp53150.i = icmp slt i32 %i.1154.i, %conv.i
  br i1 %cmp53150.i, label %land.rhs.lr.ph.i, label %for.end64.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond52.preheader.i
  %50 = sext i32 %i.1154.i to i64
  br label %land.rhs.i

for.cond52.i:                                     ; preds = %land.rhs.i
  %51 = trunc i64 %indvars.iv.next166.i to i32
  %cmp53.i = icmp slt i32 %51, %conv.i
  br i1 %cmp53.i, label %land.rhs.i, label %for.end64.i

land.rhs.i:                                       ; preds = %for.cond52.i, %land.rhs.lr.ph.i
  %indvars.iv165.i = phi i64 [ %50, %land.rhs.lr.ph.i ], [ %indvars.iv.next166.i, %for.cond52.i ]
  %i.2151.i = phi i32 [ %i.1154.i, %land.rhs.lr.ph.i ], [ %inc63.i, %for.cond52.i ]
  %arrayidx56.i = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 %indvars.iv165.i
  %52 = load i8* %arrayidx56.i, align 1, !tbaa !1
  %cmp59.i = icmp eq i8 %52, %comp_sep
  %indvars.iv.next166.i = add i64 %indvars.iv165.i, 1
  %inc63.i = add nsw i32 %i.2151.i, 1
  br i1 %cmp59.i, label %for.end64.i, label %for.cond52.i

for.end64.i:                                      ; preds = %land.rhs.i, %for.cond52.i, %for.cond52.preheader.i
  %i.2.lcssa.i = phi i32 [ %i.1154.i, %for.cond52.preheader.i ], [ %i.2151.i, %land.rhs.i ], [ %inc63.i, %for.cond52.i ]
  %cmp65.i = icmp eq i32 %i.1154.i, %i.2.lcssa.i
  br i1 %cmp65.i, label %if.then67.i, label %if.end69.i

if.then67.i:                                      ; preds = %for.end64.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 276, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  %53 = load i8** %word2.i, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([45 x i8]* @.str21, i64 0, i64 0), i8* %53) #6
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then67.i, %for.end64.i
  %idxprom70.i = sext i32 %i.2.lcssa.i to i64
  %arrayidx71.i = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 %idxprom70.i
  store i8 0, i8* %arrayidx71.i, align 1, !tbaa !1
  %idx.ext73.i = sext i32 %i.1154.i to i64
  %add.ptr74.i = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 %idx.ext73.i
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %54 = load %struct.hash_table_t** %14, align 8, !tbaa !0
  %call.i.i = call i32 @hash_lookup(%struct.hash_table_t* %54, i8* %add.ptr74.i, i32* %w.i.i) #6
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %55 = load i32* %w.i.i, align 4, !tbaa !3
  %retval.0.i.i = select i1 %cmp.i.i, i32 -1, i32 %55
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %cmp76.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp76.i, label %if.then78.i, label %if.end83.i

if.then78.i:                                      ; preds = %if.end69.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 281, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  %56 = load i8** %word2.i, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([43 x i8]* @.str22, i64 0, i64 0), i8* %add.ptr74.i, i8* %56) #6
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then78.i, %if.end69.i
  %57 = load i32** %comp.i, align 8, !tbaa !0
  %arrayidx86.i = getelementptr inbounds i32* %57, i64 %indvars.iv167.i
  store i32 %retval.0.i.i, i32* %arrayidx86.i, align 4, !tbaa !3
  %indvars.iv.next168.i = add i64 %indvars.iv167.i, 1
  %inc89.i = add nsw i32 %i.2.lcssa.i, 1
  %cmp49.i = icmp slt i32 %inc89.i, %conv.i
  br i1 %cmp49.i, label %for.cond52.preheader.i, label %for.inc91.i

for.inc91.i:                                      ; preds = %if.end83.i, %if.end45.i, %for.end.i, %for.cond17.preheader.i
  %nc.1.i = phi i32 [ %nc.0158.i, %for.end.i ], [ %inc35.i, %if.end45.i ], [ %nc.0158.i, %for.cond17.preheader.i ], [ %inc35.i, %if.end83.i ]
  %indvars.iv.next171.i = add i64 %indvars.iv170.i, 1
  %58 = load i32* %8, align 4, !tbaa !3
  %59 = trunc i64 %indvars.iv.next171.i to i32
  %cmp.i135 = icmp slt i32 %59, %58
  br i1 %cmp.i135, label %for.body.i, label %for.end93.i

for.end93.i:                                      ; preds = %for.inc91.i
  %cmp94.i = icmp sgt i32 %nc.1.i, 0
  br i1 %cmp94.i, label %if.then96.i, label %dict_build_comp.exit

if.then96.i:                                      ; preds = %for.end93.i
  %conv.i.i = sext i32 %58 to i64
  %call.i145.i = call i8* @__ckd_calloc__(i64 %conv.i.i, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 217) #6
  %60 = bitcast i8* %call.i145.i to i32*
  %61 = load i32* %8, align 4, !tbaa !3
  %cmp50.i.i = icmp sgt i32 %61, 0
  br i1 %cmp50.i.i, label %for.body.i.i, label %dict_comp_head.exit.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i
  %cmp548.i.i = icmp sgt i32 %63, 0
  br i1 %cmp548.i.i, label %for.body7.lr.ph.i.i, label %dict_comp_head.exit.i

for.body7.lr.ph.i.i:                              ; preds = %for.cond3.preheader.i.i
  %62 = load %struct.dictword_t** %7, align 8, !tbaa !0
  br label %for.body7.i.i

for.body.i.i:                                     ; preds = %if.then96.i, %for.body.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %for.body.i.i ], [ 0, %if.then96.i ]
  %arrayidx.i.i = getelementptr inbounds i32* %60, i64 %indvars.iv52.i.i
  store i32 -1, i32* %arrayidx.i.i, align 4, !tbaa !3
  %indvars.iv.next53.i.i = add i64 %indvars.iv52.i.i, 1
  %63 = load i32* %8, align 4, !tbaa !3
  %64 = trunc i64 %indvars.iv.next53.i.i to i32
  %cmp.i146.i = icmp slt i32 %64, %63
  br i1 %cmp.i146.i, label %for.body.i.i, label %for.cond3.preheader.i.i

for.body7.i.i:                                    ; preds = %for.inc27.i.i, %for.body7.lr.ph.i.i
  %65 = phi i32 [ %63, %for.body7.lr.ph.i.i ], [ %72, %for.inc27.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %for.body7.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc27.i.i ]
  %n_comp.i.i = getelementptr inbounds %struct.dictword_t* %62, i64 %indvars.iv.i.i, i32 5
  %66 = load i32* %n_comp.i.i, align 4, !tbaa !3
  %cmp10.i.i = icmp sgt i32 %66, 0
  br i1 %cmp10.i.i, label %if.then.i.i, label %for.inc27.i.i

if.then.i.i:                                      ; preds = %for.body7.i.i
  %comp.i.i = getelementptr inbounds %struct.dictword_t* %62, i64 %indvars.iv.i.i, i32 6
  %67 = load i32** %comp.i.i, align 8, !tbaa !0
  %68 = load i32* %67, align 4, !tbaa !3
  %idxprom16.i.i = sext i32 %68 to i64
  %arrayidx17.i.i = getelementptr inbounds i32* %60, i64 %idxprom16.i.i
  %69 = load i32* %arrayidx17.i.i, align 4, !tbaa !3
  %arrayidx19.i.i = getelementptr inbounds i32* %60, i64 %indvars.iv.i.i
  store i32 %69, i32* %arrayidx19.i.i, align 4, !tbaa !3
  %70 = load i32* %67, align 4, !tbaa !3
  %idxprom25.i.i = sext i32 %70 to i64
  %arrayidx26.i.i = getelementptr inbounds i32* %60, i64 %idxprom25.i.i
  %71 = trunc i64 %indvars.iv.i.i to i32
  store i32 %71, i32* %arrayidx26.i.i, align 4, !tbaa !3
  %.pre.i.i = load i32* %8, align 4, !tbaa !3
  br label %for.inc27.i.i

for.inc27.i.i:                                    ; preds = %if.then.i.i, %for.body7.i.i
  %72 = phi i32 [ %65, %for.body7.i.i ], [ %.pre.i.i, %if.then.i.i ]
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %73 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp5.i.i = icmp slt i32 %73, %72
  br i1 %cmp5.i.i, label %for.body7.i.i, label %dict_comp_head.exit.i

dict_comp_head.exit.i:                            ; preds = %for.inc27.i.i, %for.cond3.preheader.i.i, %if.then96.i
  store i32* %60, i32** %15, align 8, !tbaa !0
  br label %dict_build_comp.exit

dict_build_comp.exit:                             ; preds = %if.then69, %for.end93.i, %dict_comp_head.exit.i
  %nc.0.lcssa174.i = phi i32 [ %nc.1.i, %dict_comp_head.exit.i ], [ %nc.1.i, %for.end93.i ], [ 0, %if.then69 ]
  call void @llvm.lifetime.end(i64 4096, i8* %35) #2
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 390, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i32 %nc.0.lcssa174.i) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end62, %dict_build_comp.exit
  call void @llvm.lifetime.end(i64 1024, i8* %0) #2
  ret %struct.dict_t* %3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare void @_E__fatal_sys_error(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare %struct.hash_table_t* @hash_new(i32, i32) #1

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @dict_read(%struct._IO_FILE* nocapture %fp, %struct.dict_t* nocapture %d) #0 {
entry:
  %id.i = alloca i32, align 4
  %line = alloca [16384 x i8], align 16
  %p = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [16384 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %0) #2
  %1 = getelementptr inbounds [4096 x i8]* %p, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2
  %call = call i8* @__ckd_calloc__(i64 4092, i64 8, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 169) #6
  %2 = bitcast i8* %call to i8**
  %call15 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %fp) #6
  %cmp6 = icmp eq i8* %call15, null
  br i1 %cmp6, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %3 = bitcast i32* %id.i to i8*
  %mdef.i = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 0
  %pht.i = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 1
  %n_ciphone.i = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 3
  %ciphone_str.i = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %lineno.07 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.backedge ]
  %inc = add nsw i32 %lineno.07, 1
  %4 = load i8* %0, align 16, !tbaa !1
  %cmp4 = icmp eq i8 %4, 35
  br i1 %cmp4, label %while.cond.backedge, label %if.end

if.end:                                           ; preds = %while.body
  %call7 = call i32 @str2words(i8* %0, i8** %2, i32 4092) #6
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 178, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str23, i64 0, i64 0), i8* %0, i32 4092) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  switch i32 %call7, label %for.cond.preheader [
    i32 0, label %while.cond.backedge
    i32 1, label %if.then19
  ]

for.cond.preheader:                               ; preds = %if.end12
  %cmp223 = icmp sgt i32 %call7, 1
  br i1 %cmp223, label %for.body, label %for.end

if.then19:                                        ; preds = %if.end12
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 184, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #6
  %5 = load i8** %2, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([48 x i8]* @.str24, i64 0, i64 0), i32 %inc, i8* %5) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then19, %while.body, %if.then42, %if.then49, %for.end, %if.end12
  %call1 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %fp) #6
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %while.end, label %while.body

for.cond:                                         ; preds = %dict_ciphone_id.exit
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp22 = icmp slt i32 %6, %call7
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %for.cond.preheader ]
  %i.04 = phi i32 [ %inc39, %for.cond ], [ 1, %for.cond.preheader ]
  %arrayidx24 = getelementptr inbounds i8** %2, i64 %indvars.iv
  %7 = load i8** %arrayidx24, align 8, !tbaa !0
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %8 = load %struct.mdef_t** %mdef.i, align 8, !tbaa !0
  %tobool.i = icmp eq %struct.mdef_t* %8, null
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call.i = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %8, i8* %7) #6
  br label %dict_ciphone_id.exit

if.else.i:                                        ; preds = %for.body
  %9 = load %struct.hash_table_t** %pht.i, align 8, !tbaa !0
  %call2.i = call i32 @hash_lookup(%struct.hash_table_t* %9, i8* %7, i32* %id.i) #6
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end15.i

if.then3.i:                                       ; preds = %if.else.i
  %10 = load i32* %n_ciphone.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, i32* %n_ciphone.i, align 4, !tbaa !3
  store i32 %10, i32* %id.i, align 4, !tbaa !3
  %cmp4.i = icmp sgt i32 %10, 126
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 81, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0)) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then3.i
  %call6.i = call i8* @__ckd_salloc__(i8* %7, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 82) #6
  %11 = load i32* %id.i, align 4, !tbaa !3
  %idxprom.i = sext i32 %11 to i64
  %12 = load i8*** %ciphone_str.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8** %12, i64 %idxprom.i
  store i8* %call6.i, i8** %arrayidx.i, align 8, !tbaa !0
  %13 = load %struct.hash_table_t** %pht.i, align 8, !tbaa !0
  %14 = load i8*** %ciphone_str.i, align 8, !tbaa !0
  %arrayidx10.i = getelementptr inbounds i8** %14, i64 %idxprom.i
  %15 = load i8** %arrayidx10.i, align 8, !tbaa !0
  %call11.i = call i32 @hash_enter(%struct.hash_table_t* %13, i8* %15, i32 %11) #6
  %16 = load i32* %id.i, align 4, !tbaa !3
  %cmp12.i = icmp eq i32 %call11.i, %16
  br i1 %cmp12.i, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 85, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([41 x i8]* @.str28, i64 0, i64 0), i8* %7) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then13.i, %if.end.i
  %17 = load i32* %id.i, align 4, !tbaa !3
  %conv.i = trunc i32 %17 to i8
  br label %dict_ciphone_id.exit

dict_ciphone_id.exit:                             ; preds = %if.then.i, %if.end15.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %conv.i, %if.end15.i ]
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  %18 = add nsw i64 %indvars.iv, -1
  %arrayidx27 = getelementptr inbounds [4096 x i8]* %p, i64 0, i64 %18
  store i8 %retval.0.i, i8* %arrayidx27, align 1, !tbaa !1
  %cmp32 = icmp slt i8 %retval.0.i, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc39 = add nsw i32 %i.04, 1
  br i1 %cmp32, label %if.then34, label %for.cond

if.then34:                                        ; preds = %dict_ciphone_id.exit
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 192, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #6
  %19 = load i8** %arrayidx24, align 8, !tbaa !0
  %20 = load i8** %2, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([43 x i8]* @.str25, i64 0, i64 0), i32 %inc, i8* %19, i8* %20) #6
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.cond, %if.then34
  %i.02 = phi i32 [ %i.04, %if.then34 ], [ 1, %for.cond.preheader ], [ %inc39, %for.cond ]
  %cmp40 = icmp eq i32 %i.02, %call7
  br i1 %cmp40, label %if.then42, label %while.cond.backedge

if.then42:                                        ; preds = %for.end
  %21 = load i8** %2, align 8, !tbaa !0
  %sub45 = add nsw i32 %call7, -1
  %call46 = call i32 @dict_add_word(%struct.dict_t* %d, i8* %21, i8* %1, i32 %sub45) #7
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %while.cond.backedge

if.then49:                                        ; preds = %if.then42
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i64 201, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #6
  %22 = load i8** %2, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([58 x i8]* @.str26, i64 0, i64 0), i32 %inc, i8* %22) #6
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %entry
  call void @ckd_free(i8* %call) #6
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2
  call void @llvm.lifetime.end(i64 16384, i8* %0) #2
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @dict_wordid(%struct.dict_t* nocapture %d, i8* %word) #0 {
entry:
  %w = alloca i32, align 4
  %ht = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 5
  %0 = load %struct.hash_table_t** %ht, align 8, !tbaa !0
  %call = call i32 @hash_lookup(%struct.hash_table_t* %0, i8* %word, i32* %w) #6
  %cmp = icmp slt i32 %call, 0
  %1 = load i32* %w, align 4, !tbaa !3
  %retval.0 = select i1 %cmp, i32 -1, i32 %1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @_dict_basewid(%struct.dict_t* nocapture %d, i32 %w) #4 {
entry:
  %idxprom = sext i32 %w to i64
  %word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %0 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %basewid = getelementptr inbounds %struct.dictword_t* %0, i64 %idxprom, i32 4
  %1 = load i32* %basewid, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @_dict_wordstr(%struct.dict_t* nocapture %d, i32 %wid) #4 {
entry:
  %idxprom = sext i32 %wid to i64
  %word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %0 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %word1 = getelementptr inbounds %struct.dictword_t* %0, i64 %idxprom, i32 0
  %1 = load i8** %word1, align 8, !tbaa !0
  ret i8* %1
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @_dict_nextalt(%struct.dict_t* nocapture %d, i32 %wid) #4 {
entry:
  %idxprom = sext i32 %wid to i64
  %word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %0 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %alt = getelementptr inbounds %struct.dictword_t* %0, i64 %idxprom, i32 3
  %1 = load i32* %alt, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @dict_filler_word(%struct.dict_t* nocapture %d, i32 %w) #4 {
entry:
  %idxprom = sext i32 %w to i64
  %word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %0 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %basewid = getelementptr inbounds %struct.dictword_t* %0, i64 %idxprom, i32 4
  %1 = load i32* %basewid, align 4, !tbaa !3
  %startwid = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 11
  %2 = load i32* %startwid, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %finishwid = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 12
  %3 = load i32* %finishwid, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, %3
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %filler_start = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 8
  %4 = load i32* %filler_start, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %4
  br i1 %cmp2, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %filler_end = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 9
  %5 = load i32* %filler_end, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, %5
  br i1 %cmp3, label %if.end5, label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @dict_wids2compwid(%struct.dict_t* nocapture %d, i32* nocapture %wid, i32 %len) #4 {
entry:
  %comp_head = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 10
  %0 = load i32** %comp_head, align 8, !tbaa !0
  %tobool = icmp eq i32* %0, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32* %wid, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds i32* %0, i64 %idxprom
  %w.048 = load i32* %arrayidx2, align 4
  %cmp49 = icmp sgt i32 %w.048, -1
  br i1 %cmp49, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end
  %word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  %2 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %cmp846 = icmp sgt i32 %len, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc25
  %w.050 = phi i32 [ %w.048, %for.body.lr.ph ], [ %w.0, %for.inc25 ]
  %idxprom3 = sext i32 %w.050 to i64
  %n_comp = getelementptr inbounds %struct.dictword_t* %2, i64 %idxprom3, i32 5
  %3 = load i32* %n_comp, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %3, %len
  br i1 %cmp5, label %for.cond7.preheader, label %for.inc25

for.cond7.preheader:                              ; preds = %for.body
  br i1 %cmp846, label %land.rhs.lr.ph, label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond7.preheader
  %comp = getelementptr inbounds %struct.dictword_t* %2, i64 %idxprom3, i32 6
  %4 = load i32** %comp, align 8, !tbaa !0
  br label %land.rhs

for.cond7:                                        ; preds = %land.rhs
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %5, %len
  br i1 %cmp8, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond7, %land.rhs.lr.ph
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.cond7 ]
  %i.047 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond7 ]
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %6 = load i32* %arrayidx13, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %wid, i64 %indvars.iv
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %6, %7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.047, 1
  br i1 %cmp16, label %for.cond7, label %for.end

for.end:                                          ; preds = %for.cond7, %land.rhs, %for.cond7.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond7.preheader ], [ %i.047, %land.rhs ], [ %inc, %for.cond7 ]
  %cmp18 = icmp eq i32 %i.0.lcssa, %len
  br i1 %cmp18, label %if.then19, label %for.inc25

if.then19:                                        ; preds = %for.end
  %basewid = getelementptr inbounds %struct.dictword_t* %2, i64 %idxprom3, i32 4
  %8 = load i32* %basewid, align 4, !tbaa !3
  br label %return

for.inc25:                                        ; preds = %for.body, %for.end
  %arrayidx28 = getelementptr inbounds i32* %0, i64 %idxprom3
  %w.0 = load i32* %arrayidx28, align 4
  %cmp = icmp sgt i32 %w.0, -1
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %if.end, %for.inc25, %entry, %if.then19
  %retval.0 = phi i32 [ %8, %if.then19 ], [ -1, %entry ], [ -1, %for.inc25 ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @dict_free(%struct.dict_t* %d) #0 {
entry:
  %tobool = icmp eq %struct.dict_t* %d, null
  br i1 %tobool, label %if.end50, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_word = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 7
  %0 = load i32* %n_word, align 4, !tbaa !3
  %cmp80 = icmp sgt i32 %0, 0
  %word1 = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 4
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.inc ], [ 0, %for.cond.preheader ]
  %1 = load %struct.dictword_t** %word1, align 8, !tbaa !0
  %word2 = getelementptr inbounds %struct.dictword_t* %1, i64 %indvars.iv82, i32 0
  %2 = load i8** %word2, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %2, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %for.body
  tail call void @ckd_free(i8* %2) #6
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then4
  %ciphone = getelementptr inbounds %struct.dictword_t* %1, i64 %indvars.iv82, i32 1
  %3 = load i8** %ciphone, align 8, !tbaa !0
  %tobool6 = icmp eq i8* %3, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ckd_free(i8* %3) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then7
  %comp = getelementptr inbounds %struct.dictword_t* %1, i64 %indvars.iv82, i32 6
  %4 = load i32** %comp, align 8, !tbaa !0
  %tobool10 = icmp eq i32* %4, null
  br i1 %tobool10, label %for.inc, label %if.then11

if.then11:                                        ; preds = %if.end9
  %5 = bitcast i32* %4 to i8*
  tail call void @ckd_free(i8* %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %if.then11
  %indvars.iv.next83 = add i64 %indvars.iv82, 1
  %6 = load i32* %n_word, align 4, !tbaa !3
  %7 = trunc i64 %indvars.iv.next83 to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.inc
  %8 = load %struct.dictword_t** %word1, align 8, !tbaa !0
  %tobool15 = icmp eq %struct.dictword_t* %8, null
  br i1 %tobool15, label %for.cond19.preheader, label %if.then16

if.then16:                                        ; preds = %for.end
  %9 = bitcast %struct.dictword_t* %8 to i8*
  tail call void @ckd_free(i8* %9) #6
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.end, %if.then16
  %n_ciphone = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 3
  %10 = load i32* %n_ciphone, align 4, !tbaa !3
  %cmp2078 = icmp sgt i32 %10, 0
  br i1 %cmp2078, label %for.body21.lr.ph, label %for.end32

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %ciphone_str = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 2
  br label %for.body21

for.body21:                                       ; preds = %for.inc30, %for.body21.lr.ph
  %11 = phi i32 [ %10, %for.body21.lr.ph ], [ %14, %for.inc30 ]
  %indvars.iv = phi i64 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next, %for.inc30 ]
  %12 = load i8*** %ciphone_str, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i8** %12, i64 %indvars.iv
  %13 = load i8** %arrayidx23, align 8, !tbaa !0
  %tobool24 = icmp eq i8* %13, null
  br i1 %tobool24, label %for.inc30, label %if.then25

if.then25:                                        ; preds = %for.body21
  tail call void @ckd_free(i8* %13) #6
  %.pre = load i32* %n_ciphone, align 4, !tbaa !3
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21, %if.then25
  %14 = phi i32 [ %11, %for.body21 ], [ %.pre, %if.then25 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp20 = icmp slt i32 %15, %14
  br i1 %cmp20, label %for.body21, label %for.end32

for.end32:                                        ; preds = %for.inc30, %for.cond19.preheader
  %comp_head = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 10
  %16 = load i32** %comp_head, align 8, !tbaa !0
  %tobool33 = icmp eq i32* %16, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %for.end32
  %17 = bitcast i32* %16 to i8*
  tail call void @ckd_free(i8* %17) #6
  br label %if.end36

if.end36:                                         ; preds = %for.end32, %if.then34
  %ciphone_str37 = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 2
  %18 = load i8*** %ciphone_str37, align 8, !tbaa !0
  %tobool38 = icmp eq i8** %18, null
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  %19 = bitcast i8** %18 to i8*
  tail call void @ckd_free(i8* %19) #6
  br label %if.end41

if.end41:                                         ; preds = %if.end36, %if.then39
  %pht = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 1
  %20 = load %struct.hash_table_t** %pht, align 8, !tbaa !0
  %tobool42 = icmp eq %struct.hash_table_t* %20, null
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  tail call void @hash_free(%struct.hash_table_t* %20) #6
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.then43
  %ht = getelementptr inbounds %struct.dict_t* %d, i64 0, i32 5
  %21 = load %struct.hash_table_t** %ht, align 8, !tbaa !0
  %tobool46 = icmp eq %struct.hash_table_t* %21, null
  br i1 %tobool46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end45
  tail call void @hash_free(%struct.hash_table_t* %21) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %if.then47
  %22 = bitcast %struct.dict_t* %d to i8*
  tail call void @ckd_free(i8* %22) #6
  br label %if.end50

if.end50:                                         ; preds = %entry, %if.end49
  ret void
}

; Function Attrs: optsize
declare void @hash_free(%struct.hash_table_t*) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @str2words(i8*, i8**, i32) #1

; Function Attrs: optsize
declare signext i8 @mdef_ciphone_id(%struct.mdef_t*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
