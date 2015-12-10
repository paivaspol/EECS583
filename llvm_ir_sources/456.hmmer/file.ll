; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @FileDirname(i8* %file) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !11), !dbg !121
  %call = tail call i8* @strrchr(i8* %file, i32 47) #6, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !13), !dbg !122
  %cmp = icmp eq i8* %call, null, !dbg !123
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !123

cond.false:                                       ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !123
  %sub.ptr.rhs.cast = ptrtoint i8* %file to i64, !dbg !123
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !123
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !123
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 0, %entry ], !dbg !123
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !14), !dbg !123
  %add = add nsw i32 %cond, 2, !dbg !124
  %conv1 = sext i32 %add to i64, !dbg !124
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 73, i64 %conv1) #7, !dbg !124
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !12), !dbg !124
  %cmp3 = icmp sgt i32 %cond, 0, !dbg !125
  br i1 %cmp3, label %if.then, label %if.else, !dbg !125

if.then:                                          ; preds = %cond.end
  %conv5 = sext i32 %cond to i64, !dbg !125
  %call6 = tail call i8* @strncpy(i8* %call2, i8* %file, i64 %conv5) #7, !dbg !125
  br label %if.end12, !dbg !125

if.else:                                          ; preds = %cond.end
  %0 = load i8* %file, align 1, !dbg !126, !tbaa !127
  %cmp8 = icmp eq i8 %0, 47, !dbg !126
  br i1 %cmp8, label %if.else11, label %if.then10, !dbg !126

if.then10:                                        ; preds = %if.else
  store i8 46, i8* %call2, align 1, !dbg !129, !tbaa !127
  tail call void @llvm.dbg.value(metadata !131, i64 0, metadata !14), !dbg !129
  br label %if.end12, !dbg !129

if.else11:                                        ; preds = %if.else
  store i8 47, i8* %call2, align 1, !dbg !132, !tbaa !127
  tail call void @llvm.dbg.value(metadata !131, i64 0, metadata !14), !dbg !132
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else11, %if.then
  %len.0 = phi i32 [ %cond, %if.then ], [ 1, %if.then10 ], [ 1, %if.else11 ]
  %idxprom = sext i32 %len.0 to i64, !dbg !134
  %arrayidx = getelementptr inbounds i8* %call2, i64 %idxprom, !dbg !134
  store i8 0, i8* %arrayidx, align 1, !dbg !134, !tbaa !127
  ret i8* %call2, !dbg !135
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize uwtable
define i8* @FileTail(i8* %file, i32 %noextension) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !20), !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %noextension}, i64 0, metadata !21), !dbg !136
  %call = tail call i8* @strrchr(i8* %file, i32 47) #6, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !23), !dbg !137
  %call1 = tail call i64 @strlen(i8* %file) #6, !dbg !138
  %add = add i64 %call1, 1, !dbg !138
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 105, i64 %add) #7, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !22), !dbg !138
  %cmp = icmp eq i8* %call, null, !dbg !139
  br i1 %cmp, label %if.then, label %if.else, !dbg !139

if.then:                                          ; preds = %entry
  %call3 = tail call i8* @strcpy(i8* %call2, i8* %file) #7, !dbg !139
  br label %if.end, !dbg !139

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %call, i64 1, !dbg !140
  %call4 = tail call i8* @strcpy(i8* %call2, i8* %add.ptr) #7, !dbg !140
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool = icmp eq i32 %noextension, 0, !dbg !141
  br i1 %tobool, label %if.end10, label %if.then5, !dbg !141

if.then5:                                         ; preds = %if.end
  %call6 = tail call i8* @strrchr(i8* %call2, i32 46) #6, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !24), !dbg !142
  %cmp7 = icmp eq i8* %call6, null, !dbg !142
  br i1 %cmp7, label %if.end10, label %if.then8, !dbg !142

if.then8:                                         ; preds = %if.then5
  store i8 0, i8* %call6, align 1, !dbg !144, !tbaa !127
  br label %if.end10, !dbg !144

if.end10:                                         ; preds = %if.then5, %if.end, %if.then8
  ret i8* %call2, !dbg !145
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i8* @FileSameDirectory(i8* %file1, i8* %file2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file1}, i64 0, metadata !29), !dbg !146
  tail call void @llvm.dbg.value(metadata !{i8* %file2}, i64 0, metadata !30), !dbg !146
  tail call void @llvm.dbg.value(metadata !131, i64 0, metadata !34), !dbg !147
  %call = tail call i8* @FileDirname(i8* %file1) #8, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !31), !dbg !148
  %call1 = tail call i8* @FileTail(i8* %file2, i32 0) #8, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !32), !dbg !149
  %call2 = tail call i32 @strcmp(i8* %file2, i8* %call1) #6, !dbg !150
  %cmp = icmp eq i32 %call2, 0, !dbg !150
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !34), !dbg !150
  %call3 = tail call i8* @FileConcat(i8* %call, i8* %call1) #8, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !33), !dbg !151
  br i1 %cmp, label %if.end7, label %land.lhs.true, !dbg !152

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @strcmp(i8* %call3, i8* %file2) #6, !dbg !152
  %cmp5 = icmp eq i32 %call4, 0, !dbg !152
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !152

if.then6:                                         ; preds = %land.lhs.true
  tail call void @free(i8* %call3) #7, !dbg !153
  tail call void @llvm.dbg.value(metadata !155, i64 0, metadata !33), !dbg !153
  br label %if.end7, !dbg !156

if.end7:                                          ; preds = %land.lhs.true, %if.then6, %entry
  %result.0 = phi i8* [ %call3, %entry ], [ null, %if.then6 ], [ %call3, %land.lhs.true ]
  tail call void @free(i8* %call) #7, !dbg !157
  tail call void @free(i8* %call1) #7, !dbg !158
  ret i8* %result.0, !dbg !159
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @FileConcat(i8* %dir, i8* %file) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dir}, i64 0, metadata !37), !dbg !160
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !38), !dbg !160
  %call = tail call i64 @strlen(i8* %dir) #6, !dbg !161
  %call1 = tail call i64 @strlen(i8* %file) #6, !dbg !161
  %add = add i64 %call, 2, !dbg !161
  %add2 = add i64 %add, %call1, !dbg !161
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 170, i64 %add2) #7, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !39), !dbg !161
  %0 = load i8* %file, align 1, !dbg !162, !tbaa !127
  %cmp = icmp eq i8 %0, 47, !dbg !162
  br i1 %cmp, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %entry
  %call5 = tail call i8* @strcpy(i8* %call3, i8* %file) #7, !dbg !162
  br label %if.end, !dbg !162

if.else:                                          ; preds = %entry
  %call6 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call3, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %dir, i32 47, i8* %file) #7, !dbg !163
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* %call3, !dbg !164
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define i8* @FileAddSuffix(i8* %filename, i8* %sfx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !42), !dbg !165
  tail call void @llvm.dbg.value(metadata !{i8* %sfx}, i64 0, metadata !43), !dbg !165
  %call = tail call i64 @strlen(i8* %filename) #6, !dbg !166
  %call1 = tail call i64 @strlen(i8* %sfx) #6, !dbg !166
  %add = add i64 %call, 2, !dbg !166
  %add2 = add i64 %add, %call1, !dbg !166
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 190, i64 %add2) #7, !dbg !166
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !44), !dbg !166
  %call4 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call3, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* %filename, i8* %sfx) #7, !dbg !167
  ret i8* %call3, !dbg !168
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @EnvFileOpen(i8* %fname, i8* %env, i8** %ret_dir) #0 {
entry:
  %full = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %fname}, i64 0, metadata !105), !dbg !169
  call void @llvm.dbg.value(metadata !{i8* %env}, i64 0, metadata !106), !dbg !169
  call void @llvm.dbg.value(metadata !{i8** %ret_dir}, i64 0, metadata !107), !dbg !169
  %0 = getelementptr inbounds [1024 x i8]* %full, i64 0, i64 0, !dbg !170
  call void @llvm.lifetime.start(i64 1024, i8* %0) #5, !dbg !170
  call void @llvm.dbg.declare(metadata !{[1024 x i8]* %full}, metadata !111), !dbg !170
  %cmp = icmp eq i8* %env, null, !dbg !171
  br i1 %cmp, label %cleanup, label %if.end, !dbg !171

if.end:                                           ; preds = %entry
  %call = call i8* @getenv(i8* %env) #7, !dbg !172
  %call1 = call i8* @Strdup(i8* %call) #7, !dbg !172
  call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !109), !dbg !172
  %cmp2 = icmp eq i8* %call1, null, !dbg !172
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !172

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !108), !dbg !174
  %call5 = call i8* @strtok(i8* %call1, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !175
  call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !110), !dbg !175
  %cmp637 = icmp eq i8* %call5, null, !dbg !176
  br i1 %cmp637, label %while.end, label %while.body, !dbg !176

while.body:                                       ; preds = %if.end4, %if.end21
  %s.038 = phi i8* [ %call22, %if.end21 ], [ %call5, %if.end4 ]
  %call7 = call i64 @strlen(i8* %fname) #6, !dbg !177
  %conv = trunc i64 %call7 to i32, !dbg !177
  %call8 = call i64 @strlen(i8* %s.038) #6, !dbg !177
  %conv9 = trunc i64 %call8 to i32, !dbg !177
  %add = add i32 %conv, 2, !dbg !177
  %add10 = add i32 %add, %conv9, !dbg !177
  %cmp11 = icmp sgt i32 %add10, 1024, !dbg !177
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !177

if.then13:                                        ; preds = %while.body
  call void @free(i8* %call1) #7, !dbg !179
  br label %cleanup, !dbg !179

if.end14:                                         ; preds = %while.body
  %call15 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %s.038, i32 47, i8* %fname) #7, !dbg !181
  %call17 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !182
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call17}, i64 0, metadata !108), !dbg !182
  %cmp18 = icmp eq %struct._IO_FILE* %call17, null, !dbg !182
  br i1 %cmp18, label %if.end21, label %while.end, !dbg !182

if.end21:                                         ; preds = %if.end14
  %call22 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !183
  call void @llvm.dbg.value(metadata !155, i64 0, metadata !110), !dbg !183
  %cmp6 = icmp eq i8* %call22, null, !dbg !176
  br i1 %cmp6, label %while.end, label %while.body, !dbg !176

while.end:                                        ; preds = %if.end21, %if.end14, %if.end4
  %s.0.lcssa = phi i8* [ null, %if.end4 ], [ %s.038, %if.end14 ], [ null, %if.end21 ]
  %fp.1 = phi %struct._IO_FILE* [ null, %if.end4 ], [ %call17, %if.end14 ], [ null, %if.end21 ]
  %cmp23 = icmp eq i8** %ret_dir, null, !dbg !184
  br i1 %cmp23, label %if.end27, label %if.then25, !dbg !184

if.then25:                                        ; preds = %while.end
  %call26 = call i8* @Strdup(i8* %s.0.lcssa) #7, !dbg !184
  store i8* %call26, i8** %ret_dir, align 8, !dbg !184, !tbaa !185
  br label %if.end27, !dbg !184

if.end27:                                         ; preds = %while.end, %if.then25
  call void @free(i8* %call1) #7, !dbg !186
  br label %cleanup, !dbg !187

cleanup:                                          ; preds = %if.end, %entry, %if.end27, %if.then13
  %retval.0 = phi %struct._IO_FILE* [ null, %if.then13 ], [ %fp.1, %if.end27 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 1024, i8* %0) #5, !dbg !188
  ret %struct._IO_FILE* %retval.0, !dbg !188
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @Strdup(i8*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @FileExists(i8* nocapture %filename) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !119), !dbg !189
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !190
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !120), !dbg !190
  %tobool = icmp eq %struct._IO_FILE* %call, null, !dbg !190
  br i1 %tobool, label %return, label %if.then, !dbg !190

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @fclose(%struct._IO_FILE* %call) #7, !dbg !191
  br label %return, !dbg !191

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !193
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !25, metadata !35, metadata !40, metadata !45, metadata !115}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FileDirname", metadata !"FileDirname", metadata !"", i32 65, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @FileDirname, null, null, metadata !10, i32 66} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 66] [FileDirname]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14}
!11 = metadata !{i32 786689, metadata !4, metadata !"file", metadata !5, i32 16777281, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 65]
!12 = metadata !{i32 786688, metadata !4, metadata !"dirname", metadata !5, i32 67, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dirname] [line 67]
!13 = metadata !{i32 786688, metadata !4, metadata !"lastslash", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastslash] [line 68]
!14 = metadata !{i32 786688, metadata !4, metadata !"len", metadata !5, i32 69, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 69]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FileTail", metadata !"FileTail", metadata !"", i32 98, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @FileTail, null, null, metadata !19, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [FileTail]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8, metadata !8, metadata !15}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!20 = metadata !{i32 786689, metadata !16, metadata !"file", metadata !5, i32 16777314, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 98]
!21 = metadata !{i32 786689, metadata !16, metadata !"noextension", metadata !5, i32 33554530, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noextension] [line 98]
!22 = metadata !{i32 786688, metadata !16, metadata !"tail", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 100]
!23 = metadata !{i32 786688, metadata !16, metadata !"lastslash", metadata !5, i32 101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastslash] [line 101]
!24 = metadata !{i32 786688, metadata !16, metadata !"lastdot", metadata !5, i32 102, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastdot] [line 102]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FileSameDirectory", metadata !"FileSameDirectory", metadata !"", i32 139, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @FileSameDirectory, null, null, metadata !28, i32 140} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 140] [FileSameDirectory]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{metadata !8, metadata !8, metadata !8}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{i32 786689, metadata !25, metadata !"file1", metadata !5, i32 16777355, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file1] [line 139]
!30 = metadata !{i32 786689, metadata !25, metadata !"file2", metadata !5, i32 33554571, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file2] [line 139]
!31 = metadata !{i32 786688, metadata !25, metadata !"path", metadata !5, i32 141, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 141]
!32 = metadata !{i32 786688, metadata !25, metadata !"tail", metadata !5, i32 142, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 142]
!33 = metadata !{i32 786688, metadata !25, metadata !"result", metadata !5, i32 143, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 143]
!34 = metadata !{i32 786688, metadata !25, metadata !"seems_ok", metadata !5, i32 144, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seems_ok] [line 144]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FileConcat", metadata !"FileConcat", metadata !"", i32 166, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @FileConcat, null, null, metadata !36, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [FileConcat]
!36 = metadata !{metadata !37, metadata !38, metadata !39}
!37 = metadata !{i32 786689, metadata !35, metadata !"dir", metadata !5, i32 16777382, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 166]
!38 = metadata !{i32 786689, metadata !35, metadata !"file", metadata !5, i32 33554598, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 166]
!39 = metadata !{i32 786688, metadata !35, metadata !"full", metadata !5, i32 168, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full] [line 168]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FileAddSuffix", metadata !"FileAddSuffix", metadata !"", i32 187, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @FileAddSuffix, null, null, metadata !41, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [FileAddSuffix]
!41 = metadata !{metadata !42, metadata !43, metadata !44}
!42 = metadata !{i32 786689, metadata !40, metadata !"filename", metadata !5, i32 16777403, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 187]
!43 = metadata !{i32 786689, metadata !40, metadata !"sfx", metadata !5, i32 33554619, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sfx] [line 187]
!44 = metadata !{i32 786688, metadata !40, metadata !"new", metadata !5, i32 189, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 189]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EnvFileOpen", metadata !"EnvFileOpen", metadata !"", i32 230, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*, i8**)* @EnvFileOpen, null, null, metadata !104, i32 231} ; [ DW_TAG_subprogram ] [line 230] [def] [scope 231] [EnvFileOpen]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !8, metadata !8, metadata !103}
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!49 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!50 = metadata !{i32 786451, metadata !51, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!51 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !73, metadata !74, metadata !75, metadata !76, metadata !79, metadata !81, metadata !83, metadata !87, metadata !89, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !98, metadata !99}
!53 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!54 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!55 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!56 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!57 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!58 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!59 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!60 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!61 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!62 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!63 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!64 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!65 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !66} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!67 = metadata !{i32 786451, metadata !51, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !68, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!68 = metadata !{metadata !69, metadata !70, metadata !72}
!69 = metadata !{i32 786445, metadata !51, metadata !67, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!70 = metadata !{i32 786445, metadata !51, metadata !67, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!72 = metadata !{i32 786445, metadata !51, metadata !67, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!73 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !71} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!74 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!75 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!76 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !77} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!77 = metadata !{i32 786454, metadata !51, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!78 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!79 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !80} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!80 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!81 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !82} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!82 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!83 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !84} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!84 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !9, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!87 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !88} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!89 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !90} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!90 = metadata !{i32 786454, metadata !51, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!91 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !88} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!92 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !88} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!93 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!94 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !88} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!95 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!96 = metadata !{i32 786454, metadata !51, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!97 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !15} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!99 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !100} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !9, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!105 = metadata !{i32 786689, metadata !45, metadata !"fname", metadata !5, i32 16777446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 230]
!106 = metadata !{i32 786689, metadata !45, metadata !"env", metadata !5, i32 33554662, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 230]
!107 = metadata !{i32 786689, metadata !45, metadata !"ret_dir", metadata !5, i32 50331878, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dir] [line 230]
!108 = metadata !{i32 786688, metadata !45, metadata !"fp", metadata !5, i32 232, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 232]
!109 = metadata !{i32 786688, metadata !45, metadata !"path", metadata !5, i32 233, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 233]
!110 = metadata !{i32 786688, metadata !45, metadata !"s", metadata !5, i32 234, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 234]
!111 = metadata !{i32 786688, metadata !45, metadata !"full", metadata !5, i32 235, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full] [line 235]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !9, metadata !113, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FileExists", metadata !"FileExists", metadata !"", i32 267, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @FileExists, null, null, metadata !118, i32 268} ; [ DW_TAG_subprogram ] [line 267] [def] [scope 268] [FileExists]
!116 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{metadata !15, metadata !8}
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 786689, metadata !115, metadata !"filename", metadata !5, i32 16777483, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 267]
!120 = metadata !{i32 786688, metadata !115, metadata !"fp", metadata !5, i32 269, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 269]
!121 = metadata !{i32 65, i32 0, metadata !4, null}
!122 = metadata !{i32 71, i32 0, metadata !4, null}
!123 = metadata !{i32 72, i32 0, metadata !4, null}
!124 = metadata !{i32 73, i32 0, metadata !4, null}
!125 = metadata !{i32 74, i32 0, metadata !4, null}
!126 = metadata !{i32 75, i32 0, metadata !4, null}
!127 = metadata !{metadata !"omnipotent char", metadata !128}
!128 = metadata !{metadata !"Simple C/C++ TBAA"}
!129 = metadata !{i32 75, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!131 = metadata !{i32 1}
!132 = metadata !{i32 76, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !4, i32 76, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!134 = metadata !{i32 77, i32 0, metadata !4, null}
!135 = metadata !{i32 78, i32 0, metadata !4, null}
!136 = metadata !{i32 98, i32 0, metadata !16, null}
!137 = metadata !{i32 104, i32 0, metadata !16, null}
!138 = metadata !{i32 105, i32 0, metadata !16, null}
!139 = metadata !{i32 106, i32 0, metadata !16, null}
!140 = metadata !{i32 107, i32 0, metadata !16, null}
!141 = metadata !{i32 109, i32 0, metadata !16, null}
!142 = metadata !{i32 110, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !16, i32 109, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!144 = metadata !{i32 111, i32 0, metadata !143, null}
!145 = metadata !{i32 114, i32 0, metadata !16, null}
!146 = metadata !{i32 139, i32 0, metadata !25, null}
!147 = metadata !{i32 144, i32 0, metadata !25, null}
!148 = metadata !{i32 146, i32 0, metadata !25, null}
!149 = metadata !{i32 147, i32 0, metadata !25, null}
!150 = metadata !{i32 148, i32 0, metadata !25, null}
!151 = metadata !{i32 149, i32 0, metadata !25, null}
!152 = metadata !{i32 150, i32 0, metadata !25, null}
!153 = metadata !{i32 151, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !25, i32 150, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!155 = metadata !{i8* null}
!156 = metadata !{i32 152, i32 0, metadata !154, null}
!157 = metadata !{i32 153, i32 0, metadata !25, null}
!158 = metadata !{i32 154, i32 0, metadata !25, null}
!159 = metadata !{i32 155, i32 0, metadata !25, null}
!160 = metadata !{i32 166, i32 0, metadata !35, null}
!161 = metadata !{i32 170, i32 0, metadata !35, null}
!162 = metadata !{i32 171, i32 0, metadata !35, null}
!163 = metadata !{i32 172, i32 0, metadata !35, null}
!164 = metadata !{i32 173, i32 0, metadata !35, null}
!165 = metadata !{i32 187, i32 0, metadata !40, null}
!166 = metadata !{i32 190, i32 0, metadata !40, null}
!167 = metadata !{i32 191, i32 0, metadata !40, null}
!168 = metadata !{i32 192, i32 0, metadata !40, null}
!169 = metadata !{i32 230, i32 0, metadata !45, null}
!170 = metadata !{i32 235, i32 0, metadata !45, null}
!171 = metadata !{i32 237, i32 0, metadata !45, null}
!172 = metadata !{i32 238, i32 0, metadata !45, null}
!173 = metadata !{%struct._IO_FILE* null}
!174 = metadata !{i32 240, i32 0, metadata !45, null}
!175 = metadata !{i32 241, i32 0, metadata !45, null}
!176 = metadata !{i32 242, i32 0, metadata !45, null}
!177 = metadata !{i32 244, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !45, i32 243, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!179 = metadata !{i32 245, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !178, i32 245, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!181 = metadata !{i32 246, i32 0, metadata !178, null}
!182 = metadata !{i32 247, i32 0, metadata !178, null}
!183 = metadata !{i32 248, i32 0, metadata !178, null}
!184 = metadata !{i32 253, i32 0, metadata !45, null}
!185 = metadata !{metadata !"any pointer", metadata !127}
!186 = metadata !{i32 254, i32 0, metadata !45, null}
!187 = metadata !{i32 256, i32 0, metadata !45, null}
!188 = metadata !{i32 257, i32 0, metadata !45, null}
!189 = metadata !{i32 267, i32 0, metadata !115, null}
!190 = metadata !{i32 270, i32 0, metadata !115, null}
!191 = metadata !{i32 270, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !115, i32 270, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/file.c]
!193 = metadata !{i32 271, i32 0, metadata !115, null}
