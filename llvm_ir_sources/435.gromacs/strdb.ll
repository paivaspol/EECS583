; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@get_a_line.line0 = internal unnamed_addr global i8* null, align 8
@get_a_line.nalloc = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"line0\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [74 x i8] c"Warning: line length exceeds buffer length (%d), data might be corrupted\0A\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"Warning: file does not end with a newline, last line:\0A%s\0A\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"header is not terminated on line:\0A'%s'\0A\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%s%*s\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@warn_buf = external global [1024 x i8]
@.str7 = private unnamed_addr constant [17 x i8] c"File %s is empty\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"File is empty\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @get_a_line(%struct._IO_FILE* nocapture %fp, i8* %line, i32 %n) #0 {
entry:
  %0 = load i32* @get_a_line.nalloc, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %if.then, label %entry.do.body.preheader_crit_edge

entry.do.body.preheader_crit_edge:                ; preds = %entry
  %add2.pre = add nsw i32 %n, 1
  br label %do.body.preheader

if.then:                                          ; preds = %entry
  store i32 %n, i32* @get_a_line.nalloc, align 4, !tbaa !0
  %1 = load i8** @get_a_line.line0, align 8, !tbaa !3
  %add = add nsw i32 %n, 1
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 49, i8* %1, i32 %add) #5
  store i8* %call, i8** @get_a_line.line0, align 8, !tbaa !3
  br label %do.body.preheader

do.body.preheader:                                ; preds = %entry.do.body.preheader_crit_edge, %if.then
  %add2.pre-phi = phi i32 [ %add2.pre, %entry.do.body.preheader_crit_edge ], [ %add, %if.then ]
  %conv10 = sext i32 %n to i64
  %sub = add nsw i32 %n, -1
  %idxprom = sext i32 %sub to i64
  br label %do.body

do.body:                                          ; preds = %if.end24, %do.body.preheader
  %2 = load i8** @get_a_line.line0, align 8, !tbaa !3
  %call3 = tail call i8* @fgets(i8* %2, i32 %add2.pre-phi, %struct._IO_FILE* %fp) #5
  %tobool = icmp eq i8* %call3, null
  br i1 %tobool, label %return, label %if.end5

if.end5:                                          ; preds = %do.body
  %3 = load i8** @get_a_line.line0, align 8, !tbaa !3
  %call6 = tail call i8* @strchr(i8* %3, i32 10) #6
  %tobool7 = icmp eq i8* %call6, null
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  store i8 0, i8* %call6, align 1, !tbaa !1
  br label %if.end19

if.else:                                          ; preds = %if.end5
  %call9 = tail call i64 @strlen(i8* %3) #6
  %cmp11 = icmp eq i64 %call9, %conv10
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br i1 %cmp11, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([74 x i8]* @.str2, i64 0, i64 0), i32 %n) #5
  %5 = load i8** @get_a_line.line0, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i8* %5, i64 %idxprom
  store i8 0, i8* %arrayidx15, align 1, !tbaa !1
  br label %if.end19

if.else16:                                        ; preds = %if.else
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), i8* %3) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.else16, %if.then8
  %6 = load i8** @get_a_line.line0, align 8, !tbaa !3
  %call20 = tail call i8* @strchr(i8* %6, i32 59) #6
  %tobool21 = icmp eq i8* %call20, null
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  store i8 0, i8* %call20, align 1, !tbaa !1
  %.pre = load i8** @get_a_line.line0, align 8, !tbaa !3
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.then22
  %7 = phi i8* [ %6, %if.end19 ], [ %.pre, %if.then22 ]
  %call25 = tail call i8* @strcpy(i8* %line, i8* %7) #5
  %8 = load i8** @get_a_line.line0, align 8, !tbaa !3
  tail call void @ltrim(i8* %8) #5
  %9 = load i8* %8, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %9, 0
  br i1 %cmp28, label %do.body, label %return

return:                                           ; preds = %if.end24, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare void @ltrim(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_header(i8* %line, i8* %header) #0 {
entry:
  %temp = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #4
  %call = call i8* @strcpy(i8* %0, i8* %line) #5
  %call2 = call i8* @strchr(i8* %0, i32 91) #6
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8 32, i8* %call2, align 1, !tbaa !1
  %call4 = call i8* @strchr(i8* %0, i32 93) #6
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %line) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  store i8 0, i8* %call4, align 1, !tbaa !1
  %call10 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %header) #5
  %cmp11 = icmp eq i32 %call10, 1
  %. = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %entry ], [ %., %if.end7 ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @get_strings(i8* %db, i8*** nocapture %strings) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %call = call %struct._IO_FILE* @libopen(i8* %db) #5
  call void @set_warning_line(i8* %db, i32 1) #5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #5
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0), i8* %db) #5
  call void @warning(i8* null) #5
  call void @ffclose(%struct._IO_FILE* %call) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32* %nstr, align 4, !tbaa !0
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %1, i32 8) #5
  %2 = bitcast i8* %call3 to i8**
  %3 = load i32* %nstr, align 4, !tbaa !0
  %cmp415 = icmp sgt i32 %3, 0
  br i1 %cmp415, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %0) #5
  %call7 = call i8* @gmx_strdup(i8* %0) #5
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv
  store i8* %call7, i8** %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* %nstr, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %5, %4
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  call void @ffclose(%struct._IO_FILE* %call) #5
  store i8** %2, i8*** %strings, align 8, !tbaa !3
  %6 = load i32* %nstr, align 4, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %6, %for.end ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct._IO_FILE* @libopen(i8*) #1

; Function Attrs: optsize
declare void @set_warning_line(i8*, i32) #1

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @warning(i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @search_str(i32 %nstr, i8** nocapture %str, i8* %key) #0 {
entry:
  %cmp4 = icmp sgt i32 %nstr, 0
  br i1 %cmp4, label %for.body, label %return

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.05, 1
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nstr
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.05 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %str, i64 %indvars.iv
  %1 = load i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @gmx_strcasecmp(i8* %1, i8* %key) #5
  %cmp1 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %i.05, %for.body ], [ -1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @fget_lines(%struct._IO_FILE* %in, i8*** nocapture %strings) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %call = call i8* @fgets(i8* %0, i32 255, %struct._IO_FILE* %in) #5
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #5
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i64 14, i32 1, i1 false)
  call void @warning(i8* null) #5
  call void @ffclose(%struct._IO_FILE* %in) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32* %nstr, align 4, !tbaa !0
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 153, i32 %1, i32 8) #5
  %2 = bitcast i8* %call4 to i8**
  %3 = load i32* %nstr, align 4, !tbaa !0
  %cmp515 = icmp sgt i32 %3, 0
  br i1 %cmp515, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %call7 = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %in) #5
  %call9 = call i8* @gmx_strdup(i8* %0) #5
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv
  store i8* %call9, i8** %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* %nstr, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %5, %4
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %6 = phi i32 [ %3, %if.end ], [ %4, %for.body ]
  store i8** %2, i8*** %strings, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %6, %for.end ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_lines(i8* %db, i8*** nocapture %strings) #0 {
entry:
  tail call void @set_warning_line(i8* %db, i32 1) #5
  %call = tail call %struct._IO_FILE* @libopen(i8* %db) #5
  %call1 = tail call i32 @fget_lines(%struct._IO_FILE* %call, i8*** %strings) #7
  tail call void @ffclose(%struct._IO_FILE* %call) #5
  ret i32 %call1
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_file(i8* %db, i8*** nocapture %strings) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %call = call %struct._IO_FILE* @libopen(i8* %db) #5
  %call119 = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %call) #5
  %tobool20 = icmp eq i8* %call119, null
  br i1 %tobool20, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %ptr.023 = phi i8** [ %ptr.1, %if.end ], [ null, %entry ]
  %maxi.022 = phi i32 [ %maxi.1, %if.end ], [ 0, %entry ]
  %i.021 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %1, %maxi.022
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %maxi.022, 50
  %2 = bitcast i8** %ptr.023 to i8*
  %mul = shl i32 %add, 3
  %call3 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %2, i32 %mul) #5
  %3 = bitcast i8* %call3 to i8**
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %maxi.1 = phi i32 [ %add, %if.then ], [ %maxi.022, %while.body ]
  %ptr.1 = phi i8** [ %3, %if.then ], [ %ptr.023, %while.body ]
  %call5 = call i8* @gmx_strdup(i8* %0) #5
  %arrayidx = getelementptr inbounds i8** %ptr.1, i64 %indvars.iv
  store i8* %call5, i8** %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.021, 1
  %call1 = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %call) #5
  %tobool = icmp eq i8* %call1, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %ptr.0.lcssa = phi i8** [ null, %entry ], [ %ptr.1, %if.end ]
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  call void @ffclose(%struct._IO_FILE* %call) #5
  %4 = bitcast i8** %ptr.0.lcssa to i8*
  %mul7 = shl i32 %i.0.lcssa, 3
  %call9 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 197, i8* %4, i32 %mul7) #5
  %5 = bitcast i8* %call9 to i8**
  store i8** %5, i8*** %strings, align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
