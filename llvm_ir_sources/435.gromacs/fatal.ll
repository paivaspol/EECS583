; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@bDebug = internal unnamed_addr global i1 false
@_where.bFirst = internal unnamed_addr global i1 false
@stdlog = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [39 x i8] c"\0AHALT in file %s line %d because:\0A\09%s\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@debug = global %struct._IO_FILE* null, align 8
@.str3 = private unnamed_addr constant [17 x i8] c"dump core (y/n):\00", align 1
@stdin = external global %struct._IO_FILE*
@fatal_tmp_file = internal unnamed_addr global i8* null, align 8
@.str4 = private unnamed_addr constant [48 x i8] c"BUGWARNING: fatal_tmp_file already set at %s:%d\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"fatal_tmp_file\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"BUGWARNING: file %s not set as fatal_tmp_file at %s:%d\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"Cleaning up temporary file %s\0A\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Fatal error: \00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"0x%%%dx\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"%%%dd\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"%%%df\00", align 1
@maxwarn = internal unnamed_addr global i32 10, align 4
@nwarn = internal unnamed_addr global i32 0, align 4
@filenm = internal global [256 x i8] zeroinitializer, align 16
@lineno = internal unnamed_addr global i32 1, align 4
@warn_buf = common global [1024 x i8] zeroinitializer, align 16
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"WARNING %d [file %s, line %s]:\0A%s\0A\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"temp2\00", align 1
@.str18 = private unnamed_addr constant [33 x i8] c"Too many warnings, %s terminated\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"There %s %d warning%s\0A\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"was\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str24 = private unnamed_addr constant [53 x i8] c"Too few parameters on line (source file %s, line %d)\00", align 1
@.str25 = private unnamed_addr constant [51 x i8] c"Invalid case in switch statement, file %s, line %d\00", align 1
@.str26 = private unnamed_addr constant [71 x i8] c"Unexpected end of file in file %s at line %d\0A(Source file %s, line %d)\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @bDebugMode() #0 {
entry:
  %.b = load i1* @bDebug, align 1
  %0 = zext i1 %.b to i32
  ret i32 %0, !dbg !241
}

; Function Attrs: nounwind optsize uwtable
define void @_where(i8* nocapture %file, i32 %line) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !31), !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !32), !dbg !242
  %.b = load i1* @_where.bFirst, align 1
  br i1 %.b, label %if.end12, label %if.end, !dbg !243

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !244, i64 0, metadata !89), !dbg !245
  store i1 true, i1* @_where.bFirst, align 1
  br label %if.end12, !dbg !247

if.end12:                                         ; preds = %if.end, %entry
  ret void, !dbg !248
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize uwtable
define void @_halt(i8* %file, i32 %line, i8* %reason) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !94), !dbg !249
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !95), !dbg !249
  tail call void @llvm.dbg.value(metadata !{i8* %reason}, i64 0, metadata !96), !dbg !249
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !250, !tbaa !251
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i8* %file, i32 %line, i8* %reason) #11, !dbg !250
  tail call void @exit(i32 1) #12, !dbg !254
  unreachable, !dbg !254
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: noreturn nounwind optsize uwtable
define void @quit_gmx(i32 %fatal_errno, i8* %msg) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fatal_errno}, i64 0, metadata !101), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i8* %msg}, i64 0, metadata !102), !dbg !255
  switch i32 %fatal_errno, label %if.then4 [
    i32 0, label %if.then
    i32 -1, label %if.end6
  ], !dbg !256

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdlog, align 8, !dbg !257, !tbaa !251
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !257
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !257

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #11, !dbg !259
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %if.then2
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !260, !tbaa !251
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #11, !dbg !260
  br label %if.end7, !dbg !261

if.then4:                                         ; preds = %entry
  %call5 = tail call i32* @__errno_location() #13, !dbg !262
  store i32 %fatal_errno, i32* %call5, align 4, !dbg !262, !tbaa !264
  br label %if.end6, !dbg !262

if.end6:                                          ; preds = %entry, %if.then4
  tail call void @perror(i8* %msg) #11, !dbg !265
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %2 = load %struct._IO_FILE** @debug, align 8, !dbg !266, !tbaa !251
  %tobool8 = icmp eq %struct._IO_FILE* %2, null, !dbg !266
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !266

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @fflush(%struct._IO_FILE* %2) #11, !dbg !267
  br label %if.end11, !dbg !267

if.end11:                                         ; preds = %if.end7, %if.then9
  %.b = load i1* @bDebug, align 1
  br i1 %.b, label %if.then13, label %if.end21, !dbg !268

if.then13:                                        ; preds = %if.end11
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !269, !tbaa !251
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %3), !dbg !269
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !270, !tbaa !251
  %call15 = tail call i32 @fflush(%struct._IO_FILE* %5) #11, !dbg !270
  %6 = load %struct._IO_FILE** @stdin, align 8, !dbg !271, !tbaa !251
  %call16 = tail call i32 @_IO_getc(%struct._IO_FILE* %6) #11, !dbg !271
  %call17 = tail call i32 @toupper(i32 %call16) #11, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !103), !dbg !271
  %cmp18 = icmp eq i32 %call17, 78, !dbg !273
  br i1 %cmp18, label %if.end21, label %if.then19, !dbg !273

if.then19:                                        ; preds = %if.then13
  tail call void @abort() #12, !dbg !274
  unreachable, !dbg !274

if.end21:                                         ; preds = %if.then13, %if.end11
  tail call void @exit(i32 -1) #12, !dbg !275
  unreachable, !dbg !275
}

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #3

; Function Attrs: nounwind optsize
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #3

; Function Attrs: noreturn nounwind optsize
declare void @abort() #5

; Function Attrs: nounwind optsize uwtable
define void @_set_fatal_tmp_file(i8* nocapture %fn, i8* %file, i32 %line) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !110), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !111), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !112), !dbg !276
  %0 = load i8** @fatal_tmp_file, align 8, !dbg !277, !tbaa !251
  %cmp = icmp eq i8* %0, null, !dbg !277
  br i1 %cmp, label %if.then, label %if.else, !dbg !277

if.then:                                          ; preds = %entry
  %call = tail call noalias i8* @strdup(i8* %fn) #11, !dbg !278
  store i8* %call, i8** @fatal_tmp_file, align 8, !dbg !278, !tbaa !251
  br label %if.end, !dbg !278

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !279, !tbaa !251
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i8* %file, i32 %line) #11, !dbg !279
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !280
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @_unset_fatal_tmp_file(i8* %fn, i8* %file, i32 %line) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !115), !dbg !281
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !116), !dbg !281
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !117), !dbg !281
  %0 = load i8** @fatal_tmp_file, align 8, !dbg !282, !tbaa !251
  %call = tail call i32 @strcmp(i8* %fn, i8* %0) #14, !dbg !282
  %cmp = icmp eq i32 %call, 0, !dbg !282
  br i1 %cmp, label %if.then, label %if.else, !dbg !282

if.then:                                          ; preds = %entry
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 193, i8* %0) #11, !dbg !283
  store i8* null, i8** @fatal_tmp_file, align 8, !dbg !285, !tbaa !251
  br label %if.end, !dbg !286

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !287, !tbaa !251
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %fn, i8* %file, i32 %line) #11, !dbg !287
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !288
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #8

; Function Attrs: noreturn nounwind optsize uwtable
define void @fatal_error(i32 %fatal_errno, i8* %fmt, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %msg = alloca [4096 x i8], align 16
  %ibuf = alloca [64 x i8], align 16
  %ifmt = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fatal_errno}, i64 0, metadata !120), !dbg !289
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !121), !dbg !289
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !122), !dbg !290
  %0 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 0, !dbg !291
  call void @llvm.lifetime.start(i64 4096, i8* %0) #9, !dbg !291
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %msg}, metadata !138), !dbg !291
  %1 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 0, !dbg !292
  call void @llvm.lifetime.start(i64 64, i8* %1) #9, !dbg !292
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %ibuf}, metadata !142), !dbg !292
  %2 = getelementptr inbounds [64 x i8]* %ifmt, i64 0, i64 0, !dbg !292
  call void @llvm.lifetime.start(i64 64, i8* %2) #9, !dbg !292
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %ifmt}, metadata !146), !dbg !292
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !150), !dbg !293
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !294
  call void @llvm.va_start(i8* %arraydecay1), !dbg !294
  %3 = load i8** @fatal_tmp_file, align 8, !dbg !295, !tbaa !251
  %tobool = icmp eq i8* %3, null, !dbg !295
  br i1 %tobool, label %if.end, label %if.then, !dbg !295

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !296, !tbaa !251
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8]* @.str8, i64 0, i64 0), i8* %3) #11, !dbg !296
  %5 = load i8** @fatal_tmp_file, align 8, !dbg !298, !tbaa !251
  %call2 = call i32 @remove(i8* %5) #11, !dbg !298
  %6 = load i8** @fatal_tmp_file, align 8, !dbg !299, !tbaa !251
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 221, i8* %6) #11, !dbg !299
  store i8* null, i8** @fatal_tmp_file, align 8, !dbg !300, !tbaa !251
  br label %if.end, !dbg !301

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !150), !dbg !302
  store i32 0, i32* %len, align 4, !dbg !302, !tbaa !264
  call fastcc void @bputs(i8* %0, i32* %len, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 0) #15, !dbg !303
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !135), !dbg !304
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !306
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !306
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !306
  %fp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1, !dbg !310
  br label %for.cond, !dbg !304

for.cond:                                         ; preds = %for.inc113, %if.end
  %storemerge = phi i8* [ %fmt, %if.end ], [ %incdec.ptr114, %for.inc113 ]
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !135), !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !135), !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !135), !dbg !314
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !135), !dbg !304
  %8 = load i8* %storemerge, align 1, !dbg !304, !tbaa !252
  switch i8 %8, label %if.then6 [
    i8 0, label %for.end115
    i8 37, label %if.else
  ], !dbg !304

if.then6:                                         ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !315), !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !318), !dbg !317
  tail call void @llvm.dbg.value(metadata !{i8 %8}, i64 0, metadata !319), !dbg !317
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !320
  %9 = load i32* %len, align 4, !dbg !320, !tbaa !264
  %inc.i = add nsw i32 %9, 1, !dbg !320
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !150), !dbg !320
  store i32 %inc.i, i32* %len, align 4, !dbg !320, !tbaa !264
  %idxprom.i = sext i32 %9 to i64, !dbg !320
  %arrayidx.i = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %idxprom.i, !dbg !320
  store i8 %8, i8* %arrayidx.i, align 1, !dbg !320, !tbaa !252
  br label %for.inc113, !dbg !316

if.else:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %storemerge, i64 1, !dbg !321
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !135), !dbg !321
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !135), !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !135), !dbg !314
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !135), !dbg !304
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !322) #9, !dbg !323
  %10 = load i8* %incdec.ptr, align 1, !dbg !324, !tbaa !252
  %idxprom4.i = sext i8 %10 to i64, !dbg !324
  %call.i = call i16** @__ctype_b_loc() #13, !dbg !324
  %11 = load i16** %call.i, align 8, !dbg !324, !tbaa !251
  %arrayidx5.i = getelementptr inbounds i16* %11, i64 %idxprom4.i, !dbg !324
  %12 = load i16* %arrayidx5.i, align 2, !dbg !324, !tbaa !325
  %and6.i = and i16 %12, 2048, !dbg !324
  %tobool7.i = icmp eq i16 %and6.i, 0, !dbg !324
  br i1 %tobool7.i, label %getfld.exit, label %while.body.i, !dbg !324

while.body.i:                                     ; preds = %if.else, %while.body.i
  %13 = phi i8 [ %15, %while.body.i ], [ %10, %if.else ], !dbg !324
  %14 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %incdec.ptr, %if.else ]
  %fld.08.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.else ]
  %mul.i = mul nsw i32 %fld.08.i, 10, !dbg !324
  %incdec.ptr.i = getelementptr inbounds i8* %14, i64 1, !dbg !324
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !135), !dbg !324
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !135), !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !135), !dbg !314
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !135), !dbg !304
  %conv2.i = sext i8 %13 to i32, !dbg !324
  %sub.i = add i32 %mul.i, -48, !dbg !324
  %add.i = add i32 %sub.i, %conv2.i, !dbg !324
  call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !322) #9, !dbg !324
  %15 = load i8* %incdec.ptr.i, align 1, !dbg !324, !tbaa !252
  %idxprom.i132 = sext i8 %15 to i64, !dbg !324
  %arrayidx.i133 = getelementptr inbounds i16* %11, i64 %idxprom.i132, !dbg !324
  %16 = load i16* %arrayidx.i133, align 2, !dbg !324, !tbaa !325
  %and.i = and i16 %16, 2048, !dbg !324
  %tobool.i = icmp eq i16 %and.i, 0, !dbg !324
  br i1 %tobool.i, label %getfld.exit, label %while.body.i, !dbg !324

getfld.exit:                                      ; preds = %while.body.i, %if.else
  %17 = phi i8 [ %10, %if.else ], [ %15, %while.body.i ]
  %incdec.ptr.i152 = phi i8* [ %incdec.ptr, %if.else ], [ %incdec.ptr.i, %while.body.i ]
  %fld.0.lcssa.i = phi i32 [ 0, %if.else ], [ %add.i, %while.body.i ]
  call void @llvm.dbg.value(metadata !{i32 %fld.0.lcssa.i}, i64 0, metadata !149), !dbg !312
  %conv9 = sext i8 %17 to i32, !dbg !314
  switch i32 %conv9, label %for.inc113 [
    i32 120, label %sw.bb
    i32 100, label %sw.bb24
    i32 102, label %sw.bb55
    i32 99, label %sw.bb83
    i32 115, label %sw.bb98
  ], !dbg !314

sw.bb:                                            ; preds = %getfld.exit
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !306
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !306
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !306

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load i8** %7, align 16, !dbg !306
  %18 = sext i32 %gp_offset to i64, !dbg !306
  %19 = getelementptr i8* %reg_save_area, i64 %18, !dbg !306
  %20 = add i32 %gp_offset, 8, !dbg !306
  store i32 %20, i32* %gp_offset_p, align 16, !dbg !306
  br label %vaarg.end, !dbg !306

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !306
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !306
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !306
  br label %vaarg.end, !dbg !306

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %19, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !306
  %21 = load i32* %vaarg.addr, align 4, !dbg !306
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !148), !dbg !306
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %fld.0.lcssa.i) #11, !dbg !326
  %call15 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* %2, i32 %21) #11, !dbg !327
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !147), !dbg !328
  %call18166 = call i64 @strlen(i8* %1) #14, !dbg !328
  %conv19167 = trunc i64 %call18166 to i32, !dbg !328
  %cmp20168 = icmp sgt i32 %conv19167, 0, !dbg !328
  br i1 %cmp20168, label %for.body22.lr.ph, label %for.inc113, !dbg !328

for.body22.lr.ph:                                 ; preds = %vaarg.end
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !330
  %len.promoted170 = load i32* %len, align 4, !dbg !330, !tbaa !264
  %22 = sext i32 %len.promoted170 to i64
  br label %for.body22, !dbg !328

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv180 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next181, %for.body22 ], !dbg !328
  %indvars.iv178 = phi i64 [ %22, %for.body22.lr.ph ], [ %indvars.iv.next179, %for.body22 ]
  %inc.i134171 = phi i32 [ %len.promoted170, %for.body22.lr.ph ], [ %inc.i134, %for.body22 ], !dbg !331
  %arrayidx = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv180, !dbg !331
  %23 = load i8* %arrayidx, align 1, !dbg !331, !tbaa !252
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !332), !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !334), !dbg !333
  tail call void @llvm.dbg.value(metadata !{i8 %23}, i64 0, metadata !335), !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !330
  %indvars.iv.next179 = add i64 %indvars.iv178, 1, !dbg !328
  %inc.i134 = add nsw i32 %inc.i134171, 1, !dbg !330
  call void @llvm.dbg.value(metadata !{i32 %inc.i134}, i64 0, metadata !150), !dbg !330
  %arrayidx.i136 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv178, !dbg !330
  store i8 %23, i8* %arrayidx.i136, align 1, !dbg !330, !tbaa !252
  %indvars.iv.next181 = add i64 %indvars.iv180, 1, !dbg !328
  %call18 = call i64 @strlen(i8* %1) #14, !dbg !328
  %conv19 = trunc i64 %call18 to i32, !dbg !328
  %24 = trunc i64 %indvars.iv.next181 to i32, !dbg !328
  %cmp20 = icmp slt i32 %24, %conv19, !dbg !328
  br i1 %cmp20, label %for.body22, label %for.cond16.for.inc113.loopexit165_crit_edge, !dbg !328

sw.bb24:                                          ; preds = %getfld.exit
  %gp_offset27 = load i32* %gp_offset_p, align 16, !dbg !336
  %fits_in_gp28 = icmp ult i32 %gp_offset27, 41, !dbg !336
  br i1 %fits_in_gp28, label %vaarg.in_reg29, label %vaarg.in_mem31, !dbg !336

vaarg.in_reg29:                                   ; preds = %sw.bb24
  %reg_save_area30 = load i8** %7, align 16, !dbg !336
  %25 = sext i32 %gp_offset27 to i64, !dbg !336
  %26 = getelementptr i8* %reg_save_area30, i64 %25, !dbg !336
  %27 = add i32 %gp_offset27, 8, !dbg !336
  store i32 %27, i32* %gp_offset_p, align 16, !dbg !336
  br label %vaarg.end35, !dbg !336

vaarg.in_mem31:                                   ; preds = %sw.bb24
  %overflow_arg_area33 = load i8** %overflow_arg_area_p, align 8, !dbg !336
  %overflow_arg_area.next34 = getelementptr i8* %overflow_arg_area33, i64 8, !dbg !336
  store i8* %overflow_arg_area.next34, i8** %overflow_arg_area_p, align 8, !dbg !336
  br label %vaarg.end35, !dbg !336

vaarg.end35:                                      ; preds = %vaarg.in_mem31, %vaarg.in_reg29
  %vaarg.addr36.in = phi i8* [ %26, %vaarg.in_reg29 ], [ %overflow_arg_area33, %vaarg.in_mem31 ]
  %vaarg.addr36 = bitcast i8* %vaarg.addr36.in to i32*, !dbg !336
  %28 = load i32* %vaarg.addr36, align 4, !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !148), !dbg !336
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i32 %fld.0.lcssa.i) #11, !dbg !337
  %call41 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* %2, i32 %28) #11, !dbg !338
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !147), !dbg !339
  %call44159 = call i64 @strlen(i8* %1) #14, !dbg !339
  %conv45160 = trunc i64 %call44159 to i32, !dbg !339
  %cmp46161 = icmp sgt i32 %conv45160, 0, !dbg !339
  br i1 %cmp46161, label %for.body48.lr.ph, label %for.inc113, !dbg !339

for.body48.lr.ph:                                 ; preds = %vaarg.end35
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !341
  %len.promoted163 = load i32* %len, align 4, !dbg !341, !tbaa !264
  %29 = sext i32 %len.promoted163 to i64
  br label %for.body48, !dbg !339

for.body48:                                       ; preds = %for.body48.lr.ph, %for.body48
  %indvars.iv176 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next177, %for.body48 ], !dbg !339
  %indvars.iv174 = phi i64 [ %29, %for.body48.lr.ph ], [ %indvars.iv.next175, %for.body48 ]
  %inc.i140164 = phi i32 [ %len.promoted163, %for.body48.lr.ph ], [ %inc.i140, %for.body48 ], !dbg !342
  %arrayidx51 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv176, !dbg !342
  %30 = load i8* %arrayidx51, align 1, !dbg !342, !tbaa !252
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !343), !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !345), !dbg !344
  tail call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !346), !dbg !344
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !341
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !339
  %inc.i140 = add nsw i32 %inc.i140164, 1, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %inc.i140}, i64 0, metadata !150), !dbg !341
  %arrayidx.i142 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv174, !dbg !341
  store i8 %30, i8* %arrayidx.i142, align 1, !dbg !341, !tbaa !252
  %indvars.iv.next177 = add i64 %indvars.iv176, 1, !dbg !339
  %call44 = call i64 @strlen(i8* %1) #14, !dbg !339
  %conv45 = trunc i64 %call44 to i32, !dbg !339
  %31 = trunc i64 %indvars.iv.next177 to i32, !dbg !339
  %cmp46 = icmp slt i32 %31, %conv45, !dbg !339
  br i1 %cmp46, label %for.body48, label %for.cond42.for.inc113.loopexit158_crit_edge, !dbg !339

sw.bb55:                                          ; preds = %getfld.exit
  %fp_offset = load i32* %fp_offset_p, align 4, !dbg !310
  %fits_in_fp = icmp ult i32 %fp_offset, 161, !dbg !310
  br i1 %fits_in_fp, label %vaarg.in_reg57, label %vaarg.in_mem59, !dbg !310

vaarg.in_reg57:                                   ; preds = %sw.bb55
  %reg_save_area58 = load i8** %7, align 16, !dbg !310
  %32 = sext i32 %fp_offset to i64, !dbg !310
  %33 = getelementptr i8* %reg_save_area58, i64 %32, !dbg !310
  %34 = add i32 %fp_offset, 16, !dbg !310
  store i32 %34, i32* %fp_offset_p, align 4, !dbg !310
  br label %vaarg.end63, !dbg !310

vaarg.in_mem59:                                   ; preds = %sw.bb55
  %overflow_arg_area61 = load i8** %overflow_arg_area_p, align 8, !dbg !310
  %overflow_arg_area.next62 = getelementptr i8* %overflow_arg_area61, i64 8, !dbg !310
  store i8* %overflow_arg_area.next62, i8** %overflow_arg_area_p, align 8, !dbg !310
  br label %vaarg.end63, !dbg !310

vaarg.end63:                                      ; preds = %vaarg.in_mem59, %vaarg.in_reg57
  %vaarg.addr64.in = phi i8* [ %33, %vaarg.in_reg57 ], [ %overflow_arg_area61, %vaarg.in_mem59 ]
  %vaarg.addr64 = bitcast i8* %vaarg.addr64.in to double*, !dbg !310
  %35 = load double* %vaarg.addr64, align 8, !dbg !310
  call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !151), !dbg !310
  %call66 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i32 %fld.0.lcssa.i) #11, !dbg !347
  %call69 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* %2, double %35) #11, !dbg !348
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !147), !dbg !349
  %call72153 = call i64 @strlen(i8* %1) #14, !dbg !349
  %conv73154 = trunc i64 %call72153 to i32, !dbg !349
  %cmp74155 = icmp sgt i32 %conv73154, 0, !dbg !349
  br i1 %cmp74155, label %for.body76.lr.ph, label %for.inc113, !dbg !349

for.body76.lr.ph:                                 ; preds = %vaarg.end63
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !351
  %len.promoted = load i32* %len, align 4, !dbg !351, !tbaa !264
  %36 = sext i32 %len.promoted to i64
  br label %for.body76, !dbg !349

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv172 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next173, %for.body76 ], !dbg !349
  %indvars.iv = phi i64 [ %36, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %inc.i146157 = phi i32 [ %len.promoted, %for.body76.lr.ph ], [ %inc.i146, %for.body76 ], !dbg !352
  %arrayidx79 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv172, !dbg !352
  %37 = load i8* %arrayidx79, align 1, !dbg !352, !tbaa !252
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !353), !dbg !354
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !355), !dbg !354
  tail call void @llvm.dbg.value(metadata !{i8 %37}, i64 0, metadata !356), !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !351
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !349
  %inc.i146 = add nsw i32 %inc.i146157, 1, !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %inc.i146}, i64 0, metadata !150), !dbg !351
  %arrayidx.i148 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv, !dbg !351
  store i8 %37, i8* %arrayidx.i148, align 1, !dbg !351, !tbaa !252
  %indvars.iv.next173 = add i64 %indvars.iv172, 1, !dbg !349
  %call72 = call i64 @strlen(i8* %1) #14, !dbg !349
  %conv73 = trunc i64 %call72 to i32, !dbg !349
  %38 = trunc i64 %indvars.iv.next173 to i32, !dbg !349
  %cmp74 = icmp slt i32 %38, %conv73, !dbg !349
  br i1 %cmp74, label %for.body76, label %for.cond70.for.inc113.loopexit_crit_edge, !dbg !349

sw.bb83:                                          ; preds = %getfld.exit
  %gp_offset86 = load i32* %gp_offset_p, align 16, !dbg !357
  %fits_in_gp87 = icmp ult i32 %gp_offset86, 41, !dbg !357
  br i1 %fits_in_gp87, label %vaarg.in_reg88, label %vaarg.in_mem90, !dbg !357

vaarg.in_reg88:                                   ; preds = %sw.bb83
  %reg_save_area89 = load i8** %7, align 16, !dbg !357
  %39 = sext i32 %gp_offset86 to i64, !dbg !357
  %40 = getelementptr i8* %reg_save_area89, i64 %39, !dbg !357
  %41 = add i32 %gp_offset86, 8, !dbg !357
  store i32 %41, i32* %gp_offset_p, align 16, !dbg !357
  br label %vaarg.end94, !dbg !357

vaarg.in_mem90:                                   ; preds = %sw.bb83
  %overflow_arg_area92 = load i8** %overflow_arg_area_p, align 8, !dbg !357
  %overflow_arg_area.next93 = getelementptr i8* %overflow_arg_area92, i64 8, !dbg !357
  store i8* %overflow_arg_area.next93, i8** %overflow_arg_area_p, align 8, !dbg !357
  br label %vaarg.end94, !dbg !357

vaarg.end94:                                      ; preds = %vaarg.in_mem90, %vaarg.in_reg88
  %vaarg.addr95.in = phi i8* [ %40, %vaarg.in_reg88 ], [ %overflow_arg_area92, %vaarg.in_mem90 ]
  %vaarg.addr95 = bitcast i8* %vaarg.addr95.in to i32*, !dbg !357
  %42 = load i32* %vaarg.addr95, align 4, !dbg !357
  %conv96 = trunc i32 %42 to i8, !dbg !357
  call void @llvm.dbg.value(metadata !{i8 %conv96}, i64 0, metadata !136), !dbg !357
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !358), !dbg !360
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !361), !dbg !360
  tail call void @llvm.dbg.value(metadata !{i8 %conv96}, i64 0, metadata !362), !dbg !360
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !363
  %43 = load i32* %len, align 4, !dbg !363, !tbaa !264
  %inc.i143 = add nsw i32 %43, 1, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %inc.i143}, i64 0, metadata !150), !dbg !363
  store i32 %inc.i143, i32* %len, align 4, !dbg !363, !tbaa !264
  %idxprom.i144 = sext i32 %43 to i64, !dbg !363
  %arrayidx.i145 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %idxprom.i144, !dbg !363
  store i8 %conv96, i8* %arrayidx.i145, align 1, !dbg !363, !tbaa !252
  br label %for.inc113, !dbg !364

sw.bb98:                                          ; preds = %getfld.exit
  %gp_offset101 = load i32* %gp_offset_p, align 16, !dbg !365
  %fits_in_gp102 = icmp ult i32 %gp_offset101, 41, !dbg !365
  br i1 %fits_in_gp102, label %vaarg.in_reg103, label %vaarg.in_mem105, !dbg !365

vaarg.in_reg103:                                  ; preds = %sw.bb98
  %reg_save_area104 = load i8** %7, align 16, !dbg !365
  %44 = sext i32 %gp_offset101 to i64, !dbg !365
  %45 = getelementptr i8* %reg_save_area104, i64 %44, !dbg !365
  %46 = add i32 %gp_offset101, 8, !dbg !365
  store i32 %46, i32* %gp_offset_p, align 16, !dbg !365
  br label %vaarg.end109, !dbg !365

vaarg.in_mem105:                                  ; preds = %sw.bb98
  %overflow_arg_area107 = load i8** %overflow_arg_area_p, align 8, !dbg !365
  %overflow_arg_area.next108 = getelementptr i8* %overflow_arg_area107, i64 8, !dbg !365
  store i8* %overflow_arg_area.next108, i8** %overflow_arg_area_p, align 8, !dbg !365
  br label %vaarg.end109, !dbg !365

vaarg.end109:                                     ; preds = %vaarg.in_mem105, %vaarg.in_reg103
  %vaarg.addr110.in = phi i8* [ %45, %vaarg.in_reg103 ], [ %overflow_arg_area107, %vaarg.in_mem105 ]
  %vaarg.addr110 = bitcast i8* %vaarg.addr110.in to i8**, !dbg !365
  %47 = load i8** %vaarg.addr110, align 8, !dbg !365
  call void @llvm.dbg.value(metadata !{i8* %47}, i64 0, metadata !137), !dbg !365
  call fastcc void @bputs(i8* %0, i32* %len, i8* %47, i32 %fld.0.lcssa.i) #15, !dbg !366
  br label %for.inc113, !dbg !367

for.cond70.for.inc113.loopexit_crit_edge:         ; preds = %for.body76
  call void @llvm.dbg.value(metadata !{i32 %inc.i146}, i64 0, metadata !150), !dbg !351
  store i32 %inc.i146, i32* %len, align 4, !dbg !351, !tbaa !264
  br label %for.inc113, !dbg !349

for.cond42.for.inc113.loopexit158_crit_edge:      ; preds = %for.body48
  call void @llvm.dbg.value(metadata !{i32 %inc.i140}, i64 0, metadata !150), !dbg !341
  store i32 %inc.i140, i32* %len, align 4, !dbg !341, !tbaa !264
  br label %for.inc113, !dbg !339

for.cond16.for.inc113.loopexit165_crit_edge:      ; preds = %for.body22
  call void @llvm.dbg.value(metadata !{i32 %inc.i134}, i64 0, metadata !150), !dbg !330
  store i32 %inc.i134, i32* %len, align 4, !dbg !330, !tbaa !264
  br label %for.inc113, !dbg !328

for.inc113:                                       ; preds = %vaarg.end, %for.cond16.for.inc113.loopexit165_crit_edge, %vaarg.end35, %for.cond42.for.inc113.loopexit158_crit_edge, %vaarg.end63, %for.cond70.for.inc113.loopexit_crit_edge, %if.then6, %getfld.exit, %vaarg.end109, %vaarg.end94
  %incdec.ptr.i151 = phi i8* [ %storemerge, %if.then6 ], [ %incdec.ptr.i152, %getfld.exit ], [ %incdec.ptr.i152, %vaarg.end109 ], [ %incdec.ptr.i152, %vaarg.end94 ], [ %incdec.ptr.i152, %for.cond70.for.inc113.loopexit_crit_edge ], [ %incdec.ptr.i152, %vaarg.end63 ], [ %incdec.ptr.i152, %for.cond42.for.inc113.loopexit158_crit_edge ], [ %incdec.ptr.i152, %vaarg.end35 ], [ %incdec.ptr.i152, %for.cond16.for.inc113.loopexit165_crit_edge ], [ %incdec.ptr.i152, %vaarg.end ]
  %incdec.ptr114 = getelementptr inbounds i8* %incdec.ptr.i151, i64 1, !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr114}, i64 0, metadata !135), !dbg !304
  br label %for.cond, !dbg !304

for.end115:                                       ; preds = %for.cond
  call void @llvm.va_end(i8* %arraydecay1), !dbg !368
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !369), !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !372), !dbg !371
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !374), !dbg !371
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !375
  %48 = load i32* %len, align 4, !dbg !375, !tbaa !264
  %idxprom.i138 = sext i32 %48 to i64, !dbg !375
  %arrayidx.i139 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %idxprom.i138, !dbg !375
  store i8 0, i8* %arrayidx.i139, align 1, !dbg !375, !tbaa !252
  call void @quit_gmx(i32 %fatal_errno, i8* %0) #15, !dbg !376
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bputs(i8* nocapture %msg, i32* nocapture %len, i8* nocapture %s, i32 %fld) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %msg}, i64 0, metadata !219), !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !220), !dbg !377
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !221), !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %fld}, i64 0, metadata !222), !dbg !377
  %call = tail call i64 @strlen(i8* %s) #14, !dbg !378
  %conv = trunc i64 %call to i32, !dbg !378
  %sub = sub nsw i32 %fld, %conv, !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !222), !dbg !378
  %cmp13 = icmp sgt i32 %sub, 0, !dbg !378
  br i1 %cmp13, label %for.body, label %while.cond.preheader, !dbg !378

while.cond.preheader:                             ; preds = %for.body, %entry
  %0 = load i8* %s, align 1, !dbg !380, !tbaa !252
  %tobool11 = icmp eq i8 %0, 0, !dbg !380
  br i1 %tobool11, label %while.end, label %while.body, !dbg !380

for.body:                                         ; preds = %entry, %for.body
  %fld.addr.014 = phi i32 [ %dec, %for.body ], [ %sub, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %msg}, i64 0, metadata !381), !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !383), !dbg !382
  tail call void @llvm.dbg.value(metadata !384, i64 0, metadata !385), !dbg !382
  %1 = load i32* %len, align 4, !dbg !386, !tbaa !264
  %inc.i = add nsw i32 %1, 1, !dbg !386
  store i32 %inc.i, i32* %len, align 4, !dbg !386, !tbaa !264
  %idxprom.i = sext i32 %1 to i64, !dbg !386
  %arrayidx.i = getelementptr inbounds i8* %msg, i64 %idxprom.i, !dbg !386
  store i8 32, i8* %arrayidx.i, align 1, !dbg !386, !tbaa !252
  %dec = add nsw i32 %fld.addr.014, -1, !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !222), !dbg !378
  %cmp = icmp sgt i32 %dec, 0, !dbg !378
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !378

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi i8 [ %4, %while.body ], [ %0, %while.cond.preheader ]
  %s.addr.012 = phi i8* [ %incdec.ptr, %while.body ], [ %s, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.012, i64 1, !dbg !380
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !221), !dbg !380
  tail call void @llvm.dbg.value(metadata !{i8* %msg}, i64 0, metadata !387), !dbg !388
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !389), !dbg !388
  tail call void @llvm.dbg.value(metadata !{i8 %2}, i64 0, metadata !390), !dbg !388
  %3 = load i32* %len, align 4, !dbg !391, !tbaa !264
  %inc.i8 = add nsw i32 %3, 1, !dbg !391
  store i32 %inc.i8, i32* %len, align 4, !dbg !391, !tbaa !264
  %idxprom.i9 = sext i32 %3 to i64, !dbg !391
  %arrayidx.i10 = getelementptr inbounds i8* %msg, i64 %idxprom.i9, !dbg !391
  store i8 %2, i8* %arrayidx.i10, align 1, !dbg !391, !tbaa !252
  %4 = load i8* %incdec.ptr, align 1, !dbg !380, !tbaa !252
  %tobool = icmp eq i8 %4, 0, !dbg !380
  br i1 %tobool, label %while.end, label %while.body, !dbg !380

while.end:                                        ; preds = %while.body, %while.cond.preheader
  ret void, !dbg !392
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind optsize uwtable
define void @init_warning(i32 %maxwarning) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %maxwarning}, i64 0, metadata !157), !dbg !393
  store i32 %maxwarning, i32* @maxwarn, align 4, !dbg !394, !tbaa !264
  store i32 0, i32* @nwarn, align 4, !dbg !395, !tbaa !264
  ret void, !dbg !396
}

; Function Attrs: nounwind optsize uwtable
define void @set_warning_line(i8* nocapture %s, i32 %line) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !160), !dbg !397
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !161), !dbg !397
  %call = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %s) #11, !dbg !398
  store i32 %line, i32* @lineno, align 4, !dbg !399, !tbaa !264
  ret void, !dbg !400
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @get_warning_line() #0 {
entry:
  %0 = load i32* @lineno, align 4, !dbg !401, !tbaa !264
  ret i32 %0, !dbg !401
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @get_warning_file() #10 {
entry:
  ret i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), !dbg !402
}

; Function Attrs: nounwind optsize uwtable
define void @warning(i8* %s) #1 {
entry:
  %linenobuf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !170), !dbg !403
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %linenobuf}, metadata !171), !dbg !404
  %0 = load i32* @nwarn, align 4, !dbg !405, !tbaa !264
  %inc = add nsw i32 %0, 1, !dbg !405
  store i32 %inc, i32* @nwarn, align 4, !dbg !405, !tbaa !264
  %cmp = icmp eq i8* %s, null, !dbg !406
  call void @llvm.dbg.value(metadata !407, i64 0, metadata !170), !dbg !408
  %.s = select i1 %cmp, i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* %s, !dbg !406
  %1 = load i32* @lineno, align 4, !dbg !409, !tbaa !264
  %cmp1 = icmp eq i32 %1, -1, !dbg !409
  %arraydecay = getelementptr inbounds [32 x i8]* %linenobuf, i64 0, i64 0, !dbg !410
  br i1 %cmp1, label %if.else, label %if.then2, !dbg !409

if.then2:                                         ; preds = %entry
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32 %1) #11, !dbg !410
  br label %if.end5, !dbg !410

if.else:                                          ; preds = %entry
  %2 = bitcast [32 x i8]* %linenobuf to i64*, !dbg !411
  store i64 31093567915781749, i64* %2, align 16, !dbg !411
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %call6 = call i64 @strlen(i8* %.s) #14, !dbg !412
  %add7 = add i64 %call6, 3, !dbg !412
  %conv = trunc i64 %add7 to i32, !dbg !412
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 315, i32 %conv, i32 1) #11, !dbg !412
  call void @llvm.dbg.value(metadata !{i8* %call8}, i64 0, metadata !175), !dbg !412
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !177), !dbg !413
  %3 = bitcast i8* %call8 to i16*, !dbg !415
  store i16 8224, i16* %3, align 1, !dbg !415
  %arrayidx12 = getelementptr inbounds i8* %call8, i64 2, !dbg !416
  store i8 0, i8* %arrayidx12, align 1, !dbg !416, !tbaa !252
  %call13 = call i8* @strcat(i8* %call8, i8* %.s) #11, !dbg !417
  %call14 = call i8* @wrap_lines(i8* %call8, i32 79, i32 2) #11, !dbg !418
  call void @llvm.dbg.value(metadata !{i8* %call14}, i64 0, metadata !176), !dbg !418
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !419, !tbaa !251
  %5 = load i32* @nwarn, align 4, !dbg !419, !tbaa !264
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %arraydecay, i8* %call14) #11, !dbg !419
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 323, i8* %call8) #11, !dbg !420
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 324, i8* %call14) #11, !dbg !421
  %6 = load i32* @nwarn, align 4, !dbg !422, !tbaa !264
  %7 = load i32* @maxwarn, align 4, !dbg !422, !tbaa !264
  %cmp17 = icmp slt i32 %6, %7, !dbg !422
  br i1 %cmp17, label %if.end21, label %if.then19, !dbg !422

if.then19:                                        ; preds = %if.end5
  %call20 = call i8* @Program() #11, !dbg !423
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str18, i64 0, i64 0), i8* %call20) #15, !dbg !423
  unreachable

if.end21:                                         ; preds = %if.end5
  ret void, !dbg !424
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #8

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #8

; Function Attrs: optsize
declare i8* @Program() #8

; Function Attrs: nounwind optsize uwtable
define void @print_warn_num() #1 {
entry:
  %0 = load i32* @nwarn, align 4, !dbg !425, !tbaa !264
  %cmp = icmp sgt i32 %0, 0, !dbg !425
  br i1 %cmp, label %if.then, label %if.end, !dbg !425

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !426, !tbaa !251
  %cmp1 = icmp eq i32 %0, 1, !dbg !426
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), !dbg !426
  %cond3 = select i1 %cmp1, i8* getelementptr inbounds ([1 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), !dbg !426
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %cond, i32 %0, i8* %cond3) #11, !dbg !426
  br label %if.end, !dbg !426

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !427
}

; Function Attrs: nounwind optsize uwtable
define void @_too_few(i8* %fn, i32 %line) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !183), !dbg !428
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !184), !dbg !428
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str24, i64 0, i64 0), i8* %fn, i32 %line) #11, !dbg !429
  tail call void @warning(i8* null) #15, !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_invalid_case(i8* %fn, i32 %line) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !187), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !188), !dbg !432
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str25, i64 0, i64 0), i8* %fn, i32 %line) #15, !dbg !433
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_unexpected_eof(i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !193), !dbg !434
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !194), !dbg !434
  tail call void @llvm.dbg.value(metadata !{i8* %srcfn}, i64 0, metadata !195), !dbg !434
  tail call void @llvm.dbg.value(metadata !{i32 %srcline}, i64 0, metadata !196), !dbg !434
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([71 x i8]* @.str26, i64 0, i64 0), i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #15, !dbg !435
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define void @init_debug(i8* %dbgfile) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dbgfile}, i64 0, metadata !199), !dbg !436
  tail call void @no_buffers() #11, !dbg !437
  %call = tail call %struct._IO_FILE* @ffopen(i8* %dbgfile, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0)) #11, !dbg !438
  store %struct._IO_FILE* %call, %struct._IO_FILE** @debug, align 8, !dbg !438, !tbaa !251
  store i1 true, i1* @bDebug, align 1
  ret void, !dbg !439
}

; Function Attrs: optsize
declare void @no_buffers() #8

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #8

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { nounwind optsize readnone }
attributes #14 = { nounwind optsize readonly }
attributes #15 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !223, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !25, metadata !90, metadata !97, metadata !106, metadata !113, metadata !118, metadata !153, metadata !158, metadata !162, metadata !163, metadata !166, metadata !178, metadata !181, metadata !185, metadata !189, metadata !197, metadata !200, metadata !207, metadata !215}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"bDebugMode", metadata !"bDebugMode", metadata !"", i32 50, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @bDebugMode, null, null, metadata !18, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [bDebugMode]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_where", metadata !"_where", metadata !"", i32 55, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @_where, null, null, metadata !30, i32 56} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 56] [_where]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null, metadata !28, metadata !24}
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !89}
!31 = metadata !{i32 786689, metadata !25, metadata !"file", metadata !21, i32 16777271, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 55]
!32 = metadata !{i32 786689, metadata !25, metadata !"line", metadata !21, i32 33554487, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 55]
!33 = metadata !{i32 786688, metadata !25, metadata !"fp", metadata !21, i32 60, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 60]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!35 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!36 = metadata !{i32 786451, metadata !37, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!37 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !59, metadata !60, metadata !61, metadata !62, metadata !65, metadata !67, metadata !69, metadata !73, metadata !75, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !84, metadata !85}
!39 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!41 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!42 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!43 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!44 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!45 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!46 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!47 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!48 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!49 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!50 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!51 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !52} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!53 = metadata !{i32 786451, metadata !37, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !58}
!55 = metadata !{i32 786445, metadata !37, metadata !53, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!56 = metadata !{i32 786445, metadata !37, metadata !53, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!58 = metadata !{i32 786445, metadata !37, metadata !53, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!59 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !57} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!60 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!61 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!62 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !63} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!63 = metadata !{i32 786454, metadata !37, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!64 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!65 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !66} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!66 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !68} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!68 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!69 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !70} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !29, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!73 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !74} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!75 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !76} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!76 = metadata !{i32 786454, metadata !37, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!77 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!78 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!79 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!80 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!81 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!82 = metadata !{i32 786454, metadata !37, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!83 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!84 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!85 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !86} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !29, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!89 = metadata !{i32 786688, metadata !25, metadata !"temp", metadata !21, i32 61, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 61]
!90 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_halt", metadata !"_halt", metadata !"", i32 136, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i8*)* @_halt, null, null, metadata !93, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [_halt]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{null, metadata !28, metadata !24, metadata !28}
!93 = metadata !{metadata !94, metadata !95, metadata !96}
!94 = metadata !{i32 786689, metadata !90, metadata !"file", metadata !21, i32 16777352, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 136]
!95 = metadata !{i32 786689, metadata !90, metadata !"line", metadata !21, i32 33554568, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 136]
!96 = metadata !{i32 786689, metadata !90, metadata !"reason", metadata !21, i32 50331784, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reason] [line 136]
!97 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"quit_gmx", metadata !"quit_gmx", metadata !"", i32 143, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @quit_gmx, null, null, metadata !100, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [quit_gmx]
!98 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{null, metadata !24, metadata !28}
!100 = metadata !{metadata !101, metadata !102, metadata !103}
!101 = metadata !{i32 786689, metadata !97, metadata !"fatal_errno", metadata !21, i32 16777359, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fatal_errno] [line 143]
!102 = metadata !{i32 786689, metadata !97, metadata !"msg", metadata !21, i32 33554575, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 143]
!103 = metadata !{i32 786688, metadata !104, metadata !"__res", metadata !21, i32 174, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 174]
!104 = metadata !{i32 786443, metadata !1, metadata !105, i32 174, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!105 = metadata !{i32 786443, metadata !1, metadata !97, i32 171, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!106 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_set_fatal_tmp_file", metadata !"_set_fatal_tmp_file", metadata !"", i32 181, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32)* @_set_fatal_tmp_file, null, null, metadata !109, i32 182} ; [ DW_TAG_subprogram ] [line 181] [def] [scope 182] [_set_fatal_tmp_file]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !28, metadata !28, metadata !24}
!109 = metadata !{metadata !110, metadata !111, metadata !112}
!110 = metadata !{i32 786689, metadata !106, metadata !"fn", metadata !21, i32 16777397, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 181]
!111 = metadata !{i32 786689, metadata !106, metadata !"file", metadata !21, i32 33554613, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 181]
!112 = metadata !{i32 786689, metadata !106, metadata !"line", metadata !21, i32 50331829, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 181]
!113 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_unset_fatal_tmp_file", metadata !"_unset_fatal_tmp_file", metadata !"", i32 190, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32)* @_unset_fatal_tmp_file, null, null, metadata !114, i32 191} ; [ DW_TAG_subprogram ] [line 190] [def] [scope 191] [_unset_fatal_tmp_file]
!114 = metadata !{metadata !115, metadata !116, metadata !117}
!115 = metadata !{i32 786689, metadata !113, metadata !"fn", metadata !21, i32 16777406, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 190]
!116 = metadata !{i32 786689, metadata !113, metadata !"file", metadata !21, i32 33554622, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 190]
!117 = metadata !{i32 786689, metadata !113, metadata !"line", metadata !21, i32 50331838, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 190]
!118 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fatal_error", metadata !"fatal_error", metadata !"", i32 200, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, ...)* @fatal_error, null, null, metadata !119, i32 201} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 201] [fatal_error]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !135, metadata !136, metadata !137, metadata !138, metadata !142, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151}
!120 = metadata !{i32 786689, metadata !118, metadata !"fatal_errno", metadata !21, i32 16777416, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fatal_errno] [line 200]
!121 = metadata !{i32 786689, metadata !118, metadata !"fmt", metadata !21, i32 33554632, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 200]
!122 = metadata !{i32 786688, metadata !118, metadata !"ap", metadata !21, i32 202, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 202]
!123 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!124 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!125 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 202, size 0, align 0, offset 0] [from ]
!126 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !127, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!127 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [__va_list_tag] [line 202, size 0, align 0, offset 0] [from __va_list_tag]
!128 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 202, i64 192, i64 64, i32 0, i32 0, null, metadata !129, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 202, size 192, align 64, offset 0] [from ]
!129 = metadata !{metadata !130, metadata !132, metadata !133, metadata !134}
!130 = metadata !{i32 786445, metadata !1, metadata !128, metadata !"gp_offset", i32 202, i64 32, i64 32, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [gp_offset] [line 202, size 32, align 32, offset 0] [from unsigned int]
!131 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!132 = metadata !{i32 786445, metadata !1, metadata !128, metadata !"fp_offset", i32 202, i64 32, i64 32, i64 32, i32 0, metadata !131} ; [ DW_TAG_member ] [fp_offset] [line 202, size 32, align 32, offset 32] [from unsigned int]
!133 = metadata !{i32 786445, metadata !1, metadata !128, metadata !"overflow_arg_area", i32 202, i64 64, i64 64, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [overflow_arg_area] [line 202, size 64, align 64, offset 64] [from ]
!134 = metadata !{i32 786445, metadata !1, metadata !128, metadata !"reg_save_area", i32 202, i64 64, i64 64, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [reg_save_area] [line 202, size 64, align 64, offset 128] [from ]
!135 = metadata !{i32 786688, metadata !118, metadata !"p", metadata !21, i32 203, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 203]
!136 = metadata !{i32 786688, metadata !118, metadata !"cval", metadata !21, i32 203, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cval] [line 203]
!137 = metadata !{i32 786688, metadata !118, metadata !"sval", metadata !21, i32 203, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sval] [line 203]
!138 = metadata !{i32 786688, metadata !118, metadata !"msg", metadata !21, i32 203, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 203]
!139 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !29, metadata !140, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!142 = metadata !{i32 786688, metadata !118, metadata !"ibuf", metadata !21, i32 204, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuf] [line 204]
!143 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !29, metadata !144, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!144 = metadata !{metadata !145}
!145 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!146 = metadata !{i32 786688, metadata !118, metadata !"ifmt", metadata !21, i32 204, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ifmt] [line 204]
!147 = metadata !{i32 786688, metadata !118, metadata !"index", metadata !21, i32 205, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 205]
!148 = metadata !{i32 786688, metadata !118, metadata !"ival", metadata !21, i32 205, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ival] [line 205]
!149 = metadata !{i32 786688, metadata !118, metadata !"fld", metadata !21, i32 205, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fld] [line 205]
!150 = metadata !{i32 786688, metadata !118, metadata !"len", metadata !21, i32 205, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 205]
!151 = metadata !{i32 786688, metadata !118, metadata !"dval", metadata !21, i32 206, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dval] [line 206]
!152 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!153 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"init_warning", metadata !"init_warning", metadata !"", i32 280, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @init_warning, null, null, metadata !156, i32 281} ; [ DW_TAG_subprogram ] [line 280] [def] [scope 281] [init_warning]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{null, metadata !24}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786689, metadata !153, metadata !"maxwarning", metadata !21, i32 16777496, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxwarning] [line 280]
!158 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"set_warning_line", metadata !"set_warning_line", metadata !"", i32 286, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @set_warning_line, null, null, metadata !159, i32 287} ; [ DW_TAG_subprogram ] [line 286] [def] [scope 287] [set_warning_line]
!159 = metadata !{metadata !160, metadata !161}
!160 = metadata !{i32 786689, metadata !158, metadata !"s", metadata !21, i32 16777502, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 286]
!161 = metadata !{i32 786689, metadata !158, metadata !"line", metadata !21, i32 33554718, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 286]
!162 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"get_warning_line", metadata !"get_warning_line", metadata !"", i32 292, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @get_warning_line, null, null, metadata !18, i32 293} ; [ DW_TAG_subprogram ] [line 292] [def] [scope 293] [get_warning_line]
!163 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"get_warning_file", metadata !"get_warning_file", metadata !"", i32 297, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @get_warning_file, null, null, metadata !18, i32 298} ; [ DW_TAG_subprogram ] [line 297] [def] [scope 298] [get_warning_file]
!164 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{metadata !28}
!166 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"warning", metadata !"warning", metadata !"", i32 302, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @warning, null, null, metadata !169, i32 303} ; [ DW_TAG_subprogram ] [line 302] [def] [scope 303] [warning]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{null, metadata !28}
!169 = metadata !{metadata !170, metadata !171, metadata !175, metadata !176, metadata !177}
!170 = metadata !{i32 786689, metadata !166, metadata !"s", metadata !21, i32 16777518, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 302]
!171 = metadata !{i32 786688, metadata !166, metadata !"linenobuf", metadata !21, i32 305, metadata !172, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linenobuf] [line 305]
!172 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !29, metadata !173, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!173 = metadata !{metadata !174}
!174 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!175 = metadata !{i32 786688, metadata !166, metadata !"temp", metadata !21, i32 305, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 305]
!176 = metadata !{i32 786688, metadata !166, metadata !"temp2", metadata !21, i32 305, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 305]
!177 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !21, i32 306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 306]
!178 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"print_warn_num", metadata !"print_warn_num", metadata !"", i32 329, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @print_warn_num, null, null, metadata !18, i32 330} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 330] [print_warn_num]
!179 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{null}
!181 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_too_few", metadata !"_too_few", metadata !"", i32 336, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @_too_few, null, null, metadata !182, i32 337} ; [ DW_TAG_subprogram ] [line 336] [def] [scope 337] [_too_few]
!182 = metadata !{metadata !183, metadata !184}
!183 = metadata !{i32 786689, metadata !181, metadata !"fn", metadata !21, i32 16777552, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 336]
!184 = metadata !{i32 786689, metadata !181, metadata !"line", metadata !21, i32 33554768, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 336]
!185 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_invalid_case", metadata !"_invalid_case", metadata !"", i32 343, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @_invalid_case, null, null, metadata !186, i32 344} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 344] [_invalid_case]
!186 = metadata !{metadata !187, metadata !188}
!187 = metadata !{i32 786689, metadata !185, metadata !"fn", metadata !21, i32 16777559, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 343]
!188 = metadata !{i32 786689, metadata !185, metadata !"line", metadata !21, i32 33554775, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 343]
!189 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"_unexpected_eof", metadata !"_unexpected_eof", metadata !"", i32 349, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i8*, i32)* @_unexpected_eof, null, null, metadata !192, i32 350} ; [ DW_TAG_subprogram ] [line 349] [def] [scope 350] [_unexpected_eof]
!190 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{null, metadata !28, metadata !24, metadata !28, metadata !24}
!192 = metadata !{metadata !193, metadata !194, metadata !195, metadata !196}
!193 = metadata !{i32 786689, metadata !189, metadata !"fn", metadata !21, i32 16777565, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 349]
!194 = metadata !{i32 786689, metadata !189, metadata !"line", metadata !21, i32 33554781, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 349]
!195 = metadata !{i32 786689, metadata !189, metadata !"srcfn", metadata !21, i32 50331997, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcfn] [line 349]
!196 = metadata !{i32 786689, metadata !189, metadata !"srcline", metadata !21, i32 67109213, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcline] [line 349]
!197 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"init_debug", metadata !"init_debug", metadata !"", i32 364, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @init_debug, null, null, metadata !198, i32 365} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 365] [init_debug]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786689, metadata !197, metadata !"dbgfile", metadata !21, i32 16777580, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dbgfile] [line 364]
!200 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"getfld", metadata !"getfld", metadata !"", i32 127, metadata !201, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !204, i32 128} ; [ DW_TAG_subprogram ] [line 127] [local] [def] [scope 128] [getfld]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{metadata !24, metadata !203}
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786689, metadata !200, metadata !"p", metadata !21, i32 16777343, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 127]
!206 = metadata !{i32 786688, metadata !200, metadata !"fld", metadata !21, i32 129, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fld] [line 129]
!207 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"bputc", metadata !"bputc", metadata !"", i32 87, metadata !208, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !211, i32 88} ; [ DW_TAG_subprogram ] [line 87] [local] [def] [scope 88] [bputc]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{null, metadata !28, metadata !210, metadata !29}
!210 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!211 = metadata !{metadata !212, metadata !213, metadata !214}
!212 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!213 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 87]
!214 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!215 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"bputs", metadata !"bputs", metadata !"", i32 92, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*, i8*, i32)* @bputs, null, null, metadata !218, i32 93} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 93] [bputs]
!216 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{null, metadata !28, metadata !210, metadata !28, metadata !24}
!218 = metadata !{metadata !219, metadata !220, metadata !221, metadata !222}
!219 = metadata !{i32 786689, metadata !215, metadata !"msg", metadata !21, i32 16777308, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 92]
!220 = metadata !{i32 786689, metadata !215, metadata !"len", metadata !21, i32 33554524, metadata !210, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 92]
!221 = metadata !{i32 786689, metadata !215, metadata !"s", metadata !21, i32 50331740, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 92]
!222 = metadata !{i32 786689, metadata !215, metadata !"fld", metadata !21, i32 67108956, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fld] [line 92]
!223 = metadata !{metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !232, metadata !233, metadata !237, metadata !238, metadata !239, metadata !240}
!224 = metadata !{i32 786484, i32 0, metadata !25, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !21, i32 57, metadata !24, i32 1, i32 1, null, null}
!225 = metadata !{i32 786484, i32 0, metadata !25, metadata !"nskip", metadata !"nskip", metadata !"", metadata !21, i32 58, metadata !24, i32 1, i32 1, null, null}
!226 = metadata !{i32 786484, i32 0, metadata !25, metadata !"nwhere", metadata !"nwhere", metadata !"", metadata !21, i32 59, metadata !24, i32 1, i32 1, null, null}
!227 = metadata !{i32 786484, i32 0, null, metadata !"debug", metadata !"debug", metadata !"", metadata !21, i32 362, metadata !34, i32 0, i32 1, %struct._IO_FILE** @debug, null} ; [ DW_TAG_variable ] [debug] [line 362] [def]
!228 = metadata !{i32 786484, i32 0, null, metadata !"warn_buf", metadata !"warn_buf", metadata !"", metadata !21, i32 278, metadata !229, i32 0, i32 1, [1024 x i8]* @warn_buf, null} ; [ DW_TAG_variable ] [warn_buf] [line 278] [def]
!229 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !29, metadata !230, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!230 = metadata !{metadata !231}
!231 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!232 = metadata !{i32 786484, i32 0, null, metadata !"lineno", metadata !"lineno", metadata !"", metadata !21, i32 276, metadata !24, i32 1, i32 1, i32* @lineno, null} ; [ DW_TAG_variable ] [lineno] [line 276] [local] [def]
!233 = metadata !{i32 786484, i32 0, null, metadata !"filenm", metadata !"filenm", metadata !"", metadata !21, i32 277, metadata !234, i32 1, i32 1, [256 x i8]* @filenm, null} ; [ DW_TAG_variable ] [filenm] [line 277] [local] [def]
!234 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !29, metadata !235, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!235 = metadata !{metadata !236}
!236 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!237 = metadata !{i32 786484, i32 0, null, metadata !"nwarn", metadata !"nwarn", metadata !"", metadata !21, i32 274, metadata !24, i32 1, i32 1, i32* @nwarn, null} ; [ DW_TAG_variable ] [nwarn] [line 274] [local] [def]
!238 = metadata !{i32 786484, i32 0, null, metadata !"maxwarn", metadata !"maxwarn", metadata !"", metadata !21, i32 275, metadata !24, i32 1, i32 1, i32* @maxwarn, null} ; [ DW_TAG_variable ] [maxwarn] [line 275] [local] [def]
!239 = metadata !{i32 786484, i32 0, null, metadata !"fatal_tmp_file", metadata !"fatal_tmp_file", metadata !"", metadata !21, i32 48, metadata !28, i32 1, i32 1, i8** @fatal_tmp_file, null} ; [ DW_TAG_variable ] [fatal_tmp_file] [line 48] [local] [def]
!240 = metadata !{i32 786484, i32 0, null, metadata !"bDebug", metadata !"bDebug", metadata !"", metadata !21, i32 47, metadata !24, i32 1, i32 1, null, null}
!241 = metadata !{i32 52, i32 0, metadata !20, null}
!242 = metadata !{i32 55, i32 0, metadata !25, null}
!243 = metadata !{i32 63, i32 0, metadata !25, null}
!244 = metadata !{i8* null}
!245 = metadata !{i32 65, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !25, i32 63, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!247 = metadata !{i32 72, i32 0, metadata !246, null}
!248 = metadata !{i32 85, i32 0, metadata !25, null}
!249 = metadata !{i32 136, i32 0, metadata !90, null}
!250 = metadata !{i32 138, i32 0, metadata !90, null}
!251 = metadata !{metadata !"any pointer", metadata !252}
!252 = metadata !{metadata !"omnipotent char", metadata !253}
!253 = metadata !{metadata !"Simple C/C++ TBAA"}
!254 = metadata !{i32 140, i32 0, metadata !90, null}
!255 = metadata !{i32 143, i32 0, metadata !97, null}
!256 = metadata !{i32 145, i32 0, metadata !97, null}
!257 = metadata !{i32 146, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !97, i32 145, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!259 = metadata !{i32 147, i32 0, metadata !258, null}
!260 = metadata !{i32 148, i32 0, metadata !258, null}
!261 = metadata !{i32 149, i32 0, metadata !258, null}
!262 = metadata !{i32 152, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !97, i32 150, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!264 = metadata !{metadata !"int", metadata !252}
!265 = metadata !{i32 153, i32 0, metadata !263, null}
!266 = metadata !{i32 169, i32 0, metadata !97, null}
!267 = metadata !{i32 170, i32 0, metadata !97, null}
!268 = metadata !{i32 171, i32 0, metadata !97, null}
!269 = metadata !{i32 172, i32 0, metadata !105, null}
!270 = metadata !{i32 173, i32 0, metadata !105, null}
!271 = metadata !{i32 174, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !104, i32 174, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!273 = metadata !{i32 174, i32 0, metadata !104, null}
!274 = metadata !{i32 175, i32 0, metadata !105, null}
!275 = metadata !{i32 178, i32 0, metadata !97, null}
!276 = metadata !{i32 181, i32 0, metadata !106, null}
!277 = metadata !{i32 183, i32 0, metadata !106, null}
!278 = metadata !{i32 184, i32 0, metadata !106, null}
!279 = metadata !{i32 186, i32 0, metadata !106, null}
!280 = metadata !{i32 188, i32 0, metadata !106, null}
!281 = metadata !{i32 190, i32 0, metadata !113, null}
!282 = metadata !{i32 192, i32 0, metadata !113, null}
!283 = metadata !{i32 193, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !113, i32 192, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!285 = metadata !{i32 194, i32 0, metadata !284, null}
!286 = metadata !{i32 195, i32 0, metadata !284, null}
!287 = metadata !{i32 196, i32 0, metadata !113, null}
!288 = metadata !{i32 198, i32 0, metadata !113, null}
!289 = metadata !{i32 200, i32 0, metadata !118, null}
!290 = metadata !{i32 202, i32 0, metadata !118, null}
!291 = metadata !{i32 203, i32 0, metadata !118, null}
!292 = metadata !{i32 204, i32 0, metadata !118, null}
!293 = metadata !{i32 205, i32 0, metadata !118, null}
!294 = metadata !{i32 215, i32 0, metadata !118, null}
!295 = metadata !{i32 218, i32 0, metadata !118, null}
!296 = metadata !{i32 219, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !118, i32 218, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!298 = metadata !{i32 220, i32 0, metadata !297, null}
!299 = metadata !{i32 221, i32 0, metadata !297, null}
!300 = metadata !{i32 222, i32 0, metadata !297, null}
!301 = metadata !{i32 223, i32 0, metadata !297, null}
!302 = metadata !{i32 225, i32 0, metadata !118, null}
!303 = metadata !{i32 226, i32 0, metadata !118, null}
!304 = metadata !{i32 227, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !118, i32 227, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!306 = metadata !{i32 235, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 233, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!308 = metadata !{i32 786443, metadata !1, metadata !309, i32 230, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!309 = metadata !{i32 786443, metadata !1, metadata !305, i32 227, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!310 = metadata !{i32 249, i32 0, metadata !307, null}
!311 = metadata !{i32 786689, metadata !200, metadata !"p", metadata !21, i32 16777343, metadata !203, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [p] [line 127]
!312 = metadata !{i32 232, i32 0, metadata !308, null}
!313 = metadata !{i32 127, i32 0, metadata !200, metadata !312}
!314 = metadata !{i32 233, i32 0, metadata !308, null}
!315 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !316} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!316 = metadata !{i32 229, i32 0, metadata !309, null}
!317 = metadata !{i32 87, i32 0, metadata !207, metadata !316}
!318 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !316} ; [ DW_TAG_arg_variable ] [len] [line 87]
!319 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !316} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!320 = metadata !{i32 89, i32 0, metadata !207, metadata !316}
!321 = metadata !{i32 231, i32 0, metadata !308, null}
!322 = metadata !{i32 786688, metadata !200, metadata !"fld", metadata !21, i32 129, metadata !24, i32 0, metadata !312} ; [ DW_TAG_auto_variable ] [fld] [line 129]
!323 = metadata !{i32 131, i32 0, metadata !200, metadata !312}
!324 = metadata !{i32 132, i32 0, metadata !200, metadata !312}
!325 = metadata !{metadata !"short", metadata !252}
!326 = metadata !{i32 236, i32 0, metadata !307, null}
!327 = metadata !{i32 237, i32 0, metadata !307, null}
!328 = metadata !{i32 238, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !307, i32 238, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!330 = metadata !{i32 89, i32 0, metadata !207, metadata !331}
!331 = metadata !{i32 239, i32 0, metadata !329, null}
!332 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !331} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!333 = metadata !{i32 87, i32 0, metadata !207, metadata !331}
!334 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !331} ; [ DW_TAG_arg_variable ] [len] [line 87]
!335 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !331} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!336 = metadata !{i32 242, i32 0, metadata !307, null}
!337 = metadata !{i32 243, i32 0, metadata !307, null}
!338 = metadata !{i32 244, i32 0, metadata !307, null}
!339 = metadata !{i32 245, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !307, i32 245, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!341 = metadata !{i32 89, i32 0, metadata !207, metadata !342}
!342 = metadata !{i32 246, i32 0, metadata !340, null}
!343 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !342} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!344 = metadata !{i32 87, i32 0, metadata !207, metadata !342}
!345 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !342} ; [ DW_TAG_arg_variable ] [len] [line 87]
!346 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !342} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!347 = metadata !{i32 250, i32 0, metadata !307, null}
!348 = metadata !{i32 251, i32 0, metadata !307, null}
!349 = metadata !{i32 252, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !307, i32 252, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!351 = metadata !{i32 89, i32 0, metadata !207, metadata !352}
!352 = metadata !{i32 253, i32 0, metadata !350, null}
!353 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !352} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!354 = metadata !{i32 87, i32 0, metadata !207, metadata !352}
!355 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !352} ; [ DW_TAG_arg_variable ] [len] [line 87]
!356 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !352} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!357 = metadata !{i32 256, i32 0, metadata !307, null}
!358 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !359} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!359 = metadata !{i32 257, i32 0, metadata !307, null}
!360 = metadata !{i32 87, i32 0, metadata !207, metadata !359}
!361 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !359} ; [ DW_TAG_arg_variable ] [len] [line 87]
!362 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !359} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!363 = metadata !{i32 89, i32 0, metadata !207, metadata !359}
!364 = metadata !{i32 258, i32 0, metadata !307, null}
!365 = metadata !{i32 260, i32 0, metadata !307, null}
!366 = metadata !{i32 261, i32 0, metadata !307, null}
!367 = metadata !{i32 262, i32 0, metadata !307, null}
!368 = metadata !{i32 268, i32 0, metadata !118, null}
!369 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !370} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!370 = metadata !{i32 269, i32 0, metadata !118, null}
!371 = metadata !{i32 87, i32 0, metadata !207, metadata !370}
!372 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !370} ; [ DW_TAG_arg_variable ] [len] [line 87]
!373 = metadata !{i8 0}
!374 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !370} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!375 = metadata !{i32 89, i32 0, metadata !207, metadata !370}
!376 = metadata !{i32 271, i32 0, metadata !118, null}
!377 = metadata !{i32 92, i32 0, metadata !215, null}
!378 = metadata !{i32 94, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !215, i32 94, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!380 = metadata !{i32 95, i32 0, metadata !215, null}
!381 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !378} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!382 = metadata !{i32 87, i32 0, metadata !207, metadata !378}
!383 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !378} ; [ DW_TAG_arg_variable ] [len] [line 87]
!384 = metadata !{i8 32}
!385 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !378} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!386 = metadata !{i32 89, i32 0, metadata !207, metadata !378}
!387 = metadata !{i32 786689, metadata !207, metadata !"msg", metadata !21, i32 16777303, metadata !28, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [msg] [line 87]
!388 = metadata !{i32 87, i32 0, metadata !207, metadata !380}
!389 = metadata !{i32 786689, metadata !207, metadata !"len", metadata !21, i32 33554519, metadata !210, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [len] [line 87]
!390 = metadata !{i32 786689, metadata !207, metadata !"ch", metadata !21, i32 50331735, metadata !29, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [ch] [line 87]
!391 = metadata !{i32 89, i32 0, metadata !207, metadata !380}
!392 = metadata !{i32 96, i32 0, metadata !215, null}
!393 = metadata !{i32 280, i32 0, metadata !153, null}
!394 = metadata !{i32 282, i32 0, metadata !153, null}
!395 = metadata !{i32 283, i32 0, metadata !153, null}
!396 = metadata !{i32 284, i32 0, metadata !153, null}
!397 = metadata !{i32 286, i32 0, metadata !158, null}
!398 = metadata !{i32 288, i32 0, metadata !158, null}
!399 = metadata !{i32 289, i32 0, metadata !158, null}
!400 = metadata !{i32 290, i32 0, metadata !158, null}
!401 = metadata !{i32 294, i32 0, metadata !162, null}
!402 = metadata !{i32 299, i32 0, metadata !163, null}
!403 = metadata !{i32 302, i32 0, metadata !166, null}
!404 = metadata !{i32 305, i32 0, metadata !166, null}
!405 = metadata !{i32 308, i32 0, metadata !166, null}
!406 = metadata !{i32 309, i32 0, metadata !166, null}
!407 = metadata !{null}
!408 = metadata !{i32 310, i32 0, metadata !166, null}
!409 = metadata !{i32 311, i32 0, metadata !166, null}
!410 = metadata !{i32 312, i32 0, metadata !166, null}
!411 = metadata !{i32 314, i32 0, metadata !166, null}
!412 = metadata !{i32 315, i32 0, metadata !166, null}
!413 = metadata !{i32 316, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !166, i32 316, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c]
!415 = metadata !{i32 317, i32 0, metadata !414, null}
!416 = metadata !{i32 318, i32 0, metadata !166, null}
!417 = metadata !{i32 319, i32 0, metadata !166, null}
!418 = metadata !{i32 320, i32 0, metadata !166, null}
!419 = metadata !{i32 321, i32 0, metadata !166, null}
!420 = metadata !{i32 323, i32 0, metadata !166, null}
!421 = metadata !{i32 324, i32 0, metadata !166, null}
!422 = metadata !{i32 325, i32 0, metadata !166, null}
!423 = metadata !{i32 326, i32 0, metadata !166, null}
!424 = metadata !{i32 327, i32 0, metadata !166, null}
!425 = metadata !{i32 331, i32 0, metadata !178, null}
!426 = metadata !{i32 332, i32 0, metadata !178, null}
!427 = metadata !{i32 334, i32 0, metadata !178, null}
!428 = metadata !{i32 336, i32 0, metadata !181, null}
!429 = metadata !{i32 338, i32 0, metadata !181, null}
!430 = metadata !{i32 340, i32 0, metadata !181, null}
!431 = metadata !{i32 341, i32 0, metadata !181, null}
!432 = metadata !{i32 343, i32 0, metadata !185, null}
!433 = metadata !{i32 345, i32 0, metadata !185, null}
!434 = metadata !{i32 349, i32 0, metadata !189, null}
!435 = metadata !{i32 351, i32 0, metadata !189, null}
!436 = metadata !{i32 364, i32 0, metadata !197, null}
!437 = metadata !{i32 366, i32 0, metadata !197, null}
!438 = metadata !{i32 367, i32 0, metadata !197, null}
!439 = metadata !{i32 369, i32 0, metadata !197, null}
