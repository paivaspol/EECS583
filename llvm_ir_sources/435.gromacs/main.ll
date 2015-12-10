; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/main.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@stdlog = global %struct.__sFILE* null, align 8
@gmx_parallel = global i32 0, align 4
@par_fn.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"tpr\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"edr\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"Multi-checking %s... \00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"ibuf\00", align 1
@.str6 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/main.c\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str8 = private unnamed_addr constant [37 x i8] c"\0A%s is not equal for all subsystems\0A\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"  subsystem %d: %d\0A\00", align 1
@.str10 = private unnamed_addr constant [38 x i8] c"The %d subsystems are not compatible\0A\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"Communication error on NODE 0!\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"lognm\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str14 = private unnamed_addr constant [66 x i8] c"Log file opened: nodeid %d, nnodes = %d, host = %s, process = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"mcr\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"fnm[i].fn\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str20 = private unnamed_addr constant [32 x i8] c"(!PAR(cr) && (cr->nodeid != 0))\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str22 = private unnamed_addr constant [9 x i8] c"argv_tmp\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"NODEID=%d argc=%d\0A\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str25 = private unnamed_addr constant [27 x i8] c"Communicating argv[%d]=%s\0A\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"argv_tmp[i]\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !62, metadata !236), !dbg !237
  %1 = icmp sgt i32 %__signo, 32, !dbg !238
  br i1 %1, label %5, label %2, !dbg !239

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !240
  %4 = shl i32 1, %3, !dbg !241
  br label %5, !dbg !239

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !239
  ret i32 %6, !dbg !242
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @par_fn(i8* %base, i32 %ftp, %struct.t_commrec* nocapture readonly %cr) #2 {
  tail call void @llvm.dbg.value(metadata i8* %base, i64 0, metadata !80, metadata !236), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %ftp, i64 0, metadata !81, metadata !236), !dbg !244
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !82, metadata !236), !dbg !245
  %1 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %base, i64 256) #7, !dbg !246
  %2 = tail call i64 @strlen(i8* %base) #7, !dbg !247
  %3 = add i64 %2, -4, !dbg !248
  %4 = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %3, !dbg !249
  store i8 0, i8* %4, align 1, !dbg !250, !tbaa !251
  %5 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !254
  %6 = load i32* %5, align 4, !dbg !254, !tbaa !256
  %7 = icmp sgt i32 %6, 1, !dbg !254
  br i1 %7, label %12, label %8, !dbg !254

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !254
  %10 = load i32* %9, align 4, !dbg !254, !tbaa !259
  %11 = icmp sgt i32 %10, 1, !dbg !254
  br i1 %11, label %12, label %18, !dbg !260

; <label>:12                                      ; preds = %8, %0
  %13 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #7, !dbg !261
  %14 = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %13, !dbg !261
  %15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !261
  %16 = load i32* %15, align 4, !dbg !261, !tbaa !262
  %17 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %14, i32 0, i64 -1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %16) #7, !dbg !261
  br label %18, !dbg !261

; <label>:18                                      ; preds = %12, %8
  %19 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i64 256) #7, !dbg !263
  %20 = icmp eq i32 %ftp, 24, !dbg !264
  br i1 %20, label %25, label %21, !dbg !264

; <label>:21                                      ; preds = %18
  %22 = icmp eq i32 %ftp, 8, !dbg !264
  br i1 %22, label %25, label %23, !dbg !264

; <label>:23                                      ; preds = %21
  %24 = tail call i8* @ftp2ext(i32 %ftp) #7, !dbg !264
  br label %25, !dbg !264

; <label>:25                                      ; preds = %23, %21, %18
  %26 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), %18 ], [ %24, %23 ], [ getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), %21 ], !dbg !264
  %27 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %26, i64 256) #7, !dbg !264
  ret i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), !dbg !265
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #5

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #3

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @check_multi_int(%struct.__sFILE* %log, %struct.t_commrec* %mcr, i32 %val, i8* %name) #2 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !147, metadata !236), !dbg !266
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %mcr, i64 0, metadata !148, metadata !236), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %val, i64 0, metadata !149, metadata !236), !dbg !268
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !150, metadata !236), !dbg !269
  %1 = icmp ne %struct.__sFILE* %log, null, !dbg !270
  br i1 %1, label %2, label %4, !dbg !272

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i8* %name) #7, !dbg !273
  br label %4, !dbg !273

; <label>:4                                       ; preds = %2, %0
  %5 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1, !dbg !274
  %6 = load i32* %5, align 4, !dbg !274, !tbaa !256
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 144, i32 %6, i32 4) #7, !dbg !274
  %8 = bitcast i8* %7 to i32*, !dbg !274
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !151, metadata !236), !dbg !275
  %9 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0, !dbg !276
  %10 = load i32* %9, align 4, !dbg !276, !tbaa !262
  %11 = sext i32 %10 to i64, !dbg !277
  %12 = getelementptr inbounds i32* %8, i64 %11, !dbg !277
  store i32 %val, i32* %12, align 4, !dbg !278, !tbaa !279
  %13 = icmp eq %struct.t_commrec* %mcr, null, !dbg !280
  br i1 %13, label %.preheader, label %14, !dbg !282

; <label>:14                                      ; preds = %4
  %15 = load i32* %5, align 4, !dbg !283, !tbaa !256
  %16 = icmp sgt i32 %15, 1, !dbg !283
  br i1 %16, label %21, label %17, !dbg !283

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 5, !dbg !283
  %19 = load i32* %18, align 4, !dbg !283, !tbaa !259
  %20 = icmp sgt i32 %19, 1, !dbg !283
  br i1 %20, label %21, label %.preheader, !dbg !284

; <label>:21                                      ; preds = %17, %14
  tail call void @gmx_sumi(i32 %15, i32* %8, %struct.t_commrec* %mcr) #7, !dbg !285
  br label %.preheader, !dbg !285

.preheader:                                       ; preds = %4, %21, %17
  %22 = load i32* %5, align 4, !dbg !286, !tbaa !256
  %23 = icmp sgt i32 %22, 1, !dbg !289
  br i1 %23, label %.lr.ph4, label %._crit_edge5, !dbg !290

.lr.ph4:                                          ; preds = %.preheader
  %24 = sext i32 %22 to i64, !dbg !290
  br label %25, !dbg !290

; <label>:25                                      ; preds = %.lr.ph4, %34
  %indvars.iv9 = phi i64 [ 1, %.lr.ph4 ], [ %indvars.iv.next10, %34 ]
  %bCompatible.03 = phi i32 [ 1, %.lr.ph4 ], [ %36, %34 ]
  %26 = icmp eq i32 %bCompatible.03, 0, !dbg !291
  br i1 %26, label %34, label %27, !dbg !292

; <label>:27                                      ; preds = %25
  %28 = add nsw i64 %indvars.iv9, -1, !dbg !293
  %29 = getelementptr inbounds i32* %8, i64 %28, !dbg !294
  %30 = load i32* %29, align 4, !dbg !294, !tbaa !279
  %31 = getelementptr inbounds i32* %8, i64 %indvars.iv9, !dbg !295
  %32 = load i32* %31, align 4, !dbg !295, !tbaa !279
  %33 = icmp eq i32 %30, %32, !dbg !296
  br label %34

; <label>:34                                      ; preds = %25, %27
  %35 = phi i1 [ false, %25 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !154, metadata !236), !dbg !297
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !290
  %37 = icmp slt i64 %indvars.iv.next10, %24, !dbg !289
  br i1 %37, label %25, label %._crit_edge5, !dbg !290

._crit_edge5:                                     ; preds = %34, %.preheader
  %bCompatible.0.lcssa = phi i32 [ 1, %.preheader ], [ %36, %34 ]
  br i1 %1, label %38, label %53, !dbg !298

; <label>:38                                      ; preds = %._crit_edge5
  %39 = icmp eq i32 %bCompatible.0.lcssa, 0, !dbg !299
  br i1 %39, label %42, label %40, !dbg !303

; <label>:40                                      ; preds = %38
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %log), !dbg !304
  br label %53, !dbg !304

; <label>:42                                      ; preds = %38
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str8, i64 0, i64 0), i8* %name) #7, !dbg !305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !236), !dbg !307
  %44 = load i32* %5, align 4, !dbg !308, !tbaa !256
  %45 = icmp sgt i32 %44, 0, !dbg !311
  br i1 %45, label %.lr.ph, label %._crit_edge, !dbg !312

.lr.ph:                                           ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %42 ]
  %46 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !313
  %47 = load i32* %46, align 4, !dbg !313, !tbaa !279
  %48 = trunc i64 %indvars.iv to i32, !dbg !314
  %49 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i32 %48, i32 %47) #7, !dbg !314
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !312
  %50 = load i32* %5, align 4, !dbg !308, !tbaa !256
  %51 = sext i32 %50 to i64, !dbg !311
  %52 = icmp slt i64 %indvars.iv.next, %51, !dbg !311
  br i1 %52, label %.lr.ph, label %._crit_edge, !dbg !312

._crit_edge:                                      ; preds = %.lr.ph, %42
  %.lcssa = phi i32 [ %44, %42 ], [ %50, %.lr.ph ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str10, i64 0, i64 0), i32 %.lcssa) #7, !dbg !315
  br label %53

; <label>:53                                      ; preds = %40, %._crit_edge, %._crit_edge5
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %7) #7, !dbg !316
  ret void, !dbg !317
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #5

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @open_log(i8* %lognm, %struct.t_commrec* nocapture readonly %cr) #2 {
  %len = alloca i32, align 4
  %testlen = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %lognm, i64 0, metadata !159, metadata !236), !dbg !318
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !160, metadata !236), !dbg !319
  %1 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !320
  %2 = load i32* %1, align 4, !dbg !320, !tbaa !256
  %3 = icmp sgt i32 %2, 1, !dbg !322
  br i1 %3, label %4, label %42, !dbg !323

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !324
  %6 = load i32* %5, align 4, !dbg !324, !tbaa !262
  %7 = icmp eq i32 %6, 0, !dbg !324
  br i1 %7, label %8, label %30, !dbg !324

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !324
  %10 = load i32* %9, align 4, !dbg !324, !tbaa !327
  %11 = icmp eq i32 %10, 0, !dbg !324
  br i1 %11, label %12, label %30, !dbg !328

; <label>:12                                      ; preds = %8
  %13 = tail call i64 @strlen(i8* %lognm) #7, !dbg !329
  %14 = add i64 %13, 1, !dbg !331
  %15 = trunc i64 %14 to i32, !dbg !329
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !161, metadata !236), !dbg !332
  store i32 %15, i32* %len, align 4, !dbg !333, !tbaa !279
  %16 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !334
  %17 = load i32* %16, align 4, !dbg !334, !tbaa !335
  %18 = bitcast i32* %len to i8*, !dbg !336
  call void @gmx_txs(i32 %17, i8* %18, i32 4) #7, !dbg !337
  %19 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !338
  %20 = load i32* %19, align 4, !dbg !338, !tbaa !339
  %21 = bitcast i32* %testlen to i8*, !dbg !340
  call void @gmx_rxs(i32 %20, i8* %21, i32 4) #7, !dbg !341
  %22 = load i32* %16, align 4, !dbg !342, !tbaa !335
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !161, metadata !236), !dbg !332
  %23 = load i32* %len, align 4, !dbg !343, !tbaa !279
  call void @gmx_txs(i32 %22, i8* %lognm, i32 %23) #7, !dbg !344
  %24 = load i32* %19, align 4, !dbg !345, !tbaa !339
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !161, metadata !236), !dbg !332
  %25 = load i32* %len, align 4, !dbg !346, !tbaa !279
  call void @gmx_rxs(i32 %24, i8* %lognm, i32 %25) #7, !dbg !347
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !161, metadata !236), !dbg !332
  %26 = load i32* %len, align 4, !dbg !348, !tbaa !279
  call void @llvm.dbg.value(metadata i32* %testlen, i64 0, metadata !162, metadata !236), !dbg !350
  %27 = load i32* %testlen, align 4, !dbg !351, !tbaa !279
  %28 = icmp eq i32 %26, %27, !dbg !352
  br i1 %28, label %42, label %29, !dbg !353

; <label>:29                                      ; preds = %12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !354
  br label %42, !dbg !354

; <label>:30                                      ; preds = %8, %4
  %31 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !355
  %32 = load i32* %31, align 4, !dbg !355, !tbaa !339
  %33 = bitcast i32* %len to i8*, !dbg !357
  call void @gmx_rxs(i32 %32, i8* %33, i32 4) #7, !dbg !358
  %34 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !359
  %35 = load i32* %34, align 4, !dbg !359, !tbaa !335
  call void @gmx_txs(i32 %35, i8* %33, i32 4) #7, !dbg !360
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !161, metadata !236), !dbg !332
  %36 = load i32* %len, align 4, !dbg !361, !tbaa !279
  %37 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 195, i32 %36, i32 1) #7, !dbg !361
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !159, metadata !236), !dbg !318
  %38 = load i32* %31, align 4, !dbg !362, !tbaa !339
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !161, metadata !236), !dbg !332
  %39 = load i32* %len, align 4, !dbg !363, !tbaa !279
  call void @gmx_rxs(i32 %38, i8* %37, i32 %39) #7, !dbg !364
  %40 = load i32* %34, align 4, !dbg !365, !tbaa !335
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !161, metadata !236), !dbg !332
  %41 = load i32* %len, align 4, !dbg !366, !tbaa !279
  call void @gmx_txs(i32 %40, i8* %37, i32 %41) #7, !dbg !367
  br label %42

; <label>:42                                      ; preds = %12, %30, %29, %0
  %.0 = phi i8* [ %lognm, %29 ], [ %lognm, %12 ], [ %37, %30 ], [ %lognm, %0 ]
  %43 = call i8* @par_fn(i8* %.0, i32 18, %struct.t_commrec* %cr) #8, !dbg !368
  call void @llvm.dbg.value(metadata !231, i64 0, metadata !164, metadata !236), !dbg !369
  %44 = call %struct.__sFILE* @ffopen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !370
  store %struct.__sFILE* %44, %struct.__sFILE** @stdlog, align 8, !dbg !371, !tbaa !372
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !165, metadata !236), !dbg !374
  %45 = call i32 @getpid() #7, !dbg !375
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !163, metadata !236), !dbg !376
  %46 = load %struct.__sFILE** @stdlog, align 8, !dbg !377, !tbaa !372
  %47 = icmp eq %struct.__sFILE* %46, null, !dbg !377
  br i1 %47, label %55, label %48, !dbg !379

; <label>:48                                      ; preds = %42
  %49 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !380
  %50 = load i32* %49, align 4, !dbg !380, !tbaa !262
  %51 = load i32* %1, align 4, !dbg !382, !tbaa !256
  %52 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([66 x i8]* @.str14, i64 0, i64 0), i32 %50, i32 %51, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %45) #7, !dbg !383
  %53 = load %struct.__sFILE** @stdlog, align 8, !dbg !384, !tbaa !372
  %54 = call i32 @fflush(%struct.__sFILE* %53) #7, !dbg !385
  br label %55, !dbg !386

; <label>:55                                      ; preds = %42, %48
  ret void, !dbg !387
}

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #5

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #5

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #5

; Function Attrs: optsize
declare i32 @getpid() #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_commrec* @init_multisystem(%struct.t_commrec* nocapture %cr, i32 %nfile, %struct.t_filenm* nocapture %fnm) #2 {
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !179, metadata !236), !dbg !388
  tail call void @llvm.dbg.value(metadata i32 %nfile, i64 0, metadata !180, metadata !236), !dbg !389
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !181, metadata !236), !dbg !390
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 275, i32 1, i32 24) #7, !dbg !391
  %2 = bitcast i8* %1 to %struct.t_commrec*, !dbg !391
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %2, i64 0, metadata !182, metadata !236), !dbg !392
  %3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !393
  %4 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !394
  %5 = bitcast %struct.t_commrec* %cr to <4 x i32>*, !dbg !393
  %6 = load <4 x i32>* %5, align 4, !dbg !393, !tbaa !279
  %7 = bitcast i8* %1 to <4 x i32>*, !dbg !395
  store <4 x i32> %6, <4 x i32>* %7, align 4, !dbg !395, !tbaa !279
  store i32 0, i32* %3, align 4, !dbg !396, !tbaa !262
  store i32 1, i32* %4, align 4, !dbg !397, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !183, metadata !236), !dbg !398
  %8 = icmp sgt i32 %nfile, 0, !dbg !399
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !402

.lr.ph:                                           ; preds = %0
  %9 = add i32 %nfile, -1, !dbg !402
  br label %10, !dbg !402

; <label>:10                                      ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !403
  %12 = load i8** %11, align 8, !dbg !403, !tbaa !405
  %13 = tail call i32 @fn2ftp(i8* %12) #7, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !184, metadata !236), !dbg !409
  %14 = icmp eq i32 %13, 18, !dbg !410
  br i1 %14, label %20, label %15, !dbg !412

; <label>:15                                      ; preds = %10
  %16 = load i8** %11, align 8, !dbg !413, !tbaa !405
  %17 = tail call i8* @par_fn(i8* %16, i32 %13, %struct.t_commrec* %2) #8, !dbg !415
  tail call void @llvm.dbg.value(metadata !231, i64 0, metadata !185, metadata !236), !dbg !416
  %18 = load i8** %11, align 8, !dbg !417, !tbaa !405
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 295, i8* %18) #7, !dbg !417
  %19 = tail call i8* @strdup(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #7, !dbg !418
  store i8* %19, i8** %11, align 8, !dbg !419, !tbaa !405
  br label %20, !dbg !420

; <label>:20                                      ; preds = %10, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !402
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !402
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !402
  br i1 %exitcond, label %._crit_edge, label %10, !dbg !402

._crit_edge:                                      ; preds = %20, %0
  ret %struct.t_commrec* %2, !dbg !421
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #5

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_commrec* @init_par(i32* %argc, i8*** nocapture %argv_ptr) #2 {
  %len.i = alloca i32, align 4
  %nodeids.i = alloca [256 x i32], align 16
  %send_nodeid.i = alloca i32, align 4
  %receive_nodeid.i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %argc, i64 0, metadata !192, metadata !236), !dbg !422
  tail call void @llvm.dbg.value(metadata i8*** %argv_ptr, i64 0, metadata !193, metadata !236), !dbg !423
  %1 = load i8*** %argv_ptr, align 8, !dbg !424, !tbaa !372
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !195, metadata !236), !dbg !425
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 313, i32 1, i32 24) #7, !dbg !426
  %3 = bitcast i8* %2 to %struct.t_commrec*, !dbg !426
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %3, i64 0, metadata !194, metadata !236), !dbg !427
  %4 = getelementptr inbounds i8* %2, i64 4, !dbg !428
  %5 = bitcast i8* %4 to i32*, !dbg !428
  store i32 1, i32* %5, align 4, !dbg !429, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !196, metadata !236), !dbg !430
  tail call void @llvm.dbg.declare(metadata [256 x i32]* %nodeids.i, metadata !207, metadata !236), !dbg !431
  %6 = load i8** %1, align 8, !dbg !436, !tbaa !372
  %7 = icmp eq i8* %6, null, !dbg !439
  br i1 %7, label %._crit_edge, label %.lr.ph, !dbg !440

.lr.ph:                                           ; preds = %.thread14, %17, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %11, %17 ], [ %11, %.thread14 ]
  %8 = phi i8* [ %6, %0 ], [ %13, %17 ], [ %13, %.thread14 ]
  %9 = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !441
  %10 = icmp eq i32 %9, 0, !dbg !444
  %11 = add nuw nsw i64 %indvars.iv, 1, !dbg !445
  %12 = getelementptr inbounds i8** %1, i64 %11, !dbg !447
  %13 = load i8** %12, align 8, !dbg !447, !tbaa !372
  %14 = icmp eq i8* %13, null, !dbg !448
  br i1 %10, label %15, label %17, !dbg !449

; <label>:15                                      ; preds = %.lr.ph
  br i1 %14, label %._crit_edge, label %.thread14, !dbg !450

.thread14:                                        ; preds = %15
  %16 = tail call i32 @atoi(i8* %13) #7, !dbg !451
  store i32 %16, i32* %5, align 4, !dbg !452, !tbaa !256
  br label %.lr.ph, !dbg !440

; <label>:17                                      ; preds = %.lr.ph
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !440

._crit_edge:                                      ; preds = %15, %17, %0
  %18 = bitcast i8* %2 to i32*, !dbg !453
  store i32 0, i32* %18, align 4, !dbg !454, !tbaa !262
  store i32 1, i32* %5, align 4, !dbg !455, !tbaa !256
  store i32 0, i32* @gmx_parallel, align 4, !dbg !456, !tbaa !279
  %19 = load i32* %5, align 4, !dbg !457, !tbaa !256
  %20 = icmp sgt i32 %19, 1, !dbg !457
  br i1 %20, label %.thread, label %21, !dbg !457

; <label>:21                                      ; preds = %._crit_edge
  %22 = getelementptr inbounds i8* %2, i64 20, !dbg !457
  %23 = bitcast i8* %22 to i32*, !dbg !457
  %24 = load i32* %23, align 4, !dbg !457, !tbaa !259
  %25 = icmp sgt i32 %24, 1, !dbg !457
  br i1 %25, label %.thread, label %26, !dbg !459

; <label>:26                                      ; preds = %21
  %27 = load i32* %18, align 4, !dbg !460, !tbaa !262
  %28 = icmp eq i32 %27, 0, !dbg !461
  br i1 %28, label %.thread15, label %29, !dbg !462

; <label>:29                                      ; preds = %26
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !463
  %.pr.pre = load i32* %5, align 4, !dbg !464, !tbaa !256
  %30 = icmp sgt i32 %.pr.pre, 1, !dbg !464
  br i1 %30, label %.thread, label %.thread15, !dbg !464

.thread15:                                        ; preds = %26, %29
  %.pr16.ph = phi i32 [ %19, %26 ], [ %.pr.pre, %29 ]
  %.pr = load i32* %23, align 4, !dbg !464, !tbaa !259
  %31 = icmp sgt i32 %.pr, 1, !dbg !464
  br i1 %31, label %.thread, label %.thread17, !dbg !465

.thread:                                          ; preds = %21, %._crit_edge, %.thread15, %29
  %32 = phi i32 [ %19, %._crit_edge ], [ %.pr16.ph, %.thread15 ], [ %.pr.pre, %29 ], [ %19, %21 ]
  %33 = load i32* %18, align 4, !dbg !466, !tbaa !262
  %34 = getelementptr inbounds i8* %2, i64 8, !dbg !467
  %35 = bitcast i8* %34 to i32*, !dbg !467
  %36 = getelementptr inbounds i8* %2, i64 12, !dbg !468
  %37 = bitcast i8* %36 to i32*, !dbg !468
  tail call void @gmx_left_right(i32 %32, i32 %33, i32* %35, i32* %37) #7, !dbg !469
  %38 = load i32* %35, align 4, !dbg !470, !tbaa !339
  %39 = load i32* %37, align 4, !dbg !471, !tbaa !335
  %40 = bitcast i32* %send_nodeid.i to i8*, !dbg !472
  call void @llvm.lifetime.start(i64 4, i8* %40), !dbg !472
  %41 = bitcast i32* %receive_nodeid.i to i8*, !dbg !472
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !472
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !201, metadata !236) #6, !dbg !472
  %42 = bitcast [256 x i32]* %nodeids.i to i8*, !dbg !473
  call void @llvm.lifetime.start(i64 1024, i8* %42) #6, !dbg !473
  store i32 0, i32* %5, align 4, !dbg !474, !tbaa !279
  %43 = load i32* %18, align 4, !dbg !475, !tbaa !279
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !213, metadata !236) #6, !dbg !476
  store i32 %43, i32* %send_nodeid.i, align 4, !dbg !477, !tbaa !279
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !212, metadata !236) #6, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !236) #6, !dbg !479
  br label %44, !dbg !480

; <label>:44                                      ; preds = %44, %.thread
  %min_index.0.i = phi i32 [ 0, %.thread ], [ %.min_index.0.i, %44 ], !dbg !481
  %min_nodeid.0.i = phi i32 [ %43, %.thread ], [ %.min_nodeid.0.i, %44 ], !dbg !481
  call void @gmx_tx(i32 %38, i8* %40, i32 4) #7, !dbg !482
  call void @gmx_rx(i32 %39, i8* %41, i32 4) #7, !dbg !484
  call void @gmx_tx_wait(i32 %38) #7, !dbg !485
  call void @gmx_rx_wait(i32 %39) #7, !dbg !486
  call void @llvm.dbg.value(metadata i32* %send_nodeid.i, i64 0, metadata !213, metadata !236) #6, !dbg !476
  %45 = load i32* %send_nodeid.i, align 4, !dbg !487, !tbaa !279
  %46 = icmp slt i32 %45, %min_nodeid.0.i, !dbg !489
  %47 = load i32* %5, align 4, !dbg !490, !tbaa !279
  %.min_index.0.i = select i1 %46, i32 %47, i32 %min_index.0.i, !dbg !492
  %.min_nodeid.0.i = select i1 %46, i32 %45, i32 %min_nodeid.0.i, !dbg !492
  call void @llvm.dbg.value(metadata i32* %send_nodeid.i, i64 0, metadata !213, metadata !236) #6, !dbg !476
  %48 = add nsw i32 %47, 1, !dbg !493
  store i32 %48, i32* %5, align 4, !dbg !493, !tbaa !279
  %49 = sext i32 %47 to i64, !dbg !494
  %50 = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %49, !dbg !494
  store i32 %45, i32* %50, align 4, !dbg !495, !tbaa !279
  call void @llvm.dbg.value(metadata i32* %receive_nodeid.i, i64 0, metadata !214, metadata !236) #6, !dbg !496
  %51 = load i32* %receive_nodeid.i, align 4, !dbg !497, !tbaa !279
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !213, metadata !236) #6, !dbg !476
  store i32 %51, i32* %send_nodeid.i, align 4, !dbg !498, !tbaa !279
  call void @llvm.dbg.value(metadata i32* %receive_nodeid.i, i64 0, metadata !214, metadata !236) #6, !dbg !496
  %52 = load i32* %18, align 4, !dbg !499, !tbaa !279
  %53 = icmp eq i32 %51, %52, !dbg !500
  br i1 %53, label %.preheader.i, label %44, !dbg !501

.preheader.i:                                     ; preds = %44, %.preheader.i
  %i.0.i = phi i32 [ %59, %.preheader.i ], [ %.min_index.0.i, %44 ], !dbg !481
  %54 = srem i32 %i.0.i, %48, !dbg !502
  %55 = sext i32 %54 to i64, !dbg !505
  %56 = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %55, !dbg !505
  %57 = load i32* %56, align 4, !dbg !505, !tbaa !279
  %58 = icmp eq i32 %51, %57, !dbg !506
  %59 = add nsw i32 %i.0.i, 1, !dbg !507
  call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !206, metadata !236) #6, !dbg !508
  br i1 %58, label %60, label %.preheader.i, !dbg !509

; <label>:60                                      ; preds = %.preheader.i
  %61 = sub i32 %48, %.min_index.0.i, !dbg !510
  %62 = add i32 %61, %i.0.i, !dbg !511
  %63 = srem i32 %62, %48, !dbg !512
  store i32 %63, i32* %18, align 4, !dbg !513, !tbaa !279
  call void @llvm.lifetime.end(i64 1024, i8* %42) #6, !dbg !514
  call void @llvm.lifetime.end(i64 4, i8* %40), !dbg !481
  call void @llvm.lifetime.end(i64 4, i8* %41), !dbg !481
  %.pre = load i32* %5, align 4, !dbg !515, !tbaa !256
  %64 = icmp sgt i32 %.pre, 1, !dbg !515
  br i1 %64, label %70, label %.thread17, !dbg !515

.thread17:                                        ; preds = %.thread15, %60
  %65 = phi i32 [ %.pre, %60 ], [ %.pr16.ph, %.thread15 ]
  %66 = getelementptr inbounds i8* %2, i64 20, !dbg !515
  %67 = bitcast i8* %66 to i32*, !dbg !515
  %68 = load i32* %67, align 4, !dbg !515, !tbaa !259
  %69 = icmp sgt i32 %68, 1, !dbg !515
  br i1 %69, label %70, label %175, !dbg !517

; <label>:70                                      ; preds = %.thread17, %60
  %71 = phi i32 [ %65, %.thread17 ], [ %.pre, %60 ]
  %72 = bitcast i32* %len.i to i8*, !dbg !518
  call void @llvm.lifetime.start(i64 4, i8* %72), !dbg !518
  call void @llvm.dbg.value(metadata %struct.t_commrec* %3, i64 0, metadata !219, metadata !236) #6, !dbg !518
  call void @llvm.dbg.value(metadata i32* %argc, i64 0, metadata !220, metadata !236) #6, !dbg !520
  call void @llvm.dbg.value(metadata i8*** %argv_ptr, i64 0, metadata !221, metadata !236) #6, !dbg !521
  call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !224, metadata !236) #6, !dbg !522
  %73 = load i32* %18, align 4, !dbg !523, !tbaa !262
  %74 = icmp eq i32 %73, 0, !dbg !523
  br i1 %74, label %75, label %80, !dbg !523

; <label>:75                                      ; preds = %70
  %76 = getelementptr inbounds i8* %2, i64 16, !dbg !523
  %77 = bitcast i8* %76 to i32*, !dbg !523
  %78 = load i32* %77, align 4, !dbg !523, !tbaa !327
  %79 = icmp eq i32 %78, 0, !dbg !523
  br i1 %79, label %81, label %80, !dbg !525

; <label>:80                                      ; preds = %75, %70
  store i32 0, i32* %argc, align 4, !dbg !526, !tbaa !279
  %.pre10 = load i32* %5, align 4, !dbg !527, !tbaa !256
  br label %81, !dbg !529

; <label>:81                                      ; preds = %80, %75
  %82 = phi i32 [ %.pre10, %80 ], [ %71, %75 ]
  %83 = icmp sgt i32 %82, 1, !dbg !527
  br i1 %83, label %89, label %84, !dbg !527

; <label>:84                                      ; preds = %81
  %85 = getelementptr inbounds i8* %2, i64 20, !dbg !527
  %86 = bitcast i8* %85 to i32*, !dbg !527
  %87 = load i32* %86, align 4, !dbg !527, !tbaa !259
  %88 = icmp sgt i32 %87, 1, !dbg !527
  br i1 %88, label %89, label %90, !dbg !530

; <label>:89                                      ; preds = %84, %81
  call void @gmx_sumi(i32 1, i32* %argc, %struct.t_commrec* %3) #7, !dbg !531
  br label %90, !dbg !531

; <label>:90                                      ; preds = %89, %84
  %91 = load i32* %18, align 4, !dbg !532, !tbaa !262
  %92 = icmp eq i32 %91, 0, !dbg !532
  br i1 %92, label %93, label %98, !dbg !532

; <label>:93                                      ; preds = %90
  %94 = getelementptr inbounds i8* %2, i64 16, !dbg !532
  %95 = bitcast i8* %94 to i32*, !dbg !532
  %96 = load i32* %95, align 4, !dbg !532, !tbaa !327
  %97 = icmp eq i32 %96, 0, !dbg !532
  br i1 %97, label %103, label %98, !dbg !534

; <label>:98                                      ; preds = %93, %90
  %99 = load i32* %argc, align 4, !dbg !535, !tbaa !279
  %100 = add nsw i32 %99, 1, !dbg !535
  %101 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 240, i32 %100, i32 8) #7, !dbg !535
  %102 = bitcast i8* %101 to i8**, !dbg !535
  call void @llvm.dbg.value(metadata i8** %102, i64 0, metadata !224, metadata !236) #6, !dbg !522
  %.pre.i = load i32* %18, align 4, !dbg !536, !tbaa !262
  br label %103, !dbg !535

; <label>:103                                     ; preds = %98, %93
  %104 = phi i32 [ 0, %93 ], [ %.pre.i, %98 ], !dbg !537
  %argv_tmp.0.i = phi i8** [ null, %93 ], [ %102, %98 ], !dbg !537
  %105 = load %struct.__sFILE** @__stderrp, align 8, !dbg !538, !tbaa !372
  %106 = load i32* %argc, align 4, !dbg !539, !tbaa !279
  %107 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %105, i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i32 %104, i32 %106) #7, !dbg !540
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !222, metadata !236) #6, !dbg !541
  %108 = load i32* %argc, align 4, !dbg !542, !tbaa !279
  %109 = icmp sgt i32 %108, 0, !dbg !545
  %110 = load i32* %18, align 4, !dbg !546, !tbaa !262
  %111 = icmp eq i32 %110, 0, !dbg !546
  br i1 %109, label %.lr.ph.i, label %._crit_edge.i, !dbg !549

.lr.ph.i:                                         ; preds = %103
  %112 = getelementptr inbounds i8* %2, i64 16, !dbg !546
  %113 = bitcast i8* %112 to i32*, !dbg !546
  %114 = getelementptr inbounds i8* %2, i64 12, !dbg !550
  %115 = bitcast i8* %114 to i32*, !dbg !550
  %116 = getelementptr inbounds i8* %2, i64 8, !dbg !552
  %117 = bitcast i8* %116 to i32*, !dbg !552
  br label %118, !dbg !549

; <label>:118                                     ; preds = %160, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %160 ], !dbg !537
  %119 = phi i1 [ %111, %.lr.ph.i ], [ %165, %160 ], !dbg !537
  br i1 %119, label %120, label %149, !dbg !546

; <label>:120                                     ; preds = %118
  %121 = load i32* %113, align 4, !dbg !546, !tbaa !327
  %122 = icmp eq i32 %121, 0, !dbg !546
  br i1 %122, label %123, label %149, !dbg !553

; <label>:123                                     ; preds = %120
  %124 = load i8*** %argv_ptr, align 8, !dbg !554, !tbaa !372
  %125 = getelementptr inbounds i8** %124, i64 %indvars.iv.i, !dbg !555
  %126 = load i8** %125, align 8, !dbg !555, !tbaa !372
  %127 = call i64 @strlen(i8* %126) #7, !dbg !556
  %128 = add i64 %127, 1, !dbg !557
  %129 = trunc i64 %128 to i32, !dbg !556
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !223, metadata !236) #6, !dbg !558
  store i32 %129, i32* %len.i, align 4, !dbg !559, !tbaa !279
  %130 = load i32* %115, align 4, !dbg !550, !tbaa !335
  call void @gmx_txs(i32 %130, i8* %72, i32 4) #7, !dbg !560
  %131 = load i32* %117, align 4, !dbg !552, !tbaa !339
  call void @gmx_rxs(i32 %131, i8* %72, i32 4) #7, !dbg !561
  %132 = load i32* %115, align 4, !dbg !562, !tbaa !335
  %133 = load i8*** %argv_ptr, align 8, !dbg !563, !tbaa !372
  %134 = getelementptr inbounds i8** %133, i64 %indvars.iv.i, !dbg !564
  %135 = load i8** %134, align 8, !dbg !564, !tbaa !372
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !223, metadata !236) #6, !dbg !558
  %136 = load i32* %len.i, align 4, !dbg !565, !tbaa !279
  call void @gmx_txs(i32 %132, i8* %135, i32 %136) #7, !dbg !566
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !223, metadata !236) #6, !dbg !558
  %137 = load i32* %len.i, align 4, !dbg !567, !tbaa !279
  %138 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 248, i32 %137, i32 1) #7, !dbg !567
  call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !225, metadata !236) #6, !dbg !568
  %139 = load i32* %117, align 4, !dbg !569, !tbaa !339
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !223, metadata !236) #6, !dbg !558
  %140 = load i32* %len.i, align 4, !dbg !570, !tbaa !279
  call void @gmx_rxs(i32 %139, i8* %138, i32 %140) #7, !dbg !571
  %141 = load i8*** %argv_ptr, align 8, !dbg !572, !tbaa !372
  %142 = getelementptr inbounds i8** %141, i64 %indvars.iv.i, !dbg !574
  %143 = load i8** %142, align 8, !dbg !574, !tbaa !372
  %144 = call i32 @strcmp(i8* %138, i8* %143) #7, !dbg !575
  %145 = icmp eq i32 %144, 0, !dbg !576
  br i1 %145, label %148, label %146, !dbg !577

; <label>:146                                     ; preds = %123
  %147 = trunc i64 %indvars.iv.i to i32, !dbg !578
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str25, i64 0, i64 0), i32 %147, i8* %143) #7, !dbg !578
  br label %148, !dbg !578

; <label>:148                                     ; preds = %146, %123
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 252, i8* %138) #7, !dbg !579
  br label %160, !dbg !580

; <label>:149                                     ; preds = %120, %118
  %150 = load i32* %117, align 4, !dbg !581, !tbaa !339
  call void @gmx_rxs(i32 %150, i8* %72, i32 4) #7, !dbg !583
  %151 = load i32* %115, align 4, !dbg !584, !tbaa !335
  call void @gmx_txs(i32 %151, i8* %72, i32 4) #7, !dbg !585
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !223, metadata !236) #6, !dbg !558
  %152 = load i32* %len.i, align 4, !dbg !586, !tbaa !279
  %153 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 257, i32 %152, i32 1) #7, !dbg !586
  %154 = getelementptr inbounds i8** %argv_tmp.0.i, i64 %indvars.iv.i, !dbg !586
  store i8* %153, i8** %154, align 8, !dbg !586, !tbaa !372
  %155 = load i32* %117, align 4, !dbg !587, !tbaa !339
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !223, metadata !236) #6, !dbg !558
  %156 = load i32* %len.i, align 4, !dbg !588, !tbaa !279
  call void @gmx_rxs(i32 %155, i8* %153, i32 %156) #7, !dbg !589
  %157 = load i32* %115, align 4, !dbg !590, !tbaa !335
  %158 = load i8** %154, align 8, !dbg !591, !tbaa !372
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !223, metadata !236) #6, !dbg !558
  %159 = load i32* %len.i, align 4, !dbg !592, !tbaa !279
  call void @gmx_txs(i32 %157, i8* %158, i32 %159) #7, !dbg !593
  br label %160, !dbg !537

; <label>:160                                     ; preds = %149, %148
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !549
  %161 = load i32* %argc, align 4, !dbg !542, !tbaa !279
  %162 = sext i32 %161 to i64, !dbg !545
  %163 = icmp slt i64 %indvars.iv.next.i, %162, !dbg !545
  %164 = load i32* %18, align 4, !dbg !546, !tbaa !262
  %165 = icmp eq i32 %164, 0, !dbg !546
  br i1 %163, label %118, label %._crit_edge.i, !dbg !549

._crit_edge.i:                                    ; preds = %160, %103
  %166 = phi i32 [ %108, %103 ], [ %161, %160 ], !dbg !537
  %.lcssa.i = phi i1 [ %111, %103 ], [ %165, %160 ], !dbg !537
  br i1 %.lcssa.i, label %167, label %172, !dbg !594

; <label>:167                                     ; preds = %._crit_edge.i
  %168 = getelementptr inbounds i8* %2, i64 16, !dbg !594
  %169 = bitcast i8* %168 to i32*, !dbg !594
  %170 = load i32* %169, align 4, !dbg !594, !tbaa !327
  %171 = icmp eq i32 %170, 0, !dbg !594
  br i1 %171, label %comm_args.exit, label %172, !dbg !596

; <label>:172                                     ; preds = %167, %._crit_edge.i
  %173 = sext i32 %166 to i64, !dbg !597
  %174 = getelementptr inbounds i8** %argv_tmp.0.i, i64 %173, !dbg !597
  store i8* null, i8** %174, align 8, !dbg !599, !tbaa !372
  store i8** %argv_tmp.0.i, i8*** %argv_ptr, align 8, !dbg !600, !tbaa !372
  br label %comm_args.exit, !dbg !601

comm_args.exit:                                   ; preds = %167, %172
  call void @llvm.lifetime.end(i64 4, i8* %72), !dbg !602
  br label %175, !dbg !537

; <label>:175                                     ; preds = %comm_args.exit, %.thread17
  ret %struct.t_commrec* %3, !dbg !603
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: optsize
declare void @gmx_left_right(i32, i32, i32*, i32*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #5

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #5

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #5

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!232, !233, !234}
!llvm.ident = !{!235}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !53, subprograms: !55, globals: !226, imports: !231)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/main.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/filenm.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !DIEnumerator(name: "efMDP", value: 0)
!7 = !DIEnumerator(name: "efGCT", value: 1)
!8 = !DIEnumerator(name: "efTRX", value: 2)
!9 = !DIEnumerator(name: "efTRN", value: 3)
!10 = !DIEnumerator(name: "efTRR", value: 4)
!11 = !DIEnumerator(name: "efTRJ", value: 5)
!12 = !DIEnumerator(name: "efXTC", value: 6)
!13 = !DIEnumerator(name: "efG87", value: 7)
!14 = !DIEnumerator(name: "efENX", value: 8)
!15 = !DIEnumerator(name: "efEDR", value: 9)
!16 = !DIEnumerator(name: "efENE", value: 10)
!17 = !DIEnumerator(name: "efSTX", value: 11)
!18 = !DIEnumerator(name: "efSTO", value: 12)
!19 = !DIEnumerator(name: "efGRO", value: 13)
!20 = !DIEnumerator(name: "efG96", value: 14)
!21 = !DIEnumerator(name: "efPDB", value: 15)
!22 = !DIEnumerator(name: "efBRK", value: 16)
!23 = !DIEnumerator(name: "efENT", value: 17)
!24 = !DIEnumerator(name: "efLOG", value: 18)
!25 = !DIEnumerator(name: "efXVG", value: 19)
!26 = !DIEnumerator(name: "efOUT", value: 20)
!27 = !DIEnumerator(name: "efNDX", value: 21)
!28 = !DIEnumerator(name: "efTOP", value: 22)
!29 = !DIEnumerator(name: "efITP", value: 23)
!30 = !DIEnumerator(name: "efTPX", value: 24)
!31 = !DIEnumerator(name: "efTPS", value: 25)
!32 = !DIEnumerator(name: "efTPR", value: 26)
!33 = !DIEnumerator(name: "efTPA", value: 27)
!34 = !DIEnumerator(name: "efTPB", value: 28)
!35 = !DIEnumerator(name: "efTEX", value: 29)
!36 = !DIEnumerator(name: "efRTP", value: 30)
!37 = !DIEnumerator(name: "efATP", value: 31)
!38 = !DIEnumerator(name: "efHDB", value: 32)
!39 = !DIEnumerator(name: "efDAT", value: 33)
!40 = !DIEnumerator(name: "efDLG", value: 34)
!41 = !DIEnumerator(name: "efMAP", value: 35)
!42 = !DIEnumerator(name: "efEPS", value: 36)
!43 = !DIEnumerator(name: "efMAT", value: 37)
!44 = !DIEnumerator(name: "efM2P", value: 38)
!45 = !DIEnumerator(name: "efMTX", value: 39)
!46 = !DIEnumerator(name: "efEDI", value: 40)
!47 = !DIEnumerator(name: "efEDO", value: 41)
!48 = !DIEnumerator(name: "efPPA", value: 42)
!49 = !DIEnumerator(name: "efPDO", value: 43)
!50 = !DIEnumerator(name: "efHAT", value: 44)
!51 = !DIEnumerator(name: "efXPM", value: 45)
!52 = !DIEnumerator(name: "efNR", value: 46)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!55 = !{!56, !63, !83, !155, !166, !186, !197, !215}
!56 = !DISubprogram(name: "__sigbits", scope: !57, file: !57, line: 114, type: !58, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !61)
!57 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !60}
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !{!62}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !56, file: !57, line: 114, type: !60)
!63 = !DISubprogram(name: "par_fn", scope: !1, file: !1, line: 117, type: !64, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.t_commrec*)* @par_fn, variables: !79)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !66, !60, !68}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !70, line: 40, baseType: !71)
!70 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!71 = !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 36, size: 192, align: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !71, file: !70, line: 37, baseType: !60, size: 32, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !71, file: !70, line: 37, baseType: !60, size: 32, align: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !71, file: !70, line: 38, baseType: !60, size: 32, align: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !71, file: !70, line: 38, baseType: !60, size: 32, align: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !71, file: !70, line: 39, baseType: !60, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !71, file: !70, line: 39, baseType: !60, size: 32, align: 32, offset: 160)
!79 = !{!80, !81, !82}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 1, scope: !63, file: !1, line: 117, type: !66)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ftp", arg: 2, scope: !63, file: !1, line: 117, type: !60)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 3, scope: !63, file: !1, line: 117, type: !68)
!83 = !DISubprogram(name: "check_multi_int", scope: !1, file: !1, line: 136, type: !84, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_commrec*, i32, i8*)* @check_multi_int, variables: !146)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !68, !60, !66}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 153, baseType: !89)
!88 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !88, line: 122, size: 1216, align: 64, elements: !90)
!90 = !{!91, !94, !95, !96, !98, !99, !104, !105, !106, !110, !114, !124, !130, !131, !134, !135, !139, !143, !144, !145}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !89, file: !88, line: 123, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !89, file: !88, line: 124, baseType: !60, size: 32, align: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !89, file: !88, line: 125, baseType: !60, size: 32, align: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !89, file: !88, line: 126, baseType: !97, size: 16, align: 16, offset: 128)
!97 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !89, file: !88, line: 127, baseType: !97, size: 16, align: 16, offset: 144)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !89, file: !88, line: 128, baseType: !100, size: 128, align: 64, offset: 192)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !88, line: 88, size: 128, align: 64, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !100, file: !88, line: 89, baseType: !92, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !100, file: !88, line: 90, baseType: !60, size: 32, align: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !89, file: !88, line: 129, baseType: !60, size: 32, align: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !89, file: !88, line: 132, baseType: !54, size: 64, align: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !89, file: !88, line: 133, baseType: !107, size: 64, align: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!60, !54}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !89, file: !88, line: 134, baseType: !111, size: 64, align: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!60, !54, !66, !60}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !89, file: !88, line: 135, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !54, !118, !60}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !88, line: 77, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !120, line: 71, baseType: !121)
!120 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !122, line: 46, baseType: !123)
!122 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!123 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !89, file: !88, line: 136, baseType: !125, size: 64, align: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!60, !54, !128, !60}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !89, file: !88, line: 139, baseType: !100, size: 128, align: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !89, file: !88, line: 140, baseType: !132, size: 64, align: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !88, line: 94, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !89, file: !88, line: 141, baseType: !60, size: 32, align: 32, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !89, file: !88, line: 144, baseType: !136, size: 24, align: 8, offset: 928)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, align: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !89, file: !88, line: 145, baseType: !140, size: 8, align: 8, offset: 952)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 8, align: 8, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 1)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !89, file: !88, line: 148, baseType: !100, size: 128, align: 64, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !89, file: !88, line: 151, baseType: !60, size: 32, align: 32, offset: 1088)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !89, file: !88, line: 152, baseType: !118, size: 64, align: 64, offset: 1152)
!146 = !{!147, !148, !149, !150, !151, !153, !154}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !83, file: !1, line: 136, type: !86)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mcr", arg: 2, scope: !83, file: !1, line: 136, type: !68)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 3, scope: !83, file: !1, line: 136, type: !60)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 4, scope: !83, file: !1, line: 136, type: !66)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuf", scope: !83, file: !1, line: 138, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !83, file: !1, line: 138, type: !60)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bCompatible", scope: !83, file: !1, line: 139, type: !60)
!155 = !DISubprogram(name: "open_log", scope: !1, file: !1, line: 168, type: !156, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct.t_commrec*)* @open_log, variables: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !66, !68}
!158 = !{!159, !160, !161, !162, !163, !164, !165}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lognm", arg: 1, scope: !155, file: !1, line: 168, type: !66)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 2, scope: !155, file: !1, line: 168, type: !68)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !155, file: !1, line: 170, type: !60)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "testlen", scope: !155, file: !1, line: 170, type: !60)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pid", scope: !155, file: !1, line: 170, type: !60)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !155, file: !1, line: 171, type: !66)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "host", scope: !155, file: !1, line: 171, type: !66)
!166 = !DISubprogram(name: "init_multisystem", scope: !1, file: !1, line: 269, type: !167, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_commrec* (%struct.t_commrec*, i32, %struct.t_filenm*)* @init_multisystem, variables: !178)
!167 = !DISubroutineType(types: !168)
!168 = !{!68, !68, !60, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_filenm", file: !4, line: 62, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 57, size: 256, align: 64, elements: !172)
!172 = !{!173, !174, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ftp", scope: !171, file: !4, line: 58, baseType: !60, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !171, file: !4, line: 59, baseType: !66, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !171, file: !4, line: 60, baseType: !66, size: 64, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !171, file: !4, line: 61, baseType: !177, size: 64, align: 64, offset: 192)
!177 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 1, scope: !166, file: !1, line: 269, type: !68)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfile", arg: 2, scope: !166, file: !1, line: 269, type: !60)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 3, scope: !166, file: !1, line: 269, type: !169)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mcr", scope: !166, file: !1, line: 271, type: !68)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !166, file: !1, line: 272, type: !60)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftp", scope: !166, file: !1, line: 272, type: !60)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !166, file: !1, line: 273, type: !66)
!186 = !DISubprogram(name: "init_par", scope: !1, file: !1, line: 306, type: !187, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_commrec* (i32*, i8***)* @init_par, variables: !191)
!187 = !DISubroutineType(types: !188)
!188 = !{!68, !152, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !186, file: !1, line: 306, type: !152)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv_ptr", arg: 2, scope: !186, file: !1, line: 306, type: !189)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cr", scope: !186, file: !1, line: 308, type: !68)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv", scope: !186, file: !1, line: 309, type: !190)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !186, file: !1, line: 310, type: !60)
!197 = !DISubprogram(name: "get_nodeid", scope: !1, file: !1, line: 50, type: !198, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, variables: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!60, !86, !60, !60, !152, !152}
!200 = !{!201, !202, !203, !204, !205, !206, !207, !211, !212, !213, !214}
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !197, file: !1, line: 50, type: !86)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "left", arg: 2, scope: !197, file: !1, line: 50, type: !60)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "right", arg: 3, scope: !197, file: !1, line: 50, type: !60)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 4, scope: !197, file: !1, line: 50, type: !152)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 5, scope: !197, file: !1, line: 50, type: !152)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !197, file: !1, line: 68, type: !60)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodeids", scope: !197, file: !1, line: 68, type: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8192, align: 32, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 256)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_index", scope: !197, file: !1, line: 68, type: !60)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_nodeid", scope: !197, file: !1, line: 68, type: !60)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "send_nodeid", scope: !197, file: !1, line: 68, type: !60)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "receive_nodeid", scope: !197, file: !1, line: 68, type: !60)
!215 = !DISubprogram(name: "comm_args", scope: !1, file: !1, line: 228, type: !216, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, variables: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !68, !152, !189}
!218 = !{!219, !220, !221, !222, !223, !224, !225}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 1, scope: !215, file: !1, line: 228, type: !68)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 2, scope: !215, file: !1, line: 228, type: !152)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 3, scope: !215, file: !1, line: 228, type: !189)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !215, file: !1, line: 230, type: !60)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !215, file: !1, line: 230, type: !60)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_tmp", scope: !215, file: !1, line: 231, type: !190)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !215, file: !1, line: 231, type: !66)
!226 = !{!227, !228, !229}
!227 = !DIGlobalVariable(name: "stdlog", scope: !0, file: !1, line: 47, type: !86, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @stdlog)
!228 = !DIGlobalVariable(name: "gmx_parallel", scope: !0, file: !1, line: 48, type: !60, isLocal: false, isDefinition: true, variable: i32* @gmx_parallel)
!229 = !DIGlobalVariable(name: "buf", scope: !63, file: !1, line: 119, type: !230, isLocal: true, isDefinition: true, variable: [256 x i8]* @par_fn.buf)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2048, align: 8, elements: !209)
!231 = !{}
!232 = !{i32 2, !"Dwarf Version", i32 2}
!233 = !{i32 2, !"Debug Info Version", i32 700000003}
!234 = !{i32 1, !"PIC Level", i32 2}
!235 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!236 = !DIExpression()
!237 = !DILocation(line: 114, column: 15, scope: !56)
!238 = !DILocation(line: 116, column: 20, scope: !56)
!239 = !DILocation(line: 116, column: 12, scope: !56)
!240 = !DILocation(line: 116, column: 57, scope: !56)
!241 = !DILocation(line: 116, column: 45, scope: !56)
!242 = !DILocation(line: 116, column: 5, scope: !56)
!243 = !DILocation(line: 117, column: 20, scope: !63)
!244 = !DILocation(line: 117, column: 29, scope: !63)
!245 = !DILocation(line: 117, column: 44, scope: !63)
!246 = !DILocation(line: 122, column: 3, scope: !63)
!247 = !DILocation(line: 123, column: 7, scope: !63)
!248 = !DILocation(line: 123, column: 19, scope: !63)
!249 = !DILocation(line: 123, column: 3, scope: !63)
!250 = !DILocation(line: 123, column: 23, scope: !63)
!251 = !{!252, !252, i64 0}
!252 = !{!"omnipotent char", !253, i64 0}
!253 = !{!"Simple C/C++ TBAA"}
!254 = !DILocation(line: 126, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !63, file: !1, line: 126, column: 7)
!256 = !{!257, !258, i64 4}
!257 = !{!"", !258, i64 0, !258, i64 4, !258, i64 8, !258, i64 12, !258, i64 16, !258, i64 20}
!258 = !{!"int", !252, i64 0}
!259 = !{!257, !258, i64 20}
!260 = !DILocation(line: 126, column: 7, scope: !63)
!261 = !DILocation(line: 127, column: 5, scope: !255)
!262 = !{!257, !258, i64 0}
!263 = !DILocation(line: 128, column: 3, scope: !63)
!264 = !DILocation(line: 131, column: 3, scope: !63)
!265 = !DILocation(line: 133, column: 3, scope: !63)
!266 = !DILocation(line: 136, column: 28, scope: !83)
!267 = !DILocation(line: 136, column: 43, scope: !83)
!268 = !DILocation(line: 136, column: 51, scope: !83)
!269 = !DILocation(line: 136, column: 61, scope: !83)
!270 = !DILocation(line: 141, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !83, file: !1, line: 141, column: 6)
!272 = !DILocation(line: 141, column: 6, scope: !83)
!273 = !DILocation(line: 142, column: 7, scope: !271)
!274 = !DILocation(line: 144, column: 3, scope: !83)
!275 = !DILocation(line: 138, column: 9, scope: !83)
!276 = !DILocation(line: 145, column: 13, scope: !83)
!277 = !DILocation(line: 145, column: 3, scope: !83)
!278 = !DILocation(line: 145, column: 21, scope: !83)
!279 = !{!258, !258, i64 0}
!280 = !DILocation(line: 146, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !83, file: !1, line: 146, column: 6)
!282 = !DILocation(line: 146, column: 12, scope: !281)
!283 = !DILocation(line: 146, column: 15, scope: !281)
!284 = !DILocation(line: 146, column: 6, scope: !83)
!285 = !DILocation(line: 147, column: 5, scope: !281)
!286 = !DILocation(line: 150, column: 19, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 150, column: 3)
!288 = distinct !DILexicalBlock(scope: !83, file: !1, line: 150, column: 3)
!289 = !DILocation(line: 150, column: 13, scope: !287)
!290 = !DILocation(line: 150, column: 3, scope: !288)
!291 = !DILocation(line: 151, column: 19, scope: !287)
!292 = !DILocation(line: 151, column: 31, scope: !287)
!293 = !DILocation(line: 151, column: 41, scope: !287)
!294 = !DILocation(line: 151, column: 35, scope: !287)
!295 = !DILocation(line: 151, column: 48, scope: !287)
!296 = !DILocation(line: 151, column: 45, scope: !287)
!297 = !DILocation(line: 139, column: 8, scope: !83)
!298 = !DILocation(line: 153, column: 6, scope: !83)
!299 = !DILocation(line: 155, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 155, column: 11)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 154, column: 3)
!302 = distinct !DILexicalBlock(scope: !83, file: !1, line: 153, column: 6)
!303 = !DILocation(line: 155, column: 11, scope: !301)
!304 = !DILocation(line: 156, column: 11, scope: !300)
!305 = !DILocation(line: 158, column: 11, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !1, line: 157, column: 12)
!307 = !DILocation(line: 138, column: 14, scope: !83)
!308 = !DILocation(line: 159, column: 27, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 159, column: 11)
!310 = distinct !DILexicalBlock(scope: !306, file: !1, line: 159, column: 11)
!311 = !DILocation(line: 159, column: 21, scope: !309)
!312 = !DILocation(line: 159, column: 11, scope: !310)
!313 = !DILocation(line: 160, column: 52, scope: !309)
!314 = !DILocation(line: 160, column: 15, scope: !309)
!315 = !DILocation(line: 161, column: 11, scope: !306)
!316 = !DILocation(line: 165, column: 3, scope: !83)
!317 = !DILocation(line: 166, column: 1, scope: !83)
!318 = !DILocation(line: 168, column: 21, scope: !155)
!319 = !DILocation(line: 168, column: 38, scope: !155)
!320 = !DILocation(line: 176, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !155, file: !1, line: 176, column: 7)
!322 = !DILocation(line: 176, column: 18, scope: !321)
!323 = !DILocation(line: 176, column: 7, scope: !155)
!324 = !DILocation(line: 177, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 177, column: 9)
!326 = distinct !DILexicalBlock(scope: !321, file: !1, line: 176, column: 23)
!327 = !{!257, !258, i64 16}
!328 = !DILocation(line: 177, column: 9, scope: !326)
!329 = !DILocation(line: 178, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 177, column: 21)
!331 = !DILocation(line: 178, column: 26, scope: !330)
!332 = !DILocation(line: 170, column: 8, scope: !155)
!333 = !DILocation(line: 178, column: 11, scope: !330)
!334 = !DILocation(line: 179, column: 19, scope: !330)
!335 = !{!257, !258, i64 12}
!336 = !DILocation(line: 179, column: 25, scope: !330)
!337 = !DILocation(line: 179, column: 7, scope: !330)
!338 = !DILocation(line: 180, column: 19, scope: !330)
!339 = !{!257, !258, i64 8}
!340 = !DILocation(line: 180, column: 24, scope: !330)
!341 = !DILocation(line: 180, column: 7, scope: !330)
!342 = !DILocation(line: 184, column: 19, scope: !330)
!343 = !DILocation(line: 184, column: 31, scope: !330)
!344 = !DILocation(line: 184, column: 7, scope: !330)
!345 = !DILocation(line: 185, column: 19, scope: !330)
!346 = !DILocation(line: 185, column: 30, scope: !330)
!347 = !DILocation(line: 185, column: 7, scope: !330)
!348 = !DILocation(line: 186, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !330, file: !1, line: 186, column: 11)
!350 = !DILocation(line: 170, column: 12, scope: !155)
!351 = !DILocation(line: 186, column: 18, scope: !349)
!352 = !DILocation(line: 186, column: 15, scope: !349)
!353 = !DILocation(line: 186, column: 11, scope: !330)
!354 = !DILocation(line: 187, column: 2, scope: !349)
!355 = !DILocation(line: 191, column: 19, scope: !356)
!356 = distinct !DILexicalBlock(scope: !325, file: !1, line: 190, column: 10)
!357 = !DILocation(line: 191, column: 24, scope: !356)
!358 = !DILocation(line: 191, column: 7, scope: !356)
!359 = !DILocation(line: 194, column: 19, scope: !356)
!360 = !DILocation(line: 194, column: 7, scope: !356)
!361 = !DILocation(line: 195, column: 7, scope: !356)
!362 = !DILocation(line: 196, column: 19, scope: !356)
!363 = !DILocation(line: 196, column: 30, scope: !356)
!364 = !DILocation(line: 196, column: 7, scope: !356)
!365 = !DILocation(line: 197, column: 19, scope: !356)
!366 = !DILocation(line: 197, column: 31, scope: !356)
!367 = !DILocation(line: 197, column: 7, scope: !356)
!368 = !DILocation(line: 204, column: 12, scope: !155)
!369 = !DILocation(line: 171, column: 9, scope: !155)
!370 = !DILocation(line: 205, column: 12, scope: !155)
!371 = !DILocation(line: 205, column: 10, scope: !155)
!372 = !{!373, !373, i64 0}
!373 = !{!"any pointer", !252, i64 0}
!374 = !DILocation(line: 171, column: 14, scope: !155)
!375 = !DILocation(line: 214, column: 9, scope: !155)
!376 = !DILocation(line: 170, column: 20, scope: !155)
!377 = !DILocation(line: 219, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !155, file: !1, line: 219, column: 6)
!379 = !DILocation(line: 219, column: 6, scope: !155)
!380 = !DILocation(line: 222, column: 19, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 220, column: 3)
!382 = !DILocation(line: 222, column: 30, scope: !381)
!383 = !DILocation(line: 221, column: 7, scope: !381)
!384 = !DILocation(line: 223, column: 14, scope: !381)
!385 = !DILocation(line: 223, column: 7, scope: !381)
!386 = !DILocation(line: 224, column: 3, scope: !381)
!387 = !DILocation(line: 226, column: 1, scope: !155)
!388 = !DILocation(line: 269, column: 40, scope: !166)
!389 = !DILocation(line: 269, column: 47, scope: !166)
!390 = !DILocation(line: 269, column: 62, scope: !166)
!391 = !DILocation(line: 275, column: 3, scope: !166)
!392 = !DILocation(line: 271, column: 14, scope: !166)
!393 = !DILocation(line: 277, column: 21, scope: !166)
!394 = !DILocation(line: 278, column: 21, scope: !166)
!395 = !DILocation(line: 277, column: 15, scope: !166)
!396 = !DILocation(line: 281, column: 15, scope: !166)
!397 = !DILocation(line: 282, column: 15, scope: !166)
!398 = !DILocation(line: 272, column: 8, scope: !166)
!399 = !DILocation(line: 285, column: 14, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 285, column: 3)
!401 = distinct !DILexicalBlock(scope: !166, file: !1, line: 285, column: 3)
!402 = !DILocation(line: 285, column: 3, scope: !401)
!403 = !DILocation(line: 289, column: 25, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 285, column: 28)
!405 = !{!406, !373, i64 16}
!406 = !{!"", !258, i64 0, !373, i64 8, !373, i64 16, !407, i64 24}
!407 = !{!"long", !252, i64 0}
!408 = !DILocation(line: 289, column: 11, scope: !404)
!409 = !DILocation(line: 272, column: 10, scope: !166)
!410 = !DILocation(line: 290, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !404, file: !1, line: 290, column: 9)
!412 = !DILocation(line: 290, column: 9, scope: !404)
!413 = !DILocation(line: 294, column: 27, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !1, line: 290, column: 23)
!415 = !DILocation(line: 294, column: 13, scope: !414)
!416 = !DILocation(line: 273, column: 9, scope: !166)
!417 = !DILocation(line: 295, column: 7, scope: !414)
!418 = !DILocation(line: 296, column: 19, scope: !414)
!419 = !DILocation(line: 296, column: 17, scope: !414)
!420 = !DILocation(line: 300, column: 5, scope: !414)
!421 = !DILocation(line: 303, column: 3, scope: !166)
!422 = !DILocation(line: 306, column: 26, scope: !186)
!423 = !DILocation(line: 306, column: 39, scope: !186)
!424 = !DILocation(line: 312, column: 10, scope: !186)
!425 = !DILocation(line: 309, column: 15, scope: !186)
!426 = !DILocation(line: 313, column: 3, scope: !186)
!427 = !DILocation(line: 308, column: 14, scope: !186)
!428 = !DILocation(line: 315, column: 7, scope: !186)
!429 = !DILocation(line: 315, column: 13, scope: !186)
!430 = !DILocation(line: 310, column: 13, scope: !186)
!431 = !DILocation(line: 68, column: 9, scope: !197, inlinedAt: !432)
!432 = distinct !DILocation(line: 356, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 356, column: 9)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 345, column: 16)
!435 = distinct !DILexicalBlock(scope: !186, file: !1, line: 345, column: 7)
!436 = !DILocation(line: 319, column: 13, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 319, column: 3)
!438 = distinct !DILexicalBlock(scope: !186, file: !1, line: 319, column: 3)
!439 = !DILocation(line: 319, column: 21, scope: !437)
!440 = !DILocation(line: 319, column: 3, scope: !438)
!441 = !DILocation(line: 320, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 320, column: 9)
!443 = distinct !DILexicalBlock(scope: !437, file: !1, line: 319, column: 36)
!444 = !DILocation(line: 320, column: 30, scope: !442)
!445 = !DILocation(line: 321, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 321, column: 11)
!447 = !DILocation(line: 321, column: 11, scope: !446)
!448 = !DILocation(line: 321, column: 20, scope: !446)
!449 = !DILocation(line: 320, column: 9, scope: !443)
!450 = !DILocation(line: 321, column: 11, scope: !442)
!451 = !DILocation(line: 322, column: 13, scope: !446)
!452 = !DILocation(line: 322, column: 12, scope: !446)
!453 = !DILocation(line: 337, column: 7, scope: !186)
!454 = !DILocation(line: 337, column: 16, scope: !186)
!455 = !DILocation(line: 338, column: 16, scope: !186)
!456 = !DILocation(line: 339, column: 16, scope: !186)
!457 = !DILocation(line: 342, column: 8, scope: !458)
!458 = distinct !DILexicalBlock(scope: !186, file: !1, line: 342, column: 7)
!459 = !DILocation(line: 342, column: 16, scope: !458)
!460 = !DILocation(line: 342, column: 24, scope: !458)
!461 = !DILocation(line: 342, column: 31, scope: !458)
!462 = !DILocation(line: 342, column: 7, scope: !186)
!463 = !DILocation(line: 343, column: 5, scope: !458)
!464 = !DILocation(line: 345, column: 7, scope: !435)
!465 = !DILocation(line: 345, column: 7, scope: !186)
!466 = !DILocation(line: 346, column: 35, scope: !434)
!467 = !DILocation(line: 346, column: 47, scope: !434)
!468 = !DILocation(line: 346, column: 57, scope: !434)
!469 = !DILocation(line: 346, column: 5, scope: !434)
!470 = !DILocation(line: 356, column: 31, scope: !433)
!471 = !DILocation(line: 356, column: 40, scope: !433)
!472 = !DILocation(line: 50, column: 29, scope: !197, inlinedAt: !432)
!473 = !DILocation(line: 68, column: 3, scope: !197, inlinedAt: !432)
!474 = !DILocation(line: 70, column: 10, scope: !197, inlinedAt: !432)
!475 = !DILocation(line: 71, column: 15, scope: !197, inlinedAt: !432)
!476 = !DILocation(line: 68, column: 48, scope: !197, inlinedAt: !432)
!477 = !DILocation(line: 71, column: 14, scope: !197, inlinedAt: !432)
!478 = !DILocation(line: 68, column: 37, scope: !197, inlinedAt: !432)
!479 = !DILocation(line: 68, column: 27, scope: !197, inlinedAt: !432)
!480 = !DILocation(line: 74, column: 3, scope: !197, inlinedAt: !432)
!481 = !DILocation(line: 356, column: 9, scope: !433)
!482 = !DILocation(line: 78, column: 5, scope: !483, inlinedAt: !432)
!483 = distinct !DILexicalBlock(scope: !197, file: !1, line: 74, column: 6)
!484 = !DILocation(line: 79, column: 5, scope: !483, inlinedAt: !432)
!485 = !DILocation(line: 80, column: 5, scope: !483, inlinedAt: !432)
!486 = !DILocation(line: 81, column: 5, scope: !483, inlinedAt: !432)
!487 = !DILocation(line: 85, column: 9, scope: !488, inlinedAt: !432)
!488 = distinct !DILexicalBlock(scope: !483, file: !1, line: 85, column: 9)
!489 = !DILocation(line: 85, column: 20, scope: !488, inlinedAt: !432)
!490 = !DILocation(line: 87, column: 17, scope: !491, inlinedAt: !432)
!491 = distinct !DILexicalBlock(scope: !488, file: !1, line: 85, column: 33)
!492 = !DILocation(line: 88, column: 5, scope: !491, inlinedAt: !432)
!493 = !DILocation(line: 89, column: 22, scope: !483, inlinedAt: !432)
!494 = !DILocation(line: 89, column: 5, scope: !483, inlinedAt: !432)
!495 = !DILocation(line: 89, column: 25, scope: !483, inlinedAt: !432)
!496 = !DILocation(line: 68, column: 60, scope: !197, inlinedAt: !432)
!497 = !DILocation(line: 90, column: 17, scope: !483, inlinedAt: !432)
!498 = !DILocation(line: 90, column: 16, scope: !483, inlinedAt: !432)
!499 = !DILocation(line: 91, column: 28, scope: !197, inlinedAt: !432)
!500 = !DILocation(line: 91, column: 26, scope: !197, inlinedAt: !432)
!501 = !DILocation(line: 91, column: 3, scope: !483, inlinedAt: !432)
!502 = !DILocation(line: 99, column: 41, scope: !503, inlinedAt: !432)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 99, column: 3)
!504 = distinct !DILexicalBlock(scope: !197, file: !1, line: 99, column: 3)
!505 = !DILocation(line: 99, column: 32, scope: !503, inlinedAt: !432)
!506 = !DILocation(line: 99, column: 30, scope: !503, inlinedAt: !432)
!507 = !DILocation(line: 99, column: 55, scope: !503, inlinedAt: !432)
!508 = !DILocation(line: 68, column: 7, scope: !197, inlinedAt: !432)
!509 = !DILocation(line: 99, column: 3, scope: !504, inlinedAt: !432)
!510 = !DILocation(line: 101, column: 15, scope: !197, inlinedAt: !432)
!511 = !DILocation(line: 101, column: 25, scope: !197, inlinedAt: !432)
!512 = !DILocation(line: 101, column: 36, scope: !197, inlinedAt: !432)
!513 = !DILocation(line: 101, column: 12, scope: !197, inlinedAt: !432)
!514 = !DILocation(line: 115, column: 1, scope: !197, inlinedAt: !432)
!515 = !DILocation(line: 367, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !186, file: !1, line: 367, column: 7)
!517 = !DILocation(line: 367, column: 7, scope: !186)
!518 = !DILocation(line: 228, column: 34, scope: !215, inlinedAt: !519)
!519 = distinct !DILocation(line: 368, column: 5, scope: !516)
!520 = !DILocation(line: 228, column: 42, scope: !215, inlinedAt: !519)
!521 = !DILocation(line: 228, column: 55, scope: !215, inlinedAt: !519)
!522 = !DILocation(line: 231, column: 10, scope: !215, inlinedAt: !519)
!523 = !DILocation(line: 233, column: 8, scope: !524, inlinedAt: !519)
!524 = distinct !DILexicalBlock(scope: !215, file: !1, line: 233, column: 7)
!525 = !DILocation(line: 233, column: 7, scope: !215, inlinedAt: !519)
!526 = !DILocation(line: 234, column: 10, scope: !524, inlinedAt: !519)
!527 = !DILocation(line: 236, column: 14, scope: !528, inlinedAt: !519)
!528 = distinct !DILexicalBlock(scope: !215, file: !1, line: 236, column: 6)
!529 = !DILocation(line: 234, column: 5, scope: !524, inlinedAt: !519)
!530 = !DILocation(line: 236, column: 6, scope: !215, inlinedAt: !519)
!531 = !DILocation(line: 237, column: 5, scope: !528, inlinedAt: !519)
!532 = !DILocation(line: 239, column: 8, scope: !533, inlinedAt: !519)
!533 = distinct !DILexicalBlock(scope: !215, file: !1, line: 239, column: 7)
!534 = !DILocation(line: 239, column: 7, scope: !215, inlinedAt: !519)
!535 = !DILocation(line: 240, column: 5, scope: !533, inlinedAt: !519)
!536 = !DILocation(line: 241, column: 44, scope: !215, inlinedAt: !519)
!537 = !DILocation(line: 368, column: 5, scope: !516)
!538 = !DILocation(line: 241, column: 11, scope: !215, inlinedAt: !519)
!539 = !DILocation(line: 241, column: 51, scope: !215, inlinedAt: !519)
!540 = !DILocation(line: 241, column: 3, scope: !215, inlinedAt: !519)
!541 = !DILocation(line: 230, column: 7, scope: !215, inlinedAt: !519)
!542 = !DILocation(line: 242, column: 15, scope: !543, inlinedAt: !519)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 242, column: 3)
!544 = distinct !DILexicalBlock(scope: !215, file: !1, line: 242, column: 3)
!545 = !DILocation(line: 242, column: 14, scope: !543, inlinedAt: !519)
!546 = !DILocation(line: 243, column: 9, scope: !547, inlinedAt: !519)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 243, column: 9)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 242, column: 28)
!549 = !DILocation(line: 242, column: 3, scope: !544, inlinedAt: !519)
!550 = !DILocation(line: 245, column: 19, scope: !551, inlinedAt: !519)
!551 = distinct !DILexicalBlock(scope: !547, file: !1, line: 243, column: 21)
!552 = !DILocation(line: 246, column: 19, scope: !551, inlinedAt: !519)
!553 = !DILocation(line: 243, column: 9, scope: !548, inlinedAt: !519)
!554 = !DILocation(line: 244, column: 21, scope: !551, inlinedAt: !519)
!555 = !DILocation(line: 244, column: 20, scope: !551, inlinedAt: !519)
!556 = !DILocation(line: 244, column: 13, scope: !551, inlinedAt: !519)
!557 = !DILocation(line: 244, column: 31, scope: !551, inlinedAt: !519)
!558 = !DILocation(line: 230, column: 9, scope: !215, inlinedAt: !519)
!559 = !DILocation(line: 244, column: 11, scope: !551, inlinedAt: !519)
!560 = !DILocation(line: 245, column: 7, scope: !551, inlinedAt: !519)
!561 = !DILocation(line: 246, column: 7, scope: !551, inlinedAt: !519)
!562 = !DILocation(line: 247, column: 19, scope: !551, inlinedAt: !519)
!563 = !DILocation(line: 247, column: 26, scope: !551, inlinedAt: !519)
!564 = !DILocation(line: 247, column: 25, scope: !551, inlinedAt: !519)
!565 = !DILocation(line: 247, column: 36, scope: !551, inlinedAt: !519)
!566 = !DILocation(line: 247, column: 7, scope: !551, inlinedAt: !519)
!567 = !DILocation(line: 248, column: 7, scope: !551, inlinedAt: !519)
!568 = !DILocation(line: 231, column: 25, scope: !215, inlinedAt: !519)
!569 = !DILocation(line: 249, column: 19, scope: !551, inlinedAt: !519)
!570 = !DILocation(line: 249, column: 28, scope: !551, inlinedAt: !519)
!571 = !DILocation(line: 249, column: 7, scope: !551, inlinedAt: !519)
!572 = !DILocation(line: 250, column: 23, scope: !573, inlinedAt: !519)
!573 = distinct !DILexicalBlock(scope: !551, file: !1, line: 250, column: 11)
!574 = !DILocation(line: 250, column: 22, scope: !573, inlinedAt: !519)
!575 = !DILocation(line: 250, column: 11, scope: !573, inlinedAt: !519)
!576 = !DILocation(line: 250, column: 34, scope: !573, inlinedAt: !519)
!577 = !DILocation(line: 250, column: 11, scope: !551, inlinedAt: !519)
!578 = !DILocation(line: 251, column: 2, scope: !573, inlinedAt: !519)
!579 = !DILocation(line: 252, column: 7, scope: !551, inlinedAt: !519)
!580 = !DILocation(line: 253, column: 5, scope: !551, inlinedAt: !519)
!581 = !DILocation(line: 255, column: 19, scope: !582, inlinedAt: !519)
!582 = distinct !DILexicalBlock(scope: !547, file: !1, line: 254, column: 10)
!583 = !DILocation(line: 255, column: 7, scope: !582, inlinedAt: !519)
!584 = !DILocation(line: 256, column: 19, scope: !582, inlinedAt: !519)
!585 = !DILocation(line: 256, column: 7, scope: !582, inlinedAt: !519)
!586 = !DILocation(line: 257, column: 7, scope: !582, inlinedAt: !519)
!587 = !DILocation(line: 258, column: 19, scope: !582, inlinedAt: !519)
!588 = !DILocation(line: 258, column: 36, scope: !582, inlinedAt: !519)
!589 = !DILocation(line: 258, column: 7, scope: !582, inlinedAt: !519)
!590 = !DILocation(line: 259, column: 19, scope: !582, inlinedAt: !519)
!591 = !DILocation(line: 259, column: 25, scope: !582, inlinedAt: !519)
!592 = !DILocation(line: 259, column: 37, scope: !582, inlinedAt: !519)
!593 = !DILocation(line: 259, column: 7, scope: !582, inlinedAt: !519)
!594 = !DILocation(line: 262, column: 8, scope: !595, inlinedAt: !519)
!595 = distinct !DILexicalBlock(scope: !215, file: !1, line: 262, column: 7)
!596 = !DILocation(line: 262, column: 7, scope: !215, inlinedAt: !519)
!597 = !DILocation(line: 263, column: 5, scope: !598, inlinedAt: !519)
!598 = distinct !DILexicalBlock(scope: !595, file: !1, line: 262, column: 20)
!599 = !DILocation(line: 263, column: 21, scope: !598, inlinedAt: !519)
!600 = !DILocation(line: 264, column: 11, scope: !598, inlinedAt: !519)
!601 = !DILocation(line: 265, column: 3, scope: !598, inlinedAt: !519)
!602 = !DILocation(line: 267, column: 1, scope: !215, inlinedAt: !519)
!603 = !DILocation(line: 370, column: 3, scope: !186)
