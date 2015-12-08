; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/gs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_s = type { i32, i32, i32, i32, i32, i32, float**, i32***, %struct._IO_FILE*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/gs.c\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"fread failed\0A\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"Reading gaussian selector map: %s\0A\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"The number of mixtures of gaussian: %d\0A\00", align 1
@.str8 = private unnamed_addr constant [35 x i8] c"The number of features stream: %d\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"The number of density: %d\0A\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"The number of code word: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"The feature length: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"The number of byte to read: %d\0A\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Code idx: %d\0A\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str18 = private unnamed_addr constant [20 x i8] c"Cannot allocate gs\0A\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"gs_read(%s,rb) failed\0A\00", align 1
@.str20 = private unnamed_addr constant [65 x i8] c"No active gaussian found in senone %d, with num. component = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @gs_fread_int32(%struct.gs_s* nocapture %gs) #0 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  %fp = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 8
  %1 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1) #5
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 63, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32* %val, align 4, !tbaa !3
  ret i32 %2
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define float @gs_fread_float32(%struct.gs_s* nocapture %gs) #0 {
entry:
  %val = alloca float, align 4
  %0 = bitcast float* %val to i8*
  %fp = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 8
  %1 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1) #5
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 71, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load float* %val, align 4, !tbaa !4
  ret float %2
}

; Function Attrs: nounwind optsize uwtable
define void @gs_fread_bitvec_t(i32* nocapture %val, %struct.gs_s* nocapture %gs) #0 {
entry:
  %0 = bitcast i32* %val to i8*
  %n_mbyte = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 5
  %1 = load i32* %n_mbyte, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  %fp = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 8
  %2 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call = tail call i64 @fread(i8* %0, i64 %conv, i64 1, %struct._IO_FILE* %2) #5
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @gs_display(i8* %file, %struct.gs_s* nocapture %gs) #0 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 89, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i8* %file) #5
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 90) #5
  %0 = bitcast i8* %call to %struct.gs_s*
  %call2 = tail call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)) #5
  %fp = getelementptr inbounds i8* %call, i64 40
  %1 = bitcast i8* %fp to %struct._IO_FILE**
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %1, align 8, !tbaa !0
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 93, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0), i8* %file) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_mgau = bitcast i8* %call to i32*
  store i32 %call3, i32* %n_mgau, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 97, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %2 = load i32* %n_mgau, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i32 %2) #5
  %call5 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_feat = getelementptr inbounds i8* %call, i64 4
  %3 = bitcast i8* %n_feat to i32*
  store i32 %call5, i32* %3, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 99, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %4 = load i32* %3, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([35 x i8]* @.str8, i64 0, i64 0), i32 %4) #5
  %call7 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_density = getelementptr inbounds i8* %call, i64 12
  %5 = bitcast i8* %n_density to i32*
  store i32 %call7, i32* %5, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 101, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %6 = load i32* %5, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %6) #5
  %call9 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_code = getelementptr inbounds i8* %call, i64 8
  %7 = bitcast i8* %n_code to i32*
  store i32 %call9, i32* %7, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 103, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %8 = load i32* %7, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0), i32 %8) #5
  %call11 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_featlen = getelementptr inbounds i8* %call, i64 16
  %9 = bitcast i8* %n_featlen to i32*
  store i32 %call11, i32* %9, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 105, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %10 = load i32* %9, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0), i32 %10) #5
  %11 = load i32* %5, align 4, !tbaa !3
  %add = add nsw i32 %11, 31
  %shr = ashr i32 %add, 5
  %mul = shl nsw i32 %shr, 2
  %n_mbyte = getelementptr inbounds i8* %call, i64 20
  %12 = bitcast i8* %n_mbyte to i32*
  store i32 %mul, i32* %12, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 108, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %13 = load i32* %12, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %13) #5
  %14 = load i32* %5, align 4, !tbaa !3
  %add17 = add nsw i32 %14, 31
  %shr18 = ashr i32 %add17, 5
  %conv19 = sext i32 %shr18 to i64
  %call20 = tail call i8* @__ckd_calloc__(i64 %conv19, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 111) #5
  %15 = bitcast i8* %call20 to i32*
  %16 = load i32* %7, align 4, !tbaa !3
  %cmp22121 = icmp sgt i32 %16, 0
  br i1 %cmp22121, label %for.body, label %for.end67

for.body:                                         ; preds = %if.end, %for.inc65
  %code_id.0122 = phi i32 [ %inc66, %for.inc65 ], [ 0, %if.end ]
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i32 %code_id.0122) #5
  %17 = load i32* %9, align 4, !tbaa !3
  %cmp27113 = icmp sgt i32 %17, 0
  br i1 %cmp27113, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.body, %for.body29
  %c_id.0114 = phi i32 [ %inc, %for.body29 ], [ 0, %for.body ]
  %call30 = tail call float @gs_fread_float32(%struct.gs_s* %0) #6
  %conv31 = fpext float %call30 to double
  %call32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), double %conv31) #5
  %inc = add nsw i32 %c_id.0114, 1
  %18 = load i32* %9, align 4, !tbaa !3
  %cmp27 = icmp slt i32 %inc, %18
  br i1 %cmp27, label %for.body29, label %for.end

for.end:                                          ; preds = %for.body29, %for.body
  %putchar111 = tail call i32 @putchar(i32 10) #4
  %19 = load i32* %n_mgau, align 4, !tbaa !3
  %cmp36119 = icmp sgt i32 %19, 0
  br i1 %cmp36119, label %for.cond39.preheader.lr.ph, label %for.inc65

for.cond39.preheader.lr.ph:                       ; preds = %for.end
  %.pre = load i32* %3, align 4, !tbaa !3
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.cond39.preheader.lr.ph, %for.inc62
  %20 = phi i32 [ %19, %for.cond39.preheader.lr.ph ], [ %27, %for.inc62 ]
  %21 = phi i32 [ %.pre, %for.cond39.preheader.lr.ph ], [ %28, %for.inc62 ]
  %m_id.0120 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %inc63, %for.inc62 ]
  %cmp41117 = icmp sgt i32 %21, 0
  br i1 %cmp41117, label %for.body43, label %for.inc62

for.body43:                                       ; preds = %for.cond39.preheader, %for.end57
  %s_id.0118 = phi i32 [ %inc60, %for.end57 ], [ 0, %for.cond39.preheader ]
  tail call void @gs_fread_bitvec_t(i32* %15, %struct.gs_s* %0) #6
  %call44 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i32 %m_id.0120, i32 %s_id.0118) #5
  %22 = load i32* %5, align 4, !tbaa !3
  %cmp47115 = icmp sgt i32 %22, 0
  br i1 %cmp47115, label %for.body49, label %for.end57

for.body49:                                       ; preds = %for.body43, %for.inc55
  %23 = phi i32 [ %25, %for.inc55 ], [ %22, %for.body43 ]
  %i.0116 = phi i32 [ %inc56, %for.inc55 ], [ 0, %for.body43 ]
  %shr50 = ashr i32 %i.0116, 5
  %idxprom = sext i32 %shr50 to i64
  %arrayidx = getelementptr inbounds i32* %15, i64 %idxprom
  %24 = load i32* %arrayidx, align 4, !tbaa !3
  %and = and i32 %i.0116, 31
  %shl = shl i32 1, %and
  %and51 = and i32 %24, %shl
  %tobool = icmp eq i32 %and51, 0
  br i1 %tobool, label %for.inc55, label %if.then52

if.then52:                                        ; preds = %for.body49
  %call53 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i32 %i.0116) #5
  %.pre124 = load i32* %5, align 4, !tbaa !3
  br label %for.inc55

for.inc55:                                        ; preds = %for.body49, %if.then52
  %25 = phi i32 [ %23, %for.body49 ], [ %.pre124, %if.then52 ]
  %inc56 = add nsw i32 %i.0116, 1
  %cmp47 = icmp slt i32 %inc56, %25
  br i1 %cmp47, label %for.body49, label %for.end57

for.end57:                                        ; preds = %for.inc55, %for.body43
  %putchar112 = tail call i32 @putchar(i32 10) #4
  %inc60 = add nsw i32 %s_id.0118, 1
  %26 = load i32* %3, align 4, !tbaa !3
  %cmp41 = icmp slt i32 %inc60, %26
  br i1 %cmp41, label %for.body43, label %for.cond39.for.inc62_crit_edge

for.cond39.for.inc62_crit_edge:                   ; preds = %for.end57
  %.pre123 = load i32* %n_mgau, align 4, !tbaa !3
  br label %for.inc62

for.inc62:                                        ; preds = %for.cond39.for.inc62_crit_edge, %for.cond39.preheader
  %27 = phi i32 [ %.pre123, %for.cond39.for.inc62_crit_edge ], [ %20, %for.cond39.preheader ]
  %28 = phi i32 [ %26, %for.cond39.for.inc62_crit_edge ], [ %21, %for.cond39.preheader ]
  %inc63 = add nsw i32 %m_id.0120, 1
  %cmp36 = icmp slt i32 %inc63, %27
  br i1 %cmp36, label %for.cond39.preheader, label %for.inc65

for.inc65:                                        ; preds = %for.inc62, %for.end
  %inc66 = add nsw i32 %code_id.0122, 1
  %29 = load i32* %7, align 4, !tbaa !3
  %cmp22 = icmp slt i32 %inc66, %29
  br i1 %cmp22, label %for.body, label %for.end67

for.end67:                                        ; preds = %for.inc65, %if.end
  %putchar = tail call i32 @putchar(i32 10) #4
  %30 = load %struct._IO_FILE** %1, align 8, !tbaa !0
  %call.i = tail call i32 @fclose(%struct._IO_FILE* %30) #5
  tail call void @free(i8* %call) #5
  ret i32 1
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @gs_free(%struct.gs_s* nocapture %gs) #0 {
entry:
  %fp = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 8
  %0 = load %struct._IO_FILE** %fp, align 8, !tbaa !0
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #5
  %1 = bitcast %struct.gs_s* %gs to i8*
  tail call void @free(i8* %1) #5
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define %struct.gs_s* @gs_read(i8* %file) #0 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 159, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i8* %file) #5
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 160) #5
  %0 = bitcast i8* %call to %struct.gs_s*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 162, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str18, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)) #5
  %fp = getelementptr inbounds i8* %call, i64 40
  %1 = bitcast i8* %fp to %struct._IO_FILE**
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 165, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %file) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_mgau = bitcast i8* %call to i32*
  store i32 %call5, i32* %n_mgau, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 169, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %2 = load i32* %n_mgau, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i32 %2) #5
  %call7 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_feat = getelementptr inbounds i8* %call, i64 4
  %3 = bitcast i8* %n_feat to i32*
  store i32 %call7, i32* %3, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 171, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %4 = load i32* %3, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([35 x i8]* @.str8, i64 0, i64 0), i32 %4) #5
  %call9 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_density = getelementptr inbounds i8* %call, i64 12
  %5 = bitcast i8* %n_density to i32*
  store i32 %call9, i32* %5, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 173, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %6 = load i32* %5, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %6) #5
  %call11 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_code = getelementptr inbounds i8* %call, i64 8
  %7 = bitcast i8* %n_code to i32*
  store i32 %call11, i32* %7, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 175, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %8 = load i32* %7, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0), i32 %8) #5
  %call13 = tail call i32 @gs_fread_int32(%struct.gs_s* %0) #6
  %n_featlen = getelementptr inbounds i8* %call, i64 16
  %9 = bitcast i8* %n_featlen to i32*
  store i32 %call13, i32* %9, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 177, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %10 = load i32* %9, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0), i32 %10) #5
  %11 = load i32* %5, align 4, !tbaa !3
  %add = add nsw i32 %11, 31
  %shr = ashr i32 %add, 5
  %mul = shl nsw i32 %shr, 2
  %n_mbyte = getelementptr inbounds i8* %call, i64 20
  %12 = bitcast i8* %n_mbyte to i32*
  store i32 %mul, i32* %12, align 4, !tbaa !3
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 180, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %13 = load i32* %12, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %13) #5
  %14 = load i32* %5, align 4, !tbaa !3
  %add19 = add nsw i32 %14, 31
  %shr20 = ashr i32 %add19, 5
  %conv21 = sext i32 %shr20 to i64
  %call22 = tail call i8* @__ckd_calloc__(i64 %conv21, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 183) #5
  %15 = bitcast i8* %call22 to i32*
  %16 = load i32* %7, align 4, !tbaa !3
  %17 = load i32* %9, align 4, !tbaa !3
  %call25 = tail call i8** @__ckd_calloc_2d__(i32 %16, i32 %17, i32 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 188) #5
  %18 = bitcast i8** %call25 to float**
  %codeword = getelementptr inbounds i8* %call, i64 24
  %19 = bitcast i8* %codeword to float***
  store float** %18, float*** %19, align 8, !tbaa !0
  %20 = load i32* %n_mgau, align 4, !tbaa !3
  %21 = load i32* %3, align 4, !tbaa !3
  %22 = load i32* %7, align 4, !tbaa !3
  %call29 = tail call i8*** @__ckd_calloc_3d__(i32 %20, i32 %21, i32 %22, i32 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 191) #5
  %23 = bitcast i8*** %call29 to i32***
  %codemap = getelementptr inbounds i8* %call, i64 32
  %24 = bitcast i8* %codemap to i32****
  store i32*** %23, i32**** %24, align 8, !tbaa !0
  %25 = load i32* %5, align 4, !tbaa !3
  %add31 = add nsw i32 %25, 1
  %conv32 = sext i32 %add31 to i64
  %call33 = tail call i8* @__ckd_calloc__(i64 %conv32, i64 4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 192) #5
  %26 = bitcast i8* %call33 to i32*
  %mgau_sl = getelementptr inbounds i8* %call, i64 48
  %27 = bitcast i8* %mgau_sl to i32**
  store i32* %26, i32** %27, align 8, !tbaa !0
  %28 = load i32* %7, align 4, !tbaa !3
  %cmp35128 = icmp sgt i32 %28, 0
  br i1 %cmp35128, label %for.cond37.preheader, label %for.end71

for.cond37.preheader:                             ; preds = %for.inc69, %if.end4
  %indvars.iv134 = phi i64 [ 0, %if.end4 ], [ %indvars.iv.next135, %for.inc69 ]
  %29 = load i32* %9, align 4, !tbaa !3
  %cmp39122 = icmp sgt i32 %29, 0
  br i1 %cmp39122, label %for.body41, label %for.cond46.loopexit

for.body41:                                       ; preds = %for.cond37.preheader, %for.body41
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body41 ], [ 0, %for.cond37.preheader ]
  %call42 = tail call float @gs_fread_float32(%struct.gs_s* %0) #6
  %30 = load float*** %19, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds float** %30, i64 %indvars.iv134
  %31 = load float** %arrayidx, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds float* %31, i64 %indvars.iv
  store float %call42, float* %arrayidx45, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %32 = load i32* %9, align 4, !tbaa !3
  %33 = trunc i64 %indvars.iv.next to i32
  %cmp39 = icmp slt i32 %33, %32
  br i1 %cmp39, label %for.body41, label %for.cond46.loopexit

for.cond46.loopexit:                              ; preds = %for.body41, %for.cond37.preheader
  %34 = load i32* %n_mgau, align 4, !tbaa !3
  %cmp48126 = icmp sgt i32 %34, 0
  br i1 %cmp48126, label %for.cond51.preheader.lr.ph, label %for.inc69

for.cond51.preheader.lr.ph:                       ; preds = %for.cond46.loopexit
  %.pre = load i32* %3, align 4, !tbaa !3
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.cond51.preheader.lr.ph, %for.inc66
  %35 = phi i32 [ %34, %for.cond51.preheader.lr.ph ], [ %43, %for.inc66 ]
  %36 = phi i32 [ %.pre, %for.cond51.preheader.lr.ph ], [ %44, %for.inc66 ]
  %indvars.iv132 = phi i64 [ 0, %for.cond51.preheader.lr.ph ], [ %indvars.iv.next133, %for.inc66 ]
  %cmp53124 = icmp sgt i32 %36, 0
  br i1 %cmp53124, label %for.body55, label %for.inc66

for.body55:                                       ; preds = %for.cond51.preheader, %for.body55
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body55 ], [ 0, %for.cond51.preheader ]
  tail call void @gs_fread_bitvec_t(i32* %15, %struct.gs_s* %0) #6
  %37 = load i32* %15, align 4, !tbaa !3
  %38 = load i32**** %24, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i32*** %38, i64 %indvars.iv132
  %39 = load i32*** %arrayidx60, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32** %39, i64 %indvars.iv130
  %40 = load i32** %arrayidx61, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds i32* %40, i64 %indvars.iv134
  store i32 %37, i32* %arrayidx62, align 4, !tbaa !3
  %indvars.iv.next131 = add i64 %indvars.iv130, 1
  %41 = load i32* %3, align 4, !tbaa !3
  %42 = trunc i64 %indvars.iv.next131 to i32
  %cmp53 = icmp slt i32 %42, %41
  br i1 %cmp53, label %for.body55, label %for.cond51.for.inc66_crit_edge

for.cond51.for.inc66_crit_edge:                   ; preds = %for.body55
  %.pre136 = load i32* %n_mgau, align 4, !tbaa !3
  br label %for.inc66

for.inc66:                                        ; preds = %for.cond51.for.inc66_crit_edge, %for.cond51.preheader
  %43 = phi i32 [ %.pre136, %for.cond51.for.inc66_crit_edge ], [ %35, %for.cond51.preheader ]
  %44 = phi i32 [ %41, %for.cond51.for.inc66_crit_edge ], [ %36, %for.cond51.preheader ]
  %indvars.iv.next133 = add i64 %indvars.iv132, 1
  %45 = trunc i64 %indvars.iv.next133 to i32
  %cmp48 = icmp slt i32 %45, %43
  br i1 %cmp48, label %for.cond51.preheader, label %for.inc69

for.inc69:                                        ; preds = %for.inc66, %for.cond46.loopexit
  %indvars.iv.next135 = add i64 %indvars.iv134, 1
  %46 = load i32* %7, align 4, !tbaa !3
  %47 = trunc i64 %indvars.iv.next135 to i32
  %cmp35 = icmp slt i32 %47, %46
  br i1 %cmp35, label %for.cond37.preheader, label %for.end71

for.end71:                                        ; preds = %for.inc69, %if.end4
  ret %struct.gs_s* %0
}

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @gc_compute_closest_cw(%struct.gs_s* nocapture %gs, float* nocapture %feat) #0 {
entry:
  %call = tail call double @logs3_to_log(i32 -939524096) #5
  %n_code = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 2
  %0 = load i32* %n_code, align 4, !tbaa !3
  %cmp58 = icmp sgt i32 %0, 0
  br i1 %cmp58, label %for.cond1.preheader.lr.ph, label %for.end29

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %n_featlen = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 4
  %1 = load i32* %n_featlen, align 4, !tbaa !3
  %cmp253 = icmp sgt i32 %1, 0
  %codeword = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 6
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.end
  %indvars.iv63 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next64, %for.end ]
  %min.060 = phi double [ 1.800000e+307, %for.cond1.preheader.lr.ph ], [ %min.2, %for.end ]
  %bst_codeid.059 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %bst_codeid.2, %for.end ]
  br i1 %cmp253, label %for.body3.lr.ph, label %for.cond1.preheader.for.end_crit_edge

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  %.pre = or i64 %indvars.iv63, 1
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %2 = load float*** %codeword, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds float** %2, i64 %indvars.iv63
  %3 = load float** %arrayidx6, align 8, !tbaa !0
  %4 = or i64 %indvars.iv63, 1
  %arrayidx14 = getelementptr inbounds float** %2, i64 %4
  %5 = load float** %arrayidx14, align 8, !tbaa !0
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %tmp2.055 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %add19, %for.body3 ]
  %tmp1.054 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %add, %for.body3 ]
  %arrayidx = getelementptr inbounds float* %feat, i64 %indvars.iv
  %6 = load float* %arrayidx, align 4, !tbaa !4
  %arrayidx7 = getelementptr inbounds float* %3, i64 %indvars.iv
  %7 = load float* %arrayidx7, align 4, !tbaa !4
  %sub = fsub float %6, %7
  %conv = fpext float %sub to double
  %mul = fmul double %conv, %conv
  %add = fadd double %tmp1.054, %mul
  %arrayidx15 = getelementptr inbounds float* %5, i64 %indvars.iv
  %8 = load float* %arrayidx15, align 4, !tbaa !4
  %sub16 = fsub float %6, %8
  %conv17 = fpext float %sub16 to double
  %mul18 = fmul double %conv17, %conv17
  %add19 = fadd double %tmp2.055, %mul18
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %9, %1
  br i1 %cmp2, label %for.body3, label %for.end

for.end:                                          ; preds = %for.body3, %for.cond1.preheader.for.end_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.end_crit_edge ], [ %4, %for.body3 ]
  %tmp2.0.lcssa = phi double [ 0.000000e+00, %for.cond1.preheader.for.end_crit_edge ], [ %add19, %for.body3 ]
  %tmp1.0.lcssa = phi double [ 0.000000e+00, %for.cond1.preheader.for.end_crit_edge ], [ %add, %for.body3 ]
  %cmp20 = fcmp olt double %tmp1.0.lcssa, %min.060
  %10 = trunc i64 %indvars.iv63 to i32
  %bst_codeid.1 = select i1 %cmp20, i32 %10, i32 %bst_codeid.059
  %min.1 = select i1 %cmp20, double %tmp1.0.lcssa, double %min.060
  %cmp22 = fcmp olt double %tmp2.0.lcssa, %min.1
  %11 = trunc i64 %.pre-phi to i32
  %bst_codeid.2 = select i1 %cmp22, i32 %11, i32 %bst_codeid.1
  %min.2 = select i1 %cmp22, double %tmp2.0.lcssa, double %min.1
  %indvars.iv.next64 = add i64 %indvars.iv63, 2
  %12 = trunc i64 %indvars.iv.next64 to i32
  %cmp = icmp slt i32 %12, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end29

for.end29:                                        ; preds = %for.end, %entry
  %bst_codeid.0.lcssa = phi i32 [ 0, %entry ], [ %bst_codeid.2, %for.end ]
  ret i32 %bst_codeid.0.lcssa
}

; Function Attrs: optsize
declare double @logs3_to_log(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @gs_mgau_shortlist(%struct.gs_s* nocapture %gs, i32 %m, i32 %n, float* nocapture %feat, i32 %bst_codeid) #0 {
entry:
  %idxprom = sext i32 %bst_codeid to i64
  %idxprom1 = sext i32 %m to i64
  %codemap = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 7
  %0 = load i32**** %codemap, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32*** %0, i64 %idxprom1
  %1 = load i32*** %arrayidx, align 8, !tbaa !0
  %2 = load i32** %1, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %cmp53 = icmp sgt i32 %n, 0
  %mgau_sl = getelementptr inbounds %struct.gs_s* %gs, i64 0, i32 9
  br i1 %cmp53, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %4 = load i32** %mgau_sl, align 8, !tbaa !0
  store i32 -1, i32* %4, align 4, !tbaa !3
  br label %for.cond12.preheader

for.body:                                         ; preds = %entry, %for.inc
  %nc.055 = phi i32 [ %nc.1, %for.inc ], [ 0, %entry ]
  %bit_id.054 = phi i32 [ %inc6, %for.inc ], [ 0, %entry ]
  %shl = shl i32 1, %bit_id.054
  %and = and i32 %shl, %3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %nc.055, 1
  %idxprom4 = sext i32 %nc.055 to i64
  %5 = load i32** %mgau_sl, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i32* %5, i64 %idxprom4
  store i32 %bit_id.054, i32* %arrayidx5, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %nc.1 = phi i32 [ %inc, %if.then ], [ %nc.055, %for.body ]
  %inc6 = add nsw i32 %bit_id.054, 1
  %exitcond57 = icmp eq i32 %inc6, %n
  br i1 %exitcond57, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %idxprom7 = sext i32 %nc.1 to i64
  %6 = load i32** %mgau_sl, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i32* %6, i64 %idxprom7
  store i32 -1, i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %nc.1, 0
  br i1 %cmp10, label %for.cond12.preheader, label %if.end28

for.cond12.preheader:                             ; preds = %for.end.thread, %for.end
  %7 = phi i32* [ %4, %for.end.thread ], [ %6, %for.end ]
  br i1 %cmp53, label %for.body14, label %if.end25.thread

if.end25.thread:                                  ; preds = %for.cond12.preheader
  store i32 -1, i32* %7, align 4, !tbaa !3
  br label %if.then27

for.body14:                                       ; preds = %for.cond12.preheader, %for.body14
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body14 ], [ 0, %for.cond12.preheader ]
  %nc.252 = phi i32 [ %inc15, %for.body14 ], [ 0, %for.cond12.preheader ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc15 = add nsw i32 %nc.252, 1
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %indvars.iv
  store i32 %nc.252, i32* %arrayidx18, align 4, !tbaa !3
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end25, label %for.body14

if.end25:                                         ; preds = %for.body14
  %idxprom22 = sext i32 %n to i64
  %arrayidx24 = getelementptr inbounds i32* %7, i64 %idxprom22
  store i32 -1, i32* %arrayidx24, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %n, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25.thread, %if.end25
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i64 287, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), i32 %m, i32 %n) #5
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.then27, %if.end25
  %nc.349 = phi i32 [ 0, %if.then27 ], [ %n, %if.end25 ], [ %nc.1, %for.end ]
  ret i32 %nc.349
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gs_delete(i8* nocapture %file) #3 {
entry:
  ret i32 1
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
