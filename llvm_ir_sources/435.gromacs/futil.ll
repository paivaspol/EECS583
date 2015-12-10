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
  ret void, !dbg !219
}

; Function Attrs: nounwind optsize uwtable
define void @push_ps(%struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !70), !dbg !220
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #7, !dbg !221
  %fp1 = bitcast i8* %call to %struct._IO_FILE**, !dbg !222
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp1, align 8, !dbg !222, !tbaa !223
  %prev = getelementptr inbounds i8* %call, i64 8, !dbg !226
  %0 = bitcast i8* %prev to %struct.t_pstack**, !dbg !226
  store %struct.t_pstack* null, %struct.t_pstack** %0, align 8, !dbg !226, !tbaa !223
  ret void, !dbg !227
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @ffclose(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !81), !dbg !228
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !82), !dbg !230
  %call = tail call i32 @fclose(%struct._IO_FILE* %fp) #7, !dbg !231
  ret void, !dbg !233
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @frewind(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !86), !dbg !234
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !87), !dbg !235
  tail call void @rewind(%struct._IO_FILE* %fp) #7, !dbg !236
  ret void, !dbg !236
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @is_pipe(%struct._IO_FILE* nocapture %fp) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !92), !dbg !237
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !93), !dbg !238
  ret i32 0, !dbg !239
}

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @uncompress(i8* %fn, i8* nocapture %mode) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !98), !dbg !240
  call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !99), !dbg !240
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !241
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !241
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !101), !dbg !241
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* %fn) #7, !dbg !242
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !243, !tbaa !223
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %0) #7, !dbg !243
  %call4 = call %struct._IO_FILE* @popen(i8* %0, i8* %mode) #7, !dbg !244
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call4}, i64 0, metadata !100), !dbg !244
  %cmp = icmp eq %struct._IO_FILE* %call4, null, !dbg !244
  br i1 %cmp, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #7, !dbg !245
  br label %if.end, !dbg !245

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call4}, i64 0, metadata !246) #5, !dbg !248
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #7, !dbg !249
  %fp1.i = bitcast i8* %call.i to %struct._IO_FILE**, !dbg !250
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp1.i, align 8, !dbg !250, !tbaa !223
  %prev.i = getelementptr inbounds i8* %call.i, i64 8, !dbg !251
  %2 = bitcast i8* %prev.i to %struct.t_pstack**, !dbg !251
  store %struct.t_pstack* null, %struct.t_pstack** %2, align 8, !dbg !251, !tbaa !223
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !252
  ret %struct._IO_FILE* %call4, !dbg !252
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @popen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @gunzip(i8* %fn, i8* nocapture %mode) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !107), !dbg !253
  call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !108), !dbg !253
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !254
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !254
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !110), !dbg !254
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* %fn) #7, !dbg !255
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !256, !tbaa !223
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %0) #7, !dbg !256
  %call4 = call %struct._IO_FILE* @popen(i8* %0, i8* %mode) #7, !dbg !257
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call4}, i64 0, metadata !109), !dbg !257
  %cmp = icmp eq %struct._IO_FILE* %call4, null, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !257

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #7, !dbg !258
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call4}, i64 0, metadata !259) #5, !dbg !261
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #7, !dbg !262
  %fp1.i = bitcast i8* %call.i to %struct._IO_FILE**, !dbg !263
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp1.i, align 8, !dbg !263, !tbaa !223
  %prev.i = getelementptr inbounds i8* %call.i, i64 8, !dbg !264
  %2 = bitcast i8* %prev.i to %struct.t_pstack**, !dbg !264
  store %struct.t_pstack* null, %struct.t_pstack** %2, align 8, !dbg !264, !tbaa !223
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !265
  ret %struct._IO_FILE* %call4, !dbg !265
}

; Function Attrs: nounwind optsize uwtable
define i32 @fexist(i8* %fname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fname}, i64 0, metadata !115), !dbg !266
  %cmp = icmp eq i8* %fname, null, !dbg !267
  br i1 %cmp, label %return, label %if.end, !dbg !267

if.end:                                           ; preds = %entry
  %call = tail call %struct._IO_FILE* @fopen(i8* %fname, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !268
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !116), !dbg !268
  %cmp1 = icmp eq %struct._IO_FILE* %call, null, !dbg !269
  br i1 %cmp1, label %return, label %if.else, !dbg !269

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @fclose(%struct._IO_FILE* %call) #7, !dbg !270
  br label %return, !dbg !272

return:                                           ; preds = %if.end, %entry, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !273
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @eof(%struct._IO_FILE* nocapture %fp) #0 {
entry:
  %data = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !119), !dbg !274
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %data}, metadata !120), !dbg !275
  %arraydecay = getelementptr inbounds [4 x i8]* %data, i64 0, i64 0, !dbg !276
  %call2 = call i64 @fread(i8* %arraydecay, i64 1, i64 1, %struct._IO_FILE* %fp) #7, !dbg !276
  %conv = trunc i64 %call2 to i32, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !124), !dbg !276
  %cmp = icmp eq i32 %conv, 1, !dbg !276
  br i1 %cmp, label %if.then4, label %return, !dbg !276

if.then4:                                         ; preds = %entry
  %call5 = call i32 @fseek(%struct._IO_FILE* %fp, i64 -1, i32 1) #7, !dbg !278
  br label %return, !dbg !278

return:                                           ; preds = %entry, %if.then4
  %lnot = icmp eq i32 %conv, 0, !dbg !279
  %lnot.ext = zext i1 %lnot to i32, !dbg !279
  ret i32 %lnot.ext, !dbg !280
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #3

; Function Attrs: nounwind optsize uwtable
define i8* @backup_fn(i8* nocapture %file) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !129), !dbg !281
  tail call void @llvm.dbg.value(metadata !282, i64 0, metadata !131), !dbg !283
  %call = tail call i64 @strlen(i8* %file) #8, !dbg !284
  %sub = add i64 %call, 4294967295, !dbg !284
  %conv = trunc i64 %sub to i32, !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !130), !dbg !284
  %cmp40 = icmp sgt i32 %conv, 0, !dbg !284
  br i1 %cmp40, label %land.rhs.lr.ph, label %if.else, !dbg !284

land.rhs.lr.ph:                                   ; preds = %entry
  %sext = shl i64 %sub, 32
  %0 = ashr exact i64 %sext, 32
  br label %land.rhs, !dbg !284

for.cond:                                         ; preds = %land.rhs
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !284
  %cmp = icmp sgt i32 %1, 0, !dbg !284
  br i1 %cmp, label %land.rhs, label %if.else, !dbg !284

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %file, i64 %indvars.iv, !dbg !284
  %2 = load i8* %arrayidx, align 1, !dbg !284, !tbaa !224
  %cmp3 = icmp eq i8 %2, 47, !dbg !284
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !284
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %land.rhs
  %call7 = tail call noalias i8* @strdup(i8* %file) #7, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !132), !dbg !286
  %arrayidx9 = getelementptr inbounds i8* %call7, i64 %indvars.iv, !dbg !288
  store i8 0, i8* %arrayidx9, align 1, !dbg !288, !tbaa !224
  %add.ptr.sum = add i64 %indvars.iv, 1, !dbg !289
  %add.ptr10 = getelementptr inbounds i8* %file, i64 %add.ptr.sum, !dbg !289
  %call11 = tail call noalias i8* @strdup(i8* %add.ptr10) #7, !dbg !289
  tail call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !133), !dbg !289
  br label %do.body.preheader, !dbg !290

if.else:                                          ; preds = %for.cond, %entry
  %call12 = tail call noalias i8* @strdup(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !291
  tail call void @llvm.dbg.value(metadata !{i8* %call12}, i64 0, metadata !132), !dbg !291
  %call13 = tail call noalias i8* @strdup(i8* %file) #7, !dbg !293
  tail call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !133), !dbg !293
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else, %if.then
  %directory.0.ph = phi i8* [ %call7, %if.then ], [ %call12, %if.else ]
  %fn.0.ph = phi i8* [ %call11, %if.then ], [ %call13, %if.else ]
  br label %do.body, !dbg !294

do.body:                                          ; preds = %do.body.preheader, %land.rhs17
  %count.0 = phi i32 [ %inc, %land.rhs17 ], [ 1, %do.body.preheader ]
  %call14 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* %directory.0.ph, i8* %fn.0.ph, i32 %count.0) #7, !dbg !294
  %inc = add nsw i32 %count.0, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !131), !dbg !296
  %cmp15 = icmp slt i32 %inc, 128, !dbg !297
  br i1 %cmp15, label %land.rhs17, label %do.end, !dbg !297

land.rhs17:                                       ; preds = %do.body
  %call18 = tail call i32 @fexist(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0)) #9, !dbg !298
  %tobool = icmp eq i32 %call18, 0, !dbg !298
  br i1 %tobool, label %do.end, label %do.body

do.end:                                           ; preds = %land.rhs17, %do.body
  %cmp20 = icmp eq i32 %inc, 128, !dbg !299
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !299

if.then22:                                        ; preds = %do.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), i32 128, i8* %fn.0.ph) #7, !dbg !300
  br label %if.end23, !dbg !300

if.end23:                                         ; preds = %if.then22, %do.end
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 266, i8* %directory.0.ph) #7, !dbg !301
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 267, i8* %fn.0.ph) #7, !dbg !302
  ret i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0), !dbg !303
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @ffopen(i8* %file, i8* nocapture %mode) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !136), !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !137), !dbg !304
  call void @llvm.dbg.value(metadata !305, i64 0, metadata !138), !dbg !306
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !307
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !307
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !139), !dbg !307
  call void @llvm.dbg.value(metadata !308, i64 0, metadata !141), !dbg !307
  %1 = load i8* %mode, align 1, !dbg !309, !tbaa !224
  %call = call i8* @strcpy(i8* %0, i8* %file) #7, !dbg !310
  %call3 = call i32 @fexist(i8* %0) #9, !dbg !311
  %tobool = icmp eq i32 %call3, 0, !dbg !311
  %cmp = icmp eq i8 %1, 114, !dbg !309
  %or.cond = and i1 %tobool, %cmp, !dbg !311
  br i1 %or.cond, label %if.else33, label %if.then, !dbg !311

if.then:                                          ; preds = %entry
  %call6 = call %struct._IO_FILE* @fopen(i8* %0, i8* %mode) #7, !dbg !312
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call6}, i64 0, metadata !138), !dbg !312
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null, !dbg !312
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !312

if.then9:                                         ; preds = %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %0) #7, !dbg !314
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then9, %if.then
  call void @_where(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 297) #7, !dbg !315
  call void @llvm.dbg.value(metadata !308, i64 0, metadata !141), !dbg !316
  %.b66 = load i1* @bUnbuffered, align 1
  br i1 %.b66, label %if.then22, label %if.end32, !dbg !317

if.then22:                                        ; preds = %if.end
  call void @setbuf(%struct._IO_FILE* %call6, i8* null) #7, !dbg !318
  br label %if.end32, !dbg !318

if.end32:                                         ; preds = %if.end, %if.then22
  call void @_where(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 320) #7, !dbg !320
  br label %if.end54, !dbg !321

if.else33:                                        ; preds = %entry
  %call35 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* %file) #7, !dbg !322
  %call37 = call i32 @fexist(i8* %0) #9, !dbg !324
  %tobool38 = icmp eq i32 %call37, 0, !dbg !324
  br i1 %tobool38, label %if.else42, label %if.then39, !dbg !324

if.then39:                                        ; preds = %if.else33
  %call41 = call %struct._IO_FILE* @uncompress(i8* %0, i8* %mode) #9, !dbg !325
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call41}, i64 0, metadata !138), !dbg !325
  br label %if.end54, !dbg !327

if.else42:                                        ; preds = %if.else33
  %call44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* %file) #7, !dbg !328
  %call46 = call i32 @fexist(i8* %0) #9, !dbg !330
  %tobool47 = icmp eq i32 %call46, 0, !dbg !330
  br i1 %tobool47, label %if.else51, label %if.then48, !dbg !330

if.then48:                                        ; preds = %if.else42
  %call50 = call %struct._IO_FILE* @gunzip(i8* %0, i8* %mode) #9, !dbg !331
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !138), !dbg !331
  br label %if.end54, !dbg !333

if.else51:                                        ; preds = %if.else42
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %file) #7, !dbg !334
  br label %if.end54

if.end54:                                         ; preds = %if.then39, %if.else51, %if.then48, %if.end32
  %ff.0 = phi %struct._IO_FILE* [ %call6, %if.end32 ], [ %call41, %if.then39 ], [ %call50, %if.then48 ], [ null, %if.else51 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !335
  ret %struct._IO_FILE* %ff.0, !dbg !335
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare void @_where(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @setbuf(%struct._IO_FILE* nocapture, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @search_subdirs(i8* %parent, i8* %libdir) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !149), !dbg !336
  tail call void @llvm.dbg.value(metadata !{i8* %libdir}, i64 0, metadata !150), !dbg !336
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47) #7, !dbg !337
  %call1 = tail call i32 @fexist(i8* %libdir) #9, !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !152), !dbg !338
  %tobool = icmp eq i32 %call1, 0, !dbg !339
  br i1 %tobool, label %if.end, label %if.then15, !dbg !339

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i32 47) #7, !dbg !340
  %call3 = tail call i32 @fexist(i8* %libdir) #9, !dbg !342
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !152), !dbg !342
  %tobool4 = icmp eq i32 %call3, 0, !dbg !343
  br i1 %tobool4, label %if.end8, label %if.then15, !dbg !343

if.end8:                                          ; preds = %if.end
  %call6 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i8* %parent, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #7, !dbg !344
  %call7 = tail call i32 @fexist(i8* %libdir) #9, !dbg !346
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !152), !dbg !346
  %tobool9 = icmp eq i32 %call7, 0, !dbg !347
  br i1 %tobool9, label %if.end13, label %if.then15, !dbg !347

if.end13:                                         ; preds = %if.end8
  %call11 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %libdir, i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #7, !dbg !348
  %call12 = tail call i32 @fexist(i8* %libdir) #9, !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !152), !dbg !350
  %tobool14 = icmp eq i32 %call12, 0, !dbg !351
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !351

if.then15:                                        ; preds = %entry, %if.end, %if.end8, %if.end13
  %found.236 = phi i32 [ %call12, %if.end13 ], [ %call7, %if.end8 ], [ %call3, %if.end ], [ %call1, %entry ]
  %call16 = tail call i8* @strrchr(i8* %libdir, i32 47) #8, !dbg !352
  tail call void @llvm.dbg.value(metadata !{i8* %call16}, i64 0, metadata !151), !dbg !352
  store i8 0, i8* %call16, align 1, !dbg !354, !tbaa !224
  br label %if.end17, !dbg !355

if.end17:                                         ; preds = %if.end13, %if.then15
  %found.237 = phi i32 [ 0, %if.end13 ], [ %found.236, %if.then15 ]
  ret i32 %found.237, !dbg !356
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: nounwind optsize readnone uwtable
define i32 @get_libdir(i8* nocapture %libdir) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %libdir}, i64 0, metadata !155), !dbg !357
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !167), !dbg !358
  ret i32 0, !dbg !359
}

; Function Attrs: nounwind optsize uwtable
define i8* @low_libfn(i8* %file, i32 %bFatal) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !173), !dbg !360
  tail call void @llvm.dbg.value(metadata !{i32 %bFatal}, i64 0, metadata !174), !dbg !360
  tail call void @llvm.dbg.value(metadata !308, i64 0, metadata !175), !dbg !361
  %call = tail call i32 @fexist(i8* %file) #9, !dbg !362
  %tobool = icmp eq i32 %call, 0, !dbg !362
  %.file = select i1 %tobool, i8* null, i8* %file
  ret i8* %.file, !dbg !363
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @low_libopen(i8* %file, i32 %bFatal) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !188), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %bFatal}, i64 0, metadata !189), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !365) #5, !dbg !367
  tail call void @llvm.dbg.value(metadata !368, i64 0, metadata !369) #5, !dbg !367
  tail call void @llvm.dbg.value(metadata !308, i64 0, metadata !370) #5, !dbg !371
  %call.i = tail call i32 @fexist(i8* %file) #7, !dbg !372
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !372
  %.file.i = select i1 %tobool.i, i8* null, i8* %file
  tail call void @llvm.dbg.value(metadata !{i8* %.file.i}, i64 0, metadata !191), !dbg !366
  %cmp = icmp eq i8* %.file.i, null, !dbg !373
  br i1 %cmp, label %if.end4, label %if.else, !dbg !373

if.else:                                          ; preds = %entry
  %tobool = icmp eq i32 %bFatal, 0, !dbg !374
  br i1 %tobool, label %if.end, label %if.then1, !dbg !374

if.then1:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !376, !tbaa !223
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0), i8* %.file.i) #7, !dbg !376
  br label %if.end, !dbg !376

if.end:                                           ; preds = %if.else, %if.then1
  %call3 = tail call %struct._IO_FILE* @fopen(i8* %.file.i, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !377
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call3}, i64 0, metadata !190), !dbg !377
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  %ff.0 = phi %struct._IO_FILE* [ %call3, %if.end ], [ null, %entry ]
  ret %struct._IO_FILE* %ff.0, !dbg !378
}

; Function Attrs: nounwind optsize uwtable
define i8* @libfn(i8* %file) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !194), !dbg !379
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !380) #5, !dbg !382
  tail call void @llvm.dbg.value(metadata !368, i64 0, metadata !383) #5, !dbg !382
  tail call void @llvm.dbg.value(metadata !308, i64 0, metadata !384) #5, !dbg !385
  %call.i = tail call i32 @fexist(i8* %file) #7, !dbg !386
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !386
  %.file.i = select i1 %tobool.i, i8* null, i8* %file
  ret i8* %.file.i, !dbg !381
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @libopen(i8* %file) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !199), !dbg !387
  %call = tail call %struct._IO_FILE* @low_libopen(i8* %file, i32 1) #9, !dbg !388
  ret %struct._IO_FILE* %call, !dbg !388
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_tmpnam(i8* %buf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !204), !dbg !389
  %call = tail call i64 @strlen(i8* %buf) #8, !dbg !390
  %conv = trunc i64 %call to i32, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !206), !dbg !390
  %cmp = icmp slt i32 %conv, 7, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !391
  br label %if.end, !dbg !391

if.end:                                           ; preds = %if.then, %entry
  %sub = shl i64 %call, 32
  %sext = add i64 %sub, -25769803776
  %0 = ashr exact i64 %sext, 32
  %scevgep = getelementptr i8* %buf, i64 %0
  %1 = add i32 %conv, -5, !dbg !392
  %2 = icmp sgt i32 %1, %conv
  %smax = select i1 %2, i32 %1, i32 %conv
  %3 = add i32 %smax, 5, !dbg !392
  %4 = sub i32 %3, %conv, !dbg !392
  %5 = zext i32 %4 to i64
  %6 = add i64 %5, 1, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 88, i64 %6, i32 1, i1 false), !dbg !394
  %call4 = tail call i32 @mkstemp(i8* %buf) #7, !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !207), !dbg !396
  switch i32 %call4, label %if.end12 [
    i32 22, label %if.then7
    i32 17, label %if.then10
  ], !dbg !397

if.then7:                                         ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str26, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 599) #7, !dbg !398
  br label %if.end12, !dbg !398

if.then10:                                        ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 601) #7, !dbg !399
  br label %if.end12, !dbg !399

if.end12:                                         ; preds = %if.end, %if.then10, %if.then7
  %call13 = tail call i32 @close(i32 %call4) #7, !dbg !400
  ret void, !dbg !401
}

; Function Attrs: optsize
declare i32 @mkstemp(i8*) #2

; Function Attrs: optsize
declare i32 @close(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !208, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !79, metadata !84, metadata !88, metadata !94, metadata !105, metadata !111, metadata !117, metadata !125, metadata !134, metadata !145, metadata !153, metadata !169, metadata !184, metadata !192, metadata !195, metadata !200}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"no_buffers", metadata !"no_buffers", metadata !"", i32 75, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @no_buffers, null, null, metadata !2, i32 76} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 76] [no_buffers]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"push_ps", metadata !"push_ps", metadata !"", i32 80, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @push_ps, null, null, metadata !69, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [push_ps]
!9 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{null, metadata !11}
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!13 = metadata !{i32 786451, metadata !14, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !15, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!14 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!15 = metadata !{metadata !16, metadata !18, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !39, metadata !40, metadata !41, metadata !42, metadata !45, metadata !47, metadata !49, metadata !53, metadata !55, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !64, metadata !65}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!22 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!23 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!24 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!25 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!26 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!27 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!28 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!29 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!30 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!31 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!33 = metadata !{i32 786451, metadata !14, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !38}
!35 = metadata !{i32 786445, metadata !14, metadata !33, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786445, metadata !14, metadata !33, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!38 = metadata !{i32 786445, metadata !14, metadata !33, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!39 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !37} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!40 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!41 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !17} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!42 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !43} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!43 = metadata !{i32 786454, metadata !14, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!44 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!45 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !46} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!46 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!47 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !48} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!48 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!49 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !50} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!50 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !20, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!53 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !54} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !56} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!56 = metadata !{i32 786454, metadata !14, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!57 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !54} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!58 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !54} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!59 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !54} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!60 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !54} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!61 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !62} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!62 = metadata !{i32 786454, metadata !14, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!63 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !17} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!65 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !66} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!66 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !20, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786689, metadata !8, metadata !"fp", metadata !5, i32 16777296, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 80]
!71 = metadata !{i32 786688, metadata !8, metadata !"ps", metadata !5, i32 82, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 82]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pstack]
!73 = metadata !{i32 786454, metadata !1, null, metadata !"t_pstack", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [t_pstack] [line 70, size 0, align 0, offset 0] [from t_pstack]
!74 = metadata !{i32 786451, metadata !1, null, metadata !"t_pstack", i32 67, i64 128, i64 64, i32 0, i32 0, null, metadata !75, i32 0, null, null} ; [ DW_TAG_structure_type ] [t_pstack] [line 67, size 128, align 64, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !77}
!76 = metadata !{i32 786445, metadata !1, metadata !74, metadata !"fp", i32 68, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [fp] [line 68, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786445, metadata !1, metadata !74, metadata !"prev", i32 69, i64 64, i64 64, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [prev] [line 69, size 64, align 64, offset 64] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pstack]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ffclose", metadata !"ffclose", metadata !"", i32 93, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @ffclose, null, null, metadata !80, i32 94} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 94] [ffclose]
!80 = metadata !{metadata !81, metadata !82, metadata !83}
!81 = metadata !{i32 786689, metadata !79, metadata !"fp", metadata !5, i32 16777309, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 93]
!82 = metadata !{i32 786688, metadata !79, metadata !"ps", metadata !5, i32 95, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 95]
!83 = metadata !{i32 786688, metadata !79, metadata !"tmp", metadata !5, i32 95, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 95]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"frewind", metadata !"frewind", metadata !"", i32 127, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @frewind, null, null, metadata !85, i32 128} ; [ DW_TAG_subprogram ] [line 127] [def] [scope 128] [frewind]
!85 = metadata !{metadata !86, metadata !87}
!86 = metadata !{i32 786689, metadata !84, metadata !"fp", metadata !5, i32 16777343, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 127]
!87 = metadata !{i32 786688, metadata !84, metadata !"ps", metadata !5, i32 129, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 129]
!88 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"is_pipe", metadata !"is_pipe", metadata !"", i32 142, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @is_pipe, null, null, metadata !91, i32 143} ; [ DW_TAG_subprogram ] [line 142] [def] [scope 143] [is_pipe]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !17, metadata !11}
!91 = metadata !{metadata !92, metadata !93}
!92 = metadata !{i32 786689, metadata !88, metadata !"fp", metadata !5, i32 16777358, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 142]
!93 = metadata !{i32 786688, metadata !88, metadata !"ps", metadata !5, i32 144, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 144]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"uncompress", metadata !"uncompress", metadata !"", i32 173, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*)* @uncompress, null, null, metadata !97, i32 174} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 174] [uncompress]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{metadata !11, metadata !19, metadata !19}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101}
!98 = metadata !{i32 786689, metadata !94, metadata !"fn", metadata !5, i32 16777389, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 173]
!99 = metadata !{i32 786689, metadata !94, metadata !"mode", metadata !5, i32 33554605, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 173]
!100 = metadata !{i32 786688, metadata !94, metadata !"fp", metadata !5, i32 175, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 175]
!101 = metadata !{i32 786688, metadata !94, metadata !"buf", metadata !5, i32 176, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 176]
!102 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !20, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gunzip", metadata !"gunzip", metadata !"", i32 187, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*)* @gunzip, null, null, metadata !106, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [gunzip]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786689, metadata !105, metadata !"fn", metadata !5, i32 16777403, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 187]
!108 = metadata !{i32 786689, metadata !105, metadata !"mode", metadata !5, i32 33554619, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 187]
!109 = metadata !{i32 786688, metadata !105, metadata !"fp", metadata !5, i32 189, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 189]
!110 = metadata !{i32 786688, metadata !105, metadata !"buf", metadata !5, i32 190, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 190]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fexist", metadata !"fexist", metadata !"", i32 201, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @fexist, null, null, metadata !114, i32 202} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 202] [fexist]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !17, metadata !19}
!114 = metadata !{metadata !115, metadata !116}
!115 = metadata !{i32 786689, metadata !111, metadata !"fname", metadata !5, i32 16777417, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 201]
!116 = metadata !{i32 786688, metadata !111, metadata !"test", metadata !5, i32 203, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test] [line 203]
!117 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"eof", metadata !"eof", metadata !"", i32 216, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @eof, null, null, metadata !118, i32 217} ; [ DW_TAG_subprogram ] [line 216] [def] [scope 217] [eof]
!118 = metadata !{metadata !119, metadata !120, metadata !124}
!119 = metadata !{i32 786689, metadata !117, metadata !"fp", metadata !5, i32 16777432, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 216]
!120 = metadata !{i32 786688, metadata !117, metadata !"data", metadata !5, i32 218, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 218]
!121 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !20, metadata !122, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!124 = metadata !{i32 786688, metadata !117, metadata !"beof", metadata !5, i32 219, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beof] [line 219]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"backup_fn", metadata !"backup_fn", metadata !"", i32 230, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @backup_fn, null, null, metadata !128, i32 231} ; [ DW_TAG_subprogram ] [line 230] [def] [scope 231] [backup_fn]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{metadata !19, metadata !19}
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!129 = metadata !{i32 786689, metadata !125, metadata !"file", metadata !5, i32 16777446, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 230]
!130 = metadata !{i32 786688, metadata !125, metadata !"i", metadata !5, i32 237, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 237]
!131 = metadata !{i32 786688, metadata !125, metadata !"count", metadata !5, i32 237, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 237]
!132 = metadata !{i32 786688, metadata !125, metadata !"directory", metadata !5, i32 238, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [directory] [line 238]
!133 = metadata !{i32 786688, metadata !125, metadata !"fn", metadata !5, i32 238, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fn] [line 238]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ffopen", metadata !"ffopen", metadata !"", i32 272, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*)* @ffopen, null, null, metadata !135, i32 273} ; [ DW_TAG_subprogram ] [line 272] [def] [scope 273] [ffopen]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144}
!136 = metadata !{i32 786689, metadata !134, metadata !"file", metadata !5, i32 16777488, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 272]
!137 = metadata !{i32 786689, metadata !134, metadata !"mode", metadata !5, i32 33554704, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 272]
!138 = metadata !{i32 786688, metadata !134, metadata !"ff", metadata !5, i32 274, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 274]
!139 = metadata !{i32 786688, metadata !134, metadata !"buf", metadata !5, i32 275, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 275]
!140 = metadata !{i32 786688, metadata !134, metadata !"bf", metadata !5, i32 275, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bf] [line 275]
!141 = metadata !{i32 786688, metadata !134, metadata !"bufsize", metadata !5, i32 275, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufsize] [line 275]
!142 = metadata !{i32 786688, metadata !134, metadata !"ptr", metadata !5, i32 275, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 275]
!143 = metadata !{i32 786688, metadata !134, metadata !"bRead", metadata !5, i32 276, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRead] [line 276]
!144 = metadata !{i32 786688, metadata !134, metadata !"bs", metadata !5, i32 277, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bs] [line 277]
!145 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"search_subdirs", metadata !"search_subdirs", metadata !"", i32 341, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @search_subdirs, null, null, metadata !148, i32 342} ; [ DW_TAG_subprogram ] [line 341] [def] [scope 342] [search_subdirs]
!146 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !17, metadata !19, metadata !19}
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152}
!149 = metadata !{i32 786689, metadata !145, metadata !"parent", metadata !5, i32 16777557, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 341]
!150 = metadata !{i32 786689, metadata !145, metadata !"libdir", metadata !5, i32 33554773, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [libdir] [line 341]
!151 = metadata !{i32 786688, metadata !145, metadata !"ptr", metadata !5, i32 343, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 343]
!152 = metadata !{i32 786688, metadata !145, metadata !"found", metadata !5, i32 344, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 344]
!153 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_libdir", metadata !"get_libdir", metadata !"", i32 392, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @get_libdir, null, null, metadata !154, i32 393} ; [ DW_TAG_subprogram ] [line 392] [def] [scope 393] [get_libdir]
!154 = metadata !{metadata !155, metadata !156, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!155 = metadata !{i32 786689, metadata !153, metadata !"libdir", metadata !5, i32 16777608, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [libdir] [line 392]
!156 = metadata !{i32 786688, metadata !153, metadata !"bin_name", metadata !5, i32 394, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bin_name] [line 394]
!157 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 8, i32 0, i32 0, metadata !20, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 8, offset 0] [from char]
!158 = metadata !{metadata !159}
!159 = metadata !{i32 786465, i64 0, i64 512}     ; [ DW_TAG_subrange_type ] [0, 511]
!160 = metadata !{i32 786688, metadata !153, metadata !"buf", metadata !5, i32 395, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 395]
!161 = metadata !{i32 786688, metadata !153, metadata !"full_path", metadata !5, i32 396, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full_path] [line 396]
!162 = metadata !{i32 786688, metadata !153, metadata !"test_file", metadata !5, i32 397, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_file] [line 397]
!163 = metadata !{i32 786688, metadata !153, metadata !"system_path", metadata !5, i32 398, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [system_path] [line 398]
!164 = metadata !{i32 786688, metadata !153, metadata !"dir", metadata !5, i32 399, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 399]
!165 = metadata !{i32 786688, metadata !153, metadata !"ptr", metadata !5, i32 399, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 399]
!166 = metadata !{i32 786688, metadata !153, metadata !"s", metadata !5, i32 399, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 399]
!167 = metadata !{i32 786688, metadata !153, metadata !"found", metadata !5, i32 400, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 400]
!168 = metadata !{i32 786688, metadata !153, metadata !"i", metadata !5, i32 401, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 401]
!169 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"low_libfn", metadata !"low_libfn", metadata !"", i32 494, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @low_libfn, null, null, metadata !172, i32 495} ; [ DW_TAG_subprogram ] [line 494] [def] [scope 495] [low_libfn]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !19, metadata !19, metadata !17}
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !183}
!173 = metadata !{i32 786689, metadata !169, metadata !"file", metadata !5, i32 16777710, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 494]
!174 = metadata !{i32 786689, metadata !169, metadata !"bFatal", metadata !5, i32 33554926, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFatal] [line 494]
!175 = metadata !{i32 786688, metadata !169, metadata !"ret", metadata !5, i32 496, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 496]
!176 = metadata !{i32 786688, metadata !169, metadata !"lib", metadata !5, i32 497, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lib] [line 497]
!177 = metadata !{i32 786688, metadata !169, metadata !"dir", metadata !5, i32 497, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 497]
!178 = metadata !{i32 786688, metadata !169, metadata !"s", metadata !5, i32 502, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 502]
!179 = metadata !{i32 786688, metadata !169, metadata !"tmppath", metadata !5, i32 502, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmppath] [line 502]
!180 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !20, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!181 = metadata !{metadata !182}
!182 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!183 = metadata !{i32 786688, metadata !169, metadata !"found", metadata !5, i32 503, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 503]
!184 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"low_libopen", metadata !"low_libopen", metadata !"", i32 552, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i32)* @low_libopen, null, null, metadata !187, i32 553} ; [ DW_TAG_subprogram ] [line 552] [def] [scope 553] [low_libopen]
!185 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!186 = metadata !{metadata !11, metadata !19, metadata !17}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191}
!188 = metadata !{i32 786689, metadata !184, metadata !"file", metadata !5, i32 16777768, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 552]
!189 = metadata !{i32 786689, metadata !184, metadata !"bFatal", metadata !5, i32 33554984, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFatal] [line 552]
!190 = metadata !{i32 786688, metadata !184, metadata !"ff", metadata !5, i32 554, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 554]
!191 = metadata !{i32 786688, metadata !184, metadata !"fn", metadata !5, i32 555, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fn] [line 555]
!192 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"libfn", metadata !"libfn", metadata !"", i32 570, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @libfn, null, null, metadata !193, i32 571} ; [ DW_TAG_subprogram ] [line 570] [def] [scope 571] [libfn]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786689, metadata !192, metadata !"file", metadata !5, i32 16777786, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 570]
!195 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"libopen", metadata !"libopen", metadata !"", i32 575, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*)* @libopen, null, null, metadata !198, i32 576} ; [ DW_TAG_subprogram ] [line 575] [def] [scope 576] [libopen]
!196 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!197 = metadata !{metadata !11, metadata !19}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786689, metadata !195, metadata !"file", metadata !5, i32 16777791, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 575]
!200 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_tmpnam", metadata !"gmx_tmpnam", metadata !"", i32 580, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @gmx_tmpnam, null, null, metadata !203, i32 581} ; [ DW_TAG_subprogram ] [line 580] [def] [scope 581] [gmx_tmpnam]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{null, metadata !19}
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207}
!204 = metadata !{i32 786689, metadata !200, metadata !"buf", metadata !5, i32 16777796, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 580]
!205 = metadata !{i32 786688, metadata !200, metadata !"i", metadata !5, i32 582, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 582]
!206 = metadata !{i32 786688, metadata !200, metadata !"len", metadata !5, i32 582, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 582]
!207 = metadata !{i32 786688, metadata !200, metadata !"fd", metadata !5, i32 582, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 582]
!208 = metadata !{metadata !209, metadata !210, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218}
!209 = metadata !{i32 786484, i32 0, metadata !125, metadata !"buf", metadata !"buf", metadata !"", metadata !5, i32 239, metadata !102, i32 1, i32 1, [256 x i8]* @backup_fn.buf, null} ; [ DW_TAG_variable ] [buf] [line 239] [local] [def]
!210 = metadata !{i32 786484, i32 0, metadata !169, metadata !"buf", metadata !"buf", metadata !"", metadata !5, i32 498, metadata !211, i32 1, i32 1, null, null}
!211 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !20, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!214 = metadata !{i32 786484, i32 0, metadata !169, metadata !"libpath", metadata !"libpath", metadata !"", metadata !5, i32 499, metadata !180, i32 1, i32 1, null, null}
!215 = metadata !{i32 786484, i32 0, metadata !169, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 500, metadata !17, i32 1, i32 1, null, null}
!216 = metadata !{i32 786484, i32 0, metadata !169, metadata !"env_is_set", metadata !"env_is_set", metadata !"", metadata !5, i32 501, metadata !17, i32 1, i32 1, null, null}
!217 = metadata !{i32 786484, i32 0, null, metadata !"pstack", metadata !"pstack", metadata !"", metadata !5, i32 72, metadata !72, i32 1, i32 1, null, null}
!218 = metadata !{i32 786484, i32 0, null, metadata !"bUnbuffered", metadata !"bUnbuffered", metadata !"", metadata !5, i32 73, metadata !17, i32 1, i32 1, null, null}
!219 = metadata !{i32 78, i32 0, metadata !4, null}
!220 = metadata !{i32 80, i32 0, metadata !8, null}
!221 = metadata !{i32 84, i32 0, metadata !8, null}
!222 = metadata !{i32 85, i32 0, metadata !8, null}
!223 = metadata !{metadata !"any pointer", metadata !224}
!224 = metadata !{metadata !"omnipotent char", metadata !225}
!225 = metadata !{metadata !"Simple C/C++ TBAA"}
!226 = metadata !{i32 86, i32 0, metadata !8, null}
!227 = metadata !{i32 87, i32 0, metadata !8, null}
!228 = metadata !{i32 93, i32 0, metadata !79, null}
!229 = metadata !{%struct.t_pstack* null}
!230 = metadata !{i32 97, i32 0, metadata !79, null}
!231 = metadata !{i32 99, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !79, i32 98, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!233 = metadata !{i32 118, i32 0, metadata !79, null}
!234 = metadata !{i32 127, i32 0, metadata !84, null}
!235 = metadata !{i32 131, i32 0, metadata !84, null}
!236 = metadata !{i32 139, i32 0, metadata !84, null}
!237 = metadata !{i32 142, i32 0, metadata !88, null}
!238 = metadata !{i32 146, i32 0, metadata !88, null}
!239 = metadata !{i32 153, i32 0, metadata !88, null}
!240 = metadata !{i32 173, i32 0, metadata !94, null}
!241 = metadata !{i32 176, i32 0, metadata !94, null}
!242 = metadata !{i32 178, i32 0, metadata !94, null}
!243 = metadata !{i32 179, i32 0, metadata !94, null}
!244 = metadata !{i32 180, i32 0, metadata !94, null}
!245 = metadata !{i32 181, i32 0, metadata !94, null}
!246 = metadata !{i32 786689, metadata !8, metadata !"fp", metadata !5, i32 16777296, metadata !11, i32 0, metadata !247} ; [ DW_TAG_arg_variable ] [fp] [line 80]
!247 = metadata !{i32 182, i32 0, metadata !94, null}
!248 = metadata !{i32 80, i32 0, metadata !8, metadata !247}
!249 = metadata !{i32 84, i32 0, metadata !8, metadata !247}
!250 = metadata !{i32 85, i32 0, metadata !8, metadata !247}
!251 = metadata !{i32 86, i32 0, metadata !8, metadata !247}
!252 = metadata !{i32 185, i32 0, metadata !94, null}
!253 = metadata !{i32 187, i32 0, metadata !105, null}
!254 = metadata !{i32 190, i32 0, metadata !105, null}
!255 = metadata !{i32 192, i32 0, metadata !105, null}
!256 = metadata !{i32 193, i32 0, metadata !105, null}
!257 = metadata !{i32 194, i32 0, metadata !105, null}
!258 = metadata !{i32 195, i32 0, metadata !105, null}
!259 = metadata !{i32 786689, metadata !8, metadata !"fp", metadata !5, i32 16777296, metadata !11, i32 0, metadata !260} ; [ DW_TAG_arg_variable ] [fp] [line 80]
!260 = metadata !{i32 196, i32 0, metadata !105, null}
!261 = metadata !{i32 80, i32 0, metadata !8, metadata !260}
!262 = metadata !{i32 84, i32 0, metadata !8, metadata !260}
!263 = metadata !{i32 85, i32 0, metadata !8, metadata !260}
!264 = metadata !{i32 86, i32 0, metadata !8, metadata !260}
!265 = metadata !{i32 199, i32 0, metadata !105, null}
!266 = metadata !{i32 201, i32 0, metadata !111, null}
!267 = metadata !{i32 205, i32 0, metadata !111, null}
!268 = metadata !{i32 207, i32 0, metadata !111, null}
!269 = metadata !{i32 208, i32 0, metadata !111, null}
!270 = metadata !{i32 211, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !111, i32 210, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!272 = metadata !{i32 212, i32 0, metadata !271, null}
!273 = metadata !{i32 212, i32 0, metadata !111, null}
!274 = metadata !{i32 216, i32 0, metadata !117, null}
!275 = metadata !{i32 218, i32 0, metadata !117, null}
!276 = metadata !{i32 224, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !117, i32 223, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!278 = metadata !{i32 225, i32 0, metadata !277, null}
!279 = metadata !{i32 226, i32 0, metadata !277, null}
!280 = metadata !{i32 228, i32 0, metadata !117, null}
!281 = metadata !{i32 230, i32 0, metadata !125, null}
!282 = metadata !{i32 1}
!283 = metadata !{i32 237, i32 0, metadata !125, null}
!284 = metadata !{i32 241, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !125, i32 241, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!286 = metadata !{i32 248, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !125, i32 247, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!288 = metadata !{i32 249, i32 0, metadata !287, null}
!289 = metadata !{i32 250, i32 0, metadata !287, null}
!290 = metadata !{i32 251, i32 0, metadata !287, null}
!291 = metadata !{i32 253, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !125, i32 252, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!293 = metadata !{i32 254, i32 0, metadata !292, null}
!294 = metadata !{i32 257, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !125, i32 256, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!296 = metadata !{i32 258, i32 0, metadata !295, null}
!297 = metadata !{i32 259, i32 0, metadata !295, null}
!298 = metadata !{i32 259, i32 0, metadata !125, null}
!299 = metadata !{i32 262, i32 0, metadata !125, null}
!300 = metadata !{i32 263, i32 0, metadata !125, null}
!301 = metadata !{i32 266, i32 0, metadata !125, null}
!302 = metadata !{i32 267, i32 0, metadata !125, null}
!303 = metadata !{i32 269, i32 0, metadata !125, null}
!304 = metadata !{i32 272, i32 0, metadata !134, null}
!305 = metadata !{%struct._IO_FILE* null}
!306 = metadata !{i32 274, i32 0, metadata !134, null}
!307 = metadata !{i32 275, i32 0, metadata !134, null}
!308 = metadata !{i8* null}
!309 = metadata !{i32 292, i32 0, metadata !134, null}
!310 = metadata !{i32 293, i32 0, metadata !134, null}
!311 = metadata !{i32 294, i32 0, metadata !134, null}
!312 = metadata !{i32 295, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !134, i32 294, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!314 = metadata !{i32 296, i32 0, metadata !313, null}
!315 = metadata !{i32 297, i32 0, metadata !313, null}
!316 = metadata !{i32 302, i32 0, metadata !313, null}
!317 = metadata !{i32 306, i32 0, metadata !313, null}
!318 = metadata !{i32 313, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !313, i32 306, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!320 = metadata !{i32 320, i32 0, metadata !313, null}
!321 = metadata !{i32 321, i32 0, metadata !313, null}
!322 = metadata !{i32 323, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !134, i32 322, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!324 = metadata !{i32 324, i32 0, metadata !323, null}
!325 = metadata !{i32 325, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !323, i32 324, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!327 = metadata !{i32 326, i32 0, metadata !326, null}
!328 = metadata !{i32 328, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !323, i32 327, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!330 = metadata !{i32 329, i32 0, metadata !329, null}
!331 = metadata !{i32 330, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !329, i32 329, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!333 = metadata !{i32 331, i32 0, metadata !332, null}
!334 = metadata !{i32 333, i32 0, metadata !329, null}
!335 = metadata !{i32 337, i32 0, metadata !134, null}
!336 = metadata !{i32 341, i32 0, metadata !145, null}
!337 = metadata !{i32 347, i32 0, metadata !145, null}
!338 = metadata !{i32 349, i32 0, metadata !145, null}
!339 = metadata !{i32 350, i32 0, metadata !145, null}
!340 = metadata !{i32 351, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !145, i32 350, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!342 = metadata !{i32 354, i32 0, metadata !341, null}
!343 = metadata !{i32 356, i32 0, metadata !145, null}
!344 = metadata !{i32 357, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !145, i32 356, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!346 = metadata !{i32 360, i32 0, metadata !345, null}
!347 = metadata !{i32 362, i32 0, metadata !145, null}
!348 = metadata !{i32 363, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !145, i32 362, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!350 = metadata !{i32 366, i32 0, metadata !349, null}
!351 = metadata !{i32 370, i32 0, metadata !145, null}
!352 = metadata !{i32 371, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !145, i32 370, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!354 = metadata !{i32 372, i32 0, metadata !353, null}
!355 = metadata !{i32 373, i32 0, metadata !353, null}
!356 = metadata !{i32 374, i32 0, metadata !145, null}
!357 = metadata !{i32 392, i32 0, metadata !153, null}
!358 = metadata !{i32 400, i32 0, metadata !153, null}
!359 = metadata !{i32 491, i32 0, metadata !153, null}
!360 = metadata !{i32 494, i32 0, metadata !169, null}
!361 = metadata !{i32 496, i32 0, metadata !169, null}
!362 = metadata !{i32 506, i32 0, metadata !169, null}
!363 = metadata !{i32 547, i32 0, metadata !169, null}
!364 = metadata !{i32 552, i32 0, metadata !184, null}
!365 = metadata !{i32 786689, metadata !169, metadata !"file", metadata !5, i32 16777710, metadata !19, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [file] [line 494]
!366 = metadata !{i32 557, i32 0, metadata !184, null}
!367 = metadata !{i32 494, i32 0, metadata !169, metadata !366}
!368 = metadata !{i32 undef}
!369 = metadata !{i32 786689, metadata !169, metadata !"bFatal", metadata !5, i32 33554926, metadata !17, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [bFatal] [line 494]
!370 = metadata !{i32 786688, metadata !169, metadata !"ret", metadata !5, i32 496, metadata !19, i32 0, metadata !366} ; [ DW_TAG_auto_variable ] [ret] [line 496]
!371 = metadata !{i32 496, i32 0, metadata !169, metadata !366}
!372 = metadata !{i32 506, i32 0, metadata !169, metadata !366}
!373 = metadata !{i32 559, i32 0, metadata !184, null}
!374 = metadata !{i32 562, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !184, i32 561, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!376 = metadata !{i32 563, i32 0, metadata !375, null}
!377 = metadata !{i32 564, i32 0, metadata !375, null}
!378 = metadata !{i32 567, i32 0, metadata !184, null}
!379 = metadata !{i32 570, i32 0, metadata !192, null}
!380 = metadata !{i32 786689, metadata !169, metadata !"file", metadata !5, i32 16777710, metadata !19, i32 0, metadata !381} ; [ DW_TAG_arg_variable ] [file] [line 494]
!381 = metadata !{i32 572, i32 0, metadata !192, null}
!382 = metadata !{i32 494, i32 0, metadata !169, metadata !381}
!383 = metadata !{i32 786689, metadata !169, metadata !"bFatal", metadata !5, i32 33554926, metadata !17, i32 0, metadata !381} ; [ DW_TAG_arg_variable ] [bFatal] [line 494]
!384 = metadata !{i32 786688, metadata !169, metadata !"ret", metadata !5, i32 496, metadata !19, i32 0, metadata !381} ; [ DW_TAG_auto_variable ] [ret] [line 496]
!385 = metadata !{i32 496, i32 0, metadata !169, metadata !381}
!386 = metadata !{i32 506, i32 0, metadata !169, metadata !381}
!387 = metadata !{i32 575, i32 0, metadata !195, null}
!388 = metadata !{i32 577, i32 0, metadata !195, null}
!389 = metadata !{i32 580, i32 0, metadata !200, null}
!390 = metadata !{i32 584, i32 0, metadata !200, null}
!391 = metadata !{i32 585, i32 0, metadata !200, null}
!392 = metadata !{i32 586, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !200, i32 586, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!394 = metadata !{i32 587, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !393, i32 586, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/futil.c]
!396 = metadata !{i32 595, i32 0, metadata !200, null}
!397 = metadata !{i32 598, i32 0, metadata !200, null}
!398 = metadata !{i32 599, i32 0, metadata !200, null}
!399 = metadata !{i32 601, i32 0, metadata !200, null}
!400 = metadata !{i32 602, i32 0, metadata !200, null}
!401 = metadata !{i32 604, i32 0, metadata !200, null}
