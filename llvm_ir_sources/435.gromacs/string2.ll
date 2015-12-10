; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"onbekend\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"%c\09File '%s' was generated\0A\00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"%c\09By user: %s (%d)\0A\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"%c\09On host: %s\0A\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"%c\09At date: %s\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"b2\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @continuing(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !12), !dbg !185
  tail call void @rtrim(i8* %s) #8, !dbg !186
  %call = tail call i64 @strlen(i8* %s) #9, !dbg !187
  %conv = trunc i64 %call to i32, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !13), !dbg !187
  %cmp = icmp sgt i32 %conv, 0, !dbg !188
  br i1 %cmp, label %land.lhs.true, label %return, !dbg !188

land.lhs.true:                                    ; preds = %entry
  %sub = shl i64 %call, 32, !dbg !188
  %sext = add i64 %sub, -4294967296, !dbg !188
  %idxprom = ashr exact i64 %sext, 32, !dbg !188
  %arrayidx = getelementptr inbounds i8* %s, i64 %idxprom, !dbg !188
  %0 = load i8* %arrayidx, align 1, !dbg !188, !tbaa !189
  %cmp3 = icmp eq i8 %0, 92, !dbg !188
  br i1 %cmp3, label %if.then, label %return, !dbg !188

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %arrayidx, align 1, !dbg !191, !tbaa !189
  br label %return, !dbg !193

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !194
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @rtrim(i8* %str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !97), !dbg !195
  %tobool = icmp eq i8* %str, null, !dbg !196
  br i1 %tobool, label %while.end, label %if.end, !dbg !196

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %str) #9, !dbg !197
  %sub = add i64 %call, 4294967295, !dbg !197
  %conv = trunc i64 %sub to i32, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !98), !dbg !197
  %cmp20 = icmp sgt i32 %conv, 0, !dbg !198
  br i1 %cmp20, label %land.rhs.lr.ph, label %while.end, !dbg !198

land.rhs.lr.ph:                                   ; preds = %if.end
  %sext = shl i64 %sub, 32
  %0 = ashr exact i64 %sext, 32
  br label %land.rhs, !dbg !198

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %0, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %arrayidx = getelementptr inbounds i8* %str, i64 %indvars.iv, !dbg !198
  %1 = load i8* %arrayidx, align 1, !dbg !198, !tbaa !189
  switch i8 %1, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
  ], !dbg !198

while.body:                                       ; preds = %land.rhs, %land.rhs
  store i8 0, i8* %arrayidx, align 1, !dbg !199, !tbaa !189
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !198
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !198
  %cmp = icmp sgt i32 %2, 0, !dbg !198
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !198

while.end:                                        ; preds = %if.end, %land.rhs, %while.body, %entry
  ret void, !dbg !201
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @fgets2(i8* %line, i32 %n, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !73), !dbg !202
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !74), !dbg !202
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %stream}, i64 0, metadata !75), !dbg !202
  %call = tail call i8* @fgets(i8* %line, i32 %n, %struct._IO_FILE* %stream) #10, !dbg !203
  %cmp = icmp eq i8* %call, null, !dbg !203
  br i1 %cmp, label %return, label %if.end, !dbg !203

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @strchr(i8* %line, i32 10) #9, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !76), !dbg !204
  %cmp2 = icmp eq i8* %call1, null, !dbg !204
  br i1 %cmp2, label %return, label %if.then3, !dbg !204

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %call1, align 1, !dbg !204, !tbaa !189
  br label %return, !dbg !204

return:                                           ; preds = %if.then3, %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %line, %if.end ], [ %line, %if.then3 ]
  ret i8* %retval.0, !dbg !205
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @strip_comment(i8* %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !81), !dbg !206
  %tobool = icmp eq i8* %line, null, !dbg !207
  br i1 %tobool, label %if.end2, label %if.end, !dbg !207

if.end:                                           ; preds = %entry
  %call = tail call i8* @strchr(i8* %line, i32 59) #9, !dbg !208
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !82), !dbg !208
  %cmp = icmp eq i8* %call, null, !dbg !208
  br i1 %cmp, label %if.end2, label %if.then1, !dbg !208

if.then1:                                         ; preds = %if.end
  store i8 0, i8* %call, align 1, !dbg !209, !tbaa !189
  br label %if.end2, !dbg !209

if.end2:                                          ; preds = %if.end, %entry, %if.then1
  ret void, !dbg !209
}

; Function Attrs: nounwind optsize uwtable
define void @upstring(i8* nocapture %str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !85), !dbg !210
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !86), !dbg !211
  %call14 = tail call i64 @strlen(i8* %str) #9, !dbg !211
  %conv15 = trunc i64 %call14 to i32, !dbg !211
  %cmp16 = icmp sgt i32 %conv15, 0, !dbg !211
  br i1 %cmp16, label %for.body.lr.ph, label %for.end, !dbg !211

for.body.lr.ph:                                   ; preds = %entry
  %call4 = tail call i32** @__ctype_toupper_loc() #11, !dbg !212
  br label %for.body, !dbg !211

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8* %str, i64 %indvars.iv, !dbg !212
  %0 = load i8* %arrayidx, align 1, !dbg !212, !tbaa !189
  %idxprom3 = sext i8 %0 to i64, !dbg !212
  %1 = load i32** %call4, align 8, !dbg !212, !tbaa !213
  %arrayidx5 = getelementptr inbounds i32* %1, i64 %idxprom3, !dbg !212
  %2 = load i32* %arrayidx5, align 4, !dbg !212, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !87), !dbg !212
  %conv6 = trunc i32 %2 to i8, !dbg !212
  store i8 %conv6, i8* %arrayidx, align 1, !dbg !212, !tbaa !189
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !211
  %call = tail call i64 @strlen(i8* %str) #9, !dbg !211
  %conv = trunc i64 %call to i32, !dbg !211
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !211
  %cmp = icmp slt i32 %3, %conv, !dbg !211
  br i1 %cmp, label %for.body, label %for.end, !dbg !211

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !215
}

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_toupper_loc() #4

; Function Attrs: nounwind optsize uwtable
define void @ltrim(i8* %str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !92), !dbg !216
  %tobool = icmp eq i8* %str, null, !dbg !217
  br i1 %tobool, label %return, label %if.end, !dbg !217

if.end:                                           ; preds = %entry
  %call = tail call noalias i8* @strdup(i8* %str) #10, !dbg !218
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !93), !dbg !218
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !219
  br label %while.cond, !dbg !220

while.cond:                                       ; preds = %while.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !220
  %0 = load i8* %arrayidx, align 1, !dbg !220, !tbaa !189
  switch i8 %0, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
  ], !dbg !220

while.body:                                       ; preds = %while.cond, %while.cond
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !221
  br label %while.cond, !dbg !221

while.end:                                        ; preds = %while.cond
  %call7 = tail call i8* @strcpy(i8* %str, i8* %arrayidx) #10, !dbg !222
  tail call void @free(i8* %call) #10, !dbg !223
  br label %return, !dbg !223

return:                                           ; preds = %entry, %while.end
  ret void, !dbg !223
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @trim(i8* %str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !101), !dbg !224
  tail call void @ltrim(i8* %str) #8, !dbg !225
  tail call void @rtrim(i8* %str) #8, !dbg !226
  ret void, !dbg !227
}

; Function Attrs: nounwind optsize uwtable
define void @nice_header(%struct._IO_FILE* nocapture %out, i8* %fn) #0 {
entry:
  %clock = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !106), !dbg !228
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !107), !dbg !228
  call void @llvm.dbg.value(metadata !229, i64 0, metadata !108), !dbg !230
  call void @llvm.dbg.declare(metadata !{i64* %clock}, metadata !109), !dbg !231
  call void @llvm.dbg.value(metadata !232, i64 0, metadata !112), !dbg !233
  %call = call i64 @time(i64* null) #10, !dbg !234
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !109), !dbg !234
  store i64 %call, i64* %clock, align 8, !dbg !234, !tbaa !235
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 59) #10, !dbg !236
  %tobool = icmp ne i8* %fn, null, !dbg !237
  %cond = select i1 %tobool, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), !dbg !237
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i32 59, i8* %cond) #10, !dbg !237
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !238
  call void @llvm.dbg.value(metadata !239, i64 0, metadata !113), !dbg !240
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0) #10, !dbg !241
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #10, !dbg !242
  %call14 = call i8* @ctime(i64* %clock) #10, !dbg !243
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i32 59, i8* %call14) #10, !dbg !243
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 59) #10, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @strcasecmp_min(i8* nocapture %str1, i8* nocapture %str2) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str1}, i64 0, metadata !128), !dbg !246
  tail call void @llvm.dbg.value(metadata !{i8* %str2}, i64 0, metadata !129), !dbg !246
  %call = tail call i32** @__ctype_toupper_loc() #11, !dbg !247
  %0 = load i32** %call, align 8, !dbg !247, !tbaa !213
  br label %do.body1.outer, !dbg !248

do.body1.outer:                                   ; preds = %do.cond32, %entry
  %str2.addr.0.ph = phi i8* [ %str2, %entry ], [ %incdec.ptr10, %do.cond32 ]
  %str1.addr.0.ph = phi i8* [ %str1, %entry ], [ %incdec.ptr, %do.cond32 ]
  br label %do.body1

do.body1:                                         ; preds = %do.body1, %do.body1, %do.body1.outer
  %str1.addr.0 = phi i8* [ %str1.addr.0.ph, %do.body1.outer ], [ %incdec.ptr, %do.body1 ], [ %incdec.ptr, %do.body1 ]
  %incdec.ptr = getelementptr inbounds i8* %str1.addr.0, i64 1, !dbg !247
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !128), !dbg !247
  %1 = load i8* %str1.addr.0, align 1, !dbg !247, !tbaa !189
  %idxprom = sext i8 %1 to i64, !dbg !247
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !247
  %2 = load i32* %arrayidx, align 4, !dbg !247, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !132), !dbg !247
  %conv2 = trunc i32 %2 to i8, !dbg !247
  tail call void @llvm.dbg.value(metadata !{i8 %conv2}, i64 0, metadata !130), !dbg !247
  %sext = shl i32 %2, 24, !dbg !247
  %conv3 = ashr exact i32 %sext, 24, !dbg !247
  switch i32 %conv3, label %do.body8 [
    i32 45, label %do.body1
    i32 95, label %do.body1
  ], !dbg !247

do.body8:                                         ; preds = %do.body8, %do.body8, %do.body1
  %str2.addr.1 = phi i8* [ %str2.addr.0.ph, %do.body1 ], [ %incdec.ptr10, %do.body8 ], [ %incdec.ptr10, %do.body8 ]
  %incdec.ptr10 = getelementptr inbounds i8* %str2.addr.1, i64 1, !dbg !249
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr10}, i64 0, metadata !129), !dbg !249
  %3 = load i8* %str2.addr.1, align 1, !dbg !249, !tbaa !189
  %idxprom12 = sext i8 %3 to i64, !dbg !249
  %arrayidx14 = getelementptr inbounds i32* %0, i64 %idxprom12, !dbg !249
  %4 = load i32* %arrayidx14, align 4, !dbg !249, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !135), !dbg !249
  %sext40 = shl i32 %4, 24, !dbg !249
  %conv17 = ashr exact i32 %sext40, 24, !dbg !249
  switch i32 %conv17, label %do.end25 [
    i32 45, label %do.body8
    i32 95, label %do.body8
  ], !dbg !249

do.end25:                                         ; preds = %do.body8
  %cmp28 = icmp eq i32 %conv3, %conv17, !dbg !250
  br i1 %cmp28, label %do.cond32, label %if.then, !dbg !250

if.then:                                          ; preds = %do.end25
  %sub = sub nsw i32 %conv3, %conv17, !dbg !250
  br label %return, !dbg !250

do.cond32:                                        ; preds = %do.end25
  %tobool = icmp eq i8 %conv2, 0, !dbg !251
  br i1 %tobool, label %return, label %do.body1.outer, !dbg !251

return:                                           ; preds = %do.cond32, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %do.cond32 ]
  ret i32 %retval.0, !dbg !252
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @gmx_strcasecmp(i8* nocapture %str1, i8* nocapture %str2) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str1}, i64 0, metadata !139), !dbg !253
  tail call void @llvm.dbg.value(metadata !{i8* %str2}, i64 0, metadata !140), !dbg !253
  %call = tail call i32** @__ctype_toupper_loc() #11, !dbg !254
  %0 = load i32** %call, align 8, !dbg !254, !tbaa !213
  br label %do.body, !dbg !255

do.body:                                          ; preds = %do.cond, %entry
  %str2.addr.0 = phi i8* [ %str2, %entry ], [ %incdec.ptr3, %do.cond ]
  %str1.addr.0 = phi i8* [ %str1, %entry ], [ %incdec.ptr, %do.cond ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !139), !dbg !254
  %1 = load i8* %str1.addr.0, align 1, !dbg !254, !tbaa !189
  %idxprom = sext i8 %1 to i64, !dbg !254
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !254
  %2 = load i32* %arrayidx, align 4, !dbg !254, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !143), !dbg !254
  tail call void @llvm.dbg.value(metadata !{i8 %conv1}, i64 0, metadata !141), !dbg !254
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3}, i64 0, metadata !140), !dbg !256
  %3 = load i8* %str2.addr.0, align 1, !dbg !256, !tbaa !189
  %idxprom5 = sext i8 %3 to i64, !dbg !256
  %arrayidx7 = getelementptr inbounds i32* %0, i64 %idxprom5, !dbg !256
  %4 = load i32* %arrayidx7, align 4, !dbg !256, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !146), !dbg !256
  %sext = shl i32 %2, 24, !dbg !257
  %conv9 = ashr exact i32 %sext, 24, !dbg !257
  %sext16 = shl i32 %4, 24, !dbg !257
  %conv10 = ashr exact i32 %sext16, 24, !dbg !257
  %cmp = icmp eq i32 %conv9, %conv10, !dbg !257
  br i1 %cmp, label %do.cond, label %if.then, !dbg !257

if.then:                                          ; preds = %do.body
  %sub = sub nsw i32 %conv9, %conv10, !dbg !257
  br label %return, !dbg !257

do.cond:                                          ; preds = %do.body
  %conv1 = trunc i32 %2 to i8, !dbg !254
  %incdec.ptr3 = getelementptr inbounds i8* %str2.addr.0, i64 1, !dbg !256
  %incdec.ptr = getelementptr inbounds i8* %str1.addr.0, i64 1, !dbg !254
  %tobool = icmp eq i8 %conv1, 0, !dbg !258
  br i1 %tobool, label %return, label %do.body, !dbg !258

return:                                           ; preds = %do.cond, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %do.cond ]
  ret i32 %retval.0, !dbg !259
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @gmx_strncasecmp(i8* nocapture %str1, i8* nocapture %str2, i32 %n) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str1}, i64 0, metadata !152), !dbg !260
  tail call void @llvm.dbg.value(metadata !{i8* %str2}, i64 0, metadata !153), !dbg !260
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !154), !dbg !260
  %cmp = icmp eq i32 %n, 0, !dbg !261
  br i1 %cmp, label %return, label %do.body.preheader, !dbg !261

do.body.preheader:                                ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #11, !dbg !262
  %0 = load i32** %call, align 8, !dbg !262, !tbaa !213
  br label %do.body, !dbg !262

do.body:                                          ; preds = %do.body.preheader, %if.end16
  %n.addr.0 = phi i32 [ %dec, %if.end16 ], [ %n, %do.body.preheader ]
  %str2.addr.0 = phi i8* [ %incdec.ptr3, %if.end16 ], [ %str2, %do.body.preheader ]
  %str1.addr.0 = phi i8* [ %incdec.ptr, %if.end16 ], [ %str1, %do.body.preheader ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !152), !dbg !262
  %1 = load i8* %str1.addr.0, align 1, !dbg !262, !tbaa !189
  %idxprom = sext i8 %1 to i64, !dbg !262
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !262
  %2 = load i32* %arrayidx, align 4, !dbg !262, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !157), !dbg !262
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3}, i64 0, metadata !153), !dbg !263
  %3 = load i8* %str2.addr.0, align 1, !dbg !263, !tbaa !189
  %idxprom5 = sext i8 %3 to i64, !dbg !263
  %arrayidx7 = getelementptr inbounds i32* %0, i64 %idxprom5, !dbg !263
  %4 = load i32* %arrayidx7, align 4, !dbg !263, !tbaa !214
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !160), !dbg !263
  %sext = shl i32 %2, 24, !dbg !264
  %conv9 = ashr exact i32 %sext, 24, !dbg !264
  %sext24 = shl i32 %4, 24, !dbg !264
  %conv10 = ashr exact i32 %sext24, 24, !dbg !264
  %cmp11 = icmp eq i32 %conv9, %conv10, !dbg !264
  br i1 %cmp11, label %if.end16, label %if.then13, !dbg !264

if.then13:                                        ; preds = %do.body
  %sub = sub nsw i32 %conv9, %conv10, !dbg !264
  br label %return, !dbg !264

if.end16:                                         ; preds = %do.body
  %incdec.ptr3 = getelementptr inbounds i8* %str2.addr.0, i64 1, !dbg !263
  %incdec.ptr = getelementptr inbounds i8* %str1.addr.0, i64 1, !dbg !262
  %dec = add nsw i32 %n.addr.0, -1, !dbg !265
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !154), !dbg !265
  %tobool = icmp eq i32 %conv9, 0, !dbg !266
  %tobool18 = icmp eq i32 %dec, 0, !dbg !266
  %or.cond = or i1 %tobool, %tobool18, !dbg !266
  br i1 %or.cond, label %return, label %do.body, !dbg !266

return:                                           ; preds = %if.end16, %entry, %if.then13
  %retval.0 = phi i32 [ %sub, %if.then13 ], [ 0, %entry ], [ 0, %if.end16 ]
  ret i32 %retval.0, !dbg !267
}

; Function Attrs: nounwind optsize uwtable
define i8* @gmx_strdup(i8* nocapture %src) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !166), !dbg !268
  %call = tail call i64 @strlen(i8* %src) #9, !dbg !269
  %add = add i64 %call, 1, !dbg !269
  %conv = trunc i64 %add to i32, !dbg !269
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 227, i32 %conv, i32 1) #10, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !167), !dbg !269
  %call2 = tail call i8* @strcpy(i8* %call1, i8* %src) #10, !dbg !270
  ret i8* %call1, !dbg !271
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define i8* @wrap_lines(i8* nocapture %buf, i32 %line_width, i32 %indent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !172), !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %line_width}, i64 0, metadata !173), !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %indent}, i64 0, metadata !174), !dbg !272
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !181), !dbg !273
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !182), !dbg !273
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !175), !dbg !274
  %call = tail call i64 @strlen(i8* %buf) #9, !dbg !275
  %add = add i64 %call, 1, !dbg !275
  %conv = trunc i64 %add to i32, !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !180), !dbg !275
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 253, i32 %conv, i32 1) #10, !dbg !276
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !175), !dbg !276
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !177), !dbg !277
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !178), !dbg !278
  tail call void @llvm.dbg.value(metadata !279, i64 0, metadata !183), !dbg !280
  %cmp33150 = icmp sgt i32 %indent, 0, !dbg !281
  %tobool60 = icmp eq i32 %indent, 0, !dbg !287
  %0 = add i32 %indent, 1, !dbg !281
  %1 = add i32 %indent, -1, !dbg !290
  %2 = zext i32 %1 to i64
  %3 = add i64 %2, 1, !dbg !290
  br label %do.body, !dbg !290

do.body:                                          ; preds = %do.cond, %entry
  %b2.0 = phi i8* [ %call1, %entry ], [ %b2.3, %do.cond ]
  %i0.0 = phi i32 [ 0, %entry ], [ %i0.4, %do.cond ]
  %i2.0 = phi i32 [ 0, %entry ], [ %i2.5, %do.cond ]
  %b2len.0 = phi i32 [ %conv, %entry ], [ %b2len.3, %do.cond ]
  %lspace.0 = phi i32 [ 0, %entry ], [ %lspace.1.lcssa178, %do.cond ]
  %bFirst.0 = phi i32 [ 1, %entry ], [ %bFirst.2, %do.cond ]
  %line_width.addr.0 = phi i32 [ %line_width, %entry ], [ %line_width.addr.2, %do.cond ]
  tail call void @llvm.dbg.value(metadata !239, i64 0, metadata !182), !dbg !291
  tail call void @llvm.dbg.value(metadata !{i32 %i0.0}, i64 0, metadata !176), !dbg !292
  %idxprom154 = sext i32 %i0.0 to i64, !dbg !292
  %arrayidx155 = getelementptr inbounds i8* %buf, i64 %idxprom154, !dbg !292
  %4 = load i8* %arrayidx155, align 1, !dbg !292, !tbaa !189
  br label %land.end, !dbg !292

land.end:                                         ; preds = %do.body, %for.inc41
  %indvars.iv = phi i64 [ %idxprom154, %do.body ], [ %8, %for.inc41 ]
  %5 = phi i8 [ %4, %do.body ], [ %14, %for.inc41 ]
  %l2space.0162 = phi i32 [ -1, %do.body ], [ %i2.1.l2space.0, %for.inc41 ]
  %lspace.1161 = phi i32 [ %lspace.0, %do.body ], [ %i.0.lspace.1, %for.inc41 ]
  %b2len.1160 = phi i32 [ %b2len.0, %do.body ], [ %b2len.2, %for.inc41 ]
  %i2.1159 = phi i32 [ %i2.0, %do.body ], [ %i2.3, %for.inc41 ]
  %i0.1158 = phi i32 [ %i0.0, %do.body ], [ %i0.2, %for.inc41 ]
  %b2.1156 = phi i8* [ %b2.0, %do.body ], [ %b2.2, %for.inc41 ]
  %tobool = icmp eq i8 %5, 0, !dbg !292
  %arrayidx7 = getelementptr inbounds i8* %buf, i64 %indvars.iv, !dbg !293
  br i1 %tobool, label %do.cond, label %for.body

for.body:                                         ; preds = %land.end
  %inc = add i32 %i2.1159, 1, !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !178), !dbg !293
  %idxprom8 = sext i32 %i2.1159 to i64, !dbg !293
  %arrayidx9 = getelementptr inbounds i8* %b2.1156, i64 %idxprom8, !dbg !293
  store i8 %5, i8* %arrayidx9, align 1, !dbg !293, !tbaa !189
  %6 = load i8* %arrayidx7, align 1, !dbg !294, !tbaa !189
  %cmp13 = icmp eq i8 %6, 32, !dbg !294
  tail call void @llvm.dbg.value(metadata !295, i64 0, metadata !181), !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %i2.3}, i64 0, metadata !182), !dbg !298
  %7 = trunc i64 %indvars.iv to i32, !dbg !294
  %i.0.lspace.1 = select i1 %cmp13, i32 %7, i32 %lspace.1161, !dbg !294
  %i2.1.l2space.0 = select i1 %cmp13, i32 %i2.1159, i32 %l2space.0162, !dbg !294
  %cmp19 = icmp eq i8 %6, 10, !dbg !299
  %8 = add i64 %indvars.iv, 1, !dbg !299
  %arrayidx23 = getelementptr inbounds i8* %buf, i64 %8, !dbg !299
  br i1 %cmp19, label %land.lhs.true, label %for.inc41, !dbg !299

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8* %arrayidx23, align 1, !dbg !299, !tbaa !189
  %tobool25 = icmp eq i8 %9, 0, !dbg !299
  br i1 %tobool25, label %for.inc41, label %if.then26, !dbg !299

if.then26:                                        ; preds = %land.lhs.true
  %add28 = add nsw i32 %b2len.1160, %indent, !dbg !300
  tail call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !180), !dbg !300
  %call31 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 271, i8* %b2.1156, i32 %add28) #10, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i8* %call31}, i64 0, metadata !175), !dbg !301
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !179), !dbg !281
  br i1 %cmp33150, label %for.body35.lr.ph, label %for.inc41.loopexit, !dbg !281

for.body35.lr.ph:                                 ; preds = %if.then26
  %10 = sext i32 %inc to i64
  %scevgep = getelementptr i8* %call31, i64 %10
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 32, i64 %3, i32 1, i1 false), !dbg !302
  %11 = add i32 %0, %i2.1159, !dbg !281
  br label %for.inc41.loopexit, !dbg !281

for.inc41.loopexit:                               ; preds = %for.body35.lr.ph, %if.then26
  %i2.2.lcssa = phi i32 [ %11, %for.body35.lr.ph ], [ %inc, %if.then26 ]
  %12 = trunc i64 %8 to i32
  br label %for.inc41

for.inc41:                                        ; preds = %for.body, %for.inc41.loopexit, %land.lhs.true
  %b2.2 = phi i8* [ %call31, %for.inc41.loopexit ], [ %b2.1156, %land.lhs.true ], [ %b2.1156, %for.body ]
  %i0.2 = phi i32 [ %12, %for.inc41.loopexit ], [ %i0.1158, %land.lhs.true ], [ %i0.1158, %for.body ]
  %i2.3 = phi i32 [ %i2.2.lcssa, %for.inc41.loopexit ], [ %inc, %land.lhs.true ], [ %inc, %for.body ]
  %b2len.2 = phi i32 [ %add28, %for.inc41.loopexit ], [ %b2len.1160, %land.lhs.true ], [ %b2len.1160, %for.body ]
  %13 = trunc i64 %8 to i32, !dbg !292
  %sub = sub nsw i32 %13, %i0.2, !dbg !292
  %cmp = icmp slt i32 %sub, %line_width.addr.0, !dbg !292
  %cmp3 = icmp eq i32 %i2.1.l2space.0, -1, !dbg !292
  %or.cond = or i1 %cmp, %cmp3, !dbg !292
  %14 = load i8* %arrayidx23, align 1, !dbg !292, !tbaa !189
  br i1 %or.cond, label %land.end, label %for.end43, !dbg !292

for.end43:                                        ; preds = %for.inc41
  %tobool49 = icmp eq i8 %14, 0, !dbg !303
  br i1 %tobool49, label %do.cond, label %if.then50, !dbg !303

if.then50:                                        ; preds = %for.end43
  %cmp45 = icmp sgt i32 %sub, %line_width.addr.0, !dbg !304
  %add51 = add i32 %i.0.lspace.1, 1, !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %add51}, i64 0, metadata !177), !dbg !305
  %add52 = add i32 %i2.1.l2space.0, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %add52}, i64 0, metadata !178), !dbg !306
  %cmp55 = icmp slt i32 %i2.1.l2space.0, %indent, !dbg !307
  %or.cond146 = or i1 %cmp45, %cmp55, !dbg !307
  br i1 %or.cond146, label %do.cond, label %if.then57, !dbg !307

if.then57:                                        ; preds = %if.then50
  %idxprom58 = sext i32 %i2.1.l2space.0 to i64, !dbg !308
  %arrayidx59 = getelementptr inbounds i8* %b2.2, i64 %idxprom58, !dbg !308
  store i8 10, i8* %arrayidx59, align 1, !dbg !308, !tbaa !189
  br i1 %tobool60, label %do.cond, label %if.then61, !dbg !287

if.then61:                                        ; preds = %if.then57
  %tobool62 = icmp eq i32 %bFirst.0, 0, !dbg !309
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !311
  %sub64 = select i1 %tobool62, i32 0, i32 %indent, !dbg !309
  %line_width.addr.0.sub64 = sub nsw i32 %line_width.addr.0, %sub64, !dbg !309
  %add66 = add nsw i32 %b2len.2, %indent, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %add66}, i64 0, metadata !180), !dbg !313
  %call70 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 295, i8* %b2.2, i32 %add66) #10, !dbg !314
  tail call void @llvm.dbg.value(metadata !{i8* %call70}, i64 0, metadata !175), !dbg !314
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !179), !dbg !315
  br i1 %cmp33150, label %for.body74.lr.ph, label %while.cond.loopexit, !dbg !315

for.body74.lr.ph:                                 ; preds = %if.then61
  %15 = sext i32 %add52 to i64
  %scevgep173 = getelementptr i8* %call70, i64 %15
  call void @llvm.memset.p0i8.i64(i8* %scevgep173, i8 32, i64 %3, i32 1, i1 false), !dbg !317
  %16 = add i32 %0, %i2.1.l2space.0, !dbg !315
  br label %while.cond.loopexit, !dbg !315

while.cond.loopexit:                              ; preds = %for.body74.lr.ph, %if.then61
  %i2.4.lcssa = phi i32 [ %16, %for.body74.lr.ph ], [ %add52, %if.then61 ]
  %17 = sext i32 %add51 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.loopexit
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %while.cond ], [ %17, %while.cond.loopexit ]
  %i0.3 = phi i32 [ %inc86, %while.cond ], [ %add51, %while.cond.loopexit ]
  %arrayidx82 = getelementptr inbounds i8* %buf, i64 %indvars.iv174, !dbg !318
  %18 = load i8* %arrayidx82, align 1, !dbg !318, !tbaa !189
  %cmp84 = icmp eq i8 %18, 32, !dbg !318
  %inc86 = add nsw i32 %i0.3, 1, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32 %inc86}, i64 0, metadata !177), !dbg !319
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !318
  br i1 %cmp84, label %while.cond, label %do.cond, !dbg !318

do.cond:                                          ; preds = %land.end, %while.cond, %if.then57, %if.then50, %for.end43
  %arrayidx7149179 = phi i8* [ %arrayidx23, %if.then50 ], [ %arrayidx23, %for.end43 ], [ %arrayidx23, %if.then57 ], [ %arrayidx23, %while.cond ], [ %arrayidx7, %land.end ]
  %lspace.1.lcssa178 = phi i32 [ %i.0.lspace.1, %if.then50 ], [ %i.0.lspace.1, %for.end43 ], [ %i.0.lspace.1, %if.then57 ], [ %i.0.lspace.1, %while.cond ], [ %lspace.1161, %land.end ]
  %b2.3 = phi i8* [ %b2.2, %if.then50 ], [ %b2.2, %for.end43 ], [ %b2.2, %if.then57 ], [ %call70, %while.cond ], [ %b2.1156, %land.end ]
  %i0.4 = phi i32 [ %add51, %if.then50 ], [ %i0.2, %for.end43 ], [ %add51, %if.then57 ], [ %i0.3, %while.cond ], [ %i0.1158, %land.end ]
  %i2.5 = phi i32 [ %add52, %if.then50 ], [ %i2.3, %for.end43 ], [ %add52, %if.then57 ], [ %i2.4.lcssa, %while.cond ], [ %i2.1159, %land.end ]
  %b2len.3 = phi i32 [ %b2len.2, %if.then50 ], [ %b2len.2, %for.end43 ], [ %b2len.2, %if.then57 ], [ %add66, %while.cond ], [ %b2len.1160, %land.end ]
  %bFirst.2 = phi i32 [ %bFirst.0, %if.then50 ], [ %bFirst.0, %for.end43 ], [ %bFirst.0, %if.then57 ], [ 0, %while.cond ], [ %bFirst.0, %land.end ]
  %line_width.addr.2 = phi i32 [ %line_width.addr.0, %if.then50 ], [ %line_width.addr.0, %for.end43 ], [ %line_width.addr.0, %if.then57 ], [ %line_width.addr.0.sub64, %while.cond ], [ %line_width.addr.0, %land.end ]
  %19 = load i8* %arrayidx7149179, align 1, !dbg !320, !tbaa !189
  %tobool92 = icmp eq i8 %19, 0, !dbg !320
  br i1 %tobool92, label %do.end, label %do.body, !dbg !320

do.end:                                           ; preds = %do.cond
  %idxprom93 = sext i32 %i2.5 to i64, !dbg !321
  %arrayidx94 = getelementptr inbounds i8* %b2.3, i64 %idxprom93, !dbg !321
  store i8 0, i8* %arrayidx94, align 1, !dbg !321, !tbaa !189
  ret i8* %b2.3, !dbg !322
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !14, metadata !77, metadata !83, metadata !90, metadata !95, metadata !99, metadata !102, metadata !122, metadata !137, metadata !148, metadata !162, metadata !168}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"continuing", metadata !"continuing", metadata !"", i32 52, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @continuing, null, null, metadata !11, i32 56} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 56] [continuing]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786689, metadata !4, metadata !"s", metadata !5, i32 16777268, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 52]
!13 = metadata !{i32 786688, metadata !4, metadata !"sl", metadata !5, i32 57, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sl] [line 57]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fgets2", metadata !"fgets2", metadata !"", i32 69, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct._IO_FILE*)* @fgets2, null, null, metadata !72, i32 74} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 74] [fgets2]
!15 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !9, metadata !9, metadata !8, metadata !17}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!18 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!20 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !42, metadata !43, metadata !44, metadata !45, metadata !48, metadata !50, metadata !52, metadata !56, metadata !58, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !67, metadata !68}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!31 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!32 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!33 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !9} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!34 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!36 = metadata !{i32 786451, metadata !20, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !37, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !39, metadata !41}
!38 = metadata !{i32 786445, metadata !20, metadata !36, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786445, metadata !20, metadata !36, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!41 = metadata !{i32 786445, metadata !20, metadata !36, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!42 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !40} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!43 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!44 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!45 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !46} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!46 = metadata !{i32 786454, metadata !20, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!47 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!48 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !49} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!49 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !51} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!51 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!52 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !53} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!53 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !10, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!56 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !57} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !59} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!59 = metadata !{i32 786454, metadata !20, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!60 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!61 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!62 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!63 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!64 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!65 = metadata !{i32 786454, metadata !20, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!66 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!68 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !69} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !10, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76}
!73 = metadata !{i32 786689, metadata !14, metadata !"line", metadata !5, i32 16777285, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 69]
!74 = metadata !{i32 786689, metadata !14, metadata !"n", metadata !5, i32 33554501, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 69]
!75 = metadata !{i32 786689, metadata !14, metadata !"stream", metadata !5, i32 50331717, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 69]
!76 = metadata !{i32 786688, metadata !14, metadata !"c", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 75]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strip_comment", metadata !"strip_comment", metadata !"", i32 81, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @strip_comment, null, null, metadata !80, i32 82} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 82] [strip_comment]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{null, metadata !9}
!80 = metadata !{metadata !81, metadata !82}
!81 = metadata !{i32 786689, metadata !77, metadata !"line", metadata !5, i32 16777297, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 81]
!82 = metadata !{i32 786688, metadata !77, metadata !"c", metadata !5, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 83]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"upstring", metadata !"upstring", metadata !"", i32 93, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @upstring, null, null, metadata !84, i32 94} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 94] [upstring]
!84 = metadata !{metadata !85, metadata !86, metadata !87}
!85 = metadata !{i32 786689, metadata !83, metadata !"str", metadata !5, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 93]
!86 = metadata !{i32 786688, metadata !83, metadata !"i", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 95]
!87 = metadata !{i32 786688, metadata !88, metadata !"__res", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 98]
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 98, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!89 = metadata !{i32 786443, metadata !1, metadata !83, i32 97, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ltrim", metadata !"ltrim", metadata !"", i32 101, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ltrim, null, null, metadata !91, i32 102} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 102] [ltrim]
!91 = metadata !{metadata !92, metadata !93, metadata !94}
!92 = metadata !{i32 786689, metadata !90, metadata !"str", metadata !5, i32 16777317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 101]
!93 = metadata !{i32 786688, metadata !90, metadata !"tr", metadata !5, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 103]
!94 = metadata !{i32 786688, metadata !90, metadata !"c", metadata !5, i32 104, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 104]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rtrim", metadata !"rtrim", metadata !"", i32 118, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @rtrim, null, null, metadata !96, i32 119} ; [ DW_TAG_subprogram ] [line 118] [def] [scope 119] [rtrim]
!96 = metadata !{metadata !97, metadata !98}
!97 = metadata !{i32 786689, metadata !95, metadata !"str", metadata !5, i32 16777334, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 118]
!98 = metadata !{i32 786688, metadata !95, metadata !"nul", metadata !5, i32 120, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 120]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"trim", metadata !"trim", metadata !"", i32 132, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @trim, null, null, metadata !100, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [trim]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786689, metadata !99, metadata !"str", metadata !5, i32 16777348, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 132]
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"nice_header", metadata !"nice_header", metadata !"", i32 138, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @nice_header, null, null, metadata !105, i32 139} ; [ DW_TAG_subprogram ] [line 138] [def] [scope 139] [nice_header]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !17, metadata !9}
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !112, metadata !113, metadata !114, metadata !118}
!106 = metadata !{i32 786689, metadata !102, metadata !"out", metadata !5, i32 16777354, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 138]
!107 = metadata !{i32 786689, metadata !102, metadata !"fn", metadata !5, i32 33554570, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 138]
!108 = metadata !{i32 786688, metadata !102, metadata !"unk", metadata !5, i32 140, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unk] [line 140]
!109 = metadata !{i32 786688, metadata !102, metadata !"clock", metadata !5, i32 141, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock] [line 141]
!110 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!111 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!112 = metadata !{i32 786688, metadata !102, metadata !"user", metadata !5, i32 142, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [user] [line 142]
!113 = metadata !{i32 786688, metadata !102, metadata !"gh", metadata !5, i32 143, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gh] [line 143]
!114 = metadata !{i32 786688, metadata !102, metadata !"gmxuid", metadata !5, i32 144, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gmxuid] [line 144]
!115 = metadata !{i32 786454, metadata !1, null, metadata !"uid_t", i32 80, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [uid_t] [line 80, size 0, align 0, offset 0] [from __uid_t]
!116 = metadata !{i32 786454, metadata !1, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!117 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!118 = metadata !{i32 786688, metadata !102, metadata !"buf", metadata !5, i32 145, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 145]
!119 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !120, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strcasecmp_min", metadata !"strcasecmp_min", metadata !"", i32 173, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @strcasecmp_min, null, null, metadata !127, i32 174} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 174] [strcasecmp_min]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !8, metadata !125, metadata !125}
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!126 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !135}
!128 = metadata !{i32 786689, metadata !122, metadata !"str1", metadata !5, i32 16777389, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str1] [line 173]
!129 = metadata !{i32 786689, metadata !122, metadata !"str2", metadata !5, i32 33554605, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str2] [line 173]
!130 = metadata !{i32 786688, metadata !122, metadata !"ch1", metadata !5, i32 175, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch1] [line 175]
!131 = metadata !{i32 786688, metadata !122, metadata !"ch2", metadata !5, i32 175, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch2] [line 175]
!132 = metadata !{i32 786688, metadata !133, metadata !"__res", metadata !5, i32 180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 180]
!133 = metadata !{i32 786443, metadata !1, metadata !134, i32 180, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!134 = metadata !{i32 786443, metadata !1, metadata !122, i32 178, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!135 = metadata !{i32 786688, metadata !136, metadata !"__res", metadata !5, i32 183, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 183]
!136 = metadata !{i32 786443, metadata !1, metadata !134, i32 183, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!137 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_strcasecmp", metadata !"gmx_strcasecmp", metadata !"", i32 191, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @gmx_strcasecmp, null, null, metadata !138, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [gmx_strcasecmp]
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !146}
!139 = metadata !{i32 786689, metadata !137, metadata !"str1", metadata !5, i32 16777407, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str1] [line 191]
!140 = metadata !{i32 786689, metadata !137, metadata !"str2", metadata !5, i32 33554623, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str2] [line 191]
!141 = metadata !{i32 786688, metadata !137, metadata !"ch1", metadata !5, i32 193, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch1] [line 193]
!142 = metadata !{i32 786688, metadata !137, metadata !"ch2", metadata !5, i32 193, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch2] [line 193]
!143 = metadata !{i32 786688, metadata !144, metadata !"__res", metadata !5, i32 197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 197]
!144 = metadata !{i32 786443, metadata !1, metadata !145, i32 197, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!145 = metadata !{i32 786443, metadata !1, metadata !137, i32 196, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!146 = metadata !{i32 786688, metadata !147, metadata !"__res", metadata !5, i32 198, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 198]
!147 = metadata !{i32 786443, metadata !1, metadata !145, i32 198, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!148 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_strncasecmp", metadata !"gmx_strncasecmp", metadata !"", i32 205, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @gmx_strncasecmp, null, null, metadata !151, i32 206} ; [ DW_TAG_subprogram ] [line 205] [def] [scope 206] [gmx_strncasecmp]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{metadata !8, metadata !125, metadata !125, metadata !8}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !160}
!152 = metadata !{i32 786689, metadata !148, metadata !"str1", metadata !5, i32 16777421, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str1] [line 205]
!153 = metadata !{i32 786689, metadata !148, metadata !"str2", metadata !5, i32 33554637, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str2] [line 205]
!154 = metadata !{i32 786689, metadata !148, metadata !"n", metadata !5, i32 50331853, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 205]
!155 = metadata !{i32 786688, metadata !148, metadata !"ch1", metadata !5, i32 207, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch1] [line 207]
!156 = metadata !{i32 786688, metadata !148, metadata !"ch2", metadata !5, i32 207, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch2] [line 207]
!157 = metadata !{i32 786688, metadata !158, metadata !"__res", metadata !5, i32 214, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 214]
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 214, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!159 = metadata !{i32 786443, metadata !1, metadata !148, i32 213, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!160 = metadata !{i32 786688, metadata !161, metadata !"__res", metadata !5, i32 215, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 215]
!161 = metadata !{i32 786443, metadata !1, metadata !159, i32 215, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_strdup", metadata !"gmx_strdup", metadata !"", i32 223, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @gmx_strdup, null, null, metadata !165, i32 224} ; [ DW_TAG_subprogram ] [line 223] [def] [scope 224] [gmx_strdup]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !9, metadata !125}
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 786689, metadata !162, metadata !"src", metadata !5, i32 16777439, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 223]
!167 = metadata !{i32 786688, metadata !162, metadata !"dest", metadata !5, i32 225, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 225]
!168 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_lines", metadata !"wrap_lines", metadata !"", i32 233, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i32)* @wrap_lines, null, null, metadata !171, i32 234} ; [ DW_TAG_subprogram ] [line 233] [def] [scope 234] [wrap_lines]
!169 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{metadata !9, metadata !9, metadata !8, metadata !8}
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!172 = metadata !{i32 786689, metadata !168, metadata !"buf", metadata !5, i32 16777449, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 233]
!173 = metadata !{i32 786689, metadata !168, metadata !"line_width", metadata !5, i32 33554665, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line_width] [line 233]
!174 = metadata !{i32 786689, metadata !168, metadata !"indent", metadata !5, i32 50331881, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indent] [line 233]
!175 = metadata !{i32 786688, metadata !168, metadata !"b2", metadata !5, i32 235, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b2] [line 235]
!176 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 236]
!177 = metadata !{i32 786688, metadata !168, metadata !"i0", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i0] [line 236]
!178 = metadata !{i32 786688, metadata !168, metadata !"i2", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 236]
!179 = metadata !{i32 786688, metadata !168, metadata !"j", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 236]
!180 = metadata !{i32 786688, metadata !168, metadata !"b2len", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b2len] [line 236]
!181 = metadata !{i32 786688, metadata !168, metadata !"lspace", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lspace] [line 236]
!182 = metadata !{i32 786688, metadata !168, metadata !"l2space", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l2space] [line 236]
!183 = metadata !{i32 786688, metadata !168, metadata !"bFirst", metadata !5, i32 237, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bFirst] [line 237]
!184 = metadata !{i32 786688, metadata !168, metadata !"bFitsOnLine", metadata !5, i32 237, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bFitsOnLine] [line 237]
!185 = metadata !{i32 52, i32 0, metadata !4, null}
!186 = metadata !{i32 59, i32 0, metadata !4, null}
!187 = metadata !{i32 60, i32 0, metadata !4, null}
!188 = metadata !{i32 61, i32 0, metadata !4, null}
!189 = metadata !{metadata !"omnipotent char", metadata !190}
!190 = metadata !{metadata !"Simple C/C++ TBAA"}
!191 = metadata !{i32 62, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!193 = metadata !{i32 63, i32 0, metadata !192, null}
!194 = metadata !{i32 66, i32 0, metadata !4, null}
!195 = metadata !{i32 118, i32 0, metadata !95, null}
!196 = metadata !{i32 122, i32 0, metadata !95, null}
!197 = metadata !{i32 125, i32 0, metadata !95, null}
!198 = metadata !{i32 126, i32 0, metadata !95, null}
!199 = metadata !{i32 127, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !95, i32 126, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!201 = metadata !{i32 128, i32 0, metadata !95, null}
!202 = metadata !{i32 69, i32 0, metadata !14, null}
!203 = metadata !{i32 76, i32 0, metadata !14, null}
!204 = metadata !{i32 77, i32 0, metadata !14, null}
!205 = metadata !{i32 79, i32 0, metadata !14, null}
!206 = metadata !{i32 81, i32 0, metadata !77, null}
!207 = metadata !{i32 85, i32 0, metadata !77, null}
!208 = metadata !{i32 89, i32 0, metadata !77, null}
!209 = metadata !{i32 90, i32 0, metadata !77, null}
!210 = metadata !{i32 93, i32 0, metadata !83, null}
!211 = metadata !{i32 97, i32 0, metadata !89, null}
!212 = metadata !{i32 98, i32 0, metadata !88, null}
!213 = metadata !{metadata !"any pointer", metadata !189}
!214 = metadata !{metadata !"int", metadata !189}
!215 = metadata !{i32 99, i32 0, metadata !83, null}
!216 = metadata !{i32 101, i32 0, metadata !90, null}
!217 = metadata !{i32 106, i32 0, metadata !90, null}
!218 = metadata !{i32 109, i32 0, metadata !90, null}
!219 = metadata !{i32 110, i32 0, metadata !90, null}
!220 = metadata !{i32 111, i32 0, metadata !90, null}
!221 = metadata !{i32 112, i32 0, metadata !90, null}
!222 = metadata !{i32 114, i32 0, metadata !90, null}
!223 = metadata !{i32 115, i32 0, metadata !90, null}
!224 = metadata !{i32 132, i32 0, metadata !99, null}
!225 = metadata !{i32 134, i32 0, metadata !99, null}
!226 = metadata !{i32 135, i32 0, metadata !99, null}
!227 = metadata !{i32 136, i32 0, metadata !99, null}
!228 = metadata !{i32 138, i32 0, metadata !102, null}
!229 = metadata !{null}
!230 = metadata !{i32 140, i32 0, metadata !102, null}
!231 = metadata !{i32 141, i32 0, metadata !102, null}
!232 = metadata !{i8* null}
!233 = metadata !{i32 142, i32 0, metadata !102, null}
!234 = metadata !{i32 151, i32 0, metadata !102, null}
!235 = metadata !{metadata !"long", metadata !189}
!236 = metadata !{i32 152, i32 0, metadata !102, null}
!237 = metadata !{i32 153, i32 0, metadata !102, null}
!238 = metadata !{i32 161, i32 0, metadata !102, null}
!239 = metadata !{i32 -1}
!240 = metadata !{i32 162, i32 0, metadata !102, null}
!241 = metadata !{i32 165, i32 0, metadata !102, null}
!242 = metadata !{i32 167, i32 0, metadata !102, null}
!243 = metadata !{i32 169, i32 0, metadata !102, null}
!244 = metadata !{i32 170, i32 0, metadata !102, null}
!245 = metadata !{i32 171, i32 0, metadata !102, null}
!246 = metadata !{i32 173, i32 0, metadata !122, null}
!247 = metadata !{i32 180, i32 0, metadata !133, null}
!248 = metadata !{i32 177, i32 0, metadata !122, null}
!249 = metadata !{i32 183, i32 0, metadata !136, null}
!250 = metadata !{i32 185, i32 0, metadata !134, null}
!251 = metadata !{i32 186, i32 0, metadata !134, null}
!252 = metadata !{i32 189, i32 0, metadata !122, null}
!253 = metadata !{i32 191, i32 0, metadata !137, null}
!254 = metadata !{i32 197, i32 0, metadata !144, null}
!255 = metadata !{i32 195, i32 0, metadata !137, null}
!256 = metadata !{i32 198, i32 0, metadata !147, null}
!257 = metadata !{i32 199, i32 0, metadata !145, null}
!258 = metadata !{i32 200, i32 0, metadata !145, null}
!259 = metadata !{i32 203, i32 0, metadata !137, null}
!260 = metadata !{i32 205, i32 0, metadata !148, null}
!261 = metadata !{i32 209, i32 0, metadata !148, null}
!262 = metadata !{i32 214, i32 0, metadata !158, null}
!263 = metadata !{i32 215, i32 0, metadata !161, null}
!264 = metadata !{i32 216, i32 0, metadata !159, null}
!265 = metadata !{i32 217, i32 0, metadata !159, null}
!266 = metadata !{i32 218, i32 0, metadata !159, null}
!267 = metadata !{i32 221, i32 0, metadata !148, null}
!268 = metadata !{i32 223, i32 0, metadata !162, null}
!269 = metadata !{i32 227, i32 0, metadata !162, null}
!270 = metadata !{i32 228, i32 0, metadata !162, null}
!271 = metadata !{i32 230, i32 0, metadata !162, null}
!272 = metadata !{i32 233, i32 0, metadata !168, null}
!273 = metadata !{i32 236, i32 0, metadata !168, null}
!274 = metadata !{i32 251, i32 0, metadata !168, null}
!275 = metadata !{i32 252, i32 0, metadata !168, null}
!276 = metadata !{i32 253, i32 0, metadata !168, null}
!277 = metadata !{i32 254, i32 0, metadata !168, null}
!278 = metadata !{i32 255, i32 0, metadata !168, null}
!279 = metadata !{i32 1}
!280 = metadata !{i32 256, i32 0, metadata !168, null}
!281 = metadata !{i32 273, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 273, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!283 = metadata !{i32 786443, metadata !1, metadata !284, i32 268, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!284 = metadata !{i32 786443, metadata !1, metadata !285, i32 260, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!285 = metadata !{i32 786443, metadata !1, metadata !286, i32 260, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!286 = metadata !{i32 786443, metadata !1, metadata !168, i32 257, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!287 = metadata !{i32 289, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !289, i32 285, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!289 = metadata !{i32 786443, metadata !1, metadata !286, i32 280, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!290 = metadata !{i32 257, i32 0, metadata !168, null}
!291 = metadata !{i32 258, i32 0, metadata !286, null}
!292 = metadata !{i32 260, i32 0, metadata !285, null}
!293 = metadata !{i32 261, i32 0, metadata !284, null}
!294 = metadata !{i32 263, i32 0, metadata !284, null}
!295 = metadata !{i32 undef}
!296 = metadata !{i32 264, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !284, i32 263, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!298 = metadata !{i32 265, i32 0, metadata !297, null}
!299 = metadata !{i32 268, i32 0, metadata !284, null}
!300 = metadata !{i32 270, i32 0, metadata !283, null}
!301 = metadata !{i32 271, i32 0, metadata !283, null}
!302 = metadata !{i32 274, i32 0, metadata !282, null}
!303 = metadata !{i32 280, i32 0, metadata !286, null}
!304 = metadata !{i32 278, i32 0, metadata !286, null}
!305 = metadata !{i32 282, i32 0, metadata !289, null}
!306 = metadata !{i32 283, i32 0, metadata !289, null}
!307 = metadata !{i32 285, i32 0, metadata !289, null}
!308 = metadata !{i32 287, i32 0, metadata !288, null}
!309 = metadata !{i32 290, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !288, i32 289, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!311 = metadata !{i32 292, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !310, i32 290, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!313 = metadata !{i32 294, i32 0, metadata !310, null}
!314 = metadata !{i32 295, i32 0, metadata !310, null}
!315 = metadata !{i32 296, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !310, i32 296, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/string2.c]
!317 = metadata !{i32 297, i32 0, metadata !316, null}
!318 = metadata !{i32 299, i32 0, metadata !310, null}
!319 = metadata !{i32 300, i32 0, metadata !310, null}
!320 = metadata !{i32 304, i32 0, metadata !286, null}
!321 = metadata !{i32 305, i32 0, metadata !168, null}
!322 = metadata !{i32 307, i32 0, metadata !168, null}
