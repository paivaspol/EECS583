; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/subvq.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.subvq_t = type { %struct.arraysize_t, i32, i32, i32**, %struct.vector_gautbl_t*, i32***, float*, i32**, i32*, i32* }
%struct.arraysize_t = type { i32, i32 }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"-vqeval\00", align 1
@VQ_EVAL = internal unnamed_addr global i32 3, align 4
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/subvq.c\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"Loading Mixture Gaussian sub-VQ file '%s' (vq_eval: %d)\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"Failed to read VQParam header\0A\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"VQParam %d %d -> %d %d\00", align 1
@.str8 = private unnamed_addr constant [60 x i8] c"Model size conflict: %d x %d (SubVQ) vs %d x %d (Original)\0A\00", align 1
@.str9 = private unnamed_addr constant [31 x i8] c"Using %d subvectors out of %d\0A\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str11 = private unnamed_addr constant [57 x i8] c"#Subvectors specified(%d) > available(%d); using latter\0A\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"Subvector %d length %d%n\00", align 1
@.str13 = private unnamed_addr constant [36 x i8] c"Error reading length(subvector %d)\0A\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str15 = private unnamed_addr constant [41 x i8] c"Error reading subvector(%d).featdim(%d)\0A\00", align 1
@.str16 = private unnamed_addr constant [48 x i8] c"Original #codebooks(states)/codewords: %d x %d\0A\00", align 1
@.str17 = private unnamed_addr constant [28 x i8] c"Subvectors: %d, VQsize: %d\0A\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"SV %d feature dims(%d): \00", align 1
@stdout = external global %struct._IO_FILE*
@.str19 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@.str21 = private unnamed_addr constant [20 x i8] c"Reading subvq %d%s\0A\00", align 1
@.str22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str23 = private unnamed_addr constant [12 x i8] c" (not used)\00", align 1
@.str24 = private unnamed_addr constant [18 x i8] c"Reading codebook\0A\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"Codebook %d\00", align 1
@.str26 = private unnamed_addr constant [31 x i8] c"Error reading codebook header\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"Error reading row(%d)\0A\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"%f %f%n\00", align 1
@.str29 = private unnamed_addr constant [31 x i8] c"Error reading row(%d) col(%d)\0A\00", align 1
@.str30 = private unnamed_addr constant [13 x i8] c"Reading map\0A\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"Map %d\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"Error reading map header\0A\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str35 = private unnamed_addr constant [27 x i8] c"Error reading 'End' token\0A\00", align 1
@.str36 = private unnamed_addr constant [36 x i8] c"Warning!! Score is S3_LOGPROB_ZERO\0A\00", align 1
@.str37 = private unnamed_addr constant [33 x i8] c"Partially undefined map[%d][%d]\0A\00", align 1
@.str38 = private unnamed_addr constant [69 x i8] c"Mixture %d: #Valid components conflict: %d (SubVQ) vs %d (Original)\0A\00", align 1
@.str39 = private unnamed_addr constant [46 x i8] c"Precomputing Mahalanobis distance invariants\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.subvq_t* @subvq_init(i8* %file, double %varfloor, i32 %max_sv, %struct.mgau_model_t* %g) #0 {
entry:
  %line = alloca [16384 x i8], align 16
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %0 = getelementptr inbounds [16384 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %0) #1
  %call = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  store i32 %2, i32* @VQ_EVAL, align 4, !tbaa !0
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 199, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %3 = load i32* @VQ_EVAL, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), i8* %file, i32 %3) #5
  %call1 = call i8* @__ckd_calloc__(i64 1, i64 72, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 201) #5
  %call2 = call %struct._IO_FILE* @_myfopen(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 203) #5
  %c7 = getelementptr inbounds i8* %call1, i64 4
  %n_sv8 = getelementptr inbounds i8* %call1, i64 8
  %vqsize = getelementptr inbounds i8* %call1, i64 12
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call3 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call2) #5
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 208, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %call9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0), i8* %call1, i8* %c7, i8* %n_sv8, i8* %vqsize) #5
  %cmp10 = icmp eq i32 %call9, 4
  br i1 %cmp10, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end
  %4 = bitcast i8* %call1 to %struct.subvq_t*
  %r5 = bitcast i8* %call1 to i32*
  %5 = bitcast i8* %c7 to i32*
  %6 = bitcast i8* %n_sv8 to i32*
  %7 = bitcast i8* %vqsize to i32*
  %tobool = icmp eq %struct.mgau_model_t* %g, null
  br i1 %tobool, label %if.end28, label %if.then13

if.then13:                                        ; preds = %for.end
  %n_mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %8 = load i32* %n_mgau, align 4, !tbaa !0
  %9 = load i32* %r5, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %8, %9
  %max_comp = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 1
  br i1 %cmp16, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.then13
  %10 = load i32* %max_comp, align 4, !tbaa !0
  %11 = load i32* %5, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %10, %11
  br i1 %cmp19, label %if.end28, label %if.then20

if.then20:                                        ; preds = %if.then13, %lor.lhs.false
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 216, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %12 = load i32* %r5, align 4, !tbaa !0
  %13 = load i32* %5, align 4, !tbaa !0
  %14 = load i32* %n_mgau, align 4, !tbaa !0
  %15 = load i32* %max_comp, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([60 x i8]* @.str8, i64 0, i64 0), i32 %12, i32 %13, i32 %14, i32 %15) #5
  br label %if.end28

if.end28:                                         ; preds = %lor.lhs.false, %for.end, %if.then20
  %cmp29 = icmp slt i32 %max_sv, 0
  %16 = load i32* %6, align 4, !tbaa !0
  br i1 %cmp29, label %if.end43, label %if.end32

if.end32:                                         ; preds = %if.end28
  %cmp34 = icmp sgt i32 %16, %max_sv
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end32
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 223, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %17 = load i32* %6, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([31 x i8]* @.str9, i64 0, i64 0), i32 %max_sv, i32 %17) #5
  %.pre = load i32* %6, align 4, !tbaa !0
  br label %if.end43

if.else:                                          ; preds = %if.end32
  %cmp38 = icmp slt i32 %16, %max_sv
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 225, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0)) #5
  %18 = load i32* %6, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([57 x i8]* @.str11, i64 0, i64 0), i32 %max_sv, i32 %18) #5
  %19 = load i32* %6, align 4, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.end28, %if.else, %if.then39, %if.then35
  %20 = phi i32 [ %.pre, %if.then35 ], [ %19, %if.then39 ], [ %16, %if.else ], [ %16, %if.end28 ]
  %max_sv.addr.1 = phi i32 [ %max_sv, %if.then35 ], [ %19, %if.then39 ], [ %max_sv, %if.else ], [ %16, %if.end28 ]
  store i32 %max_sv.addr.1, i32* %6, align 4, !tbaa !0
  %21 = load i32* @VQ_EVAL, align 4, !tbaa !0
  %cmp47 = icmp slt i32 %max_sv.addr.1, %21
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end43
  store i32 %max_sv.addr.1, i32* @VQ_EVAL, align 4, !tbaa !0
  %.pre581 = load i32* %6, align 4, !tbaa !0
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end43
  %22 = phi i32 [ %.pre581, %if.then48 ], [ %max_sv.addr.1, %if.end43 ]
  %conv = sext i32 %22 to i64
  %call52 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 233) #5
  %23 = bitcast i8* %call52 to i32**
  %featdim = getelementptr inbounds i8* %call1, i64 16
  %24 = bitcast i8* %featdim to i32***
  store i32** %23, i32*** %24, align 8, !tbaa !3
  %25 = load i32* %6, align 4, !tbaa !0
  %conv54 = sext i32 %25 to i64
  %call55 = call i8* @__ckd_calloc__(i64 %conv54, i64 40, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 234) #5
  %26 = bitcast i8* %call55 to %struct.vector_gautbl_t*
  %gautbl = getelementptr inbounds i8* %call1, i64 24
  %27 = bitcast i8* %gautbl to %struct.vector_gautbl_t**
  store %struct.vector_gautbl_t* %26, %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %28 = load i32* %r5, align 4, !tbaa !0
  %29 = load i32* %5, align 4, !tbaa !0
  %30 = load i32* %6, align 4, !tbaa !0
  %call61 = call i8*** @__ckd_calloc_3d__(i32 %28, i32 %29, i32 %30, i32 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 236) #5
  %31 = bitcast i8*** %call61 to i32***
  %map = getelementptr inbounds i8* %call1, i64 32
  %32 = bitcast i8* %map to i32****
  store i32*** %31, i32**** %32, align 8, !tbaa !3
  %cmp63549 = icmp sgt i32 %20, 0
  br i1 %cmp63549, label %for.body, label %for.end126

for.body:                                         ; preds = %if.end50, %for.inc124
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %for.inc124 ], [ 0, %if.end50 ]
  %call66 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call2) #5
  %cmp67 = icmp eq i8* %call66, null
  br i1 %cmp67, label %for.body.if.then77_crit_edge, label %lor.lhs.false69

for.body.if.then77_crit_edge:                     ; preds = %for.body
  %.pre584 = trunc i64 %indvars.iv577 to i32
  br label %if.then77

lor.lhs.false69:                                  ; preds = %for.body
  %call71 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([25 x i8]* @.str12, i64 0, i64 0), i32* %k, i32* %l, i32* %n) #5
  %cmp72 = icmp eq i32 %call71, 2
  %33 = load i32* %k, align 4, !tbaa !0
  %34 = trunc i64 %indvars.iv577 to i32
  %cmp75 = icmp eq i32 %33, %34
  %or.cond = and i1 %cmp72, %cmp75
  br i1 %or.cond, label %if.end78, label %if.then77

if.then77:                                        ; preds = %for.body.if.then77_crit_edge, %lor.lhs.false69
  %.pre-phi = phi i32 [ %.pre584, %for.body.if.then77_crit_edge ], [ %34, %lor.lhs.false69 ]
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 242, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str13, i64 0, i64 0), i32 %.pre-phi) #5
  br label %if.end78

if.end78:                                         ; preds = %lor.lhs.false69, %if.then77
  %35 = load i32* %6, align 4, !tbaa !0
  %36 = trunc i64 %indvars.iv577 to i32
  %cmp80 = icmp slt i32 %36, %35
  br i1 %cmp80, label %if.then82, label %for.inc124

if.then82:                                        ; preds = %if.end78
  %37 = load i32* %l, align 4, !tbaa !0
  %38 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen = getelementptr inbounds %struct.vector_gautbl_t* %38, i64 %indvars.iv577, i32 1
  store i32 %37, i32* %veclen, align 4, !tbaa !0
  %conv88 = sext i32 %37 to i64
  %call89 = call i8* @__ckd_calloc__(i64 %conv88, i64 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 246) #5
  %39 = bitcast i8* %call89 to i32*
  %40 = load i32*** %24, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds i32** %40, i64 %indvars.iv577
  store i32* %39, i32** %arrayidx92, align 8, !tbaa !3
  %41 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen98543 = getelementptr inbounds %struct.vector_gautbl_t* %41, i64 %indvars.iv577, i32 1
  %42 = load i32* %veclen98543, align 4, !tbaa !0
  %cmp99544 = icmp sgt i32 %42, 0
  br i1 %cmp99544, label %for.body101.lr.ph, label %for.end114

for.body101.lr.ph:                                ; preds = %if.then82
  %43 = load i32* %n, align 4, !tbaa !0
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds [16384 x i8]* %line, i64 0, i64 %idx.ext
  br label %for.body101

for.body101:                                      ; preds = %for.body101.lr.ph, %if.end111
  %indvars.iv575 = phi i64 [ 0, %for.body101.lr.ph ], [ %indvars.iv.next576, %if.end111 ]
  %strp.0546 = phi i8* [ %add.ptr, %for.body101.lr.ph ], [ %add.ptr113, %if.end111 ]
  %44 = load i32*** %24, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i32** %44, i64 %indvars.iv577
  %45 = load i32** %arrayidx105, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds i32* %45, i64 %indvars.iv575
  %call107 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %strp.0546, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), i32* %arrayidx106, i32* %n) #5
  %cmp108 = icmp eq i32 %call107, 1
  br i1 %cmp108, label %if.end111, label %if.then110

if.then110:                                       ; preds = %for.body101
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 250, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %46 = trunc i64 %indvars.iv575 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([41 x i8]* @.str15, i64 0, i64 0), i32 %36, i32 %46) #5
  br label %if.end111

if.end111:                                        ; preds = %for.body101, %if.then110
  %47 = load i32* %n, align 4, !tbaa !0
  %idx.ext112 = sext i32 %47 to i64
  %add.ptr113 = getelementptr inbounds i8* %strp.0546, i64 %idx.ext112
  %indvars.iv.next576 = add i64 %indvars.iv575, 1
  %48 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen98 = getelementptr inbounds %struct.vector_gautbl_t* %48, i64 %indvars.iv577, i32 1
  %49 = load i32* %veclen98, align 4, !tbaa !0
  %50 = trunc i64 %indvars.iv.next576 to i32
  %cmp99 = icmp slt i32 %50, %49
  br i1 %cmp99, label %for.body101, label %for.end114

for.end114:                                       ; preds = %if.end111, %if.then82
  %.lcssa542 = phi i32 [ %42, %if.then82 ], [ %49, %if.end111 ]
  %.lcssa541 = phi %struct.vector_gautbl_t* [ %41, %if.then82 ], [ %48, %if.end111 ]
  %arrayidx97 = getelementptr inbounds %struct.vector_gautbl_t* %.lcssa541, i64 %indvars.iv577
  %51 = load i32* %7, align 4, !tbaa !0
  call void @vector_gautbl_alloc(%struct.vector_gautbl_t* %arrayidx97, i32 %51, i32 %.lcssa542) #5
  br label %for.inc124

for.inc124:                                       ; preds = %if.end78, %for.end114
  %indvars.iv.next578 = add i64 %indvars.iv577, 1
  %lftr.wideiv579 = trunc i64 %indvars.iv.next578 to i32
  %exitcond580 = icmp eq i32 %lftr.wideiv579, %20
  br i1 %exitcond580, label %for.end126, label %for.body

for.end126:                                       ; preds = %for.inc124, %if.end50
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 259, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %52 = load i32* %r5, align 4, !tbaa !0
  %53 = load i32* %5, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([48 x i8]* @.str16, i64 0, i64 0), i32 %52, i32 %53) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 260, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %54 = load i32* %6, align 4, !tbaa !0
  %55 = load i32* %7, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0), i32 %54, i32 %55) #5
  %56 = load i32* %6, align 4, !tbaa !0
  %cmp135539 = icmp sgt i32 %56, 0
  br i1 %cmp135539, label %for.body137, label %for.cond163.preheader

for.cond163.preheader:                            ; preds = %for.end158, %for.end126
  br i1 %cmp63549, label %for.body166, label %for.end297

for.body137:                                      ; preds = %for.end126, %for.end158
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %for.end158 ], [ 0, %for.end126 ]
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 262, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %57 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen141 = getelementptr inbounds %struct.vector_gautbl_t* %57, i64 %indvars.iv571, i32 1
  %58 = load i32* %veclen141, align 4, !tbaa !0
  %59 = trunc i64 %indvars.iv571 to i32
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([25 x i8]* @.str18, i64 0, i64 0), i32 %59, i32 %58) #5
  %60 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen146536 = getelementptr inbounds %struct.vector_gautbl_t* %60, i64 %indvars.iv571, i32 1
  %61 = load i32* %veclen146536, align 4, !tbaa !0
  %cmp147537 = icmp sgt i32 %61, 0
  %62 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp147537, label %for.body149, label %for.end158

for.body149:                                      ; preds = %for.body137, %for.body149
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %for.body149 ], [ 0, %for.body137 ]
  %63 = phi %struct._IO_FILE* [ %70, %for.body149 ], [ %62, %for.body137 ]
  %64 = load i32*** %24, align 8, !tbaa !3
  %arrayidx153 = getelementptr inbounds i32** %64, i64 %indvars.iv571
  %65 = load i32** %arrayidx153, align 8, !tbaa !3
  %arrayidx154 = getelementptr inbounds i32* %65, i64 %indvars.iv569
  %66 = load i32* %arrayidx154, align 4, !tbaa !0
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i32 %66) #5
  %indvars.iv.next570 = add i64 %indvars.iv569, 1
  %67 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen146 = getelementptr inbounds %struct.vector_gautbl_t* %67, i64 %indvars.iv571, i32 1
  %68 = load i32* %veclen146, align 4, !tbaa !0
  %69 = trunc i64 %indvars.iv.next570 to i32
  %cmp147 = icmp slt i32 %69, %68
  %70 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp147, label %for.body149, label %for.end158

for.end158:                                       ; preds = %for.body149, %for.body137
  %.lcssa535 = phi %struct._IO_FILE* [ %62, %for.body137 ], [ %70, %for.body149 ]
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa535)
  %indvars.iv.next572 = add i64 %indvars.iv571, 1
  %71 = load i32* %6, align 4, !tbaa !0
  %72 = trunc i64 %indvars.iv.next572 to i32
  %cmp135 = icmp slt i32 %72, %71
  br i1 %cmp135, label %for.body137, label %for.cond163.preheader

for.body166:                                      ; preds = %for.cond163.preheader, %for.end293
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %for.end293 ], [ 0, %for.cond163.preheader ]
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 271, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  %73 = load i32* %6, align 4, !tbaa !0
  %74 = trunc i64 %indvars.iv564 to i32
  %cmp168 = icmp slt i32 %74, %73
  %cond = select i1 %cmp168, i8* getelementptr inbounds ([1 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0)
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([20 x i8]* @.str21, i64 0, i64 0), i32 %74, i8* %cond) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 273, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0)) #5
  %call171 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call2) #5
  %cmp172 = icmp eq i8* %call171, null
  br i1 %cmp172, label %if.then182, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %for.body166
  %call176 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0), i32* %k) #5
  %cmp177 = icmp eq i32 %call176, 1
  %75 = load i32* %k, align 4, !tbaa !0
  %cmp180 = icmp eq i32 %75, %74
  %or.cond494 = and i1 %cmp177, %cmp180
  br i1 %or.cond494, label %for.cond184.preheader, label %if.then182

if.then182:                                       ; preds = %lor.lhs.false174, %for.body166
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 276, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str26, i64 0, i64 0), i32 %74) #5
  br label %for.cond184.preheader

for.cond184.preheader:                            ; preds = %lor.lhs.false174, %if.then182
  %76 = load i32* %7, align 4, !tbaa !0
  %cmp186522 = icmp sgt i32 %76, 0
  br i1 %cmp186522, label %for.body188, label %for.end235

for.body188:                                      ; preds = %for.cond184.preheader, %for.inc233
  %indvars.iv558 = phi i64 [ %indvars.iv.next559, %for.inc233 ], [ 0, %for.cond184.preheader ]
  %call190 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call2) #5
  %cmp191 = icmp eq i8* %call190, null
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %for.body188
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 280, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %77 = trunc i64 %indvars.iv558 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i32 %77) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %for.body188
  %78 = load i32* %6, align 4, !tbaa !0
  %cmp196 = icmp slt i32 %74, %78
  br i1 %cmp196, label %for.cond201.preheader, label %for.inc233

for.cond201.preheader:                            ; preds = %if.end194
  %79 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen205518 = getelementptr inbounds %struct.vector_gautbl_t* %79, i64 %indvars.iv564, i32 1
  %80 = load i32* %veclen205518, align 4, !tbaa !0
  %cmp206519 = icmp sgt i32 %80, 0
  br i1 %cmp206519, label %for.body208, label %for.inc233

for.body208:                                      ; preds = %for.cond201.preheader, %if.end227
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %if.end227 ], [ 0, %for.cond201.preheader ]
  %81 = phi %struct.vector_gautbl_t* [ %89, %if.end227 ], [ %79, %for.cond201.preheader ]
  %strp.1521 = phi i8* [ %add.ptr229, %if.end227 ], [ %0, %for.cond201.preheader ]
  %mean = getelementptr inbounds %struct.vector_gautbl_t* %81, i64 %indvars.iv564, i32 2
  %82 = load float*** %mean, align 8, !tbaa !3
  %arrayidx214 = getelementptr inbounds float** %82, i64 %indvars.iv558
  %83 = load float** %arrayidx214, align 8, !tbaa !3
  %arrayidx215 = getelementptr inbounds float* %83, i64 %indvars.iv556
  %var = getelementptr inbounds %struct.vector_gautbl_t* %81, i64 %indvars.iv564, i32 3
  %84 = load float*** %var, align 8, !tbaa !3
  %arrayidx221 = getelementptr inbounds float** %84, i64 %indvars.iv558
  %85 = load float** %arrayidx221, align 8, !tbaa !3
  %arrayidx222 = getelementptr inbounds float* %85, i64 %indvars.iv556
  %call223 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %strp.1521, i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), float* %arrayidx215, float* %arrayidx222, i32* %k) #5
  %cmp224 = icmp eq i32 %call223, 2
  br i1 %cmp224, label %if.end227, label %if.then226

if.then226:                                       ; preds = %for.body208
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 288, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %86 = trunc i64 %indvars.iv556 to i32
  %87 = trunc i64 %indvars.iv558 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str29, i64 0, i64 0), i32 %87, i32 %86) #5
  br label %if.end227

if.end227:                                        ; preds = %for.body208, %if.then226
  %88 = load i32* %k, align 4, !tbaa !0
  %idx.ext228 = sext i32 %88 to i64
  %add.ptr229 = getelementptr inbounds i8* %strp.1521, i64 %idx.ext228
  %indvars.iv.next557 = add i64 %indvars.iv556, 1
  %89 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %veclen205 = getelementptr inbounds %struct.vector_gautbl_t* %89, i64 %indvars.iv564, i32 1
  %90 = load i32* %veclen205, align 4, !tbaa !0
  %91 = trunc i64 %indvars.iv.next557 to i32
  %cmp206 = icmp slt i32 %91, %90
  br i1 %cmp206, label %for.body208, label %for.inc233

for.inc233:                                       ; preds = %for.cond201.preheader, %if.end227, %if.end194
  %indvars.iv.next559 = add i64 %indvars.iv558, 1
  %92 = load i32* %7, align 4, !tbaa !0
  %93 = trunc i64 %indvars.iv.next559 to i32
  %cmp186 = icmp slt i32 %93, %92
  br i1 %cmp186, label %for.body188, label %for.end235

for.end235:                                       ; preds = %for.inc233, %for.cond184.preheader
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 293, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([13 x i8]* @.str30, i64 0, i64 0)) #5
  %call237 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call2) #5
  %cmp238 = icmp eq i8* %call237, null
  br i1 %cmp238, label %if.then248, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %for.end235
  %call242 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0), i32* %k) #5
  %cmp243 = icmp eq i32 %call242, 1
  %94 = load i32* %k, align 4, !tbaa !0
  %cmp246 = icmp eq i32 %94, %74
  %or.cond495 = and i1 %cmp243, %cmp246
  br i1 %or.cond495, label %for.cond250.preheader, label %if.then248

if.then248:                                       ; preds = %lor.lhs.false240, %for.end235
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 296, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %74) #5
  br label %for.cond250.preheader

for.cond250.preheader:                            ; preds = %lor.lhs.false240, %if.then248
  %95 = load i32* %r5, align 4, !tbaa !0
  %cmp253529 = icmp sgt i32 %95, 0
  br i1 %cmp253529, label %for.body255, label %for.end293

for.body255:                                      ; preds = %for.cond250.preheader, %for.inc291
  %indvars.iv562 = phi i64 [ %indvars.iv.next563, %for.inc291 ], [ 0, %for.cond250.preheader ]
  %call257 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %call2) #5
  %cmp258 = icmp eq i8* %call257, null
  br i1 %cmp258, label %if.then260, label %if.end261

if.then260:                                       ; preds = %for.body255
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %96 = trunc i64 %indvars.iv562 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i32 %96) #5
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %for.body255
  %97 = load i32* %6, align 4, !tbaa !0
  %cmp263 = icmp slt i32 %74, %97
  br i1 %cmp263, label %for.cond268.preheader, label %for.inc291

for.cond268.preheader:                            ; preds = %if.end261
  %98 = load i32* %5, align 4, !tbaa !0
  %cmp271526 = icmp sgt i32 %98, 0
  br i1 %cmp271526, label %for.body273, label %for.inc291

for.body273:                                      ; preds = %for.cond268.preheader, %if.end285
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %if.end285 ], [ 0, %for.cond268.preheader ]
  %strp.2528 = phi i8* [ %add.ptr287, %if.end285 ], [ %0, %for.cond268.preheader ]
  %99 = load i32**** %32, align 8, !tbaa !3
  %arrayidx278 = getelementptr inbounds i32*** %99, i64 %indvars.iv562
  %100 = load i32*** %arrayidx278, align 8, !tbaa !3
  %arrayidx279 = getelementptr inbounds i32** %100, i64 %indvars.iv560
  %101 = load i32** %arrayidx279, align 8, !tbaa !3
  %arrayidx280 = getelementptr inbounds i32* %101, i64 %indvars.iv564
  %call281 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %strp.2528, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), i32* %arrayidx280, i32* %k) #5
  %cmp282 = icmp eq i32 %call281, 1
  br i1 %cmp282, label %if.end285, label %if.then284

if.then284:                                       ; preds = %for.body273
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 307, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %102 = trunc i64 %indvars.iv560 to i32
  %103 = trunc i64 %indvars.iv562 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str29, i64 0, i64 0), i32 %103, i32 %102) #5
  br label %if.end285

if.end285:                                        ; preds = %for.body273, %if.then284
  %104 = load i32* %k, align 4, !tbaa !0
  %idx.ext286 = sext i32 %104 to i64
  %add.ptr287 = getelementptr inbounds i8* %strp.2528, i64 %idx.ext286
  %indvars.iv.next561 = add i64 %indvars.iv560, 1
  %105 = load i32* %5, align 4, !tbaa !0
  %106 = trunc i64 %indvars.iv.next561 to i32
  %cmp271 = icmp slt i32 %106, %105
  br i1 %cmp271, label %for.body273, label %for.inc291

for.inc291:                                       ; preds = %for.cond268.preheader, %if.end285, %if.end261
  %indvars.iv.next563 = add i64 %indvars.iv562, 1
  %107 = load i32* %r5, align 4, !tbaa !0
  %108 = trunc i64 %indvars.iv.next563 to i32
  %cmp253 = icmp slt i32 %108, %107
  br i1 %cmp253, label %for.body255, label %for.end293

for.end293:                                       ; preds = %for.inc291, %for.cond250.preheader
  %109 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call294 = call i32 @fflush(%struct._IO_FILE* %109) #5
  %indvars.iv.next565 = add i64 %indvars.iv564, 1
  %lftr.wideiv566 = trunc i64 %indvars.iv.next565 to i32
  %exitcond567 = icmp eq i32 %lftr.wideiv566, %20
  br i1 %exitcond567, label %for.end297, label %for.body166

for.end297:                                       ; preds = %for.end293, %for.cond163.preheader
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call2, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* %0) #5
  %cmp300 = icmp eq i32 %call299, 1
  br i1 %cmp300, label %lor.lhs.false302, label %if.then307

lor.lhs.false302:                                 ; preds = %for.end297
  %call304 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #6
  %cmp305 = icmp eq i32 %call304, 0
  br i1 %cmp305, label %if.end308, label %if.then307

if.then307:                                       ; preds = %lor.lhs.false302, %for.end297
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 316, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str35, i64 0, i64 0)) #5
  br label %if.end308

if.end308:                                        ; preds = %lor.lhs.false302, %if.then307
  %call309 = call i32 @fclose(%struct._IO_FILE* %call2) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 103, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([46 x i8]* @.str39, i64 0, i64 0)) #5
  %110 = load i32* %6, align 4, !tbaa !0
  %111 = load i32* %7, align 4, !tbaa !0
  %mul.i = mul nsw i32 %111, %110
  %conv.i = sext i32 %mul.i to i64
  %call.i = call i8* @__ckd_calloc__(i64 %conv.i, i64 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 105) #5
  %112 = load i32* %6, align 4, !tbaa !0
  %cmp15.i = icmp sgt i32 %112, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %subvq_maha_precomp.exit

for.body.lr.ph.i:                                 ; preds = %if.end308
  %113 = bitcast i8* %call.i to float*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %lrd.016.i = phi float* [ %113, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %114 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds %struct.vector_gautbl_t* %114, i64 %indvars.iv.i
  call void @vector_gautbl_var_floor(%struct.vector_gautbl_t* %arrayidx.i, double %varfloor) #5
  %lrd4.i = getelementptr inbounds %struct.vector_gautbl_t* %114, i64 %indvars.iv.i, i32 4
  store float* %lrd.016.i, float** %lrd4.i, align 8, !tbaa !3
  %115 = load i32* %7, align 4, !tbaa !0
  %idx.ext.i = sext i32 %115 to i64
  %add.ptr.i = getelementptr inbounds float* %lrd.016.i, i64 %idx.ext.i
  call void @vector_gautbl_maha_precomp(%struct.vector_gautbl_t* %arrayidx.i) #5
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %116 = load i32* %6, align 4, !tbaa !0
  %117 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp slt i32 %117, %116
  br i1 %cmp.i, label %for.body.i, label %subvq_maha_precomp.exit

subvq_maha_precomp.exit:                          ; preds = %for.body.i, %if.end308
  %tobool.i = icmp ne %struct.mgau_model_t* %g, null
  br i1 %tobool.i, label %if.then.i, label %for.cond.preheader.i

if.then.i:                                        ; preds = %subvq_maha_precomp.exit
  %n_mgau.i = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %118 = load i32* %n_mgau.i, align 4, !tbaa !0
  %119 = load i32* %r5, align 4, !tbaa !0
  %cmp.i496 = icmp eq i32 %118, %119
  %max_comp.i = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 1
  br i1 %cmp.i496, label %lor.lhs.false.i, label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %120 = load i32* %max_comp.i, align 4, !tbaa !0
  %121 = load i32* %5, align 4, !tbaa !0
  %cmp4.i = icmp eq i32 %120, %121
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i, %lor.lhs.false.i
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 125, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %122 = load i32* %r5, align 4, !tbaa !0
  %123 = load i32* %5, align 4, !tbaa !0
  %124 = load i32* %n_mgau.i, align 4, !tbaa !0
  %125 = load i32* %max_comp.i, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([60 x i8]* @.str8, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125) #5
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %subvq_maha_precomp.exit, %if.then5.i, %lor.lhs.false.i
  %126 = load i32* %r5, align 4, !tbaa !0
  %cmp15187.i = icmp sgt i32 %126, 0
  br i1 %cmp15187.i, label %for.cond16.preheader.lr.ph.i, label %subvq_map_linearize.exit

for.cond16.preheader.lr.ph.i:                     ; preds = %for.cond.preheader.i
  %mgau.i = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %.pre.i = load i32* %5, align 4, !tbaa !0
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.inc110.i, %for.cond16.preheader.lr.ph.i
  %127 = phi i32 [ %.pre.i, %for.cond16.preheader.lr.ph.i ], [ %171, %for.inc110.i ]
  %indvars.iv197.i = phi i64 [ 0, %for.cond16.preheader.lr.ph.i ], [ %indvars.iv.next198.i, %for.inc110.i ]
  %cmp19176.i = icmp sgt i32 %127, 0
  br i1 %cmp19176.i, label %for.body20.i.preheader, label %for.end77.i

for.body20.i.preheader:                           ; preds = %for.cond16.preheader.i
  %128 = trunc i64 %indvars.iv197.i to i32
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc75.i, %for.body20.i.preheader
  %indvars.iv191.i = phi i64 [ 0, %for.body20.i.preheader ], [ %indvars.iv.next192.i, %for.inc75.i ]
  %c2.0181.i = phi i32 [ 0, %for.body20.i.preheader ], [ %c2.1.i, %for.inc75.i ]
  %129 = load i32**** %32, align 8, !tbaa !3
  %arrayidx.i497 = getelementptr inbounds i32*** %129, i64 %indvars.iv197.i
  %130 = load i32*** %arrayidx.i497, align 8, !tbaa !3
  %arrayidx22.i = getelementptr inbounds i32** %130, i64 %indvars.iv191.i
  %131 = load i32** %arrayidx22.i, align 8, !tbaa !3
  %132 = load i32* %131, align 4, !tbaa !0
  %cmp24.i = icmp slt i32 %132, 0
  br i1 %cmp24.i, label %for.cond26.preheader.i, label %if.else.i

for.cond26.preheader.i:                           ; preds = %for.body20.i
  %133 = load i32* %6, align 4, !tbaa !0
  %cmp27174.i = icmp sgt i32 %133, 1
  br i1 %cmp27174.i, label %for.body28.i.preheader, label %for.inc75.i

for.body28.i.preheader:                           ; preds = %for.cond26.preheader.i
  %134 = trunc i64 %indvars.iv191.i to i32
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.preheader, %for.inc.for.body28_crit_edge.i
  %135 = phi i32* [ %.pre210.i, %for.inc.for.body28_crit_edge.i ], [ %131, %for.body28.i.preheader ]
  %136 = phi i32 [ %138, %for.inc.for.body28_crit_edge.i ], [ %133, %for.body28.i.preheader ]
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %for.inc.for.body28_crit_edge.i ], [ 1, %for.body28.i.preheader ]
  %arrayidx35.i = getelementptr inbounds i32* %135, i64 %indvars.iv189.i
  %137 = load i32* %arrayidx35.i, align 4, !tbaa !0
  %cmp36.i = icmp sgt i32 %137, -1
  br i1 %cmp36.i, label %if.then37.i, label %for.inc.i

if.then37.i:                                      ; preds = %for.body28.i
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 141, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str37, i64 0, i64 0), i32 %128, i32 %134) #5
  %.pre206.i = load i32* %6, align 4, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then37.i, %for.body28.i
  %138 = phi i32 [ %136, %for.body28.i ], [ %.pre206.i, %if.then37.i ]
  %indvars.iv.next190.i = add i64 %indvars.iv189.i, 1
  %139 = trunc i64 %indvars.iv.next190.i to i32
  %cmp27.i = icmp slt i32 %139, %138
  br i1 %cmp27.i, label %for.inc.for.body28_crit_edge.i, label %for.inc75.i

for.inc.for.body28_crit_edge.i:                   ; preds = %for.inc.i
  %.pre208.i = load i32**** %32, align 8, !tbaa !3
  %arrayidx33.phi.trans.insert.i = getelementptr inbounds i32*** %.pre208.i, i64 %indvars.iv197.i
  %.pre209.i = load i32*** %arrayidx33.phi.trans.insert.i, align 8, !tbaa !3
  %arrayidx34.phi.trans.insert.i = getelementptr inbounds i32** %.pre209.i, i64 %indvars.iv191.i
  %.pre210.i = load i32** %arrayidx34.phi.trans.insert.i, align 8, !tbaa !3
  br label %for.body28.i

if.else.i:                                        ; preds = %for.body20.i
  %140 = trunc i64 %indvars.iv191.i to i32
  %cmp39.i = icmp eq i32 %c2.0181.i, %140
  br i1 %cmp39.i, label %if.end72.i, label %for.cond41.preheader.i

for.cond41.preheader.i:                           ; preds = %if.else.i
  %141 = load i32* %6, align 4, !tbaa !0
  %cmp43172.i = icmp sgt i32 %141, 0
  br i1 %cmp43172.i, label %for.body44.lr.ph.i, label %if.end72.i

for.body44.lr.ph.i:                               ; preds = %for.cond41.preheader.i
  %idxprom63.i = sext i32 %c2.0181.i to i64
  br label %for.body44.i

for.body44.i:                                     ; preds = %if.end54.for.body44_crit_edge.i, %for.body44.lr.ph.i
  %142 = phi i32 [ %132, %for.body44.lr.ph.i ], [ %.pre207.i, %if.end54.for.body44_crit_edge.i ]
  %143 = phi i32* [ %131, %for.body44.lr.ph.i ], [ %146, %if.end54.for.body44_crit_edge.i ]
  %144 = phi i32** [ %130, %for.body44.lr.ph.i ], [ %147, %if.end54.for.body44_crit_edge.i ]
  %indvars.iv.i498 = phi i64 [ 0, %for.body44.lr.ph.i ], [ %indvars.iv.next.i499, %if.end54.for.body44_crit_edge.i ]
  %cmp52.i = icmp slt i32 %142, 0
  br i1 %cmp52.i, label %if.then53.i, label %if.end54.i

if.then53.i:                                      ; preds = %for.body44.i
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 147, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([33 x i8]* @.str37, i64 0, i64 0), i32 %128, i32 %140) #5
  %.pre202.i = load i32**** %32, align 8, !tbaa !3
  %arrayidx59.phi.trans.insert.i = getelementptr inbounds i32*** %.pre202.i, i64 %indvars.iv197.i
  %.pre203.i = load i32*** %arrayidx59.phi.trans.insert.i, align 8, !tbaa !3
  %arrayidx60.phi.trans.insert.i = getelementptr inbounds i32** %.pre203.i, i64 %indvars.iv191.i
  %.pre204.i = load i32** %arrayidx60.phi.trans.insert.i, align 8, !tbaa !3
  %arrayidx61.phi.trans.insert.i = getelementptr inbounds i32* %.pre204.i, i64 %indvars.iv.i498
  %.pre205.i = load i32* %arrayidx61.phi.trans.insert.i, align 4, !tbaa !0
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %for.body44.i
  %145 = phi i32 [ %.pre205.i, %if.then53.i ], [ %142, %for.body44.i ]
  %146 = phi i32* [ %.pre204.i, %if.then53.i ], [ %143, %for.body44.i ]
  %147 = phi i32** [ %.pre203.i, %if.then53.i ], [ %144, %for.body44.i ]
  %arrayidx67.i = getelementptr inbounds i32** %147, i64 %idxprom63.i
  %148 = load i32** %arrayidx67.i, align 8, !tbaa !3
  %arrayidx68.i = getelementptr inbounds i32* %148, i64 %indvars.iv.i498
  store i32 %145, i32* %arrayidx68.i, align 4, !tbaa !0
  %indvars.iv.next.i499 = add i64 %indvars.iv.i498, 1
  %149 = load i32* %6, align 4, !tbaa !0
  %150 = trunc i64 %indvars.iv.next.i499 to i32
  %cmp43.i = icmp slt i32 %150, %149
  br i1 %cmp43.i, label %if.end54.for.body44_crit_edge.i, label %if.end72.i

if.end54.for.body44_crit_edge.i:                  ; preds = %if.end54.i
  %arrayidx51.phi.trans.insert.i = getelementptr inbounds i32* %146, i64 %indvars.iv.next.i499
  %.pre207.i = load i32* %arrayidx51.phi.trans.insert.i, align 4, !tbaa !0
  br label %for.body44.i

if.end72.i:                                       ; preds = %if.end54.i, %for.cond41.preheader.i, %if.else.i
  %inc73.i = add nsw i32 %c2.0181.i, 1
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %for.inc.i, %if.end72.i, %for.cond26.preheader.i
  %c2.1.i = phi i32 [ %inc73.i, %if.end72.i ], [ %c2.0181.i, %for.cond26.preheader.i ], [ %c2.0181.i, %for.inc.i ]
  %indvars.iv.next192.i = add i64 %indvars.iv191.i, 1
  %151 = load i32* %5, align 4, !tbaa !0
  %152 = trunc i64 %indvars.iv.next192.i to i32
  %cmp19.i = icmp slt i32 %152, %151
  br i1 %cmp19.i, label %for.body20.i, label %for.end77.i

for.end77.i:                                      ; preds = %for.inc75.i, %for.cond16.preheader.i
  %153 = phi i32 [ %127, %for.cond16.preheader.i ], [ %151, %for.inc75.i ]
  %c2.0.lcssa.i = phi i32 [ 0, %for.cond16.preheader.i ], [ %c2.1.i, %for.inc75.i ]
  br i1 %tobool.i, label %land.lhs.true.i, label %for.cond88.preheader.i

land.lhs.true.i:                                  ; preds = %for.end77.i
  %154 = load %struct.mgau_t** %mgau.i, align 8, !tbaa !3
  %n_comp.i = getelementptr inbounds %struct.mgau_t* %154, i64 %indvars.iv197.i, i32 0
  %155 = load i32* %n_comp.i, align 4, !tbaa !0
  %cmp81.i = icmp eq i32 %c2.0.lcssa.i, %155
  br i1 %cmp81.i, label %for.cond88.preheader.i, label %if.then82.i

if.then82.i:                                      ; preds = %land.lhs.true.i
  call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 156, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #5
  %156 = load %struct.mgau_t** %mgau.i, align 8, !tbaa !3
  %n_comp86.i = getelementptr inbounds %struct.mgau_t* %156, i64 %indvars.iv197.i, i32 0
  %157 = load i32* %n_comp86.i, align 4, !tbaa !0
  %158 = trunc i64 %indvars.iv197.i to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([69 x i8]* @.str38, i64 0, i64 0), i32 %158, i32 %c2.0.lcssa.i, i32 %157) #5
  %.pre199.i = load i32* %5, align 4, !tbaa !0
  br label %for.cond88.preheader.i

for.cond88.preheader.i:                           ; preds = %if.then82.i, %land.lhs.true.i, %for.end77.i
  %159 = phi i32 [ %.pre199.i, %if.then82.i ], [ %153, %for.end77.i ], [ %153, %land.lhs.true.i ]
  %cmp91185.i = icmp slt i32 %c2.0.lcssa.i, %159
  br i1 %cmp91185.i, label %for.cond93.preheader.lr.ph.i, label %for.inc110.i

for.cond93.preheader.lr.ph.i:                     ; preds = %for.cond88.preheader.i
  %160 = sext i32 %c2.0.lcssa.i to i64
  %.pre200.i = load i32* %6, align 4, !tbaa !0
  br label %for.cond93.preheader.i

for.cond93.preheader.i:                           ; preds = %for.inc107.i, %for.cond93.preheader.lr.ph.i
  %161 = phi i32 [ %159, %for.cond93.preheader.lr.ph.i ], [ %168, %for.inc107.i ]
  %162 = phi i32 [ %.pre200.i, %for.cond93.preheader.lr.ph.i ], [ %169, %for.inc107.i ]
  %indvars.iv195.i = phi i64 [ %160, %for.cond93.preheader.lr.ph.i ], [ %indvars.iv.next196.i, %for.inc107.i ]
  %cmp95183.i = icmp sgt i32 %162, 0
  br i1 %cmp95183.i, label %for.body96.lr.ph.i, label %for.inc107.i

for.body96.lr.ph.i:                               ; preds = %for.cond93.preheader.i
  %163 = load i32**** %32, align 8, !tbaa !3
  %arrayidx101.i = getelementptr inbounds i32*** %163, i64 %indvars.iv197.i
  %164 = load i32*** %arrayidx101.i, align 8, !tbaa !3
  %arrayidx102.i = getelementptr inbounds i32** %164, i64 %indvars.iv195.i
  %165 = load i32** %arrayidx102.i, align 8, !tbaa !3
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.body96.i, %for.body96.lr.ph.i
  %indvars.iv193.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next194.i, %for.body96.i ]
  %arrayidx103.i = getelementptr inbounds i32* %165, i64 %indvars.iv193.i
  store i32 -1, i32* %arrayidx103.i, align 4, !tbaa !0
  %indvars.iv.next194.i = add i64 %indvars.iv193.i, 1
  %166 = load i32* %6, align 4, !tbaa !0
  %167 = trunc i64 %indvars.iv.next194.i to i32
  %cmp95.i = icmp slt i32 %167, %166
  br i1 %cmp95.i, label %for.body96.i, label %for.cond93.for.inc107_crit_edge.i

for.cond93.for.inc107_crit_edge.i:                ; preds = %for.body96.i
  %.pre201.i = load i32* %5, align 4, !tbaa !0
  br label %for.inc107.i

for.inc107.i:                                     ; preds = %for.cond93.for.inc107_crit_edge.i, %for.cond93.preheader.i
  %168 = phi i32 [ %.pre201.i, %for.cond93.for.inc107_crit_edge.i ], [ %161, %for.cond93.preheader.i ]
  %169 = phi i32 [ %166, %for.cond93.for.inc107_crit_edge.i ], [ %162, %for.cond93.preheader.i ]
  %indvars.iv.next196.i = add i64 %indvars.iv195.i, 1
  %170 = trunc i64 %indvars.iv.next196.i to i32
  %cmp91.i = icmp slt i32 %170, %168
  br i1 %cmp91.i, label %for.cond93.preheader.i, label %for.inc110.i

for.inc110.i:                                     ; preds = %for.inc107.i, %for.cond88.preheader.i
  %171 = phi i32 [ %159, %for.cond88.preheader.i ], [ %168, %for.inc107.i ]
  %indvars.iv.next198.i = add i64 %indvars.iv197.i, 1
  %172 = load i32* %r5, align 4, !tbaa !0
  %173 = trunc i64 %indvars.iv.next198.i to i32
  %cmp15.i500 = icmp slt i32 %173, %172
  br i1 %cmp15.i500, label %for.cond16.preheader.i, label %subvq_map_compact.exit

subvq_map_compact.exit:                           ; preds = %for.inc110.i
  %cmp56.i = icmp sgt i32 %172, 0
  br i1 %cmp56.i, label %for.cond2.preheader.lr.ph.i, label %subvq_map_linearize.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %subvq_map_compact.exit
  %.pre.i504 = load i32* %5, align 4, !tbaa !0
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc31.i, %for.cond2.preheader.lr.ph.i
  %174 = phi i32 [ %172, %for.cond2.preheader.lr.ph.i ], [ %189, %for.inc31.i ]
  %175 = phi i32 [ %.pre.i504, %for.cond2.preheader.lr.ph.i ], [ %190, %for.inc31.i ]
  %indvars.iv60.i = phi i64 [ 0, %for.cond2.preheader.lr.ph.i ], [ %indvars.iv.next61.i, %for.inc31.i ]
  %cmp554.i = icmp sgt i32 %175, 0
  br i1 %cmp554.i, label %land.rhs.lr.ph.i, label %for.inc31.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond2.preheader.i
  %176 = load i32**** %32, align 8, !tbaa !3
  %arrayidx.i505 = getelementptr inbounds i32*** %176, i64 %indvars.iv60.i
  %177 = load i32*** %arrayidx.i505, align 8, !tbaa !3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc28.i, %land.rhs.lr.ph.i
  %178 = phi i32 [ %175, %land.rhs.lr.ph.i ], [ %187, %for.inc28.i ]
  %indvars.iv58.i = phi i64 [ 0, %land.rhs.lr.ph.i ], [ %indvars.iv.next59.i, %for.inc28.i ]
  %arrayidx7.i = getelementptr inbounds i32** %177, i64 %indvars.iv58.i
  %179 = load i32** %arrayidx7.i, align 8, !tbaa !3
  %180 = load i32* %179, align 4, !tbaa !0
  %cmp9.i = icmp sgt i32 %180, -1
  br i1 %cmp9.i, label %for.cond11.preheader.i, label %for.inc31.i.loopexit

for.cond11.preheader.i:                           ; preds = %land.rhs.i
  %181 = load i32* %6, align 4, !tbaa !0
  %cmp1252.i = icmp sgt i32 %181, 0
  br i1 %cmp1252.i, label %for.body13.i.preheader, label %for.inc28.i

for.body13.i.preheader:                           ; preds = %for.cond11.preheader.i
  store i32 %180, i32* %179, align 4, !tbaa !0
  %182 = load i32* %6, align 4, !tbaa !0
  %cmp12.i514 = icmp sgt i32 %182, 1
  br i1 %cmp12.i514, label %for.body13.for.body13_crit_edge.i, label %for.cond11.for.inc28_crit_edge.i

for.body13.for.body13_crit_edge.i:                ; preds = %for.body13.i.preheader, %for.body13.for.body13_crit_edge.i
  %indvars.iv.next.i508515 = phi i64 [ %indvars.iv.next.i508, %for.body13.for.body13_crit_edge.i ], [ 1, %for.body13.i.preheader ]
  %arrayidx20.phi.trans.insert.i = getelementptr inbounds i32* %179, i64 %indvars.iv.next.i508515
  %.pre63.i = load i32* %arrayidx20.phi.trans.insert.i, align 4, !tbaa !0
  %183 = load i32* %7, align 4, !tbaa !0
  %184 = trunc i64 %indvars.iv.next.i508515 to i32
  %mul.i507 = mul nsw i32 %183, %184
  %add.i = add nsw i32 %mul.i507, %.pre63.i
  store i32 %add.i, i32* %arrayidx20.phi.trans.insert.i, align 4, !tbaa !0
  %indvars.iv.next.i508 = add i64 %indvars.iv.next.i508515, 1
  %185 = load i32* %6, align 4, !tbaa !0
  %186 = trunc i64 %indvars.iv.next.i508 to i32
  %cmp12.i = icmp slt i32 %186, %185
  br i1 %cmp12.i, label %for.body13.for.body13_crit_edge.i, label %for.cond11.for.inc28_crit_edge.i

for.cond11.for.inc28_crit_edge.i:                 ; preds = %for.body13.for.body13_crit_edge.i, %for.body13.i.preheader
  %.pre62.i = load i32* %5, align 4, !tbaa !0
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.cond11.for.inc28_crit_edge.i, %for.cond11.preheader.i
  %187 = phi i32 [ %.pre62.i, %for.cond11.for.inc28_crit_edge.i ], [ %178, %for.cond11.preheader.i ]
  %indvars.iv.next59.i = add i64 %indvars.iv58.i, 1
  %188 = trunc i64 %indvars.iv.next59.i to i32
  %cmp5.i = icmp slt i32 %188, %187
  br i1 %cmp5.i, label %land.rhs.i, label %for.inc31.i.loopexit

for.inc31.i.loopexit:                             ; preds = %for.inc28.i, %land.rhs.i
  %.ph = phi i32 [ %178, %land.rhs.i ], [ %187, %for.inc28.i ]
  %.pre582 = load i32* %r5, align 4, !tbaa !0
  br label %for.inc31.i

for.inc31.i:                                      ; preds = %for.inc31.i.loopexit, %for.cond2.preheader.i
  %189 = phi i32 [ %174, %for.cond2.preheader.i ], [ %.pre582, %for.inc31.i.loopexit ]
  %190 = phi i32 [ %175, %for.cond2.preheader.i ], [ %.ph, %for.inc31.i.loopexit ]
  %indvars.iv.next61.i = add i64 %indvars.iv60.i, 1
  %191 = trunc i64 %indvars.iv.next61.i to i32
  %cmp.i509 = icmp slt i32 %191, %189
  br i1 %cmp.i509, label %for.cond2.preheader.i, label %subvq_map_linearize.exit

subvq_map_linearize.exit:                         ; preds = %for.cond.preheader.i, %for.inc31.i, %subvq_map_compact.exit
  store i32 0, i32* %n, align 4, !tbaa !0
  br i1 %cmp63549, label %for.body313.lr.ph, label %for.end328

for.body313.lr.ph:                                ; preds = %subvq_map_linearize.exit
  %192 = load %struct.vector_gautbl_t** %27, align 8, !tbaa !3
  br label %for.body313

for.body313:                                      ; preds = %for.inc326, %for.body313.lr.ph
  %193 = phi i32 [ 0, %for.body313.lr.ph ], [ %195, %for.inc326 ]
  %indvars.iv = phi i64 [ 0, %for.body313.lr.ph ], [ %indvars.iv.next, %for.inc326 ]
  %veclen317 = getelementptr inbounds %struct.vector_gautbl_t* %192, i64 %indvars.iv, i32 1
  %194 = load i32* %veclen317, align 4, !tbaa !0
  %cmp318 = icmp sgt i32 %194, %193
  br i1 %cmp318, label %if.then320, label %for.inc326

if.then320:                                       ; preds = %for.body313
  store i32 %194, i32* %n, align 4, !tbaa !0
  br label %for.inc326

for.inc326:                                       ; preds = %for.body313, %if.then320
  %195 = phi i32 [ %193, %for.body313 ], [ %194, %if.then320 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %20
  br i1 %exitcond, label %for.end328, label %for.body313

for.end328:                                       ; preds = %for.inc326, %subvq_map_linearize.exit
  %196 = phi i32 [ 0, %subvq_map_linearize.exit ], [ %195, %for.inc326 ]
  %conv329 = sext i32 %196 to i64
  %call330 = call i8* @__ckd_calloc__(i64 %conv329, i64 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 330) #5
  %197 = bitcast i8* %call330 to float*
  %subvec = getelementptr inbounds i8* %call1, i64 40
  %198 = bitcast i8* %subvec to float**
  store float* %197, float** %198, align 8, !tbaa !3
  %199 = load i32* %6, align 4, !tbaa !0
  %200 = load i32* %7, align 4, !tbaa !0
  %call333 = call i8** @__ckd_calloc_2d__(i32 %199, i32 %200, i32 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 331) #5
  %201 = bitcast i8** %call333 to i32**
  %vqdist = getelementptr inbounds i8* %call1, i64 48
  %202 = bitcast i8* %vqdist to i32***
  store i32** %201, i32*** %202, align 8, !tbaa !3
  %203 = load i32* %5, align 4, !tbaa !0
  %conv336 = sext i32 %203 to i64
  %call337 = call i8* @__ckd_calloc__(i64 %conv336, i64 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 332) #5
  %204 = bitcast i8* %call337 to i32*
  %gauscore = getelementptr inbounds i8* %call1, i64 56
  %205 = bitcast i8* %gauscore to i32**
  store i32* %204, i32** %205, align 8, !tbaa !3
  %206 = load i32* %5, align 4, !tbaa !0
  %add = add nsw i32 %206, 1
  %conv340 = sext i32 %add to i64
  %call341 = call i8* @__ckd_calloc__(i64 %conv340, i64 4, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 333) #5
  %207 = bitcast i8* %call341 to i32*
  %mgau_sl = getelementptr inbounds i8* %call1, i64 64
  %208 = bitcast i8* %mgau_sl to i32**
  store i32* %207, i32** %208, align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 16384, i8* %0) #1
  ret %struct.subvq_t* %4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @cmd_ln_access(i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #2

; Function Attrs: optsize
declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @vector_gautbl_alloc(%struct.vector_gautbl_t*, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @subvq_mgau_shortlist(%struct.subvq_t* nocapture %vq, i32 %m, i32 %n, i32 %beam) #0 {
entry:
  %vqdist1 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 7
  %0 = load i32*** %vqdist1, align 8, !tbaa !3
  %1 = load i32** %0, align 8, !tbaa !3
  %gauscore2 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 8
  %2 = load i32** %gauscore2, align 8, !tbaa !3
  %mgau_sl = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 9
  %3 = load i32** %mgau_sl, align 8, !tbaa !3
  %idxprom = sext i32 %m to i64
  %map3 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 5
  %4 = load i32**** %map3, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32*** %4, i64 %idxprom
  %5 = load i32*** %arrayidx4, align 8, !tbaa !3
  %6 = load i32** %5, align 8, !tbaa !3
  %n_sv = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 1
  %7 = load i32* %n_sv, align 4, !tbaa !0
  switch i32 %7, label %for.cond68.preheader [
    i32 3, label %for.cond.preheader
    i32 2, label %for.cond35.preheader
    i32 1, label %for.cond54.preheader
  ]

for.cond54.preheader:                             ; preds = %entry
  %cmp55203 = icmp sgt i32 %n, 0
  br i1 %cmp55203, label %for.body56, label %for.end104

for.cond35.preheader:                             ; preds = %entry
  %cmp36197 = icmp sgt i32 %n, 0
  br i1 %cmp36197, label %for.body37, label %for.end104

for.cond.preheader:                               ; preds = %entry
  %cmp191 = icmp sgt i32 %n, 0
  br i1 %cmp191, label %for.body, label %for.end104

for.cond68.preheader:                             ; preds = %entry
  %cmp69185 = icmp sgt i32 %n, 0
  br i1 %cmp69185, label %for.cond71.preheader, label %for.end104

for.body:                                         ; preds = %for.cond.preheader, %if.end28
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %if.end28 ], [ 0, %for.cond.preheader ]
  %map.0194 = phi i32* [ %map.1, %if.end28 ], [ %6, %for.cond.preheader ]
  %bv.0192 = phi i32 [ %v.0.bv.0, %if.end28 ], [ -2147483648, %for.cond.preheader ]
  %8 = load i32* @VQ_EVAL, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32* %map.0194, align 4, !tbaa !0
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7
  %10 = load i32* %arrayidx8, align 4, !tbaa !0
  br label %if.end28

if.else:                                          ; preds = %for.body
  %cmp9 = icmp eq i32 %8, 2
  %incdec.ptr = getelementptr inbounds i32* %map.0194, i64 1
  %11 = load i32* %map.0194, align 4, !tbaa !0
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i32* %1, i64 %idxprom11
  %12 = load i32* %arrayidx12, align 4, !tbaa !0
  br i1 %cmp9, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.else
  %13 = load i32* %incdec.ptr, align 4, !tbaa !0
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds i32* %1, i64 %idxprom13
  %14 = load i32* %arrayidx14, align 4, !tbaa !0
  %mul = shl i32 %14, 1
  %add = add nsw i32 %mul, %12
  br label %if.end28

if.else16:                                        ; preds = %if.else
  %incdec.ptr20 = getelementptr inbounds i32* %map.0194, i64 2
  %15 = load i32* %incdec.ptr, align 4, !tbaa !0
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds i32* %1, i64 %idxprom21
  %16 = load i32* %arrayidx22, align 4, !tbaa !0
  %add23 = add nsw i32 %16, %12
  %17 = load i32* %incdec.ptr20, align 4, !tbaa !0
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds i32* %1, i64 %idxprom25
  %18 = load i32* %arrayidx26, align 4, !tbaa !0
  %add27 = add nsw i32 %add23, %18
  br label %if.end28

if.end28:                                         ; preds = %if.then10, %if.else16, %if.then
  %v.0 = phi i32 [ %10, %if.then ], [ %add, %if.then10 ], [ %add27, %if.else16 ]
  %map.1 = getelementptr inbounds i32* %map.0194, i64 3
  %arrayidx30 = getelementptr inbounds i32* %2, i64 %indvars.iv213
  store i32 %v.0, i32* %arrayidx30, align 4, !tbaa !0
  %cmp31 = icmp slt i32 %bv.0192, %v.0
  %v.0.bv.0 = select i1 %cmp31, i32 %v.0, i32 %bv.0192
  %indvars.iv.next214 = add i64 %indvars.iv213, 1
  %lftr.wideiv215 = trunc i64 %indvars.iv.next214 to i32
  %exitcond216 = icmp eq i32 %lftr.wideiv215, %n
  br i1 %exitcond216, label %sw.epilog, label %for.body

for.body37:                                       ; preds = %for.cond35.preheader, %for.body37
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %for.body37 ], [ 0, %for.cond35.preheader ]
  %map.2200 = phi i32* [ %incdec.ptr41, %for.body37 ], [ %6, %for.cond35.preheader ]
  %bv.2198 = phi i32 [ %add44.bv.2, %for.body37 ], [ -2147483648, %for.cond35.preheader ]
  %incdec.ptr38 = getelementptr inbounds i32* %map.2200, i64 1
  %19 = load i32* %map.2200, align 4, !tbaa !0
  %idxprom39 = sext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds i32* %1, i64 %idxprom39
  %20 = load i32* %arrayidx40, align 4, !tbaa !0
  %incdec.ptr41 = getelementptr inbounds i32* %map.2200, i64 2
  %21 = load i32* %incdec.ptr38, align 4, !tbaa !0
  %idxprom42 = sext i32 %21 to i64
  %arrayidx43 = getelementptr inbounds i32* %1, i64 %idxprom42
  %22 = load i32* %arrayidx43, align 4, !tbaa !0
  %add44 = add nsw i32 %22, %20
  %arrayidx46 = getelementptr inbounds i32* %2, i64 %indvars.iv217
  store i32 %add44, i32* %arrayidx46, align 4, !tbaa !0
  %cmp47 = icmp slt i32 %bv.2198, %add44
  %add44.bv.2 = select i1 %cmp47, i32 %add44, i32 %bv.2198
  %indvars.iv.next218 = add i64 %indvars.iv217, 1
  %lftr.wideiv219 = trunc i64 %indvars.iv.next218 to i32
  %exitcond220 = icmp eq i32 %lftr.wideiv219, %n
  br i1 %exitcond220, label %sw.epilog, label %for.body37

for.body56:                                       ; preds = %for.cond54.preheader, %for.body56
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %for.body56 ], [ 0, %for.cond54.preheader ]
  %map.3206 = phi i32* [ %incdec.ptr57, %for.body56 ], [ %6, %for.cond54.preheader ]
  %bv.4204 = phi i32 [ %.bv.4, %for.body56 ], [ -2147483648, %for.cond54.preheader ]
  %incdec.ptr57 = getelementptr inbounds i32* %map.3206, i64 1
  %23 = load i32* %map.3206, align 4, !tbaa !0
  %idxprom58 = sext i32 %23 to i64
  %arrayidx59 = getelementptr inbounds i32* %1, i64 %idxprom58
  %24 = load i32* %arrayidx59, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %2, i64 %indvars.iv221
  store i32 %24, i32* %arrayidx61, align 4, !tbaa !0
  %cmp62 = icmp slt i32 %bv.4204, %24
  %.bv.4 = select i1 %cmp62, i32 %24, i32 %bv.4204
  %indvars.iv.next222 = add i64 %indvars.iv221, 1
  %lftr.wideiv223 = trunc i64 %indvars.iv.next222 to i32
  %exitcond224 = icmp eq i32 %lftr.wideiv223, %n
  br i1 %exitcond224, label %sw.epilog, label %for.body56

for.cond71.preheader:                             ; preds = %for.cond68.preheader, %for.end81.for.cond71.preheader_crit_edge
  %25 = phi i32 [ %.pre, %for.end81.for.cond71.preheader_crit_edge ], [ %7, %for.cond68.preheader ]
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %for.end81.for.cond71.preheader_crit_edge ], [ 0, %for.cond68.preheader ]
  %map.4188 = phi i32* [ %map.5.lcssa, %for.end81.for.cond71.preheader_crit_edge ], [ %6, %for.cond68.preheader ]
  %bv.6186 = phi i32 [ %v.1.bv.6, %for.end81.for.cond71.preheader_crit_edge ], [ -2147483648, %for.cond68.preheader ]
  %cmp73179 = icmp sgt i32 %25, 0
  br i1 %cmp73179, label %for.body74.lr.ph, label %for.end81

for.body74.lr.ph:                                 ; preds = %for.cond71.preheader
  %26 = icmp sgt i32 %25, 1
  %.op = add i32 %25, -1
  %27 = zext i32 %.op to i64
  br label %for.body74

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %sv_id.0182 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc80, %for.body74 ]
  %map.5181 = phi i32* [ %map.4188, %for.body74.lr.ph ], [ %incdec.ptr75, %for.body74 ]
  %v.1180 = phi i32 [ 0, %for.body74.lr.ph ], [ %add78, %for.body74 ]
  %incdec.ptr75 = getelementptr inbounds i32* %map.5181, i64 1
  %28 = load i32* %map.5181, align 4, !tbaa !0
  %idxprom76 = sext i32 %28 to i64
  %arrayidx77 = getelementptr inbounds i32* %1, i64 %idxprom76
  %29 = load i32* %arrayidx77, align 4, !tbaa !0
  %add78 = add nsw i32 %29, %v.1180
  %inc80 = add nsw i32 %sv_id.0182, 1
  %cmp73 = icmp slt i32 %inc80, %25
  br i1 %cmp73, label %for.body74, label %for.cond71.for.end81_crit_edge

for.cond71.for.end81_crit_edge:                   ; preds = %for.body74
  %.op225 = add i64 %27, 1
  %scevgep.sum = select i1 %26, i64 %.op225, i64 1
  %scevgep208 = getelementptr i32* %map.4188, i64 %scevgep.sum
  br label %for.end81

for.end81:                                        ; preds = %for.cond71.for.end81_crit_edge, %for.cond71.preheader
  %map.5.lcssa = phi i32* [ %scevgep208, %for.cond71.for.end81_crit_edge ], [ %map.4188, %for.cond71.preheader ]
  %v.1.lcssa = phi i32 [ %add78, %for.cond71.for.end81_crit_edge ], [ 0, %for.cond71.preheader ]
  %arrayidx83 = getelementptr inbounds i32* %2, i64 %indvars.iv209
  store i32 %v.1.lcssa, i32* %arrayidx83, align 4, !tbaa !0
  %cmp84 = icmp slt i32 %bv.6186, %v.1.lcssa
  %v.1.bv.6 = select i1 %cmp84, i32 %v.1.lcssa, i32 %bv.6186
  %indvars.iv.next210 = add i64 %indvars.iv209, 1
  %lftr.wideiv211 = trunc i64 %indvars.iv.next210 to i32
  %exitcond212 = icmp eq i32 %lftr.wideiv211, %n
  br i1 %exitcond212, label %sw.epilog, label %for.end81.for.cond71.preheader_crit_edge

for.end81.for.cond71.preheader_crit_edge:         ; preds = %for.end81
  %.pre = load i32* %n_sv, align 4, !tbaa !0
  br label %for.cond71.preheader

sw.epilog:                                        ; preds = %for.body56, %for.body37, %if.end28, %for.end81
  %bv.8 = phi i32 [ %v.1.bv.6, %for.end81 ], [ %v.0.bv.0, %if.end28 ], [ %add44.bv.2, %for.body37 ], [ %.bv.4, %for.body56 ]
  %add90 = add nsw i32 %bv.8, %beam
  %cmp92176 = icmp sgt i32 %n, 0
  br i1 %cmp92176, label %for.body93, label %for.end104

for.body93:                                       ; preds = %sw.epilog, %for.inc102
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc102 ], [ 0, %sw.epilog ]
  %nc.0177 = phi i32 [ %nc.1, %for.inc102 ], [ 0, %sw.epilog ]
  %arrayidx95 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %30 = load i32* %arrayidx95, align 4, !tbaa !0
  %cmp96 = icmp slt i32 %30, %add90
  br i1 %cmp96, label %for.inc102, label %if.then97

if.then97:                                        ; preds = %for.body93
  %inc98 = add nsw i32 %nc.0177, 1
  %idxprom99 = sext i32 %nc.0177 to i64
  %arrayidx100 = getelementptr inbounds i32* %3, i64 %idxprom99
  %31 = trunc i64 %indvars.iv to i32
  store i32 %31, i32* %arrayidx100, align 4, !tbaa !0
  br label %for.inc102

for.inc102:                                       ; preds = %for.body93, %if.then97
  %nc.1 = phi i32 [ %inc98, %if.then97 ], [ %nc.0177, %for.body93 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end104, label %for.body93

for.end104:                                       ; preds = %for.cond68.preheader, %for.cond.preheader, %for.cond35.preheader, %for.cond54.preheader, %for.inc102, %sw.epilog
  %nc.0.lcssa = phi i32 [ 0, %sw.epilog ], [ %nc.1, %for.inc102 ], [ 0, %for.cond54.preheader ], [ 0, %for.cond35.preheader ], [ 0, %for.cond.preheader ], [ 0, %for.cond68.preheader ]
  %idxprom105 = sext i32 %nc.0.lcssa to i64
  %arrayidx106 = getelementptr inbounds i32* %3, i64 %idxprom105
  store i32 -1, i32* %arrayidx106, align 4, !tbaa !0
  ret i32 %nc.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @subvq_subvec_eval_logs3(%struct.subvq_t* nocapture %vq, float* nocapture %feat, i32 %s) #0 {
entry:
  %idxprom = sext i32 %s to i64
  %featdim1 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 3
  %0 = load i32*** %featdim1, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32** %0, i64 %idxprom
  %1 = load i32** %arrayidx, align 8, !tbaa !3
  %gautbl = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 4
  %2 = load %struct.vector_gautbl_t** %gautbl, align 8, !tbaa !3
  %veclen28 = getelementptr inbounds %struct.vector_gautbl_t* %2, i64 %idxprom, i32 1
  %3 = load i32* %veclen28, align 4, !tbaa !0
  %cmp29 = icmp sgt i32 %3, 0
  %subvec = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 6
  %4 = load float** %subvec, align 8, !tbaa !3
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx5 = getelementptr inbounds i32* %1, i64 %indvars.iv
  %5 = load i32* %arrayidx5, align 4, !tbaa !0
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds float* %feat, i64 %idxprom6
  %6 = load float* %arrayidx7, align 4, !tbaa !4
  %arrayidx9 = getelementptr inbounds float* %4, i64 %indvars.iv
  store float %6, float* %arrayidx9, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %7, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.body
  %arrayidx3 = getelementptr inbounds %struct.vector_gautbl_t* %2, i64 %idxprom
  %vqsize = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 2
  %8 = load i32* %vqsize, align 4, !tbaa !0
  %vqdist = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 7
  %9 = load i32*** %vqdist, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32** %9, i64 %idxprom
  %10 = load i32** %arrayidx15, align 8, !tbaa !3
  tail call void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t* %arrayidx3, i32 0, i32 %8, float* %4, i32* %10) #5
  ret void
}

; Function Attrs: optsize
declare void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t*, i32, i32, float*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @subvq_gautbl_eval_logs3(%struct.subvq_t* nocapture %vq, float* nocapture %feat) #0 {
entry:
  %n_sv = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 1
  %0 = load i32* %n_sv, align 4, !tbaa !0
  %cmp43 = icmp sgt i32 %0, 0
  br i1 %cmp43, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %featdim1 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 3
  %gautbl = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 4
  %vqsize = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 2
  %subvec17 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 6
  %vqdist = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc20, %for.body.lr.ph
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %16, %for.inc20 ]
  %indvars.iv45 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next46, %for.inc20 ]
  %2 = load i32*** %featdim1, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32** %2, i64 %indvars.iv45
  %3 = load i32** %arrayidx, align 8, !tbaa !3
  %4 = load %struct.vector_gautbl_t** %gautbl, align 8, !tbaa !3
  %veclen40 = getelementptr inbounds %struct.vector_gautbl_t* %4, i64 %indvars.iv45, i32 1
  %5 = load i32* %veclen40, align 4, !tbaa !0
  %cmp541 = icmp sgt i32 %5, 0
  br i1 %cmp541, label %for.body6.lr.ph, label %for.end

for.body6.lr.ph:                                  ; preds = %for.body
  %6 = load float** %subvec17, align 8, !tbaa !3
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx8 = getelementptr inbounds i32* %3, i64 %indvars.iv
  %7 = load i32* %arrayidx8, align 4, !tbaa !0
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds float* %feat, i64 %idxprom9
  %8 = load float* %arrayidx10, align 4, !tbaa !4
  %arrayidx12 = getelementptr inbounds float* %6, i64 %indvars.iv
  store float %8, float* %arrayidx12, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %9, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.end:                                          ; preds = %for.body6, %for.body
  %10 = load i32* @VQ_EVAL, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv45 to i32
  %cmp13 = icmp slt i32 %11, %10
  br i1 %cmp13, label %if.then, label %for.inc20

if.then:                                          ; preds = %for.end
  %arrayidx4.lcssa = getelementptr inbounds %struct.vector_gautbl_t* %4, i64 %indvars.iv45
  %12 = load i32* %vqsize, align 4, !tbaa !0
  %13 = load float** %subvec17, align 8, !tbaa !3
  %14 = load i32*** %vqdist, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32** %14, i64 %indvars.iv45
  %15 = load i32** %arrayidx19, align 8, !tbaa !3
  tail call void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t* %arrayidx4.lcssa, i32 0, i32 %12, float* %13, i32* %15) #5
  %.pre = load i32* %n_sv, align 4, !tbaa !0
  br label %for.inc20

for.inc20:                                        ; preds = %for.end, %if.then
  %16 = phi i32 [ %1, %for.end ], [ %.pre, %if.then ]
  %indvars.iv.next46 = add i64 %indvars.iv45, 1
  %17 = trunc i64 %indvars.iv.next46 to i32
  %cmp = icmp slt i32 %17, %16
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc20, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @subvq_frame_eval(%struct.subvq_t* %vq, %struct.mgau_model_t* %g, i32 %beam, float* %feat, i32* %sen_active, i32* nocapture %senscr) #0 {
entry:
  %tobool = icmp eq %struct.subvq_t* %vq, null
  br i1 %tobool, label %for.cond.preheader, label %if.else18

for.cond.preheader:                               ; preds = %entry
  %n_mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %0 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp117 = icmp sgt i32 %0, 0
  br i1 %cmp117, label %for.body.lr.ph, label %for.end62

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool1 = icmp eq i32* %sen_active, null
  %mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv133 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next134, %for.inc ]
  %ng.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %ng.1, %for.inc ]
  %ns.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %ns.1, %for.inc ]
  %best.0119 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %best.2, %for.inc ]
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %sen_active, i64 %indvars.iv133
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool2 = icmp eq i32 %1, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %for.body
  %2 = trunc i64 %indvars.iv133 to i32
  %call = tail call i32 @mgau_eval(%struct.mgau_model_t* %g, i32 %2, i32* null, float* %feat) #5
  %arrayidx5 = getelementptr inbounds i32* %senscr, i64 %indvars.iv133
  store i32 %call, i32* %arrayidx5, align 4, !tbaa !0
  %cmp8 = icmp slt i32 %best.0119, %call
  %call.best.0 = select i1 %cmp8, i32 %call, i32 %best.0119
  %inc = add nsw i32 %ns.0120, 1
  %3 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %n_comp = getelementptr inbounds %struct.mgau_t* %3, i64 %indvars.iv133, i32 0
  %4 = load i32* %n_comp, align 4, !tbaa !0
  %add = add nsw i32 %4, %ng.0121
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr inbounds i32* %senscr, i64 %indvars.iv133
  store i32 -939524096, i32* %arrayidx15, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else
  %best.2 = phi i32 [ %call.best.0, %if.then3 ], [ %best.0119, %if.else ]
  %ns.1 = phi i32 [ %inc, %if.then3 ], [ %ns.0120, %if.else ]
  %ng.1 = phi i32 [ %add, %if.then3 ], [ %ng.0121, %if.else ]
  %indvars.iv.next134 = add i64 %indvars.iv133, 1
  %5 = load i32* %n_mgau, align 4, !tbaa !0
  %6 = trunc i64 %indvars.iv.next134 to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %if.end53

if.else18:                                        ; preds = %entry
  tail call void @subvq_gautbl_eval_logs3(%struct.subvq_t* %vq, float* %feat) #7
  %n_mgau20 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %7 = load i32* %n_mgau20, align 4, !tbaa !0
  %cmp21125 = icmp sgt i32 %7, 0
  br i1 %cmp21125, label %for.body22.lr.ph, label %for.end62

for.body22.lr.ph:                                 ; preds = %if.else18
  %tobool23 = icmp eq i32* %sen_active, null
  %mgau30 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %mgau_sl = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 9
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc50
  %indvars.iv135 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next136, %for.inc50 ]
  %ng.2129 = phi i32 [ 0, %for.body22.lr.ph ], [ %ng.3, %for.inc50 ]
  %ns.2128 = phi i32 [ 0, %for.body22.lr.ph ], [ %ns.3, %for.inc50 ]
  %best.3127 = phi i32 [ -2147483648, %for.body22.lr.ph ], [ %best.5, %for.inc50 ]
  br i1 %tobool23, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %for.body22
  %arrayidx26 = getelementptr inbounds i32* %sen_active, i64 %indvars.iv135
  %8 = load i32* %arrayidx26, align 4, !tbaa !0
  %tobool27 = icmp eq i32 %8, 0
  br i1 %tobool27, label %if.else46, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false24, %for.body22
  %9 = load %struct.mgau_t** %mgau30, align 8, !tbaa !3
  %n_comp32 = getelementptr inbounds %struct.mgau_t* %9, i64 %indvars.iv135, i32 0
  %10 = load i32* %n_comp32, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv135 to i32
  %call33 = tail call i32 @subvq_mgau_shortlist(%struct.subvq_t* %vq, i32 %11, i32 %10, i32 %beam) #7
  %add34 = add nsw i32 %call33, %ng.2129
  %12 = load i32** %mgau_sl, align 8, !tbaa !3
  %call35 = tail call i32 @mgau_eval(%struct.mgau_model_t* %g, i32 %11, i32* %12, float* %feat) #5
  %arrayidx37 = getelementptr inbounds i32* %senscr, i64 %indvars.iv135
  store i32 %call35, i32* %arrayidx37, align 4, !tbaa !0
  %cmp40 = icmp slt i32 %best.3127, %call35
  %call35.best.3 = select i1 %cmp40, i32 %call35, i32 %best.3127
  %inc45 = add nsw i32 %ns.2128, 1
  br label %for.inc50

if.else46:                                        ; preds = %lor.lhs.false24
  %arrayidx48 = getelementptr inbounds i32* %senscr, i64 %indvars.iv135
  store i32 -939524096, i32* %arrayidx48, align 4, !tbaa !0
  br label %for.inc50

for.inc50:                                        ; preds = %if.then28, %if.else46
  %best.5 = phi i32 [ %call35.best.3, %if.then28 ], [ %best.3127, %if.else46 ]
  %ns.3 = phi i32 [ %inc45, %if.then28 ], [ %ns.2128, %if.else46 ]
  %ng.3 = phi i32 [ %add34, %if.then28 ], [ %ng.2129, %if.else46 ]
  %indvars.iv.next136 = add i64 %indvars.iv135, 1
  %13 = load i32* %n_mgau20, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next136 to i32
  %cmp21 = icmp slt i32 %14, %13
  br i1 %cmp21, label %for.body22, label %if.end53

if.end53:                                         ; preds = %for.inc50, %for.inc
  %15 = phi i32 [ %5, %for.inc ], [ %13, %for.inc50 ]
  %best.6 = phi i32 [ %best.2, %for.inc ], [ %best.5, %for.inc50 ]
  %ns.4 = phi i32 [ %ns.1, %for.inc ], [ %ns.3, %for.inc50 ]
  %ng.4 = phi i32 [ %ng.1, %for.inc ], [ %ng.3, %for.inc50 ]
  %n_mgau55 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %cmp56115 = icmp sgt i32 %15, 0
  br i1 %cmp56115, label %for.body57, label %for.end62

for.body57:                                       ; preds = %if.end53, %for.body57
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body57 ], [ 0, %if.end53 ]
  %arrayidx59 = getelementptr inbounds i32* %senscr, i64 %indvars.iv
  %16 = load i32* %arrayidx59, align 4, !tbaa !0
  %sub = sub nsw i32 %16, %best.6
  store i32 %sub, i32* %arrayidx59, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = load i32* %n_mgau55, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp56 = icmp slt i32 %18, %17
  br i1 %cmp56, label %for.body57, label %for.end62

for.end62:                                        ; preds = %if.else18, %for.cond.preheader, %for.body57, %if.end53
  %ng.4141 = phi i32 [ %ng.4, %if.end53 ], [ %ng.4, %for.body57 ], [ 0, %for.cond.preheader ], [ 0, %if.else18 ]
  %ns.4140 = phi i32 [ %ns.4, %if.end53 ], [ %ns.4, %for.body57 ], [ 0, %for.cond.preheader ], [ 0, %if.else18 ]
  %best.6139 = phi i32 [ %best.6, %if.end53 ], [ %best.6, %for.body57 ], [ -2147483648, %for.cond.preheader ], [ -2147483648, %if.else18 ]
  %frm_sen_eval = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 5
  store i32 %ns.4140, i32* %frm_sen_eval, align 4, !tbaa !0
  %frm_gau_eval = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 6
  store i32 %ng.4141, i32* %frm_gau_eval, align 4, !tbaa !0
  ret i32 %best.6139
}

; Function Attrs: optsize
declare i32 @mgau_eval(%struct.mgau_model_t*, i32, i32*, float*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @subvq_mgau_eval(%struct.mgau_model_t* nocapture %g, %struct.subvq_t* nocapture %vq, i32 %m, i32 %n, i32* %active) #0 {
entry:
  %call = tail call double @log_to_logs3_factor() #5
  %vqdist1 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 7
  %0 = load i32*** %vqdist1, align 8, !tbaa !3
  %1 = load i32** %0, align 8, !tbaa !3
  %idxprom = sext i32 %m to i64
  %mgau2 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %2 = load %struct.mgau_t** %mgau2, align 8, !tbaa !3
  %map5 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 5
  %3 = load i32**** %map5, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32*** %3, i64 %idxprom
  %4 = load i32*** %arrayidx6, align 8, !tbaa !3
  %5 = load i32** %4, align 8, !tbaa !3
  %tobool = icmp eq i32* %active, null
  br i1 %tobool, label %for.cond.preheader, label %for.cond20

for.cond.preheader:                               ; preds = %entry
  %cmp98 = icmp sgt i32 %n, 0
  br i1 %cmp98, label %for.cond8.preheader.lr.ph, label %if.then59

for.cond8.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %n_sv = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 1
  %mixw = getelementptr inbounds %struct.mgau_t* %2, i64 %idxprom, i32 4
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.end, %for.cond8.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader.lr.ph ], [ %indvars.iv.next, %for.end ]
  %map.0101 = phi i32* [ %5, %for.cond8.preheader.lr.ph ], [ %map.1.lcssa, %for.end ]
  %score.0100 = phi i32 [ -939524096, %for.cond8.preheader.lr.ph ], [ %call16, %for.end ]
  %6 = load i32* %n_sv, align 4, !tbaa !0
  %cmp993 = icmp sgt i32 %6, 0
  br i1 %cmp993, label %for.body10.lr.ph, label %for.end

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %7 = icmp sgt i32 %6, 1
  %.op125 = add i32 %6, -1
  %8 = zext i32 %.op125 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %map.196 = phi i32* [ %map.0101, %for.body10.lr.ph ], [ %incdec.ptr, %for.body10 ]
  %sv_id.095 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %v.094 = phi i32 [ 0, %for.body10.lr.ph ], [ %add, %for.body10 ]
  %incdec.ptr = getelementptr inbounds i32* %map.196, i64 1
  %9 = load i32* %map.196, align 4, !tbaa !0
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds i32* %1, i64 %idxprom11
  %10 = load i32* %arrayidx12, align 4, !tbaa !0
  %add = add nsw i32 %10, %v.094
  %inc = add nsw i32 %sv_id.095, 1
  %cmp9 = icmp slt i32 %inc, %6
  br i1 %cmp9, label %for.body10, label %for.cond8.for.end_crit_edge

for.cond8.for.end_crit_edge:                      ; preds = %for.body10
  %.op126 = add i64 %8, 1
  %scevgep.sum = select i1 %7, i64 %.op126, i64 1
  %scevgep117 = getelementptr i32* %map.0101, i64 %scevgep.sum
  br label %for.end

for.end:                                          ; preds = %for.cond8.for.end_crit_edge, %for.cond8.preheader
  %map.1.lcssa = phi i32* [ %scevgep117, %for.cond8.for.end_crit_edge ], [ %map.0101, %for.cond8.preheader ]
  %v.0.lcssa = phi i32 [ %add, %for.cond8.for.end_crit_edge ], [ 0, %for.cond8.preheader ]
  %11 = load i32** %mixw, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx14, align 4, !tbaa !0
  %add15 = add nsw i32 %12, %v.0.lcssa
  %call16 = tail call i32 @logs3_add(i32 %score.0100, i32 %add15) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.cond8.preheader

for.cond20:                                       ; preds = %entry, %for.cond20
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.cond20 ], [ 0, %entry ]
  %arrayidx22 = getelementptr inbounds i32* %active, i64 %indvars.iv123
  %13 = load i32* %arrayidx22, align 4, !tbaa !0
  %cmp23 = icmp sgt i32 %13, -1
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  br i1 %cmp23, label %for.cond20, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond20
  %14 = load i32* %active, align 4, !tbaa !0
  %cmp33110 = icmp sgt i32 %14, -1
  br i1 %cmp33110, label %for.body34.lr.ph, label %if.then59

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %n_sv37 = getelementptr inbounds %struct.subvq_t* %vq, i64 0, i32 1
  %mixw51 = getelementptr inbounds %struct.mgau_t* %2, i64 %idxprom, i32 4
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.end48
  %indvars.iv121 = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next122, %for.end48 ]
  %15 = phi i32 [ %14, %for.body34.lr.ph ], [ %25, %for.end48 ]
  %map.2114 = phi i32* [ %5, %for.body34.lr.ph ], [ %map.3.lcssa, %for.end48 ]
  %last_active.0113 = phi i32 [ 0, %for.body34.lr.ph ], [ %add49, %for.end48 ]
  %score.1112 = phi i32 [ -939524096, %for.body34.lr.ph ], [ %call54, %for.end48 ]
  %sub = sub i32 %15, %last_active.0113
  %16 = load i32* %n_sv37, align 4, !tbaa !0
  %mul = mul i32 %16, %sub
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32* %map.2114, i64 %idx.ext
  %cmp40103 = icmp sgt i32 %16, 0
  br i1 %cmp40103, label %for.body41.lr.ph, label %for.end48

for.body41.lr.ph:                                 ; preds = %for.body34
  %17 = icmp sgt i32 %16, 1
  %.op = add i32 %16, -1
  %18 = zext i32 %.op to i64
  %19 = select i1 %17, i64 %18, i64 0
  %20 = add i64 %idx.ext, %19
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %map.3106 = phi i32* [ %add.ptr, %for.body41.lr.ph ], [ %incdec.ptr42, %for.body41 ]
  %sv_id.1105 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc47, %for.body41 ]
  %v.1104 = phi i32 [ 0, %for.body41.lr.ph ], [ %add45, %for.body41 ]
  %incdec.ptr42 = getelementptr inbounds i32* %map.3106, i64 1
  %21 = load i32* %map.3106, align 4, !tbaa !0
  %idxprom43 = sext i32 %21 to i64
  %arrayidx44 = getelementptr inbounds i32* %1, i64 %idxprom43
  %22 = load i32* %arrayidx44, align 4, !tbaa !0
  %add45 = add nsw i32 %22, %v.1104
  %inc47 = add nsw i32 %sv_id.1105, 1
  %cmp40 = icmp slt i32 %inc47, %16
  br i1 %cmp40, label %for.body41, label %for.cond38.for.end48_crit_edge

for.cond38.for.end48_crit_edge:                   ; preds = %for.body41
  %scevgep118.sum = add i64 %20, 1
  %scevgep120 = getelementptr i32* %map.2114, i64 %scevgep118.sum
  br label %for.end48

for.end48:                                        ; preds = %for.cond38.for.end48_crit_edge, %for.body34
  %map.3.lcssa = phi i32* [ %scevgep120, %for.cond38.for.end48_crit_edge ], [ %add.ptr, %for.body34 ]
  %v.1.lcssa = phi i32 [ %add45, %for.cond38.for.end48_crit_edge ], [ 0, %for.body34 ]
  %add49 = add nsw i32 %15, 1
  %23 = load i32** %mixw51, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds i32* %23, i64 %indvars.iv121
  %24 = load i32* %arrayidx52, align 4, !tbaa !0
  %add53 = add nsw i32 %24, %v.1.lcssa
  %call54 = tail call i32 @logs3_add(i32 %score.1112, i32 %add53) #5
  %indvars.iv.next122 = add i64 %indvars.iv121, 1
  %arrayidx32 = getelementptr inbounds i32* %active, i64 %indvars.iv.next122
  %25 = load i32* %arrayidx32, align 4, !tbaa !0
  %cmp33 = icmp sgt i32 %25, -1
  br i1 %cmp33, label %for.body34, label %if.end

if.end:                                           ; preds = %for.end48, %for.end
  %score.2 = phi i32 [ %call16, %for.end ], [ %call54, %for.end48 ]
  %cmp58 = icmp eq i32 %score.2, -939524096
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.cond30.preheader, %for.cond.preheader, %if.end
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 576, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([36 x i8]* @.str36, i64 0, i64 0)) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end
  %score.2128 = phi i32 [ -939524096, %if.then59 ], [ %score.2, %if.end ]
  ret i32 %score.2128
}

; Function Attrs: optsize
declare double @log_to_logs3_factor() #2

; Function Attrs: optsize
declare i32 @logs3_add(i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @subvq_free(%struct.subvq_t* %s) #0 {
entry:
  %tobool = icmp eq %struct.subvq_t* %s, null
  br i1 %tobool, label %if.end35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_sv = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 1
  %0 = load i32* %n_sv, align 4, !tbaa !0
  %cmp57 = icmp sgt i32 %0, 0
  %featdim = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 3
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i32 [ %5, %for.inc ], [ %0, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = load i32*** %featdim, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32** %2, i64 %indvars.iv
  %3 = load i32** %arrayidx, align 8, !tbaa !3
  %tobool1 = icmp eq i32* %3, null
  br i1 %tobool1, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %4 = bitcast i32* %3 to i8*
  tail call void @ckd_free(i8* %4) #5
  %.pre = load i32* %n_sv, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then2
  %5 = phi i32 [ %1, %for.body ], [ %.pre, %if.then2 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.inc
  %7 = load i32*** %featdim, align 8, !tbaa !3
  %tobool7 = icmp eq i32** %7, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %for.end
  %8 = bitcast i32** %7 to i8*
  tail call void @ckd_free(i8* %8) #5
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then8
  %gautbl = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 4
  %9 = load %struct.vector_gautbl_t** %gautbl, align 8, !tbaa !3
  %tobool11 = icmp eq %struct.vector_gautbl_t* %9, null
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %10 = bitcast %struct.vector_gautbl_t* %9 to i8*
  tail call void @ckd_free(i8* %10) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.then12
  %map = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 5
  %11 = load i32**** %map, align 8, !tbaa !3
  %tobool15 = icmp eq i32*** %11, null
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  %12 = bitcast i32*** %11 to i8***
  tail call void @ckd_free_3d(i8*** %12) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.then16
  %subvec = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 6
  %13 = load float** %subvec, align 8, !tbaa !3
  %tobool19 = icmp eq float* %13, null
  br i1 %tobool19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  %14 = bitcast float* %13 to i8*
  tail call void @ckd_free(i8* %14) #5
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.then20
  %vqdist = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 7
  %15 = load i32*** %vqdist, align 8, !tbaa !3
  %tobool23 = icmp eq i32** %15, null
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end22
  %16 = bitcast i32** %15 to i8**
  tail call void @ckd_free_2d(i8** %16) #5
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.then24
  %gauscore = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 8
  %17 = load i32** %gauscore, align 8, !tbaa !3
  %tobool27 = icmp eq i32* %17, null
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %18 = bitcast i32* %17 to i8*
  tail call void @ckd_free(i8* %18) #5
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.then28
  %mgau_sl = getelementptr inbounds %struct.subvq_t* %s, i64 0, i32 9
  %19 = load i32** %mgau_sl, align 8, !tbaa !3
  %tobool31 = icmp eq i32* %19, null
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  %20 = bitcast i32* %19 to i8*
  tail call void @ckd_free(i8* %20) #5
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.then32
  %21 = bitcast %struct.subvq_t* %s to i8*
  tail call void @ckd_free(i8* %21) #5
  br label %if.end35

if.end35:                                         ; preds = %entry, %if.end34
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #2

; Function Attrs: optsize
declare void @ckd_free_3d(i8***) #2

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #2

; Function Attrs: optsize
declare void @vector_gautbl_var_floor(%struct.vector_gautbl_t*, double) #2

; Function Attrs: optsize
declare void @vector_gautbl_maha_precomp(%struct.vector_gautbl_t*) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
