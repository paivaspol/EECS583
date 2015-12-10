; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@Util_StrSep.retval = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/util/String.c,v 1.10 2002/01/28 19:45:20 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_String_c() #0 {
entry:
  ret i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), !dbg !97
}

; Function Attrs: nounwind optsize uwtable
define i8* @Util_StrSep(i8** nocapture %stringp, i8* nocapture %delim) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %stringp}, i64 0, metadata !16), !dbg !98
  tail call void @llvm.dbg.value(metadata !{i8* %delim}, i64 0, metadata !17), !dbg !98
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !99
  %0 = load i8** %stringp, align 8, !dbg !100, !tbaa !101
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !22), !dbg !100
  %call = tail call i8* @strstr(i8* %0, i8* %delim) #9, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !23), !dbg !104
  %tobool = icmp eq i8* %call, null, !dbg !105
  br i1 %tobool, label %if.else27, label %if.then, !dbg !105

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !106
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64, !dbg !106
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !106
  %cmp = icmp sgt i64 %sub.ptr.sub, -1, !dbg !106
  br i1 %cmp, label %if.then2, label %if.end15, !dbg !106

if.then2:                                         ; preds = %if.then
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !106
  %1 = load i8** @Util_StrSep.retval, align 8, !dbg !108, !tbaa !101
  %call7 = tail call i8* @realloc(i8* %1, i64 %add) #10, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !20), !dbg !108
  %tobool8 = icmp eq i8* %call7, null, !dbg !110
  br i1 %tobool8, label %if.end15.thread, label %if.end15.thread45, !dbg !110

if.end15.thread45:                                ; preds = %if.then2
  store i8* %call7, i8** @Util_StrSep.retval, align 8, !dbg !111, !tbaa !101
  br label %if.then17, !dbg !113

if.end15.thread:                                  ; preds = %if.then2
  %2 = load i8** @Util_StrSep.retval, align 8, !dbg !114, !tbaa !101
  tail call void @free(i8* %2) #10, !dbg !114
  store i8* null, i8** @Util_StrSep.retval, align 8, !dbg !116, !tbaa !101
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !117
  br label %if.end28, !dbg !113

if.end15:                                         ; preds = %if.then
  %.pr = load i8** @Util_StrSep.retval, align 8, !dbg !113, !tbaa !101
  %tobool16 = icmp eq i8* %.pr, null, !dbg !113
  br i1 %tobool16, label %if.end28, label %if.then17, !dbg !113

if.then17:                                        ; preds = %if.end15.thread45, %if.end15
  %3 = phi i8* [ %call7, %if.end15.thread45 ], [ %.pr, %if.end15 ]
  %call21 = tail call i8* @strncpy(i8* %3, i8* %0, i64 %sub.ptr.sub) #10, !dbg !118
  %4 = load i8** @Util_StrSep.retval, align 8, !dbg !120, !tbaa !101
  %arrayidx = getelementptr inbounds i8* %4, i64 %sub.ptr.sub, !dbg !120
  store i8 0, i8* %arrayidx, align 1, !dbg !120, !tbaa !102
  %call25 = tail call i64 @strlen(i8* %delim) #9, !dbg !121
  %add.ptr = getelementptr inbounds i8* %call, i64 %call25, !dbg !121
  store i8* %add.ptr, i8** %stringp, align 8, !dbg !121, !tbaa !101
  %.pre = load i8** @Util_StrSep.retval, align 8, !dbg !122, !tbaa !101
  br label %if.end28, !dbg !123

if.else27:                                        ; preds = %entry
  %5 = load i8** @Util_StrSep.retval, align 8, !dbg !124, !tbaa !101
  tail call void @free(i8* %5) #10, !dbg !124
  store i8* null, i8** @Util_StrSep.retval, align 8, !dbg !126, !tbaa !101
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !127
  br label %if.end28

if.end28:                                         ; preds = %if.end15.thread, %if.end15, %if.then17, %if.else27
  %6 = phi i8* [ null, %if.end15.thread ], [ null, %if.end15 ], [ %.pre, %if.then17 ], [ null, %if.else27 ]
  ret i8* %6, !dbg !122
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Util_SplitString(i8** nocapture %before, i8** nocapture %after, i8* %string, i8* nocapture %sep) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %before}, i64 0, metadata !29), !dbg !128
  tail call void @llvm.dbg.value(metadata !{i8** %after}, i64 0, metadata !30), !dbg !128
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !31), !dbg !128
  tail call void @llvm.dbg.value(metadata !{i8* %sep}, i64 0, metadata !32), !dbg !128
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !33), !dbg !129
  %call = tail call i8* @strstr(i8* %string, i8* %sep) #9, !dbg !130
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !34), !dbg !130
  %tobool = icmp eq i8* %call, null, !dbg !131
  br i1 %tobool, label %if.end16, label %if.then, !dbg !131

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !132
  %sub.ptr.rhs.cast = ptrtoint i8* %string to i64, !dbg !132
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !132
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !132
  %call2 = tail call noalias i8* @malloc(i64 %add) #10, !dbg !132
  store i8* %call2, i8** %before, align 8, !dbg !132, !tbaa !101
  %call3 = tail call i64 @strlen(i8* %string) #9, !dbg !134
  %call7 = tail call i64 @strlen(i8* %sep) #9, !dbg !134
  %sub = sub i64 1, %sub.ptr.sub, !dbg !134
  %sub8 = add i64 %sub, %call3, !dbg !134
  %add9 = sub i64 %sub8, %call7, !dbg !134
  %call11 = tail call noalias i8* @malloc(i64 %add9) #10, !dbg !134
  store i8* %call11, i8** %after, align 8, !dbg !134, !tbaa !101
  %0 = load i8** %before, align 8, !dbg !135, !tbaa !101
  %tobool12 = icmp eq i8* %0, null, !dbg !135
  %tobool13 = icmp eq i8* %call11, null, !dbg !135
  %or.cond = or i1 %tobool12, %tobool13, !dbg !135
  br i1 %or.cond, label %if.then14, label %land.lhs.true, !dbg !135

if.then14:                                        ; preds = %if.then
  tail call void @free(i8* %0) #10, !dbg !136
  store i8* null, i8** %before, align 8, !dbg !138, !tbaa !101
  %1 = load i8** %after, align 8, !dbg !139, !tbaa !101
  tail call void @free(i8* %1) #10, !dbg !139
  store i8* null, i8** %after, align 8, !dbg !140, !tbaa !101
  tail call void @llvm.dbg.value(metadata !141, i64 0, metadata !33), !dbg !142
  %.pr = load i8** %before, align 8, !dbg !143, !tbaa !101
  br label %land.lhs.true, !dbg !144

if.end16:                                         ; preds = %entry
  store i8* null, i8** %before, align 8, !dbg !145, !tbaa !101
  store i8* null, i8** %after, align 8, !dbg !147, !tbaa !101
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !33), !dbg !149
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then, %if.then14
  %2 = phi i8* [ %call11, %if.then ], [ null, %if.then14 ]
  %3 = phi i8* [ %0, %if.then ], [ %.pr, %if.then14 ], !dbg !143
  %retval1.0.ph = phi i32 [ 3, %if.then ], [ 2, %if.then14 ]
  %tobool18 = icmp eq i8* %3, null, !dbg !143
  %tobool20 = icmp eq i8* %2, null, !dbg !143
  %or.cond88 = or i1 %tobool18, %tobool20, !dbg !143
  br i1 %or.cond88, label %if.end50, label %if.then21, !dbg !143

if.then21:                                        ; preds = %land.lhs.true
  %sext = shl i64 %sub.ptr.sub, 32, !dbg !150
  %conv25 = ashr exact i64 %sext, 32, !dbg !150
  %call26 = tail call i8* @strncpy(i8* %3, i8* %string, i64 %conv25) #10, !dbg !150
  %4 = load i8** %before, align 8, !dbg !152, !tbaa !101
  %arrayidx = getelementptr inbounds i8* %4, i64 %conv25, !dbg !152
  store i8 0, i8* %arrayidx, align 1, !dbg !152, !tbaa !102
  %5 = load i8** %after, align 8, !dbg !153, !tbaa !101
  %call31 = tail call i64 @strlen(i8* %sep) #9, !dbg !153
  %add.ptr = getelementptr inbounds i8* %call, i64 %call31, !dbg !153
  %call32 = tail call i64 @strlen(i8* %string) #9, !dbg !153
  %sum = add i64 %call31, %conv25, !dbg !153
  %sub40 = sub i64 %call32, %sum, !dbg !153
  %call41 = tail call i8* @strncpy(i8* %5, i8* %add.ptr, i64 %sub40) #10, !dbg !153
  %call42 = tail call i64 @strlen(i8* %string) #9, !dbg !154
  %sub46 = sub i64 %call42, %sub.ptr.sub, !dbg !154
  %call47 = tail call i64 @strlen(i8* %sep) #9, !dbg !154
  %sub48 = sub i64 %sub46, %call47, !dbg !154
  %6 = load i8** %after, align 8, !dbg !154, !tbaa !101
  %arrayidx49 = getelementptr inbounds i8* %6, i64 %sub48, !dbg !154
  store i8 0, i8* %arrayidx49, align 1, !dbg !154, !tbaa !102
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !33), !dbg !155
  br label %if.end50, !dbg !156

if.end50:                                         ; preds = %if.end16, %land.lhs.true, %if.then21
  %retval1.1 = phi i32 [ 0, %if.then21 ], [ %retval1.0.ph, %land.lhs.true ], [ 1, %if.end16 ]
  ret i32 %retval1.1, !dbg !157
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize uwtable
define i8* @Util_Strdup(i8* nocapture %s) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !39), !dbg !158
  tail call void @llvm.dbg.value(metadata !159, i64 0, metadata !40), !dbg !160
  %call = tail call i64 @strlen(i8* %s) #9, !dbg !161
  %add = add i64 %call, 1, !dbg !161
  %call1 = tail call noalias i8* @malloc(i64 %add) #10, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !40), !dbg !161
  %tobool = icmp eq i8* %call1, null, !dbg !162
  br i1 %tobool, label %if.end, label %if.then, !dbg !162

if.then:                                          ; preds = %entry
  %call2 = tail call i8* @strcpy(i8* %call1, i8* %s) #10, !dbg !163
  br label %if.end, !dbg !165

if.end:                                           ; preds = %entry, %if.then
  ret i8* %call1, !dbg !166
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Util_StrCmpi(i8* nocapture %string1, i8* nocapture %string2) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !45), !dbg !167
  tail call void @llvm.dbg.value(metadata !{i8* %string2}, i64 0, metadata !46), !dbg !167
  %call = tail call i32** @__ctype_tolower_loc() #11, !dbg !168
  %0 = load i32** %call, align 8, !dbg !168, !tbaa !101
  br label %do.body, !dbg !169

do.body:                                          ; preds = %land.rhs, %entry
  %string2.addr.0 = phi i8* [ %string2, %entry ], [ %incdec.ptr9, %land.rhs ]
  %string1.addr.0 = phi i8* [ %string1, %entry ], [ %incdec.ptr, %land.rhs ]
  %1 = load i8* %string1.addr.0, align 1, !dbg !168, !tbaa !102
  %idxprom = sext i8 %1 to i64, !dbg !168
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !168
  %2 = load i32* %arrayidx, align 4, !dbg !168, !tbaa !170
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !48), !dbg !168
  %3 = load i8* %string2.addr.0, align 1, !dbg !171, !tbaa !102
  %idxprom4 = sext i8 %3 to i64, !dbg !171
  %arrayidx6 = getelementptr inbounds i32* %0, i64 %idxprom4, !dbg !171
  %4 = load i32* %arrayidx6, align 4, !dbg !171, !tbaa !170
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !51), !dbg !171
  %sub = sub nsw i32 %2, %4, !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !47), !dbg !171
  %tobool = icmp ne i32 %2, %4, !dbg !172
  %tobool8 = icmp eq i8 %1, 0, !dbg !172
  %or.cond = or i1 %tobool, %tobool8, !dbg !172
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !45), !dbg !172
  br i1 %or.cond, label %do.end, label %land.rhs, !dbg !172

land.rhs:                                         ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8* %string1.addr.0, i64 1, !dbg !172
  %incdec.ptr9 = getelementptr inbounds i8* %string2.addr.0, i64 1, !dbg !172
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr9}, i64 0, metadata !46), !dbg !172
  %tobool11 = icmp eq i8 %3, 0, !dbg !172
  br i1 %tobool11, label %do.end, label %do.body

do.end:                                           ; preds = %do.body, %land.rhs
  ret i32 %sub, !dbg !173
}

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind optsize uwtable
define i32 @Util_SplitFilename(i8** nocapture %dir, i8** nocapture %file, i8* nocapture %string) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %dir}, i64 0, metadata !57), !dbg !174
  tail call void @llvm.dbg.value(metadata !{i8** %file}, i64 0, metadata !58), !dbg !174
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !59), !dbg !174
  %call = tail call i8* @Util_Strdup(i8* %string) #12, !dbg !175
  store i8* %call, i8** %file, align 8, !dbg !175, !tbaa !101
  %tobool = icmp eq i8* %call, null, !dbg !176
  br i1 %tobool, label %if.end5, label %if.then, !dbg !176

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @strrchr(i8* %call, i32 47) #9, !dbg !177
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !60), !dbg !177
  %tobool2 = icmp eq i8* %call1, null, !dbg !179
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !179

if.then3:                                         ; preds = %if.then
  store i8* %call, i8** %dir, align 8, !dbg !180, !tbaa !101
  store i8 0, i8* %call1, align 1, !dbg !182, !tbaa !102
  %add.ptr = getelementptr inbounds i8* %call1, i64 1, !dbg !183
  %call4 = tail call i8* @Util_Strdup(i8* %add.ptr) #12, !dbg !183
  store i8* %call4, i8** %file, align 8, !dbg !183, !tbaa !101
  br label %if.end5, !dbg !184

if.else:                                          ; preds = %if.then
  store i8* null, i8** %dir, align 8, !dbg !185, !tbaa !101
  %.pre = load i8** %file, align 8, !dbg !187, !tbaa !101
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then3, %if.else
  %0 = phi i8* [ null, %entry ], [ %call4, %if.then3 ], [ %.pre, %if.else ]
  %not.tobool6 = icmp eq i8* %0, null, !dbg !187
  %cond = sext i1 %not.tobool6 to i32, !dbg !187
  ret i32 %cond, !dbg !187
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Util_asprintf(i8** nocapture %buffer, i8* %fmt, ...) #1 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8** %buffer}, i64 0, metadata !65), !dbg !188
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !66), !dbg !188
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !68), !dbg !189
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !190
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !190
  call void @llvm.va_start(i8* %arraydecay1), !dbg !190
  %call = call i32 @Util_vsnprintf(i8* null, i64 0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10, !dbg !191
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !67), !dbg !191
  %add = add nsw i32 %call, 1, !dbg !192
  %conv = sext i32 %add to i64, !dbg !192
  %call3 = call noalias i8* @malloc(i64 %conv) #10, !dbg !192
  store i8* %call3, i8** %buffer, align 8, !dbg !192, !tbaa !101
  %tobool = icmp eq i8* %call3, null, !dbg !193
  br i1 %tobool, label %if.end, label %if.then, !dbg !193

if.then:                                          ; preds = %entry
  call void @llvm.va_start(i8* %arraydecay1), !dbg !194
  %0 = load i8** %buffer, align 8, !dbg !196, !tbaa !101
  %call9 = call i32 @Util_vsnprintf(i8* %0, i64 %conv, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10, !dbg !196
  call void @llvm.va_end(i8* %arraydecay1), !dbg !197
  br label %if.end, !dbg !198

if.end:                                           ; preds = %entry, %if.then
  %count.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %count.0, !dbg !199
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: optsize
declare i32 @Util_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind optsize uwtable
define i32 @Util_asnprintf(i8** nocapture %buffer, i64 %size, i8* %fmt, ...) #1 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8** %buffer}, i64 0, metadata !89), !dbg !200
  call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !90), !dbg !200
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !91), !dbg !200
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !93), !dbg !201
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !202
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !202
  call void @llvm.va_start(i8* %arraydecay1), !dbg !202
  %call = call i32 @Util_vsnprintf(i8* null, i64 0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10, !dbg !203
  %conv = sext i32 %call to i64, !dbg !203
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !92), !dbg !203
  %add = add i64 %conv, 1, !dbg !204
  %cmp = icmp ugt i64 %add, %size, !dbg !204
  %0 = load i8** %buffer, align 8, !dbg !205, !tbaa !101
  br i1 %cmp, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %entry
  call void @free(i8* %0) #10, !dbg !205
  %call5 = call noalias i8* @malloc(i64 %add) #10, !dbg !207
  store i8* %call5, i8** %buffer, align 8, !dbg !207, !tbaa !101
  br label %if.end, !dbg !208

if.end:                                           ; preds = %entry, %if.then
  %1 = phi i8* [ %call5, %if.then ], [ %0, %entry ], !dbg !209
  %tobool = icmp eq i8* %1, null, !dbg !209
  br i1 %tobool, label %if.end14, label %if.then6, !dbg !209

if.then6:                                         ; preds = %if.end
  call void @llvm.va_start(i8* %arraydecay1), !dbg !210
  %2 = load i8** %buffer, align 8, !dbg !212, !tbaa !101
  %call11 = call i32 @Util_vsnprintf(i8* %2, i64 %add, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10, !dbg !212
  call void @llvm.va_end(i8* %arraydecay1), !dbg !213
  br label %if.end14, !dbg !214

if.end14:                                         ; preds = %if.end, %if.then6
  %count.0 = phi i32 [ %call, %if.then6 ], [ 0, %if.end ]
  ret i32 %count.0, !dbg !215
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !94, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !24, metadata !35, metadata !41, metadata !53, metadata !61, metadata !83}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_String_c", metadata !"CCTKi_version_util_String_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_String_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_util_String_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_StrSep", metadata !"Util_StrSep", metadata !"", i32 85, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**, i8*)* @Util_StrSep, null, null, metadata !15, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [Util_StrSep]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !14, metadata !8}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !20, metadata !22, metadata !23}
!16 = metadata !{i32 786689, metadata !11, metadata !"stringp", metadata !5, i32 16777301, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stringp] [line 85]
!17 = metadata !{i32 786689, metadata !11, metadata !"delim", metadata !5, i32 33554517, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delim] [line 85]
!18 = metadata !{i32 786688, metadata !11, metadata !"retlength", metadata !5, i32 87, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retlength] [line 87]
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{i32 786688, metadata !11, metadata !"temp", metadata !5, i32 89, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 89]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786688, metadata !11, metadata !"start", metadata !5, i32 90, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 90]
!23 = metadata !{i32 786688, metadata !11, metadata !"end", metadata !5, i32 91, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 91]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_SplitString", metadata !"Util_SplitString", metadata !"", i32 187, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8**, i8*, i8*)* @Util_SplitString, null, null, metadata !28, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [Util_SplitString]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !19, metadata !27, metadata !27, metadata !8, metadata !8}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{i32 786689, metadata !24, metadata !"before", metadata !5, i32 16777403, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [before] [line 187]
!30 = metadata !{i32 786689, metadata !24, metadata !"after", metadata !5, i32 33554619, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [after] [line 187]
!31 = metadata !{i32 786689, metadata !24, metadata !"string", metadata !5, i32 50331835, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 187]
!32 = metadata !{i32 786689, metadata !24, metadata !"sep", metadata !5, i32 67109051, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sep] [line 187]
!33 = metadata !{i32 786688, metadata !24, metadata !"retval", metadata !5, i32 189, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 189]
!34 = metadata !{i32 786688, metadata !24, metadata !"position", metadata !5, i32 190, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [position] [line 190]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_Strdup", metadata !"Util_Strdup", metadata !"", i32 262, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @Util_Strdup, null, null, metadata !38, i32 263} ; [ DW_TAG_subprogram ] [line 262] [def] [scope 263] [Util_Strdup]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !21, metadata !8}
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 786689, metadata !35, metadata !"s", metadata !5, i32 16777478, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 262]
!40 = metadata !{i32 786688, metadata !35, metadata !"retstr", metadata !5, i32 264, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retstr] [line 264]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_StrCmpi", metadata !"Util_StrCmpi", metadata !"", i32 310, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @Util_StrCmpi, null, null, metadata !44, i32 311} ; [ DW_TAG_subprogram ] [line 310] [def] [scope 311] [Util_StrCmpi]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !19, metadata !8, metadata !8}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !51}
!45 = metadata !{i32 786689, metadata !41, metadata !"string1", metadata !5, i32 16777526, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string1] [line 310]
!46 = metadata !{i32 786689, metadata !41, metadata !"string2", metadata !5, i32 33554742, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string2] [line 310]
!47 = metadata !{i32 786688, metadata !41, metadata !"retval", metadata !5, i32 312, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 312]
!48 = metadata !{i32 786688, metadata !49, metadata !"__res", metadata !5, i32 317, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 317]
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 317, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!50 = metadata !{i32 786443, metadata !1, metadata !41, i32 316, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!51 = metadata !{i32 786688, metadata !52, metadata !"__res", metadata !5, i32 317, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 317]
!52 = metadata !{i32 786443, metadata !1, metadata !50, i32 317, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_SplitFilename", metadata !"Util_SplitFilename", metadata !"", i32 365, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8**, i8*)* @Util_SplitFilename, null, null, metadata !56, i32 366} ; [ DW_TAG_subprogram ] [line 365] [def] [scope 366] [Util_SplitFilename]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !19, metadata !27, metadata !27, metadata !8}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60}
!57 = metadata !{i32 786689, metadata !53, metadata !"dir", metadata !5, i32 16777581, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 365]
!58 = metadata !{i32 786689, metadata !53, metadata !"file", metadata !5, i32 33554797, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 365]
!59 = metadata !{i32 786689, metadata !53, metadata !"string", metadata !5, i32 50332013, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 365]
!60 = metadata !{i32 786688, metadata !53, metadata !"position", metadata !5, i32 367, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [position] [line 367]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_asprintf", metadata !"Util_asprintf", metadata !"", i32 435, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8*, ...)* @Util_asprintf, null, null, metadata !64, i32 436} ; [ DW_TAG_subprogram ] [line 435] [def] [scope 436] [Util_asprintf]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !19, metadata !27, metadata !8}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68}
!65 = metadata !{i32 786689, metadata !61, metadata !"buffer", metadata !5, i32 16777651, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 435]
!66 = metadata !{i32 786689, metadata !61, metadata !"fmt", metadata !5, i32 33554867, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 435]
!67 = metadata !{i32 786688, metadata !61, metadata !"count", metadata !5, i32 437, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 437]
!68 = metadata !{i32 786688, metadata !61, metadata !"args", metadata !5, i32 438, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 438]
!69 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!70 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 438, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 438, size 0, align 0, offset 0] [from ]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !72, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!72 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 438, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__va_list_tag] [line 438, size 0, align 0, offset 0] [from __va_list_tag]
!73 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 438, i64 192, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 438, size 192, align 64, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !77, metadata !78, metadata !80}
!75 = metadata !{i32 786445, metadata !1, metadata !73, metadata !"gp_offset", i32 438, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [gp_offset] [line 438, size 32, align 32, offset 0] [from unsigned int]
!76 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !1, metadata !73, metadata !"fp_offset", i32 438, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [fp_offset] [line 438, size 32, align 32, offset 32] [from unsigned int]
!78 = metadata !{i32 786445, metadata !1, metadata !73, metadata !"overflow_arg_area", i32 438, i64 64, i64 64, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [overflow_arg_area] [line 438, size 64, align 64, offset 64] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !1, metadata !73, metadata !"reg_save_area", i32 438, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [reg_save_area] [line 438, size 64, align 64, offset 128] [from ]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_asnprintf", metadata !"Util_asnprintf", metadata !"", i32 511, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i64, i8*, ...)* @Util_asnprintf, null, null, metadata !88, i32 512} ; [ DW_TAG_subprogram ] [line 511] [def] [scope 512] [Util_asnprintf]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{metadata !19, metadata !27, metadata !86, metadata !8}
!86 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!87 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!89 = metadata !{i32 786689, metadata !83, metadata !"buffer", metadata !5, i32 16777727, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 511]
!90 = metadata !{i32 786689, metadata !83, metadata !"size", metadata !5, i32 33554943, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 511]
!91 = metadata !{i32 786689, metadata !83, metadata !"fmt", metadata !5, i32 50332159, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 511]
!92 = metadata !{i32 786688, metadata !83, metadata !"count", metadata !5, i32 513, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 513]
!93 = metadata !{i32 786688, metadata !83, metadata !"args", metadata !5, i32 514, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 514]
!94 = metadata !{metadata !95, metadata !96}
!95 = metadata !{i32 786484, i32 0, metadata !11, metadata !"retval", metadata !"retval", metadata !"", metadata !5, i32 88, metadata !21, i32 1, i32 1, i8** @Util_StrSep.retval, null} ; [ DW_TAG_variable ] [retval] [line 88] [local] [def]
!96 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!97 = metadata !{i32 25, i32 0, metadata !4, null}
!98 = metadata !{i32 85, i32 0, metadata !11, null}
!99 = metadata !{i32 87, i32 0, metadata !11, null}
!100 = metadata !{i32 93, i32 0, metadata !11, null}
!101 = metadata !{metadata !"any pointer", metadata !102}
!102 = metadata !{metadata !"omnipotent char", metadata !103}
!103 = metadata !{metadata !"Simple C/C++ TBAA"}
!104 = metadata !{i32 95, i32 0, metadata !11, null}
!105 = metadata !{i32 98, i32 0, metadata !11, null}
!106 = metadata !{i32 100, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !11, i32 99, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!108 = metadata !{i32 102, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !107, i32 101, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!110 = metadata !{i32 104, i32 0, metadata !109, null}
!111 = metadata !{i32 106, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !109, i32 105, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!113 = metadata !{i32 117, i32 0, metadata !107, null}
!114 = metadata !{i32 111, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !109, i32 110, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!116 = metadata !{i32 112, i32 0, metadata !115, null}
!117 = metadata !{i32 113, i32 0, metadata !115, null}
!118 = metadata !{i32 119, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !107, i32 118, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!120 = metadata !{i32 120, i32 0, metadata !119, null}
!121 = metadata !{i32 122, i32 0, metadata !119, null}
!122 = metadata !{i32 133, i32 0, metadata !11, null}
!123 = metadata !{i32 123, i32 0, metadata !119, null}
!124 = metadata !{i32 128, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !11, i32 127, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!126 = metadata !{i32 129, i32 0, metadata !125, null}
!127 = metadata !{i32 130, i32 0, metadata !125, null}
!128 = metadata !{i32 187, i32 0, metadata !24, null}
!129 = metadata !{i32 189, i32 0, metadata !24, null}
!130 = metadata !{i32 193, i32 0, metadata !24, null}
!131 = metadata !{i32 195, i32 0, metadata !24, null}
!132 = metadata !{i32 198, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !24, i32 196, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!134 = metadata !{i32 199, i32 0, metadata !133, null}
!135 = metadata !{i32 202, i32 0, metadata !133, null}
!136 = metadata !{i32 204, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !133, i32 203, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!138 = metadata !{i32 205, i32 0, metadata !137, null}
!139 = metadata !{i32 206, i32 0, metadata !137, null}
!140 = metadata !{i32 207, i32 0, metadata !137, null}
!141 = metadata !{i32 2}
!142 = metadata !{i32 208, i32 0, metadata !137, null}
!143 = metadata !{i32 222, i32 0, metadata !24, null}
!144 = metadata !{i32 209, i32 0, metadata !137, null}
!145 = metadata !{i32 217, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !24, i32 216, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!147 = metadata !{i32 218, i32 0, metadata !146, null}
!148 = metadata !{i32 1}
!149 = metadata !{i32 219, i32 0, metadata !146, null}
!150 = metadata !{i32 225, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !24, i32 223, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!152 = metadata !{i32 226, i32 0, metadata !151, null}
!153 = metadata !{i32 228, i32 0, metadata !151, null}
!154 = metadata !{i32 229, i32 0, metadata !151, null}
!155 = metadata !{i32 231, i32 0, metadata !151, null}
!156 = metadata !{i32 232, i32 0, metadata !151, null}
!157 = metadata !{i32 234, i32 0, metadata !24, null}
!158 = metadata !{i32 262, i32 0, metadata !35, null}
!159 = metadata !{i8* null}
!160 = metadata !{i32 264, i32 0, metadata !35, null}
!161 = metadata !{i32 266, i32 0, metadata !35, null}
!162 = metadata !{i32 267, i32 0, metadata !35, null}
!163 = metadata !{i32 269, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !35, i32 268, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!165 = metadata !{i32 270, i32 0, metadata !164, null}
!166 = metadata !{i32 272, i32 0, metadata !35, null}
!167 = metadata !{i32 310, i32 0, metadata !41, null}
!168 = metadata !{i32 317, i32 0, metadata !49, null}
!169 = metadata !{i32 315, i32 0, metadata !41, null}
!170 = metadata !{metadata !"int", metadata !102}
!171 = metadata !{i32 317, i32 0, metadata !52, null}
!172 = metadata !{i32 318, i32 0, metadata !50, null}
!173 = metadata !{i32 320, i32 0, metadata !41, null}
!174 = metadata !{i32 365, i32 0, metadata !53, null}
!175 = metadata !{i32 370, i32 0, metadata !53, null}
!176 = metadata !{i32 372, i32 0, metadata !53, null}
!177 = metadata !{i32 375, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !53, i32 373, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!179 = metadata !{i32 376, i32 0, metadata !178, null}
!180 = metadata !{i32 378, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !178, i32 377, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!182 = metadata !{i32 379, i32 0, metadata !181, null}
!183 = metadata !{i32 380, i32 0, metadata !181, null}
!184 = metadata !{i32 381, i32 0, metadata !181, null}
!185 = metadata !{i32 384, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !178, i32 383, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!187 = metadata !{i32 388, i32 0, metadata !53, null}
!188 = metadata !{i32 435, i32 0, metadata !61, null}
!189 = metadata !{i32 438, i32 0, metadata !61, null}
!190 = metadata !{i32 440, i32 0, metadata !61, null}
!191 = metadata !{i32 442, i32 0, metadata !61, null}
!192 = metadata !{i32 444, i32 0, metadata !61, null}
!193 = metadata !{i32 446, i32 0, metadata !61, null}
!194 = metadata !{i32 448, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !61, i32 447, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!196 = metadata !{i32 450, i32 0, metadata !195, null}
!197 = metadata !{i32 452, i32 0, metadata !195, null}
!198 = metadata !{i32 453, i32 0, metadata !195, null}
!199 = metadata !{i32 459, i32 0, metadata !61, null}
!200 = metadata !{i32 511, i32 0, metadata !83, null}
!201 = metadata !{i32 514, i32 0, metadata !83, null}
!202 = metadata !{i32 516, i32 0, metadata !83, null}
!203 = metadata !{i32 518, i32 0, metadata !83, null}
!204 = metadata !{i32 520, i32 0, metadata !83, null}
!205 = metadata !{i32 525, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !83, i32 521, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!207 = metadata !{i32 526, i32 0, metadata !206, null}
!208 = metadata !{i32 527, i32 0, metadata !206, null}
!209 = metadata !{i32 529, i32 0, metadata !83, null}
!210 = metadata !{i32 531, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !83, i32 530, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c]
!212 = metadata !{i32 533, i32 0, metadata !211, null}
!213 = metadata !{i32 535, i32 0, metadata !211, null}
!214 = metadata !{i32 536, i32 0, metadata !211, null}
!215 = metadata !{i32 542, i32 0, metadata !83, null}
