; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/dict2pid.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dict2pid_t = type { i32**, i32***, i32**, i16**, i16**, i32*, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/dict2pid.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Building PID tables for dictionary\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"Pronunciation-length(%s)= %d\0A\00", align 1
@.str5 = private unnamed_addr constant [40 x i8] c"%d composite states; %d composite sseq\0A\00", align 1
@.str6 = private unnamed_addr constant [52 x i8] c"# INTERNAL (wd comssid ssid ssid ... ssid comssid)\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"%30s \00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"# LDIPH_LC (b r l ssid)\0A\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"%6s %6s %6s %5d\0A\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"# SINGLE_LC (b l comssid)\0A\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"%6s %6s %5d\0A\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"# SSEQ %d (senid senid ...)\0A\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str17 = private unnamed_addr constant [38 x i8] c"# COMSSEQ %d (comstate comstate ...)\0A\00", align 1
@.str18 = private unnamed_addr constant [33 x i8] c"# COMSTATE %d (senid senid ...)\0A\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"# END\0A\00", align 1
@.str20 = private unnamed_addr constant [29 x i8] c"Panic: length(ssidlist)= %d\0A\00", align 1
@.str21 = private unnamed_addr constant [57 x i8] c"#Composite sseq limit(%d) reached; increase MAX_S3SENID\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.dict2pid_t* @dict2pid_build(%struct.mdef_t* %mdef, %struct.dict_t* nocapture %dict) #0 {
entry:
  %n = alloca i32, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 254, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #4
  %call = call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 256) #4
  %0 = bitcast i8* %call to %struct.dict2pid_t*
  %n_word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 7
  %1 = load i32* %n_word, align 4, !tbaa !0
  %conv = sext i32 %1 to i64
  %call1 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 257) #4
  %2 = bitcast i8* %call1 to i32**
  %internal2 = bitcast i8* %call to i32***
  store i32** %2, i32*** %internal2, align 8, !tbaa !3
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 0
  %3 = load i32* %n_ciphone, align 4, !tbaa !0
  %call5 = call i8*** @__ckd_calloc_3d__(i32 %3, i32 %3, i32 %3, i32 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 261) #4
  %4 = bitcast i8*** %call5 to i32***
  %ldiph_lc = getelementptr inbounds i8* %call, i64 8
  %5 = bitcast i8* %ldiph_lc to i32****
  store i32*** %4, i32**** %5, align 8, !tbaa !3
  %6 = load i32* %n_ciphone, align 4, !tbaa !0
  %call8 = call i8** @__ckd_calloc_2d__(i32 %6, i32 %6, i32 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 264) #4
  %7 = bitcast i8** %call8 to i32**
  %single_lc = getelementptr inbounds i8* %call, i64 16
  %8 = bitcast i8* %single_lc to i32***
  store i32** %7, i32*** %8, align 8, !tbaa !3
  %n_comstate = getelementptr inbounds i8* %call, i64 48
  %9 = bitcast i8* %n_comstate to i32*
  store i32 0, i32* %9, align 4, !tbaa !0
  %n_comsseq = getelementptr inbounds i8* %call, i64 52
  %10 = bitcast i8* %n_comsseq to i32*
  store i32 0, i32* %10, align 4, !tbaa !0
  %11 = load i32* %n_ciphone, align 4, !tbaa !0
  %mul = mul nsw i32 %11, %11
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 2
  %12 = load i32* %n_emit_state, align 4, !tbaa !0
  %mul11 = mul nsw i32 %mul, %12
  %call12 = call %struct.hash_table_t* @hash_new(i32 %mul11, i32 0) #4
  %13 = load i32* %n_ciphone, align 4, !tbaa !0
  %mul15 = mul nsw i32 %13, %13
  %call16 = call %struct.hash_table_t* @hash_new(i32 %mul15, i32 0) #4
  store i32 0, i32* %n, align 4, !tbaa !0
  %14 = load i32* %n_word, align 4, !tbaa !0
  %cmp697 = icmp sgt i32 %14, 0
  br i1 %cmp697, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %15 = phi i32 [ %14, %for.body.lr.ph ], [ %21, %if.end ]
  %16 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end ]
  %indvars.iv722 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next723, %if.end ]
  %17 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %pronlen19 = getelementptr inbounds %struct.dictword_t* %17, i64 %indvars.iv722, i32 2
  %18 = load i32* %pronlen19, align 4, !tbaa !0
  %cmp20 = icmp slt i32 %18, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 274, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %19 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %word25 = getelementptr inbounds %struct.dictword_t* %19, i64 %indvars.iv722, i32 0
  %20 = load i8** %word25, align 8, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %20, i32 %18) #4
  %.pre729 = load i32* %n, align 4, !tbaa !0
  %.pre730 = load i32* %n_word, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %21 = phi i32 [ %.pre730, %if.then ], [ %15, %for.body ]
  %22 = phi i32 [ %.pre729, %if.then ], [ %16, %for.body ]
  %add = add nsw i32 %22, %18
  store i32 %add, i32* %n, align 4, !tbaa !0
  %indvars.iv.next723 = add i64 %indvars.iv722, 1
  %23 = trunc i64 %indvars.iv.next723 to i32
  %cmp = icmp slt i32 %23, %21
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %if.end
  %phitmp = sext i32 %add to i64
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %24 = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %call27 = call i8* @__ckd_calloc__(i64 %24, i64 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 278) #4
  %25 = bitcast i8* %call27 to i32*
  %26 = load i32* %n_ciphone, align 4, !tbaa !0
  %call30 = call i8** @__ckd_calloc_2d__(i32 %26, i32 %26, i32 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 281) #4
  %27 = load i32* %n_ciphone, align 4, !tbaa !0
  %call33 = call i8** @__ckd_calloc_2d__(i32 %27, i32 %27, i32 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 282) #4
  %28 = load i32* %n_ciphone, align 4, !tbaa !0
  %conv35 = sext i32 %28 to i64
  %call36 = call i8* @__ckd_calloc__(i64 %conv35, i64 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 283) #4
  %29 = bitcast i8* %call36 to i32*
  %30 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp39695 = icmp sgt i32 %30, 0
  br i1 %cmp39695, label %for.cond42.preheader, label %for.cond83.preheader

for.cond42.preheader:                             ; preds = %for.end, %for.end77
  %31 = phi i32 [ %45, %for.end77 ], [ %30, %for.end ]
  %indvars.iv720 = phi i64 [ %indvars.iv.next721, %for.end77 ], [ 0, %for.end ]
  %cmp44693 = icmp sgt i32 %31, 0
  br i1 %cmp44693, label %for.cond47.preheader.lr.ph, label %for.end77

for.cond47.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  %arrayidx69585 = getelementptr inbounds i8** %call30, i64 %indvars.iv720
  %arrayidx73587 = getelementptr inbounds i8** %call33, i64 %indvars.iv720
  br label %for.cond47.preheader

for.cond83.preheader:                             ; preds = %for.end77, %for.end
  %32 = load i32* %n_word, align 4, !tbaa !0
  %cmp85686 = icmp sgt i32 %32, 0
  br i1 %cmp85686, label %for.body87.lr.ph, label %for.end236

for.body87.lr.ph:                                 ; preds = %for.cond83.preheader
  %word92 = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %phone.i = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 8
  br label %for.body87

for.cond47.preheader:                             ; preds = %for.cond47.preheader.lr.ph, %for.end61
  %33 = phi i32 [ %31, %for.cond47.preheader.lr.ph ], [ %43, %for.end61 ]
  %indvars.iv718 = phi i64 [ 0, %for.cond47.preheader.lr.ph ], [ %indvars.iv.next719, %for.end61 ]
  %cmp49690 = icmp sgt i32 %33, 0
  br i1 %cmp49690, label %for.body51.lr.ph, label %for.end61

for.body51.lr.ph:                                 ; preds = %for.cond47.preheader
  %34 = load i32**** %5, align 8, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32*** %34, i64 %indvars.iv720
  %35 = load i32*** %arrayidx56, align 8, !tbaa !3
  br label %for.body51

for.body51:                                       ; preds = %for.body51.lr.ph, %for.body51
  %indvars.iv716 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next717, %for.body51 ]
  %arrayidx57 = getelementptr inbounds i32** %35, i64 %indvars.iv716
  %36 = load i32** %arrayidx57, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds i32* %36, i64 %indvars.iv718
  store i32 -1, i32* %arrayidx58, align 4, !tbaa !0
  %indvars.iv.next717 = add i64 %indvars.iv716, 1
  %37 = load i32* %n_ciphone, align 4, !tbaa !0
  %38 = trunc i64 %indvars.iv.next717 to i32
  %cmp49 = icmp slt i32 %38, %37
  br i1 %cmp49, label %for.body51, label %for.end61

for.end61:                                        ; preds = %for.body51, %for.cond47.preheader
  %39 = load i32*** %8, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds i32** %39, i64 %indvars.iv720
  %40 = load i32** %arrayidx65, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds i32* %40, i64 %indvars.iv718
  store i32 -1, i32* %arrayidx66, align 4, !tbaa !0
  %arrayidx69586 = load i8** %arrayidx69585, align 8
  %41 = bitcast i8* %arrayidx69586 to i32*
  %arrayidx70 = getelementptr inbounds i32* %41, i64 %indvars.iv718
  store i32 -1, i32* %arrayidx70, align 4, !tbaa !0
  %arrayidx73588 = load i8** %arrayidx73587, align 8
  %42 = bitcast i8* %arrayidx73588 to i32*
  %arrayidx74 = getelementptr inbounds i32* %42, i64 %indvars.iv718
  store i32 -1, i32* %arrayidx74, align 4, !tbaa !0
  %indvars.iv.next719 = add i64 %indvars.iv718, 1
  %43 = load i32* %n_ciphone, align 4, !tbaa !0
  %44 = trunc i64 %indvars.iv.next719 to i32
  %cmp44 = icmp slt i32 %44, %43
  br i1 %cmp44, label %for.cond47.preheader, label %for.end77

for.end77:                                        ; preds = %for.end61, %for.cond42.preheader
  %arrayidx79 = getelementptr inbounds i32* %29, i64 %indvars.iv720
  store i32 -1, i32* %arrayidx79, align 4, !tbaa !0
  %indvars.iv.next721 = add i64 %indvars.iv720, 1
  %45 = load i32* %n_ciphone, align 4, !tbaa !0
  %46 = trunc i64 %indvars.iv.next721 to i32
  %cmp39 = icmp slt i32 %46, %45
  br i1 %cmp39, label %for.cond42.preheader, label %for.cond83.preheader

for.body87:                                       ; preds = %for.body87.lr.ph, %if.end233
  %indvars.iv714 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next715, %if.end233 ]
  %internal.0687 = phi i32* [ %25, %for.body87.lr.ph ], [ %add.ptr, %if.end233 ]
  %47 = load i32*** %internal2, align 8, !tbaa !3
  %arrayidx90 = getelementptr inbounds i32** %47, i64 %indvars.iv714
  store i32* %internal.0687, i32** %arrayidx90, align 8, !tbaa !3
  %48 = load %struct.dictword_t** %word92, align 8, !tbaa !3
  %pronlen94 = getelementptr inbounds %struct.dictword_t* %48, i64 %indvars.iv714, i32 2
  %49 = load i32* %pronlen94, align 4, !tbaa !0
  %cmp95 = icmp sgt i32 %49, 1
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %for.body87
  %ciphone = getelementptr inbounds %struct.dictword_t* %48, i64 %indvars.iv714, i32 1
  %50 = load i8** %ciphone, align 8, !tbaa !3
  %51 = load i8* %50, align 1, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8* %50, i64 1
  %52 = load i8* %arrayidx107, align 1, !tbaa !1
  %idxprom109 = sext i8 %52 to i64
  %idxprom110 = sext i8 %51 to i64
  %arrayidx111577 = getelementptr inbounds i8** %call30, i64 %idxprom110
  %arrayidx111578 = load i8** %arrayidx111577, align 8
  %53 = bitcast i8* %arrayidx111578 to i32*
  %arrayidx112 = getelementptr inbounds i32* %53, i64 %idxprom109
  %54 = load i32* %arrayidx112, align 4, !tbaa !0
  %cmp113 = icmp slt i32 %54, 0
  br i1 %cmp113, label %if.then115, label %if.end143

if.then115:                                       ; preds = %if.then97
  %55 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp30.i = icmp sgt i32 %55, 0
  br i1 %cmp30.i, label %for.body.i, label %if.then11.i

for.body.i:                                       ; preds = %if.then115, %for.inc.i
  %g.032.i = phi %struct.gnode_s* [ %g.1.i, %for.inc.i ], [ null, %if.then115 ]
  %l.031.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %if.then115 ]
  %conv1.i = trunc i32 %l.031.i to i8
  %call.i = call i32 @mdef_phone_id(%struct.mdef_t* %mdef, i8 signext %51, i8 signext %conv1.i, i8 signext %52, i32 0) #4
  %cmp3.i = icmp sgt i32 %call.i, -1
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %idxprom.i = sext i32 %call.i to i64
  %56 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid5.i = getelementptr inbounds %struct.phone_t* %56, i64 %idxprom.i, i32 0
  %57 = load i32* %ssid5.i, align 4, !tbaa !0
  %call6.i = call i32 @glist_chkdup_int32(%struct.gnode_s* %g.032.i, i32 %57) #4
  %tobool.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.i, label %if.then7.i, label %for.inc.i

if.then7.i:                                       ; preds = %if.then.i
  %call8.i = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %g.032.i, i32 %57) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %if.then.i, %for.body.i
  %g.1.i = phi %struct.gnode_s* [ %g.032.i, %if.then.i ], [ %call8.i, %if.then7.i ], [ %g.032.i, %for.body.i ]
  %inc.i = add nsw i32 %l.031.i, 1
  %58 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp.i = icmp slt i32 %inc.i, %58
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool10.i = icmp eq %struct.gnode_s* %g.1.i, null
  br i1 %tobool10.i, label %if.then11.i, label %ldiph_comsseq.exit

if.then11.i:                                      ; preds = %for.end.i, %if.then115
  %59 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid15.i = getelementptr inbounds %struct.phone_t* %59, i64 %idxprom110, i32 0
  %60 = load i32* %ssid15.i, align 4, !tbaa !0
  %call16.i = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* null, i32 %60) #4
  br label %ldiph_comsseq.exit

ldiph_comsseq.exit:                               ; preds = %for.end.i, %if.then11.i
  %g.2.i = phi %struct.gnode_s* [ %g.1.i, %for.end.i ], [ %call16.i, %if.then11.i ]
  %call117 = call fastcc i32 @ssidlist2comsseq(%struct.gnode_s* %g.2.i, %struct.mdef_t* %mdef, %struct.dict2pid_t* %0, %struct.hash_table_t* %call12, %struct.hash_table_t* %call16) #5
  %arrayidx111584 = load i8** %arrayidx111577, align 8
  %61 = bitcast i8* %arrayidx111584 to i32*
  %arrayidx121 = getelementptr inbounds i32* %61, i64 %idxprom109
  store i32 %call117, i32* %arrayidx121, align 4, !tbaa !0
  call void @glist_free(%struct.gnode_s* %g.2.i) #4
  %62 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp124678 = icmp sgt i32 %62, 0
  br i1 %cmp124678, label %for.body126, label %if.end143.loopexit

for.body126:                                      ; preds = %ldiph_comsseq.exit, %for.body126
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %for.body126 ], [ 0, %ldiph_comsseq.exit ]
  %conv128 = trunc i64 %indvars.iv709 to i8
  %call130 = call i32 @mdef_phone_id_nearest(%struct.mdef_t* %mdef, i8 signext %51, i8 signext %conv128, i8 signext %52, i32 0) #4
  %idxprom131 = sext i32 %call130 to i64
  %63 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid = getelementptr inbounds %struct.phone_t* %63, i64 %idxprom131, i32 0
  %64 = load i32* %ssid, align 4, !tbaa !0
  %65 = load i32**** %5, align 8, !tbaa !3
  %arrayidx137 = getelementptr inbounds i32*** %65, i64 %idxprom110
  %66 = load i32*** %arrayidx137, align 8, !tbaa !3
  %arrayidx138 = getelementptr inbounds i32** %66, i64 %idxprom109
  %67 = load i32** %arrayidx138, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds i32* %67, i64 %indvars.iv709
  store i32 %64, i32* %arrayidx139, align 4, !tbaa !0
  %indvars.iv.next710 = add i64 %indvars.iv709, 1
  %68 = load i32* %n_ciphone, align 4, !tbaa !0
  %69 = trunc i64 %indvars.iv.next710 to i32
  %cmp124 = icmp slt i32 %69, %68
  br i1 %cmp124, label %for.body126, label %if.end143.loopexit

if.end143.loopexit:                               ; preds = %for.body126, %ldiph_comsseq.exit
  %arrayidx111579.pre = load i8** %arrayidx111577, align 8
  %.phi.trans.insert = bitcast i8* %arrayidx111579.pre to i32*
  %arrayidx147.phi.trans.insert = getelementptr inbounds i32* %.phi.trans.insert, i64 %idxprom109
  %.pre = load i32* %arrayidx147.phi.trans.insert, align 4, !tbaa !0
  br label %if.end143

if.end143:                                        ; preds = %if.end143.loopexit, %if.then97
  %70 = phi i32 [ %.pre, %if.end143.loopexit ], [ %54, %if.then97 ]
  store i32 %70, i32* %internal.0687, align 4, !tbaa !0
  %sub = add i32 %49, -1
  %cmp150680 = icmp sgt i32 %sub, 1
  br i1 %cmp150680, label %for.body152, label %for.end173

for.body152:                                      ; preds = %for.body152, %if.end143
  %indvars.iv712 = phi i64 [ 1, %if.end143 ], [ %indvars.iv.next713, %for.body152 ]
  %r.1.in683 = phi i8 [ %52, %if.end143 ], [ %73, %for.body152 ]
  %b.1.in682 = phi i8 [ %51, %if.end143 ], [ %r.1.in683, %for.body152 ]
  %indvars.iv.next713 = add i64 %indvars.iv712, 1
  %71 = load %struct.dictword_t** %word92, align 8, !tbaa !3
  %ciphone158 = getelementptr inbounds %struct.dictword_t* %71, i64 %indvars.iv714, i32 1
  %72 = load i8** %ciphone158, align 8, !tbaa !3
  %arrayidx159 = getelementptr inbounds i8* %72, i64 %indvars.iv.next713
  %73 = load i8* %arrayidx159, align 1, !tbaa !1
  %call164 = call i32 @mdef_phone_id_nearest(%struct.mdef_t* %mdef, i8 signext %r.1.in683, i8 signext %b.1.in682, i8 signext %73, i32 3) #4
  %idxprom165 = sext i32 %call164 to i64
  %74 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid168 = getelementptr inbounds %struct.phone_t* %74, i64 %idxprom165, i32 0
  %75 = load i32* %ssid168, align 4, !tbaa !0
  %arrayidx170 = getelementptr inbounds i32* %internal.0687, i64 %indvars.iv712
  store i32 %75, i32* %arrayidx170, align 4, !tbaa !0
  %lftr.wideiv = trunc i64 %indvars.iv.next713 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub
  br i1 %exitcond, label %for.end173, label %for.body152

for.end173:                                       ; preds = %for.body152, %if.end143
  %r.1.in.lcssa = phi i8 [ %52, %if.end143 ], [ %73, %for.body152 ]
  %b.1.in.lcssa = phi i8 [ %51, %if.end143 ], [ %r.1.in683, %for.body152 ]
  %idxprom174 = sext i8 %b.1.in.lcssa to i64
  %idxprom175 = sext i8 %r.1.in.lcssa to i64
  %arrayidx176580 = getelementptr inbounds i8** %call33, i64 %idxprom175
  %arrayidx176581 = load i8** %arrayidx176580, align 8
  %76 = bitcast i8* %arrayidx176581 to i32*
  %arrayidx177 = getelementptr inbounds i32* %76, i64 %idxprom174
  %77 = load i32* %arrayidx177, align 4, !tbaa !0
  %cmp178 = icmp slt i32 %77, 0
  br i1 %cmp178, label %if.then180, label %if.end187

if.then180:                                       ; preds = %for.end173
  %78 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp30.i590 = icmp sgt i32 %78, 0
  br i1 %cmp30.i590, label %for.body.i599, label %if.then11.i617

for.body.i599:                                    ; preds = %if.then180, %for.inc.i610
  %g.032.i595 = phi %struct.gnode_s* [ %g.1.i607, %for.inc.i610 ], [ null, %if.then180 ]
  %r.031.i = phi i32 [ %inc.i608, %for.inc.i610 ], [ 0, %if.then180 ]
  %conv2.i596 = trunc i32 %r.031.i to i8
  %call.i597 = call i32 @mdef_phone_id(%struct.mdef_t* %mdef, i8 signext %r.1.in.lcssa, i8 signext %b.1.in.lcssa, i8 signext %conv2.i596, i32 1) #4
  %cmp3.i598 = icmp sgt i32 %call.i597, -1
  br i1 %cmp3.i598, label %if.then.i604, label %for.inc.i610

if.then.i604:                                     ; preds = %for.body.i599
  %idxprom.i600 = sext i32 %call.i597 to i64
  %79 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid5.i601 = getelementptr inbounds %struct.phone_t* %79, i64 %idxprom.i600, i32 0
  %80 = load i32* %ssid5.i601, align 4, !tbaa !0
  %call6.i602 = call i32 @glist_chkdup_int32(%struct.gnode_s* %g.032.i595, i32 %80) #4
  %tobool.i603 = icmp eq i32 %call6.i602, 0
  br i1 %tobool.i603, label %if.then7.i606, label %for.inc.i610

if.then7.i606:                                    ; preds = %if.then.i604
  %call8.i605 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %g.032.i595, i32 %80) #4
  br label %for.inc.i610

for.inc.i610:                                     ; preds = %if.then7.i606, %if.then.i604, %for.body.i599
  %g.1.i607 = phi %struct.gnode_s* [ %g.032.i595, %if.then.i604 ], [ %call8.i605, %if.then7.i606 ], [ %g.032.i595, %for.body.i599 ]
  %inc.i608 = add nsw i32 %r.031.i, 1
  %81 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp.i609 = icmp slt i32 %inc.i608, %81
  br i1 %cmp.i609, label %for.body.i599, label %for.end.i612

for.end.i612:                                     ; preds = %for.inc.i610
  %tobool10.i611 = icmp eq %struct.gnode_s* %g.1.i607, null
  br i1 %tobool10.i611, label %if.then11.i617, label %rdiph_comsseq.exit

if.then11.i617:                                   ; preds = %for.end.i612, %if.then180
  %82 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid15.i615 = getelementptr inbounds %struct.phone_t* %82, i64 %idxprom175, i32 0
  %83 = load i32* %ssid15.i615, align 4, !tbaa !0
  %call16.i616 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* null, i32 %83) #4
  br label %rdiph_comsseq.exit

rdiph_comsseq.exit:                               ; preds = %for.end.i612, %if.then11.i617
  %g.2.i618 = phi %struct.gnode_s* [ %g.1.i607, %for.end.i612 ], [ %call16.i616, %if.then11.i617 ]
  %call182 = call fastcc i32 @ssidlist2comsseq(%struct.gnode_s* %g.2.i618, %struct.mdef_t* %mdef, %struct.dict2pid_t* %0, %struct.hash_table_t* %call12, %struct.hash_table_t* %call16) #5
  %arrayidx176583 = load i8** %arrayidx176580, align 8
  %84 = bitcast i8* %arrayidx176583 to i32*
  %arrayidx186 = getelementptr inbounds i32* %84, i64 %idxprom174
  store i32 %call182, i32* %arrayidx186, align 4, !tbaa !0
  call void @glist_free(%struct.gnode_s* %g.2.i618) #4
  %arrayidx176582.pre = load i8** %arrayidx176580, align 8
  %.phi.trans.insert726 = bitcast i8* %arrayidx176582.pre to i32*
  %arrayidx191.phi.trans.insert = getelementptr inbounds i32* %.phi.trans.insert726, i64 %idxprom174
  %.pre727 = load i32* %arrayidx191.phi.trans.insert, align 4, !tbaa !0
  br label %if.end187

if.end187:                                        ; preds = %rdiph_comsseq.exit, %for.end173
  %85 = phi i32 [ %.pre727, %rdiph_comsseq.exit ], [ %77, %for.end173 ]
  %idxprom193 = sext i32 %sub to i64
  %arrayidx194 = getelementptr inbounds i32* %internal.0687, i64 %idxprom193
  store i32 %85, i32* %arrayidx194, align 4, !tbaa !0
  br label %if.end233

if.else:                                          ; preds = %for.body87
  %cmp195 = icmp eq i32 %49, 1
  br i1 %cmp195, label %if.then197, label %if.end233

if.then197:                                       ; preds = %if.else
  %ciphone201 = getelementptr inbounds %struct.dictword_t* %48, i64 %indvars.iv714, i32 1
  %86 = load i8** %ciphone201, align 8, !tbaa !3
  %87 = load i8* %86, align 1, !tbaa !1
  %idxprom204 = sext i8 %87 to i64
  %arrayidx205 = getelementptr inbounds i32* %29, i64 %idxprom204
  %88 = load i32* %arrayidx205, align 4, !tbaa !0
  %cmp206 = icmp slt i32 %88, 0
  br i1 %cmp206, label %if.then208, label %if.end228

if.then208:                                       ; preds = %if.then197
  %89 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp43.i = icmp sgt i32 %89, 0
  br i1 %cmp43.i, label %for.cond1.preheader.i, label %if.then18.i

for.cond1.preheader.i:                            ; preds = %if.then208, %for.inc14.i
  %90 = phi i32 [ %94, %for.inc14.i ], [ %89, %if.then208 ]
  %g.045.i = phi %struct.gnode_s* [ %g.1.lcssa.i, %for.inc14.i ], [ null, %if.then208 ]
  %l.044.i = phi i32 [ %inc15.i, %for.inc14.i ], [ 0, %if.then208 ]
  %cmp340.i = icmp sgt i32 %90, 0
  br i1 %cmp340.i, label %for.body4.lr.ph.i, label %for.inc14.i

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %conv5.i = trunc i32 %l.044.i to i8
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i630, %for.body4.lr.ph.i
  %g.142.i = phi %struct.gnode_s* [ %g.045.i, %for.body4.lr.ph.i ], [ %g.2.i627, %for.inc.i630 ]
  %r.041.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i628, %for.inc.i630 ]
  %conv6.i = trunc i32 %r.041.i to i8
  %call.i622 = call i32 @mdef_phone_id(%struct.mdef_t* %mdef, i8 signext %87, i8 signext %conv5.i, i8 signext %conv6.i, i32 2) #4
  %cmp7.i = icmp sgt i32 %call.i622, -1
  br i1 %cmp7.i, label %if.then.i625, label %for.inc.i630

if.then.i625:                                     ; preds = %for.body4.i
  %idxprom.i623 = sext i32 %call.i622 to i64
  %91 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid9.i = getelementptr inbounds %struct.phone_t* %91, i64 %idxprom.i623, i32 0
  %92 = load i32* %ssid9.i, align 4, !tbaa !0
  %call10.i = call i32 @glist_chkdup_int32(%struct.gnode_s* %g.142.i, i32 %92) #4
  %tobool.i624 = icmp eq i32 %call10.i, 0
  br i1 %tobool.i624, label %if.then11.i626, label %for.inc.i630

if.then11.i626:                                   ; preds = %if.then.i625
  %call12.i = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %g.142.i, i32 %92) #4
  br label %for.inc.i630

for.inc.i630:                                     ; preds = %if.then11.i626, %if.then.i625, %for.body4.i
  %g.2.i627 = phi %struct.gnode_s* [ %g.142.i, %if.then.i625 ], [ %call12.i, %if.then11.i626 ], [ %g.142.i, %for.body4.i ]
  %inc.i628 = add nsw i32 %r.041.i, 1
  %93 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp3.i629 = icmp slt i32 %inc.i628, %93
  br i1 %cmp3.i629, label %for.body4.i, label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc.i630, %for.cond1.preheader.i
  %94 = phi i32 [ %90, %for.cond1.preheader.i ], [ %93, %for.inc.i630 ]
  %g.1.lcssa.i = phi %struct.gnode_s* [ %g.045.i, %for.cond1.preheader.i ], [ %g.2.i627, %for.inc.i630 ]
  %inc15.i = add nsw i32 %l.044.i, 1
  %cmp.i631 = icmp slt i32 %inc15.i, %94
  br i1 %cmp.i631, label %for.cond1.preheader.i, label %for.end16.i

for.end16.i:                                      ; preds = %for.inc14.i
  %tobool17.i = icmp eq %struct.gnode_s* %g.1.lcssa.i, null
  br i1 %tobool17.i, label %if.then18.i, label %single_comsseq.exit

if.then18.i:                                      ; preds = %for.end16.i, %if.then208
  %95 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid22.i = getelementptr inbounds %struct.phone_t* %95, i64 %idxprom204, i32 0
  %96 = load i32* %ssid22.i, align 4, !tbaa !0
  %call23.i = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* null, i32 %96) #4
  br label %single_comsseq.exit

single_comsseq.exit:                              ; preds = %for.end16.i, %if.then18.i
  %g.3.i = phi %struct.gnode_s* [ %g.1.lcssa.i, %for.end16.i ], [ %call23.i, %if.then18.i ]
  %call210 = call fastcc i32 @ssidlist2comsseq(%struct.gnode_s* %g.3.i, %struct.mdef_t* %mdef, %struct.dict2pid_t* %0, %struct.hash_table_t* %call12, %struct.hash_table_t* %call16) #5
  store i32 %call210, i32* %arrayidx205, align 4, !tbaa !0
  call void @glist_free(%struct.gnode_s* %g.3.i) #4
  %97 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp215676 = icmp sgt i32 %97, 0
  br i1 %cmp215676, label %for.body217, label %if.end228.loopexit

for.body217:                                      ; preds = %single_comsseq.exit, %single_lc_comsseq.exit
  %indvars.iv707 = phi i64 [ %indvars.iv.next708, %single_lc_comsseq.exit ], [ 0, %single_comsseq.exit ]
  %98 = phi i32 [ %106, %single_lc_comsseq.exit ], [ %97, %single_comsseq.exit ]
  %cmp30.i633 = icmp sgt i32 %98, 0
  br i1 %cmp30.i633, label %for.body.lr.ph.i637, label %if.then11.i661

for.body.lr.ph.i637:                              ; preds = %for.body217
  %conv1.i635 = trunc i64 %indvars.iv707 to i8
  br label %for.body.i643

for.body.i643:                                    ; preds = %for.inc.i654, %for.body.lr.ph.i637
  %g.032.i638 = phi %struct.gnode_s* [ null, %for.body.lr.ph.i637 ], [ %g.1.i651, %for.inc.i654 ]
  %r.031.i639 = phi i32 [ 0, %for.body.lr.ph.i637 ], [ %inc.i652, %for.inc.i654 ]
  %conv2.i640 = trunc i32 %r.031.i639 to i8
  %call.i641 = call i32 @mdef_phone_id(%struct.mdef_t* %mdef, i8 signext %87, i8 signext %conv1.i635, i8 signext %conv2.i640, i32 2) #4
  %cmp3.i642 = icmp sgt i32 %call.i641, -1
  br i1 %cmp3.i642, label %if.then.i648, label %for.inc.i654

if.then.i648:                                     ; preds = %for.body.i643
  %idxprom.i644 = sext i32 %call.i641 to i64
  %99 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid5.i645 = getelementptr inbounds %struct.phone_t* %99, i64 %idxprom.i644, i32 0
  %100 = load i32* %ssid5.i645, align 4, !tbaa !0
  %call6.i646 = call i32 @glist_chkdup_int32(%struct.gnode_s* %g.032.i638, i32 %100) #4
  %tobool.i647 = icmp eq i32 %call6.i646, 0
  br i1 %tobool.i647, label %if.then7.i650, label %for.inc.i654

if.then7.i650:                                    ; preds = %if.then.i648
  %call8.i649 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %g.032.i638, i32 %100) #4
  br label %for.inc.i654

for.inc.i654:                                     ; preds = %if.then7.i650, %if.then.i648, %for.body.i643
  %g.1.i651 = phi %struct.gnode_s* [ %g.032.i638, %if.then.i648 ], [ %call8.i649, %if.then7.i650 ], [ %g.032.i638, %for.body.i643 ]
  %inc.i652 = add nsw i32 %r.031.i639, 1
  %101 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp.i653 = icmp slt i32 %inc.i652, %101
  br i1 %cmp.i653, label %for.body.i643, label %for.end.i656

for.end.i656:                                     ; preds = %for.inc.i654
  %tobool10.i655 = icmp eq %struct.gnode_s* %g.1.i651, null
  br i1 %tobool10.i655, label %if.then11.i661, label %single_lc_comsseq.exit

if.then11.i661:                                   ; preds = %for.end.i656, %for.body217
  %102 = load %struct.phone_t** %phone.i, align 8, !tbaa !3
  %ssid15.i659 = getelementptr inbounds %struct.phone_t* %102, i64 %idxprom204, i32 0
  %103 = load i32* %ssid15.i659, align 4, !tbaa !0
  %call16.i660 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* null, i32 %103) #4
  br label %single_lc_comsseq.exit

single_lc_comsseq.exit:                           ; preds = %for.end.i656, %if.then11.i661
  %g.2.i662 = phi %struct.gnode_s* [ %g.1.i651, %for.end.i656 ], [ %call16.i660, %if.then11.i661 ]
  %call219 = call fastcc i32 @ssidlist2comsseq(%struct.gnode_s* %g.2.i662, %struct.mdef_t* %mdef, %struct.dict2pid_t* %0, %struct.hash_table_t* %call12, %struct.hash_table_t* %call16) #5
  %104 = load i32*** %8, align 8, !tbaa !3
  %arrayidx223 = getelementptr inbounds i32** %104, i64 %idxprom204
  %105 = load i32** %arrayidx223, align 8, !tbaa !3
  %arrayidx224 = getelementptr inbounds i32* %105, i64 %indvars.iv707
  store i32 %call219, i32* %arrayidx224, align 4, !tbaa !0
  call void @glist_free(%struct.gnode_s* %g.2.i662) #4
  %indvars.iv.next708 = add i64 %indvars.iv707, 1
  %106 = load i32* %n_ciphone, align 4, !tbaa !0
  %107 = trunc i64 %indvars.iv.next708 to i32
  %cmp215 = icmp slt i32 %107, %106
  br i1 %cmp215, label %for.body217, label %if.end228.loopexit

if.end228.loopexit:                               ; preds = %single_lc_comsseq.exit, %single_comsseq.exit
  %.pre728 = load i32* %arrayidx205, align 4, !tbaa !0
  br label %if.end228

if.end228:                                        ; preds = %if.end228.loopexit, %if.then197
  %108 = phi i32 [ %.pre728, %if.end228.loopexit ], [ %88, %if.then197 ]
  store i32 %108, i32* %internal.0687, align 4, !tbaa !0
  br label %if.end233

if.end233:                                        ; preds = %if.else, %if.end228, %if.end187
  %idx.ext = sext i32 %49 to i64
  %add.ptr = getelementptr inbounds i32* %internal.0687, i64 %idx.ext
  %indvars.iv.next715 = add i64 %indvars.iv714, 1
  %109 = load i32* %n_word, align 4, !tbaa !0
  %110 = trunc i64 %indvars.iv.next715 to i32
  %cmp85 = icmp slt i32 %110, %109
  br i1 %cmp85, label %for.body87, label %for.end236

for.end236:                                       ; preds = %if.end233, %for.cond83.preheader
  call void @ckd_free_2d(i8** %call30) #4
  call void @ckd_free_2d(i8** %call33) #4
  call void @ckd_free(i8* %call36) #4
  %111 = load i32* %9, align 4, !tbaa !0
  %conv238 = sext i32 %111 to i64
  %call239 = call i8* @__ckd_calloc__(i64 %conv238, i64 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 357) #4
  %112 = bitcast i8* %call239 to i32*
  %call240 = call %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %call12, i32* %n) #4
  store i32 0, i32* %n, align 4, !tbaa !0
  %tobool674 = icmp eq %struct.gnode_s* %call240, null
  br i1 %tobool674, label %for.end259, label %for.body242

for.body242:                                      ; preds = %for.end236, %for.end252
  %gn.0675 = phi %struct.gnode_s* [ %120, %for.end252 ], [ %call240, %for.end236 ]
  %ptr = getelementptr inbounds %struct.gnode_s* %gn.0675, i64 0, i32 0, i32 0
  %113 = load i8** %ptr, align 8, !tbaa !3
  %key = bitcast i8* %113 to i8**
  %114 = load i8** %key, align 8, !tbaa !3
  %115 = bitcast i8* %114 to i16*
  br label %for.cond243

for.cond243:                                      ; preds = %for.cond243, %for.body242
  %indvars.iv705 = phi i64 [ %indvars.iv.next706, %for.cond243 ], [ 0, %for.body242 ]
  %i.1 = phi i32 [ %inc251, %for.cond243 ], [ 0, %for.body242 ]
  %arrayidx245 = getelementptr inbounds i16* %115, i64 %indvars.iv705
  %116 = load i16* %arrayidx245, align 2, !tbaa !4
  %cmp247 = icmp sgt i16 %116, -1
  %indvars.iv.next706 = add i64 %indvars.iv705, 1
  %inc251 = add nsw i32 %i.1, 1
  br i1 %cmp247, label %for.cond243, label %for.end252

for.end252:                                       ; preds = %for.cond243
  %val = getelementptr inbounds i8* %113, i64 12
  %117 = bitcast i8* %val to i32*
  %118 = load i32* %117, align 4, !tbaa !0
  %idxprom254 = sext i32 %118 to i64
  %arrayidx255 = getelementptr inbounds i32* %112, i64 %idxprom254
  store i32 %inc251, i32* %arrayidx255, align 4, !tbaa !0
  %119 = load i32* %n, align 4, !tbaa !0
  %add257 = add nsw i32 %119, %inc251
  store i32 %add257, i32* %n, align 4, !tbaa !0
  %next = getelementptr inbounds %struct.gnode_s* %gn.0675, i64 0, i32 1
  %120 = load %struct.gnode_s** %next, align 8, !tbaa !3
  %tobool = icmp eq %struct.gnode_s* %120, null
  br i1 %tobool, label %for.end259, label %for.body242

for.end259:                                       ; preds = %for.end252, %for.end236
  %121 = load i32* %9, align 4, !tbaa !0
  %conv261 = sext i32 %121 to i64
  %call262 = call i8* @__ckd_calloc__(i64 %conv261, i64 8, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 370) #4
  %122 = bitcast i8* %call262 to i16**
  %comstate = getelementptr inbounds i8* %call, i64 24
  %123 = bitcast i8* %comstate to i16***
  store i16** %122, i16*** %123, align 8, !tbaa !3
  %124 = load i32* %n, align 4, !tbaa !0
  %conv263 = sext i32 %124 to i64
  %call264 = call i8* @__ckd_calloc__(i64 %conv263, i64 2, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 371) #4
  %125 = load i32* %9, align 4, !tbaa !0
  %cmp267671 = icmp sgt i32 %125, 0
  br i1 %cmp267671, label %for.body269.lr.ph, label %for.cond280.preheader

for.body269.lr.ph:                                ; preds = %for.end259
  %126 = bitcast i8* %call264 to i16*
  br label %for.body269

for.cond280.preheader:                            ; preds = %for.body269, %for.end259
  br i1 %tobool674, label %for.end305, label %for.body282

for.body269:                                      ; preds = %for.body269.lr.ph, %for.body269
  %indvars.iv703 = phi i64 [ 0, %for.body269.lr.ph ], [ %indvars.iv.next704, %for.body269 ]
  %sen.0672 = phi i16* [ %126, %for.body269.lr.ph ], [ %add.ptr276, %for.body269 ]
  %127 = load i16*** %123, align 8, !tbaa !3
  %arrayidx272 = getelementptr inbounds i16** %127, i64 %indvars.iv703
  store i16* %sen.0672, i16** %arrayidx272, align 8, !tbaa !3
  %arrayidx274 = getelementptr inbounds i32* %112, i64 %indvars.iv703
  %128 = load i32* %arrayidx274, align 4, !tbaa !0
  %idx.ext275 = sext i32 %128 to i64
  %add.ptr276 = getelementptr inbounds i16* %sen.0672, i64 %idx.ext275
  %indvars.iv.next704 = add i64 %indvars.iv703, 1
  %129 = trunc i64 %indvars.iv.next704 to i32
  %cmp267 = icmp slt i32 %129, %125
  br i1 %cmp267, label %for.body269, label %for.cond280.preheader

for.body282:                                      ; preds = %for.cond280.preheader, %for.end302
  %gn.1670 = phi %struct.gnode_s* [ %140, %for.end302 ], [ %call240, %for.cond280.preheader ]
  %ptr284 = getelementptr inbounds %struct.gnode_s* %gn.1670, i64 0, i32 0, i32 0
  %130 = load i8** %ptr284, align 8, !tbaa !3
  %key285 = bitcast i8* %130 to i8**
  %131 = load i8** %key285, align 8, !tbaa !3
  %132 = bitcast i8* %131 to i16*
  %val286 = getelementptr inbounds i8* %130, i64 12
  %133 = bitcast i8* %val286 to i32*
  %134 = load i32* %133, align 4, !tbaa !0
  %idxprom288 = sext i32 %134 to i64
  %arrayidx289 = getelementptr inbounds i32* %112, i64 %idxprom288
  %135 = load i32* %arrayidx289, align 4, !tbaa !0
  %cmp290667 = icmp sgt i32 %135, 0
  br i1 %cmp290667, label %for.body292.lr.ph, label %for.end302

for.body292.lr.ph:                                ; preds = %for.body282
  %136 = load i16*** %123, align 8, !tbaa !3
  %arrayidx298 = getelementptr inbounds i16** %136, i64 %idxprom288
  %137 = load i16** %arrayidx298, align 8, !tbaa !3
  br label %for.body292

for.body292:                                      ; preds = %for.body292.lr.ph, %for.body292
  %indvars.iv701 = phi i64 [ 0, %for.body292.lr.ph ], [ %indvars.iv.next702, %for.body292 ]
  %arrayidx294 = getelementptr inbounds i16* %132, i64 %indvars.iv701
  %138 = load i16* %arrayidx294, align 2, !tbaa !4
  %arrayidx299 = getelementptr inbounds i16* %137, i64 %indvars.iv701
  store i16 %138, i16* %arrayidx299, align 2, !tbaa !4
  %indvars.iv.next702 = add i64 %indvars.iv701, 1
  %139 = trunc i64 %indvars.iv.next702 to i32
  %cmp290 = icmp slt i32 %139, %135
  br i1 %cmp290, label %for.body292, label %for.end302

for.end302:                                       ; preds = %for.body292, %for.body282
  call void @ckd_free(i8* %131) #4
  %next304 = getelementptr inbounds %struct.gnode_s* %gn.1670, i64 0, i32 1
  %140 = load %struct.gnode_s** %next304, align 8, !tbaa !3
  %tobool281 = icmp eq %struct.gnode_s* %140, null
  br i1 %tobool281, label %for.end305, label %for.body282

for.end305:                                       ; preds = %for.end302, %for.cond280.preheader
  call void @ckd_free(i8* %call239) #4
  call void @glist_free(%struct.gnode_s* %call240) #4
  call void @hash_free(%struct.hash_table_t* %call12) #4
  %141 = load i32* %10, align 4, !tbaa !0
  %conv307 = sext i32 %141 to i64
  %call308 = call i8* @__ckd_calloc__(i64 %conv307, i64 8, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 394) #4
  %142 = bitcast i8* %call308 to i16**
  %comsseq = getelementptr inbounds i8* %call, i64 32
  %143 = bitcast i8* %comsseq to i16***
  store i16** %142, i16*** %143, align 8, !tbaa !3
  %call309 = call %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %call16, i32* %n) #4
  %tobool311665 = icmp eq %struct.gnode_s* %call309, null
  br i1 %tobool311665, label %for.end322, label %for.body312

for.body312:                                      ; preds = %for.end305, %for.body312
  %gn.2666 = phi %struct.gnode_s* [ %150, %for.body312 ], [ %call309, %for.end305 ]
  %ptr314 = getelementptr inbounds %struct.gnode_s* %gn.2666, i64 0, i32 0, i32 0
  %144 = load i8** %ptr314, align 8, !tbaa !3
  %val315 = getelementptr inbounds i8* %144, i64 12
  %145 = bitcast i8* %val315 to i32*
  %146 = load i32* %145, align 4, !tbaa !0
  %key316 = bitcast i8* %144 to i8**
  %147 = load i8** %key316, align 8, !tbaa !3
  %148 = bitcast i8* %147 to i16*
  %idxprom317 = sext i32 %146 to i64
  %149 = load i16*** %143, align 8, !tbaa !3
  %arrayidx319 = getelementptr inbounds i16** %149, i64 %idxprom317
  store i16* %148, i16** %arrayidx319, align 8, !tbaa !3
  %next321 = getelementptr inbounds %struct.gnode_s* %gn.2666, i64 0, i32 1
  %150 = load %struct.gnode_s** %next321, align 8, !tbaa !3
  %tobool311 = icmp eq %struct.gnode_s* %150, null
  br i1 %tobool311, label %for.end322, label %for.body312

for.end322:                                       ; preds = %for.body312, %for.end305
  call void @glist_free(%struct.gnode_s* %call309) #4
  call void @hash_free(%struct.hash_table_t* %call16) #4
  %151 = load i32* %9, align 4, !tbaa !0
  %conv324 = sext i32 %151 to i64
  %call325 = call i8* @__ckd_calloc__(i64 %conv324, i64 4, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 408) #4
  %152 = bitcast i8* %call325 to i32*
  %comwt = getelementptr inbounds i8* %call, i64 40
  %153 = bitcast i8* %comwt to i32**
  store i32* %152, i32** %153, align 8, !tbaa !3
  %154 = load i32* %9, align 4, !tbaa !0
  %cmp328663 = icmp sgt i32 %154, 0
  br i1 %cmp328663, label %for.body330, label %for.end352

for.body330:                                      ; preds = %for.end322, %for.end343
  %indvars.iv699 = phi i64 [ %indvars.iv.next700, %for.end343 ], [ 0, %for.end322 ]
  %155 = load i16*** %123, align 8, !tbaa !3
  %arrayidx333 = getelementptr inbounds i16** %155, i64 %indvars.iv699
  %156 = load i16** %arrayidx333, align 8, !tbaa !3
  br label %for.cond334

for.cond334:                                      ; preds = %for.cond334, %for.body330
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond334 ], [ 0, %for.body330 ]
  %j.1 = phi i32 [ %inc342, %for.cond334 ], [ 0, %for.body330 ]
  %arrayidx336 = getelementptr inbounds i16* %156, i64 %indvars.iv
  %157 = load i16* %arrayidx336, align 2, !tbaa !4
  %cmp338 = icmp sgt i16 %157, -1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc342 = add nsw i32 %j.1, 1
  br i1 %cmp338, label %for.cond334, label %for.end343

for.end343:                                       ; preds = %for.cond334
  %conv344 = sitofp i32 %j.1 to double
  %call345 = call i32 @logs3(double %conv344) #4
  %sub346 = sub nsw i32 0, %call345
  %158 = load i32** %153, align 8, !tbaa !3
  %arrayidx349 = getelementptr inbounds i32* %158, i64 %indvars.iv699
  store i32 %sub346, i32* %arrayidx349, align 4, !tbaa !0
  %indvars.iv.next700 = add i64 %indvars.iv699, 1
  %159 = load i32* %9, align 4, !tbaa !0
  %160 = trunc i64 %indvars.iv.next700 to i32
  %cmp328 = icmp slt i32 %160, %159
  br i1 %cmp328, label %for.body330, label %for.end352

for.end352:                                       ; preds = %for.end343, %for.end322
  call void @_E__pr_info_header(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 422, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  %161 = load i32* %9, align 4, !tbaa !0
  %162 = load i32* %10, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0), i32 %161, i32 %162) #4
  ret %struct.dict2pid_t* %0
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: optsize
declare %struct.hash_table_t* @hash_new(i32, i32) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ssidlist2comsseq(%struct.gnode_s* %g, %struct.mdef_t* nocapture %mdef, %struct.dict2pid_t* nocapture %dict2pid, %struct.hash_table_t* %hs, %struct.hash_table_t* %hp) #0 {
entry:
  %call = tail call i32 @glist_count(%struct.gnode_s* %g) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 184, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str20, i64 0, i64 0), i32 %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 2
  %0 = load i32* %n_emit_state, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call1 = tail call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 187) #4
  %1 = bitcast i8* %call1 to i16**
  %2 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp3192 = icmp sgt i32 %2, 0
  br i1 %cmp3192, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %add = add nsw i32 %call, 1
  %conv5 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv201 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next202, %for.body ]
  %call6 = tail call i8* @__ckd_calloc__(i64 %conv5, i64 2, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 189) #4
  %3 = bitcast i8* %call6 to i16*
  %arrayidx = getelementptr inbounds i16** %1, i64 %indvars.iv201
  store i16* %3, i16** %arrayidx, align 8, !tbaa !3
  store i16 -1, i16* %3, align 2, !tbaa !4
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %4 = load i32* %n_emit_state, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next202 to i32
  %cmp3 = icmp slt i32 %5, %4
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %.lcssa191 = phi i32 [ %2, %if.end ], [ %4, %for.body ]
  %conv11 = sext i32 %.lcssa191 to i64
  %call12 = tail call i8* @__ckd_calloc__(i64 %conv11, i64 2, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i32 193) #4
  %6 = bitcast i8* %call12 to i16*
  %tobool189 = icmp eq %struct.gnode_s* %g, null
  %.pre = load i32* %n_emit_state, align 4, !tbaa !0
  br i1 %tobool189, label %for.cond68.preheader, label %for.body14.lr.ph

for.body14.lr.ph:                                 ; preds = %for.end
  %cmp17187 = icmp sgt i32 %.pre, 0
  %sseq = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 9
  br label %for.body14

for.cond68.preheader:                             ; preds = %for.end, %for.inc66
  %cmp70184 = icmp sgt i32 %.pre, 0
  br i1 %cmp70184, label %for.cond73.preheader.lr.ph, label %for.end104

for.cond73.preheader.lr.ph:                       ; preds = %for.cond68.preheader
  %n_comstate = getelementptr inbounds %struct.dict2pid_t* %dict2pid, i64 0, i32 6
  br label %for.cond73.preheader

for.body14:                                       ; preds = %for.body14.lr.ph, %for.inc66
  %gn.0190 = phi %struct.gnode_s* [ %g, %for.body14.lr.ph ], [ %14, %for.inc66 ]
  br i1 %cmp17187, label %for.body19.lr.ph, label %for.inc66

for.body19.lr.ph:                                 ; preds = %for.body14
  %int32 = bitcast %struct.gnode_s* %gn.0190 to i32*
  %7 = load i32* %int32, align 4, !tbaa !0
  %idxprom21 = sext i32 %7 to i64
  %8 = load i16*** %sseq, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i16** %8, i64 %idxprom21
  %9 = load i16** %arrayidx22, align 8, !tbaa !3
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc63
  %indvars.iv198 = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next199, %for.inc63 ]
  %arrayidx23 = getelementptr inbounds i16* %9, i64 %indvars.iv198
  %10 = load i16* %arrayidx23, align 2, !tbaa !4
  %arrayidx28 = getelementptr inbounds i16** %1, i64 %indvars.iv198
  %11 = load i16** %arrayidx28, align 8, !tbaa !3
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25, %for.body19
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.cond25 ], [ 0, %for.body19 ]
  %j.0 = phi i32 [ %inc42, %for.cond25 ], [ 0, %for.body19 ]
  %arrayidx29 = getelementptr inbounds i16* %11, i64 %indvars.iv196
  %12 = load i16* %arrayidx29, align 2, !tbaa !4
  %cmp31 = icmp slt i16 %12, 0
  %cmp38 = icmp eq i16 %12, %10
  %or.cond = or i1 %cmp31, %cmp38
  %indvars.iv.next197 = add i64 %indvars.iv196, 1
  %inc42 = add nsw i32 %j.0, 1
  br i1 %or.cond, label %for.end43, label %for.cond25

for.end43:                                        ; preds = %for.cond25
  br i1 %cmp31, label %if.then51, label %for.inc63

if.then51:                                        ; preds = %for.end43
  store i16 %10, i16* %arrayidx29, align 2, !tbaa !4
  %idxprom58 = sext i32 %inc42 to i64
  %arrayidx61 = getelementptr inbounds i16* %11, i64 %idxprom58
  store i16 -1, i16* %arrayidx61, align 2, !tbaa !4
  br label %for.inc63

for.inc63:                                        ; preds = %for.end43, %if.then51
  %indvars.iv.next199 = add i64 %indvars.iv198, 1
  %13 = trunc i64 %indvars.iv.next199 to i32
  %cmp17 = icmp slt i32 %13, %.pre
  br i1 %cmp17, label %for.body19, label %for.inc66

for.inc66:                                        ; preds = %for.inc63, %for.body14
  %next = getelementptr inbounds %struct.gnode_s* %gn.0190, i64 0, i32 1
  %14 = load %struct.gnode_s** %next, align 8, !tbaa !3
  %tobool = icmp eq %struct.gnode_s* %14, null
  br i1 %tobool, label %for.cond68.preheader, label %for.body14

for.cond73.preheader:                             ; preds = %for.cond73.preheader.lr.ph, %if.end98
  %indvars.iv194 = phi i64 [ 0, %for.cond73.preheader.lr.ph ], [ %indvars.iv.next195, %if.end98 ]
  %arrayidx76 = getelementptr inbounds i16** %1, i64 %indvars.iv194
  %15 = load i16** %arrayidx76, align 8, !tbaa !3
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond73, %for.cond73.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond73 ], [ 0, %for.cond73.preheader ]
  %j.1 = phi i32 [ %inc83, %for.cond73 ], [ 0, %for.cond73.preheader ]
  %arrayidx77 = getelementptr inbounds i16* %15, i64 %indvars.iv
  %16 = load i16* %arrayidx77, align 2, !tbaa !4
  %cmp79 = icmp sgt i16 %16, -1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc83 = add nsw i32 %j.1, 1
  br i1 %cmp79, label %for.cond73, label %for.end84

for.end84:                                        ; preds = %for.cond73
  %17 = bitcast i16* %15 to i8*
  %mul = shl i32 %j.1, 1
  %18 = load i32* %n_comstate, align 4, !tbaa !0
  %call89 = tail call i32 @hash_enter_bkey(%struct.hash_table_t* %hs, i8* %17, i32 %mul, i32 %18) #4
  %19 = load i32* %n_comstate, align 4, !tbaa !0
  %cmp91 = icmp eq i32 %call89, %19
  br i1 %cmp91, label %if.then93, label %if.else

if.then93:                                        ; preds = %for.end84
  %inc95 = add nsw i32 %call89, 1
  store i32 %inc95, i32* %n_comstate, align 4, !tbaa !0
  br label %if.end98

if.else:                                          ; preds = %for.end84
  %20 = load i16** %arrayidx76, align 8, !tbaa !3
  %21 = bitcast i16* %20 to i8*
  tail call void @ckd_free(i8* %21) #4
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then93
  %conv99 = trunc i32 %call89 to i16
  %arrayidx101 = getelementptr inbounds i16* %6, i64 %indvars.iv194
  store i16 %conv99, i16* %arrayidx101, align 2, !tbaa !4
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %22 = load i32* %n_emit_state, align 4, !tbaa !0
  %23 = trunc i64 %indvars.iv.next195 to i32
  %cmp70 = icmp slt i32 %23, %22
  br i1 %cmp70, label %for.cond73.preheader, label %for.end104

for.end104:                                       ; preds = %if.end98, %for.cond68.preheader
  tail call void @ckd_free(i8* %call1) #4
  %24 = load i32* %n_emit_state, align 4, !tbaa !0
  %mul107 = shl i32 %24, 1
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t* %dict2pid, i64 0, i32 7
  %25 = load i32* %n_comsseq, align 4, !tbaa !0
  %call109 = tail call i32 @hash_enter_bkey(%struct.hash_table_t* %hp, i8* %call12, i32 %mul107, i32 %25) #4
  %26 = load i32* %n_comsseq, align 4, !tbaa !0
  %cmp111 = icmp eq i32 %call109, %26
  br i1 %cmp111, label %if.then113, label %if.else122

if.then113:                                       ; preds = %for.end104
  %inc115 = add nsw i32 %call109, 1
  store i32 %inc115, i32* %n_comsseq, align 4, !tbaa !0
  %cmp117 = icmp sgt i32 %call109, 32764
  br i1 %cmp117, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.then113
  tail call void @_E__pr_header(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 231, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %27 = load i32* %n_comsseq, align 4, !tbaa !0
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([57 x i8]* @.str21, i64 0, i64 0), i32 %27) #4
  br label %if.end123

if.else122:                                       ; preds = %for.end104
  tail call void @ckd_free(i8* %call12) #4
  br label %if.end123

if.end123:                                        ; preds = %if.then113, %if.then119, %if.else122
  ret i32 %call109
}

; Function Attrs: optsize
declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: optsize
declare i32 @mdef_phone_id_nearest(%struct.mdef_t*, i8 signext, i8 signext, i8 signext, i32) #1

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #1

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: optsize
declare %struct.gnode_s* @hash_tolist(%struct.hash_table_t*, i32*) #1

; Function Attrs: optsize
declare void @hash_free(%struct.hash_table_t*) #1

; Function Attrs: optsize
declare i32 @logs3(double) #1

; Function Attrs: nounwind optsize uwtable
define void @dict2pid_comsenscr(%struct.dict2pid_t* nocapture %d2p, i32* nocapture %senscr, i32* nocapture %comsenscr) #0 {
entry:
  %n_comstate = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 6
  %0 = load i32* %n_comstate, align 4, !tbaa !0
  %cmp41 = icmp sgt i32 %0, 0
  br i1 %cmp41, label %for.body.lr.ph, label %for.end24

for.body.lr.ph:                                   ; preds = %entry
  %comstate1 = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 3
  %1 = load i16*** %comstate1, align 8, !tbaa !3
  %comwt = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 5
  %2 = load i32** %comwt, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.end ]
  %arrayidx = getelementptr inbounds i16** %1, i64 %indvars.iv43
  %3 = load i16** %arrayidx, align 8, !tbaa !3
  %4 = load i16* %3, align 2, !tbaa !4
  %idxprom3 = sext i16 %4 to i64
  %arrayidx4 = getelementptr inbounds i32* %senscr, i64 %idxprom3
  %5 = load i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx737 = getelementptr inbounds i16* %3, i64 1
  %6 = load i16* %arrayidx737, align 2, !tbaa !4
  %cmp838 = icmp slt i16 %6, 0
  br i1 %cmp838, label %for.end, label %if.end

if.end:                                           ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %for.body ]
  %7 = phi i16 [ %9, %if.end ], [ %6, %for.body ]
  %best.039 = phi i32 [ %.best.0, %if.end ], [ %5, %for.body ]
  %idxprom10 = sext i16 %7 to i64
  %arrayidx11 = getelementptr inbounds i32* %senscr, i64 %idxprom10
  %8 = load i32* %arrayidx11, align 4, !tbaa !0
  %cmp12 = icmp slt i32 %best.039, %8
  %.best.0 = select i1 %cmp12, i32 %8, i32 %best.039
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds i16* %3, i64 %indvars.iv.next
  %9 = load i16* %arrayidx7, align 2, !tbaa !4
  %cmp8 = icmp slt i16 %9, 0
  br i1 %cmp8, label %for.end, label %if.end

for.end:                                          ; preds = %if.end, %for.body
  %best.0.lcssa = phi i32 [ %5, %for.body ], [ %.best.0, %if.end ]
  %arrayidx19 = getelementptr inbounds i32* %2, i64 %indvars.iv43
  %10 = load i32* %arrayidx19, align 4, !tbaa !0
  %add = add nsw i32 %10, %best.0.lcssa
  %arrayidx21 = getelementptr inbounds i32* %comsenscr, i64 %indvars.iv43
  store i32 %add, i32* %arrayidx21, align 4, !tbaa !0
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %11 = load i32* %n_comstate, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv.next44 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end24

for.end24:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @dict2pid_comsseq2sen_active(%struct.dict2pid_t* nocapture %d2p, %struct.mdef_t* nocapture %mdef, i32* nocapture %comssid, i32* nocapture %sen) #0 {
entry:
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 7
  %0 = load i32* %n_comsseq, align 4, !tbaa !0
  %cmp42 = icmp sgt i32 %0, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %comsseq = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 4
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 2
  %comstate = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc24
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %15, %for.inc24 ]
  %indvars.iv46 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next47, %for.inc24 ]
  %arrayidx = getelementptr inbounds i32* %comssid, i64 %indvars.iv46
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %for.inc24, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i16*** %comsseq, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i16** %3, i64 %indvars.iv46
  %4 = load i16** %arrayidx2, align 8, !tbaa !3
  %5 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp440 = icmp sgt i32 %5, 0
  br i1 %cmp440, label %for.body5.lr.ph, label %for.inc24

for.body5.lr.ph:                                  ; preds = %if.then
  %6 = load i16*** %comstate, align 8, !tbaa !3
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.inc21
  %7 = phi i32 [ %5, %for.body5.lr.ph ], [ %13, %for.inc21 ]
  %indvars.iv44 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next45, %for.inc21 ]
  %arrayidx7 = getelementptr inbounds i16* %4, i64 %indvars.iv44
  %8 = load i16* %arrayidx7, align 2, !tbaa !4
  %idxprom8 = sext i16 %8 to i64
  %arrayidx9 = getelementptr inbounds i16** %6, i64 %idxprom8
  %9 = load i16** %arrayidx9, align 8, !tbaa !3
  %10 = load i16* %9, align 2, !tbaa !4
  %cmp1438 = icmp sgt i16 %10, -1
  br i1 %cmp1438, label %for.body16, label %for.inc21

for.body16:                                       ; preds = %for.body5, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %for.body5 ]
  %11 = phi i16 [ %12, %for.body16 ], [ %10, %for.body5 ]
  %idxprom19 = sext i16 %11 to i64
  %arrayidx20 = getelementptr inbounds i32* %sen, i64 %idxprom19
  store i32 1, i32* %arrayidx20, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx12 = getelementptr inbounds i16* %9, i64 %indvars.iv.next
  %12 = load i16* %arrayidx12, align 2, !tbaa !4
  %cmp14 = icmp sgt i16 %12, -1
  br i1 %cmp14, label %for.body16, label %for.cond10.for.inc21_crit_edge

for.cond10.for.inc21_crit_edge:                   ; preds = %for.body16
  %.pre49 = load i32* %n_emit_state, align 4, !tbaa !0
  br label %for.inc21

for.inc21:                                        ; preds = %for.cond10.for.inc21_crit_edge, %for.body5
  %13 = phi i32 [ %.pre49, %for.cond10.for.inc21_crit_edge ], [ %7, %for.body5 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 1
  %14 = trunc i64 %indvars.iv.next45 to i32
  %cmp4 = icmp slt i32 %14, %13
  br i1 %cmp4, label %for.body5, label %for.cond3.for.inc24.loopexit_crit_edge

for.cond3.for.inc24.loopexit_crit_edge:           ; preds = %for.inc21
  %.pre.pre = load i32* %n_comsseq, align 4, !tbaa !0
  br label %for.inc24

for.inc24:                                        ; preds = %if.then, %for.cond3.for.inc24.loopexit_crit_edge, %for.body
  %15 = phi i32 [ %1, %for.body ], [ %.pre.pre, %for.cond3.for.inc24.loopexit_crit_edge ], [ %1, %if.then ]
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  %16 = trunc i64 %indvars.iv.next47 to i32
  %cmp = icmp slt i32 %16, %15
  br i1 %cmp, label %for.body, label %for.end26

for.end26:                                        ; preds = %for.inc24, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @dict2pid_dump(%struct._IO_FILE* %fp, %struct.dict2pid_t* nocapture %d2p, %struct.mdef_t* %mdef, %struct.dict_t* nocapture %dict) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %fp)
  %n_word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 7
  %1 = load i32* %n_word, align 4, !tbaa !0
  %cmp311 = icmp sgt i32 %1, 0
  br i1 %cmp311, label %for.body.lr.ph, label %for.end18

for.body.lr.ph:                                   ; preds = %entry
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %internal = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv335 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next336, %for.end ]
  %2 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %word1 = getelementptr inbounds %struct.dictword_t* %2, i64 %indvars.iv335, i32 0
  %3 = load i8** %word1, align 8, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* %3) #4
  %4 = load %struct.dictword_t** %word, align 8, !tbaa !3
  %pronlen6 = getelementptr inbounds %struct.dictword_t* %4, i64 %indvars.iv335, i32 2
  %5 = load i32* %pronlen6, align 4, !tbaa !0
  %cmp8309 = icmp sgt i32 %5, 0
  br i1 %cmp8309, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.body, %for.body9
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %for.body9 ], [ 0, %for.body ]
  %6 = load i32*** %internal, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32** %6, i64 %indvars.iv335
  %7 = load i32** %arrayidx12, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %indvars.iv333
  %8 = load i32* %arrayidx13, align 4, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i32 %8) #4
  %indvars.iv.next334 = add i64 %indvars.iv333, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next334 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end, label %for.body9

for.end:                                          ; preds = %for.body9, %for.body
  %fputc284 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next336 = add i64 %indvars.iv335, 1
  %9 = load i32* %n_word, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv.next336 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.end18

for.end18:                                        ; preds = %for.end, %entry
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %fp)
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 0
  %13 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp22307 = icmp sgt i32 %13, 0
  br i1 %cmp22307, label %for.cond24.preheader.lr.ph, label %for.end60

for.cond24.preheader.lr.ph:                       ; preds = %for.end18
  %ldiph_lc = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 1
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.cond24.preheader.lr.ph, %for.inc58
  %14 = phi i32 [ %13, %for.cond24.preheader.lr.ph ], [ %29, %for.inc58 ]
  %indvars.iv331 = phi i64 [ 0, %for.cond24.preheader.lr.ph ], [ %indvars.iv.next332, %for.inc58 ]
  %cmp26305 = icmp sgt i32 %14, 0
  br i1 %cmp26305, label %for.cond28.preheader.lr.ph, label %for.inc58

for.cond28.preheader.lr.ph:                       ; preds = %for.cond24.preheader
  %conv = trunc i64 %indvars.iv331 to i8
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond28.preheader.lr.ph, %for.inc55
  %15 = phi i32 [ %14, %for.cond28.preheader.lr.ph ], [ %27, %for.inc55 ]
  %indvars.iv329 = phi i64 [ 0, %for.cond28.preheader.lr.ph ], [ %indvars.iv.next330, %for.inc55 ]
  %cmp30303 = icmp sgt i32 %15, 0
  br i1 %cmp30303, label %for.body31.lr.ph, label %for.inc55

for.body31.lr.ph:                                 ; preds = %for.cond28.preheader
  %conv40 = trunc i64 %indvars.iv329 to i8
  br label %for.body31

for.body31:                                       ; preds = %for.inc52, %for.body31.lr.ph
  %16 = phi i32 [ %15, %for.body31.lr.ph ], [ %25, %for.inc52 ]
  %indvars.iv327 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next328, %for.inc52 ]
  %17 = load i32**** %ldiph_lc, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32*** %17, i64 %indvars.iv331
  %18 = load i32*** %arrayidx35, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32** %18, i64 %indvars.iv329
  %19 = load i32** %arrayidx36, align 8, !tbaa !3
  %arrayidx37 = getelementptr inbounds i32* %19, i64 %indvars.iv327
  %20 = load i32* %arrayidx37, align 4, !tbaa !0
  %cmp38 = icmp sgt i32 %20, -1
  br i1 %cmp38, label %if.then, label %for.inc52

if.then:                                          ; preds = %for.body31
  %call39 = tail call i8* @mdef_ciphone_str(%struct.mdef_t* %mdef, i8 signext %conv) #4
  %call41 = tail call i8* @mdef_ciphone_str(%struct.mdef_t* %mdef, i8 signext %conv40) #4
  %conv42 = trunc i64 %indvars.iv327 to i8
  %call43 = tail call i8* @mdef_ciphone_str(%struct.mdef_t* %mdef, i8 signext %conv42) #4
  %21 = load i32**** %ldiph_lc, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds i32*** %21, i64 %indvars.iv331
  %22 = load i32*** %arrayidx48, align 8, !tbaa !3
  %arrayidx49 = getelementptr inbounds i32** %22, i64 %indvars.iv329
  %23 = load i32** %arrayidx49, align 8, !tbaa !3
  %arrayidx50 = getelementptr inbounds i32* %23, i64 %indvars.iv327
  %24 = load i32* %arrayidx50, align 4, !tbaa !0
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str12, i64 0, i64 0), i8* %call39, i8* %call41, i8* %call43, i32 %24) #4
  %.pre337 = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.inc52

for.inc52:                                        ; preds = %for.body31, %if.then
  %25 = phi i32 [ %16, %for.body31 ], [ %.pre337, %if.then ]
  %indvars.iv.next328 = add i64 %indvars.iv327, 1
  %26 = trunc i64 %indvars.iv.next328 to i32
  %cmp30 = icmp slt i32 %26, %25
  br i1 %cmp30, label %for.body31, label %for.inc55

for.inc55:                                        ; preds = %for.inc52, %for.cond28.preheader
  %27 = phi i32 [ %15, %for.cond28.preheader ], [ %25, %for.inc52 ]
  %indvars.iv.next330 = add i64 %indvars.iv329, 1
  %28 = trunc i64 %indvars.iv.next330 to i32
  %cmp26 = icmp slt i32 %28, %27
  br i1 %cmp26, label %for.cond28.preheader, label %for.inc58

for.inc58:                                        ; preds = %for.inc55, %for.cond24.preheader
  %29 = phi i32 [ %14, %for.cond24.preheader ], [ %27, %for.inc55 ]
  %indvars.iv.next332 = add i64 %indvars.iv331, 1
  %30 = trunc i64 %indvars.iv.next332 to i32
  %cmp22 = icmp slt i32 %30, %29
  br i1 %cmp22, label %for.cond24.preheader, label %for.end60

for.end60:                                        ; preds = %for.inc58, %for.end18
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %fp)
  %33 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp65301 = icmp sgt i32 %33, 0
  br i1 %cmp65301, label %for.cond68.preheader.lr.ph, label %for.end96

for.cond68.preheader.lr.ph:                       ; preds = %for.end60
  %single_lc = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 2
  br label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.cond68.preheader.lr.ph, %for.inc94
  %34 = phi i32 [ %33, %for.cond68.preheader.lr.ph ], [ %44, %for.inc94 ]
  %indvars.iv325 = phi i64 [ 0, %for.cond68.preheader.lr.ph ], [ %indvars.iv.next326, %for.inc94 ]
  %cmp70299 = icmp sgt i32 %34, 0
  br i1 %cmp70299, label %for.body72.lr.ph, label %for.inc94

for.body72.lr.ph:                                 ; preds = %for.cond68.preheader
  %conv80 = trunc i64 %indvars.iv325 to i8
  br label %for.body72

for.body72:                                       ; preds = %for.inc91, %for.body72.lr.ph
  %35 = phi i32 [ %34, %for.body72.lr.ph ], [ %42, %for.inc91 ]
  %indvars.iv323 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next324, %for.inc91 ]
  %36 = load i32*** %single_lc, align 8, !tbaa !3
  %arrayidx75 = getelementptr inbounds i32** %36, i64 %indvars.iv325
  %37 = load i32** %arrayidx75, align 8, !tbaa !3
  %arrayidx76 = getelementptr inbounds i32* %37, i64 %indvars.iv323
  %38 = load i32* %arrayidx76, align 4, !tbaa !0
  %cmp77 = icmp sgt i32 %38, -1
  br i1 %cmp77, label %if.then79, label %for.inc91

if.then79:                                        ; preds = %for.body72
  %call81 = tail call i8* @mdef_ciphone_str(%struct.mdef_t* %mdef, i8 signext %conv80) #4
  %conv82 = trunc i64 %indvars.iv323 to i8
  %call83 = tail call i8* @mdef_ciphone_str(%struct.mdef_t* %mdef, i8 signext %conv82) #4
  %39 = load i32*** %single_lc, align 8, !tbaa !3
  %arrayidx87 = getelementptr inbounds i32** %39, i64 %indvars.iv325
  %40 = load i32** %arrayidx87, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds i32* %40, i64 %indvars.iv323
  %41 = load i32* %arrayidx88, align 4, !tbaa !0
  %call89 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* %call81, i8* %call83, i32 %41) #4
  %.pre = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.inc91

for.inc91:                                        ; preds = %for.body72, %if.then79
  %42 = phi i32 [ %35, %for.body72 ], [ %.pre, %if.then79 ]
  %indvars.iv.next324 = add i64 %indvars.iv323, 1
  %43 = trunc i64 %indvars.iv.next324 to i32
  %cmp70 = icmp slt i32 %43, %42
  br i1 %cmp70, label %for.body72, label %for.inc94

for.inc94:                                        ; preds = %for.inc91, %for.cond68.preheader
  %44 = phi i32 [ %34, %for.cond68.preheader ], [ %42, %for.inc91 ]
  %indvars.iv.next326 = add i64 %indvars.iv325, 1
  %45 = trunc i64 %indvars.iv.next326 to i32
  %cmp65 = icmp slt i32 %45, %44
  br i1 %cmp65, label %for.cond68.preheader, label %for.end96

for.end96:                                        ; preds = %for.inc94, %for.end60
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %n_sseq = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 10
  %47 = load i32* %n_sseq, align 4, !tbaa !0
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), i32 %47) #4
  %48 = load i32* %n_sseq, align 4, !tbaa !0
  %cmp101297 = icmp sgt i32 %48, 0
  br i1 %cmp101297, label %for.body103.lr.ph, label %for.end121

for.body103.lr.ph:                                ; preds = %for.end96
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 2
  %sseq = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 9
  br label %for.body103

for.body103:                                      ; preds = %for.body103.lr.ph, %for.end117
  %indvars.iv321 = phi i64 [ 0, %for.body103.lr.ph ], [ %indvars.iv.next322, %for.end117 ]
  %49 = trunc i64 %indvars.iv321 to i32
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i32 %49) #4
  %50 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp106295 = icmp sgt i32 %50, 0
  br i1 %cmp106295, label %for.body108, label %for.end117

for.body108:                                      ; preds = %for.body103, %for.body108
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %for.body108 ], [ 0, %for.body103 ]
  %51 = load i16*** %sseq, align 8, !tbaa !3
  %arrayidx111 = getelementptr inbounds i16** %51, i64 %indvars.iv321
  %52 = load i16** %arrayidx111, align 8, !tbaa !3
  %arrayidx112 = getelementptr inbounds i16* %52, i64 %indvars.iv319
  %53 = load i16* %arrayidx112, align 2, !tbaa !4
  %conv113 = sext i16 %53 to i32
  %call114 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i32 %conv113) #4
  %indvars.iv.next320 = add i64 %indvars.iv319, 1
  %54 = load i32* %n_emit_state, align 4, !tbaa !0
  %55 = trunc i64 %indvars.iv.next320 to i32
  %cmp106 = icmp slt i32 %55, %54
  br i1 %cmp106, label %for.body108, label %for.end117

for.end117:                                       ; preds = %for.body108, %for.body103
  %fputc281 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next322 = add i64 %indvars.iv321, 1
  %56 = load i32* %n_sseq, align 4, !tbaa !0
  %57 = trunc i64 %indvars.iv.next322 to i32
  %cmp101 = icmp slt i32 %57, %56
  br i1 %cmp101, label %for.body103, label %for.end121

for.end121:                                       ; preds = %for.end117, %for.end96
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 7
  %59 = load i32* %n_comsseq, align 4, !tbaa !0
  %call123 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([38 x i8]* @.str17, i64 0, i64 0), i32 %59) #4
  %60 = load i32* %n_comsseq, align 4, !tbaa !0
  %cmp126293 = icmp sgt i32 %60, 0
  br i1 %cmp126293, label %for.body128.lr.ph, label %for.end147

for.body128.lr.ph:                                ; preds = %for.end121
  %n_emit_state131 = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 2
  %comsseq = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 4
  br label %for.body128

for.body128:                                      ; preds = %for.body128.lr.ph, %for.end143
  %indvars.iv317 = phi i64 [ 0, %for.body128.lr.ph ], [ %indvars.iv.next318, %for.end143 ]
  %61 = trunc i64 %indvars.iv317 to i32
  %call129 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i32 %61) #4
  %62 = load i32* %n_emit_state131, align 4, !tbaa !0
  %cmp132291 = icmp sgt i32 %62, 0
  br i1 %cmp132291, label %for.body134, label %for.end143

for.body134:                                      ; preds = %for.body128, %for.body134
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %for.body134 ], [ 0, %for.body128 ]
  %63 = load i16*** %comsseq, align 8, !tbaa !3
  %arrayidx137 = getelementptr inbounds i16** %63, i64 %indvars.iv317
  %64 = load i16** %arrayidx137, align 8, !tbaa !3
  %arrayidx138 = getelementptr inbounds i16* %64, i64 %indvars.iv315
  %65 = load i16* %arrayidx138, align 2, !tbaa !4
  %conv139 = sext i16 %65 to i32
  %call140 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i32 %conv139) #4
  %indvars.iv.next316 = add i64 %indvars.iv315, 1
  %66 = load i32* %n_emit_state131, align 4, !tbaa !0
  %67 = trunc i64 %indvars.iv.next316 to i32
  %cmp132 = icmp slt i32 %67, %66
  br i1 %cmp132, label %for.body134, label %for.end143

for.end143:                                       ; preds = %for.body134, %for.body128
  %fputc278 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next318 = add i64 %indvars.iv317, 1
  %68 = load i32* %n_comsseq, align 4, !tbaa !0
  %69 = trunc i64 %indvars.iv.next318 to i32
  %cmp126 = icmp slt i32 %69, %68
  br i1 %cmp126, label %for.body128, label %for.end147

for.end147:                                       ; preds = %for.end143, %for.end121
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %n_comstate = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 6
  %71 = load i32* %n_comstate, align 4, !tbaa !0
  %call149 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str18, i64 0, i64 0), i32 %71) #4
  %72 = load i32* %n_comstate, align 4, !tbaa !0
  %cmp152289 = icmp sgt i32 %72, 0
  br i1 %cmp152289, label %for.body154.lr.ph, label %for.end178

for.body154.lr.ph:                                ; preds = %for.end147
  %comstate = getelementptr inbounds %struct.dict2pid_t* %d2p, i64 0, i32 3
  br label %for.body154

for.body154:                                      ; preds = %for.body154.lr.ph, %for.end174
  %indvars.iv313 = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next314, %for.end174 ]
  %73 = trunc i64 %indvars.iv313 to i32
  %call155 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i32 %73) #4
  %74 = load i16*** %comstate, align 8, !tbaa !3
  %arrayidx159285 = getelementptr inbounds i16** %74, i64 %indvars.iv313
  %75 = load i16** %arrayidx159285, align 8, !tbaa !3
  %76 = load i16* %75, align 2, !tbaa !4
  %cmp162287 = icmp sgt i16 %76, -1
  br i1 %cmp162287, label %for.body164, label %for.end174

for.body164:                                      ; preds = %for.body154, %for.body164
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body164 ], [ 0, %for.body154 ]
  %77 = phi i16 [ %80, %for.body164 ], [ %76, %for.body154 ]
  %conv161 = sext i16 %77 to i32
  %call171 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i32 %conv161) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %78 = load i16*** %comstate, align 8, !tbaa !3
  %arrayidx159 = getelementptr inbounds i16** %78, i64 %indvars.iv313
  %79 = load i16** %arrayidx159, align 8, !tbaa !3
  %arrayidx160 = getelementptr inbounds i16* %79, i64 %indvars.iv.next
  %80 = load i16* %arrayidx160, align 2, !tbaa !4
  %cmp162 = icmp sgt i16 %80, -1
  br i1 %cmp162, label %for.body164, label %for.end174

for.end174:                                       ; preds = %for.body164, %for.body154
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next314 = add i64 %indvars.iv313, 1
  %81 = load i32* %n_comstate, align 4, !tbaa !0
  %82 = trunc i64 %indvars.iv.next314 to i32
  %cmp152 = icmp slt i32 %82, %81
  br i1 %cmp152, label %for.body154, label %for.end178

for.end178:                                       ; preds = %for.end174, %for.end147
  %83 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %84 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp)
  %call181 = tail call i32 @fflush(%struct._IO_FILE* %fp) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @mdef_ciphone_str(%struct.mdef_t*, i8 signext) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @mdef_phone_id(%struct.mdef_t*, i8 signext, i8 signext, i8 signext, i32) #1

; Function Attrs: optsize
declare i32 @glist_chkdup_int32(%struct.gnode_s*, i32) #1

; Function Attrs: optsize
declare %struct.gnode_s* @glist_add_int32(%struct.gnode_s*, i32) #1

; Function Attrs: optsize
declare i32 @glist_count(%struct.gnode_s*) #1

; Function Attrs: optsize
declare i32 @hash_enter_bkey(%struct.hash_table_t*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
