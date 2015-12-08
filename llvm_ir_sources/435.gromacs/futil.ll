; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_pstack = type { %struct._IO_FILE*, %struct.t_pstack* }

@bUnbuffered = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c\00", align 1
@stderr = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [19 x i8] c"uncompress -c < %s\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Going to execute '%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"Could not open %s\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"gunzip -c < %s\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@backup_fn.buf = internal global [256 x i8] zeroinitializer, align 16
@.str9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"%s/#%s.%d#\00", align 1
@.str11 = private unnamed_addr constant [46 x i8] c"Won't make more than %d backups of %s for you\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"%s.Z\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"%s.gz\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"%s does not exist\00", align 1
@.str19 = private unnamed_addr constant [27 x i8] c"%s%cshare%ctop%cgurgle.dat\00", align 1
@.str20 = private unnamed_addr constant [36 x i8] c"%s%cshare%cgromacs%ctop%cgurgle.dat\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c"%s%cshare%cgromacs-%s%ctop%cgurgle.dat\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"specbench-3.1.2\00", align 1
@.str23 = private unnamed_addr constant [48 x i8] c"%s%cshare%cgromacs%cgromacs-%s%ctop%cgurgle.dat\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"Opening library file %s\0A\00", align 1
@.str25 = private unnamed_addr constant [55 x i8] c"Buf passed to gmx_tmpnam must be at least 7 bytes long\00", align 1
@.str26 = private unnamed_addr constant [53 x i8] c"Invalid template %s for mkstemp (source %s, line %d)\00", align 1
@.str27 = private unnamed_addr constant [54 x i8] c"mkstemp created existing file %s (source %s, line %d)\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @no_buffers() #0 {
entry:
  store i1 true, i1* @bUnbuffered, align 1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_ps(%struct._IO_FILE* %fp) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #6
  %fp1 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp1, align 8, !tbaa !0
  %prev = getelementptr inbounds i8* %call, i64 8
  %0 = bitcast i8* %prev to %struct.t_pstack**
  store %struct.t_pstack* null, %struct.t_pstack** %0, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @ffclose(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  %call = tail call i32 @fclose(%struct._IO_FILE* %fp) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @frewind(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @rewind(%struct._IO_FILE* %fp) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @is_pipe(%struct._IO_FILE* nocapture %fp) #3 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @uncompress(i8* %fn, i8* nocapture %mode) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* %fn) #6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %0) #6
  %call4 = call %struct._IO_FILE* @popen(i8* %0, i8* %mode) #6
  %cmp = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #6
  %fp1.i = bitcast i8* %call.i to %struct._IO_FILE**
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp1.i, align 8, !tbaa !0
  %prev.i = getelementptr inbounds i8* %call.i, i64 8
  %2 = bitcast i8* %prev.i to %struct.t_pstack**
  store %struct.t_pstack* null, %struct.t_pstack** %2, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret %struct._IO_FILE* %call4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @popen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @gunzip(i8* %fn, i8* nocapture %mode) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* %fn) #6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %0) #6
  %call4 = call %struct._IO_FILE* @popen(i8* %0, i8* %mode) #6
  %cmp = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #6
  %fp1.i = bitcast i8* %call.i to %struct._IO_FILE**
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp1.i, align 8, !tbaa !0
  %prev.i = getelementptr inbounds i8* %call.i, i64 8
  %2 = bitcast i8* %prev.i to %struct.t_pstack**
  store %struct.t_pstack* null, %struct.t_pstack** %2, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret %struct._IO_FILE* %call4
}

; Function Attrs: nounwind optsize uwtable
define i32 @fexist(i8* %fname) #0 {
entry:
  %cmp = icmp eq i8* %fname, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct._IO_FILE* @fopen(i8* %fname, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #6
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %return, label %if.else

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @fclose(%struct._IO_FILE* %call) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @eof(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  %data = alloca [4 x i8], align 1
  %arraydecay = getelementptr inbounds [4 x i8]* %data, i64 0, i64 0
  %call2 = call i64 @fread(i8* %arraydecay, i64 1, i64 1, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then4, label %return

if.then4:                                         ; preds = %entry
  %call5 = call i32 @fseek(%struct._IO_FILE* %fp, i64 -1, i32 1) #6
  br label %return

return:                                           ; preds = %entry, %if.then4
  %lnot = icmp eq i32 %conv, 0
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #2

; Function Attrs: nounwind optsize uwtable
define i8* @backup_fn(i8* %file) #0 {
entry:
  %call = tail call i64 @strlen(i8* %file) #7
  %sub = add i64 %call, 4294967295
  %conv = trunc i64 %sub to i32
  %cmp40 = icmp sgt i32 %conv, 0
  br i1 %cmp40, label %land.rhs.lr.ph, label %if.else

land.rhs.lr.ph:                                   ; preds = %entry
  %sext = shl i64 %sub, 32
  %0 = ashr exact i64 %sext, 32
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %if.else

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %file, i64 %indvars.iv
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp3 = icmp eq i8 %2, 47
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %land.rhs
  %call7 = tail call i8* @gmx_strdup(i8* %file) #6
  %arrayidx9 = getelementptr inbounds i8* %call7, i64 %indvars.iv
  store i8 0, i8* %arrayidx9, align 1, !tbaa !1
  %add.ptr.sum = add i64 %indvars.iv, 1
  %add.ptr10 = getelementptr inbounds i8* %file, i64 %add.ptr.sum
  %call11 = tail call i8* @gmx_strdup(i8* %add.ptr10) #6
  br label %do.body.preheader

if.else:                                          ; preds = %for.cond, %entry
  %call12 = tail call i8* @gmx_strdup(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %call13 = tail call i8* @gmx_strdup(i8* %file) #6
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else, %if.then
  %directory.0.ph = phi i8* [ %call7, %if.then ], [ %call12, %if.else ]
  %fn.0.ph = phi i8* [ %call11, %if.then ], [ %call13, %if.else ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs17
  %count.0 = phi i32 [ %inc, %land.rhs17 ], [ 1, %do.body.preheader ]
  %call14 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* %directory.0.ph, i8* %fn.0.ph, i32 %count.0) #6
  %inc = add nsw i32 %count.0, 1
  %cmp15 = icmp slt i32 %inc, 128
  br i1 %cmp15, label %land.rhs17, label %do.end

land.rhs17:                                       ; preds = %do.body
  %call18 = tail call i32 @fexist(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0)) #8
  %tobool = icmp eq i32 %call18, 0
  br i1 %tobool, label %do.end, label %do.body

do.end:                                           ; preds = %land.rhs17, %do.body
  %cmp20 = icmp eq i32 %inc, 128
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), i32 128, i8* %fn.0.ph) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 266, i8* %directory.0.ph) #6
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 267, i8* %fn.0.ph) #6
  ret i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @ffopen(i8* %file, i8* nocapture %mode) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %1 = load i8* %mode, align 1, !tbaa !1
  %call = call i8* @strcpy(i8* %0, i8* %file) #6
  %call3 = call i32 @fexist(i8* %0) #8
  %tobool = icmp eq i32 %call3, 0
  %cmp = icmp eq i8 %1, 114
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.else33, label %if.then

if.then:                                          ; preds = %entry
  %call6 = call %struct._IO_FILE* @fopen(i8* %0, i8* %mode) #6
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  call void @_where(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 297) #6
  %.b66 = load i1* @bUnbuffered, align 1
  br i1 %.b66, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end
  call void @setbuf(%struct._IO_FILE* %call6, i8* null) #6
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then22
  call void @_where(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 320) #6
  br label %if.end54

if.else33:                                        ; preds = %entry
  %call35 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* %file) #6
  %call37 = call i32 @fexist(i8* %0) #8
  %tobool38 = icmp eq i32 %call37, 0
  br i1 %tobool38, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.else33
  %call41 = call %struct._IO_FILE* @uncompress(i8* %0, i8* %mode) #8
  br label %if.end54

if.else42:                                        ; preds = %if.else33
  %call44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* %file) #6
  %call46 = call i32 @fexist(i8* %0) #8
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.else42
  %call50 = call %struct._IO_FILE* @gunzip(i8* %0, i8* %mode) #8
  br label %if.end54

if.else51:                                        ; preds = %if.else42
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %file) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then39, %if.else51, %if.then48, %if.end32
  %ff.0 = phi %struct._IO_FILE* [ %call6, %if.end32 ], [ %call41, %if.then39 ], [ %call50, %if.then48 ], [ null, %if.else51 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret %struct._IO_FILE* %ff.0
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: nounwind optsize
declare void @setbuf(%struct._IO_FILE* nocapture, i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @search_subdirs(i8* %parent, i8* %libdir) #0 {
entry:
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47) #6
  %call1 = tail call i32 @fexist(i8* %libdir) #8
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then15

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i32 47) #6
  %call3 = tail call i32 @fexist(i8* %libdir) #8
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.end8, label %if.then15

if.end8:                                          ; preds = %if.end
  %call6 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i8* %parent, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #6
  %call7 = tail call i32 @fexist(i8* %libdir) #8
  %tobool9 = icmp eq i32 %call7, 0
  br i1 %tobool9, label %if.end13, label %if.then15

if.end13:                                         ; preds = %if.end8
  %call11 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #6
  %call12 = tail call i32 @fexist(i8* %libdir) #8
  %tobool14 = icmp eq i32 %call12, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %entry, %if.end, %if.end8, %if.end13
  %found.236 = phi i32 [ %call12, %if.end13 ], [ %call7, %if.end8 ], [ %call3, %if.end ], [ %call1, %entry ]
  %call16 = tail call i8* @strrchr(i8* %libdir, i32 47) #7
  store i8 0, i8* %call16, align 1, !tbaa !1
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then15
  %found.237 = phi i32 [ 0, %if.end13 ], [ %found.236, %if.then15 ]
  ret i32 %found.237
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind optsize readnone uwtable
define i32 @get_libdir(i8* nocapture %libdir) #3 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i8* @low_libfn(i8* %file, i32 %bFatal) #0 {
entry:
  %call = tail call i32 @fexist(i8* %file) #8
  %tobool = icmp eq i32 %call, 0
  %.file = select i1 %tobool, i8* null, i8* %file
  ret i8* %.file
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @low_libopen(i8* %file, i32 %bFatal) #0 {
entry:
  %call.i = tail call i32 @fexist(i8* %file) #6
  %tobool.i = icmp eq i32 %call.i, 0
  %.file.i = select i1 %tobool.i, i8* null, i8* %file
  %cmp = icmp eq i8* %.file.i, null
  br i1 %cmp, label %if.end4, label %if.else

if.else:                                          ; preds = %entry
  %tobool = icmp eq i32 %bFatal, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0), i8* %.file.i) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %call3 = tail call %struct._IO_FILE* @fopen(i8* %.file.i, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #6
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  %ff.0 = phi %struct._IO_FILE* [ %call3, %if.end ], [ null, %entry ]
  ret %struct._IO_FILE* %ff.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @libfn(i8* %file) #0 {
entry:
  %call.i = tail call i32 @fexist(i8* %file) #6
  %tobool.i = icmp eq i32 %call.i, 0
  %.file.i = select i1 %tobool.i, i8* null, i8* %file
  ret i8* %.file.i
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @libopen(i8* %file) #0 {
entry:
  %call = tail call %struct._IO_FILE* @low_libopen(i8* %file, i32 1) #8
  ret %struct._IO_FILE* %call
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_tmpnam(i8* %buf) #0 {
entry:
  %call = tail call i64 @strlen(i8* %buf) #7
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str25, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sub = shl i64 %call, 32
  %sext = add i64 %sub, -25769803776
  %0 = ashr exact i64 %sext, 32
  %scevgep = getelementptr i8* %buf, i64 %0
  %1 = add i32 %conv, -5
  %2 = icmp sgt i32 %1, %conv
  %smax = select i1 %2, i32 %1, i32 %conv
  %3 = add i32 %smax, 5
  %4 = sub i32 %3, %conv
  %5 = zext i32 %4 to i64
  %6 = add i64 %5, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 88, i64 %6, i32 1, i1 false)
  %call4 = tail call i32 @mkstemp(i8* %buf) #6
  switch i32 %call4, label %if.end12 [
    i32 22, label %if.then7
    i32 17, label %if.then10
  ]

if.then7:                                         ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str26, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 599) #6
  br label %if.end12

if.then10:                                        ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 601) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then10, %if.then7
  %call13 = tail call i32 @close(i32 %call4) #6
  ret void
}

; Function Attrs: optsize
declare i32 @mkstemp(i8*) #1

; Function Attrs: optsize
declare i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
