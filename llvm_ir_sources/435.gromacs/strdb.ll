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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !67), !dbg !135
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !68), !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !69), !dbg !135
  %0 = load i32* @get_a_line.nalloc, align 4, !dbg !136, !tbaa !137
  %cmp = icmp slt i32 %0, %n, !dbg !136
  br i1 %cmp, label %if.then, label %entry.do.body.preheader_crit_edge, !dbg !136

entry.do.body.preheader_crit_edge:                ; preds = %entry
  %add2.pre = add nsw i32 %n, 1, !dbg !140
  br label %do.body.preheader, !dbg !136

if.then:                                          ; preds = %entry
  store i32 %n, i32* @get_a_line.nalloc, align 4, !dbg !142, !tbaa !137
  %1 = load i8** @get_a_line.line0, align 8, !dbg !144, !tbaa !145
  %add = add nsw i32 %n, 1, !dbg !144
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 49, i8* %1, i32 %add) #7, !dbg !144
  store i8* %call, i8** @get_a_line.line0, align 8, !dbg !144, !tbaa !145
  br label %do.body.preheader, !dbg !146

do.body.preheader:                                ; preds = %entry.do.body.preheader_crit_edge, %if.then
  %add2.pre-phi = phi i32 [ %add2.pre, %entry.do.body.preheader_crit_edge ], [ %add, %if.then ], !dbg !140
  %conv10 = sext i32 %n to i64, !dbg !147
  %sub = add nsw i32 %n, -1, !dbg !148
  %idxprom = sext i32 %sub to i64, !dbg !148
  br label %do.body, !dbg !140

do.body:                                          ; preds = %if.end24, %do.body.preheader
  %2 = load i8** @get_a_line.line0, align 8, !dbg !140, !tbaa !145
  %call3 = tail call i8* @fgets(i8* %2, i32 %add2.pre-phi, %struct._IO_FILE* %fp) #7, !dbg !140
  %tobool = icmp eq i8* %call3, null, !dbg !140
  br i1 %tobool, label %return, label %if.end5, !dbg !140

if.end5:                                          ; preds = %do.body
  %3 = load i8** @get_a_line.line0, align 8, !dbg !150, !tbaa !145
  %call6 = tail call i8* @strchr(i8* %3, i32 10) #8, !dbg !150
  tail call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !70), !dbg !150
  %tobool7 = icmp eq i8* %call6, null, !dbg !151
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !151

if.then8:                                         ; preds = %if.end5
  store i8 0, i8* %call6, align 1, !dbg !152, !tbaa !138
  br label %if.end19, !dbg !152

if.else:                                          ; preds = %if.end5
  %call9 = tail call i64 @strlen(i8* %3) #8, !dbg !147
  %cmp11 = icmp eq i64 %call9, %conv10, !dbg !147
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !153, !tbaa !145
  br i1 %cmp11, label %if.then13, label %if.else16, !dbg !147

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([74 x i8]* @.str2, i64 0, i64 0), i32 %n) #7, !dbg !153
  %5 = load i8** @get_a_line.line0, align 8, !dbg !148, !tbaa !145
  %arrayidx15 = getelementptr inbounds i8* %5, i64 %idxprom, !dbg !148
  store i8 0, i8* %arrayidx15, align 1, !dbg !148, !tbaa !138
  br label %if.end19, !dbg !154

if.else16:                                        ; preds = %if.else
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), i8* %3) #7, !dbg !155
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.else16, %if.then8
  %6 = load i8** @get_a_line.line0, align 8, !dbg !156, !tbaa !145
  %call20 = tail call i8* @strchr(i8* %6, i32 59) #8, !dbg !156
  tail call void @llvm.dbg.value(metadata !{i8* %call20}, i64 0, metadata !70), !dbg !156
  %tobool21 = icmp eq i8* %call20, null, !dbg !157
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !157

if.then22:                                        ; preds = %if.end19
  store i8 0, i8* %call20, align 1, !dbg !158, !tbaa !138
  %.pre = load i8** @get_a_line.line0, align 8, !dbg !159, !tbaa !145
  br label %if.end24, !dbg !158

if.end24:                                         ; preds = %if.end19, %if.then22
  %7 = phi i8* [ %6, %if.end19 ], [ %.pre, %if.then22 ]
  %call25 = tail call i8* @strcpy(i8* %line, i8* %7) #7, !dbg !159
  %8 = load i8** @get_a_line.line0, align 8, !dbg !160, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !70), !dbg !160
  tail call void @ltrim(i8* %8) #7, !dbg !161
  %9 = load i8* %8, align 1, !dbg !162, !tbaa !138
  %cmp28 = icmp eq i8 %9, 0, !dbg !162
  br i1 %cmp28, label %do.body, label %return, !dbg !162

return:                                           ; preds = %if.end24, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %if.end24 ]
  ret i32 %retval.0, !dbg !163
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare void @ltrim(i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @get_header(i8* %line, i8* %header) #0 {
entry:
  %temp = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !75), !dbg !164
  call void @llvm.dbg.value(metadata !{i8* %header}, i64 0, metadata !76), !dbg !164
  %0 = getelementptr inbounds [4096 x i8]* %temp, i64 0, i64 0, !dbg !165
  call void @llvm.lifetime.start(i64 4096, i8* %0) #5, !dbg !165
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %temp}, metadata !77), !dbg !165
  %call = call i8* @strcpy(i8* %0, i8* %line) #7, !dbg !166
  %call2 = call i8* @strchr(i8* %0, i32 91) #8, !dbg !167
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !81), !dbg !167
  %cmp = icmp eq i8* %call2, null, !dbg !168
  br i1 %cmp, label %cleanup, label %if.end, !dbg !168

if.end:                                           ; preds = %entry
  store i8 32, i8* %call2, align 1, !dbg !169, !tbaa !138
  %call4 = call i8* @strchr(i8* %0, i32 93) #8, !dbg !170
  call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !81), !dbg !170
  %cmp5 = icmp eq i8* %call4, null, !dbg !171
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !171

if.then6:                                         ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %line) #7, !dbg !172
  br label %cleanup, !dbg !174

if.end7:                                          ; preds = %if.end
  store i8 0, i8* %call4, align 1, !dbg !175, !tbaa !138
  %call10 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %header) #7, !dbg !176
  %cmp11 = icmp eq i32 %call10, 1, !dbg !176
  %. = zext i1 %cmp11 to i32, !dbg !177
  br label %cleanup, !dbg !177

cleanup:                                          ; preds = %if.end7, %entry, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %entry ], [ %., %if.end7 ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #5, !dbg !177
  ret i32 %retval.0, !dbg !178
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @get_strings(i8* %db, i8*** nocapture %strings) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %db}, i64 0, metadata !88), !dbg !179
  call void @llvm.dbg.value(metadata !{i8*** %strings}, i64 0, metadata !89), !dbg !179
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !180
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !180
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !92), !dbg !180
  call void @llvm.dbg.declare(metadata !{i32* %nstr}, metadata !97), !dbg !181
  %call = call %struct._IO_FILE* @libopen(i8* %db) #7, !dbg !182
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !90), !dbg !182
  call void @set_warning_line(i8* %db, i32 1) #7, !dbg !183
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #7, !dbg !184
  %cmp = icmp eq i32 %call1, 1, !dbg !184
  br i1 %cmp, label %if.end, label %if.then, !dbg !184

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0), i8* %db) #7, !dbg !185
  call void @warning(i8* null) #7, !dbg !187
  call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !188
  br label %cleanup, !dbg !189

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !97), !dbg !190
  %1 = load i32* %nstr, align 4, !dbg !190, !tbaa !137
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %1, i32 8) #7, !dbg !190
  %2 = bitcast i8* %call3 to i8**, !dbg !190
  call void @llvm.dbg.value(metadata !{i8** %2}, i64 0, metadata !91), !dbg !190
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !96), !dbg !191
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !97), !dbg !191
  %3 = load i32* %nstr, align 4, !dbg !191, !tbaa !137
  %cmp415 = icmp sgt i32 %3, 0, !dbg !191
  br i1 %cmp415, label %for.body, label %for.end, !dbg !191

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %0) #7, !dbg !193
  %call7 = call noalias i8* @strdup(i8* %0) #7, !dbg !195
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv, !dbg !195
  store i8* %call7, i8** %arrayidx, align 8, !dbg !195, !tbaa !145
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !191
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !97), !dbg !191
  %4 = load i32* %nstr, align 4, !dbg !191, !tbaa !137
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !191
  %cmp4 = icmp slt i32 %5, %4, !dbg !191
  br i1 %cmp4, label %for.body, label %for.end, !dbg !191

for.end:                                          ; preds = %for.body, %if.end
  call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !196
  store i8** %2, i8*** %strings, align 8, !dbg !197, !tbaa !145
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !97), !dbg !198
  %6 = load i32* %nstr, align 4, !dbg !198, !tbaa !137
  br label %cleanup, !dbg !198

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %6, %for.end ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !199
  ret i32 %retval.0, !dbg !199
}

; Function Attrs: optsize
declare %struct._IO_FILE* @libopen(i8*) #2

; Function Attrs: optsize
declare void @set_warning_line(i8*, i32) #2

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @warning(i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @search_str(i32 %nstr, i8** nocapture %str, i8* nocapture %key) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nstr}, i64 0, metadata !102), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i8** %str}, i64 0, metadata !103), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !104), !dbg !200
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !105), !dbg !201
  %cmp4 = icmp sgt i32 %nstr, 0, !dbg !201
  br i1 %cmp4, label %for.body, label %return, !dbg !201

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.05, 1, !dbg !201
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !201
  %cmp = icmp slt i32 %0, %nstr, !dbg !201
  br i1 %cmp, label %for.body, label %return, !dbg !201

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.05 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %str, i64 %indvars.iv, !dbg !203
  %1 = load i8** %arrayidx, align 8, !dbg !203, !tbaa !145
  %call = tail call i32 @strcasecmp(i8* %1, i8* %key) #8, !dbg !203
  %cmp1 = icmp eq i32 %call, 0, !dbg !203
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !105), !dbg !201
  br i1 %cmp1, label %return, label %for.cond, !dbg !203

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %i.05, %for.body ], [ -1, %for.cond ]
  ret i32 %retval.0, !dbg !204
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @fget_lines(%struct._IO_FILE* %in, i8*** nocapture %strings) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !110), !dbg !205
  call void @llvm.dbg.value(metadata !{i8*** %strings}, i64 0, metadata !111), !dbg !205
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !206
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !206
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !113), !dbg !206
  call void @llvm.dbg.declare(metadata !{i32* %nstr}, metadata !115), !dbg !207
  %call = call i8* @fgets(i8* %0, i32 255, %struct._IO_FILE* %in) #7, !dbg !208
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #7, !dbg !209
  %cmp = icmp eq i32 %call2, 1, !dbg !209
  br i1 %cmp, label %if.end, label %if.then, !dbg !209

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i64 14, i32 1, i1 false), !dbg !210
  call void @warning(i8* null) #7, !dbg !212
  call void @ffclose(%struct._IO_FILE* %in) #7, !dbg !213
  br label %cleanup, !dbg !214

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !115), !dbg !215
  %1 = load i32* %nstr, align 4, !dbg !215, !tbaa !137
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 153, i32 %1, i32 8) #7, !dbg !215
  %2 = bitcast i8* %call4 to i8**, !dbg !215
  call void @llvm.dbg.value(metadata !{i8** %2}, i64 0, metadata !112), !dbg !215
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !216
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !115), !dbg !216
  %3 = load i32* %nstr, align 4, !dbg !216, !tbaa !137
  %cmp515 = icmp sgt i32 %3, 0, !dbg !216
  br i1 %cmp515, label %for.body, label %for.end, !dbg !216

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %call7 = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %in) #7, !dbg !218
  %call9 = call noalias i8* @strdup(i8* %0) #7, !dbg !220
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv, !dbg !220
  store i8* %call9, i8** %arrayidx, align 8, !dbg !220, !tbaa !145
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !216
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !115), !dbg !216
  %4 = load i32* %nstr, align 4, !dbg !216, !tbaa !137
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !216
  %cmp5 = icmp slt i32 %5, %4, !dbg !216
  br i1 %cmp5, label %for.body, label %for.end, !dbg !216

for.end:                                          ; preds = %for.body, %if.end
  %6 = phi i32 [ %3, %if.end ], [ %4, %for.body ]
  store i8** %2, i8*** %strings, align 8, !dbg !221, !tbaa !145
  call void @llvm.dbg.value(metadata !{i32* %nstr}, i64 0, metadata !115), !dbg !222
  br label %cleanup, !dbg !222

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %6, %for.end ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !223
  ret i32 %retval.0, !dbg !223
}

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @get_lines(i8* %db, i8*** nocapture %strings) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %db}, i64 0, metadata !118), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i8*** %strings}, i64 0, metadata !119), !dbg !224
  tail call void @set_warning_line(i8* %db, i32 1) #7, !dbg !225
  %call = tail call %struct._IO_FILE* @libopen(i8* %db) #7, !dbg !226
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !120), !dbg !226
  %call1 = tail call i32 @fget_lines(%struct._IO_FILE* %call, i8*** %strings) #9, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !121), !dbg !227
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !228
  ret i32 %call1, !dbg !229
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_file(i8* %db, i8*** nocapture %strings) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %db}, i64 0, metadata !124), !dbg !230
  call void @llvm.dbg.value(metadata !{i8*** %strings}, i64 0, metadata !125), !dbg !230
  call void @llvm.dbg.value(metadata !231, i64 0, metadata !127), !dbg !232
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !233
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !233
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !128), !dbg !233
  %call = call %struct._IO_FILE* @libopen(i8* %db) #7, !dbg !234
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !126), !dbg !234
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !235
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !129), !dbg !235
  %call119 = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %call) #7, !dbg !236
  %tobool20 = icmp eq i8* %call119, null, !dbg !236
  br i1 %tobool20, label %while.end, label %while.body, !dbg !236

while.body:                                       ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %ptr.023 = phi i8** [ %ptr.1, %if.end ], [ null, %entry ]
  %maxi.022 = phi i32 [ %maxi.1, %if.end ], [ 0, %entry ]
  %i.021 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %1 = trunc i64 %indvars.iv to i32, !dbg !237
  %cmp = icmp slt i32 %1, %maxi.022, !dbg !237
  br i1 %cmp, label %if.end, label %if.then, !dbg !237

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %maxi.022, 50, !dbg !239
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !131), !dbg !239
  %2 = bitcast i8** %ptr.023 to i8*, !dbg !241
  %mul = shl i32 %add, 3, !dbg !241
  %call3 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %2, i32 %mul) #7, !dbg !241
  %3 = bitcast i8* %call3 to i8**, !dbg !241
  call void @llvm.dbg.value(metadata !{i8** %3}, i64 0, metadata !127), !dbg !241
  br label %if.end, !dbg !242

if.end:                                           ; preds = %while.body, %if.then
  %maxi.1 = phi i32 [ %add, %if.then ], [ %maxi.022, %while.body ]
  %ptr.1 = phi i8** [ %3, %if.then ], [ %ptr.023, %while.body ]
  %call5 = call noalias i8* @strdup(i8* %0) #7, !dbg !243
  %arrayidx = getelementptr inbounds i8** %ptr.1, i64 %indvars.iv, !dbg !243
  store i8* %call5, i8** %arrayidx, align 8, !dbg !243, !tbaa !145
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !236
  %inc = add nsw i32 %i.021, 1, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !129), !dbg !244
  %call1 = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %call) #7, !dbg !236
  %tobool = icmp eq i8* %call1, null, !dbg !236
  br i1 %tobool, label %while.end, label %while.body, !dbg !236

while.end:                                        ; preds = %if.end, %entry
  %ptr.0.lcssa = phi i8** [ null, %entry ], [ %ptr.1, %if.end ]
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  call void @llvm.dbg.value(metadata !{i32 %i.0.lcssa}, i64 0, metadata !130), !dbg !245
  call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !246
  %4 = bitcast i8** %ptr.0.lcssa to i8*, !dbg !247
  %mul7 = shl i32 %i.0.lcssa, 3, !dbg !247
  %call9 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 197, i8* %4, i32 %mul7) #7, !dbg !247
  %5 = bitcast i8* %call9 to i8**, !dbg !247
  call void @llvm.dbg.value(metadata !{i8** %5}, i64 0, metadata !127), !dbg !247
  store i8** %5, i8*** %strings, align 8, !dbg !248, !tbaa !145
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !249
  ret i32 %i.0.lcssa, !dbg !249
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !132, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !71, metadata !82, metadata !98, metadata !106, metadata !116, metadata !122}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_a_line", metadata !"get_a_line", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i32)* @get_a_line, null, null, metadata !66, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [get_a_line]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !16, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!12 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42, metadata !44, metadata !46, metadata !50, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !62}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!27 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!30 = metadata !{i32 786451, metadata !12, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !35}
!32 = metadata !{i32 786445, metadata !12, metadata !30, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !12, metadata !30, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!35 = metadata !{i32 786445, metadata !12, metadata !30, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !34} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!37 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!40 = metadata !{i32 786454, metadata !12, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !43} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !45} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!45 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !47} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !53} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!53 = metadata !{i32 786454, metadata !12, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!58 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!59 = metadata !{i32 786454, metadata !12, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!60 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!62 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !63} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !17, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70}
!67 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 16777257, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 41]
!68 = metadata !{i32 786689, metadata !4, metadata !"line", metadata !5, i32 33554473, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 41]
!69 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 50331689, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 41]
!70 = metadata !{i32 786688, metadata !4, metadata !"dum", metadata !5, i32 45, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum] [line 45]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_header", metadata !"get_header", metadata !"", i32 75, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @get_header, null, null, metadata !74, i32 76} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 76] [get_header]
!72 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !8, metadata !16, metadata !16}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !81}
!75 = metadata !{i32 786689, metadata !71, metadata !"line", metadata !5, i32 16777291, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 75]
!76 = metadata !{i32 786689, metadata !71, metadata !"header", metadata !5, i32 33554507, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [header] [line 75]
!77 = metadata !{i32 786688, metadata !71, metadata !"temp", metadata !5, i32 77, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 77]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !17, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 4096}     ; [ DW_TAG_subrange_type ] [0, 4095]
!81 = metadata !{i32 786688, metadata !71, metadata !"dum", metadata !5, i32 77, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum] [line 77]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_strings", metadata !"get_strings", metadata !"", i32 96, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8***)* @get_strings, null, null, metadata !87, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [get_strings]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !8, metadata !16, metadata !85}
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !96, metadata !97}
!88 = metadata !{i32 786689, metadata !82, metadata !"db", metadata !5, i32 16777312, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [db] [line 96]
!89 = metadata !{i32 786689, metadata !82, metadata !"strings", metadata !5, i32 33554528, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strings] [line 96]
!90 = metadata !{i32 786688, metadata !82, metadata !"in", metadata !5, i32 98, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 98]
!91 = metadata !{i32 786688, metadata !82, metadata !"ptr", metadata !5, i32 99, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 99]
!92 = metadata !{i32 786688, metadata !82, metadata !"buf", metadata !5, i32 100, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 100]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !17, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!96 = metadata !{i32 786688, metadata !82, metadata !"i", metadata !5, i32 101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 101]
!97 = metadata !{i32 786688, metadata !82, metadata !"nstr", metadata !5, i32 101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstr] [line 101]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"search_str", metadata !"search_str", metadata !"", i32 127, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**, i8*)* @search_str, null, null, metadata !101, i32 128} ; [ DW_TAG_subprogram ] [line 127] [def] [scope 128] [search_str]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !8, metadata !8, metadata !86, metadata !16}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105}
!102 = metadata !{i32 786689, metadata !98, metadata !"nstr", metadata !5, i32 16777343, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nstr] [line 127]
!103 = metadata !{i32 786689, metadata !98, metadata !"str", metadata !5, i32 33554559, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 127]
!104 = metadata !{i32 786689, metadata !98, metadata !"key", metadata !5, i32 50331775, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 127]
!105 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !5, i32 129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 129]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fget_lines", metadata !"fget_lines", metadata !"", i32 139, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8***)* @fget_lines, null, null, metadata !109, i32 140} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 140] [fget_lines]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !8, metadata !9, metadata !85}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!110 = metadata !{i32 786689, metadata !106, metadata !"in", metadata !5, i32 16777355, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 139]
!111 = metadata !{i32 786689, metadata !106, metadata !"strings", metadata !5, i32 33554571, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strings] [line 139]
!112 = metadata !{i32 786688, metadata !106, metadata !"ptr", metadata !5, i32 141, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 141]
!113 = metadata !{i32 786688, metadata !106, metadata !"buf", metadata !5, i32 142, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 142]
!114 = metadata !{i32 786688, metadata !106, metadata !"i", metadata !5, i32 143, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 143]
!115 = metadata !{i32 786688, metadata !106, metadata !"nstr", metadata !5, i32 143, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstr] [line 143]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_lines", metadata !"get_lines", metadata !"", i32 164, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8***)* @get_lines, null, null, metadata !117, i32 165} ; [ DW_TAG_subprogram ] [line 164] [def] [scope 165] [get_lines]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786689, metadata !116, metadata !"db", metadata !5, i32 16777380, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [db] [line 164]
!119 = metadata !{i32 786689, metadata !116, metadata !"strings", metadata !5, i32 33554596, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strings] [line 164]
!120 = metadata !{i32 786688, metadata !116, metadata !"in", metadata !5, i32 166, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 166]
!121 = metadata !{i32 786688, metadata !116, metadata !"nstr", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstr] [line 167]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_file", metadata !"get_file", metadata !"", i32 177, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8***)* @get_file, null, null, metadata !123, i32 178} ; [ DW_TAG_subprogram ] [line 177] [def] [scope 178] [get_file]
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!124 = metadata !{i32 786689, metadata !122, metadata !"db", metadata !5, i32 16777393, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [db] [line 177]
!125 = metadata !{i32 786689, metadata !122, metadata !"strings", metadata !5, i32 33554609, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strings] [line 177]
!126 = metadata !{i32 786688, metadata !122, metadata !"in", metadata !5, i32 179, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 179]
!127 = metadata !{i32 786688, metadata !122, metadata !"ptr", metadata !5, i32 180, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 180]
!128 = metadata !{i32 786688, metadata !122, metadata !"buf", metadata !5, i32 181, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 181]
!129 = metadata !{i32 786688, metadata !122, metadata !"i", metadata !5, i32 182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 182]
!130 = metadata !{i32 786688, metadata !122, metadata !"nstr", metadata !5, i32 182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstr] [line 182]
!131 = metadata !{i32 786688, metadata !122, metadata !"maxi", metadata !5, i32 182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxi] [line 182]
!132 = metadata !{metadata !133, metadata !134}
!133 = metadata !{i32 786484, i32 0, metadata !4, metadata !"line0", metadata !"line0", metadata !"", metadata !5, i32 43, metadata !16, i32 1, i32 1, i8** @get_a_line.line0, null} ; [ DW_TAG_variable ] [line0] [line 43] [local] [def]
!134 = metadata !{i32 786484, i32 0, metadata !4, metadata !"nalloc", metadata !"nalloc", metadata !"", metadata !5, i32 44, metadata !8, i32 1, i32 1, i32* @get_a_line.nalloc, null} ; [ DW_TAG_variable ] [nalloc] [line 44] [local] [def]
!135 = metadata !{i32 41, i32 0, metadata !4, null}
!136 = metadata !{i32 47, i32 0, metadata !4, null}
!137 = metadata !{metadata !"int", metadata !138}
!138 = metadata !{metadata !"omnipotent char", metadata !139}
!139 = metadata !{metadata !"Simple C/C++ TBAA"}
!140 = metadata !{i32 52, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!142 = metadata !{i32 48, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!144 = metadata !{i32 49, i32 0, metadata !143, null}
!145 = metadata !{metadata !"any pointer", metadata !138}
!146 = metadata !{i32 50, i32 0, metadata !143, null}
!147 = metadata !{i32 58, i32 0, metadata !141, null} ; [ DW_TAG_imported_module ]
!148 = metadata !{i32 60, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !141, i32 58, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!150 = metadata !{i32 55, i32 0, metadata !141, null}
!151 = metadata !{i32 56, i32 0, metadata !141, null}
!152 = metadata !{i32 57, i32 0, metadata !141, null}
!153 = metadata !{i32 59, i32 0, metadata !149, null}
!154 = metadata !{i32 61, i32 0, metadata !149, null}
!155 = metadata !{i32 62, i32 0, metadata !141, null}
!156 = metadata !{i32 64, i32 0, metadata !141, null}
!157 = metadata !{i32 65, i32 0, metadata !141, null}
!158 = metadata !{i32 66, i32 0, metadata !141, null}
!159 = metadata !{i32 67, i32 0, metadata !141, null}
!160 = metadata !{i32 68, i32 0, metadata !141, null}
!161 = metadata !{i32 69, i32 0, metadata !141, null}
!162 = metadata !{i32 70, i32 0, metadata !141, null}
!163 = metadata !{i32 72, i32 0, metadata !4, null}
!164 = metadata !{i32 75, i32 0, metadata !71, null}
!165 = metadata !{i32 77, i32 0, metadata !71, null}
!166 = metadata !{i32 79, i32 0, metadata !71, null}
!167 = metadata !{i32 80, i32 0, metadata !71, null}
!168 = metadata !{i32 81, i32 0, metadata !71, null}
!169 = metadata !{i32 83, i32 0, metadata !71, null}
!170 = metadata !{i32 84, i32 0, metadata !71, null}
!171 = metadata !{i32 85, i32 0, metadata !71, null}
!172 = metadata !{i32 86, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !71, i32 85, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!174 = metadata !{i32 87, i32 0, metadata !173, null}
!175 = metadata !{i32 89, i32 0, metadata !71, null}
!176 = metadata !{i32 90, i32 0, metadata !71, null}
!177 = metadata !{i32 93, i32 0, metadata !71, null}
!178 = metadata !{i32 94, i32 0, metadata !71, null}
!179 = metadata !{i32 96, i32 0, metadata !82, null}
!180 = metadata !{i32 100, i32 0, metadata !82, null}
!181 = metadata !{i32 101, i32 0, metadata !82, null}
!182 = metadata !{i32 103, i32 0, metadata !82, null}
!183 = metadata !{i32 105, i32 0, metadata !82, null}
!184 = metadata !{i32 106, i32 0, metadata !82, null}
!185 = metadata !{i32 107, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !82, i32 106, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!187 = metadata !{i32 108, i32 0, metadata !186, null}
!188 = metadata !{i32 109, i32 0, metadata !186, null}
!189 = metadata !{i32 110, i32 0, metadata !186, null}
!190 = metadata !{i32 112, i32 0, metadata !82, null}
!191 = metadata !{i32 113, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !82, i32 113, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!193 = metadata !{i32 114, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !192, i32 113, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!195 = metadata !{i32 118, i32 0, metadata !194, null}
!196 = metadata !{i32 120, i32 0, metadata !82, null}
!197 = metadata !{i32 122, i32 0, metadata !82, null}
!198 = metadata !{i32 124, i32 0, metadata !82, null}
!199 = metadata !{i32 125, i32 0, metadata !82, null}
!200 = metadata !{i32 127, i32 0, metadata !98, null}
!201 = metadata !{i32 132, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !98, i32 132, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!203 = metadata !{i32 133, i32 0, metadata !202, null}
!204 = metadata !{i32 137, i32 0, metadata !98, null}
!205 = metadata !{i32 139, i32 0, metadata !106, null}
!206 = metadata !{i32 142, i32 0, metadata !106, null}
!207 = metadata !{i32 143, i32 0, metadata !106, null}
!208 = metadata !{i32 145, i32 0, metadata !106, null}
!209 = metadata !{i32 146, i32 0, metadata !106, null}
!210 = metadata !{i32 147, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !106, i32 146, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!212 = metadata !{i32 148, i32 0, metadata !211, null}
!213 = metadata !{i32 149, i32 0, metadata !211, null}
!214 = metadata !{i32 151, i32 0, metadata !211, null}
!215 = metadata !{i32 153, i32 0, metadata !106, null}
!216 = metadata !{i32 154, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !106, i32 154, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!218 = metadata !{i32 155, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !217, i32 154, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!220 = metadata !{i32 156, i32 0, metadata !219, null}
!221 = metadata !{i32 159, i32 0, metadata !106, null}
!222 = metadata !{i32 161, i32 0, metadata !106, null}
!223 = metadata !{i32 162, i32 0, metadata !106, null}
!224 = metadata !{i32 164, i32 0, metadata !116, null}
!225 = metadata !{i32 169, i32 0, metadata !116, null}
!226 = metadata !{i32 170, i32 0, metadata !116, null}
!227 = metadata !{i32 171, i32 0, metadata !116, null}
!228 = metadata !{i32 172, i32 0, metadata !116, null}
!229 = metadata !{i32 174, i32 0, metadata !116, null}
!230 = metadata !{i32 177, i32 0, metadata !122, null}
!231 = metadata !{i8** null}
!232 = metadata !{i32 180, i32 0, metadata !122, null}
!233 = metadata !{i32 181, i32 0, metadata !122, null}
!234 = metadata !{i32 184, i32 0, metadata !122, null}
!235 = metadata !{i32 186, i32 0, metadata !122, null}
!236 = metadata !{i32 187, i32 0, metadata !122, null}
!237 = metadata !{i32 188, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !122, i32 187, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!239 = metadata !{i32 189, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !238, i32 188, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/strdb.c]
!241 = metadata !{i32 190, i32 0, metadata !240, null}
!242 = metadata !{i32 191, i32 0, metadata !240, null}
!243 = metadata !{i32 192, i32 0, metadata !238, null}
!244 = metadata !{i32 193, i32 0, metadata !238, null}
!245 = metadata !{i32 195, i32 0, metadata !122, null}
!246 = metadata !{i32 196, i32 0, metadata !122, null}
!247 = metadata !{i32 197, i32 0, metadata !122, null}
!248 = metadata !{i32 198, i32 0, metadata !122, null}
!249 = metadata !{i32 201, i32 0, metadata !122, null}
