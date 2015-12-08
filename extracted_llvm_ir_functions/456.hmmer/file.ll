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
  %call = tail call i8* @strrchr(i8* %file, i32 47) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %file to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 0, %entry ]
  %add = add nsw i32 %cond, 2
  %conv1 = sext i32 %add to i64
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 73, i64 %conv1) #6
  %cmp3 = icmp sgt i32 %cond, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %conv5 = sext i32 %cond to i64
  %call6 = tail call i8* @strncpy(i8* %call2, i8* %file, i64 %conv5) #6
  br label %if.end12

if.else:                                          ; preds = %cond.end
  %0 = load i8* %file, align 1, !tbaa !0
  %cmp8 = icmp eq i8 %0, 47
  br i1 %cmp8, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.else
  store i8 46, i8* %call2, align 1, !tbaa !0
  br label %if.end12

if.else11:                                        ; preds = %if.else
  store i8 47, i8* %call2, align 1, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else11, %if.then
  %len.0 = phi i32 [ %cond, %if.then ], [ 1, %if.then10 ], [ 1, %if.else11 ]
  %idxprom = sext i32 %len.0 to i64
  %arrayidx = getelementptr inbounds i8* %call2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  ret i8* %call2
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define i8* @FileTail(i8* %file, i32 %noextension) #0 {
entry:
  %call = tail call i8* @strrchr(i8* %file, i32 47) #5
  %call1 = tail call i64 @strlen(i8* %file) #5
  %add = add i64 %call1, 1
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 105, i64 %add) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call i8* @strcpy(i8* %call2, i8* %file) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %call, i64 1
  %call4 = tail call i8* @strcpy(i8* %call2, i8* %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool = icmp eq i32 %noextension, 0
  br i1 %tobool, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i8* @strrchr(i8* %call2, i32 46) #5
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then5
  store i8 0, i8* %call6, align 1, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end, %if.then8
  ret i8* %call2
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i8* @FileSameDirectory(i8* %file1, i8* %file2) #0 {
entry:
  %call = tail call i8* @FileDirname(i8* %file1) #7
  %call1 = tail call i8* @FileTail(i8* %file2, i32 0) #7
  %call2 = tail call i32 @strcmp(i8* %file2, i8* %call1) #5
  %cmp = icmp eq i32 %call2, 0
  %call3 = tail call i8* @FileConcat(i8* %call, i8* %call1) #7
  br i1 %cmp, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @strcmp(i8* %call3, i8* %file2) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  tail call void @free(i8* %call3) #6
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.then6, %entry
  %result.0 = phi i8* [ %call3, %entry ], [ null, %if.then6 ], [ %call3, %land.lhs.true ]
  tail call void @free(i8* %call) #6
  tail call void @free(i8* %call1) #6
  ret i8* %result.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i8* @FileConcat(i8* %dir, i8* %file) #0 {
entry:
  %call = tail call i64 @strlen(i8* %dir) #5
  %call1 = tail call i64 @strlen(i8* %file) #5
  %add = add i64 %call, 2
  %add2 = add i64 %add, %call1
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 170, i64 %add2) #6
  %0 = load i8* %file, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = tail call i8* @strcpy(i8* %call3, i8* %file) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call3, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %dir, i32 47, i8* %file) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* %call3
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define i8* @FileAddSuffix(i8* %filename, i8* %sfx) #0 {
entry:
  %call = tail call i64 @strlen(i8* %filename) #5
  %call1 = tail call i64 @strlen(i8* %sfx) #5
  %add = add i64 %call, 2
  %add2 = add i64 %add, %call1
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 190, i64 %add2) #6
  %call4 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call3, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* %filename, i8* %sfx) #6
  ret i8* %call3
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @EnvFileOpen(i8* %fname, i8* %env, i8** %ret_dir) #0 {
entry:
  %full = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %full, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #4
  %cmp = icmp eq i8* %env, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @getenv(i8* %env) #6
  %call1 = call i8* @Strdup(i8* %call) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @strtok(i8* %call1, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp637 = icmp eq i8* %call5, null
  br i1 %cmp637, label %while.end, label %while.body

while.body:                                       ; preds = %if.end4, %if.end21
  %s.038 = phi i8* [ %call22, %if.end21 ], [ %call5, %if.end4 ]
  %call7 = call i64 @strlen(i8* %fname) #5
  %conv = trunc i64 %call7 to i32
  %call8 = call i64 @strlen(i8* %s.038) #5
  %conv9 = trunc i64 %call8 to i32
  %add = add i32 %conv, 2
  %add10 = add i32 %add, %conv9
  %cmp11 = icmp sgt i32 %add10, 1024
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  call void @free(i8* %call1) #6
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %call15 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %s.038, i32 47, i8* %fname) #6
  %call17 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  %cmp18 = icmp eq %struct._IO_FILE* %call17, null
  br i1 %cmp18, label %if.end21, label %while.end

if.end21:                                         ; preds = %if.end14
  %call22 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp6 = icmp eq i8* %call22, null
  br i1 %cmp6, label %while.end, label %while.body

while.end:                                        ; preds = %if.end21, %if.end14, %if.end4
  %s.0.lcssa = phi i8* [ null, %if.end4 ], [ %s.038, %if.end14 ], [ null, %if.end21 ]
  %fp.1 = phi %struct._IO_FILE* [ null, %if.end4 ], [ %call17, %if.end14 ], [ null, %if.end21 ]
  %cmp23 = icmp eq i8** %ret_dir, null
  br i1 %cmp23, label %if.end27, label %if.then25

if.then25:                                        ; preds = %while.end
  %call26 = call i8* @Strdup(i8* %s.0.lcssa) #6
  store i8* %call26, i8** %ret_dir, align 8, !tbaa !2
  br label %if.end27

if.end27:                                         ; preds = %while.end, %if.then25
  call void @free(i8* %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end27, %if.then13
  %retval.0 = phi %struct._IO_FILE* [ null, %if.then13 ], [ %fp.1, %if.end27 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 1024, i8* %0) #4
  ret %struct._IO_FILE* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @FileExists(i8* nocapture %filename) #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  %tobool = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @fclose(%struct._IO_FILE* %call) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
