; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/kbcore.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

@.str = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/kbcore.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"Initializing core models:\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"Please specified the feature type\0A\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"feat_init(%s) failed\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c".cont.\00", align 1
@.str7 = private unnamed_addr constant [60 x i8] c"#Feature streams(%d) in the feature for continuous HMM!= 1\0A\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c".semi.\00", align 1
@.str9 = private unnamed_addr constant [65 x i8] c"#Feature streams(%d) in the feature for semi-continuous HMM!= 4\0A\00", align 1
@.str10 = private unnamed_addr constant [42 x i8] c"Feature should be either .semi. or .cont.\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"mdef_init(%s) failed\0A\00", align 1
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str13 = private unnamed_addr constant [70 x i8] c"Compound word separator(%s) must be empty or single character string\0A\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"dict_init(%s,%s,%s) failed\0A\00", align 1
@.str15 = private unnamed_addr constant [50 x i8] c"Please only specify either -lmfile or -lmctlfile\0A\00", align 1
@.str16 = private unnamed_addr constant [52 x i8] c"Please specify either one of -lmfile or -lmctlfile\0A\00", align 1
@.str17 = private unnamed_addr constant [32 x i8] c"lm_read(%s, %e, %e, %e) failed\0A\00", align 1
@.str18 = private unnamed_addr constant [21 x i8] c"Reading LM ctl file\0A\00", align 1
@.str19 = private unnamed_addr constant [22 x i8] c"kb->lmset[0].name %s\0A\00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"lm_read_ctl(%s,%e,%e,%e) failed\0A:\00", align 1
@.str21 = private unnamed_addr constant [55 x i8] c"No dictionary for associating filler penalty file(%s)\0A\00", align 1
@.str22 = private unnamed_addr constant [25 x i8] c"fillpen_init(%s) failed\0A\00", align 1
@.str23 = private unnamed_addr constant [32 x i8] c"Dict/LM word-id mapping failed\0A\00", align 1
@.str24 = private unnamed_addr constant [58 x i8] c"Dict/LM word-id mapping failed for LM index %d, named %s\0A\00", align 1
@.str25 = private unnamed_addr constant [59 x i8] c"Varfile or mixwfile not specified along with meanfile(%s)\0A\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"gauden_init(%s, %s, %e) failed\0A\00", align 1
@.str27 = private unnamed_addr constant [32 x i8] c"subvq_init (%s, %e, -1) failed\0A\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"gs_read(%s) failed\0A\00", align 1
@.str29 = private unnamed_addr constant [41 x i8] c"After reading the number of senones: %d\0A\00", align 1
@.str30 = private unnamed_addr constant [27 x i8] c"tmat_init (%s, %e) failed\0A\00", align 1
@.str31 = private unnamed_addr constant [31 x i8] c"Verifying models consistency:\0A\00", align 1
@.str32 = private unnamed_addr constant [45 x i8] c"Feature streamlen(%d) != mgau streamlen(%d)\0A\00", align 1
@.str33 = private unnamed_addr constant [40 x i8] c"Mdef #senones(%d) != mgau #senones(%d)\0A\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c"Mdef #tmat(%d) != tmatfile(%d)\0A\00", align 1
@.str35 = private unnamed_addr constant [38 x i8] c"Mdef #states(%d) != tmat #states(%d)\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.kbcore_t* @kbcore_init(double %logbase, i8* %feattype, i8* %cmn, i8* %varnorm, i8* %agc, i8* %mdeffile, i8* %dictfile, i8* %fdictfile, i8* %compsep, i8* %lmfile, i8* %lmctlfile, i8* %lmdumpdir, i8* %fillpenfile, i8* %senmgau, double %silprob, double %fillprob, double %langwt, double %inspen, double %uw, i8* %meanfile, i8* %varfile, double %varfloor, i8* %mixwfile, double %mixwfloor, i8* %subvqfile, i8* %gsfile, i8* %tmatfile, double %tmatfloor) #0 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 95, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0)) #4
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 104, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 97) #4
  %0 = bitcast i8* %call to %struct.kbcore_t*
  %fcb = bitcast i8* %call to %struct.feat_s**
  %mdef = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %mdef to %struct.mdef_t**
  %dict = getelementptr inbounds i8* %call, i64 16
  %2 = bitcast i8* %dict to %struct.dict_t**
  %dict2pid = getelementptr inbounds i8* %call, i64 24
  %3 = bitcast i8* %dict2pid to %struct.dict2pid_t**
  %lm = getelementptr inbounds i8* %call, i64 32
  %4 = bitcast i8* %lm to %struct.lm_s**
  %fillpen = getelementptr inbounds i8* %call, i64 48
  %5 = bitcast i8* %fillpen to %struct.fillpen_t**
  %dict2lmwid = getelementptr inbounds i8* %call, i64 56
  %6 = bitcast i8* %dict2lmwid to i16**
  %mgau = getelementptr inbounds i8* %call, i64 64
  %7 = bitcast i8* %mgau to %struct.mgau_model_t**
  %svq = getelementptr inbounds i8* %call, i64 72
  %8 = bitcast i8* %svq to %struct.subvq_t**
  %tmat = getelementptr inbounds i8* %call, i64 88
  %9 = bitcast i8* %tmat to %struct.tmat_t**
  %n_lm = getelementptr inbounds i8* %call, i64 96
  %10 = bitcast i8* %n_lm to i32*
  %n_alloclm = getelementptr inbounds i8* %call, i64 100
  %11 = bitcast i8* %n_alloclm to i32*
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 40, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %fillpen, i8 0, i64 32, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %tmat, i8 0, i64 16, i32 8, i1 false)
  %call1 = tail call i32 @logs3_init(double %logbase) #4
  %tobool = icmp eq i8* %feattype, null
  br i1 %tobool, label %if.then, label %if.then3

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 115, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0)) #4
  br label %if.end30

if.then3:                                         ; preds = %entry
  %call4 = tail call %struct.feat_s* @feat_init(i8* %feattype, i8* %cmn, i8* %varnorm, i8* %agc) #4
  store %struct.feat_s* %call4, %struct.feat_s** %fcb, align 8, !tbaa !0
  %cmp = icmp eq %struct.feat_s* %call4, null
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 119, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i8* %feattype) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  %call8 = tail call i32 @strcmp(i8* %senmgau, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %12 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %n_stream = getelementptr inbounds %struct.feat_s* %12, i64 0, i32 3
  %13 = load i32* %n_stream, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.end30, label %if.then13

if.then13:                                        ; preds = %if.then10
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 123, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %14 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %n_stream15 = getelementptr inbounds %struct.feat_s* %14, i64 0, i32 3
  %15 = load i32* %n_stream15, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([60 x i8]* @.str7, i64 0, i64 0), i32 %15) #4
  br label %if.end30

if.else:                                          ; preds = %if.end7
  %call17 = tail call i32 @strcmp(i8* %senmgau, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else27

if.then19:                                        ; preds = %if.else
  %16 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %n_stream21 = getelementptr inbounds %struct.feat_s* %16, i64 0, i32 3
  %17 = load i32* %n_stream21, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %17, 4
  br i1 %cmp22, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.then19
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 126, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %18 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %n_stream25 = getelementptr inbounds %struct.feat_s* %18, i64 0, i32 3
  %19 = load i32* %n_stream25, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([65 x i8]* @.str9, i64 0, i64 0), i32 %19) #4
  br label %if.end30

if.else27:                                        ; preds = %if.else
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 128, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([42 x i8]* @.str10, i64 0, i64 0)) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then, %if.then10, %if.then19, %if.then13, %if.then23, %if.else27
  %tobool31 = icmp eq i8* %mdeffile, null
  br i1 %tobool31, label %if.end38, label %if.then32

if.then32:                                        ; preds = %if.end30
  %call33 = tail call %struct.mdef_t* @mdef_init(i8* %mdeffile) #4
  store %struct.mdef_t* %call33, %struct.mdef_t** %1, align 8, !tbaa !0
  %cmp35 = icmp eq %struct.mdef_t* %call33, null
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then32
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 134, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i8* %mdeffile) #4
  br label %if.end38

if.end38:                                         ; preds = %if.end30, %if.then32, %if.then36
  %tobool39 = icmp eq i8* %dictfile, null
  br i1 %tobool39, label %if.end62, label %if.then40

if.then40:                                        ; preds = %if.end38
  %tobool41 = icmp eq i8* %compsep, null
  br i1 %tobool41, label %if.end52, label %if.else43

if.else43:                                        ; preds = %if.then40
  %20 = load i8* %compsep, align 1, !tbaa !1
  %cmp44 = icmp eq i8 %20, 0
  br i1 %cmp44, label %if.end52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else43
  %arrayidx46 = getelementptr inbounds i8* %compsep, i64 1
  %21 = load i8* %arrayidx46, align 1, !tbaa !1
  %cmp48 = icmp eq i8 %21, 0
  br i1 %cmp48, label %if.end52, label %if.then50

if.then50:                                        ; preds = %land.lhs.true
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 141, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([70 x i8]* @.str13, i64 0, i64 0), i8* %compsep) #4
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true, %if.else43, %if.then40, %if.then50
  %compsep.addr.0 = phi i8* [ %compsep, %if.then50 ], [ getelementptr inbounds ([1 x i8]* @.str12, i64 0, i64 0), %if.then40 ], [ %compsep, %if.else43 ], [ %compsep, %land.lhs.true ]
  %22 = load %struct.mdef_t** %1, align 8, !tbaa !0
  %23 = load i8* %compsep.addr.0, align 1, !tbaa !1
  %call55 = tail call %struct.dict_t* @dict_init(%struct.mdef_t* %22, i8* %dictfile, i8* %fdictfile, i8 signext %23) #4
  store %struct.dict_t* %call55, %struct.dict_t** %2, align 8, !tbaa !0
  %cmp57 = icmp eq %struct.dict_t* %call55, null
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end52
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 145, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %tobool60 = icmp ne i8* %fdictfile, null
  %cond = select i1 %tobool60, i8* %fdictfile, i8* getelementptr inbounds ([1 x i8]* @.str12, i64 0, i64 0)
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i8* %dictfile, i8* %cond, i8* %compsep.addr.0) #4
  br label %if.end62

if.end62:                                         ; preds = %if.end38, %if.end52, %if.then59
  %tobool63 = icmp ne i8* %lmfile, null
  %tobool63.not = xor i1 %tobool63, true
  %tobool65 = icmp eq i8* %lmctlfile, null
  %or.cond = or i1 %tobool65, %tobool63.not
  br i1 %or.cond, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end62
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 151, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([50 x i8]* @.str15, i64 0, i64 0)) #4
  br label %if.end67

if.end67:                                         ; preds = %if.end62, %if.then66
  %or.cond427 = and i1 %tobool65, %tobool63.not
  br i1 %or.cond427, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 154, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([52 x i8]* @.str16, i64 0, i64 0)) #4
  br label %if.end72

if.end72:                                         ; preds = %if.end67, %if.then71
  br i1 %tobool63, label %if.then74, label %if.end81

if.then74:                                        ; preds = %if.end72
  %call75 = tail call %struct.lm_s* @lm_read(i8* %lmfile, double %langwt, double %inspen, double %uw) #4
  store %struct.lm_s* %call75, %struct.lm_s** %4, align 8, !tbaa !0
  %cmp77 = icmp eq %struct.lm_s* %call75, null
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.then74
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 158, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i8* %lmfile, double %langwt, double %inspen, double %uw) #4
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.then79, %if.end72
  %tobool82 = icmp ne i8* %lmctlfile, null
  br i1 %tobool82, label %if.then83, label %if.end96

if.then83:                                        ; preds = %if.end81
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 162, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0)) #4
  %24 = load %struct.dict_t** %2, align 8, !tbaa !0
  %n_word = getelementptr inbounds %struct.dict_t* %24, i64 0, i32 7
  %25 = load i32* %n_word, align 4, !tbaa !3
  %call88 = tail call %struct.lmset_s* @lm_read_ctl(i8* %lmctlfile, %struct.dict_t* %24, double %langwt, double %uw, double %inspen, i8* %lmdumpdir, i32* %10, i32* %11, i32 %25) #4
  %lmset = getelementptr inbounds i8* %call, i64 40
  %26 = bitcast i8* %lmset to %struct.lmset_s**
  store %struct.lmset_s* %call88, %struct.lmset_s** %26, align 8, !tbaa !0
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 165, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  %27 = load %struct.lmset_s** %26, align 8, !tbaa !0
  %name = getelementptr inbounds %struct.lmset_s* %27, i64 0, i32 0
  %28 = load i8** %name, align 8, !tbaa !0
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([22 x i8]* @.str19, i64 0, i64 0), i8* %28) #4
  %29 = load %struct.lmset_s** %26, align 8, !tbaa !0
  %cmp92 = icmp eq %struct.lmset_s* %29, null
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.then83
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 167, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i8* %lmctlfile, double %langwt, double %inspen, double %uw) #4
  br label %if.end96

if.end96:                                         ; preds = %if.then83, %if.then94, %if.end81
  %tobool97 = icmp eq i8* %fillpenfile, null
  br i1 %tobool97, label %lor.lhs.false, label %if.then107

lor.lhs.false:                                    ; preds = %if.end96
  br i1 %tobool63, label %land.lhs.true99, label %lor.lhs.false102

land.lhs.true99:                                  ; preds = %lor.lhs.false
  %30 = load %struct.dict_t** %2, align 8, !tbaa !0
  %tobool101 = icmp eq %struct.dict_t* %30, null
  br i1 %tobool101, label %lor.lhs.false102, label %if.end111

lor.lhs.false102:                                 ; preds = %land.lhs.true99, %lor.lhs.false
  br i1 %tobool82, label %land.lhs.true104, label %if.end119

land.lhs.true104:                                 ; preds = %lor.lhs.false102
  %31 = load %struct.dict_t** %2, align 8, !tbaa !0
  %tobool106 = icmp eq %struct.dict_t* %31, null
  br i1 %tobool106, label %if.end164, label %if.end111

if.then107:                                       ; preds = %if.end96
  %.pr = load %struct.dict_t** %2, align 8, !tbaa !0
  %tobool109 = icmp eq %struct.dict_t* %.pr, null
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then107
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 173, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([55 x i8]* @.str21, i64 0, i64 0), i8* %fillpenfile) #4
  %.pre441 = load %struct.dict_t** %2, align 8, !tbaa !0
  br label %if.end111

if.end111:                                        ; preds = %land.lhs.true104, %land.lhs.true99, %if.then107, %if.then110
  %32 = phi %struct.dict_t* [ %31, %land.lhs.true104 ], [ %30, %land.lhs.true99 ], [ %.pr, %if.then107 ], [ %.pre441, %if.then110 ]
  %call113 = tail call %struct.fillpen_t* @fillpen_init(%struct.dict_t* %32, i8* %fillpenfile, double %silprob, double %fillprob, double %langwt, double %inspen) #4
  store %struct.fillpen_t* %call113, %struct.fillpen_t** %5, align 8, !tbaa !0
  %cmp115 = icmp eq %struct.fillpen_t* %call113, null
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end111
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 177, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([25 x i8]* @.str22, i64 0, i64 0), i8* %fillpenfile) #4
  br label %if.end119

if.end119:                                        ; preds = %if.end111, %lor.lhs.false102, %if.then117
  %.pr430 = load %struct.dict_t** %2, align 8, !tbaa !0
  %tobool121 = icmp eq %struct.dict_t* %.pr430, null
  br i1 %tobool121, label %if.end164, label %land.lhs.true122

land.lhs.true122:                                 ; preds = %if.end119
  %33 = load %struct.lm_s** %4, align 8, !tbaa !0
  %tobool124 = icmp eq %struct.lm_s* %33, null
  br i1 %tobool124, label %if.end135, label %if.then125

if.then125:                                       ; preds = %land.lhs.true122
  %conv128 = fptosi double %langwt to i32
  %call129 = tail call i16* @wid_dict_lm_map(%struct.dict_t* %.pr430, %struct.lm_s* %33, i32 %conv128) #4
  store i16* %call129, i16** %6, align 8, !tbaa !0
  %cmp131 = icmp eq i16* %call129, null
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.then125
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 184, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str23, i64 0, i64 0)) #4
  br label %if.end135

if.end135:                                        ; preds = %if.then125, %land.lhs.true122, %if.then133
  %.pr432.pr = load %struct.dict_t** %2, align 8, !tbaa !0
  %tobool137 = icmp eq %struct.dict_t* %.pr432.pr, null
  br i1 %tobool137, label %if.end164, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %if.end135
  %lmset139 = getelementptr inbounds i8* %call, i64 40
  %34 = bitcast i8* %lmset139 to %struct.lmset_s**
  %35 = load %struct.lmset_s** %34, align 8, !tbaa !0
  %tobool140 = icmp eq %struct.lmset_s* %35, null
  br i1 %tobool140, label %if.end164, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true138
  %36 = load i32* %10, align 4, !tbaa !3
  %cmp143437 = icmp sgt i32 %36, 0
  br i1 %cmp143437, label %for.body.lr.ph, label %if.end164

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv149 = fptosi double %langwt to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %37 = phi %struct.lmset_s* [ %35, %for.body.lr.ph ], [ %.pre443, %for.inc.for.body_crit_edge ]
  %38 = phi %struct.dict_t* [ %.pr432.pr, %for.body.lr.ph ], [ %.pre442, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %lm148 = getelementptr inbounds %struct.lmset_s* %37, i64 %indvars.iv, i32 1
  %39 = load %struct.lm_s** %lm148, align 8, !tbaa !0
  %call150 = tail call i16* @wid_dict_lm_map(%struct.dict_t* %38, %struct.lm_s* %39, i32 %conv149) #4
  %40 = load %struct.lmset_s** %34, align 8, !tbaa !0
  %lm154 = getelementptr inbounds %struct.lmset_s* %40, i64 %indvars.iv, i32 1
  %41 = load %struct.lm_s** %lm154, align 8, !tbaa !0
  %dict2lmwid155 = getelementptr inbounds %struct.lm_s* %41, i64 0, i32 38
  store i16* %call150, i16** %dict2lmwid155, align 8, !tbaa !0
  %cmp156 = icmp eq i16* %call150, null
  br i1 %cmp156, label %if.then158, label %for.inc

if.then158:                                       ; preds = %for.body
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 189, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %42 = load %struct.lmset_s** %34, align 8, !tbaa !0
  %name162 = getelementptr inbounds %struct.lmset_s* %42, i64 %indvars.iv, i32 0
  %43 = load i8** %name162, align 8, !tbaa !0
  %44 = trunc i64 %indvars.iv to i32
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([58 x i8]* @.str24, i64 0, i64 0), i32 %44, i8* %43) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then158
  %indvars.iv.next = add i64 %indvars.iv, 1
  %45 = load i32* %10, align 4, !tbaa !3
  %46 = trunc i64 %indvars.iv.next to i32
  %cmp143 = icmp slt i32 %46, %45
  br i1 %cmp143, label %for.inc.for.body_crit_edge, label %if.end164

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre442 = load %struct.dict_t** %2, align 8, !tbaa !0
  %.pre443 = load %struct.lmset_s** %34, align 8, !tbaa !0
  br label %for.body

if.end164:                                        ; preds = %for.cond.preheader, %for.inc, %land.lhs.true104, %if.end119, %land.lhs.true138, %if.end135
  %tobool165 = icmp eq i8* %meanfile, null
  br i1 %tobool165, label %if.end198, label %if.then166

if.then166:                                       ; preds = %if.end164
  %tobool167 = icmp eq i8* %varfile, null
  %tobool169 = icmp eq i8* %mixwfile, null
  %or.cond428 = or i1 %tobool167, %tobool169
  br i1 %or.cond428, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.then166
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 194, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([59 x i8]* @.str25, i64 0, i64 0), i8* %meanfile) #4
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.then170
  %call172 = tail call %struct.mgau_model_t* @mgau_init(i8* %meanfile, i8* %varfile, double %varfloor, i8* %mixwfile, double %mixwfloor, i32 1, i8* %senmgau) #4
  store %struct.mgau_model_t* %call172, %struct.mgau_model_t** %7, align 8, !tbaa !0
  %cmp175 = icmp eq %struct.mgau_model_t* %call172, null
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.end171
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 197, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i8* %meanfile, i8* %varfile, double %varfloor) #4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.end171
  %tobool179 = icmp eq i8* %subvqfile, null
  br i1 %tobool179, label %if.end188, label %if.then180

if.then180:                                       ; preds = %if.end178
  %47 = load %struct.mgau_model_t** %7, align 8, !tbaa !0
  %call182 = tail call %struct.subvq_t* @subvq_init(i8* %subvqfile, double %varfloor, i32 -1, %struct.mgau_model_t* %47) #4
  store %struct.subvq_t* %call182, %struct.subvq_t** %8, align 8, !tbaa !0
  %cmp184 = icmp eq %struct.subvq_t* %call182, null
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.then180
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 201, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i8* %subvqfile, double %varfloor) #4
  br label %if.end188

if.end188:                                        ; preds = %if.end178, %if.then180, %if.then186
  %tobool189 = icmp eq i8* %gsfile, null
  br i1 %tobool189, label %if.end198, label %if.then190

if.then190:                                       ; preds = %if.end188
  %call191 = tail call %struct.gs_s* @gs_read(i8* %gsfile) #4
  %gs = getelementptr inbounds i8* %call, i64 80
  %48 = bitcast i8* %gs to %struct.gs_s**
  store %struct.gs_s* %call191, %struct.gs_s** %48, align 8, !tbaa !0
  %cmp192 = icmp eq %struct.gs_s* %call191, null
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.then190
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 207, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* %gsfile) #4
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.then190
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 209, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  %49 = load %struct.gs_s** %48, align 8, !tbaa !0
  %n_mgau = getelementptr inbounds %struct.gs_s* %49, i64 0, i32 0
  %50 = load i32* %n_mgau, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([41 x i8]* @.str29, i64 0, i64 0), i32 %50) #4
  br label %if.end198

if.end198:                                        ; preds = %if.end188, %if.end164, %if.end195
  %tobool199 = icmp eq i8* %tmatfile, null
  br i1 %tobool199, label %if.end207, label %if.then200

if.then200:                                       ; preds = %if.end198
  %call201 = tail call %struct.tmat_t* @tmat_init(i8* %tmatfile, double %tmatfloor) #4
  store %struct.tmat_t* %call201, %struct.tmat_t** %9, align 8, !tbaa !0
  %cmp203 = icmp eq %struct.tmat_t* %call201, null
  br i1 %cmp203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.then200
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 216, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str30, i64 0, i64 0), i8* %tmatfile, double %tmatfloor) #4
  br label %if.end207

if.end207:                                        ; preds = %if.then200, %if.end198, %if.then205
  %51 = load %struct.mdef_t** %1, align 8, !tbaa !0
  %tobool209 = icmp eq %struct.mdef_t* %51, null
  br i1 %tobool209, label %if.end218, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %if.end207
  %52 = load %struct.dict_t** %2, align 8, !tbaa !0
  %tobool212 = icmp eq %struct.dict_t* %52, null
  br i1 %tobool212, label %if.end218, label %if.then213

if.then213:                                       ; preds = %land.lhs.true210
  %call216 = tail call %struct.dict2pid_t* @dict2pid_build(%struct.mdef_t* %51, %struct.dict_t* %52) #4
  store %struct.dict2pid_t* %call216, %struct.dict2pid_t** %3, align 8, !tbaa !0
  br label %if.end218

if.end218:                                        ; preds = %land.lhs.true210, %if.end207, %if.then213
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 225, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([31 x i8]* @.str31, i64 0, i64 0)) #4
  %53 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %tobool220 = icmp eq %struct.feat_s* %53, null
  br i1 %tobool220, label %if.end237, label %land.lhs.true221

land.lhs.true221:                                 ; preds = %if.end218
  %54 = load %struct.mgau_model_t** %7, align 8, !tbaa !0
  %tobool223 = icmp eq %struct.mgau_model_t* %54, null
  br i1 %tobool223, label %if.end237, label %if.then224

if.then224:                                       ; preds = %land.lhs.true221
  %stream_len = getelementptr inbounds %struct.feat_s* %53, i64 0, i32 4
  %55 = load i32** %stream_len, align 8, !tbaa !0
  %56 = load i32* %55, align 4, !tbaa !3
  %veclen = getelementptr inbounds %struct.mgau_model_t* %54, i64 0, i32 2
  %57 = load i32* %veclen, align 4, !tbaa !3
  %cmp228 = icmp eq i32 %56, %57
  br i1 %cmp228, label %if.end237, label %if.then230

if.then230:                                       ; preds = %if.then224
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 230, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %58 = load %struct.feat_s** %fcb, align 8, !tbaa !0
  %stream_len232 = getelementptr inbounds %struct.feat_s* %58, i64 0, i32 4
  %59 = load i32** %stream_len232, align 8, !tbaa !0
  %60 = load i32* %59, align 4, !tbaa !3
  %61 = load %struct.mgau_model_t** %7, align 8, !tbaa !0
  %veclen235 = getelementptr inbounds %struct.mgau_model_t* %61, i64 0, i32 2
  %62 = load i32* %veclen235, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([45 x i8]* @.str32, i64 0, i64 0), i32 %60, i32 %62) #4
  br label %if.end237

if.end237:                                        ; preds = %if.then224, %land.lhs.true221, %if.end218, %if.then230
  %63 = load %struct.mdef_t** %1, align 8, !tbaa !0
  %tobool239 = icmp eq %struct.mdef_t* %63, null
  br i1 %tobool239, label %if.end283, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %if.end237
  %64 = load %struct.mgau_model_t** %7, align 8, !tbaa !0
  %tobool242 = icmp eq %struct.mgau_model_t* %64, null
  br i1 %tobool242, label %land.lhs.true258, label %if.then243

if.then243:                                       ; preds = %land.lhs.true240
  %n_sen = getelementptr inbounds %struct.mdef_t* %63, i64 0, i32 4
  %65 = load i32* %n_sen, align 4, !tbaa !3
  %n_mgau246 = getelementptr inbounds %struct.mgau_model_t* %64, i64 0, i32 0
  %66 = load i32* %n_mgau246, align 4, !tbaa !3
  %cmp247 = icmp eq i32 %65, %66
  br i1 %cmp247, label %if.end255, label %if.then249

if.then249:                                       ; preds = %if.then243
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 237, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %67 = load %struct.mdef_t** %1, align 8, !tbaa !0
  %n_sen251 = getelementptr inbounds %struct.mdef_t* %67, i64 0, i32 4
  %68 = load i32* %n_sen251, align 4, !tbaa !3
  %69 = load %struct.mgau_model_t** %7, align 8, !tbaa !0
  %n_mgau253 = getelementptr inbounds %struct.mgau_model_t* %69, i64 0, i32 0
  %70 = load i32* %n_mgau253, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([40 x i8]* @.str33, i64 0, i64 0), i32 %68, i32 %70) #4
  %.pr434.pre = load %struct.mdef_t** %1, align 8, !tbaa !0
  br label %if.end255

if.end255:                                        ; preds = %if.then243, %if.then249
  %.pr434 = phi %struct.mdef_t* [ %63, %if.then243 ], [ %.pr434.pre, %if.then249 ]
  %tobool257 = icmp eq %struct.mdef_t* %.pr434, null
  br i1 %tobool257, label %if.end283, label %land.lhs.true258

land.lhs.true258:                                 ; preds = %land.lhs.true240, %if.end255
  %.pr434445 = phi %struct.mdef_t* [ %.pr434, %if.end255 ], [ %63, %land.lhs.true240 ]
  %71 = load %struct.tmat_t** %9, align 8, !tbaa !0
  %tobool260 = icmp eq %struct.tmat_t* %71, null
  br i1 %tobool260, label %if.end283, label %if.then261

if.then261:                                       ; preds = %land.lhs.true258
  %n_tmat = getelementptr inbounds %struct.mdef_t* %.pr434445, i64 0, i32 5
  %72 = load i32* %n_tmat, align 4, !tbaa !3
  %n_tmat264 = getelementptr inbounds %struct.tmat_t* %71, i64 0, i32 1
  %73 = load i32* %n_tmat264, align 4, !tbaa !3
  %cmp265 = icmp eq i32 %72, %73
  br i1 %cmp265, label %if.end272, label %if.then267

if.then267:                                       ; preds = %if.then261
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 244, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %74 = load %struct.mdef_t** %1, align 8, !tbaa !0
  %n_tmat269 = getelementptr inbounds %struct.mdef_t* %74, i64 0, i32 5
  %75 = load i32* %n_tmat269, align 4, !tbaa !3
  %76 = load %struct.tmat_t** %9, align 8, !tbaa !0
  %n_tmat271 = getelementptr inbounds %struct.tmat_t* %76, i64 0, i32 1
  %77 = load i32* %n_tmat271, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str34, i64 0, i64 0), i32 %75, i32 %77) #4
  %.pre = load %struct.mdef_t** %1, align 8, !tbaa !0
  %.pre440 = load %struct.tmat_t** %9, align 8, !tbaa !0
  br label %if.end272

if.end272:                                        ; preds = %if.then261, %if.then267
  %78 = phi %struct.tmat_t* [ %71, %if.then261 ], [ %.pre440, %if.then267 ]
  %79 = phi %struct.mdef_t* [ %.pr434445, %if.then261 ], [ %.pre, %if.then267 ]
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %79, i64 0, i32 2
  %80 = load i32* %n_emit_state, align 4, !tbaa !3
  %n_state = getelementptr inbounds %struct.tmat_t* %78, i64 0, i32 2
  %81 = load i32* %n_state, align 4, !tbaa !3
  %cmp275 = icmp eq i32 %80, %81
  br i1 %cmp275, label %if.end283, label %if.then277

if.then277:                                       ; preds = %if.end272
  tail call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i64 246, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) #4
  %82 = load %struct.mdef_t** %1, align 8, !tbaa !0
  %n_emit_state279 = getelementptr inbounds %struct.mdef_t* %82, i64 0, i32 2
  %83 = load i32* %n_emit_state279, align 4, !tbaa !3
  %84 = load %struct.tmat_t** %9, align 8, !tbaa !0
  %n_state281 = getelementptr inbounds %struct.tmat_t* %84, i64 0, i32 2
  %85 = load i32* %n_state281, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str35, i64 0, i64 0), i32 %83, i32 %85) #4
  br label %if.end283

if.end283:                                        ; preds = %if.end237, %if.end272, %land.lhs.true258, %if.end255, %if.then277
  ret %struct.kbcore_t* %0
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare i32 @logs3_init(double) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: optsize
declare %struct.feat_s* @feat_init(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare %struct.mdef_t* @mdef_init(i8*) #1

; Function Attrs: optsize
declare %struct.dict_t* @dict_init(%struct.mdef_t*, i8*, i8*, i8 signext) #1

; Function Attrs: optsize
declare %struct.lm_s* @lm_read(i8*, double, double, double) #1

; Function Attrs: optsize
declare %struct.lmset_s* @lm_read_ctl(i8*, %struct.dict_t*, double, double, double, i8*, i32*, i32*, i32) #1

; Function Attrs: optsize
declare %struct.fillpen_t* @fillpen_init(%struct.dict_t*, i8*, double, double, double, double) #1

; Function Attrs: optsize
declare i16* @wid_dict_lm_map(%struct.dict_t*, %struct.lm_s*, i32) #1

; Function Attrs: optsize
declare %struct.mgau_model_t* @mgau_init(i8*, i8*, double, i8*, double, i32, i8*) #1

; Function Attrs: optsize
declare %struct.subvq_t* @subvq_init(i8*, double, i32, %struct.mgau_model_t*) #1

; Function Attrs: optsize
declare %struct.gs_s* @gs_read(i8*) #1

; Function Attrs: optsize
declare %struct.tmat_t* @tmat_init(i8*, double) #1

; Function Attrs: optsize
declare %struct.dict2pid_t* @dict2pid_build(%struct.mdef_t*, %struct.dict_t*) #1

; Function Attrs: nounwind optsize uwtable
define void @kbcore_free(%struct.kbcore_t* %kbcore) #0 {
entry:
  %fcb1 = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 0
  %0 = load %struct.feat_s** %fcb1, align 8, !tbaa !0
  %mdef2 = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 1
  %1 = load %struct.mdef_t** %mdef2, align 8, !tbaa !0
  %dict3 = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 2
  %2 = load %struct.dict_t** %dict3, align 8, !tbaa !0
  %dict2pid4 = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 3
  %3 = load %struct.dict2pid_t** %dict2pid4, align 8, !tbaa !0
  %lm5 = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 4
  %4 = load %struct.lm_s** %lm5, align 8, !tbaa !0
  tail call void @lm_free(%struct.lm_s* %4) #4
  tail call void @dict_free(%struct.dict_t* %2) #4
  %comwt = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 5
  %5 = load i32** %comwt, align 8, !tbaa !0
  %6 = bitcast i32* %5 to i8*
  tail call void @ckd_free(i8* %6) #4
  %comsseq = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 4
  %7 = load i16*** %comsseq, align 8, !tbaa !0
  %8 = bitcast i16** %7 to i8*
  tail call void @ckd_free(i8* %8) #4
  %comstate = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 3
  %9 = load i16*** %comstate, align 8, !tbaa !0
  %10 = bitcast i16** %9 to i8*
  tail call void @ckd_free(i8* %10) #4
  %single_lc = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 2
  %11 = load i32*** %single_lc, align 8, !tbaa !0
  %12 = bitcast i32** %11 to i8**
  tail call void @ckd_free_2d(i8** %12) #4
  %ldiph_lc = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 1
  %13 = load i32**** %ldiph_lc, align 8, !tbaa !0
  %14 = bitcast i32*** %13 to i8***
  tail call void @ckd_free_3d(i8*** %14) #4
  %internal = getelementptr inbounds %struct.dict2pid_t* %3, i64 0, i32 0
  %15 = load i32*** %internal, align 8, !tbaa !0
  %16 = bitcast i32** %15 to i8*
  tail call void @ckd_free(i8* %16) #4
  tail call void @mdef_free(%struct.mdef_t* %1) #4
  %fillpen = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 6
  %17 = load %struct.fillpen_t** %fillpen, align 8, !tbaa !0
  tail call void @fillpen_free(%struct.fillpen_t* %17) #4
  %tmat = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 11
  %18 = load %struct.tmat_t** %tmat, align 8, !tbaa !0
  tail call void @tmat_free(%struct.tmat_t* %18) #4
  %svq = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 9
  %19 = load %struct.subvq_t** %svq, align 8, !tbaa !0
  tail call void @subvq_free(%struct.subvq_t* %19) #4
  %mgau = getelementptr inbounds %struct.kbcore_t* %kbcore, i64 0, i32 8
  %20 = load %struct.mgau_model_t** %mgau, align 8, !tbaa !0
  tail call void @mgau_free(%struct.mgau_model_t* %20) #4
  %tobool = icmp eq %struct.feat_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.feat_s* %0, i64 0, i32 0
  %21 = load i8** %name, align 8, !tbaa !0
  tail call void @ckd_free(i8* %21) #4
  %stream_len = getelementptr inbounds %struct.feat_s* %0, i64 0, i32 4
  %22 = load i32** %stream_len, align 8, !tbaa !0
  %23 = bitcast i32* %22 to i8*
  tail call void @ckd_free(i8* %23) #4
  %24 = bitcast %struct.feat_s* %0 to i8*
  tail call void @ckd_free(i8* %24) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void (...)* @logs_free() #4
  %25 = load %struct.feat_s** %fcb1, align 8, !tbaa !0
  tail call void @feat_free(%struct.feat_s* %25) #4
  %26 = bitcast %struct.kbcore_t* %kbcore to i8*
  tail call void @ckd_free(i8* %26) #4
  ret void
}

; Function Attrs: optsize
declare void @lm_free(%struct.lm_s*) #1

; Function Attrs: optsize
declare void @dict_free(%struct.dict_t*) #1

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #1

; Function Attrs: optsize
declare void @ckd_free_3d(i8***) #1

; Function Attrs: optsize
declare void @mdef_free(%struct.mdef_t*) #1

; Function Attrs: optsize
declare void @fillpen_free(%struct.fillpen_t*) #1

; Function Attrs: optsize
declare void @tmat_free(%struct.tmat_t*) #1

; Function Attrs: optsize
declare void @subvq_free(%struct.subvq_t*) #1

; Function Attrs: optsize
declare void @mgau_free(%struct.mgau_model_t*) #1

; Function Attrs: optsize
declare void @logs_free(...) #1

; Function Attrs: optsize
declare void @feat_free(%struct.feat_s*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
