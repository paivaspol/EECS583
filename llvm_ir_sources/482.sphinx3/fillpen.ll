; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/fillpen.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fillpen_t = type { %struct.dict_t*, i32*, double, double }
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

@.str = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/fillpen.c\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"<sil>\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"%s not a filler word in the given dictionary\0A\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Reading filler penalty file: %s\0A\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"fopen(%s,r) failed\0A\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"%s %lf\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"Bad input line: %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.fillpen_t* @fillpen_init(%struct.dict_t* %dict, i8* %file, double %silprob, double %fillprob, double %lw, double %wip) #0 {
entry:
  %prob = alloca double, align 8
  %line = alloca [1024 x i8], align 16
  %wd = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = getelementptr inbounds [1024 x i8]* %wd, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %call = call i8* @__ckd_calloc__(i64 1, i64 32, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 78) #5
  %2 = bitcast i8* %call to %struct.fillpen_t*
  %dict1 = bitcast i8* %call to %struct.dict_t**
  store %struct.dict_t* %dict, %struct.dict_t** %dict1, align 8, !tbaa !0
  %lw2 = getelementptr inbounds i8* %call, i64 16
  %3 = bitcast i8* %lw2 to double*
  store double %lw, double* %3, align 8, !tbaa !3
  %wip3 = getelementptr inbounds i8* %call, i64 24
  %4 = bitcast i8* %wip3 to double*
  store double %wip, double* %4, align 8, !tbaa !3
  %filler_end = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 9
  %5 = load i32* %filler_end, align 4, !tbaa !4
  %filler_start = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 8
  %6 = load i32* %filler_start, align 4, !tbaa !4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %6
  %conv = sext i32 %add to i64
  %call6 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 85) #5
  %7 = bitcast i8* %call6 to i32*
  %prob7 = getelementptr inbounds i8* %call, i64 8
  %8 = bitcast i8* %prob7 to i32**
  store i32* %7, i32** %8, align 8, !tbaa !0
  %.pre = load i32* %filler_start, align 4, !tbaa !4
  %.pre189 = load i32* %filler_end, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %prob8 = getelementptr inbounds i8* %call, i64 8
  %9 = bitcast i8* %prob8 to i32**
  store i32* null, i32** %9, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = phi i32 [ %5, %if.else ], [ %.pre189, %if.then ]
  %11 = phi i32 [ %6, %if.else ], [ %.pre, %if.then ]
  store double %fillprob, double* %prob, align 8, !tbaa !3
  %cmp11187 = icmp sgt i32 %11, %10
  br i1 %cmp11187, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %prob21 = getelementptr inbounds i8* %call, i64 8
  %12 = bitcast i8* %prob21 to i32**
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %13 = phi double [ %fillprob, %for.body.lr.ph ], [ %.pre191, %for.body.for.body_crit_edge ]
  %w.0188 = phi i32 [ %11, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call13 = call i32 @logs3(double %13) #5
  %conv14 = sitofp i32 %call13 to double
  %mul = fmul double %conv14, %lw
  %call15 = call i32 @logs3(double %wip) #5
  %conv16 = sitofp i32 %call15 to double
  %add17 = fadd double %mul, %conv16
  %conv18 = fptosi double %add17 to i32
  %14 = load i32* %filler_start, align 4, !tbaa !4
  %sub20 = sub nsw i32 %w.0188, %14
  %idxprom = sext i32 %sub20 to i64
  %15 = load i32** %12, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %15, i64 %idxprom
  store i32 %conv18, i32* %arrayidx, align 4, !tbaa !4
  %16 = load i32* %filler_end, align 4, !tbaa !4
  %cmp11 = icmp slt i32 %w.0188, %16
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %inc = add nsw i32 %w.0188, 1
  %.pre191 = load double* %prob, align 8, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %call22 = call i32 @dict_wordid(%struct.dict_t* %dict, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load i32* %filler_start, align 4, !tbaa !4
  %cmp26 = icmp slt i32 %call22, %17
  br i1 %cmp26, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %18 = load i32* %filler_end, align 4, !tbaa !4
  %cmp30 = icmp sgt i32 %call22, %18
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 100, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %lor.lhs.false28
  store double %silprob, double* %prob, align 8, !tbaa !3
  %call34 = call i32 @logs3(double %silprob) #5
  %conv35 = sitofp i32 %call34 to double
  %mul36 = fmul double %conv35, %lw
  %call37 = call i32 @logs3(double %wip) #5
  %conv38 = sitofp i32 %call37 to double
  %add39 = fadd double %mul36, %conv38
  %conv40 = fptosi double %add39 to i32
  %19 = load i32* %filler_start, align 4, !tbaa !4
  %sub42 = sub nsw i32 %call22, %19
  %idxprom43 = sext i32 %sub42 to i64
  %prob44 = getelementptr inbounds i8* %call, i64 8
  %20 = bitcast i8* %prob44 to i32**
  %21 = load i32** %20, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %21, i64 %idxprom43
  store i32 %conv40, i32* %arrayidx45, align 4, !tbaa !4
  %tobool = icmp eq i8* %file, null
  br i1 %tobool, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end33
  call void @_E__pr_info_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 111, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i8* %file) #5
  %call48 = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #5
  %cmp49 = icmp eq %struct._IO_FILE* %call48, null
  br i1 %cmp49, label %if.then51, label %while.cond.preheader

if.then51:                                        ; preds = %if.end47
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 113, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i8* %file) #5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then51, %if.end47
  %call53185 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %call48) #5
  %cmp54186 = icmp eq i8* %call53185, null
  br i1 %cmp54186, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %22 = load i8* %0, align 16, !tbaa !1
  %cmp58 = icmp eq i8 %22, 35
  br i1 %cmp58, label %while.cond.backedge, label %if.end61

if.end61:                                         ; preds = %while.body
  %call64 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0), i8* %1, double* %prob) #5
  switch i32 %call64, label %if.then69 [
    i32 2, label %if.end71
    i32 0, label %if.end71
  ]

if.then69:                                        ; preds = %if.end61
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 120, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i8* %0) #5
  br label %if.end71

if.end71:                                         ; preds = %if.end61, %if.end61, %if.then69
  %call73 = call i32 @dict_wordid(%struct.dict_t* %dict, i8* %1) #5
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then84, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end71
  %23 = load i32* %filler_start, align 4, !tbaa !4
  %cmp78 = icmp slt i32 %call73, %23
  br i1 %cmp78, label %if.then84, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %24 = load i32* %filler_end, align 4, !tbaa !4
  %cmp82 = icmp sgt i32 %call73, %24
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %lor.lhs.false80, %lor.lhs.false76, %if.end71
  call void @_E__pr_header(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i64 123, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %lor.lhs.false80
  %25 = load double* %prob, align 8, !tbaa !3
  %call86 = call i32 @logs3(double %25) #5
  %conv87 = sitofp i32 %call86 to double
  %mul88 = fmul double %conv87, %lw
  %call89 = call i32 @logs3(double %wip) #5
  %conv90 = sitofp i32 %call89 to double
  %add91 = fadd double %mul88, %conv90
  %conv92 = fptosi double %add91 to i32
  %26 = load i32* %filler_start, align 4, !tbaa !4
  %sub94 = sub nsw i32 %call73, %26
  %idxprom95 = sext i32 %sub94 to i64
  %27 = load i32** %20, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i32* %27, i64 %idxprom95
  store i32 %conv92, i32* %arrayidx97, align 4, !tbaa !4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end85, %while.body
  %call53 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %call48) #5
  %cmp54 = icmp eq i8* %call53, null
  br i1 %cmp54, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %call98 = call i32 @fclose(%struct._IO_FILE* %call48) #5
  %28 = load i32* %filler_start, align 4, !tbaa !4
  %29 = load i32* %filler_end, align 4, !tbaa !4
  %cmp102183 = icmp sgt i32 %28, %29
  br i1 %cmp102183, label %cleanup, label %for.body104.lr.ph

for.body104.lr.ph:                                ; preds = %while.end
  %word = getelementptr inbounds %struct.dict_t* %dict, i64 0, i32 4
  %30 = load %struct.dictword_t** %word, align 8, !tbaa !0
  %31 = sext i32 %28 to i64
  br label %for.body104

for.body104:                                      ; preds = %for.inc121, %for.body104.lr.ph
  %32 = phi i32 [ %38, %for.inc121 ], [ %29, %for.body104.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc121 ], [ %31, %for.body104.lr.ph ]
  %basewid = getelementptr inbounds %struct.dictword_t* %30, i64 %indvars.iv, i32 4
  %33 = load i32* %basewid, align 4, !tbaa !4
  %34 = trunc i64 %indvars.iv to i32
  %cmp107 = icmp eq i32 %33, %34
  br i1 %cmp107, label %for.inc121, label %if.then109

if.then109:                                       ; preds = %for.body104
  %35 = load i32* %filler_start, align 4, !tbaa !4
  %sub111 = sub nsw i32 %33, %35
  %idxprom112 = sext i32 %sub111 to i64
  %36 = load i32** %20, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i32* %36, i64 %idxprom112
  %37 = load i32* %arrayidx114, align 4, !tbaa !4
  %sub116 = sub nsw i32 %34, %35
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx119 = getelementptr inbounds i32* %36, i64 %idxprom117
  store i32 %37, i32* %arrayidx119, align 4, !tbaa !4
  %.pre190 = load i32* %filler_end, align 4, !tbaa !4
  br label %for.inc121

for.inc121:                                       ; preds = %for.body104, %if.then109
  %38 = phi i32 [ %32, %for.body104 ], [ %.pre190, %if.then109 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp102 = icmp slt i32 %34, %38
  br i1 %cmp102, label %for.body104, label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc121, %if.end33
  call void @llvm.lifetime.end(i64 1024, i8* %1) #1
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret %struct.fillpen_t* %2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: optsize
declare i32 @logs3(double) #2

; Function Attrs: optsize
declare i32 @dict_wordid(%struct.dict_t*, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @fillpen(%struct.fillpen_t* nocapture %f, i32 %w) #4 {
entry:
  %dict = getelementptr inbounds %struct.fillpen_t* %f, i64 0, i32 0
  %0 = load %struct.dict_t** %dict, align 8, !tbaa !0
  %filler_start = getelementptr inbounds %struct.dict_t* %0, i64 0, i32 8
  %1 = load i32* %filler_start, align 4, !tbaa !4
  %sub = sub nsw i32 %w, %1
  %idxprom = sext i32 %sub to i64
  %prob = getelementptr inbounds %struct.fillpen_t* %f, i64 0, i32 1
  %2 = load i32** %prob, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !4
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define void @fillpen_free(%struct.fillpen_t* %f) #0 {
entry:
  %tobool = icmp eq %struct.fillpen_t* %f, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %prob = getelementptr inbounds %struct.fillpen_t* %f, i64 0, i32 1
  %0 = load i32** %prob, align 8, !tbaa !0
  %tobool1 = icmp eq i32* %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i32* %0 to i8*
  tail call void @ckd_free(i8* %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %2 = bitcast %struct.fillpen_t* %f to i8*
  tail call void @ckd_free(i8* %2) #5
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
