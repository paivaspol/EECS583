; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/lmclass.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmclass_s = type { i8*, %struct.lmclass_word_s*, %struct.lmclass_s* }
%struct.lmclass_word_s = type { i8*, i32, i32, %struct.lmclass_word_s* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lmclass_set_s = type { %struct.lmclass_s* }

@.str = private unnamed_addr constant [12 x i8] c"LMCLASS %s\0A\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"    %s\09%d\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"END %s\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/lmclass.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str5 = private unnamed_addr constant [28 x i8] c"Reading LM Class file '%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"Line %d: Line too long:\0A\09%s\0A\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"LMCLASS\00", align 1
@.str10 = private unnamed_addr constant [40 x i8] c"Line %d: Expecting LMCLASS <classname>\0A\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str12 = private unnamed_addr constant [47 x i8] c"Line %d: LM class name(%s) not enclosed in []\0A\00", align 1
@.str13 = private unnamed_addr constant [46 x i8] c"Line %d: lmclass_add(%s) failed (duplicate?)\0A\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"Premature EOF(%s)\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"Line %d: Syntax error\0A\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str18 = private unnamed_addr constant [38 x i8] c"Line %d: Prob(%s) out of range (0,1)\0A\00", align 1
@.str19 = private unnamed_addr constant [50 x i8] c"Line %d: lmclass_addword(%s) failed (duplicate?)\0A\00", align 1
@.str20 = private unnamed_addr constant [28 x i8] c"Sum(prob)(LMClass %s) = %e\0A\00", align 1
@.str21 = private unnamed_addr constant [32 x i8] c"Loaded LM Class '%s'; %d words\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @lmclass_dump(%struct.lmclass_s* nocapture %cl, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %name = getelementptr inbounds %struct.lmclass_s* %cl, i64 0, i32 0
  %0 = load i8** %name, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* %0) #6
  %wordlist = getelementptr inbounds %struct.lmclass_s* %cl, i64 0, i32 1
  %w.012 = load %struct.lmclass_word_s** %wordlist, align 8
  %tobool13 = icmp eq %struct.lmclass_word_s* %w.012, null
  br i1 %tobool13, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %w.014 = phi %struct.lmclass_word_s* [ %w.0, %for.body ], [ %w.012, %entry ]
  %word = getelementptr inbounds %struct.lmclass_word_s* %w.014, i64 0, i32 0
  %1 = load i8** %word, align 8, !tbaa !0
  %LOGprob = getelementptr inbounds %struct.lmclass_word_s* %w.014, i64 0, i32 2
  %2 = load i32* %LOGprob, align 4, !tbaa !3
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* %1, i32 %2) #6
  %next = getelementptr inbounds %struct.lmclass_word_s* %w.014, i64 0, i32 3
  %w.0 = load %struct.lmclass_word_s** %next, align 8
  %tobool = icmp eq %struct.lmclass_word_s* %w.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %3 = load i8** %name, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* %3) #6
  %call4 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @lmclass_set_dump(%struct.lmclass_set_s* nocapture %set, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s* %set, i64 0, i32 0
  %cl.03 = load %struct.lmclass_s** %lmclass_list, align 8
  %tobool4 = icmp eq %struct.lmclass_s* %cl.03, null
  br i1 %tobool4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %cl.05 = phi %struct.lmclass_s* [ %cl.0, %for.body ], [ %cl.03, %entry ]
  tail call void @lmclass_dump(%struct.lmclass_s* %cl.05, %struct._IO_FILE* %fp) #7
  %next = getelementptr inbounds %struct.lmclass_s* %cl.05, i64 0, i32 2
  %cl.0 = load %struct.lmclass_s** %next, align 8
  %tobool = icmp eq %struct.lmclass_s* %cl.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.lmclass_set_s* @lmclass_newset() #0 {
entry:
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 8, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 86) #6
  %0 = bitcast i8* %call to %struct.lmclass_set_s*
  %lmclass_list = bitcast i8* %call to %struct.lmclass_s**
  store %struct.lmclass_s* null, %struct.lmclass_s** %lmclass_list, align 8, !tbaa !0
  ret %struct.lmclass_set_s* %0
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define %struct.lmclass_set_s* @lmclass_loadfile(%struct.lmclass_set_s* %lmclass_set, i8* %file) #0 {
entry:
  %line = alloca [16384 x i8], align 16
  %word = alloca [4096 x i8*], align 16
  %p = alloca float, align 4
  %0 = getelementptr inbounds [16384 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %0) #3
  %1 = bitcast [4096 x i8*]* %word to i8*
  call void @llvm.lifetime.start(i64 32768, i8* %1) #3
  call void @_E__pr_info_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 150, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0), i8* %file) #6
  %call = call %struct._IO_FILE* @_myfopen(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 151) #6
  %call1268277 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call) #6
  %cmp269278 = icmp eq i8* %call1268277, null
  br i1 %cmp269278, label %for.end172, label %land.rhs.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph:                             ; preds = %entry
  %arraydecay5 = getelementptr inbounds [4096 x i8*]* %word, i64 0, i64 0
  %arrayidx23 = getelementptr inbounds [4096 x i8*]* %word, i64 0, i64 1
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end170, %land.rhs.lr.ph.lr.ph
  %lmclass_set.addr.0.ph280 = phi %struct.lmclass_set_s* [ %lmclass_set, %land.rhs.lr.ph.lr.ph ], [ %retval.0.i237.ph, %if.end170 ]
  %lineno.0.ph279 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %inc73, %if.end170 ]
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %land.rhs.lr.ph
  %lineno.0270 = phi i32 [ %lineno.0.ph279, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %2 = load i8* %0, align 16, !tbaa !1
  %cmp2 = icmp eq i8 %2, 35
  br i1 %cmp2, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call6 = call i32 @str2words(i8* %0, i8** %arraydecay5, i32 4096) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %while.body, label %if.end

while.body:                                       ; preds = %land.rhs, %lor.rhs
  %inc = add nsw i32 %lineno.0270, 1
  %call1 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call) #6
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %for.end172, label %land.rhs

if.end:                                           ; preds = %lor.rhs
  %inc9 = add nsw i32 %lineno.0270, 1
  %cmp10 = icmp slt i32 %call6, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 166, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i32 %inc9, i8* %0) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %cmp15 = icmp eq i32 %call6, 2
  br i1 %cmp15, label %lor.lhs.false, label %if.then21

lor.lhs.false:                                    ; preds = %if.end14
  %3 = load i8** %arraydecay5, align 16, !tbaa !0
  %call18 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #8
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 169, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([40 x i8]* @.str10, i64 0, i64 0), i32 %inc9) #6
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false, %if.then21
  %4 = load i8** %arrayidx23, align 8, !tbaa !0
  %5 = load i8* %4, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %5, 91
  br i1 %cmp26, label %lor.lhs.false28, label %if.then36

lor.lhs.false28:                                  ; preds = %if.end22
  %call30 = call i64 @strlen(i8* %4) #8
  %sub = add i64 %call30, -1
  %arrayidx32 = getelementptr inbounds i8* %4, i64 %sub
  %6 = load i8* %arrayidx32, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %6, 93
  br i1 %cmp34, label %if.end38, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false28, %if.end22
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 172, i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0)) #6
  %7 = load i8** %arrayidx23, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([47 x i8]* @.str12, i64 0, i64 0), i32 %inc9, i8* %7) #6
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false28, %if.then36
  %call39 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 176) #6
  %8 = bitcast i8* %call39 to %struct.lmclass_s*
  %9 = load i8** %arrayidx23, align 8, !tbaa !0
  %call41 = call i8* @__ckd_salloc__(i8* %9, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 177) #6
  %name = bitcast i8* %call39 to i8**
  store i8* %call41, i8** %name, align 8, !tbaa !0
  %wordlist = getelementptr inbounds i8* %call39, i64 8
  %10 = bitcast i8* %wordlist to %struct.lmclass_word_s**
  store %struct.lmclass_word_s* null, %struct.lmclass_word_s** %10, align 8, !tbaa !0
  %lmclass_list.i = getelementptr inbounds %struct.lmclass_set_s* %lmclass_set.addr.0.ph280, i64 0, i32 0
  %cl.018.i = load %struct.lmclass_s** %lmclass_list.i, align 8
  %tobool19.i = icmp eq %struct.lmclass_s* %cl.018.i, null
  br i1 %tobool19.i, label %lmclass_add.exit.thread239, label %land.rhs.i

for.cond.i:                                       ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.lmclass_s* %cl.020.i, i64 0, i32 2
  %cl.0.i = load %struct.lmclass_s** %next.i, align 8
  %tobool.i = icmp eq %struct.lmclass_s* %cl.0.i, null
  br i1 %tobool.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end38, %for.cond.i
  %cl.020.i = phi %struct.lmclass_s* [ %cl.0.i, %for.cond.i ], [ %cl.018.i, %if.end38 ]
  %name.i = getelementptr inbounds %struct.lmclass_s* %cl.020.i, i64 0, i32 0
  %11 = load i8** %name.i, align 8, !tbaa !0
  %call.i = call i32 @strcmp(i8* %11, i8* %call41) #8
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then45, label %for.cond.i

if.end.i:                                         ; preds = %for.cond.i
  %tobool3.i = icmp eq %struct.lmclass_s* %cl.020.i, null
  br i1 %tobool3.i, label %lmclass_add.exit.thread239, label %lmclass_add.exit

lmclass_add.exit.thread239:                       ; preds = %if.end38, %if.end.i
  store %struct.lmclass_s* %8, %struct.lmclass_s** %lmclass_list.i, align 8, !tbaa !0
  %next8.i240 = getelementptr inbounds i8* %call39, i64 16
  %12 = bitcast i8* %next8.i240 to %struct.lmclass_s**
  store %struct.lmclass_s* null, %struct.lmclass_s** %12, align 8, !tbaa !0
  br label %for.cond48.preheader

lmclass_add.exit:                                 ; preds = %if.end.i
  store %struct.lmclass_s* %8, %struct.lmclass_s** %next.i, align 8, !tbaa !0
  %next8.i = getelementptr inbounds i8* %call39, i64 16
  %13 = bitcast i8* %next8.i to %struct.lmclass_s**
  store %struct.lmclass_s* null, %struct.lmclass_s** %13, align 8, !tbaa !0
  %cmp43 = icmp eq %struct.lmclass_set_s* %lmclass_set.addr.0.ph280, null
  br i1 %cmp43, label %if.then45, label %for.cond48.preheader

if.then45:                                        ; preds = %land.rhs.i, %lmclass_add.exit
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 183, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  %14 = load i8** %arrayidx23, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str13, i64 0, i64 0), i32 %inc9, i8* %14) #6
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %if.then45, %lmclass_add.exit, %lmclass_add.exit.thread239
  %retval.0.i237.ph = phi %struct.lmclass_set_s* [ %lmclass_set.addr.0.ph280, %lmclass_add.exit.thread239 ], [ %lmclass_set.addr.0.ph280, %lmclass_add.exit ], [ null, %if.then45 ]
  br label %for.cond48

for.cond48:                                       ; preds = %for.cond48.preheader, %if.end128
  %lineno.1 = phi i32 [ %inc73, %if.end128 ], [ %inc9, %for.cond48.preheader ]
  %nwd.3 = phi i32 [ %nwd.6243, %if.end128 ], [ %call6, %for.cond48.preheader ]
  %lmclass.0 = phi %struct.lmclass_s* [ %retval.0.i235245, %if.end128 ], [ %8, %for.cond48.preheader ]
  %SUMp.0 = phi float [ %SUMp.1, %if.end128 ], [ 0.000000e+00, %for.cond48.preheader ]
  %n_implicit_prob.0 = phi i32 [ %n_implicit_prob.1, %if.end128 ], [ 0, %for.cond48.preheader ]
  %n_word.0 = phi i32 [ %inc129, %if.end128 ], [ 0, %for.cond48.preheader ]
  %call51256 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call) #6
  %cmp52257 = icmp eq i8* %call51256, null
  br i1 %cmp52257, label %if.then71, label %land.rhs54

land.rhs54:                                       ; preds = %for.cond48, %while.body67
  %nwd.4259 = phi i32 [ %nwd.5, %while.body67 ], [ %nwd.3, %for.cond48 ]
  %lineno.2258 = phi i32 [ %inc68, %while.body67 ], [ %lineno.1, %for.cond48 ]
  %15 = load i8* %0, align 16, !tbaa !1
  %cmp57 = icmp eq i8 %15, 35
  br i1 %cmp57, label %while.body67, label %lor.rhs59

lor.rhs59:                                        ; preds = %land.rhs54
  %call62 = call i32 @str2words(i8* %0, i8** %arraydecay5, i32 4096) #6
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %while.body67, label %if.end72

while.body67:                                     ; preds = %land.rhs54, %lor.rhs59
  %nwd.5 = phi i32 [ %nwd.4259, %land.rhs54 ], [ 0, %lor.rhs59 ]
  %inc68 = add nsw i32 %lineno.2258, 1
  %call51 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call) #6
  %cmp52 = icmp eq i8* %call51, null
  br i1 %cmp52, label %if.then71, label %land.rhs54

if.then71:                                        ; preds = %for.cond48, %while.body67
  %nwd.4.lcssa = phi i32 [ %nwd.3, %for.cond48 ], [ %nwd.5, %while.body67 ]
  %lineno.2.lcssa = phi i32 [ %lineno.1, %for.cond48 ], [ %inc68, %while.body67 ]
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 197, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* %file) #6
  br label %if.end72

if.end72:                                         ; preds = %lor.rhs59, %if.then71
  %lineno.2253 = phi i32 [ %lineno.2.lcssa, %if.then71 ], [ %lineno.2258, %lor.rhs59 ]
  %nwd.6243 = phi i32 [ %nwd.4.lcssa, %if.then71 ], [ %call62, %lor.rhs59 ]
  %inc73 = add nsw i32 %lineno.2253, 1
  %nwd.6.off = add i32 %nwd.6243, -1
  %16 = icmp ugt i32 %nwd.6.off, 1
  br i1 %16, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end72
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 201, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i32 %inc73) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end72
  %cmp80 = icmp eq i32 %nwd.6243, 2
  br i1 %cmp80, label %land.lhs.true82, label %if.else116

land.lhs.true82:                                  ; preds = %if.end79
  %17 = load i8** %arraydecay5, align 16, !tbaa !0
  %call84 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #8
  %cmp85 = icmp eq i32 %call84, 0
  %18 = load i8** %arrayidx23, align 8, !tbaa !0
  br i1 %cmp85, label %land.lhs.true87, label %if.then97

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %name89 = getelementptr inbounds %struct.lmclass_s* %lmclass.0, i64 0, i32 0
  %19 = load i8** %name89, align 8, !tbaa !0
  %call90 = call i32 @strcmp(i8* %18, i8* %19) #8
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %for.end, label %if.then97

if.then97:                                        ; preds = %land.lhs.true82, %land.lhs.true87
  %call99 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), float* %p) #6
  %cmp100 = icmp eq i32 %call99, 1
  br i1 %cmp100, label %if.then102, label %if.else

if.then102:                                       ; preds = %if.then97
  %20 = load float* %p, align 4, !tbaa !4
  %cmp104 = fcmp ugt float %20, 0.000000e+00
  %cmp108 = fcmp ult float %20, 1.000000e+00
  %or.cond = and i1 %cmp104, %cmp108
  br i1 %or.cond, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.then102
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 211, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  %21 = load i8** %arrayidx23, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str18, i64 0, i64 0), i32 %inc73, i8* %21) #6
  %.pre = load float* %p, align 4, !tbaa !4
  br label %if.end112

if.end112:                                        ; preds = %if.then102, %if.then110
  %22 = phi float [ %20, %if.then102 ], [ %.pre, %if.then110 ]
  %conv113 = fpext float %22 to double
  %call114 = call i32 @logs3(double %conv113) #6
  %23 = load float* %p, align 4, !tbaa !4
  %add = fadd float %SUMp.0, %23
  br label %if.end118

if.else:                                          ; preds = %if.then97
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 216, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i32 %inc73) #6
  br label %if.end118

if.else116:                                       ; preds = %if.end79
  %inc117 = add nsw i32 %n_implicit_prob.0, 1
  br label %if.end118

if.end118:                                        ; preds = %if.end112, %if.else, %if.else116
  %SUMp.1 = phi float [ %add, %if.end112 ], [ %SUMp.0, %if.else ], [ %SUMp.0, %if.else116 ]
  %n_implicit_prob.1 = phi i32 [ %n_implicit_prob.0, %if.end112 ], [ %n_implicit_prob.0, %if.else ], [ %inc117, %if.else116 ]
  %LOGp.0 = phi i32 [ %call114, %if.end112 ], [ 0, %if.else ], [ 32001, %if.else116 ]
  %call119 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 223) #6
  %24 = bitcast i8* %call119 to %struct.lmclass_word_s*
  %25 = load i8** %arraydecay5, align 16, !tbaa !0
  %call121 = call i8* @__ckd_salloc__(i8* %25, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 224) #6
  %word122 = bitcast i8* %call119 to i8**
  store i8* %call121, i8** %word122, align 8, !tbaa !0
  %dictwid = getelementptr inbounds i8* %call119, i64 8
  %26 = bitcast i8* %dictwid to i32*
  store i32 -1, i32* %26, align 4, !tbaa !3
  %LOGprob = getelementptr inbounds i8* %call119, i64 12
  %27 = bitcast i8* %LOGprob to i32*
  store i32 %LOGp.0, i32* %27, align 4, !tbaa !3
  %wordlist.i = getelementptr inbounds %struct.lmclass_s* %lmclass.0, i64 0, i32 1
  %w.018.i = load %struct.lmclass_word_s** %wordlist.i, align 8
  %tobool19.i220 = icmp eq %struct.lmclass_word_s* %w.018.i, null
  br i1 %tobool19.i220, label %lmclass_addword.exit.thread247, label %land.rhs.i227

for.cond.i224:                                    ; preds = %land.rhs.i227
  %next.i222 = getelementptr inbounds %struct.lmclass_word_s* %w.020.i, i64 0, i32 3
  %w.0.i = load %struct.lmclass_word_s** %next.i222, align 8
  %tobool.i223 = icmp eq %struct.lmclass_word_s* %w.0.i, null
  br i1 %tobool.i223, label %if.end.i229, label %land.rhs.i227

land.rhs.i227:                                    ; preds = %if.end118, %for.cond.i224
  %w.020.i = phi %struct.lmclass_word_s* [ %w.0.i, %for.cond.i224 ], [ %w.018.i, %if.end118 ]
  %word.i = getelementptr inbounds %struct.lmclass_word_s* %w.020.i, i64 0, i32 0
  %28 = load i8** %word.i, align 8, !tbaa !0
  %call.i225 = call i32 @strcmp(i8* %28, i8* %call121) #8
  %cmp.i226 = icmp eq i32 %call.i225, 0
  br i1 %cmp.i226, label %if.then126, label %for.cond.i224

if.end.i229:                                      ; preds = %for.cond.i224
  %tobool3.i228 = icmp eq %struct.lmclass_word_s* %w.020.i, null
  br i1 %tobool3.i228, label %lmclass_addword.exit.thread247, label %lmclass_addword.exit

lmclass_addword.exit.thread247:                   ; preds = %if.end118, %if.end.i229
  store %struct.lmclass_word_s* %24, %struct.lmclass_word_s** %wordlist.i, align 8, !tbaa !0
  %next8.i233248 = getelementptr inbounds i8* %call119, i64 16
  %29 = bitcast i8* %next8.i233248 to %struct.lmclass_word_s**
  store %struct.lmclass_word_s* null, %struct.lmclass_word_s** %29, align 8, !tbaa !0
  br label %if.end128

lmclass_addword.exit:                             ; preds = %if.end.i229
  store %struct.lmclass_word_s* %24, %struct.lmclass_word_s** %next.i222, align 8, !tbaa !0
  %next8.i233 = getelementptr inbounds i8* %call119, i64 16
  %30 = bitcast i8* %next8.i233 to %struct.lmclass_word_s**
  store %struct.lmclass_word_s* null, %struct.lmclass_word_s** %30, align 8, !tbaa !0
  %cmp124 = icmp eq %struct.lmclass_s* %lmclass.0, null
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %land.rhs.i227, %lmclass_addword.exit
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 230, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  %31 = load i8** %arraydecay5, align 16, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([50 x i8]* @.str19, i64 0, i64 0), i32 %inc73, i8* %31) #6
  br label %if.end128

if.end128:                                        ; preds = %lmclass_addword.exit.thread247, %if.then126, %lmclass_addword.exit
  %retval.0.i235245 = phi %struct.lmclass_s* [ null, %if.then126 ], [ %lmclass.0, %lmclass_addword.exit ], [ %lmclass.0, %lmclass_addword.exit.thread247 ]
  %inc129 = add nsw i32 %n_word.0, 1
  br label %for.cond48

for.end:                                          ; preds = %land.lhs.true87
  %cmp130 = icmp sgt i32 %n_implicit_prob.0, 0
  %conv134 = fpext float %SUMp.0 to double
  br i1 %cmp130, label %if.then132, label %if.else158

if.then132:                                       ; preds = %for.end
  %cmp135 = fcmp ult float %SUMp.0, 1.000000e+00
  br i1 %cmp135, label %if.end140, label %if.then137

if.then137:                                       ; preds = %if.then132
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 239, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) #6
  %32 = load i8** %name89, align 8, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([28 x i8]* @.str20, i64 0, i64 0), i8* %32, double %conv134) #6
  br label %if.end140

if.end140:                                        ; preds = %if.then132, %if.then137
  %sub142 = fsub double 1.000000e+00, %conv134
  %conv143 = sitofp i32 %n_implicit_prob.0 to float
  %conv144 = fpext float %conv143 to double
  %div = fdiv double %sub142, %conv144
  %conv145 = fptrunc double %div to float
  store float %conv145, float* %p, align 4, !tbaa !4
  %conv146 = fpext float %conv145 to double
  %call147 = call i32 @logs3(double %conv146) #6
  %wordlist148 = getelementptr inbounds %struct.lmclass_s* %lmclass.0, i64 0, i32 1
  %lmclass_word.0263 = load %struct.lmclass_word_s** %wordlist148, align 8
  %tobool150264 = icmp eq %struct.lmclass_word_s* %lmclass_word.0263, null
  br i1 %tobool150264, label %if.end170, label %for.body

for.body:                                         ; preds = %if.end140, %for.inc
  %lmclass_word.0265 = phi %struct.lmclass_word_s* [ %lmclass_word.0, %for.inc ], [ %lmclass_word.0263, %if.end140 ]
  %LOGprob151 = getelementptr inbounds %struct.lmclass_word_s* %lmclass_word.0265, i64 0, i32 2
  %33 = load i32* %LOGprob151, align 4, !tbaa !3
  %cmp152 = icmp eq i32 %33, 32001
  br i1 %cmp152, label %if.then154, label %for.inc

if.then154:                                       ; preds = %for.body
  store i32 %call147, i32* %LOGprob151, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then154
  %next = getelementptr inbounds %struct.lmclass_word_s* %lmclass_word.0265, i64 0, i32 3
  %lmclass_word.0 = load %struct.lmclass_word_s** %next, align 8
  %tobool150 = icmp eq %struct.lmclass_word_s* %lmclass_word.0, null
  br i1 %tobool150, label %if.end170, label %for.body

if.else158:                                       ; preds = %for.end
  %cmp160 = fcmp ult double %conv134, 1.100000e+00
  %cmp164 = fcmp ugt double %conv134, 9.000000e-01
  %or.cond219 = and i1 %cmp160, %cmp164
  br i1 %or.cond219, label %if.end170, label %if.then166

if.then166:                                       ; preds = %if.else158
  call void @_E__pr_info_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 253, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6
  %34 = load i8** %name89, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str20, i64 0, i64 0), i8* %34, double %conv134) #6
  br label %if.end170

if.end170:                                        ; preds = %if.end140, %for.inc, %if.else158, %if.then166
  call void @_E__pr_info_header(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i64 256, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6
  %35 = load i8** %name89, align 8, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([32 x i8]* @.str21, i64 0, i64 0), i8* %35, i32 %n_word.0) #6
  %call1268 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call) #6
  %cmp269 = icmp eq i8* %call1268, null
  br i1 %cmp269, label %for.end172, label %land.rhs.lr.ph

for.end172:                                       ; preds = %while.body, %if.end170, %entry
  %lmclass_set.addr.0.ph275 = phi %struct.lmclass_set_s* [ %lmclass_set.addr.0.ph280, %while.body ], [ %lmclass_set, %entry ], [ %retval.0.i237.ph, %if.end170 ]
  %call173 = call i32 @fclose(%struct._IO_FILE* %call) #6
  call void @llvm.lifetime.end(i64 32768, i8* %1) #3
  call void @llvm.lifetime.end(i64 16384, i8* %0) #3
  ret %struct.lmclass_set_s* %lmclass_set.addr.0.ph275
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @str2words(i8*, i8**, i32) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #2

; Function Attrs: optsize
declare i8* @__ckd_salloc__(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @logs3(double) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @lmclass_set_dictwid(%struct.lmclass_word_s* nocapture %w, i32 %dictwid) #0 {
entry:
  %dictwid1 = getelementptr inbounds %struct.lmclass_word_s* %w, i64 0, i32 1
  store i32 %dictwid, i32* %dictwid1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define %struct.lmclass_s* @lmclass_get_lmclass(%struct.lmclass_set_s* nocapture %set, i8* nocapture %name) #5 {
entry:
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s* %set, i64 0, i32 0
  %cl.05 = load %struct.lmclass_s** %lmclass_list, align 8
  %tobool6 = icmp eq %struct.lmclass_s* %cl.05, null
  br i1 %tobool6, label %for.end, label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %next = getelementptr inbounds %struct.lmclass_s* %cl.07, i64 0, i32 2
  %cl.0 = load %struct.lmclass_s** %next, align 8
  %tobool = icmp eq %struct.lmclass_s* %cl.0, null
  br i1 %tobool, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.cond
  %cl.07 = phi %struct.lmclass_s* [ %cl.0, %for.cond ], [ %cl.05, %entry ]
  %name1 = getelementptr inbounds %struct.lmclass_s* %cl.07, i64 0, i32 0
  %0 = load i8** %name1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %0, i8* %name) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %land.rhs, %entry
  %cl.0.lcssa = phi %struct.lmclass_s* [ null, %entry ], [ %cl.07, %land.rhs ], [ null, %for.cond ]
  ret %struct.lmclass_s* %cl.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @lmclass_get_nclass(%struct.lmclass_set_s* nocapture %set) #5 {
entry:
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s* %set, i64 0, i32 0
  %cl.03 = load %struct.lmclass_s** %lmclass_list, align 8
  %tobool4 = icmp eq %struct.lmclass_s* %cl.03, null
  br i1 %tobool4, label %for.end, label %for.inc

for.inc:                                          ; preds = %entry, %for.inc
  %cl.06 = phi %struct.lmclass_s* [ %cl.0, %for.inc ], [ %cl.03, %entry ]
  %n.05 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %next = getelementptr inbounds %struct.lmclass_s* %cl.06, i64 0, i32 2
  %inc = add nsw i32 %n.05, 1
  %cl.0 = load %struct.lmclass_s** %next, align 8
  %tobool = icmp eq %struct.lmclass_s* %cl.0, null
  br i1 %tobool, label %for.end, label %for.inc

for.end:                                          ; preds = %for.inc, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %n.0.lcssa
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
