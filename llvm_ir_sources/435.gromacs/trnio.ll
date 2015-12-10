; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_trnheader = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@.str = private unnamed_addr constant [18 x i8] c"box_size    = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"x_size      = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"v_size      = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"f_size      = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"natoms      = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"step        = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"t           = %e\0A\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"lambda      = %e\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Empty file %s\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@do_trnheader.magic = internal global i32 1993, align 4
@.str11 = private unnamed_addr constant [13 x i8] c"GMX_trn_file\00", align 1
@do_trnheader.bFirst = internal unnamed_addr global i1 false
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str12 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str13 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.c\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str15 = private unnamed_addr constant [17 x i8] c"trn version: %s\0A\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"sh->ir_size\00", align 1
@.str18 = private unnamed_addr constant [11 x i8] c"sh->e_size\00", align 1
@.str19 = private unnamed_addr constant [13 x i8] c"sh->box_size\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"sh->vir_size\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c"sh->pres_size\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"sh->top_size\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"sh->sym_size\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"sh->x_size\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"sh->v_size\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"sh->f_size\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"sh->natoms\00", align 1
@.str28 = private unnamed_addr constant [9 x i8] c"sh->step\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"sh->nre\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"sh->t\00", align 1
@.str31 = private unnamed_addr constant [11 x i8] c"sh->lambda\00", align 1
@.str32 = private unnamed_addr constant [47 x i8] c"Can not determine precision of trn file, quit!\00", align 1
@.str33 = private unnamed_addr constant [36 x i8] c"Float size %d. Maybe different CPU?\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c"inputrec in trn file\00", align 1
@.str36 = private unnamed_addr constant [21 x i8] c"energies in trn file\00", align 1
@.str37 = private unnamed_addr constant [21 x i8] c"topology in trn file\00", align 1
@.str38 = private unnamed_addr constant [25 x i8] c"symbol table in trn file\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@.str41 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str42 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !85, metadata !278), !dbg !279
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !86, metadata !278), !dbg !280
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !281
  %2 = load i32* %1, align 4, !dbg !283, !tbaa !284
  %3 = add nsw i32 %2, -1, !dbg !283
  store i32 %3, i32* %1, align 4, !dbg !283, !tbaa !284
  %4 = icmp sgt i32 %2, 0, !dbg !293
  br i1 %4, label %._crit_edge, label %5, !dbg !294

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !295
  br label %10, !dbg !294

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !296
  %7 = load i32* %6, align 4, !dbg !296, !tbaa !297
  %8 = icmp sle i32 %2, %7, !dbg !298
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !299
  %or.cond = or i1 %9, %8, !dbg !300
  br i1 %or.cond, label %15, label %10, !dbg !300

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !295
  %11 = trunc i32 %_c to i8, !dbg !301
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !302
  %13 = load i8** %12, align 8, !dbg !303, !tbaa !304
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !303
  store i8* %14, i8** %12, align 8, !dbg !303, !tbaa !304
  store i8 %11, i8* %13, align 1, !dbg !305, !tbaa !306
  br label %17, !dbg !307

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !308
  br label %17, !dbg !309

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !310
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !92, metadata !278), !dbg !311
  %1 = icmp sgt i32 %__signo, 32, !dbg !312
  br i1 %1, label %5, label %2, !dbg !313

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !314
  %4 = shl i32 1, %3, !dbg !315
  br label %5, !dbg !313

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !313
  ret i32 %6, !dbg !316
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_trnheader(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_trnheader* readonly %sh) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !120, metadata !278), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %indent, i64 0, metadata !121, metadata !278), !dbg !318
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !122, metadata !278), !dbg !319
  tail call void @llvm.dbg.value(metadata %struct.t_trnheader* %sh, i64 0, metadata !123, metadata !278), !dbg !320
  %1 = icmp eq %struct.t_trnheader* %sh, null, !dbg !321
  br i1 %1, label %38, label %2, !dbg !323

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #7, !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !121, metadata !278), !dbg !318
  %4 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !326
  %5 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !327
  %6 = load i32* %5, align 4, !dbg !327, !tbaa !328
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %6) #7, !dbg !331
  %8 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !332
  %9 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !333
  %10 = load i32* %9, align 4, !dbg !333, !tbaa !334
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i32 %10) #7, !dbg !335
  %12 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !336
  %13 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !337
  %14 = load i32* %13, align 4, !dbg !337, !tbaa !338
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %14) #7, !dbg !339
  %16 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !340
  %17 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !341
  %18 = load i32* %17, align 4, !dbg !341, !tbaa !342
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %18) #7, !dbg !343
  %20 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !344
  %21 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !345
  %22 = load i32* %21, align 4, !dbg !345, !tbaa !346
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i32 %22) #7, !dbg !347
  %24 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !348
  %25 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11, !dbg !349
  %26 = load i32* %25, align 4, !dbg !349, !tbaa !350
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0), i32 %26) #7, !dbg !351
  %28 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !352
  %29 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13, !dbg !353
  %30 = load float* %29, align 4, !dbg !353, !tbaa !354
  %31 = fpext float %30 to double, !dbg !355
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), double %31) #7, !dbg !356
  %33 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #7, !dbg !357
  %34 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14, !dbg !358
  %35 = load float* %34, align 4, !dbg !358, !tbaa !359
  %36 = fpext float %35 to double, !dbg !360
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), double %36) #7, !dbg !361
  br label %38, !dbg !362

; <label>:38                                      ; preds = %0, %2
  ret void, !dbg !363
}

; Function Attrs: optsize
declare i32 @pr_title(%struct.__sFILE*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @pr_indent(%struct.__sFILE*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @read_trnheader(i8* %fn, %struct.t_trnheader* %trn) #4 {
  %bOK = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !128, metadata !278), !dbg !364
  tail call void @llvm.dbg.value(metadata %struct.t_trnheader* %trn, i64 0, metadata !129, metadata !278), !dbg !365
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !212, metadata !278) #6, !dbg !366
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i64 0, metadata !213, metadata !278) #6, !dbg !368
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !369
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !130, metadata !278), !dbg !370
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !131, metadata !278), !dbg !371
  %2 = call fastcc i32 @do_trnheader(i32 %1, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #8, !dbg !372
  %3 = icmp eq i32 %2, 0, !dbg !372
  br i1 %3, label %4, label %5, !dbg !374

; <label>:4                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %fn) #7, !dbg !375
  br label %5, !dbg !375

; <label>:5                                       ; preds = %0, %4
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !218, metadata !278) #6, !dbg !376
  call void @gmx_fio_close(i32 %1) #7, !dbg !378
  ret void, !dbg !379
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_trn(i8* %fn, i8* %mode) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !212, metadata !278), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !213, metadata !278), !dbg !381
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #7, !dbg !382
  ret i32 %1, !dbg !383
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %sh, i32* %bOK) #4 {
  %buf = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !223, metadata !278), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !224, metadata !278), !dbg !385
  tail call void @llvm.dbg.value(metadata %struct.t_trnheader* %sh, i64 0, metadata !225, metadata !278), !dbg !386
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !226, metadata !278), !dbg !387
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !388
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !388
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !227, metadata !278), !dbg !389
  store i32 1, i32* %bOK, align 4, !dbg !390, !tbaa !391
  tail call void @gmx_fio_select(i32 %fp) #7, !dbg !392
  %2 = icmp ne i32 %bRead, 0, !dbg !393
  br i1 %2, label %3, label %7, !dbg !395

; <label>:3                                       ; preds = %0
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !393, !tbaa !396
  %5 = tail call i32 %4(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 79) #7, !dbg !393
  %6 = icmp eq i32 %5, 0, !dbg !393
  br i1 %6, label %301, label %11, !dbg !393

; <label>:7                                       ; preds = %0
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !393, !tbaa !396
  %9 = tail call i32 %8(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 79) #7, !dbg !393
  %10 = icmp eq i32 %9, 0, !dbg !393
  br i1 %10, label %301, label %24, !dbg !395

; <label>:11                                      ; preds = %3
  %12 = load i32* %bOK, align 4, !dbg !397, !tbaa !391
  %13 = icmp eq i32 %12, 0, !dbg !397
  br i1 %13, label %18, label %14, !dbg !400

; <label>:14                                      ; preds = %11
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !401, !tbaa !396
  %16 = call i32 %15(i8* %1, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 83) #7, !dbg !401
  %17 = icmp ne i32 %16, 0, !dbg !400
  br label %18

; <label>:18                                      ; preds = %11, %14
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32, !dbg !400
  store i32 %20, i32* %bOK, align 4, !dbg !402, !tbaa !391
  %.b = load i1* @do_trnheader.bFirst, align 1
  br i1 %.b, label %34, label %21, !dbg !403

; <label>:21                                      ; preds = %18
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !404, !tbaa !396
  %23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), i8* %1) #7, !dbg !407
  store i1 true, i1* @do_trnheader.bFirst, align 1
  %.pr = load i32* %bOK, align 4, !dbg !408, !tbaa !391
  br label %34, !dbg !409

; <label>:24                                      ; preds = %7
  %25 = load i32* %bOK, align 4, !dbg !397, !tbaa !391
  %26 = icmp eq i32 %25, 0, !dbg !397
  br i1 %26, label %31, label %27, !dbg !410

; <label>:27                                      ; preds = %24
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !411, !tbaa !396
  %29 = tail call i32 %28(i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i32 1, i32 7, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 90) #7, !dbg !411
  %30 = icmp ne i32 %29, 0, !dbg !410
  br label %31

; <label>:31                                      ; preds = %24, %27
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32, !dbg !410
  store i32 %33, i32* %bOK, align 4, !dbg !412, !tbaa !391
  br label %34

; <label>:34                                      ; preds = %18, %21, %31
  %35 = phi i32 [ %20, %18 ], [ %.pr, %21 ], [ %33, %31 ], !dbg !408
  %36 = icmp eq i32 %35, 0, !dbg !408
  br i1 %36, label %.thread, label %37, !dbg !413

.thread:                                          ; preds = %34
  store i32 0, i32* %bOK, align 4, !dbg !414, !tbaa !391
  br label %.thread1, !dbg !415

; <label>:37                                      ; preds = %34
  br i1 %2, label %38, label %42, !dbg !416

; <label>:38                                      ; preds = %37
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !416, !tbaa !396
  %40 = bitcast %struct.t_trnheader* %sh to i8*, !dbg !416
  %41 = call i32 %39(i8* %40, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 91) #7, !dbg !416
  br label %46, !dbg !416

; <label>:42                                      ; preds = %37
  %43 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !416, !tbaa !396
  %44 = bitcast %struct.t_trnheader* %sh to i8*, !dbg !416
  %45 = call i32 %43(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 91) #7, !dbg !416
  br label %46, !dbg !416

; <label>:46                                      ; preds = %38, %42
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ], !dbg !416
  %48 = icmp ne i32 %47, 0, !dbg !413
  %49 = zext i1 %48 to i32, !dbg !413
  store i32 %49, i32* %bOK, align 4, !dbg !414, !tbaa !391
  br i1 %48, label %50, label %.thread1, !dbg !415

; <label>:50                                      ; preds = %46
  br i1 %2, label %51, label %56, !dbg !417

; <label>:51                                      ; preds = %50
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !417, !tbaa !396
  %53 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1, !dbg !417
  %54 = bitcast i32* %53 to i8*, !dbg !417
  %55 = call i32 %52(i8* %54, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 92) #7, !dbg !417
  br label %61, !dbg !417

; <label>:56                                      ; preds = %50
  %57 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !417, !tbaa !396
  %58 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1, !dbg !417
  %59 = bitcast i32* %58 to i8*, !dbg !417
  %60 = call i32 %57(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 92) #7, !dbg !417
  br label %61, !dbg !417

.thread1:                                         ; preds = %46, %.thread
  store i32 0, i32* %bOK, align 4, !dbg !418, !tbaa !391
  br label %.thread3, !dbg !419

; <label>:61                                      ; preds = %51, %56
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ], !dbg !417
  %63 = icmp ne i32 %62, 0, !dbg !415
  %64 = zext i1 %63 to i32, !dbg !415
  store i32 %64, i32* %bOK, align 4, !dbg !418, !tbaa !391
  br i1 %63, label %65, label %.thread3, !dbg !419

; <label>:65                                      ; preds = %61
  br i1 %2, label %66, label %71, !dbg !420

; <label>:66                                      ; preds = %65
  %67 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !420, !tbaa !396
  %68 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !420
  %69 = bitcast i32* %68 to i8*, !dbg !420
  %70 = call i32 %67(i8* %69, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 93) #7, !dbg !420
  br label %76, !dbg !420

; <label>:71                                      ; preds = %65
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !420, !tbaa !396
  %73 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !420
  %74 = bitcast i32* %73 to i8*, !dbg !420
  %75 = call i32 %72(i8* %74, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 93) #7, !dbg !420
  br label %76, !dbg !420

.thread3:                                         ; preds = %61, %.thread1
  store i32 0, i32* %bOK, align 4, !dbg !421, !tbaa !391
  br label %.thread5, !dbg !422

; <label>:76                                      ; preds = %66, %71
  %77 = phi i32 [ %70, %66 ], [ %75, %71 ], !dbg !420
  %78 = icmp ne i32 %77, 0, !dbg !419
  %79 = zext i1 %78 to i32, !dbg !419
  store i32 %79, i32* %bOK, align 4, !dbg !421, !tbaa !391
  br i1 %78, label %80, label %.thread5, !dbg !422

; <label>:80                                      ; preds = %76
  br i1 %2, label %81, label %86, !dbg !423

; <label>:81                                      ; preds = %80
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !423, !tbaa !396
  %83 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3, !dbg !423
  %84 = bitcast i32* %83 to i8*, !dbg !423
  %85 = call i32 %82(i8* %84, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 94) #7, !dbg !423
  br label %91, !dbg !423

; <label>:86                                      ; preds = %80
  %87 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !423, !tbaa !396
  %88 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3, !dbg !423
  %89 = bitcast i32* %88 to i8*, !dbg !423
  %90 = call i32 %87(i8* %89, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 94) #7, !dbg !423
  br label %91, !dbg !423

.thread5:                                         ; preds = %76, %.thread3
  store i32 0, i32* %bOK, align 4, !dbg !424, !tbaa !391
  br label %.thread7, !dbg !425

; <label>:91                                      ; preds = %81, %86
  %92 = phi i32 [ %85, %81 ], [ %90, %86 ], !dbg !423
  %93 = icmp ne i32 %92, 0, !dbg !422
  %94 = zext i1 %93 to i32, !dbg !422
  store i32 %94, i32* %bOK, align 4, !dbg !424, !tbaa !391
  br i1 %93, label %95, label %.thread7, !dbg !425

; <label>:95                                      ; preds = %91
  br i1 %2, label %96, label %101, !dbg !426

; <label>:96                                      ; preds = %95
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !426, !tbaa !396
  %98 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4, !dbg !426
  %99 = bitcast i32* %98 to i8*, !dbg !426
  %100 = call i32 %97(i8* %99, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 95) #7, !dbg !426
  br label %106, !dbg !426

; <label>:101                                     ; preds = %95
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !426, !tbaa !396
  %103 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4, !dbg !426
  %104 = bitcast i32* %103 to i8*, !dbg !426
  %105 = call i32 %102(i8* %104, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 95) #7, !dbg !426
  br label %106, !dbg !426

.thread7:                                         ; preds = %91, %.thread5
  store i32 0, i32* %bOK, align 4, !dbg !427, !tbaa !391
  br label %.thread9, !dbg !428

; <label>:106                                     ; preds = %96, %101
  %107 = phi i32 [ %100, %96 ], [ %105, %101 ], !dbg !426
  %108 = icmp ne i32 %107, 0, !dbg !425
  %109 = zext i1 %108 to i32, !dbg !425
  store i32 %109, i32* %bOK, align 4, !dbg !427, !tbaa !391
  br i1 %108, label %110, label %.thread9, !dbg !428

; <label>:110                                     ; preds = %106
  br i1 %2, label %111, label %116, !dbg !429

; <label>:111                                     ; preds = %110
  %112 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !429, !tbaa !396
  %113 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5, !dbg !429
  %114 = bitcast i32* %113 to i8*, !dbg !429
  %115 = call i32 %112(i8* %114, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 96) #7, !dbg !429
  br label %121, !dbg !429

; <label>:116                                     ; preds = %110
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !429, !tbaa !396
  %118 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5, !dbg !429
  %119 = bitcast i32* %118 to i8*, !dbg !429
  %120 = call i32 %117(i8* %119, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 96) #7, !dbg !429
  br label %121, !dbg !429

.thread9:                                         ; preds = %106, %.thread7
  store i32 0, i32* %bOK, align 4, !dbg !430, !tbaa !391
  br label %.thread11, !dbg !431

; <label>:121                                     ; preds = %111, %116
  %122 = phi i32 [ %115, %111 ], [ %120, %116 ], !dbg !429
  %123 = icmp ne i32 %122, 0, !dbg !428
  %124 = zext i1 %123 to i32, !dbg !428
  store i32 %124, i32* %bOK, align 4, !dbg !430, !tbaa !391
  br i1 %123, label %125, label %.thread11, !dbg !431

; <label>:125                                     ; preds = %121
  br i1 %2, label %126, label %131, !dbg !432

; <label>:126                                     ; preds = %125
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !432, !tbaa !396
  %128 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6, !dbg !432
  %129 = bitcast i32* %128 to i8*, !dbg !432
  %130 = call i32 %127(i8* %129, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 97) #7, !dbg !432
  br label %136, !dbg !432

; <label>:131                                     ; preds = %125
  %132 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !432, !tbaa !396
  %133 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6, !dbg !432
  %134 = bitcast i32* %133 to i8*, !dbg !432
  %135 = call i32 %132(i8* %134, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 97) #7, !dbg !432
  br label %136, !dbg !432

.thread11:                                        ; preds = %121, %.thread9
  store i32 0, i32* %bOK, align 4, !dbg !433, !tbaa !391
  br label %.thread13, !dbg !434

; <label>:136                                     ; preds = %126, %131
  %137 = phi i32 [ %130, %126 ], [ %135, %131 ], !dbg !432
  %138 = icmp ne i32 %137, 0, !dbg !431
  %139 = zext i1 %138 to i32, !dbg !431
  store i32 %139, i32* %bOK, align 4, !dbg !433, !tbaa !391
  br i1 %138, label %140, label %.thread13, !dbg !434

; <label>:140                                     ; preds = %136
  br i1 %2, label %141, label %146, !dbg !435

; <label>:141                                     ; preds = %140
  %142 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !435, !tbaa !396
  %143 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !435
  %144 = bitcast i32* %143 to i8*, !dbg !435
  %145 = call i32 %142(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 98) #7, !dbg !435
  br label %151, !dbg !435

; <label>:146                                     ; preds = %140
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !435, !tbaa !396
  %148 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !435
  %149 = bitcast i32* %148 to i8*, !dbg !435
  %150 = call i32 %147(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 98) #7, !dbg !435
  br label %151, !dbg !435

.thread13:                                        ; preds = %136, %.thread11
  store i32 0, i32* %bOK, align 4, !dbg !436, !tbaa !391
  br label %.thread15, !dbg !437

; <label>:151                                     ; preds = %141, %146
  %152 = phi i32 [ %145, %141 ], [ %150, %146 ], !dbg !435
  %153 = icmp ne i32 %152, 0, !dbg !434
  %154 = zext i1 %153 to i32, !dbg !434
  store i32 %154, i32* %bOK, align 4, !dbg !436, !tbaa !391
  br i1 %153, label %155, label %.thread15, !dbg !437

; <label>:155                                     ; preds = %151
  br i1 %2, label %156, label %161, !dbg !438

; <label>:156                                     ; preds = %155
  %157 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !438, !tbaa !396
  %158 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !438
  %159 = bitcast i32* %158 to i8*, !dbg !438
  %160 = call i32 %157(i8* %159, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 99) #7, !dbg !438
  br label %166, !dbg !438

; <label>:161                                     ; preds = %155
  %162 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !438, !tbaa !396
  %163 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !438
  %164 = bitcast i32* %163 to i8*, !dbg !438
  %165 = call i32 %162(i8* %164, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 99) #7, !dbg !438
  br label %166, !dbg !438

.thread15:                                        ; preds = %151, %.thread13
  store i32 0, i32* %bOK, align 4, !dbg !439, !tbaa !391
  br label %.thread17, !dbg !440

; <label>:166                                     ; preds = %156, %161
  %167 = phi i32 [ %160, %156 ], [ %165, %161 ], !dbg !438
  %168 = icmp ne i32 %167, 0, !dbg !437
  %169 = zext i1 %168 to i32, !dbg !437
  store i32 %169, i32* %bOK, align 4, !dbg !439, !tbaa !391
  br i1 %168, label %170, label %.thread17, !dbg !440

; <label>:170                                     ; preds = %166
  br i1 %2, label %171, label %176, !dbg !441

; <label>:171                                     ; preds = %170
  %172 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !441, !tbaa !396
  %173 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !441
  %174 = bitcast i32* %173 to i8*, !dbg !441
  %175 = call i32 %172(i8* %174, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 100) #7, !dbg !441
  br label %181, !dbg !441

; <label>:176                                     ; preds = %170
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !441, !tbaa !396
  %178 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !441
  %179 = bitcast i32* %178 to i8*, !dbg !441
  %180 = call i32 %177(i8* %179, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 100) #7, !dbg !441
  br label %181, !dbg !441

.thread17:                                        ; preds = %166, %.thread15
  store i32 0, i32* %bOK, align 4, !dbg !442, !tbaa !391
  br label %301, !dbg !443

; <label>:181                                     ; preds = %171, %176
  %182 = phi i32 [ %175, %171 ], [ %180, %176 ], !dbg !441
  %183 = icmp ne i32 %182, 0, !dbg !440
  %184 = zext i1 %183 to i32, !dbg !440
  store i32 %184, i32* %bOK, align 4, !dbg !442, !tbaa !391
  br i1 %183, label %185, label %301, !dbg !443

; <label>:185                                     ; preds = %181
  call void @llvm.dbg.value(metadata %struct.t_trnheader* %sh, i64 0, metadata !235, metadata !278) #6, !dbg !444
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !278) #6, !dbg !446
  %186 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !447
  %187 = load i32* %186, align 4, !dbg !447, !tbaa !328
  %188 = icmp eq i32 %187, 0, !dbg !449
  br i1 %188, label %191, label %189, !dbg !450

; <label>:189                                     ; preds = %185
  %190 = sdiv i32 %187, 9, !dbg !451
  call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !236, metadata !278) #6, !dbg !446
  br label %218, !dbg !452

; <label>:191                                     ; preds = %185
  %192 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !453
  %193 = load i32* %192, align 4, !dbg !453, !tbaa !334
  %194 = icmp eq i32 %193, 0, !dbg !455
  br i1 %194, label %200, label %195, !dbg !456

; <label>:195                                     ; preds = %191
  %196 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !457
  %197 = load i32* %196, align 4, !dbg !457, !tbaa !346
  %198 = mul nsw i32 %197, 3, !dbg !458
  %199 = sdiv i32 %193, %198, !dbg !459
  call void @llvm.dbg.value(metadata i32 %199, i64 0, metadata !236, metadata !278) #6, !dbg !446
  br label %218, !dbg !460

; <label>:200                                     ; preds = %191
  %201 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !461
  %202 = load i32* %201, align 4, !dbg !461, !tbaa !338
  %203 = icmp eq i32 %202, 0, !dbg !463
  br i1 %203, label %209, label %204, !dbg !464

; <label>:204                                     ; preds = %200
  %205 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !465
  %206 = load i32* %205, align 4, !dbg !465, !tbaa !346
  %207 = mul nsw i32 %206, 3, !dbg !466
  %208 = sdiv i32 %202, %207, !dbg !467
  call void @llvm.dbg.value(metadata i32 %208, i64 0, metadata !236, metadata !278) #6, !dbg !446
  br label %218, !dbg !468

; <label>:209                                     ; preds = %200
  %210 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !469
  %211 = load i32* %210, align 4, !dbg !469, !tbaa !342
  %212 = icmp eq i32 %211, 0, !dbg !471
  br i1 %212, label %.thread.i, label %213, !dbg !472

; <label>:213                                     ; preds = %209
  %214 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !473
  %215 = load i32* %214, align 4, !dbg !473, !tbaa !346
  %216 = mul nsw i32 %215, 3, !dbg !474
  %217 = sdiv i32 %211, %216, !dbg !475
  call void @llvm.dbg.value(metadata i32 %217, i64 0, metadata !236, metadata !278) #6, !dbg !446
  br label %218, !dbg !476

.thread.i:                                        ; preds = %209
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !477
  br label %219, !dbg !478

; <label>:218                                     ; preds = %213, %204, %195, %189
  %nflsize.0.i = phi i32 [ %190, %189 ], [ %199, %195 ], [ %208, %204 ], [ %217, %213 ], !dbg !480
  switch i32 %nflsize.0.i, label %219 [
    i32 4, label %nFloatSize.exit
    i32 8, label %nFloatSize.exit
  ], !dbg !478

; <label>:219                                     ; preds = %218, %.thread.i
  %nflsize.01.i = phi i32 [ 0, %.thread.i ], [ %nflsize.0.i, %218 ], !dbg !480
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str33, i64 0, i64 0), i32 %nflsize.01.i) #7, !dbg !481
  br label %nFloatSize.exit, !dbg !481

nFloatSize.exit:                                  ; preds = %218, %218, %219
  %nflsize.02.i = phi i32 [ %nflsize.0.i, %218 ], [ %nflsize.0.i, %218 ], [ %nflsize.01.i, %219 ], !dbg !480
  %220 = icmp eq i32 %nflsize.02.i, 8, !dbg !482
  %221 = zext i1 %220 to i32, !dbg !482
  call void @gmx_fio_setprecision(i32 %fp, i32 %221) #7, !dbg !483
  %222 = load i32* %bOK, align 4, !dbg !484, !tbaa !391
  %223 = icmp eq i32 %222, 0, !dbg !484
  br i1 %223, label %.thread18, label %224, !dbg !485

.thread18:                                        ; preds = %nFloatSize.exit
  store i32 0, i32* %bOK, align 4, !dbg !486, !tbaa !391
  br label %.thread20, !dbg !487

; <label>:224                                     ; preds = %nFloatSize.exit
  br i1 %2, label %225, label %230, !dbg !488

; <label>:225                                     ; preds = %224
  %226 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !488, !tbaa !396
  %227 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !488
  %228 = bitcast i32* %227 to i8*, !dbg !488
  %229 = call i32 %226(i8* %228, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 105) #7, !dbg !488
  br label %235, !dbg !488

; <label>:230                                     ; preds = %224
  %231 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !488, !tbaa !396
  %232 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !488
  %233 = bitcast i32* %232 to i8*, !dbg !488
  %234 = call i32 %231(i8* %233, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 105) #7, !dbg !488
  br label %235, !dbg !488

; <label>:235                                     ; preds = %225, %230
  %236 = phi i32 [ %229, %225 ], [ %234, %230 ], !dbg !488
  %237 = icmp ne i32 %236, 0, !dbg !485
  %238 = zext i1 %237 to i32, !dbg !485
  store i32 %238, i32* %bOK, align 4, !dbg !486, !tbaa !391
  br i1 %237, label %239, label %.thread20, !dbg !487

; <label>:239                                     ; preds = %235
  br i1 %2, label %240, label %245, !dbg !489

; <label>:240                                     ; preds = %239
  %241 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !489, !tbaa !396
  %242 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11, !dbg !489
  %243 = bitcast i32* %242 to i8*, !dbg !489
  %244 = call i32 %241(i8* %243, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 106) #7, !dbg !489
  br label %250, !dbg !489

; <label>:245                                     ; preds = %239
  %246 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !489, !tbaa !396
  %247 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11, !dbg !489
  %248 = bitcast i32* %247 to i8*, !dbg !489
  %249 = call i32 %246(i8* %248, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 106) #7, !dbg !489
  br label %250, !dbg !489

.thread20:                                        ; preds = %235, %.thread18
  store i32 0, i32* %bOK, align 4, !dbg !490, !tbaa !391
  br label %.thread22, !dbg !491

; <label>:250                                     ; preds = %240, %245
  %251 = phi i32 [ %244, %240 ], [ %249, %245 ], !dbg !489
  %252 = icmp ne i32 %251, 0, !dbg !487
  %253 = zext i1 %252 to i32, !dbg !487
  store i32 %253, i32* %bOK, align 4, !dbg !490, !tbaa !391
  br i1 %252, label %254, label %.thread22, !dbg !491

; <label>:254                                     ; preds = %250
  br i1 %2, label %255, label %260, !dbg !492

; <label>:255                                     ; preds = %254
  %256 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !492, !tbaa !396
  %257 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12, !dbg !492
  %258 = bitcast i32* %257 to i8*, !dbg !492
  %259 = call i32 %256(i8* %258, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 107) #7, !dbg !492
  br label %265, !dbg !492

; <label>:260                                     ; preds = %254
  %261 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !492, !tbaa !396
  %262 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12, !dbg !492
  %263 = bitcast i32* %262 to i8*, !dbg !492
  %264 = call i32 %261(i8* %263, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 107) #7, !dbg !492
  br label %265, !dbg !492

.thread22:                                        ; preds = %250, %.thread20
  store i32 0, i32* %bOK, align 4, !dbg !493, !tbaa !391
  br label %.thread24, !dbg !494

; <label>:265                                     ; preds = %255, %260
  %266 = phi i32 [ %259, %255 ], [ %264, %260 ], !dbg !492
  %267 = icmp ne i32 %266, 0, !dbg !491
  %268 = zext i1 %267 to i32, !dbg !491
  store i32 %268, i32* %bOK, align 4, !dbg !493, !tbaa !391
  br i1 %267, label %269, label %.thread24, !dbg !494

; <label>:269                                     ; preds = %265
  br i1 %2, label %270, label %275, !dbg !495

; <label>:270                                     ; preds = %269
  %271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !495, !tbaa !396
  %272 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13, !dbg !495
  %273 = bitcast float* %272 to i8*, !dbg !495
  %274 = call i32 %271(i8* %273, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 108) #7, !dbg !495
  br label %280, !dbg !495

; <label>:275                                     ; preds = %269
  %276 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !495, !tbaa !396
  %277 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13, !dbg !495
  %278 = bitcast float* %277 to i8*, !dbg !495
  %279 = call i32 %276(i8* %278, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 108) #7, !dbg !495
  br label %280, !dbg !495

.thread24:                                        ; preds = %265, %.thread22
  store i32 0, i32* %bOK, align 4, !dbg !496, !tbaa !391
  br label %298, !dbg !497

; <label>:280                                     ; preds = %270, %275
  %281 = phi i32 [ %274, %270 ], [ %279, %275 ], !dbg !495
  %282 = icmp ne i32 %281, 0, !dbg !494
  %283 = zext i1 %282 to i32, !dbg !494
  store i32 %283, i32* %bOK, align 4, !dbg !496, !tbaa !391
  br i1 %282, label %284, label %298, !dbg !497

; <label>:284                                     ; preds = %280
  br i1 %2, label %285, label %290, !dbg !498

; <label>:285                                     ; preds = %284
  %286 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !498, !tbaa !396
  %287 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14, !dbg !498
  %288 = bitcast float* %287 to i8*, !dbg !498
  %289 = call i32 %286(i8* %288, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 109) #7, !dbg !498
  br label %295, !dbg !498

; <label>:290                                     ; preds = %284
  %291 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !498, !tbaa !396
  %292 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14, !dbg !498
  %293 = bitcast float* %292 to i8*, !dbg !498
  %294 = call i32 %291(i8* %293, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 109) #7, !dbg !498
  br label %295, !dbg !498

; <label>:295                                     ; preds = %290, %285
  %296 = phi i32 [ %289, %285 ], [ %294, %290 ], !dbg !498
  %297 = icmp ne i32 %296, 0, !dbg !497
  br label %298

; <label>:298                                     ; preds = %.thread24, %295, %280
  %299 = phi i1 [ false, %280 ], [ %297, %295 ], [ false, %.thread24 ]
  %300 = zext i1 %299 to i32, !dbg !497
  store i32 %300, i32* %bOK, align 4, !dbg !499, !tbaa !391
  br label %301, !dbg !500

; <label>:301                                     ; preds = %.thread17, %181, %7, %3, %298
  %.0 = phi i32 [ %300, %298 ], [ 0, %3 ], [ 0, %7 ], [ %184, %181 ], [ 0, %.thread17 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !501
  ret i32 %.0, !dbg !501
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @close_trn(i32 %fp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !218, metadata !278), !dbg !502
  tail call void @gmx_fio_close(i32 %fp) #7, !dbg !503
  ret void, !dbg !504
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fread_trnheader(i32 %fp, %struct.t_trnheader* %trn, i32* %bOK) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !137, metadata !278), !dbg !505
  tail call void @llvm.dbg.value(metadata %struct.t_trnheader* %trn, i64 0, metadata !138, metadata !278), !dbg !506
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !139, metadata !278), !dbg !507
  %1 = tail call fastcc i32 @do_trnheader(i32 %fp, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #8, !dbg !508
  ret i32 %1, !dbg !509
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_trn(i8* %fn, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !147, metadata !278), !dbg !510
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !148, metadata !278), !dbg !511
  store i32 %step, i32* %1, align 4, !tbaa !391
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !149, metadata !278), !dbg !512
  store float %t, float* %2, align 4, !tbaa !513
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !150, metadata !278), !dbg !514
  store float %lambda, float* %3, align 4, !tbaa !513
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !151, metadata !278), !dbg !515
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !152, metadata !278), !dbg !516
  store i32 %natoms, i32* %4, align 4, !tbaa !391
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !153, metadata !278), !dbg !517
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !154, metadata !278), !dbg !518
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !155, metadata !278), !dbg !519
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !212, metadata !278) #6, !dbg !520
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i64 0, metadata !213, metadata !278) #6, !dbg !522
  %5 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !523
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !156, metadata !278), !dbg !524
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !148, metadata !278), !dbg !511
  tail call void @llvm.dbg.value(metadata float* %2, i64 0, metadata !149, metadata !278), !dbg !512
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !150, metadata !278), !dbg !514
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !152, metadata !278), !dbg !516
  %6 = call fastcc i32 @do_trn(i32 %5, i32 0, i32* %1, float* %2, float* %3, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #8, !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !218, metadata !278) #6, !dbg !526
  tail call void @gmx_fio_close(i32 %5) #7, !dbg !528
  ret void, !dbg !529
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_trn(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  %bOK = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !241, metadata !278), !dbg !530
  tail call void @llvm.dbg.value(metadata i32 %bRead, i64 0, metadata !242, metadata !278), !dbg !531
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !243, metadata !278), !dbg !532
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !244, metadata !278), !dbg !533
  tail call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !245, metadata !278), !dbg !534
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !246, metadata !278), !dbg !535
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !247, metadata !278), !dbg !536
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !248, metadata !278), !dbg !537
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !249, metadata !278), !dbg !538
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !250, metadata !278), !dbg !539
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 161, i32 1, i32 60) #7, !dbg !540
  %2 = bitcast i8* %1 to %struct.t_trnheader*, !dbg !540
  tail call void @llvm.dbg.value(metadata %struct.t_trnheader* %2, i64 0, metadata !251, metadata !278), !dbg !541
  %3 = icmp ne i32 %bRead, 0, !dbg !542
  br i1 %3, label %49, label %4, !dbg !544

; <label>:4                                       ; preds = %0
  %5 = icmp ne [3 x float]* %box, null, !dbg !545
  %6 = select i1 %5, i32 36, i32 0, !dbg !545
  %7 = getelementptr inbounds i8* %1, i64 8, !dbg !547
  %8 = bitcast i8* %7 to i32*, !dbg !547
  store i32 %6, i32* %8, align 4, !dbg !548, !tbaa !328
  %9 = icmp eq [3 x float]* %x, null, !dbg !549
  br i1 %9, label %13, label %10, !dbg !549

; <label>:10                                      ; preds = %4
  %11 = load i32* %natoms, align 4, !dbg !550, !tbaa !391
  %12 = mul i32 %11, 12, !dbg !551
  br label %13, !dbg !549

; <label>:13                                      ; preds = %4, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %4 ]
  %15 = getelementptr inbounds i8* %1, i64 28, !dbg !552
  %16 = bitcast i8* %15 to i32*, !dbg !552
  store i32 %14, i32* %16, align 4, !dbg !553, !tbaa !334
  %17 = icmp eq [3 x float]* %v, null, !dbg !554
  br i1 %17, label %21, label %18, !dbg !554

; <label>:18                                      ; preds = %13
  %19 = load i32* %natoms, align 4, !dbg !555, !tbaa !391
  %20 = mul i32 %19, 12, !dbg !556
  br label %21, !dbg !554

; <label>:21                                      ; preds = %13, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ]
  %23 = getelementptr inbounds i8* %1, i64 32, !dbg !557
  %24 = bitcast i8* %23 to i32*, !dbg !557
  store i32 %22, i32* %24, align 4, !dbg !558, !tbaa !338
  %25 = icmp eq [3 x float]* %f, null, !dbg !559
  br i1 %25, label %29, label %26, !dbg !559

; <label>:26                                      ; preds = %21
  %27 = load i32* %natoms, align 4, !dbg !560, !tbaa !391
  %28 = mul i32 %27, 12, !dbg !561
  br label %29, !dbg !559

; <label>:29                                      ; preds = %21, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %21 ]
  %31 = getelementptr inbounds i8* %1, i64 36, !dbg !562
  %32 = bitcast i8* %31 to i32*, !dbg !562
  store i32 %30, i32* %32, align 4, !dbg !563, !tbaa !342
  %33 = load i32* %natoms, align 4, !dbg !564, !tbaa !391
  %34 = getelementptr inbounds i8* %1, i64 40, !dbg !565
  %35 = bitcast i8* %34 to i32*, !dbg !565
  store i32 %33, i32* %35, align 4, !dbg !566, !tbaa !346
  %36 = load i32* %step, align 4, !dbg !567, !tbaa !391
  %37 = getelementptr inbounds i8* %1, i64 44, !dbg !568
  %38 = bitcast i8* %37 to i32*, !dbg !568
  store i32 %36, i32* %38, align 4, !dbg !569, !tbaa !350
  %39 = getelementptr inbounds i8* %1, i64 48, !dbg !570
  %40 = bitcast i8* %39 to i32*, !dbg !570
  store i32 0, i32* %40, align 4, !dbg !571, !tbaa !572
  %41 = bitcast float* %t to i32*, !dbg !573
  %42 = load i32* %41, align 4, !dbg !573, !tbaa !513
  %43 = getelementptr inbounds i8* %1, i64 52, !dbg !574
  %44 = bitcast i8* %43 to i32*, !dbg !574
  store i32 %42, i32* %44, align 4, !dbg !574, !tbaa !354
  %45 = bitcast float* %lambda to i32*, !dbg !575
  %46 = load i32* %45, align 4, !dbg !575, !tbaa !513
  %47 = getelementptr inbounds i8* %1, i64 56, !dbg !576
  %48 = bitcast i8* %47 to i32*, !dbg !576
  store i32 %46, i32* %48, align 4, !dbg !576, !tbaa !359
  br label %49, !dbg !577

; <label>:49                                      ; preds = %29, %0
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !252, metadata !278), !dbg !578
  %50 = call fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %2, i32* %bOK) #8, !dbg !579
  %51 = icmp eq i32 %50, 0, !dbg !579
  br i1 %51, label %93, label %52, !dbg !581

; <label>:52                                      ; preds = %49
  br i1 %3, label %53, label %90, !dbg !582

; <label>:53                                      ; preds = %52
  %54 = getelementptr inbounds i8* %1, i64 40, !dbg !583
  %55 = bitcast i8* %54 to i32*, !dbg !583
  %56 = load i32* %55, align 4, !dbg !583, !tbaa !346
  store i32 %56, i32* %natoms, align 4, !dbg !586, !tbaa !391
  %57 = getelementptr inbounds i8* %1, i64 44, !dbg !587
  %58 = bitcast i8* %57 to i32*, !dbg !587
  %59 = load i32* %58, align 4, !dbg !587, !tbaa !350
  store i32 %59, i32* %step, align 4, !dbg !588, !tbaa !391
  %60 = getelementptr inbounds i8* %1, i64 52, !dbg !589
  %61 = bitcast i8* %60 to i32*, !dbg !589
  %62 = load i32* %61, align 4, !dbg !589, !tbaa !354
  %63 = bitcast float* %t to i32*, !dbg !590
  store i32 %62, i32* %63, align 4, !dbg !590, !tbaa !513
  %64 = getelementptr inbounds i8* %1, i64 56, !dbg !591
  %65 = bitcast i8* %64 to i32*, !dbg !591
  %66 = load i32* %65, align 4, !dbg !591, !tbaa !359
  %67 = bitcast float* %lambda to i32*, !dbg !592
  store i32 %66, i32* %67, align 4, !dbg !592, !tbaa !513
  %68 = bitcast i8* %1 to i32*, !dbg !593
  %69 = load i32* %68, align 4, !dbg !593, !tbaa !595
  %70 = icmp eq i32 %69, 0, !dbg !596
  br i1 %70, label %72, label %71, !dbg !597

; <label>:71                                      ; preds = %53
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !598
  br label %72, !dbg !598

; <label>:72                                      ; preds = %53, %71
  %73 = getelementptr inbounds i8* %1, i64 4, !dbg !599
  %74 = bitcast i8* %73 to i32*, !dbg !599
  %75 = load i32* %74, align 4, !dbg !599, !tbaa !601
  %76 = icmp eq i32 %75, 0, !dbg !602
  br i1 %76, label %78, label %77, !dbg !603

; <label>:77                                      ; preds = %72
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !604
  br label %78, !dbg !604

; <label>:78                                      ; preds = %72, %77
  %79 = getelementptr inbounds i8* %1, i64 20, !dbg !605
  %80 = bitcast i8* %79 to i32*, !dbg !605
  %81 = load i32* %80, align 4, !dbg !605, !tbaa !607
  %82 = icmp eq i32 %81, 0, !dbg !608
  br i1 %82, label %84, label %83, !dbg !609

; <label>:83                                      ; preds = %78
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str37, i64 0, i64 0)) #7, !dbg !610
  br label %84, !dbg !610

; <label>:84                                      ; preds = %78, %83
  %85 = getelementptr inbounds i8* %1, i64 24, !dbg !611
  %86 = bitcast i8* %85 to i32*, !dbg !611
  %87 = load i32* %86, align 4, !dbg !611, !tbaa !613
  %88 = icmp eq i32 %87, 0, !dbg !614
  br i1 %88, label %90, label %89, !dbg !615

; <label>:89                                      ; preds = %84
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !616
  br label %90, !dbg !616

; <label>:90                                      ; preds = %84, %89, %52
  %91 = call fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* %2, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #8, !dbg !617
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !252, metadata !278), !dbg !578
  store i32 %91, i32* %bOK, align 4, !dbg !618, !tbaa !391
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 191, i8* %1) #7, !dbg !619
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !252, metadata !278), !dbg !578
  %92 = load i32* %bOK, align 4, !dbg !620, !tbaa !391
  br label %93, !dbg !621

; <label>:93                                      ; preds = %49, %90
  %.0 = phi i32 [ %92, %90 ], [ 0, %49 ]
  ret i32 %.0, !dbg !622
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_trn(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !162, metadata !278), !dbg !623
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !163, metadata !278), !dbg !624
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !164, metadata !278), !dbg !625
  tail call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !165, metadata !278), !dbg !626
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !166, metadata !278), !dbg !627
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !167, metadata !278), !dbg !628
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !168, metadata !278), !dbg !629
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !169, metadata !278), !dbg !630
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !170, metadata !278), !dbg !631
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !212, metadata !278) #6, !dbg !632
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i64 0, metadata !213, metadata !278) #6, !dbg !634
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !171, metadata !278), !dbg !636
  %2 = tail call fastcc i32 @do_trn(i32 %1, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #8, !dbg !637
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !218, metadata !278) #6, !dbg !638
  tail call void @gmx_fio_close(i32 %1) #7, !dbg !640
  ret void, !dbg !641
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fwrite_trn(i32 %fp, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !176, metadata !278), !dbg !642
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !177, metadata !278), !dbg !643
  store i32 %step, i32* %1, align 4, !tbaa !391
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !178, metadata !278), !dbg !644
  store float %t, float* %2, align 4, !tbaa !513
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !179, metadata !278), !dbg !645
  store float %lambda, float* %3, align 4, !tbaa !513
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !180, metadata !278), !dbg !646
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !181, metadata !278), !dbg !647
  store i32 %natoms, i32* %4, align 4, !tbaa !391
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !182, metadata !278), !dbg !648
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !183, metadata !278), !dbg !649
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !184, metadata !278), !dbg !650
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !177, metadata !278), !dbg !643
  tail call void @llvm.dbg.value(metadata float* %2, i64 0, metadata !178, metadata !278), !dbg !644
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !179, metadata !278), !dbg !645
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !181, metadata !278), !dbg !647
  %5 = call fastcc i32 @do_trn(i32 %fp, i32 0, i32* %1, float* %2, float* %3, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #8, !dbg !651
  ret void, !dbg !652
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fread_trn(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !189, metadata !278), !dbg !653
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !190, metadata !278), !dbg !654
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !191, metadata !278), !dbg !655
  tail call void @llvm.dbg.value(metadata float* %lambda, i64 0, metadata !192, metadata !278), !dbg !656
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !193, metadata !278), !dbg !657
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !194, metadata !278), !dbg !658
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !195, metadata !278), !dbg !659
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !196, metadata !278), !dbg !660
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !197, metadata !278), !dbg !661
  %1 = tail call fastcc i32 @do_trn(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #8, !dbg !662
  ret i32 %1, !dbg !663
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fread_htrn(i32 %fp, %struct.t_trnheader* nocapture readonly %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !202, metadata !278), !dbg !664
  tail call void @llvm.dbg.value(metadata %struct.t_trnheader* %trn, i64 0, metadata !203, metadata !278), !dbg !665
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !204, metadata !278), !dbg !666
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !205, metadata !278), !dbg !667
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !206, metadata !278), !dbg !668
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !207, metadata !278), !dbg !669
  %1 = tail call fastcc i32 @do_htrn(i32 1, %struct.t_trnheader* %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #8, !dbg !670
  ret i32 %1, !dbg !671
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* nocapture readonly %sh, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #4 {
  %pv = alloca [3 x [3 x float]], align 16
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !257, metadata !278), !dbg !672
  %1 = bitcast [3 x [3 x float]]* %pv to i8*, !dbg !673
  call void @llvm.lifetime.start(i64 36, i8* %1) #6, !dbg !673
  tail call void @llvm.dbg.declare(metadata [3 x [3 x float]]* %pv, metadata !264, metadata !278), !dbg !674
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !268, metadata !278), !dbg !675
  %2 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !676
  %3 = load i32* %2, align 4, !dbg !676, !tbaa !328
  %4 = icmp eq i32 %3, 0, !dbg !678
  br i1 %4, label %19, label %5, !dbg !679

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %bRead, 0, !dbg !680
  br i1 %6, label %11, label %7, !dbg !680

; <label>:7                                       ; preds = %5
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !680, !tbaa !396
  %9 = bitcast [3 x float]* %box to i8*, !dbg !680
  %10 = tail call i32 %8(i8* %9, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 145) #7, !dbg !680
  br label %15, !dbg !680

; <label>:11                                      ; preds = %5
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !680, !tbaa !396
  %13 = bitcast [3 x float]* %box to i8*, !dbg !680
  %14 = tail call i32 %12(i8* %13, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 145) #7, !dbg !680
  br label %15, !dbg !680

; <label>:15                                      ; preds = %11, %7
  %16 = phi i32 [ %10, %7 ], [ %14, %11 ], !dbg !680
  %17 = icmp ne i32 %16, 0, !dbg !681
  %18 = zext i1 %17 to i32, !dbg !681
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !268, metadata !278), !dbg !675
  br label %19, !dbg !682

; <label>:19                                      ; preds = %0, %15
  %bOK.0 = phi i32 [ %18, %15 ], [ 1, %0 ]
  %20 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3, !dbg !683
  %21 = load i32* %20, align 4, !dbg !683, !tbaa !685
  %22 = icmp eq i32 %21, 0, !dbg !686
  br i1 %22, label %39, label %23, !dbg !687

; <label>:23                                      ; preds = %19
  %24 = icmp eq i32 %bOK.0, 0, !dbg !688
  br i1 %24, label %36, label %25, !dbg !689

; <label>:25                                      ; preds = %23
  %26 = icmp eq i32 %bRead, 0, !dbg !690
  br i1 %26, label %30, label %27, !dbg !690

; <label>:27                                      ; preds = %25
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !690, !tbaa !396
  %29 = call i32 %28(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 146) #7, !dbg !690
  br label %33, !dbg !690

; <label>:30                                      ; preds = %25
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !690, !tbaa !396
  %32 = call i32 %31(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 146) #7, !dbg !690
  br label %33, !dbg !690

; <label>:33                                      ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ], !dbg !690
  %35 = icmp ne i32 %34, 0, !dbg !689
  br label %36

; <label>:36                                      ; preds = %23, %33
  %37 = phi i1 [ false, %23 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32, !dbg !689
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !268, metadata !278), !dbg !675
  br label %39, !dbg !691

; <label>:39                                      ; preds = %19, %36
  %bOK.1 = phi i32 [ %38, %36 ], [ %bOK.0, %19 ]
  %40 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4, !dbg !692
  %41 = load i32* %40, align 4, !dbg !692, !tbaa !694
  %42 = icmp eq i32 %41, 0, !dbg !695
  br i1 %42, label %59, label %43, !dbg !696

; <label>:43                                      ; preds = %39
  %44 = icmp eq i32 %bOK.1, 0, !dbg !697
  br i1 %44, label %56, label %45, !dbg !698

; <label>:45                                      ; preds = %43
  %46 = icmp eq i32 %bRead, 0, !dbg !699
  br i1 %46, label %50, label %47, !dbg !699

; <label>:47                                      ; preds = %45
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !699, !tbaa !396
  %49 = call i32 %48(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 147) #7, !dbg !699
  br label %53, !dbg !699

; <label>:50                                      ; preds = %45
  %51 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !699, !tbaa !396
  %52 = call i32 %51(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 147) #7, !dbg !699
  br label %53, !dbg !699

; <label>:53                                      ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ], !dbg !699
  %55 = icmp ne i32 %54, 0, !dbg !698
  br label %56

; <label>:56                                      ; preds = %43, %53
  %57 = phi i1 [ false, %43 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32, !dbg !698
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !268, metadata !278), !dbg !675
  br label %59, !dbg !700

; <label>:59                                      ; preds = %39, %56
  %bOK.2 = phi i32 [ %58, %56 ], [ %bOK.1, %39 ]
  %60 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !701
  %61 = load i32* %60, align 4, !dbg !701, !tbaa !334
  %62 = icmp eq i32 %61, 0, !dbg !703
  br i1 %62, label %83, label %63, !dbg !704

; <label>:63                                      ; preds = %59
  %64 = icmp eq i32 %bOK.2, 0, !dbg !705
  br i1 %64, label %80, label %65, !dbg !706

; <label>:65                                      ; preds = %63
  %66 = icmp eq i32 %bRead, 0, !dbg !707
  %67 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %68 = load i32* %67, align 4
  br i1 %66, label %73, label %69, !dbg !707

; <label>:69                                      ; preds = %65
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !707, !tbaa !396
  %71 = bitcast [3 x float]* %x to i8*, !dbg !707
  %72 = call i32 %70(i8* %71, i32 %68, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 148) #7, !dbg !707
  br label %77, !dbg !707

; <label>:73                                      ; preds = %65
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !707, !tbaa !396
  %75 = bitcast [3 x float]* %x to i8*, !dbg !707
  %76 = call i32 %74(i8* %75, i32 %68, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 148) #7, !dbg !707
  br label %77, !dbg !707

; <label>:77                                      ; preds = %73, %69
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ], !dbg !707
  %79 = icmp ne i32 %78, 0, !dbg !706
  br label %80

; <label>:80                                      ; preds = %63, %77
  %81 = phi i1 [ false, %63 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32, !dbg !706
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !268, metadata !278), !dbg !675
  br label %83, !dbg !708

; <label>:83                                      ; preds = %59, %80
  %bOK.3 = phi i32 [ %82, %80 ], [ %bOK.2, %59 ]
  %84 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !709
  %85 = load i32* %84, align 4, !dbg !709, !tbaa !338
  %86 = icmp eq i32 %85, 0, !dbg !711
  br i1 %86, label %107, label %87, !dbg !712

; <label>:87                                      ; preds = %83
  %88 = icmp eq i32 %bOK.3, 0, !dbg !713
  br i1 %88, label %104, label %89, !dbg !714

; <label>:89                                      ; preds = %87
  %90 = icmp eq i32 %bRead, 0, !dbg !715
  %91 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %92 = load i32* %91, align 4
  br i1 %90, label %97, label %93, !dbg !715

; <label>:93                                      ; preds = %89
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !715, !tbaa !396
  %95 = bitcast [3 x float]* %v to i8*, !dbg !715
  %96 = call i32 %94(i8* %95, i32 %92, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 149) #7, !dbg !715
  br label %101, !dbg !715

; <label>:97                                      ; preds = %89
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !715, !tbaa !396
  %99 = bitcast [3 x float]* %v to i8*, !dbg !715
  %100 = call i32 %98(i8* %99, i32 %92, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 149) #7, !dbg !715
  br label %101, !dbg !715

; <label>:101                                     ; preds = %97, %93
  %102 = phi i32 [ %96, %93 ], [ %100, %97 ], !dbg !715
  %103 = icmp ne i32 %102, 0, !dbg !714
  br label %104

; <label>:104                                     ; preds = %87, %101
  %105 = phi i1 [ false, %87 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32, !dbg !714
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !268, metadata !278), !dbg !675
  br label %107, !dbg !716

; <label>:107                                     ; preds = %83, %104
  %bOK.4 = phi i32 [ %106, %104 ], [ %bOK.3, %83 ]
  %108 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !717
  %109 = load i32* %108, align 4, !dbg !717, !tbaa !342
  %110 = icmp eq i32 %109, 0, !dbg !719
  br i1 %110, label %131, label %111, !dbg !720

; <label>:111                                     ; preds = %107
  %112 = icmp eq i32 %bOK.4, 0, !dbg !721
  br i1 %112, label %128, label %113, !dbg !722

; <label>:113                                     ; preds = %111
  %114 = icmp eq i32 %bRead, 0, !dbg !723
  %115 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %116 = load i32* %115, align 4
  br i1 %114, label %121, label %117, !dbg !723

; <label>:117                                     ; preds = %113
  %118 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !723, !tbaa !396
  %119 = bitcast [3 x float]* %f to i8*, !dbg !723
  %120 = call i32 %118(i8* %119, i32 %116, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 150) #7, !dbg !723
  br label %125, !dbg !723

; <label>:121                                     ; preds = %113
  %122 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !723, !tbaa !396
  %123 = bitcast [3 x float]* %f to i8*, !dbg !723
  %124 = call i32 %122(i8* %123, i32 %116, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 150) #7, !dbg !723
  br label %125, !dbg !723

; <label>:125                                     ; preds = %121, %117
  %126 = phi i32 [ %120, %117 ], [ %124, %121 ], !dbg !723
  %127 = icmp ne i32 %126, 0, !dbg !722
  br label %128

; <label>:128                                     ; preds = %111, %125
  %129 = phi i1 [ false, %111 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32, !dbg !722
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !268, metadata !278), !dbg !675
  br label %131, !dbg !724

; <label>:131                                     ; preds = %107, %128
  %bOK.5 = phi i32 [ %130, %128 ], [ %bOK.4, %107 ]
  call void @llvm.lifetime.end(i64 36, i8* %1) #6, !dbg !725
  ret i32 %bOK.5, !dbg !725
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!274, !275, !276}
!llvm.ident = !{!277}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !15, subprograms: !18, globals: !269, imports: !273)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 52, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmxfio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "eioREAL", value: 0)
!7 = !DIEnumerator(name: "eioINT", value: 1)
!8 = !DIEnumerator(name: "eioNUCHAR", value: 2)
!9 = !DIEnumerator(name: "eioUSHORT", value: 3)
!10 = !DIEnumerator(name: "eioRVEC", value: 4)
!11 = !DIEnumerator(name: "eioNRVEC", value: 5)
!12 = !DIEnumerator(name: "eioIVEC", value: 6)
!13 = !DIEnumerator(name: "eioSTRING", value: 7)
!14 = !DIEnumerator(name: "eioNR", value: 8)
!15 = !{!16, !17}
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !{!19, !87, !93, !124, !132, !140, !157, !172, !185, !198, !208, !214, !219, !231, !237, !253}
!19 = !DISubprogram(name: "__sputc", scope: !20, file: !20, line: 348, type: !21, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !84)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23, !24}
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 153, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !20, line: 122, size: 1216, align: 64, elements: !27)
!27 = !{!28, !31, !32, !33, !35, !36, !41, !42, !43, !47, !52, !62, !68, !69, !72, !73, !77, !81, !82, !83}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !20, line: 123, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !20, line: 124, baseType: !23, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !20, line: 125, baseType: !23, size: 32, align: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !20, line: 126, baseType: !34, size: 16, align: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !20, line: 127, baseType: !34, size: 16, align: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !20, line: 128, baseType: !37, size: 128, align: 64, offset: 192)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !20, line: 88, size: 128, align: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !20, line: 89, baseType: !29, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !20, line: 90, baseType: !23, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !20, line: 129, baseType: !23, size: 32, align: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !20, line: 132, baseType: !17, size: 64, align: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !20, line: 133, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!23, !17}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !20, line: 134, baseType: !48, size: 64, align: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!23, !17, !51, !23}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !20, line: 135, baseType: !53, size: 64, align: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !17, !56, !23}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !20, line: 77, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !58, line: 71, baseType: !59)
!58 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!61 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !20, line: 136, baseType: !63, size: 64, align: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!23, !17, !66, !23}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !20, line: 139, baseType: !37, size: 128, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !26, file: !20, line: 140, baseType: !70, size: 64, align: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !20, line: 94, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !20, line: 141, baseType: !23, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !20, line: 144, baseType: !74, size: 24, align: 8, offset: 928)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !20, line: 145, baseType: !78, size: 8, align: 8, offset: 952)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !20, line: 148, baseType: !37, size: 128, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !20, line: 151, baseType: !23, size: 32, align: 32, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !20, line: 152, baseType: !56, size: 64, align: 64, offset: 1152)
!84 = !{!85, !86}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !19, file: !20, line: 348, type: !23)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !19, file: !20, line: 348, type: !24)
!87 = !DISubprogram(name: "__sigbits", scope: !88, file: !88, line: 114, type: !89, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !91)
!88 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!89 = !DISubroutineType(types: !90)
!90 = !{!23, !23}
!91 = !{!92}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !87, file: !88, line: 114, type: !23)
!93 = !DISubprogram(name: "pr_trnheader", scope: !1, file: !1, line: 114, type: !94, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i8*, %struct.t_trnheader*)* @pr_trnheader, variables: !119)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !24, !23, !51, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_trnheader", file: !98, line: 77, baseType: !99)
!98 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!99 = !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 58, size: 480, align: 32, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !118}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ir_size", scope: !99, file: !98, line: 61, baseType: !23, size: 32, align: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "e_size", scope: !99, file: !98, line: 62, baseType: !23, size: 32, align: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "box_size", scope: !99, file: !98, line: 63, baseType: !23, size: 32, align: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "vir_size", scope: !99, file: !98, line: 64, baseType: !23, size: 32, align: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pres_size", scope: !99, file: !98, line: 65, baseType: !23, size: 32, align: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "top_size", scope: !99, file: !98, line: 66, baseType: !23, size: 32, align: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_size", scope: !99, file: !98, line: 67, baseType: !23, size: 32, align: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "x_size", scope: !99, file: !98, line: 68, baseType: !23, size: 32, align: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "v_size", scope: !99, file: !98, line: 69, baseType: !23, size: 32, align: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "f_size", scope: !99, file: !98, line: 70, baseType: !23, size: 32, align: 32, offset: 288)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !99, file: !98, line: 72, baseType: !23, size: 32, align: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !99, file: !98, line: 73, baseType: !23, size: 32, align: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nre", scope: !99, file: !98, line: 74, baseType: !23, size: 32, align: 32, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !99, file: !98, line: 75, baseType: !115, size: 32, align: 32, offset: 416)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !116, line: 87, baseType: !117)
!116 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!117 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !99, file: !98, line: 76, baseType: !115, size: 32, align: 32, offset: 448)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !93, file: !1, line: 114, type: !24)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "indent", arg: 2, scope: !93, file: !1, line: 114, type: !23)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 3, scope: !93, file: !1, line: 114, type: !51)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sh", arg: 4, scope: !93, file: !1, line: 114, type: !96)
!124 = !DISubprogram(name: "read_trnheader", scope: !1, file: !1, line: 202, type: !125, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct.t_trnheader*)* @read_trnheader, variables: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !51, !96}
!127 = !{!128, !129, !130, !131}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !124, file: !1, line: 202, type: !51)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "trn", arg: 2, scope: !124, file: !1, line: 202, type: !96)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !124, file: !1, line: 204, type: !23)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !124, file: !1, line: 205, type: !23)
!132 = !DISubprogram(name: "fread_trnheader", scope: !1, file: !1, line: 213, type: !133, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_trnheader*, i32*)* @fread_trnheader, variables: !136)
!133 = !DISubroutineType(types: !134)
!134 = !{!23, !23, !96, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!136 = !{!137, !138, !139}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !132, file: !1, line: 213, type: !23)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "trn", arg: 2, scope: !132, file: !1, line: 213, type: !96)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOK", arg: 3, scope: !132, file: !1, line: 213, type: !135)
!140 = !DISubprogram(name: "write_trn", scope: !1, file: !1, line: 218, type: !141, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_trn, variables: !146)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !51, !23, !115, !115, !143, !23, !143, !143, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !116, line: 101, baseType: !145)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 96, align: 32, elements: !75)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !140, file: !1, line: 218, type: !51)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !140, file: !1, line: 218, type: !23)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !140, file: !1, line: 218, type: !115)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !140, file: !1, line: 218, type: !115)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !140, file: !1, line: 219, type: !143)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 6, scope: !140, file: !1, line: 219, type: !23)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 7, scope: !140, file: !1, line: 219, type: !143)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 8, scope: !140, file: !1, line: 219, type: !143)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 9, scope: !140, file: !1, line: 219, type: !143)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !140, file: !1, line: 221, type: !23)
!157 = !DISubprogram(name: "read_trn", scope: !1, file: !1, line: 228, type: !158, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32*, float*, float*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @read_trn, variables: !161)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !51, !135, !160, !160, !143, !135, !143, !143, !143}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !157, file: !1, line: 228, type: !51)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !157, file: !1, line: 228, type: !135)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !157, file: !1, line: 228, type: !160)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !157, file: !1, line: 228, type: !160)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !157, file: !1, line: 229, type: !143)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 6, scope: !157, file: !1, line: 229, type: !135)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 7, scope: !157, file: !1, line: 229, type: !143)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 8, scope: !157, file: !1, line: 229, type: !143)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 9, scope: !157, file: !1, line: 229, type: !143)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !157, file: !1, line: 231, type: !23)
!172 = !DISubprogram(name: "fwrite_trn", scope: !1, file: !1, line: 238, type: !173, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @fwrite_trn, variables: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !23, !23, !115, !115, !143, !23, !143, !143, !143}
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !172, file: !1, line: 238, type: !23)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !172, file: !1, line: 238, type: !23)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !172, file: !1, line: 238, type: !115)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !172, file: !1, line: 238, type: !115)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !172, file: !1, line: 239, type: !143)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 6, scope: !172, file: !1, line: 239, type: !23)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 7, scope: !172, file: !1, line: 239, type: !143)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 8, scope: !172, file: !1, line: 239, type: !143)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 9, scope: !172, file: !1, line: 239, type: !143)
!185 = !DISubprogram(name: "fread_trn", scope: !1, file: !1, line: 245, type: !186, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32*, float*, float*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @fread_trn, variables: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!23, !23, !135, !160, !160, !143, !135, !143, !143, !143}
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197}
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !185, file: !1, line: 245, type: !23)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 2, scope: !185, file: !1, line: 245, type: !135)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !185, file: !1, line: 245, type: !160)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 4, scope: !185, file: !1, line: 245, type: !160)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !185, file: !1, line: 246, type: !143)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 6, scope: !185, file: !1, line: 246, type: !135)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 7, scope: !185, file: !1, line: 246, type: !143)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 8, scope: !185, file: !1, line: 246, type: !143)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 9, scope: !185, file: !1, line: 246, type: !143)
!198 = !DISubprogram(name: "fread_htrn", scope: !1, file: !1, line: 251, type: !199, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @fread_htrn, variables: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!23, !23, !96, !143, !143, !143, !143}
!201 = !{!202, !203, !204, !205, !206, !207}
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !198, file: !1, line: 251, type: !23)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "trn", arg: 2, scope: !198, file: !1, line: 251, type: !96)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 3, scope: !198, file: !1, line: 251, type: !143)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !198, file: !1, line: 251, type: !143)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !198, file: !1, line: 251, type: !143)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 6, scope: !198, file: !1, line: 251, type: !143)
!208 = !DISubprogram(name: "open_trn", scope: !1, file: !1, line: 256, type: !209, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @open_trn, variables: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!23, !51, !51}
!211 = !{!212, !213}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !208, file: !1, line: 256, type: !51)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !208, file: !1, line: 256, type: !51)
!214 = !DISubprogram(name: "close_trn", scope: !1, file: !1, line: 261, type: !215, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @close_trn, variables: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !23}
!217 = !{!218}
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !214, file: !1, line: 261, type: !23)
!219 = !DISubprogram(name: "do_trnheader", scope: !1, file: !1, line: 69, type: !220, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, %struct.t_trnheader*, i32*)* @do_trnheader, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!23, !23, !23, !96, !135}
!222 = !{!223, !224, !225, !226, !227}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !219, file: !1, line: 69, type: !23)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !219, file: !1, line: 69, type: !23)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sh", arg: 3, scope: !219, file: !1, line: 69, type: !96)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOK", arg: 4, scope: !219, file: !1, line: 69, type: !135)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !219, file: !1, line: 74, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, align: 8, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 256)
!231 = !DISubprogram(name: "nFloatSize", scope: !1, file: !1, line: 48, type: !232, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, variables: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!23, !96}
!234 = !{!235, !236}
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sh", arg: 1, scope: !231, file: !1, line: 48, type: !96)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nflsize", scope: !231, file: !1, line: 50, type: !23)
!237 = !DISubprogram(name: "do_trn", scope: !1, file: !1, line: 155, type: !238, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32*, float*, float*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @do_trn, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!23, !23, !23, !135, !160, !160, !143, !135, !143, !143, !143}
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !237, file: !1, line: 155, type: !23)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !237, file: !1, line: 155, type: !23)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !237, file: !1, line: 155, type: !135)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 4, scope: !237, file: !1, line: 155, type: !160)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 5, scope: !237, file: !1, line: 155, type: !160)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !237, file: !1, line: 156, type: !143)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 7, scope: !237, file: !1, line: 156, type: !135)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !237, file: !1, line: 156, type: !143)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 9, scope: !237, file: !1, line: 156, type: !143)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 10, scope: !237, file: !1, line: 156, type: !143)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sh", scope: !237, file: !1, line: 158, type: !96)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !237, file: !1, line: 159, type: !23)
!253 = !DISubprogram(name: "do_htrn", scope: !1, file: !1, line: 138, type: !254, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @do_htrn, variables: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!23, !23, !23, !96, !143, !143, !143, !143}
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !268}
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !253, file: !1, line: 138, type: !23)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRead", arg: 2, scope: !253, file: !1, line: 138, type: !23)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sh", arg: 3, scope: !253, file: !1, line: 138, type: !96)
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 4, scope: !253, file: !1, line: 139, type: !143)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !253, file: !1, line: 139, type: !143)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 6, scope: !253, file: !1, line: 139, type: !143)
!263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 7, scope: !253, file: !1, line: 139, type: !143)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pv", scope: !253, file: !1, line: 141, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !116, line: 103, baseType: !266)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 288, align: 32, elements: !267)
!267 = !{!76, !76}
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !253, file: !1, line: 142, type: !23)
!269 = !{!270, !271, !272}
!270 = !DIGlobalVariable(name: "magic", scope: !219, file: !1, line: 71, type: !23, isLocal: true, isDefinition: true, variable: i32* @do_trnheader.magic)
!271 = !DIGlobalVariable(name: "version", scope: !219, file: !1, line: 72, type: !51, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariable(name: "bFirst", scope: !219, file: !1, line: 73, type: !23, isLocal: true, isDefinition: true)
!273 = !{}
!274 = !{i32 2, !"Dwarf Version", i32 2}
!275 = !{i32 2, !"Debug Info Version", i32 700000003}
!276 = !{i32 1, !"PIC Level", i32 2}
!277 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!278 = !DIExpression()
!279 = !DILocation(line: 348, column: 40, scope: !19)
!280 = !DILocation(line: 348, column: 50, scope: !19)
!281 = !DILocation(line: 349, column: 12, scope: !282)
!282 = distinct !DILexicalBlock(scope: !19, file: !20, line: 349, column: 6)
!283 = !DILocation(line: 349, column: 6, scope: !282)
!284 = !{!285, !289, i64 12}
!285 = !{!"__sFILE", !286, i64 0, !289, i64 8, !289, i64 12, !290, i64 16, !290, i64 18, !291, i64 24, !289, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !291, i64 88, !286, i64 104, !289, i64 112, !287, i64 116, !287, i64 119, !291, i64 120, !289, i64 136, !292, i64 144}
!286 = !{!"any pointer", !287, i64 0}
!287 = !{!"omnipotent char", !288, i64 0}
!288 = !{!"Simple C/C++ TBAA"}
!289 = !{!"int", !287, i64 0}
!290 = !{!"short", !287, i64 0}
!291 = !{!"__sbuf", !286, i64 0, !289, i64 8}
!292 = !{!"long long", !287, i64 0}
!293 = !DILocation(line: 349, column: 15, scope: !282)
!294 = !DILocation(line: 349, column: 20, scope: !282)
!295 = !DILocation(line: 350, column: 10, scope: !282)
!296 = !DILocation(line: 349, column: 38, scope: !282)
!297 = !{!285, !289, i64 40}
!298 = !DILocation(line: 349, column: 31, scope: !282)
!299 = !DILocation(line: 349, column: 59, scope: !282)
!300 = !DILocation(line: 349, column: 47, scope: !282)
!301 = !DILocation(line: 350, column: 23, scope: !282)
!302 = !DILocation(line: 350, column: 16, scope: !282)
!303 = !DILocation(line: 350, column: 18, scope: !282)
!304 = !{!285, !286, i64 0}
!305 = !DILocation(line: 350, column: 21, scope: !282)
!306 = !{!287, !287, i64 0}
!307 = !DILocation(line: 350, column: 3, scope: !282)
!308 = !DILocation(line: 352, column: 11, scope: !282)
!309 = !DILocation(line: 352, column: 3, scope: !282)
!310 = !DILocation(line: 353, column: 1, scope: !19)
!311 = !DILocation(line: 114, column: 15, scope: !87)
!312 = !DILocation(line: 116, column: 20, scope: !87)
!313 = !DILocation(line: 116, column: 12, scope: !87)
!314 = !DILocation(line: 116, column: 57, scope: !87)
!315 = !DILocation(line: 116, column: 45, scope: !87)
!316 = !DILocation(line: 116, column: 5, scope: !87)
!317 = !DILocation(line: 114, column: 25, scope: !93)
!318 = !DILocation(line: 114, column: 32, scope: !93)
!319 = !DILocation(line: 114, column: 45, scope: !93)
!320 = !DILocation(line: 114, column: 64, scope: !93)
!321 = !DILocation(line: 116, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !93, file: !1, line: 116, column: 7)
!323 = !DILocation(line: 116, column: 7, scope: !93)
!324 = !DILocation(line: 117, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 116, column: 11)
!326 = !DILocation(line: 118, column: 12, scope: !325)
!327 = !DILocation(line: 119, column: 48, scope: !325)
!328 = !{!329, !289, i64 8}
!329 = !{!"", !289, i64 0, !289, i64 4, !289, i64 8, !289, i64 12, !289, i64 16, !289, i64 20, !289, i64 24, !289, i64 28, !289, i64 32, !289, i64 36, !289, i64 40, !289, i64 44, !289, i64 48, !330, i64 52, !330, i64 56}
!330 = !{!"float", !287, i64 0}
!331 = !DILocation(line: 119, column: 12, scope: !325)
!332 = !DILocation(line: 120, column: 12, scope: !325)
!333 = !DILocation(line: 121, column: 48, scope: !325)
!334 = !{!329, !289, i64 28}
!335 = !DILocation(line: 121, column: 12, scope: !325)
!336 = !DILocation(line: 122, column: 12, scope: !325)
!337 = !DILocation(line: 123, column: 48, scope: !325)
!338 = !{!329, !289, i64 32}
!339 = !DILocation(line: 123, column: 12, scope: !325)
!340 = !DILocation(line: 124, column: 12, scope: !325)
!341 = !DILocation(line: 125, column: 48, scope: !325)
!342 = !{!329, !289, i64 36}
!343 = !DILocation(line: 125, column: 12, scope: !325)
!344 = !DILocation(line: 127, column: 12, scope: !325)
!345 = !DILocation(line: 128, column: 48, scope: !325)
!346 = !{!329, !289, i64 40}
!347 = !DILocation(line: 128, column: 12, scope: !325)
!348 = !DILocation(line: 129, column: 12, scope: !325)
!349 = !DILocation(line: 130, column: 48, scope: !325)
!350 = !{!329, !289, i64 44}
!351 = !DILocation(line: 130, column: 12, scope: !325)
!352 = !DILocation(line: 131, column: 12, scope: !325)
!353 = !DILocation(line: 132, column: 48, scope: !325)
!354 = !{!329, !330, i64 52}
!355 = !DILocation(line: 132, column: 44, scope: !325)
!356 = !DILocation(line: 132, column: 12, scope: !325)
!357 = !DILocation(line: 133, column: 12, scope: !325)
!358 = !DILocation(line: 134, column: 48, scope: !325)
!359 = !{!329, !330, i64 56}
!360 = !DILocation(line: 134, column: 44, scope: !325)
!361 = !DILocation(line: 134, column: 12, scope: !325)
!362 = !DILocation(line: 135, column: 3, scope: !325)
!363 = !DILocation(line: 136, column: 1, scope: !93)
!364 = !DILocation(line: 202, column: 27, scope: !124)
!365 = !DILocation(line: 202, column: 43, scope: !124)
!366 = !DILocation(line: 256, column: 20, scope: !208, inlinedAt: !367)
!367 = distinct !DILocation(line: 207, column: 8, scope: !124)
!368 = !DILocation(line: 256, column: 29, scope: !208, inlinedAt: !367)
!369 = !DILocation(line: 258, column: 10, scope: !208, inlinedAt: !367)
!370 = !DILocation(line: 204, column: 8, scope: !124)
!371 = !DILocation(line: 205, column: 8, scope: !124)
!372 = !DILocation(line: 208, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !124, file: !1, line: 208, column: 7)
!374 = !DILocation(line: 208, column: 7, scope: !124)
!375 = !DILocation(line: 209, column: 5, scope: !373)
!376 = !DILocation(line: 261, column: 20, scope: !214, inlinedAt: !377)
!377 = distinct !DILocation(line: 210, column: 3, scope: !124)
!378 = !DILocation(line: 263, column: 3, scope: !214, inlinedAt: !377)
!379 = !DILocation(line: 211, column: 1, scope: !124)
!380 = !DILocation(line: 256, column: 20, scope: !208)
!381 = !DILocation(line: 256, column: 29, scope: !208)
!382 = !DILocation(line: 258, column: 10, scope: !208)
!383 = !DILocation(line: 258, column: 3, scope: !208)
!384 = !DILocation(line: 69, column: 30, scope: !219)
!385 = !DILocation(line: 69, column: 38, scope: !219)
!386 = !DILocation(line: 69, column: 57, scope: !219)
!387 = !DILocation(line: 69, column: 67, scope: !219)
!388 = !DILocation(line: 74, column: 3, scope: !219)
!389 = !DILocation(line: 74, column: 8, scope: !219)
!390 = !DILocation(line: 76, column: 7, scope: !219)
!391 = !{!289, !289, i64 0}
!392 = !DILocation(line: 78, column: 3, scope: !219)
!393 = !DILocation(line: 79, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !219, file: !1, line: 79, column: 7)
!395 = !DILocation(line: 79, column: 7, scope: !219)
!396 = !{!286, !286, i64 0}
!397 = !DILocation(line: 83, column: 12, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 82, column: 14)
!399 = distinct !DILexicalBlock(scope: !219, file: !1, line: 82, column: 7)
!400 = !DILocation(line: 83, column: 17, scope: !398)
!401 = !DILocation(line: 83, column: 20, scope: !398)
!402 = !DILocation(line: 83, column: 10, scope: !398)
!403 = !DILocation(line: 84, column: 9, scope: !398)
!404 = !DILocation(line: 85, column: 15, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 84, column: 17)
!406 = distinct !DILexicalBlock(scope: !398, file: !1, line: 84, column: 9)
!407 = !DILocation(line: 85, column: 7, scope: !405)
!408 = !DILocation(line: 91, column: 10, scope: !219)
!409 = !DILocation(line: 87, column: 5, scope: !405)
!410 = !DILocation(line: 90, column: 17, scope: !399)
!411 = !DILocation(line: 90, column: 20, scope: !399)
!412 = !DILocation(line: 90, column: 10, scope: !399)
!413 = !DILocation(line: 91, column: 15, scope: !219)
!414 = !DILocation(line: 91, column: 8, scope: !219)
!415 = !DILocation(line: 92, column: 15, scope: !219)
!416 = !DILocation(line: 91, column: 18, scope: !219)
!417 = !DILocation(line: 92, column: 18, scope: !219)
!418 = !DILocation(line: 92, column: 8, scope: !219)
!419 = !DILocation(line: 93, column: 15, scope: !219)
!420 = !DILocation(line: 93, column: 18, scope: !219)
!421 = !DILocation(line: 93, column: 8, scope: !219)
!422 = !DILocation(line: 94, column: 15, scope: !219)
!423 = !DILocation(line: 94, column: 18, scope: !219)
!424 = !DILocation(line: 94, column: 8, scope: !219)
!425 = !DILocation(line: 95, column: 15, scope: !219)
!426 = !DILocation(line: 95, column: 18, scope: !219)
!427 = !DILocation(line: 95, column: 8, scope: !219)
!428 = !DILocation(line: 96, column: 15, scope: !219)
!429 = !DILocation(line: 96, column: 18, scope: !219)
!430 = !DILocation(line: 96, column: 8, scope: !219)
!431 = !DILocation(line: 97, column: 15, scope: !219)
!432 = !DILocation(line: 97, column: 18, scope: !219)
!433 = !DILocation(line: 97, column: 8, scope: !219)
!434 = !DILocation(line: 98, column: 15, scope: !219)
!435 = !DILocation(line: 98, column: 18, scope: !219)
!436 = !DILocation(line: 98, column: 8, scope: !219)
!437 = !DILocation(line: 99, column: 15, scope: !219)
!438 = !DILocation(line: 99, column: 18, scope: !219)
!439 = !DILocation(line: 99, column: 8, scope: !219)
!440 = !DILocation(line: 100, column: 15, scope: !219)
!441 = !DILocation(line: 100, column: 18, scope: !219)
!442 = !DILocation(line: 100, column: 8, scope: !219)
!443 = !DILocation(line: 102, column: 7, scope: !219)
!444 = !DILocation(line: 48, column: 36, scope: !231, inlinedAt: !445)
!445 = distinct !DILocation(line: 103, column: 28, scope: !219)
!446 = !DILocation(line: 50, column: 7, scope: !231, inlinedAt: !445)
!447 = !DILocation(line: 52, column: 11, scope: !448, inlinedAt: !445)
!448 = distinct !DILexicalBlock(scope: !231, file: !1, line: 52, column: 7)
!449 = !DILocation(line: 52, column: 7, scope: !448, inlinedAt: !445)
!450 = !DILocation(line: 52, column: 7, scope: !231, inlinedAt: !445)
!451 = !DILocation(line: 53, column: 27, scope: !448, inlinedAt: !445)
!452 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !445)
!453 = !DILocation(line: 54, column: 16, scope: !454, inlinedAt: !445)
!454 = distinct !DILexicalBlock(scope: !448, file: !1, line: 54, column: 12)
!455 = !DILocation(line: 54, column: 12, scope: !454, inlinedAt: !445)
!456 = !DILocation(line: 54, column: 12, scope: !448, inlinedAt: !445)
!457 = !DILocation(line: 55, column: 31, scope: !454, inlinedAt: !445)
!458 = !DILocation(line: 55, column: 37, scope: !454, inlinedAt: !445)
!459 = !DILocation(line: 55, column: 25, scope: !454, inlinedAt: !445)
!460 = !DILocation(line: 55, column: 5, scope: !454, inlinedAt: !445)
!461 = !DILocation(line: 56, column: 16, scope: !462, inlinedAt: !445)
!462 = distinct !DILexicalBlock(scope: !454, file: !1, line: 56, column: 12)
!463 = !DILocation(line: 56, column: 12, scope: !462, inlinedAt: !445)
!464 = !DILocation(line: 56, column: 12, scope: !454, inlinedAt: !445)
!465 = !DILocation(line: 57, column: 31, scope: !462, inlinedAt: !445)
!466 = !DILocation(line: 57, column: 37, scope: !462, inlinedAt: !445)
!467 = !DILocation(line: 57, column: 25, scope: !462, inlinedAt: !445)
!468 = !DILocation(line: 57, column: 5, scope: !462, inlinedAt: !445)
!469 = !DILocation(line: 58, column: 16, scope: !470, inlinedAt: !445)
!470 = distinct !DILexicalBlock(scope: !462, file: !1, line: 58, column: 12)
!471 = !DILocation(line: 58, column: 12, scope: !470, inlinedAt: !445)
!472 = !DILocation(line: 58, column: 12, scope: !462, inlinedAt: !445)
!473 = !DILocation(line: 59, column: 31, scope: !470, inlinedAt: !445)
!474 = !DILocation(line: 59, column: 37, scope: !470, inlinedAt: !445)
!475 = !DILocation(line: 59, column: 25, scope: !470, inlinedAt: !445)
!476 = !DILocation(line: 59, column: 5, scope: !470, inlinedAt: !445)
!477 = !DILocation(line: 61, column: 5, scope: !470, inlinedAt: !445)
!478 = !DILocation(line: 63, column: 35, scope: !479, inlinedAt: !445)
!479 = distinct !DILexicalBlock(scope: !231, file: !1, line: 63, column: 7)
!480 = !DILocation(line: 103, column: 28, scope: !219)
!481 = !DILocation(line: 64, column: 5, scope: !479, inlinedAt: !445)
!482 = !DILocation(line: 103, column: 43, scope: !219)
!483 = !DILocation(line: 103, column: 3, scope: !219)
!484 = !DILocation(line: 105, column: 10, scope: !219)
!485 = !DILocation(line: 105, column: 15, scope: !219)
!486 = !DILocation(line: 105, column: 8, scope: !219)
!487 = !DILocation(line: 106, column: 15, scope: !219)
!488 = !DILocation(line: 105, column: 18, scope: !219)
!489 = !DILocation(line: 106, column: 18, scope: !219)
!490 = !DILocation(line: 106, column: 8, scope: !219)
!491 = !DILocation(line: 107, column: 15, scope: !219)
!492 = !DILocation(line: 107, column: 18, scope: !219)
!493 = !DILocation(line: 107, column: 8, scope: !219)
!494 = !DILocation(line: 108, column: 15, scope: !219)
!495 = !DILocation(line: 108, column: 18, scope: !219)
!496 = !DILocation(line: 108, column: 8, scope: !219)
!497 = !DILocation(line: 109, column: 15, scope: !219)
!498 = !DILocation(line: 109, column: 18, scope: !219)
!499 = !DILocation(line: 109, column: 8, scope: !219)
!500 = !DILocation(line: 111, column: 3, scope: !219)
!501 = !DILocation(line: 112, column: 1, scope: !219)
!502 = !DILocation(line: 261, column: 20, scope: !214)
!503 = !DILocation(line: 263, column: 3, scope: !214)
!504 = !DILocation(line: 264, column: 1, scope: !214)
!505 = !DILocation(line: 213, column: 26, scope: !132)
!506 = !DILocation(line: 213, column: 42, scope: !132)
!507 = !DILocation(line: 213, column: 53, scope: !132)
!508 = !DILocation(line: 215, column: 10, scope: !132)
!509 = !DILocation(line: 215, column: 3, scope: !132)
!510 = !DILocation(line: 218, column: 22, scope: !140)
!511 = !DILocation(line: 218, column: 29, scope: !140)
!512 = !DILocation(line: 218, column: 39, scope: !140)
!513 = !{!330, !330, i64 0}
!514 = !DILocation(line: 218, column: 46, scope: !140)
!515 = !DILocation(line: 219, column: 15, scope: !140)
!516 = !DILocation(line: 219, column: 23, scope: !140)
!517 = !DILocation(line: 219, column: 36, scope: !140)
!518 = !DILocation(line: 219, column: 44, scope: !140)
!519 = !DILocation(line: 219, column: 52, scope: !140)
!520 = !DILocation(line: 256, column: 20, scope: !208, inlinedAt: !521)
!521 = distinct !DILocation(line: 223, column: 8, scope: !140)
!522 = !DILocation(line: 256, column: 29, scope: !208, inlinedAt: !521)
!523 = !DILocation(line: 258, column: 10, scope: !208, inlinedAt: !521)
!524 = !DILocation(line: 221, column: 7, scope: !140)
!525 = !DILocation(line: 224, column: 3, scope: !140)
!526 = !DILocation(line: 261, column: 20, scope: !214, inlinedAt: !527)
!527 = distinct !DILocation(line: 225, column: 3, scope: !140)
!528 = !DILocation(line: 263, column: 3, scope: !214, inlinedAt: !527)
!529 = !DILocation(line: 226, column: 1, scope: !140)
!530 = !DILocation(line: 155, column: 24, scope: !237)
!531 = !DILocation(line: 155, column: 32, scope: !237)
!532 = !DILocation(line: 155, column: 43, scope: !237)
!533 = !DILocation(line: 155, column: 54, scope: !237)
!534 = !DILocation(line: 155, column: 62, scope: !237)
!535 = !DILocation(line: 156, column: 12, scope: !237)
!536 = !DILocation(line: 156, column: 21, scope: !237)
!537 = !DILocation(line: 156, column: 34, scope: !237)
!538 = !DILocation(line: 156, column: 42, scope: !237)
!539 = !DILocation(line: 156, column: 50, scope: !237)
!540 = !DILocation(line: 161, column: 3, scope: !237)
!541 = !DILocation(line: 158, column: 16, scope: !237)
!542 = !DILocation(line: 162, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !237, file: !1, line: 162, column: 7)
!544 = !DILocation(line: 162, column: 7, scope: !237)
!545 = !DILocation(line: 163, column: 18, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !1, line: 162, column: 15)
!547 = !DILocation(line: 163, column: 9, scope: !546)
!548 = !DILocation(line: 163, column: 17, scope: !546)
!549 = !DILocation(line: 164, column: 17, scope: !546)
!550 = !DILocation(line: 164, column: 22, scope: !546)
!551 = !DILocation(line: 164, column: 29, scope: !546)
!552 = !DILocation(line: 164, column: 9, scope: !546)
!553 = !DILocation(line: 164, column: 15, scope: !546)
!554 = !DILocation(line: 165, column: 17, scope: !546)
!555 = !DILocation(line: 165, column: 22, scope: !546)
!556 = !DILocation(line: 165, column: 29, scope: !546)
!557 = !DILocation(line: 165, column: 9, scope: !546)
!558 = !DILocation(line: 165, column: 15, scope: !546)
!559 = !DILocation(line: 166, column: 17, scope: !546)
!560 = !DILocation(line: 166, column: 22, scope: !546)
!561 = !DILocation(line: 166, column: 29, scope: !546)
!562 = !DILocation(line: 166, column: 9, scope: !546)
!563 = !DILocation(line: 166, column: 15, scope: !546)
!564 = !DILocation(line: 167, column: 18, scope: !546)
!565 = !DILocation(line: 167, column: 9, scope: !546)
!566 = !DILocation(line: 167, column: 16, scope: !546)
!567 = !DILocation(line: 168, column: 18, scope: !546)
!568 = !DILocation(line: 168, column: 9, scope: !546)
!569 = !DILocation(line: 168, column: 16, scope: !546)
!570 = !DILocation(line: 169, column: 9, scope: !546)
!571 = !DILocation(line: 169, column: 16, scope: !546)
!572 = !{!329, !289, i64 48}
!573 = !DILocation(line: 170, column: 18, scope: !546)
!574 = !DILocation(line: 170, column: 16, scope: !546)
!575 = !DILocation(line: 171, column: 18, scope: !546)
!576 = !DILocation(line: 171, column: 16, scope: !546)
!577 = !DILocation(line: 172, column: 3, scope: !546)
!578 = !DILocation(line: 159, column: 8, scope: !237)
!579 = !DILocation(line: 173, column: 8, scope: !580)
!580 = distinct !DILexicalBlock(scope: !237, file: !1, line: 173, column: 7)
!581 = !DILocation(line: 173, column: 7, scope: !237)
!582 = !DILocation(line: 175, column: 7, scope: !237)
!583 = !DILocation(line: 176, column: 19, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 175, column: 14)
!585 = distinct !DILexicalBlock(scope: !237, file: !1, line: 175, column: 7)
!586 = !DILocation(line: 176, column: 13, scope: !584)
!587 = !DILocation(line: 177, column: 19, scope: !584)
!588 = !DILocation(line: 177, column: 13, scope: !584)
!589 = !DILocation(line: 178, column: 19, scope: !584)
!590 = !DILocation(line: 178, column: 13, scope: !584)
!591 = !DILocation(line: 179, column: 19, scope: !584)
!592 = !DILocation(line: 179, column: 13, scope: !584)
!593 = !DILocation(line: 180, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !584, file: !1, line: 180, column: 9)
!595 = !{!329, !289, i64 0}
!596 = !DILocation(line: 180, column: 9, scope: !594)
!597 = !DILocation(line: 180, column: 9, scope: !584)
!598 = !DILocation(line: 181, column: 7, scope: !594)
!599 = !DILocation(line: 182, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !584, file: !1, line: 182, column: 9)
!601 = !{!329, !289, i64 4}
!602 = !DILocation(line: 182, column: 9, scope: !600)
!603 = !DILocation(line: 182, column: 9, scope: !584)
!604 = !DILocation(line: 183, column: 7, scope: !600)
!605 = !DILocation(line: 184, column: 13, scope: !606)
!606 = distinct !DILexicalBlock(scope: !584, file: !1, line: 184, column: 9)
!607 = !{!329, !289, i64 20}
!608 = !DILocation(line: 184, column: 9, scope: !606)
!609 = !DILocation(line: 184, column: 9, scope: !584)
!610 = !DILocation(line: 185, column: 7, scope: !606)
!611 = !DILocation(line: 186, column: 13, scope: !612)
!612 = distinct !DILexicalBlock(scope: !584, file: !1, line: 186, column: 9)
!613 = !{!329, !289, i64 24}
!614 = !DILocation(line: 186, column: 9, scope: !612)
!615 = !DILocation(line: 186, column: 9, scope: !584)
!616 = !DILocation(line: 187, column: 7, scope: !612)
!617 = !DILocation(line: 189, column: 9, scope: !237)
!618 = !DILocation(line: 189, column: 7, scope: !237)
!619 = !DILocation(line: 191, column: 3, scope: !237)
!620 = !DILocation(line: 193, column: 10, scope: !237)
!621 = !DILocation(line: 193, column: 3, scope: !237)
!622 = !DILocation(line: 194, column: 1, scope: !237)
!623 = !DILocation(line: 228, column: 21, scope: !157)
!624 = !DILocation(line: 228, column: 29, scope: !157)
!625 = !DILocation(line: 228, column: 40, scope: !157)
!626 = !DILocation(line: 228, column: 48, scope: !157)
!627 = !DILocation(line: 229, column: 14, scope: !157)
!628 = !DILocation(line: 229, column: 23, scope: !157)
!629 = !DILocation(line: 229, column: 36, scope: !157)
!630 = !DILocation(line: 229, column: 44, scope: !157)
!631 = !DILocation(line: 229, column: 52, scope: !157)
!632 = !DILocation(line: 256, column: 20, scope: !208, inlinedAt: !633)
!633 = distinct !DILocation(line: 233, column: 8, scope: !157)
!634 = !DILocation(line: 256, column: 29, scope: !208, inlinedAt: !633)
!635 = !DILocation(line: 258, column: 10, scope: !208, inlinedAt: !633)
!636 = !DILocation(line: 231, column: 7, scope: !157)
!637 = !DILocation(line: 234, column: 10, scope: !157)
!638 = !DILocation(line: 261, column: 20, scope: !214, inlinedAt: !639)
!639 = distinct !DILocation(line: 235, column: 3, scope: !157)
!640 = !DILocation(line: 263, column: 3, scope: !214, inlinedAt: !639)
!641 = !DILocation(line: 236, column: 1, scope: !157)
!642 = !DILocation(line: 238, column: 21, scope: !172)
!643 = !DILocation(line: 238, column: 28, scope: !172)
!644 = !DILocation(line: 238, column: 38, scope: !172)
!645 = !DILocation(line: 238, column: 45, scope: !172)
!646 = !DILocation(line: 239, column: 9, scope: !172)
!647 = !DILocation(line: 239, column: 17, scope: !172)
!648 = !DILocation(line: 239, column: 30, scope: !172)
!649 = !DILocation(line: 239, column: 38, scope: !172)
!650 = !DILocation(line: 239, column: 46, scope: !172)
!651 = !DILocation(line: 241, column: 10, scope: !172)
!652 = !DILocation(line: 242, column: 1, scope: !172)
!653 = !DILocation(line: 245, column: 20, scope: !185)
!654 = !DILocation(line: 245, column: 28, scope: !185)
!655 = !DILocation(line: 245, column: 39, scope: !185)
!656 = !DILocation(line: 245, column: 47, scope: !185)
!657 = !DILocation(line: 246, column: 15, scope: !185)
!658 = !DILocation(line: 246, column: 24, scope: !185)
!659 = !DILocation(line: 246, column: 37, scope: !185)
!660 = !DILocation(line: 246, column: 45, scope: !185)
!661 = !DILocation(line: 246, column: 53, scope: !185)
!662 = !DILocation(line: 248, column: 10, scope: !185)
!663 = !DILocation(line: 248, column: 3, scope: !185)
!664 = !DILocation(line: 251, column: 21, scope: !198)
!665 = !DILocation(line: 251, column: 37, scope: !198)
!666 = !DILocation(line: 251, column: 47, scope: !198)
!667 = !DILocation(line: 251, column: 57, scope: !198)
!668 = !DILocation(line: 251, column: 65, scope: !198)
!669 = !DILocation(line: 251, column: 73, scope: !198)
!670 = !DILocation(line: 253, column: 10, scope: !198)
!671 = !DILocation(line: 253, column: 3, scope: !198)
!672 = !DILocation(line: 138, column: 25, scope: !253)
!673 = !DILocation(line: 141, column: 3, scope: !253)
!674 = !DILocation(line: 141, column: 10, scope: !253)
!675 = !DILocation(line: 142, column: 8, scope: !253)
!676 = !DILocation(line: 145, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !253, file: !1, line: 145, column: 7)
!678 = !DILocation(line: 145, column: 20, scope: !677)
!679 = !DILocation(line: 145, column: 7, scope: !253)
!680 = !DILocation(line: 145, column: 39, scope: !677)
!681 = !DILocation(line: 145, column: 36, scope: !677)
!682 = !DILocation(line: 145, column: 26, scope: !677)
!683 = !DILocation(line: 146, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !253, file: !1, line: 146, column: 7)
!685 = !{!329, !289, i64 12}
!686 = !DILocation(line: 146, column: 20, scope: !684)
!687 = !DILocation(line: 146, column: 7, scope: !253)
!688 = !DILocation(line: 146, column: 32, scope: !684)
!689 = !DILocation(line: 146, column: 36, scope: !684)
!690 = !DILocation(line: 146, column: 39, scope: !684)
!691 = !DILocation(line: 146, column: 26, scope: !684)
!692 = !DILocation(line: 147, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !253, file: !1, line: 147, column: 7)
!694 = !{!329, !289, i64 16}
!695 = !DILocation(line: 147, column: 20, scope: !693)
!696 = !DILocation(line: 147, column: 7, scope: !253)
!697 = !DILocation(line: 147, column: 32, scope: !693)
!698 = !DILocation(line: 147, column: 36, scope: !693)
!699 = !DILocation(line: 147, column: 39, scope: !693)
!700 = !DILocation(line: 147, column: 26, scope: !693)
!701 = !DILocation(line: 148, column: 11, scope: !702)
!702 = distinct !DILexicalBlock(scope: !253, file: !1, line: 148, column: 7)
!703 = !DILocation(line: 148, column: 20, scope: !702)
!704 = !DILocation(line: 148, column: 7, scope: !253)
!705 = !DILocation(line: 148, column: 32, scope: !702)
!706 = !DILocation(line: 148, column: 36, scope: !702)
!707 = !DILocation(line: 148, column: 39, scope: !702)
!708 = !DILocation(line: 148, column: 26, scope: !702)
!709 = !DILocation(line: 149, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !253, file: !1, line: 149, column: 7)
!711 = !DILocation(line: 149, column: 20, scope: !710)
!712 = !DILocation(line: 149, column: 7, scope: !253)
!713 = !DILocation(line: 149, column: 32, scope: !710)
!714 = !DILocation(line: 149, column: 36, scope: !710)
!715 = !DILocation(line: 149, column: 39, scope: !710)
!716 = !DILocation(line: 149, column: 26, scope: !710)
!717 = !DILocation(line: 150, column: 11, scope: !718)
!718 = distinct !DILexicalBlock(scope: !253, file: !1, line: 150, column: 7)
!719 = !DILocation(line: 150, column: 20, scope: !718)
!720 = !DILocation(line: 150, column: 7, scope: !253)
!721 = !DILocation(line: 150, column: 32, scope: !718)
!722 = !DILocation(line: 150, column: 36, scope: !718)
!723 = !DILocation(line: 150, column: 39, scope: !718)
!724 = !DILocation(line: 150, column: 26, scope: !718)
!725 = !DILocation(line: 153, column: 1, scope: !253)
