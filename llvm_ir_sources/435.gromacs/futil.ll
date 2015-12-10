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
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !12, metadata !235), !dbg !236
  %1 = icmp sgt i32 %__signo, 32, !dbg !237
  br i1 %1, label %5, label %2, !dbg !238

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !239
  %4 = shl i32 1, %3, !dbg !240
  br label %5, !dbg !238

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !238
  ret i32 %6, !dbg !241
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @no_buffers() #2 {
  store i1 true, i1* @bUnbuffered, align 1
  ret void, !dbg !242
}

; Function Attrs: nounwind optsize ssp uwtable
define void @push_ps(%struct.__sFILE* %fp) #2 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !82, metadata !235), !dbg !243
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #8, !dbg !244
  %2 = bitcast i8* %1 to %struct.__sFILE**, !dbg !245
  store %struct.__sFILE* %fp, %struct.__sFILE** %2, align 8, !dbg !246, !tbaa !247
  %3 = getelementptr inbounds i8* %1, i64 8, !dbg !252
  %4 = bitcast i8* %3 to %struct.t_pstack**, !dbg !252
  store %struct.t_pstack* null, %struct.t_pstack** %4, align 8, !dbg !253, !tbaa !254
  ret void, !dbg !255
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ffclose(%struct.__sFILE* nocapture %fp) #2 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !93, metadata !235), !dbg !256
  tail call void @llvm.dbg.value(metadata %struct.t_pstack* null, i64 0, metadata !94, metadata !235), !dbg !257
  %1 = tail call i32 @fclose(%struct.__sFILE* %fp) #8, !dbg !258
  ret void, !dbg !261
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @frewind(%struct.__sFILE* nocapture %fp) #2 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !98, metadata !235), !dbg !262
  tail call void @llvm.dbg.value(metadata %struct.t_pstack* null, i64 0, metadata !99, metadata !235), !dbg !263
  tail call void @rewind(%struct.__sFILE* %fp) #8, !dbg !264
  ret void, !dbg !265
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize
declare void @rewind(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @is_pipe(%struct.__sFILE* nocapture readnone %fp) #5 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !104, metadata !235), !dbg !266
  tail call void @llvm.dbg.value(metadata %struct.t_pstack* null, i64 0, metadata !105, metadata !235), !dbg !267
  ret i32 0, !dbg !268
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @uncompress(i8* %fn, i8* %mode) #2 {
  %buf = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !110, metadata !235), !dbg !269
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !111, metadata !235), !dbg !270
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !271
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !271
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !113, metadata !235), !dbg !272
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* %fn) #8, !dbg !273
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !274, !tbaa !275
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %1) #8, !dbg !276
  %5 = call %struct.__sFILE* @"\01_popen"(i8* %1, i8* %mode) #8, !dbg !277
  call void @llvm.dbg.value(metadata %struct.__sFILE* %5, i64 0, metadata !112, metadata !235), !dbg !279
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !280
  br i1 %6, label %7, label %8, !dbg !281

; <label>:7                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #8, !dbg !282
  br label %8, !dbg !282

; <label>:8                                       ; preds = %7, %0
  call void @llvm.dbg.value(metadata %struct.__sFILE* %5, i64 0, metadata !82, metadata !235) #6, !dbg !283
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #8, !dbg !285
  %10 = bitcast i8* %9 to %struct.__sFILE**, !dbg !286
  store %struct.__sFILE* %5, %struct.__sFILE** %10, align 8, !dbg !287, !tbaa !247
  %11 = getelementptr inbounds i8* %9, i64 8, !dbg !288
  %12 = bitcast i8* %11 to %struct.t_pstack**, !dbg !288
  store %struct.t_pstack* null, %struct.t_pstack** %12, align 8, !dbg !289, !tbaa !254
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !290
  ret %struct.__sFILE* %5, !dbg !290
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_popen"(i8*, i8*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @gunzip(i8* %fn, i8* %mode) #2 {
  %buf = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !119, metadata !235), !dbg !291
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !120, metadata !235), !dbg !292
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !293
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !293
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !122, metadata !235), !dbg !294
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* %fn) #8, !dbg !295
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !296, !tbaa !275
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* %1) #8, !dbg !297
  %5 = call %struct.__sFILE* @"\01_popen"(i8* %1, i8* %mode) #8, !dbg !298
  call void @llvm.dbg.value(metadata %struct.__sFILE* %5, i64 0, metadata !121, metadata !235), !dbg !300
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !301
  br i1 %6, label %7, label %8, !dbg !302

; <label>:7                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %fn) #8, !dbg !303
  br label %8, !dbg !303

; <label>:8                                       ; preds = %7, %0
  call void @llvm.dbg.value(metadata %struct.__sFILE* %5, i64 0, metadata !82, metadata !235) #6, !dbg !304
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 84, i32 1, i32 16) #8, !dbg !306
  %10 = bitcast i8* %9 to %struct.__sFILE**, !dbg !307
  store %struct.__sFILE* %5, %struct.__sFILE** %10, align 8, !dbg !308, !tbaa !247
  %11 = getelementptr inbounds i8* %9, i64 8, !dbg !309
  %12 = bitcast i8* %11 to %struct.t_pstack**, !dbg !309
  store %struct.t_pstack* null, %struct.t_pstack** %12, align 8, !dbg !310, !tbaa !254
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !311
  ret %struct.__sFILE* %5, !dbg !311
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fexist(i8* %fname) #2 {
  tail call void @llvm.dbg.value(metadata i8* %fname, i64 0, metadata !127, metadata !235), !dbg !312
  %1 = icmp eq i8* %fname, null, !dbg !313
  br i1 %1, label %7, label %2, !dbg !315

; <label>:2                                       ; preds = %0
  %3 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fname, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !316
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %3, i64 0, metadata !128, metadata !235), !dbg !317
  %4 = icmp eq %struct.__sFILE* %3, null, !dbg !318
  br i1 %4, label %7, label %5, !dbg !320

; <label>:5                                       ; preds = %2
  %6 = tail call i32 @fclose(%struct.__sFILE* %3) #8, !dbg !321
  br label %7, !dbg !323

; <label>:7                                       ; preds = %2, %0, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %0 ], [ 0, %2 ]
  ret i32 %.0, !dbg !324
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @eof(%struct.__sFILE* nocapture %fp) #2 {
  %data = alloca [4 x i8], align 1
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !131, metadata !235), !dbg !325
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %data, metadata !132, metadata !235), !dbg !326
  %1 = getelementptr inbounds [4 x i8]* %data, i64 0, i64 0, !dbg !327
  %2 = call i64 @fread(i8* %1, i64 1, i64 1, %struct.__sFILE* %fp) #8, !dbg !331
  %3 = trunc i64 %2 to i32, !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !136, metadata !235), !dbg !332
  %4 = icmp eq i32 %3, 1, !dbg !333
  br i1 %4, label %5, label %7, !dbg !334

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @fseek(%struct.__sFILE* %fp, i64 -1, i32 1) #8, !dbg !335
  br label %7, !dbg !335

; <label>:7                                       ; preds = %0, %5
  %8 = icmp eq i32 %3, 0, !dbg !336
  %9 = zext i1 %8 to i32, !dbg !336
  ret i32 %9, !dbg !337
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct.__sFILE* nocapture, i64, i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @backup_fn(i8* nocapture readonly %file) #2 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !141, metadata !235), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !143, metadata !235), !dbg !339
  %1 = tail call i64 @strlen(i8* %file) #8, !dbg !340
  %2 = add i64 %1, 4294967295, !dbg !342
  %3 = trunc i64 %2 to i32, !dbg !340
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !142, metadata !235), !dbg !343
  %4 = icmp sgt i32 %3, 0, !dbg !344
  br i1 %4, label %.lr.ph, label %.critedge2, !dbg !346

.lr.ph:                                           ; preds = %0
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 32
  br label %8, !dbg !346

; <label>:6                                       ; preds = %8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !346
  %7 = icmp sgt i64 %indvars.iv, 1, !dbg !344
  br i1 %7, label %8, label %.critedge2, !dbg !346

; <label>:8                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %9 = getelementptr inbounds i8* %file, i64 %indvars.iv, !dbg !347
  %10 = load i8* %9, align 1, !dbg !347, !tbaa !348
  %11 = icmp eq i8 %10, 47, !dbg !349
  br i1 %11, label %.critedge, label %6, !dbg !350

.critedge:                                        ; preds = %8
  %12 = tail call i8* @strdup(i8* %file) #8, !dbg !351
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !144, metadata !235), !dbg !354
  %13 = getelementptr inbounds i8* %12, i64 %indvars.iv, !dbg !355
  store i8 0, i8* %13, align 1, !dbg !356, !tbaa !348
  %.sum = add nsw i64 %indvars.iv, 1, !dbg !357
  %14 = getelementptr inbounds i8* %file, i64 %.sum, !dbg !357
  %15 = tail call i8* @strdup(i8* %14) #8, !dbg !358
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !145, metadata !235), !dbg !359
  br label %.preheader, !dbg !360

.critedge2:                                       ; preds = %6, %0
  %16 = tail call i8* @strdup(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #8, !dbg !361
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !144, metadata !235), !dbg !354
  %17 = tail call i8* @strdup(i8* %file) #8, !dbg !363
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !145, metadata !235), !dbg !359
  br label %.preheader

.preheader:                                       ; preds = %.critedge2, %.critedge
  %directory.0.ph = phi i8* [ %16, %.critedge2 ], [ %12, %.critedge ]
  %fn.0.ph = phi i8* [ %17, %.critedge2 ], [ %15, %.critedge ]
  br label %18, !dbg !364

; <label>:18                                      ; preds = %.preheader, %22
  %count.0 = phi i32 [ %20, %22 ], [ 1, %.preheader ]
  %19 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* %directory.0.ph, i8* %fn.0.ph, i32 %count.0) #8, !dbg !364
  %20 = add nuw nsw i32 %count.0, 1, !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !143, metadata !235), !dbg !339
  %21 = icmp slt i32 %20, 128, !dbg !367
  br i1 %21, label %22, label %.critedge1, !dbg !368

; <label>:22                                      ; preds = %18
  %23 = tail call i32 @fexist(i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0)) #9, !dbg !369
  %24 = icmp eq i32 %23, 0, !dbg !368
  br i1 %24, label %.critedge1.thread, label %18, !dbg !370

.critedge1:                                       ; preds = %18
  %25 = icmp eq i32 %20, 128, !dbg !371
  br i1 %25, label %26, label %.critedge1.thread, !dbg !373

; <label>:26                                      ; preds = %.critedge1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), i32 128, i8* %fn.0.ph) #8, !dbg !374
  br label %.critedge1.thread, !dbg !374

.critedge1.thread:                                ; preds = %22, %26, %.critedge1
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 266, i8* %directory.0.ph) #8, !dbg !375
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 267, i8* %fn.0.ph) #8, !dbg !376
  ret i8* getelementptr inbounds ([256 x i8]* @backup_fn.buf, i64 0, i64 0), !dbg !377
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @ffopen(i8* %file, i8* %mode) #2 {
  %buf = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !148, metadata !235), !dbg !378
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !149, metadata !235), !dbg !379
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !150, metadata !235), !dbg !380
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !381
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !381
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !151, metadata !235), !dbg !382
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !153, metadata !235), !dbg !383
  %2 = load i8* %mode, align 1, !dbg !384, !tbaa !348
  %3 = icmp eq i8 %2, 114, !dbg !385
  %4 = call i8* @__strcpy_chk(i8* %1, i8* %file, i64 256) #8, !dbg !386
  %5 = call i32 @fexist(i8* %1) #9, !dbg !387
  %6 = icmp eq i32 %5, 0, !dbg !387
  %or.cond = and i1 %3, %6, !dbg !389
  br i1 %or.cond, label %14, label %7, !dbg !389

; <label>:7                                       ; preds = %0
  %8 = call %struct.__sFILE* @"\01_fopen"(i8* %1, i8* %mode) #8, !dbg !390
  call void @llvm.dbg.value(metadata %struct.__sFILE* %8, i64 0, metadata !150, metadata !235), !dbg !380
  %9 = icmp eq %struct.__sFILE* %8, null, !dbg !393
  br i1 %9, label %10, label %11, !dbg !394

; <label>:10                                      ; preds = %7
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), i8* %1) #8, !dbg !395
  br label %11, !dbg !395

; <label>:11                                      ; preds = %10, %7
  call void @_where(i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 297) #8, !dbg !396
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !153, metadata !235), !dbg !383
  %.b = load i1* @bUnbuffered, align 1
  br i1 %.b, label %12, label %13, !dbg !397

; <label>:12                                      ; preds = %11
  call void @setbuf(%struct.__sFILE* %8, i8* null) #8, !dbg !399
  br label %13, !dbg !399

; <label>:13                                      ; preds = %12, %11
  call void @_where(i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 320) #8, !dbg !402
  br label %27, !dbg !403

; <label>:14                                      ; preds = %0
  %15 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* %file) #8, !dbg !404
  %16 = call i32 @fexist(i8* %1) #9, !dbg !406
  %17 = icmp eq i32 %16, 0, !dbg !406
  br i1 %17, label %20, label %18, !dbg !408

; <label>:18                                      ; preds = %14
  %19 = call %struct.__sFILE* @uncompress(i8* %1, i8* %mode) #9, !dbg !409
  call void @llvm.dbg.value(metadata %struct.__sFILE* %19, i64 0, metadata !150, metadata !235), !dbg !380
  br label %27, !dbg !411

; <label>:20                                      ; preds = %14
  %21 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* %file) #8, !dbg !412
  %22 = call i32 @fexist(i8* %1) #9, !dbg !414
  %23 = icmp eq i32 %22, 0, !dbg !414
  br i1 %23, label %26, label %24, !dbg !416

; <label>:24                                      ; preds = %20
  %25 = call %struct.__sFILE* @gunzip(i8* %1, i8* %mode) #9, !dbg !417
  call void @llvm.dbg.value(metadata %struct.__sFILE* %25, i64 0, metadata !150, metadata !235), !dbg !380
  br label %27, !dbg !419

; <label>:26                                      ; preds = %20
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %file) #8, !dbg !420
  br label %27

; <label>:27                                      ; preds = %18, %26, %24, %13
  %ff.0 = phi %struct.__sFILE* [ %19, %18 ], [ %25, %24 ], [ null, %26 ], [ %8, %13 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !421
  ret %struct.__sFILE* %ff.0, !dbg !421
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: optsize
declare void @_where(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @setbuf(%struct.__sFILE* nocapture, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @search_subdirs(i8* %parent, i8* %libdir) #2 {
  tail call void @llvm.dbg.value(metadata i8* %parent, i64 0, metadata !161, metadata !235), !dbg !422
  tail call void @llvm.dbg.value(metadata i8* %libdir, i64 0, metadata !162, metadata !235), !dbg !423
  %1 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %libdir, i1 false), !dbg !424
  %2 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47) #8, !dbg !424
  %3 = tail call i32 @fexist(i8* %libdir) #9, !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !164, metadata !235), !dbg !426
  %4 = icmp eq i32 %3, 0, !dbg !427
  br i1 %4, label %5, label %.thread3, !dbg !429

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i32 47) #8, !dbg !430
  %7 = tail call i32 @fexist(i8* %libdir) #9, !dbg !432
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !164, metadata !235), !dbg !426
  %8 = icmp eq i32 %7, 0, !dbg !433
  br i1 %8, label %9, label %.thread3, !dbg !435

; <label>:9                                       ; preds = %5
  %10 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i8* %parent, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #8, !dbg !436
  %11 = tail call i32 @fexist(i8* %libdir) #9, !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !164, metadata !235), !dbg !426
  %12 = icmp eq i32 %11, 0, !dbg !439
  br i1 %12, label %13, label %.thread3, !dbg !441

; <label>:13                                      ; preds = %9
  %14 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %libdir, i32 0, i64 %1, i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0), i8* %parent, i32 47, i32 47, i32 47, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 47, i32 47) #8, !dbg !442
  %15 = tail call i32 @fexist(i8* %libdir) #9, !dbg !444
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !164, metadata !235), !dbg !426
  %16 = icmp eq i32 %15, 0, !dbg !445
  br i1 %16, label %18, label %.thread3, !dbg !447

.thread3:                                         ; preds = %0, %5, %9, %13
  %found.24 = phi i32 [ %15, %13 ], [ %11, %9 ], [ %7, %5 ], [ %3, %0 ]
  %17 = tail call i8* @strrchr(i8* %libdir, i32 47) #8, !dbg !448
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !163, metadata !235), !dbg !450
  store i8 0, i8* %17, align 1, !dbg !451, !tbaa !348
  br label %18, !dbg !452

; <label>:18                                      ; preds = %13, %.thread3
  %found.25 = phi i32 [ 0, %13 ], [ %found.24, %.thread3 ]
  ret i32 %found.25, !dbg !453
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @get_libdir(i8* nocapture readnone %libdir) #5 {
  tail call void @llvm.dbg.value(metadata i8* %libdir, i64 0, metadata !167, metadata !235), !dbg !454
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !179, metadata !235), !dbg !455
  ret i32 0, !dbg !456
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @low_libfn(i8* %file, i32 %bFatal) #2 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !185, metadata !235), !dbg !457
  tail call void @llvm.dbg.value(metadata i32 %bFatal, i64 0, metadata !186, metadata !235), !dbg !458
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !187, metadata !235), !dbg !459
  %1 = tail call i32 @fexist(i8* %file) #9, !dbg !460
  %2 = icmp eq i32 %1, 0, !dbg !460
  %.file = select i1 %2, i8* null, i8* %file
  ret i8* %.file, !dbg !462
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @low_libopen(i8* %file, i32 %bFatal) #2 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !200, metadata !235), !dbg !463
  tail call void @llvm.dbg.value(metadata i32 %bFatal, i64 0, metadata !201, metadata !235), !dbg !464
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !185, metadata !235) #6, !dbg !465
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !186, metadata !235) #6, !dbg !467
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !187, metadata !235) #6, !dbg !468
  %1 = tail call i32 @fexist(i8* %file) #8, !dbg !469
  %2 = icmp eq i32 %1, 0, !dbg !469
  %3 = icmp eq i8* %file, null, !dbg !470
  %4 = or i1 %3, %2, !dbg !470
  br i1 %4, label %12, label %5, !dbg !472

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %bFatal, 0, !dbg !473
  br i1 %6, label %10, label %7, !dbg !476

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !477, !tbaa !275
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0), i8* %file) #8, !dbg !478
  br label %10, !dbg !478

; <label>:10                                      ; preds = %5, %7
  %11 = tail call %struct.__sFILE* @"\01_fopen"(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !479
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %11, i64 0, metadata !202, metadata !235), !dbg !480
  br label %12

; <label>:12                                      ; preds = %0, %10
  %ff.0 = phi %struct.__sFILE* [ %11, %10 ], [ null, %0 ]
  ret %struct.__sFILE* %ff.0, !dbg !481
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @libfn(i8* %file) #2 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !206, metadata !235), !dbg !482
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !185, metadata !235) #6, !dbg !483
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !186, metadata !235) #6, !dbg !485
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !187, metadata !235) #6, !dbg !486
  %1 = tail call i32 @fexist(i8* %file) #8, !dbg !487
  %2 = icmp eq i32 %1, 0, !dbg !487
  %.file.i = select i1 %2, i8* null, i8* %file, !dbg !488
  ret i8* %.file.i, !dbg !489
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @libopen(i8* %file) #2 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !211, metadata !235), !dbg !490
  %1 = tail call %struct.__sFILE* @low_libopen(i8* %file, i32 1) #9, !dbg !491
  ret %struct.__sFILE* %1, !dbg !492
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tmpnam(i8* %buf) #2 {
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !216, metadata !235), !dbg !493
  %1 = tail call i64 @strlen(i8* %buf) #8, !dbg !494
  %2 = trunc i64 %1 to i32, !dbg !494
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !218, metadata !235), !dbg !496
  %3 = icmp slt i32 %2, 7, !dbg !497
  br i1 %3, label %4, label %5, !dbg !498

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !499
  br label %5, !dbg !499

; <label>:5                                       ; preds = %4, %0
  %6 = shl i64 %1, 32
  %sext = add i64 %6, -25769803776
  %7 = ashr exact i64 %sext, 32
  %scevgep = getelementptr i8* %buf, i64 %7
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 88, i64 6, i32 1, i1 false), !dbg !500
  %8 = tail call i32 @mkstemp(i8* %buf) #8, !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !219, metadata !235), !dbg !505
  switch i32 %8, label %11 [
    i32 22, label %9
    i32 17, label %10
  ], !dbg !506

; <label>:9                                       ; preds = %5
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str26, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 599) #8, !dbg !507
  br label %11, !dbg !507

; <label>:10                                      ; preds = %5
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0), i8* %buf, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 601) #8, !dbg !509
  br label %11, !dbg !509

; <label>:11                                      ; preds = %5, %10, %9
  %12 = tail call i32 @"\01_close"(i32 %8) #8, !dbg !511
  ret void, !dbg !512
}

; Function Attrs: optsize
declare i32 @mkstemp(i8*) #3

; Function Attrs: optsize
declare i32 @"\01_close"(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!231, !232, !233}
!llvm.ident = !{!234}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !220, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/futil.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !13, !16, !91, !96, !100, !106, !117, !123, !129, !137, !146, !157, !165, !181, !196, !204, !207, !212}
!6 = !DISubprogram(name: "__sigbits", scope: !7, file: !7, line: 114, type: !8, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !11)
!7 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !6, file: !7, line: 114, type: !10)
!13 = !DISubprogram(name: "no_buffers", scope: !1, file: !1, line: 75, type: !14, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @no_buffers, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DISubprogram(name: "push_ps", scope: !1, file: !1, line: 80, type: !17, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @push_ps, variables: !81)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 153, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !21, line: 122, size: 1216, align: 64, elements: !23)
!23 = !{!24, !27, !28, !29, !31, !32, !37, !38, !39, !43, !49, !59, !65, !66, !69, !70, !74, !78, !79, !80}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !21, line: 123, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !21, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !21, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !21, line: 126, baseType: !30, size: 16, align: 16, offset: 128)
!30 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !21, line: 127, baseType: !30, size: 16, align: 16, offset: 144)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !21, line: 128, baseType: !33, size: 128, align: 64, offset: 192)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !21, line: 88, size: 128, align: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !33, file: !21, line: 89, baseType: !25, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !33, file: !21, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !21, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !21, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !21, line: 133, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!10, !4}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !21, line: 134, baseType: !44, size: 64, align: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!10, !4, !47, !10}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !21, line: 135, baseType: !50, size: 64, align: 64, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !4, !53, !10}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !21, line: 77, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !55, line: 71, baseType: !56)
!55 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !57, line: 46, baseType: !58)
!57 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!58 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !21, line: 136, baseType: !60, size: 64, align: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!10, !4, !63, !10}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !21, line: 139, baseType: !33, size: 128, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !22, file: !21, line: 140, baseType: !67, size: 64, align: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !21, line: 94, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !21, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !21, line: 144, baseType: !71, size: 24, align: 8, offset: 928)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !21, line: 145, baseType: !75, size: 8, align: 8, offset: 952)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !21, line: 148, baseType: !33, size: 128, align: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !21, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !21, line: 152, baseType: !53, size: 64, align: 64, offset: 1152)
!81 = !{!82, !83}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !16, file: !1, line: 80, type: !19)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !16, file: !1, line: 82, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pstack", file: !1, line: 70, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "t_pstack", file: !1, line: 67, size: 128, align: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !86, file: !1, line: 68, baseType: !19, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !86, file: !1, line: 69, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!91 = !DISubprogram(name: "ffclose", scope: !1, file: !1, line: 93, type: !17, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @ffclose, variables: !92)
!92 = !{!93, !94, !95}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !91, file: !1, line: 93, type: !19)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !91, file: !1, line: 95, type: !84)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !91, file: !1, line: 95, type: !84)
!96 = !DISubprogram(name: "frewind", scope: !1, file: !1, line: 127, type: !17, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @frewind, variables: !97)
!97 = !{!98, !99}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !96, file: !1, line: 127, type: !19)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !96, file: !1, line: 129, type: !84)
!100 = !DISubprogram(name: "is_pipe", scope: !1, file: !1, line: 142, type: !101, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*)* @is_pipe, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!10, !19}
!103 = !{!104, !105}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !100, file: !1, line: 142, type: !19)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !100, file: !1, line: 144, type: !84)
!106 = !DISubprogram(name: "uncompress", scope: !1, file: !1, line: 173, type: !107, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, i8*)* @uncompress, variables: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!19, !47, !47}
!109 = !{!110, !111, !112, !113}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !106, file: !1, line: 173, type: !47)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !106, file: !1, line: 173, type: !47)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !106, file: !1, line: 175, type: !19)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !106, file: !1, line: 176, type: !114)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 256)
!117 = !DISubprogram(name: "gunzip", scope: !1, file: !1, line: 187, type: !107, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, i8*)* @gunzip, variables: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !117, file: !1, line: 187, type: !47)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !117, file: !1, line: 187, type: !47)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !117, file: !1, line: 189, type: !19)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !117, file: !1, line: 190, type: !114)
!123 = !DISubprogram(name: "fexist", scope: !1, file: !1, line: 201, type: !124, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @fexist, variables: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!10, !47}
!126 = !{!127, !128}
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 1, scope: !123, file: !1, line: 201, type: !47)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "test", scope: !123, file: !1, line: 203, type: !19)
!129 = !DISubprogram(name: "eof", scope: !1, file: !1, line: 216, type: !101, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*)* @eof, variables: !130)
!130 = !{!131, !132, !136}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !129, file: !1, line: 216, type: !19)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !129, file: !1, line: 218, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, align: 8, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "beof", scope: !129, file: !1, line: 219, type: !10)
!137 = !DISubprogram(name: "backup_fn", scope: !1, file: !1, line: 230, type: !138, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @backup_fn, variables: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!47, !47}
!140 = !{!141, !142, !143, !144, !145}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !137, file: !1, line: 230, type: !47)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !137, file: !1, line: 237, type: !10)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !137, file: !1, line: 237, type: !10)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "directory", scope: !137, file: !1, line: 238, type: !47)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fn", scope: !137, file: !1, line: 238, type: !47)
!146 = !DISubprogram(name: "ffopen", scope: !1, file: !1, line: 272, type: !107, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, i8*)* @ffopen, variables: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !146, file: !1, line: 272, type: !47)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !146, file: !1, line: 272, type: !47)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ff", scope: !146, file: !1, line: 274, type: !19)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !146, file: !1, line: 275, type: !114)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bf", scope: !146, file: !1, line: 275, type: !47)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !146, file: !1, line: 275, type: !47)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !146, file: !1, line: 275, type: !47)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRead", scope: !146, file: !1, line: 276, type: !10)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bs", scope: !146, file: !1, line: 277, type: !10)
!157 = !DISubprogram(name: "search_subdirs", scope: !1, file: !1, line: 341, type: !158, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @search_subdirs, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!10, !47, !47}
!160 = !{!161, !162, !163, !164}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "parent", arg: 1, scope: !157, file: !1, line: 341, type: !47)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "libdir", arg: 2, scope: !157, file: !1, line: 341, type: !47)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !157, file: !1, line: 343, type: !47)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !157, file: !1, line: 344, type: !10)
!165 = !DISubprogram(name: "get_libdir", scope: !1, file: !1, line: 392, type: !124, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @get_libdir, variables: !166)
!166 = !{!167, !168, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "libdir", arg: 1, scope: !165, file: !1, line: 392, type: !47)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_name", scope: !165, file: !1, line: 394, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 4096, align: 8, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 512)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !165, file: !1, line: 395, type: !169)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "full_path", scope: !165, file: !1, line: 396, type: !169)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "test_file", scope: !165, file: !1, line: 397, type: !169)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "system_path", scope: !165, file: !1, line: 398, type: !169)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !165, file: !1, line: 399, type: !47)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !165, file: !1, line: 399, type: !47)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !165, file: !1, line: 399, type: !47)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !165, file: !1, line: 400, type: !10)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !165, file: !1, line: 401, type: !10)
!181 = !DISubprogram(name: "low_libfn", scope: !1, file: !1, line: 494, type: !182, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @low_libfn, variables: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!47, !47, !10}
!184 = !{!185, !186, !187, !188, !189, !190, !191, !195}
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !181, file: !1, line: 494, type: !47)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFatal", arg: 2, scope: !181, file: !1, line: 494, type: !10)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !181, file: !1, line: 496, type: !47)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lib", scope: !181, file: !1, line: 497, type: !47)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !181, file: !1, line: 497, type: !47)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !181, file: !1, line: 502, type: !47)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmppath", scope: !181, file: !1, line: 502, type: !192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32768, align: 8, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 4096)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !181, file: !1, line: 503, type: !10)
!196 = !DISubprogram(name: "low_libopen", scope: !1, file: !1, line: 552, type: !197, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, i32)* @low_libopen, variables: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!19, !47, !10}
!199 = !{!200, !201, !202, !203}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !196, file: !1, line: 552, type: !47)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFatal", arg: 2, scope: !196, file: !1, line: 552, type: !10)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ff", scope: !196, file: !1, line: 554, type: !19)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fn", scope: !196, file: !1, line: 555, type: !47)
!204 = !DISubprogram(name: "libfn", scope: !1, file: !1, line: 570, type: !138, isLocal: false, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @libfn, variables: !205)
!205 = !{!206}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !204, file: !1, line: 570, type: !47)
!207 = !DISubprogram(name: "libopen", scope: !1, file: !1, line: 575, type: !208, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*)* @libopen, variables: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!19, !47}
!210 = !{!211}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !207, file: !1, line: 575, type: !47)
!212 = !DISubprogram(name: "gmx_tmpnam", scope: !1, file: !1, line: 580, type: !213, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @gmx_tmpnam, variables: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !47}
!215 = !{!216, !217, !218, !219}
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !212, file: !1, line: 580, type: !47)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !212, file: !1, line: 582, type: !10)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !212, file: !1, line: 582, type: !10)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !212, file: !1, line: 582, type: !10)
!220 = !{!221, !222, !226, !227, !228, !229, !230}
!221 = !DIGlobalVariable(name: "buf", scope: !137, file: !1, line: 239, type: !114, isLocal: true, isDefinition: true, variable: [256 x i8]* @backup_fn.buf)
!222 = !DIGlobalVariable(name: "buf", scope: !181, file: !1, line: 498, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8192, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 1024)
!226 = !DIGlobalVariable(name: "libpath", scope: !181, file: !1, line: 499, type: !192, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariable(name: "bFirst", scope: !181, file: !1, line: 500, type: !10, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariable(name: "env_is_set", scope: !181, file: !1, line: 501, type: !10, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariable(name: "bUnbuffered", scope: !0, file: !1, line: 73, type: !10, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariable(name: "pstack", scope: !0, file: !1, line: 72, type: !84, isLocal: true, isDefinition: true)
!231 = !{i32 2, !"Dwarf Version", i32 2}
!232 = !{i32 2, !"Debug Info Version", i32 700000003}
!233 = !{i32 1, !"PIC Level", i32 2}
!234 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!235 = !DIExpression()
!236 = !DILocation(line: 114, column: 15, scope: !6)
!237 = !DILocation(line: 116, column: 20, scope: !6)
!238 = !DILocation(line: 116, column: 12, scope: !6)
!239 = !DILocation(line: 116, column: 57, scope: !6)
!240 = !DILocation(line: 116, column: 45, scope: !6)
!241 = !DILocation(line: 116, column: 5, scope: !6)
!242 = !DILocation(line: 78, column: 1, scope: !13)
!243 = !DILocation(line: 80, column: 20, scope: !16)
!244 = !DILocation(line: 84, column: 3, scope: !16)
!245 = !DILocation(line: 85, column: 7, scope: !16)
!246 = !DILocation(line: 85, column: 12, scope: !16)
!247 = !{!248, !249, i64 0}
!248 = !{!"t_pstack", !249, i64 0, !249, i64 8}
!249 = !{!"any pointer", !250, i64 0}
!250 = !{!"omnipotent char", !251, i64 0}
!251 = !{!"Simple C/C++ TBAA"}
!252 = !DILocation(line: 86, column: 7, scope: !16)
!253 = !DILocation(line: 86, column: 12, scope: !16)
!254 = !{!248, !249, i64 8}
!255 = !DILocation(line: 87, column: 1, scope: !16)
!256 = !DILocation(line: 93, column: 20, scope: !91)
!257 = !DILocation(line: 95, column: 13, scope: !91)
!258 = !DILocation(line: 99, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 98, column: 19)
!260 = distinct !DILexicalBlock(scope: !91, file: !1, line: 98, column: 7)
!261 = !DILocation(line: 121, column: 1, scope: !91)
!262 = !DILocation(line: 127, column: 20, scope: !96)
!263 = !DILocation(line: 129, column: 13, scope: !96)
!264 = !DILocation(line: 139, column: 3, scope: !96)
!265 = !DILocation(line: 140, column: 1, scope: !96)
!266 = !DILocation(line: 142, column: 20, scope: !100)
!267 = !DILocation(line: 144, column: 13, scope: !100)
!268 = !DILocation(line: 154, column: 1, scope: !100)
!269 = !DILocation(line: 173, column: 24, scope: !106)
!270 = !DILocation(line: 173, column: 33, scope: !106)
!271 = !DILocation(line: 176, column: 3, scope: !106)
!272 = !DILocation(line: 176, column: 8, scope: !106)
!273 = !DILocation(line: 178, column: 3, scope: !106)
!274 = !DILocation(line: 179, column: 11, scope: !106)
!275 = !{!249, !249, i64 0}
!276 = !DILocation(line: 179, column: 3, scope: !106)
!277 = !DILocation(line: 180, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !106, file: !1, line: 180, column: 7)
!279 = !DILocation(line: 175, column: 9, scope: !106)
!280 = !DILocation(line: 180, column: 28, scope: !278)
!281 = !DILocation(line: 180, column: 7, scope: !106)
!282 = !DILocation(line: 181, column: 5, scope: !278)
!283 = !DILocation(line: 80, column: 20, scope: !16, inlinedAt: !284)
!284 = distinct !DILocation(line: 182, column: 3, scope: !106)
!285 = !DILocation(line: 84, column: 3, scope: !16, inlinedAt: !284)
!286 = !DILocation(line: 85, column: 7, scope: !16, inlinedAt: !284)
!287 = !DILocation(line: 85, column: 12, scope: !16, inlinedAt: !284)
!288 = !DILocation(line: 86, column: 7, scope: !16, inlinedAt: !284)
!289 = !DILocation(line: 86, column: 12, scope: !16, inlinedAt: !284)
!290 = !DILocation(line: 185, column: 1, scope: !106)
!291 = !DILocation(line: 187, column: 20, scope: !117)
!292 = !DILocation(line: 187, column: 29, scope: !117)
!293 = !DILocation(line: 190, column: 3, scope: !117)
!294 = !DILocation(line: 190, column: 8, scope: !117)
!295 = !DILocation(line: 192, column: 3, scope: !117)
!296 = !DILocation(line: 193, column: 11, scope: !117)
!297 = !DILocation(line: 193, column: 3, scope: !117)
!298 = !DILocation(line: 194, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !117, file: !1, line: 194, column: 7)
!300 = !DILocation(line: 189, column: 9, scope: !117)
!301 = !DILocation(line: 194, column: 28, scope: !299)
!302 = !DILocation(line: 194, column: 7, scope: !117)
!303 = !DILocation(line: 195, column: 5, scope: !299)
!304 = !DILocation(line: 80, column: 20, scope: !16, inlinedAt: !305)
!305 = distinct !DILocation(line: 196, column: 3, scope: !117)
!306 = !DILocation(line: 84, column: 3, scope: !16, inlinedAt: !305)
!307 = !DILocation(line: 85, column: 7, scope: !16, inlinedAt: !305)
!308 = !DILocation(line: 85, column: 12, scope: !16, inlinedAt: !305)
!309 = !DILocation(line: 86, column: 7, scope: !16, inlinedAt: !305)
!310 = !DILocation(line: 86, column: 12, scope: !16, inlinedAt: !305)
!311 = !DILocation(line: 199, column: 1, scope: !117)
!312 = !DILocation(line: 201, column: 19, scope: !123)
!313 = !DILocation(line: 205, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !123, file: !1, line: 205, column: 7)
!315 = !DILocation(line: 205, column: 7, scope: !123)
!316 = !DILocation(line: 207, column: 8, scope: !123)
!317 = !DILocation(line: 203, column: 9, scope: !123)
!318 = !DILocation(line: 208, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !123, file: !1, line: 208, column: 7)
!320 = !DILocation(line: 208, column: 7, scope: !123)
!321 = !DILocation(line: 211, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !1, line: 210, column: 8)
!323 = !DILocation(line: 212, column: 5, scope: !322)
!324 = !DILocation(line: 214, column: 1, scope: !123)
!325 = !DILocation(line: 216, column: 16, scope: !129)
!326 = !DILocation(line: 218, column: 8, scope: !129)
!327 = !DILocation(line: 224, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 224, column: 9)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 223, column: 8)
!330 = distinct !DILexicalBlock(scope: !129, file: !1, line: 221, column: 7)
!331 = !DILocation(line: 224, column: 15, scope: !328)
!332 = !DILocation(line: 219, column: 8, scope: !129)
!333 = !DILocation(line: 224, column: 34, scope: !328)
!334 = !DILocation(line: 224, column: 9, scope: !329)
!335 = !DILocation(line: 225, column: 7, scope: !328)
!336 = !DILocation(line: 226, column: 12, scope: !329)
!337 = !DILocation(line: 228, column: 1, scope: !129)
!338 = !DILocation(line: 230, column: 23, scope: !137)
!339 = !DILocation(line: 237, column: 17, scope: !137)
!340 = !DILocation(line: 241, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !137, file: !1, line: 241, column: 3)
!342 = !DILocation(line: 241, column: 21, scope: !341)
!343 = !DILocation(line: 237, column: 15, scope: !137)
!344 = !DILocation(line: 241, column: 29, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !1, line: 241, column: 3)
!346 = !DILocation(line: 241, column: 34, scope: !345)
!347 = !DILocation(line: 241, column: 38, scope: !345)
!348 = !{!250, !250, i64 0}
!349 = !DILocation(line: 241, column: 46, scope: !345)
!350 = !DILocation(line: 241, column: 3, scope: !341)
!351 = !DILocation(line: 248, column: 20, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 247, column: 14)
!353 = distinct !DILexicalBlock(scope: !137, file: !1, line: 247, column: 7)
!354 = !DILocation(line: 238, column: 16, scope: !137)
!355 = !DILocation(line: 249, column: 5, scope: !352)
!356 = !DILocation(line: 249, column: 18, scope: !352)
!357 = !DILocation(line: 250, column: 33, scope: !352)
!358 = !DILocation(line: 250, column: 20, scope: !352)
!359 = !DILocation(line: 238, column: 27, scope: !137)
!360 = !DILocation(line: 251, column: 3, scope: !352)
!361 = !DILocation(line: 253, column: 20, scope: !362)
!362 = distinct !DILexicalBlock(scope: !353, file: !1, line: 252, column: 8)
!363 = !DILocation(line: 254, column: 20, scope: !362)
!364 = !DILocation(line: 257, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !137, file: !1, line: 256, column: 6)
!366 = !DILocation(line: 258, column: 10, scope: !365)
!367 = !DILocation(line: 259, column: 19, scope: !137)
!368 = !DILocation(line: 259, column: 31, scope: !137)
!369 = !DILocation(line: 259, column: 34, scope: !137)
!370 = !DILocation(line: 259, column: 3, scope: !365)
!371 = !DILocation(line: 262, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !137, file: !1, line: 262, column: 7)
!373 = !DILocation(line: 262, column: 7, scope: !137)
!374 = !DILocation(line: 263, column: 5, scope: !372)
!375 = !DILocation(line: 266, column: 3, scope: !137)
!376 = !DILocation(line: 267, column: 3, scope: !137)
!377 = !DILocation(line: 269, column: 3, scope: !137)
!378 = !DILocation(line: 272, column: 20, scope: !146)
!379 = !DILocation(line: 272, column: 31, scope: !146)
!380 = !DILocation(line: 274, column: 9, scope: !146)
!381 = !DILocation(line: 275, column: 3, scope: !146)
!382 = !DILocation(line: 275, column: 8, scope: !146)
!383 = !DILocation(line: 275, column: 22, scope: !146)
!384 = !DILocation(line: 292, column: 10, scope: !146)
!385 = !DILocation(line: 292, column: 17, scope: !146)
!386 = !DILocation(line: 293, column: 3, scope: !146)
!387 = !DILocation(line: 294, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !146, file: !1, line: 294, column: 7)
!389 = !DILocation(line: 294, column: 19, scope: !388)
!390 = !DILocation(line: 295, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 295, column: 9)
!392 = distinct !DILexicalBlock(scope: !388, file: !1, line: 294, column: 30)
!393 = !DILocation(line: 295, column: 29, scope: !391)
!394 = !DILocation(line: 295, column: 9, scope: !392)
!395 = !DILocation(line: 296, column: 7, scope: !391)
!396 = !DILocation(line: 297, column: 5, scope: !392)
!397 = !DILocation(line: 306, column: 21, scope: !398)
!398 = distinct !DILexicalBlock(scope: !392, file: !1, line: 306, column: 9)
!399 = !DILocation(line: 313, column: 2, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 312, column: 11)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 306, column: 43)
!402 = !DILocation(line: 320, column: 5, scope: !392)
!403 = !DILocation(line: 321, column: 3, scope: !392)
!404 = !DILocation(line: 323, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !388, file: !1, line: 322, column: 8)
!406 = !DILocation(line: 324, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !405, file: !1, line: 324, column: 9)
!408 = !DILocation(line: 324, column: 9, scope: !405)
!409 = !DILocation(line: 325, column: 10, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !1, line: 324, column: 22)
!411 = !DILocation(line: 326, column: 5, scope: !410)
!412 = !DILocation(line: 328, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !407, file: !1, line: 327, column: 10)
!414 = !DILocation(line: 329, column: 11, scope: !415)
!415 = distinct !DILexicalBlock(scope: !413, file: !1, line: 329, column: 11)
!416 = !DILocation(line: 329, column: 11, scope: !413)
!417 = !DILocation(line: 330, column: 5, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !1, line: 329, column: 24)
!419 = !DILocation(line: 331, column: 7, scope: !418)
!420 = !DILocation(line: 333, column: 2, scope: !415)
!421 = !DILocation(line: 337, column: 1, scope: !146)
!422 = !DILocation(line: 341, column: 27, scope: !157)
!423 = !DILocation(line: 341, column: 41, scope: !157)
!424 = !DILocation(line: 347, column: 3, scope: !157)
!425 = !DILocation(line: 349, column: 9, scope: !157)
!426 = !DILocation(line: 344, column: 8, scope: !157)
!427 = !DILocation(line: 350, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !157, file: !1, line: 350, column: 6)
!429 = !DILocation(line: 350, column: 6, scope: !157)
!430 = !DILocation(line: 351, column: 5, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !1, line: 350, column: 14)
!432 = !DILocation(line: 354, column: 11, scope: !431)
!433 = !DILocation(line: 356, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !157, file: !1, line: 356, column: 6)
!435 = !DILocation(line: 356, column: 6, scope: !157)
!436 = !DILocation(line: 357, column: 5, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !1, line: 356, column: 14)
!438 = !DILocation(line: 360, column: 11, scope: !437)
!439 = !DILocation(line: 362, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !157, file: !1, line: 362, column: 6)
!441 = !DILocation(line: 362, column: 6, scope: !157)
!442 = !DILocation(line: 363, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 362, column: 14)
!444 = !DILocation(line: 366, column: 13, scope: !443)
!445 = !DILocation(line: 370, column: 6, scope: !446)
!446 = distinct !DILexicalBlock(scope: !157, file: !1, line: 370, column: 6)
!447 = !DILocation(line: 370, column: 6, scope: !157)
!448 = !DILocation(line: 371, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !1, line: 370, column: 13)
!450 = !DILocation(line: 343, column: 9, scope: !157)
!451 = !DILocation(line: 372, column: 9, scope: !449)
!452 = !DILocation(line: 373, column: 3, scope: !449)
!453 = !DILocation(line: 374, column: 3, scope: !157)
!454 = !DILocation(line: 392, column: 23, scope: !165)
!455 = !DILocation(line: 400, column: 8, scope: !165)
!456 = !DILocation(line: 491, column: 1, scope: !165)
!457 = !DILocation(line: 494, column: 23, scope: !181)
!458 = !DILocation(line: 494, column: 34, scope: !181)
!459 = !DILocation(line: 496, column: 9, scope: !181)
!460 = !DILocation(line: 506, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !181, file: !1, line: 506, column: 7)
!462 = !DILocation(line: 547, column: 1, scope: !181)
!463 = !DILocation(line: 552, column: 25, scope: !196)
!464 = !DILocation(line: 552, column: 35, scope: !196)
!465 = !DILocation(line: 494, column: 23, scope: !181, inlinedAt: !466)
!466 = distinct !DILocation(line: 557, column: 6, scope: !196)
!467 = !DILocation(line: 494, column: 34, scope: !181, inlinedAt: !466)
!468 = !DILocation(line: 496, column: 9, scope: !181, inlinedAt: !466)
!469 = !DILocation(line: 506, column: 7, scope: !461, inlinedAt: !466)
!470 = !DILocation(line: 559, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !196, file: !1, line: 559, column: 7)
!472 = !DILocation(line: 559, column: 7, scope: !196)
!473 = !DILocation(line: 562, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 562, column: 9)
!475 = distinct !DILexicalBlock(scope: !471, file: !1, line: 561, column: 10)
!476 = !DILocation(line: 562, column: 9, scope: !475)
!477 = !DILocation(line: 563, column: 15, scope: !474)
!478 = !DILocation(line: 563, column: 7, scope: !474)
!479 = !DILocation(line: 564, column: 8, scope: !475)
!480 = !DILocation(line: 554, column: 9, scope: !196)
!481 = !DILocation(line: 567, column: 3, scope: !196)
!482 = !DILocation(line: 570, column: 19, scope: !204)
!483 = !DILocation(line: 494, column: 23, scope: !181, inlinedAt: !484)
!484 = distinct !DILocation(line: 572, column: 10, scope: !204)
!485 = !DILocation(line: 494, column: 34, scope: !181, inlinedAt: !484)
!486 = !DILocation(line: 496, column: 9, scope: !181, inlinedAt: !484)
!487 = !DILocation(line: 506, column: 7, scope: !461, inlinedAt: !484)
!488 = !DILocation(line: 572, column: 10, scope: !204)
!489 = !DILocation(line: 572, column: 3, scope: !204)
!490 = !DILocation(line: 575, column: 21, scope: !207)
!491 = !DILocation(line: 577, column: 10, scope: !207)
!492 = !DILocation(line: 577, column: 3, scope: !207)
!493 = !DILocation(line: 580, column: 23, scope: !212)
!494 = !DILocation(line: 584, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !212, file: !1, line: 584, column: 7)
!496 = !DILocation(line: 582, column: 9, scope: !212)
!497 = !DILocation(line: 584, column: 27, scope: !495)
!498 = !DILocation(line: 584, column: 7, scope: !212)
!499 = !DILocation(line: 585, column: 5, scope: !495)
!500 = !DILocation(line: 587, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 586, column: 30)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 586, column: 3)
!503 = distinct !DILexicalBlock(scope: !212, file: !1, line: 586, column: 3)
!504 = !DILocation(line: 595, column: 8, scope: !212)
!505 = !DILocation(line: 582, column: 13, scope: !212)
!506 = !DILocation(line: 598, column: 7, scope: !212)
!507 = !DILocation(line: 599, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !212, file: !1, line: 598, column: 7)
!509 = !DILocation(line: 601, column: 5, scope: !510)
!510 = distinct !DILexicalBlock(scope: !508, file: !1, line: 600, column: 12)
!511 = !DILocation(line: 602, column: 3, scope: !212)
!512 = !DILocation(line: 604, column: 1, scope: !212)
