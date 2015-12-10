; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/futil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_pstack = type { %struct.__sFILE*, %struct.t_pstack* }

@bUnbuffered = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/futil.c\00", align 1
@__stderrp = external global %struct.__sFILE*
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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @no_buffers() #1 {
  store i1 true, i1* @bUnbuffered, align 1
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @push_ps(%struct.__sFILE* %fp) #1 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #8
  %2 = bitcast i8* %1 to %struct.__sFILE**
  store %struct.__sFILE* %fp, %struct.__sFILE** %2, align 8, !tbaa !2
  %3 = getelementptr inbounds i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct.t_pstack**
  store %struct.t_pstack* null, %struct.t_pstack** %4, align 8, !tbaa !7
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ffclose(%struct.__sFILE* nocapture %fp) #1 {
  %1 = tail call i32 @fclose(%struct.__sFILE* %fp) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @frewind(%struct.__sFILE* nocapture %fp) #1 {
  tail call void @rewind(%struct.__sFILE* %fp) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare void @rewind(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @is_pipe(%struct.__sFILE* nocapture readnone %fp) #4 {
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @uncompress(i8* %fn, i8* %mode) #1 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #5
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* %fn) #8
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %1) #8
  %5 = call %struct.__sFILE* @"\01_popen"(i8* %1, i8* %mode) #8
  %6 = icmp eq %struct.__sFILE* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #8
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #8
  %10 = bitcast i8* %9 to %struct.__sFILE**
  store %struct.__sFILE* %5, %struct.__sFILE** %10, align 8, !tbaa !2
  %11 = getelementptr inbounds i8* %9, i64 8
  %12 = bitcast i8* %11 to %struct.t_pstack**
  store %struct.t_pstack* null, %struct.t_pstack** %12, align 8, !tbaa !7
  call void @llvm.lifetime.end(i64 256, i8* %1) #5
  ret %struct.__sFILE* %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_popen"(i8*, i8*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @gunzip(i8* %fn, i8* %mode) #1 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #5
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* %fn) #8
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %1) #8
  %5 = call %struct.__sFILE* @"\01_popen"(i8* %1, i8* %mode) #8
  %6 = icmp eq %struct.__sFILE* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #8
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #8
  %10 = bitcast i8* %9 to %struct.__sFILE**
  store %struct.__sFILE* %5, %struct.__sFILE** %10, align 8, !tbaa !2
  %11 = getelementptr inbounds i8* %9, i64 8
  %12 = bitcast i8* %11 to %struct.t_pstack**
  store %struct.t_pstack* null, %struct.t_pstack** %12, align 8, !tbaa !7
  call void @llvm.lifetime.end(i64 256, i8* %1) #5
  ret %struct.__sFILE* %5
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fexist(i8* %fname) #1 {
  %1 = icmp eq i8* %fname, null
  br i1 %1, label %7, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fname, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #8
  %4 = icmp eq %struct.__sFILE* %3, null
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %2
  %6 = tail call i32 @fclose(%struct.__sFILE* %3) #8
  br label %7

; <label>:7                                       ; preds = %2, %0, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %0 ], [ 0, %2 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @eof(%struct.__sFILE* nocapture %fp) #1 {
  %data = alloca [4 x i8], align 1
  %1 = getelementptr inbounds [4 x i8]* %data, i64 0, i64 0
  %2 = call i64 @fread(i8* %1, i64 1, i64 1, %struct.__sFILE* %fp) #8
  %3 = trunc i64 %2 to i32
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @fseek(%struct.__sFILE* %fp, i64 -1, i32 1) #8
  br label %7

; <label>:7                                       ; preds = %0, %5
  %8 = icmp eq i32 %3, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct.__sFILE* nocapture, i64, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @backup_fn(i8* nocapture readonly %file) #1 {
  %1 = tail call i64 @strlen(i8* %file) #8
  %2 = add i64 %1, 4294967295
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %0
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 32
  br label %8

; <label>:6                                       ; preds = %8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %7 = icmp sgt i64 %indvars.iv, 1
  br i1 %7, label %8, label %.critedge2

; <label>:8                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %9 = getelementptr inbounds i8* %file, i64 %indvars.iv
  %10 = load i8* %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %.critedge, label %6

.critedge:                                        ; preds = %8
  %12 = tail call i8* @strdup(i8* %file) #8
  %13 = getelementptr inbounds i8* %12, i64 %indvars.iv
  store i8 0, i8* %13, align 1, !tbaa !9
  %.sum = add nsw i64 %indvars.iv, 1
  %14 = getelementptr inbounds i8* %file, i64 %.sum
  %15 = tail call i8* @strdup(i8* %14) #8
  br label %.preheader

.critedge2:                                       ; preds = %6, %0
  %16 = tail call i8* @strdup(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #8
  %17 = tail call i8* @strdup(i8* %file) #8
  br label %.preheader

.preheader:                                       ; preds = %.critedge2, %.critedge
  %directory.0.ph = phi i8* [ %16, %.critedge2 ], [ %12, %.critedge ]
  %fn.0.ph = phi i8* [ %17, %.critedge2 ], [ %15, %.critedge ]
  br label %18

; <label>:18                                      ; preds = %.preheader, %22
  %count.0 = phi i32 [ %20, %22 ], [ 1, %.preheader ]
  %19 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* %directory.0.ph, i8* %fn.0.ph, i32 %count.0) #8
  %20 = add nuw nsw i32 %count.0, 1
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %.critedge1

; <label>:22                                      ; preds = %18
  %23 = tail call i32 @fexist(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0)) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %.critedge1.thread, label %18

.critedge1:                                       ; preds = %18
  %25 = icmp eq i32 %20, 128
  br i1 %25, label %26, label %.critedge1.thread

; <label>:26                                      ; preds = %.critedge1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), i32 128, i8* %fn.0.ph) #8
  br label %.critedge1.thread

.critedge1.thread:                                ; preds = %22, %26, %.critedge1
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 266, i8* %directory.0.ph) #8
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 267, i8* %fn.0.ph) #8
  ret i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @ffopen(i8* %file, i8* %mode) #1 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #5
  %2 = load i8* %mode, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 114
  %4 = call i8* @__strcpy_chk(i8* %1, i8* %file, i64 256) #8
  %5 = call i32 @fexist(i8* %1) #9
  %6 = icmp eq i32 %5, 0
  %or.cond = and i1 %3, %6
  br i1 %or.cond, label %14, label %7

; <label>:7                                       ; preds = %0
  %8 = call %struct.__sFILE* @"\01_fopen"(i8* %1, i8* %mode) #8
  %9 = icmp eq %struct.__sFILE* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %1) #8
  br label %11

; <label>:11                                      ; preds = %10, %7
  call void @_where(i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 297) #8
  %.b = load i1* @bUnbuffered, align 1
  br i1 %.b, label %12, label %13

; <label>:12                                      ; preds = %11
  call void @setbuf(%struct.__sFILE* %8, i8* null) #8
  br label %13

; <label>:13                                      ; preds = %12, %11
  call void @_where(i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 320) #8
  br label %27

; <label>:14                                      ; preds = %0
  %15 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* %file) #8
  %16 = call i32 @fexist(i8* %1) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18                                      ; preds = %14
  %19 = call %struct.__sFILE* @uncompress(i8* %1, i8* %mode) #9
  br label %27

; <label>:20                                      ; preds = %14
  %21 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* %file) #8
  %22 = call i32 @fexist(i8* %1) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

; <label>:24                                      ; preds = %20
  %25 = call %struct.__sFILE* @gunzip(i8* %1, i8* %mode) #9
  br label %27

; <label>:26                                      ; preds = %20
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %file) #8
  br label %27

; <label>:27                                      ; preds = %18, %26, %24, %13
  %ff.0 = phi %struct.__sFILE* [ %19, %18 ], [ %25, %24 ], [ null, %26 ], [ %8, %13 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #5
  ret %struct.__sFILE* %ff.0
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: optsize
declare void @_where(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @setbuf(%struct.__sFILE* nocapture, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @search_subdirs(i8* %parent, i8* %libdir) #1 {
  %1 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %libdir, i1 false)
  %2 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47) #8
  %3 = tail call i32 @fexist(i8* %libdir) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %.thread3

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i32 47) #8
  %7 = tail call i32 @fexist(i8* %libdir) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %.thread3

; <label>:9                                       ; preds = %5
  %10 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i8* %parent, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #8
  %11 = tail call i32 @fexist(i8* %libdir) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %.thread3

; <label>:13                                      ; preds = %9
  %14 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #8
  %15 = tail call i32 @fexist(i8* %libdir) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %.thread3

.thread3:                                         ; preds = %0, %5, %9, %13
  %found.24 = phi i32 [ %15, %13 ], [ %11, %9 ], [ %7, %5 ], [ %3, %0 ]
  %17 = tail call i8* @strrchr(i8* %libdir, i32 47) #8
  store i8 0, i8* %17, align 1, !tbaa !9
  br label %18

; <label>:18                                      ; preds = %13, %.thread3
  %found.25 = phi i32 [ 0, %13 ], [ %found.24, %.thread3 ]
  ret i32 %found.25
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @get_libdir(i8* nocapture readnone %libdir) #4 {
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @low_libfn(i8* %file, i32 %bFatal) #1 {
  %1 = tail call i32 @fexist(i8* %file) #9
  %2 = icmp eq i32 %1, 0
  %.file = select i1 %2, i8* null, i8* %file
  ret i8* %.file
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @low_libopen(i8* %file, i32 %bFatal) #1 {
  %1 = tail call i32 @fexist(i8* %file) #8
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i8* %file, null
  %4 = or i1 %3, %2
  br i1 %4, label %12, label %5

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %bFatal, 0
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0), i8* %file) #8
  br label %10

; <label>:10                                      ; preds = %5, %7
  %11 = tail call %struct.__sFILE* @"\01_fopen"(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #8
  br label %12

; <label>:12                                      ; preds = %0, %10
  %ff.0 = phi %struct.__sFILE* [ %11, %10 ], [ null, %0 ]
  ret %struct.__sFILE* %ff.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @libfn(i8* %file) #1 {
  %1 = tail call i32 @fexist(i8* %file) #8
  %2 = icmp eq i32 %1, 0
  %.file.i = select i1 %2, i8* null, i8* %file
  ret i8* %.file.i
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @libopen(i8* %file) #1 {
  %1 = tail call %struct.__sFILE* @low_libopen(i8* %file, i32 1) #9
  ret %struct.__sFILE* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tmpnam(i8* %buf) #1 {
  %1 = tail call i64 @strlen(i8* %buf) #8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 7
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str25, i64 0, i64 0)) #8
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = shl i64 %1, 32
  %sext = add i64 %6, -25769803776
  %7 = ashr exact i64 %sext, 32
  %scevgep = getelementptr i8* %buf, i64 %7
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 88, i64 6, i32 1, i1 false)
  %8 = tail call i32 @mkstemp(i8* %buf) #8
  switch i32 %8, label %11 [
    i32 22, label %9
    i32 17, label %10
  ]

; <label>:9                                       ; preds = %5
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str26, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 599) #8
  br label %11

; <label>:10                                      ; preds = %5
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 601) #8
  br label %11

; <label>:11                                      ; preds = %5, %10, %9
  %12 = tail call i32 @"\01_close"(i32 %8) #8
  ret void
}

; Function Attrs: optsize
declare i32 @mkstemp(i8*) #2

; Function Attrs: optsize
declare i32 @"\01_close"(i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"t_pstack", !4, i64 0, !4, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 8}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
