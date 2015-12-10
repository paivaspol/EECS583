; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/enxio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_enxframe = type { float, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.t_energy*, float*, float*, float** }
%struct.t_energy = type { float, double, double, float }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"fr->ener\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/enxio.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"fr->rav\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"fr->rt\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"fr->block[b]\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"fr->block\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"fr->b_alloc\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"fr->nr\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str9 = private unnamed_addr constant [43 x i8] c"Opened %s as single precision energy file\0A\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"nm[i]\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str12 = private unnamed_addr constant [43 x i8] c"Opened %s as double precision energy file\0A\00", align 1
@.str13 = private unnamed_addr constant [17 x i8] c"File %s is empty\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"Energy file %s not recognized, maybe different CPU?\00", align 1
@framenr = internal unnamed_addr global i32 0, align 4
@.str15 = private unnamed_addr constant [46 x i8] c"\0DLast frame read %d                          \00", align 1
@.str16 = private unnamed_addr constant [47 x i8] c"\0AWARNING: Incomplete frame: nr %6d time %8.3f\0A\00", align 1
@.str17 = private unnamed_addr constant [41 x i8] c"\0DReading frame %6d time %8.3f           \00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"\0AWARNING: there may be something wrong with energy file %s\0A\00", align 1
@.str19 = private unnamed_addr constant [99 x i8] c"Found: step=%d, nre=%d, ndisre=%d, nblock=%d, time=%g.\0ATrying to skip frame expect a crash though\0A\00", align 1
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str20 = private unnamed_addr constant [14 x i8] c"fr->ener[i].e\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str21 = private unnamed_addr constant [5 x i8] c"tmp1\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"tmp2\00", align 1
@.str23 = private unnamed_addr constant [18 x i8] c"fr->ener[i].e2sum\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"fr->block[block]\00", align 1
@.str26 = private unnamed_addr constant [51 x i8] c"\0ALast frame read %d                               \00", align 1
@.str27 = private unnamed_addr constant [52 x i8] c"\0AWARNING: Incomplete frame: nr %6d time %8.3f     \0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"could not write energies\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"NM\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"NM[i]\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"(*nm)\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"fr->t\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"fr->step\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"fr->nre\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"fr->ndisre\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"fr->nblock\00", align 1
@.str40 = private unnamed_addr constant [14 x i8] c"fr->nr[block]\00", align 1
@.str41 = private unnamed_addr constant [11 x i8] c"fr->e_size\00", align 1
@.str42 = private unnamed_addr constant [11 x i8] c"fr->d_size\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"dum\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !141, metadata !362), !dbg !363
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !142, metadata !362), !dbg !364
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !365
  %2 = load i32* %1, align 4, !dbg !367, !tbaa !368
  %3 = add nsw i32 %2, -1, !dbg !367
  store i32 %3, i32* %1, align 4, !dbg !367, !tbaa !368
  %4 = icmp sgt i32 %2, 0, !dbg !377
  br i1 %4, label %._crit_edge, label %5, !dbg !378

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !379
  br label %10, !dbg !378

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !380
  %7 = load i32* %6, align 4, !dbg !380, !tbaa !381
  %8 = icmp sle i32 %2, %7, !dbg !382
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !383
  %or.cond = or i1 %9, %8, !dbg !384
  br i1 %or.cond, label %15, label %10, !dbg !384

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !379
  %11 = trunc i32 %_c to i8, !dbg !385
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !386
  %13 = load i8** %12, align 8, !dbg !387, !tbaa !388
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !387
  store i8* %14, i8** %12, align 8, !dbg !387, !tbaa !388
  store i8 %11, i8* %13, align 1, !dbg !389, !tbaa !390
  br label %17, !dbg !391

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !392
  br label %17, !dbg !393

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !394
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !148, metadata !362), !dbg !395
  %1 = icmp sgt i32 %__signo, 32, !dbg !396
  br i1 %1, label %5, label %2, !dbg !397

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !398
  %4 = shl i32 1, %3, !dbg !399
  br label %5, !dbg !397

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !397
  ret i32 %6, !dbg !400
}

; Function Attrs: nounwind optsize ssp uwtable
define void @free_enxframe(%struct.t_enxframe* nocapture readonly %fr) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_enxframe* %fr, i64 0, metadata !190, metadata !362), !dbg !401
  %1 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9, !dbg !402
  %2 = load i32* %1, align 4, !dbg !402, !tbaa !404
  %3 = icmp eq i32 %2, 0, !dbg !407
  br i1 %3, label %8, label %4, !dbg !408

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12, !dbg !409
  %6 = bitcast %struct.t_energy** %5 to i8**, !dbg !409
  %7 = load i8** %6, align 8, !dbg !409, !tbaa !410
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 45, i8* %7) #7, !dbg !409
  br label %8, !dbg !409

; <label>:8                                       ; preds = %0, %4
  %9 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10, !dbg !411
  %10 = load i32* %9, align 4, !dbg !411, !tbaa !413
  %11 = icmp eq i32 %10, 0, !dbg !414
  br i1 %11, label %.preheader, label %12, !dbg !415

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13, !dbg !416
  %14 = bitcast float** %13 to i8**, !dbg !416
  %15 = load i8** %14, align 8, !dbg !416, !tbaa !418
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 47, i8* %15) #7, !dbg !416
  %16 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14, !dbg !419
  %17 = bitcast float** %16 to i8**, !dbg !419
  %18 = load i8** %17, align 8, !dbg !419, !tbaa !420
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 48, i8* %18) #7, !dbg !419
  br label %.preheader, !dbg !421

.preheader:                                       ; preds = %8, %12
  %19 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !422
  %20 = load i32* %19, align 4, !dbg !422, !tbaa !425
  %21 = icmp sgt i32 %20, 0, !dbg !426
  %22 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15, !dbg !427
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !428

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %23 = load float*** %22, align 8, !dbg !427, !tbaa !429
  %24 = getelementptr inbounds float** %23, i64 %indvars.iv, !dbg !427
  %25 = bitcast float** %24 to i8**, !dbg !427
  %26 = load i8** %25, align 8, !dbg !427, !tbaa !430
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 51, i8* %26) #7, !dbg !427
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !428
  %27 = load i32* %19, align 4, !dbg !422, !tbaa !425
  %28 = sext i32 %27 to i64, !dbg !426
  %29 = icmp slt i64 %indvars.iv.next, %28, !dbg !426
  br i1 %29, label %.lr.ph, label %._crit_edge, !dbg !428

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %30 = bitcast float*** %22 to i8**, !dbg !431
  %31 = load i8** %30, align 8, !dbg !431, !tbaa !429
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 52, i8* %31) #7, !dbg !431
  %32 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11, !dbg !432
  %33 = bitcast i32** %32 to i8**, !dbg !432
  %34 = load i8** %33, align 8, !dbg !432, !tbaa !433
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 53, i8* %34) #7, !dbg !432
  %35 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !434
  %36 = bitcast i32** %35 to i8**, !dbg !434
  %37 = load i8** %36, align 8, !dbg !434, !tbaa !435
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 54, i8* %37) #7, !dbg !434
  ret void, !dbg !436
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @do_enxnms(i32 %fp, i32* %nre, i8*** nocapture %nms) #4 {
  %line.i = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !198, metadata !362), !dbg !437
  tail call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !199, metadata !362), !dbg !438
  tail call void @llvm.dbg.value(metadata i8*** %nms, i64 0, metadata !200, metadata !362), !dbg !439
  %1 = tail call i32 @gmx_fio_getread(i32 %fp) #7, !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !201, metadata !362), !dbg !441
  %2 = tail call i32 @gmx_fio_getftp(i32 %fp) #7, !dbg !442
  %3 = icmp eq i32 %2, 9, !dbg !444
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %line.i, metadata !322, metadata !362), !dbg !445
  br i1 %3, label %4, label %30, !dbg !448

; <label>:4                                       ; preds = %0
  tail call void @gmx_fio_select(i32 %fp) #7, !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !258, metadata !362) #6, !dbg !451
  tail call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !259, metadata !362) #6, !dbg !453
  tail call void @llvm.dbg.value(metadata i8*** %nms, i64 0, metadata !260, metadata !362) #6, !dbg !454
  %5 = tail call i32 @gmx_fio_getread(i32 %fp) #7, !dbg !455
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !312, metadata !362) #6, !dbg !456
  %6 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #7, !dbg !457
  tail call void @llvm.dbg.value(metadata %struct.XDR* %6, i64 0, metadata !261, metadata !362) #6, !dbg !458
  %7 = load i8*** %nms, align 8, !dbg !459, !tbaa !430
  tail call void @llvm.dbg.value(metadata i8** %7, i64 0, metadata !314, metadata !362) #6, !dbg !460
  %8 = tail call i32 @xdr_int(%struct.XDR* %6, i32* %nre) #7, !dbg !461
  %9 = icmp eq i32 %8, 0, !dbg !461
  br i1 %9, label %10, label %11, !dbg !463

; <label>:10                                      ; preds = %4
  store i32 0, i32* %nre, align 4, !dbg !464, !tbaa !466
  br label %edr_nms.exit, !dbg !467

; <label>:11                                      ; preds = %4
  %12 = icmp eq i8** %7, null, !dbg !468
  br i1 %12, label %13, label %17, !dbg !470

; <label>:13                                      ; preds = %11
  %14 = load i32* %nre, align 4, !dbg !471, !tbaa !466
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 100, i32 %14, i32 8) #7, !dbg !471
  %16 = bitcast i8* %15 to i8**, !dbg !471
  tail call void @llvm.dbg.value(metadata i8** %16, i64 0, metadata !314, metadata !362) #6, !dbg !460
  br label %17, !dbg !473

; <label>:17                                      ; preds = %13, %11
  %NM.0.i = phi i8** [ %16, %13 ], [ %7, %11 ], !dbg !474
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !313, metadata !362) #6, !dbg !475
  %18 = load i32* %nre, align 4, !dbg !476, !tbaa !466
  %19 = icmp sgt i32 %18, 0, !dbg !479
  br i1 %19, label %.lr.ph.i, label %._crit_edge.i, !dbg !480

.lr.ph.i:                                         ; preds = %17
  %20 = icmp eq i32 %5, 0, !dbg !481
  br label %21, !dbg !480

; <label>:21                                      ; preds = %._crit_edge2.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge2.i ], !dbg !474
  %.pre.i = getelementptr inbounds i8** %NM.0.i, i64 %indvars.iv.i, !dbg !484
  br i1 %20, label %._crit_edge2.i, label %22, !dbg !485

; <label>:22                                      ; preds = %21
  %23 = load i8** %.pre.i, align 8, !dbg !486, !tbaa !430
  %24 = icmp eq i8* %23, null, !dbg !486
  br i1 %24, label %._crit_edge2.i, label %25, !dbg !487

; <label>:25                                      ; preds = %22
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 104, i8* %23) #7, !dbg !488
  store i8* null, i8** %.pre.i, align 8, !dbg !490, !tbaa !430
  br label %._crit_edge2.i, !dbg !491

._crit_edge2.i:                                   ; preds = %25, %22, %21
  %26 = tail call i32 @xdr_string(%struct.XDR* %6, i8** %.pre.i, i32 4096) #7, !dbg !492
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !480
  %27 = load i32* %nre, align 4, !dbg !476, !tbaa !466
  %28 = sext i32 %27 to i64, !dbg !479
  %29 = icmp slt i64 %indvars.iv.next.i, %28, !dbg !479
  br i1 %29, label %21, label %._crit_edge.i, !dbg !480

._crit_edge.i:                                    ; preds = %._crit_edge2.i, %17
  store i8** %NM.0.i, i8*** %nms, align 8, !dbg !493, !tbaa !430
  br label %edr_nms.exit, !dbg !494

; <label>:30                                      ; preds = %0
  %31 = icmp eq i32 %1, 0, !dbg !495
  %32 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fp) #7, !dbg !496
  br i1 %31, label %52, label %33, !dbg !497

; <label>:33                                      ; preds = %30
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %32, i64 0, metadata !319, metadata !362) #6, !dbg !498
  tail call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !320, metadata !362) #6, !dbg !499
  tail call void @llvm.dbg.value(metadata i8*** %nms, i64 0, metadata !321, metadata !362) #6, !dbg !500
  %34 = getelementptr inbounds [256 x i8]* %line.i, i64 0, i64 0, !dbg !501
  call void @llvm.lifetime.start(i64 256, i8* %34) #6, !dbg !501
  %35 = call i8* @fgets2(i8* %34, i32 255, %struct.__sFILE* %32) #7, !dbg !502
  %36 = call i32 (i8*, i8*, ...)* @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i32* %nre) #7, !dbg !503
  %37 = icmp eq i32 %36, 0, !dbg !505
  br i1 %37, label %38, label %39, !dbg !506

; <label>:38                                      ; preds = %33
  store i32 0, i32* %nre, align 4, !dbg !507, !tbaa !466
  br label %rd_ener_nms.exit, !dbg !509

; <label>:39                                      ; preds = %33
  %40 = load i32* %nre, align 4, !dbg !510, !tbaa !466
  %41 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %40, i32 8) #7, !dbg !510
  %42 = bitcast i8*** %nms to i8**, !dbg !510
  store i8* %41, i8** %42, align 8, !dbg !510, !tbaa !430
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !326, metadata !362) #6, !dbg !511
  %43 = load i32* %nre, align 4, !dbg !512, !tbaa !466
  %44 = icmp sgt i32 %43, 0, !dbg !515
  br i1 %44, label %.lr.ph.i3, label %rd_ener_nms.exit, !dbg !516

.lr.ph.i3:                                        ; preds = %39, %.lr.ph.i3
  %indvars.iv.i1 = phi i64 [ %indvars.iv.next.i2, %.lr.ph.i3 ], [ 0, %39 ], !dbg !517
  %45 = call i8* @fgets2(i8* %34, i32 255, %struct.__sFILE* %32) #7, !dbg !518
  call void @trim(i8* %34) #7, !dbg !520
  %46 = call i8* @strdup(i8* %34) #7, !dbg !521
  %47 = load i8*** %nms, align 8, !dbg !522, !tbaa !430
  %48 = getelementptr inbounds i8** %47, i64 %indvars.iv.i1, !dbg !523
  store i8* %46, i8** %48, align 8, !dbg !524, !tbaa !430
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1, !dbg !516
  %49 = load i32* %nre, align 4, !dbg !512, !tbaa !466
  %50 = sext i32 %49 to i64, !dbg !515
  %51 = icmp slt i64 %indvars.iv.next.i2, %50, !dbg !515
  br i1 %51, label %.lr.ph.i3, label %rd_ener_nms.exit, !dbg !516

rd_ener_nms.exit:                                 ; preds = %.lr.ph.i3, %38, %39
  call void @llvm.lifetime.end(i64 256, i8* %34) #6, !dbg !525
  br label %edr_nms.exit, !dbg !517

; <label>:52                                      ; preds = %30
  %53 = load i32* %nre, align 4, !dbg !526, !tbaa !466
  %54 = load i8*** %nms, align 8, !dbg !527, !tbaa !430
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %32, i64 0, metadata !331, metadata !362) #6, !dbg !528
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !332, metadata !362) #6, !dbg !530
  tail call void @llvm.dbg.value(metadata i8** %54, i64 0, metadata !333, metadata !362) #6, !dbg !531
  %55 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i32 %53) #7, !dbg !532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !334, metadata !362) #6, !dbg !533
  %56 = icmp sgt i32 %53, 0, !dbg !534
  br i1 %56, label %.lr.ph.i4, label %edr_nms.exit, !dbg !537

.lr.ph.i4:                                        ; preds = %52
  %57 = add i32 %53, -1, !dbg !537
  br label %58, !dbg !537

; <label>:58                                      ; preds = %58, %.lr.ph.i4
  %indvars.iv.i5 = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i6, %58 ], !dbg !538
  %59 = getelementptr inbounds i8** %54, i64 %indvars.iv.i5, !dbg !539
  %60 = load i8** %59, align 8, !dbg !539, !tbaa !430
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), i8* %60) #7, !dbg !540
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1, !dbg !537
  %lftr.wideiv = trunc i64 %indvars.iv.i5 to i32, !dbg !537
  %exitcond = icmp eq i32 %lftr.wideiv, %57, !dbg !537
  br i1 %exitcond, label %edr_nms.exit, label %58, !dbg !537

edr_nms.exit:                                     ; preds = %58, %52, %._crit_edge.i, %10, %rd_ener_nms.exit
  ret void, !dbg !541
}

; Function Attrs: optsize
declare i32 @gmx_fio_getread(i32) #2

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #2

; Function Attrs: optsize
declare %struct.__sFILE* @gmx_fio_getfp(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @close_enx(i32 %fp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !206, metadata !362), !dbg !542
  tail call void @gmx_fio_close(i32 %fp) #7, !dbg !543
  ret void, !dbg !544
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_enx(i8* %fn, i8* %mode) #4 {
  %dum.i = alloca i8, align 1
  %nre = alloca i32, align 4
  %nm = alloca i8**, align 8
  %bDum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !211, metadata !362), !dbg !545
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !212, metadata !362), !dbg !546
  tail call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !216, metadata !362), !dbg !547
  store i8** null, i8*** %nm, align 8, !dbg !547, !tbaa !430
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !218, metadata !362), !dbg !548
  store i32 1, i32* %bDum, align 4, !dbg !548, !tbaa !466
  %1 = load i8* %mode, align 1, !dbg !549, !tbaa !390
  %2 = icmp eq i8 %1, 114, !dbg !551
  %3 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #7, !dbg !552
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !213, metadata !362), !dbg !554
  br i1 %2, label %4, label %102, !dbg !555

; <label>:4                                       ; preds = %0
  tail call void @gmx_fio_select(i32 %3) #7, !dbg !556
  tail call void @gmx_fio_setprecision(i32 %3, i32 0) #7, !dbg !557
  tail call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  tail call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !216, metadata !362), !dbg !547
  call void @do_enxnms(i32 %3, i32* %nre, i8*** %nm) #8, !dbg !559
  %5 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 206, i32 1, i32 96) #7, !dbg !560
  %6 = bitcast i8* %5 to %struct.t_enxframe*, !dbg !560
  call void @llvm.dbg.value(metadata %struct.t_enxframe* %6, i64 0, metadata !217, metadata !362), !dbg !561
  call void @llvm.dbg.value(metadata i32* %bDum, i64 0, metadata !218, metadata !362), !dbg !548
  %7 = call fastcc i32 @do_eheader(i32 %3, %struct.t_enxframe* %6, i32* %bDum) #8, !dbg !562
  %8 = getelementptr inbounds i8* %5, i64 32, !dbg !563
  %9 = bitcast i8* %8 to i32*, !dbg !563
  %10 = load i32* %9, align 4, !dbg !563, !tbaa !565
  %11 = icmp eq i32 %10, 0, !dbg !566
  br i1 %11, label %24, label %12, !dbg !567

; <label>:12                                      ; preds = %4
  %13 = getelementptr inbounds i8* %5, i64 8, !dbg !568
  %14 = bitcast i8* %13 to i32*, !dbg !568
  %15 = load i32* %14, align 4, !dbg !568, !tbaa !569
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  %16 = load i32* %nre, align 4, !dbg !570, !tbaa !466
  %17 = icmp eq i32 %15, %16, !dbg !571
  br i1 %17, label %18, label %24, !dbg !572

; <label>:18                                      ; preds = %12
  %19 = shl nsw i32 %15, 2, !dbg !573
  %20 = sext i32 %19 to i64, !dbg !574
  %21 = shl nsw i64 %20, 2, !dbg !575
  %22 = sext i32 %10 to i64, !dbg !576
  %23 = icmp eq i64 %21, %22, !dbg !577
  br i1 %23, label %38, label %24, !dbg !578

; <label>:24                                      ; preds = %4, %18, %12
  %25 = getelementptr inbounds i8* %5, i64 36, !dbg !579
  %26 = bitcast i8* %25 to i32*, !dbg !579
  %27 = load i32* %26, align 4, !dbg !579, !tbaa !580
  %28 = icmp eq i32 %27, 0, !dbg !581
  br i1 %28, label %52, label %29, !dbg !582

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds i8* %5, i64 12, !dbg !583
  %31 = bitcast i8* %30 to i32*, !dbg !583
  %32 = load i32* %31, align 4, !dbg !583, !tbaa !584
  %33 = sext i32 %32 to i64, !dbg !585
  %34 = shl nsw i64 %33, 3, !dbg !586
  %35 = or i64 %34, 4, !dbg !587
  %36 = sext i32 %27 to i64, !dbg !588
  %37 = icmp eq i64 %35, %36, !dbg !589
  br i1 %37, label %38, label %52, !dbg !590

; <label>:38                                      ; preds = %29, %18
  %39 = load %struct.__sFILE** @__stderrp, align 8, !dbg !591, !tbaa !430
  %40 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0), i8* %fn) #7, !dbg !593
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !215, metadata !362), !dbg !594
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  %41 = load i32* %nre, align 4, !dbg !595, !tbaa !466
  %42 = icmp sgt i32 %41, 0, !dbg !598
  br i1 %42, label %.lr.ph4, label %._crit_edge8, !dbg !599

._crit_edge8:                                     ; preds = %38
  %.phi.trans.insert = bitcast i8*** %nm to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !dbg !600, !tbaa !430
  br label %._crit_edge5, !dbg !599

.lr.ph4:                                          ; preds = %38
  %43 = load i8*** %nm, align 8, !dbg !601, !tbaa !430
  %44 = bitcast i8** %43 to i8*
  br label %45, !dbg !599

; <label>:45                                      ; preds = %.lr.ph4, %45
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %45 ]
  call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !216, metadata !362), !dbg !547
  %46 = getelementptr inbounds i8** %43, i64 %indvars.iv6, !dbg !601
  %47 = load i8** %46, align 8, !dbg !601, !tbaa !430
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 216, i8* %47) #7, !dbg !601
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !599
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  %48 = load i32* %nre, align 4, !dbg !595, !tbaa !466
  %49 = sext i32 %48 to i64, !dbg !598
  %50 = icmp slt i64 %indvars.iv.next7, %49, !dbg !598
  br i1 %50, label %45, label %._crit_edge5, !dbg !599

._crit_edge5:                                     ; preds = %45, %._crit_edge8
  %51 = phi i8* [ %.pre, %._crit_edge8 ], [ %44, %45 ]
  call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !216, metadata !362), !dbg !547
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 217, i8* %51) #7, !dbg !600
  br label %101, !dbg !602

; <label>:52                                      ; preds = %24, %29
  call void @gmx_fio_rewind(i32 %3) #7, !dbg !603
  call void @gmx_fio_select(i32 %3) #7, !dbg !605
  call void @gmx_fio_setprecision(i32 %3, i32 1) #7, !dbg !606
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !216, metadata !362), !dbg !547
  call void @do_enxnms(i32 %3, i32* %nre, i8*** %nm) #8, !dbg !607
  call void @llvm.dbg.value(metadata i32* %bDum, i64 0, metadata !218, metadata !362), !dbg !548
  %53 = call fastcc i32 @do_eheader(i32 %3, %struct.t_enxframe* %6, i32* %bDum) #8, !dbg !608
  %54 = load i32* %9, align 4, !dbg !609, !tbaa !565
  %55 = icmp eq i32 %54, 0, !dbg !611
  br i1 %55, label %68, label %56, !dbg !612

; <label>:56                                      ; preds = %52
  %57 = getelementptr inbounds i8* %5, i64 8, !dbg !613
  %58 = bitcast i8* %57 to i32*, !dbg !613
  %59 = load i32* %58, align 4, !dbg !613, !tbaa !569
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  %60 = load i32* %nre, align 4, !dbg !614, !tbaa !466
  %61 = icmp eq i32 %59, %60, !dbg !615
  br i1 %61, label %62, label %68, !dbg !616

; <label>:62                                      ; preds = %56
  %63 = shl nsw i32 %59, 2, !dbg !617
  %64 = sext i32 %63 to i64, !dbg !618
  %65 = shl nsw i64 %64, 3, !dbg !619
  %66 = sext i32 %54 to i64, !dbg !620
  %67 = icmp eq i64 %65, %66, !dbg !621
  br i1 %67, label %80, label %68, !dbg !622

; <label>:68                                      ; preds = %52, %62, %56
  %69 = load i32* %26, align 4, !dbg !623, !tbaa !580
  %70 = icmp eq i32 %69, 0, !dbg !624
  br i1 %70, label %83, label %71, !dbg !625

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds i8* %5, i64 12, !dbg !626
  %73 = bitcast i8* %72 to i32*, !dbg !626
  %74 = load i32* %73, align 4, !dbg !626, !tbaa !584
  %75 = sext i32 %74 to i64, !dbg !627
  %76 = shl nsw i64 %75, 4, !dbg !628
  %77 = or i64 %76, 4, !dbg !629
  %78 = sext i32 %69 to i64, !dbg !630
  %79 = icmp eq i64 %77, %78, !dbg !631
  br i1 %79, label %80, label %83, !dbg !632

; <label>:80                                      ; preds = %71, %62
  %81 = load %struct.__sFILE** @__stderrp, align 8, !dbg !633, !tbaa !430
  %82 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %81, i8* getelementptr inbounds ([43 x i8]* @.str12, i64 0, i64 0), i8* %fn) #7, !dbg !634
  br label %.preheader, !dbg !634

; <label>:83                                      ; preds = %68, %71
  call void @llvm.lifetime.start(i64 1, i8* %dum.i), !dbg !635
  call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !351, metadata !362) #6, !dbg !635
  %84 = call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #7, !dbg !639
  call void @llvm.dbg.value(metadata %struct.__sFILE* %84, i64 0, metadata !352, metadata !362) #6, !dbg !640
  call void @llvm.dbg.value(metadata i8* %dum.i, i64 0, metadata !353, metadata !362) #6, !dbg !641
  %85 = call i64 @fread(i8* %dum.i, i64 1, i64 1, %struct.__sFILE* %84) #7, !dbg !642
  %86 = call i32 @feof(%struct.__sFILE* %84) #7, !dbg !643
  call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !354, metadata !362) #6, !dbg !644
  call void @ffclose(%struct.__sFILE* %84) #7, !dbg !645
  call void @llvm.lifetime.end(i64 1, i8* %dum.i), !dbg !646
  %87 = icmp eq i32 %86, 0, !dbg !647
  br i1 %87, label %89, label %88, !dbg !648

; <label>:88                                      ; preds = %83
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str13, i64 0, i64 0), i8* %fn) #7, !dbg !649
  br label %.preheader, !dbg !649

; <label>:89                                      ; preds = %83
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i8* %fn) #7, !dbg !650
  br label %.preheader

.preheader:                                       ; preds = %88, %89, %80
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  %90 = load i32* %nre, align 4, !dbg !651, !tbaa !466
  %91 = icmp sgt i32 %90, 0, !dbg !654
  br i1 %91, label %.lr.ph, label %.preheader._crit_edge, !dbg !655

.preheader._crit_edge:                            ; preds = %.preheader
  %.phi.trans.insert9 = bitcast i8*** %nm to i8**
  %.pre10 = load i8** %.phi.trans.insert9, align 8, !dbg !656, !tbaa !430
  br label %._crit_edge, !dbg !655

.lr.ph:                                           ; preds = %.preheader
  %92 = load i8*** %nm, align 8, !dbg !657, !tbaa !430
  %93 = bitcast i8** %92 to i8*
  br label %94, !dbg !655

; <label>:94                                      ; preds = %.lr.ph, %94
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %94 ]
  call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !216, metadata !362), !dbg !547
  %95 = getelementptr inbounds i8** %92, i64 %indvars.iv, !dbg !657
  %96 = load i8** %95, align 8, !dbg !657, !tbaa !430
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 238, i8* %96) #7, !dbg !657
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !655
  call void @llvm.dbg.value(metadata i32* %nre, i64 0, metadata !214, metadata !362), !dbg !558
  %97 = load i32* %nre, align 4, !dbg !651, !tbaa !466
  %98 = sext i32 %97 to i64, !dbg !654
  %99 = icmp slt i64 %indvars.iv.next, %98, !dbg !654
  br i1 %99, label %94, label %._crit_edge, !dbg !655

._crit_edge:                                      ; preds = %94, %.preheader._crit_edge
  %100 = phi i8* [ %.pre10, %.preheader._crit_edge ], [ %93, %94 ]
  call void @llvm.dbg.value(metadata i8*** %nm, i64 0, metadata !216, metadata !362), !dbg !547
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 239, i8* %100) #7, !dbg !656
  br label %101

; <label>:101                                     ; preds = %._crit_edge, %._crit_edge5
  call void @free_enxframe(%struct.t_enxframe* %6) #8, !dbg !658
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 242, i8* %5) #7, !dbg !659
  call void @gmx_fio_rewind(i32 %3) #7, !dbg !660
  br label %102, !dbg !661

; <label>:102                                     ; preds = %0, %101
  store i32 0, i32* @framenr, align 4, !dbg !662, !tbaa !466
  ret i32 %3, !dbg !663
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* nocapture %bOK) #4 {
  %dum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !339, metadata !362), !dbg !664
  tail call void @llvm.dbg.value(metadata %struct.t_enxframe* %fr, i64 0, metadata !340, metadata !362), !dbg !665
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !341, metadata !362), !dbg !666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !344, metadata !362), !dbg !667
  store i32 0, i32* %dum, align 4, !dbg !667, !tbaa !466
  %1 = tail call i32 @gmx_fio_getread(i32 %fp) #7, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !345, metadata !362), !dbg !669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !346, metadata !362), !dbg !670
  store i32 1, i32* %bOK, align 4, !dbg !671, !tbaa !466
  %2 = icmp ne i32 %1, 0, !dbg !672
  br i1 %2, label %3, label %8, !dbg !674

; <label>:3                                       ; preds = %0
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !672, !tbaa !430
  %5 = bitcast %struct.t_enxframe* %fr to i8*, !dbg !672
  %6 = tail call i32 %4(i8* %5, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 119) #7, !dbg !672
  %7 = icmp eq i32 %6, 0, !dbg !672
  br i1 %7, label %164, label %13, !dbg !672

; <label>:8                                       ; preds = %0
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !672, !tbaa !430
  %10 = bitcast %struct.t_enxframe* %fr to i8*, !dbg !672
  %11 = tail call i32 %9(i8* %10, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 119) #7, !dbg !672
  %12 = icmp eq i32 %11, 0, !dbg !672
  br i1 %12, label %164, label %19, !dbg !674

; <label>:13                                      ; preds = %3
  %14 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !675, !tbaa !430
  %15 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1, !dbg !675
  %16 = bitcast i32* %15 to i8*, !dbg !675
  %17 = tail call i32 %14(i8* %16, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 120) #7, !dbg !675
  %18 = icmp eq i32 %17, 0, !dbg !675
  br i1 %18, label %.thread2, label %.thread, !dbg !675

.thread2:                                         ; preds = %13
  store i32 0, i32* %bOK, align 4, !dbg !677, !tbaa !466
  br label %.thread, !dbg !678

; <label>:19                                      ; preds = %8
  %20 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !675, !tbaa !430
  %21 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1, !dbg !675
  %22 = bitcast i32* %21 to i8*, !dbg !675
  %23 = tail call i32 %20(i8* %22, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 120) #7, !dbg !675
  %24 = icmp eq i32 %23, 0, !dbg !675
  br i1 %24, label %25, label %.thread1, !dbg !679

; <label>:25                                      ; preds = %19
  store i32 0, i32* %bOK, align 4, !dbg !677, !tbaa !466
  br label %.thread1

.thread:                                          ; preds = %13, %.thread2
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !680, !tbaa !430
  %27 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !680
  %28 = bitcast i32* %27 to i8*, !dbg !680
  %29 = tail call i32 %26(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 121) #7, !dbg !680
  %30 = icmp eq i32 %29, 0, !dbg !680
  br i1 %30, label %.thread5, label %.thread3, !dbg !680

.thread5:                                         ; preds = %.thread
  store i32 0, i32* %bOK, align 4, !dbg !682, !tbaa !466
  br label %.thread3, !dbg !683

.thread1:                                         ; preds = %19, %25
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !680, !tbaa !430
  %32 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !680
  %33 = bitcast i32* %32 to i8*, !dbg !680
  %34 = tail call i32 %31(i8* %33, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 121) #7, !dbg !680
  %35 = icmp eq i32 %34, 0, !dbg !680
  br i1 %35, label %36, label %.thread4, !dbg !678

; <label>:36                                      ; preds = %.thread1
  store i32 0, i32* %bOK, align 4, !dbg !682, !tbaa !466
  br label %.thread4

.thread3:                                         ; preds = %.thread, %.thread5
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !684, !tbaa !430
  %38 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !684
  %39 = bitcast i32* %38 to i8*, !dbg !684
  %40 = tail call i32 %37(i8* %39, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 122) #7, !dbg !684
  %41 = icmp eq i32 %40, 0, !dbg !684
  br i1 %41, label %.thread8, label %.thread6, !dbg !684

.thread8:                                         ; preds = %.thread3
  store i32 0, i32* %bOK, align 4, !dbg !686, !tbaa !466
  br label %.thread6, !dbg !687

.thread4:                                         ; preds = %.thread1, %36
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !684, !tbaa !430
  %43 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !684
  %44 = bitcast i32* %43 to i8*, !dbg !684
  %45 = tail call i32 %42(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 122) #7, !dbg !684
  %46 = icmp eq i32 %45, 0, !dbg !684
  br i1 %46, label %47, label %.thread7, !dbg !683

; <label>:47                                      ; preds = %.thread4
  store i32 0, i32* %bOK, align 4, !dbg !686, !tbaa !466
  br label %.thread7

.thread6:                                         ; preds = %.thread3, %.thread8
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !688, !tbaa !430
  %49 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !688
  %50 = bitcast i32* %49 to i8*, !dbg !688
  %51 = tail call i32 %48(i8* %50, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 123) #7, !dbg !688
  %52 = icmp eq i32 %51, 0, !dbg !688
  br i1 %52, label %.thread11, label %.thread9, !dbg !688

.thread11:                                        ; preds = %.thread6
  store i32 0, i32* %bOK, align 4, !dbg !690, !tbaa !466
  br label %.thread9, !dbg !691

.thread7:                                         ; preds = %.thread4, %47
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !688, !tbaa !430
  %54 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !688
  %55 = bitcast i32* %54 to i8*, !dbg !688
  %56 = tail call i32 %53(i8* %55, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 123) #7, !dbg !688
  %57 = icmp eq i32 %56, 0, !dbg !688
  br i1 %57, label %61, label %.thread15.preheader, !dbg !687

.thread15.preheader:                              ; preds = %105, %61, %.thread7
  %.pre-phi = phi i32* [ %49, %105 ], [ %54, %61 ], [ %54, %.thread7 ], !dbg !693
  %58 = load i32* %.pre-phi, align 4, !dbg !693, !tbaa !425
  %59 = icmp sgt i32 %58, 0, !dbg !698
  br i1 %59, label %.lr.ph, label %.loopexit, !dbg !699

.lr.ph:                                           ; preds = %.thread15.preheader
  %60 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !700
  br label %110, !dbg !699

; <label>:61                                      ; preds = %.thread7
  store i32 0, i32* %bOK, align 4, !dbg !690, !tbaa !466
  br label %.thread15.preheader

.thread9:                                         ; preds = %.thread6, %.thread11
  %62 = load i32* %49, align 4, !dbg !702, !tbaa !425
  %63 = icmp sgt i32 %62, 70, !dbg !703
  br i1 %63, label %64, label %65, !dbg !704

; <label>:64                                      ; preds = %.thread9
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !346, metadata !362), !dbg !670
  store i32 1, i32* %49, align 4, !dbg !705, !tbaa !425
  br label %65, !dbg !707

; <label>:65                                      ; preds = %64, %.thread9
  %66 = phi i32 [ %62, %.thread9 ], [ 1, %64 ]
  %tempfix_nr.0.ph = phi i32 [ 0, %.thread9 ], [ %62, %64 ]
  %67 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 8, !dbg !708
  %68 = load i32* %67, align 4, !dbg !708, !tbaa !710
  %69 = icmp sgt i32 %66, %68, !dbg !711
  br i1 %69, label %70, label %105, !dbg !712

; <label>:70                                      ; preds = %65
  %71 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !713
  %72 = bitcast i32** %71 to i8**, !dbg !713
  %73 = load i8** %72, align 8, !dbg !713, !tbaa !435
  %74 = shl i32 %66, 2, !dbg !713
  %75 = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 130, i8* %73, i32 %74) #7, !dbg !713
  store i8* %75, i8** %72, align 8, !dbg !713, !tbaa !435
  %76 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11, !dbg !715
  %77 = bitcast i32** %76 to i8**, !dbg !715
  %78 = load i8** %77, align 8, !dbg !715, !tbaa !433
  %79 = load i32* %49, align 4, !dbg !715, !tbaa !425
  %80 = shl i32 %79, 2, !dbg !715
  %81 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 131, i8* %78, i32 %80) #7, !dbg !715
  store i8* %81, i8** %77, align 8, !dbg !715, !tbaa !433
  %82 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15, !dbg !716
  %83 = bitcast float*** %82 to i8**, !dbg !716
  %84 = load i8** %83, align 8, !dbg !716, !tbaa !429
  %85 = load i32* %49, align 4, !dbg !716, !tbaa !425
  %86 = shl i32 %85, 3, !dbg !716
  %87 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 132, i8* %84, i32 %86) #7, !dbg !716
  store i8* %87, i8** %83, align 8, !dbg !716, !tbaa !429
  %88 = load i32* %67, align 4, !dbg !717, !tbaa !710
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !343, metadata !362), !dbg !719
  %89 = load i32* %49, align 4, !dbg !720, !tbaa !425
  %90 = icmp slt i32 %88, %89, !dbg !722
  br i1 %90, label %.lr.ph24, label %._crit_edge, !dbg !723

.lr.ph24:                                         ; preds = %70
  %91 = bitcast i8* %87 to float**
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds float** %91, i64 %92, !dbg !724
  store float* null, float** %93, align 8, !dbg !726, !tbaa !430
  %94 = load i32** %76, align 8, !dbg !727, !tbaa !433
  %95 = getelementptr inbounds i32* %94, i64 %92, !dbg !728
  store i32 0, i32* %95, align 4, !dbg !729, !tbaa !466
  %indvars.iv.next2730 = add nsw i64 %92, 1, !dbg !723
  %96 = load i32* %49, align 4, !dbg !720, !tbaa !425
  %97 = sext i32 %96 to i64, !dbg !722
  %98 = icmp slt i64 %indvars.iv.next2730, %97, !dbg !722
  br i1 %98, label %._crit_edge28, label %._crit_edge, !dbg !723

._crit_edge28:                                    ; preds = %.lr.ph24, %._crit_edge28
  %indvars.iv.next2731 = phi i64 [ %indvars.iv.next27, %._crit_edge28 ], [ %indvars.iv.next2730, %.lr.ph24 ]
  %.pre = load float*** %82, align 8, !dbg !730, !tbaa !429
  %99 = getelementptr inbounds float** %.pre, i64 %indvars.iv.next2731, !dbg !724
  store float* null, float** %99, align 8, !dbg !726, !tbaa !430
  %100 = load i32** %76, align 8, !dbg !727, !tbaa !433
  %101 = getelementptr inbounds i32* %100, i64 %indvars.iv.next2731, !dbg !728
  store i32 0, i32* %101, align 4, !dbg !729, !tbaa !466
  %indvars.iv.next27 = add nsw i64 %indvars.iv.next2731, 1, !dbg !723
  %102 = load i32* %49, align 4, !dbg !720, !tbaa !425
  %103 = sext i32 %102 to i64, !dbg !722
  %104 = icmp slt i64 %indvars.iv.next27, %103, !dbg !722
  br i1 %104, label %._crit_edge28, label %._crit_edge, !dbg !723

._crit_edge:                                      ; preds = %.lr.ph24, %._crit_edge28, %70
  %.lcssa = phi i32 [ %89, %70 ], [ %96, %.lr.ph24 ], [ %102, %._crit_edge28 ]
  store i32 %.lcssa, i32* %67, align 4, !dbg !731, !tbaa !710
  br label %105, !dbg !732

; <label>:105                                     ; preds = %._crit_edge, %65
  %106 = icmp eq i32 %tempfix_nr.0.ph, 0, !dbg !733
  br i1 %106, label %.thread15.preheader, label %107, !dbg !734

; <label>:107                                     ; preds = %105
  %108 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !735
  %109 = load i32** %108, align 8, !dbg !735, !tbaa !435
  store i32 %tempfix_nr.0.ph, i32* %109, align 4, !dbg !736, !tbaa !466
  br label %.loopexit, !dbg !737

; <label>:110                                     ; preds = %.lr.ph, %.thread15
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread15 ]
  br i1 %2, label %111, label %118, !dbg !738

; <label>:111                                     ; preds = %110
  %112 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !700, !tbaa !430
  %113 = load i32** %60, align 8, !dbg !700, !tbaa !435
  %114 = getelementptr inbounds i32* %113, i64 %indvars.iv, !dbg !700
  %115 = bitcast i32* %114 to i8*, !dbg !700
  %116 = tail call i32 %112(i8* %115, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #7, !dbg !700
  %117 = icmp eq i32 %116, 0, !dbg !700
  br i1 %117, label %125, label %.thread15, !dbg !700

; <label>:118                                     ; preds = %110
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !700, !tbaa !430
  %120 = load i32** %60, align 8, !dbg !700, !tbaa !435
  %121 = getelementptr inbounds i32* %120, i64 %indvars.iv, !dbg !700
  %122 = bitcast i32* %121 to i8*, !dbg !700
  %123 = tail call i32 %119(i8* %122, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #7, !dbg !700
  %124 = icmp eq i32 %123, 0, !dbg !700
  br i1 %124, label %125, label %.thread15, !dbg !738

; <label>:125                                     ; preds = %111, %118
  store i32 0, i32* %bOK, align 4, !dbg !739, !tbaa !466
  br label %.thread15, !dbg !740

.thread15:                                        ; preds = %111, %118, %125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !699
  %126 = load i32* %.pre-phi, align 4, !dbg !693, !tbaa !425
  %127 = sext i32 %126 to i64, !dbg !698
  %128 = icmp slt i64 %indvars.iv.next, %127, !dbg !698
  br i1 %128, label %110, label %.loopexit, !dbg !699

.loopexit:                                        ; preds = %.thread15, %.thread15.preheader, %107
  br i1 %2, label %129, label %135, !dbg !741

; <label>:129                                     ; preds = %.loopexit
  %130 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !742, !tbaa !430
  %131 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6, !dbg !742
  %132 = bitcast i32* %131 to i8*, !dbg !742
  %133 = tail call i32 %130(i8* %132, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #7, !dbg !742
  %134 = icmp eq i32 %133, 0, !dbg !742
  br i1 %134, label %.thread18, label %.thread16, !dbg !742

.thread18:                                        ; preds = %129
  store i32 0, i32* %bOK, align 4, !dbg !744, !tbaa !466
  br label %.thread16, !dbg !745

; <label>:135                                     ; preds = %.loopexit
  %136 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !742, !tbaa !430
  %137 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6, !dbg !742
  %138 = bitcast i32* %137 to i8*, !dbg !742
  %139 = tail call i32 %136(i8* %138, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #7, !dbg !742
  %140 = icmp eq i32 %139, 0, !dbg !742
  br i1 %140, label %141, label %.thread17, !dbg !741

; <label>:141                                     ; preds = %135
  store i32 0, i32* %bOK, align 4, !dbg !744, !tbaa !466
  br label %.thread17

.thread16:                                        ; preds = %129, %.thread18
  %142 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !746, !tbaa !430
  %143 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7, !dbg !746
  %144 = bitcast i32* %143 to i8*, !dbg !746
  %145 = tail call i32 %142(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #7, !dbg !746
  %146 = icmp eq i32 %145, 0, !dbg !746
  br i1 %146, label %.thread21, label %.thread19, !dbg !746

.thread21:                                        ; preds = %.thread16
  store i32 0, i32* %bOK, align 4, !dbg !748, !tbaa !466
  br label %.thread19, !dbg !749

.thread17:                                        ; preds = %135, %141
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !746, !tbaa !430
  %148 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7, !dbg !746
  %149 = bitcast i32* %148 to i8*, !dbg !746
  %150 = tail call i32 %147(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #7, !dbg !746
  %151 = icmp eq i32 %150, 0, !dbg !746
  br i1 %151, label %152, label %.thread20, !dbg !745

; <label>:152                                     ; preds = %.thread17
  store i32 0, i32* %bOK, align 4, !dbg !748, !tbaa !466
  br label %.thread20

.thread19:                                        ; preds = %.thread16, %.thread21
  %153 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !750, !tbaa !430
  %154 = bitcast i32* %dum to i8*, !dbg !750
  %155 = call i32 %153(i8* %154, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #7, !dbg !750
  %156 = icmp eq i32 %155, 0, !dbg !750
  br i1 %156, label %161, label %162, !dbg !750

.thread20:                                        ; preds = %.thread17, %152
  %157 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !750, !tbaa !430
  %158 = bitcast i32* %dum to i8*, !dbg !750
  %159 = call i32 %157(i8* %158, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #7, !dbg !750
  %160 = icmp eq i32 %159, 0, !dbg !750
  br i1 %160, label %161, label %162, !dbg !749

; <label>:161                                     ; preds = %.thread19, %.thread20
  store i32 0, i32* %bOK, align 4, !dbg !752, !tbaa !466
  br label %162, !dbg !753

; <label>:162                                     ; preds = %.thread19, %.thread20, %161
  %163 = load i32* %bOK, align 4, !dbg !754, !tbaa !466
  br label %164, !dbg !755

; <label>:164                                     ; preds = %8, %3, %162
  %.0 = phi i32 [ %163, %162 ], [ 0, %3 ], [ 0, %8 ]
  ret i32 %.0, !dbg !756
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @do_enx(i32 %fp, %struct.t_enxframe* %fr) #4 {
  %bOK = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %buf = alloca [128 x i8], align 16
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !223, metadata !362), !dbg !757
  tail call void @llvm.dbg.value(metadata %struct.t_enxframe* %fr, i64 0, metadata !224, metadata !362), !dbg !758
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !228, metadata !362), !dbg !759
  store i32 1, i32* %bOK, align 4, !dbg !760, !tbaa !466
  %1 = tail call i32 @gmx_fio_getread(i32 %fp) #7, !dbg !761
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !227, metadata !362), !dbg !762
  %2 = icmp ne i32 %1, 0, !dbg !763
  br i1 %2, label %12, label %3, !dbg !765

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !766
  %5 = load i32* %4, align 4, !dbg !766, !tbaa !569
  %6 = shl i32 %5, 4, !dbg !768
  %7 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6, !dbg !769
  store i32 %6, i32* %7, align 4, !dbg !770, !tbaa !565
  %8 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !771
  %9 = load i32* %8, align 4, !dbg !771, !tbaa !584
  %10 = shl i32 %9, 3, !dbg !772
  %11 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7, !dbg !773
  store i32 %10, i32* %11, align 4, !dbg !774, !tbaa !580
  br label %12, !dbg !775

; <label>:12                                      ; preds = %3, %0
  tail call void @gmx_fio_select(i32 %fp) #7, !dbg !776
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %13 = call fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* %bOK) #8, !dbg !777
  %14 = icmp eq i32 %13, 0, !dbg !777
  br i1 %14, label %15, label %30, !dbg !779

; <label>:15                                      ; preds = %12
  br i1 %2, label %16, label %368, !dbg !780

; <label>:16                                      ; preds = %15
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !782, !tbaa !430
  %18 = load i32* @framenr, align 4, !dbg !785, !tbaa !466
  %19 = add nsw i32 %18, -1, !dbg !786
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 %19) #7, !dbg !787
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %21 = load i32* %bOK, align 4, !dbg !788, !tbaa !466
  %22 = icmp eq i32 %21, 0, !dbg !788
  br i1 %22, label %23, label %368, !dbg !790

; <label>:23                                      ; preds = %16
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !791, !tbaa !430
  %25 = load i32* @framenr, align 4, !dbg !792, !tbaa !466
  %26 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !793
  %27 = load float* %26, align 4, !dbg !793, !tbaa !794
  %28 = fpext float %27 to double, !dbg !795
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), i32 %25, double %28) #7, !dbg !796
  br label %368, !dbg !796

; <label>:30                                      ; preds = %12
  br i1 %2, label %31, label %45, !dbg !797

; <label>:31                                      ; preds = %30
  %32 = load i32* @framenr, align 4, !dbg !798, !tbaa !466
  %33 = icmp slt i32 %32, 10, !dbg !802
  %34 = srem i32 %32, 10
  %35 = icmp eq i32 %34, 0, !dbg !803
  %or.cond5 = or i1 %33, %35, !dbg !804
  br i1 %or.cond5, label %36, label %42, !dbg !804

; <label>:36                                      ; preds = %31
  %37 = load %struct.__sFILE** @__stderrp, align 8, !dbg !805, !tbaa !430
  %38 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !806
  %39 = load float* %38, align 4, !dbg !806, !tbaa !794
  %40 = fpext float %39 to double, !dbg !807
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([41 x i8]* @.str17, i64 0, i64 0), i32 %32, double %40) #7, !dbg !808
  %.pre = load i32* @framenr, align 4, !dbg !809, !tbaa !466
  br label %42, !dbg !808

; <label>:42                                      ; preds = %31, %36
  %43 = phi i32 [ %32, %31 ], [ %.pre, %36 ]
  %44 = add nsw i32 %43, 1, !dbg !809
  store i32 %44, i32* @framenr, align 4, !dbg !809, !tbaa !466
  br label %45, !dbg !810

; <label>:45                                      ; preds = %42, %30
  %46 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !811
  %47 = load i32* %46, align 4, !dbg !811, !tbaa !569
  %48 = icmp sgt i32 %47, 0, !dbg !812
  br i1 %48, label %53, label %49, !dbg !813

; <label>:49                                      ; preds = %45
  %50 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !814
  %51 = load i32* %50, align 4, !dbg !814, !tbaa !584
  %52 = icmp sgt i32 %51, 0, !dbg !815
  br label %53, !dbg !813

; <label>:53                                      ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32, !dbg !813
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !230, metadata !362), !dbg !816
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !362), !dbg !817
  %56 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !818
  %57 = load i32* %56, align 4, !dbg !818, !tbaa !425
  %58 = icmp sgt i32 %57, 0, !dbg !821
  br i1 %58, label %.lr.ph38, label %._crit_edge39, !dbg !822

.lr.ph38:                                         ; preds = %53
  %59 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !823
  %60 = sext i32 %57 to i64, !dbg !822
  br label %61, !dbg !822

; <label>:61                                      ; preds = %.lr.ph38, %68
  %indvars.iv55 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next56, %68 ]
  %bSane.036 = phi i32 [ %55, %.lr.ph38 ], [ %70, %68 ]
  %62 = icmp eq i32 %bSane.036, 0, !dbg !824
  br i1 %62, label %63, label %68, !dbg !825

; <label>:63                                      ; preds = %61
  %64 = load i32** %59, align 8, !dbg !823, !tbaa !435
  %65 = getelementptr inbounds i32* %64, i64 %indvars.iv55, !dbg !826
  %66 = load i32* %65, align 4, !dbg !826, !tbaa !466
  %67 = icmp sgt i32 %66, 0, !dbg !827
  br label %68, !dbg !825

; <label>:68                                      ; preds = %61, %63
  %69 = phi i1 [ true, %61 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32, !dbg !825
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !230, metadata !362), !dbg !816
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1, !dbg !822
  %71 = icmp slt i64 %indvars.iv.next56, %60, !dbg !821
  br i1 %71, label %61, label %._crit_edge39, !dbg !822

._crit_edge39:                                    ; preds = %68, %53
  %bSane.0.lcssa = phi i32 [ %55, %53 ], [ %70, %68 ]
  %72 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1, !dbg !828
  %73 = load i32* %72, align 4, !dbg !828, !tbaa !830
  %74 = icmp sgt i32 %73, -1, !dbg !831
  %75 = icmp ne i32 %bSane.0.lcssa, 0, !dbg !832
  %or.cond = and i1 %75, %74, !dbg !833
  br i1 %or.cond, label %90, label %76, !dbg !833

; <label>:76                                      ; preds = %._crit_edge39
  %77 = load %struct.__sFILE** @__stderrp, align 8, !dbg !834, !tbaa !430
  %78 = tail call i8* @gmx_fio_getname(i32 %fp) #7, !dbg !836
  %79 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %77, i8* getelementptr inbounds ([60 x i8]* @.str18, i64 0, i64 0), i8* %78) #7, !dbg !837
  %80 = load %struct.__sFILE** @__stderrp, align 8, !dbg !838, !tbaa !430
  %81 = load i32* %72, align 4, !dbg !839, !tbaa !830
  %82 = load i32* %46, align 4, !dbg !840, !tbaa !569
  %83 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !841
  %84 = load i32* %83, align 4, !dbg !841, !tbaa !584
  %85 = load i32* %56, align 4, !dbg !842, !tbaa !425
  %86 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !843
  %87 = load float* %86, align 4, !dbg !843, !tbaa !794
  %88 = fpext float %87 to double, !dbg !844
  %89 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([99 x i8]* @.str19, i64 0, i64 0), i32 %81, i32 %82, i32 %84, i32 %85, double %88) #7, !dbg !845
  br label %90, !dbg !846

; <label>:90                                      ; preds = %._crit_edge39, %76
  %91 = load i32* %46, align 4, !dbg !847, !tbaa !569
  br i1 %2, label %92, label %.preheader12, !dbg !849

; <label>:92                                      ; preds = %90
  %93 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9, !dbg !850
  %94 = load i32* %93, align 4, !dbg !850, !tbaa !404
  %95 = icmp sgt i32 %91, %94, !dbg !851
  br i1 %95, label %96, label %.preheader12, !dbg !852

; <label>:96                                      ; preds = %92
  %97 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12, !dbg !853
  %98 = bitcast %struct.t_energy** %97 to i8**, !dbg !853
  %99 = load i8** %98, align 8, !dbg !853, !tbaa !410
  %100 = shl i32 %91, 5, !dbg !853
  %101 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 294, i8* %99, i32 %100) #7, !dbg !853
  store i8* %101, i8** %98, align 8, !dbg !853, !tbaa !410
  %102 = load i32* %46, align 4, !dbg !855, !tbaa !569
  store i32 %102, i32* %93, align 4, !dbg !856, !tbaa !404
  br label %.preheader12, !dbg !857

.preheader12:                                     ; preds = %90, %96, %92
  %103 = phi i32 [ %102, %96 ], [ %91, %92 ], [ %91, %90 ]
  %104 = icmp sgt i32 %103, 0, !dbg !858
  br i1 %104, label %.lr.ph31, label %195, !dbg !861

.lr.ph31:                                         ; preds = %.preheader12
  %105 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12, !dbg !862
  %106 = bitcast float* %tmp2 to i8*, !dbg !864
  %107 = bitcast float* %tmp1 to i8*, !dbg !865
  %bOK.promoted33 = load i32* %bOK, align 4, !dbg !866, !tbaa !466
  br label %108, !dbg !861

; <label>:108                                     ; preds = %.lr.ph31, %189
  %indvars.iv53 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next54, %189 ]
  %109 = phi i32 [ %bOK.promoted33, %.lr.ph31 ], [ %191, %189 ]
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %110 = icmp eq i32 %109, 0, !dbg !867
  br i1 %110, label %127, label %111, !dbg !868

; <label>:111                                     ; preds = %108
  br i1 %2, label %112, label %118, !dbg !869

; <label>:112                                     ; preds = %111
  %113 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !869, !tbaa !430
  %114 = load %struct.t_energy** %105, align 8, !dbg !869, !tbaa !410
  %115 = getelementptr inbounds %struct.t_energy* %114, i64 %indvars.iv53, i32 0, !dbg !869
  %116 = bitcast float* %115 to i8*, !dbg !869
  %117 = call i32 %113(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #7, !dbg !869
  br label %124, !dbg !869

; <label>:118                                     ; preds = %111
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !869, !tbaa !430
  %120 = load %struct.t_energy** %105, align 8, !dbg !869, !tbaa !410
  %121 = getelementptr inbounds %struct.t_energy* %120, i64 %indvars.iv53, i32 0, !dbg !869
  %122 = bitcast float* %121 to i8*, !dbg !869
  %123 = call i32 %119(i8* %122, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #7, !dbg !869
  br label %124, !dbg !869

; <label>:124                                     ; preds = %118, %112
  %125 = phi i32 [ %117, %112 ], [ %123, %118 ], !dbg !869
  %126 = icmp ne i32 %125, 0, !dbg !868
  br label %127

; <label>:127                                     ; preds = %108, %124
  %128 = phi i1 [ false, %108 ], [ %126, %124 ]
  %129 = load %struct.t_energy** %105, align 8, !dbg !862, !tbaa !410
  %130 = getelementptr inbounds %struct.t_energy* %129, i64 %indvars.iv53, i32 1, !dbg !870
  %131 = load double* %130, align 8, !dbg !870, !tbaa !871
  %132 = fptrunc double %131 to float, !dbg !874
  call void @llvm.dbg.value(metadata float %132, i64 0, metadata !231, metadata !362), !dbg !875
  store float %132, float* %tmp1, align 4, !dbg !876, !tbaa !877
  %133 = load i32* %72, align 4, !dbg !878, !tbaa !830
  %134 = add nsw i32 %133, 1, !dbg !880
  %135 = sitofp i32 %134 to float, !dbg !881
  %136 = fdiv float %132, %135, !dbg !882
  %137 = fpext float %136 to double, !dbg !883
  %138 = fcmp olt double %137, 1.200000e-07, !dbg !884
  br i1 %138, label %139, label %140, !dbg !885

; <label>:139                                     ; preds = %127
  call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !231, metadata !362), !dbg !875
  store float 0.000000e+00, float* %tmp1, align 4, !dbg !886, !tbaa !877
  br label %140, !dbg !887

; <label>:140                                     ; preds = %139, %127
  %141 = phi float [ 0.000000e+00, %139 ], [ %132, %127 ]
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  br i1 %128, label %142, label %152, !dbg !888

; <label>:142                                     ; preds = %140
  br i1 %2, label %143, label %146, !dbg !865

; <label>:143                                     ; preds = %142
  %144 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !865, !tbaa !430
  %145 = call i32 %144(i8* %107, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #7, !dbg !865
  br label %149, !dbg !865

; <label>:146                                     ; preds = %142
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !865, !tbaa !430
  %148 = call i32 %147(i8* %107, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #7, !dbg !865
  br label %149, !dbg !865

; <label>:149                                     ; preds = %146, %143
  %150 = phi i32 [ %145, %143 ], [ %148, %146 ], !dbg !865
  %151 = icmp ne i32 %150, 0, !dbg !888
  %.pre58 = load float* %tmp1, align 4, !dbg !889, !tbaa !877
  %.pre59 = load %struct.t_energy** %105, align 8, !dbg !890, !tbaa !410
  br label %152

; <label>:152                                     ; preds = %140, %149
  %153 = phi %struct.t_energy* [ %129, %140 ], [ %.pre59, %149 ]
  %154 = phi float [ %141, %140 ], [ %.pre58, %149 ]
  %155 = phi i1 [ false, %140 ], [ %151, %149 ]
  call void @llvm.dbg.value(metadata float* %tmp1, i64 0, metadata !231, metadata !362), !dbg !875
  %156 = fpext float %154 to double, !dbg !889
  %157 = getelementptr inbounds %struct.t_energy* %153, i64 %indvars.iv53, i32 1, !dbg !891
  store double %156, double* %157, align 8, !dbg !892, !tbaa !871
  %158 = getelementptr inbounds %struct.t_energy* %153, i64 %indvars.iv53, i32 2, !dbg !893
  %159 = load double* %158, align 8, !dbg !893, !tbaa !894
  %160 = fptrunc double %159 to float, !dbg !895
  call void @llvm.dbg.value(metadata float %160, i64 0, metadata !232, metadata !362), !dbg !896
  store float %160, float* %tmp2, align 4, !dbg !897, !tbaa !877
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  br i1 %155, label %163, label %.thread, !dbg !898

.thread:                                          ; preds = %152
  call void @llvm.dbg.value(metadata float* %tmp2, i64 0, metadata !232, metadata !362), !dbg !896
  %161 = fpext float %160 to double, !dbg !899
  %162 = getelementptr inbounds %struct.t_energy* %153, i64 %indvars.iv53, i32 2, !dbg !900
  store double %161, double* %162, align 8, !dbg !901, !tbaa !894
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  br label %189, !dbg !902

; <label>:163                                     ; preds = %152
  br i1 %2, label %164, label %167, !dbg !864

; <label>:164                                     ; preds = %163
  %165 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !864, !tbaa !430
  %166 = call i32 %165(i8* %106, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #7, !dbg !864
  br label %170, !dbg !864

; <label>:167                                     ; preds = %163
  %168 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !864, !tbaa !430
  %169 = call i32 %168(i8* %106, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #7, !dbg !864
  br label %170, !dbg !864

; <label>:170                                     ; preds = %164, %167
  %171 = phi i32 [ %166, %164 ], [ %169, %167 ], !dbg !864
  %172 = icmp eq i32 %171, 0, !dbg !898
  %.pre60 = load float* %tmp2, align 4, !dbg !899, !tbaa !877
  %.pre61 = load %struct.t_energy** %105, align 8, !dbg !903, !tbaa !410
  call void @llvm.dbg.value(metadata float* %tmp2, i64 0, metadata !232, metadata !362), !dbg !896
  %173 = fpext float %.pre60 to double, !dbg !899
  %174 = getelementptr inbounds %struct.t_energy* %.pre61, i64 %indvars.iv53, i32 2, !dbg !900
  store double %173, double* %174, align 8, !dbg !901, !tbaa !894
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  br i1 %172, label %189, label %175, !dbg !902

; <label>:175                                     ; preds = %170
  br i1 %2, label %176, label %181, !dbg !904

; <label>:176                                     ; preds = %175
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !904, !tbaa !430
  %178 = getelementptr inbounds %struct.t_energy* %.pre61, i64 %indvars.iv53, i32 3, !dbg !904
  %179 = bitcast float* %178 to i8*, !dbg !904
  %180 = call i32 %177(i8* %179, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #7, !dbg !904
  br label %186, !dbg !904

; <label>:181                                     ; preds = %175
  %182 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !904, !tbaa !430
  %183 = getelementptr inbounds %struct.t_energy* %.pre61, i64 %indvars.iv53, i32 3, !dbg !904
  %184 = bitcast float* %183 to i8*, !dbg !904
  %185 = call i32 %182(i8* %184, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #7, !dbg !904
  br label %186, !dbg !904

; <label>:186                                     ; preds = %181, %176
  %187 = phi i32 [ %180, %176 ], [ %185, %181 ], !dbg !904
  %188 = icmp ne i32 %187, 0, !dbg !902
  br label %189

; <label>:189                                     ; preds = %170, %.thread, %186
  %190 = phi i1 [ false, %170 ], [ %188, %186 ], [ false, %.thread ]
  %191 = zext i1 %190 to i32, !dbg !902
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !228, metadata !362), !dbg !759
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !861
  %192 = load i32* %46, align 4, !dbg !905, !tbaa !569
  %193 = sext i32 %192 to i64, !dbg !858
  %194 = icmp slt i64 %indvars.iv.next54, %193, !dbg !858
  br i1 %194, label %108, label %._crit_edge32, !dbg !861

._crit_edge32:                                    ; preds = %189
  store i32 %191, i32* %bOK, align 4, !dbg !866, !tbaa !466
  br label %195, !dbg !861

; <label>:195                                     ; preds = %._crit_edge32, %.preheader12
  %196 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !906
  %197 = load i32* %196, align 4, !dbg !906, !tbaa !584
  %198 = icmp eq i32 %197, 0, !dbg !907
  br i1 %198, label %.preheader10, label %199, !dbg !908

; <label>:199                                     ; preds = %195
  br i1 %2, label %200, label %.preheader11, !dbg !909

; <label>:200                                     ; preds = %199
  %201 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10, !dbg !911
  %202 = load i32* %201, align 4, !dbg !911, !tbaa !413
  %203 = icmp sgt i32 %197, %202, !dbg !912
  br i1 %203, label %204, label %.preheader11, !dbg !913

; <label>:204                                     ; preds = %200
  %205 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13, !dbg !914
  %206 = bitcast float** %205 to i8**, !dbg !914
  %207 = load i8** %206, align 8, !dbg !914, !tbaa !418
  %208 = shl i32 %197, 2, !dbg !914
  %209 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 315, i8* %207, i32 %208) #7, !dbg !914
  store i8* %209, i8** %206, align 8, !dbg !914, !tbaa !418
  %210 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14, !dbg !916
  %211 = bitcast float** %210 to i8**, !dbg !916
  %212 = load i8** %211, align 8, !dbg !916, !tbaa !420
  %213 = load i32* %196, align 4, !dbg !916, !tbaa !584
  %214 = shl i32 %213, 2, !dbg !916
  %215 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 316, i8* %212, i32 %214) #7, !dbg !916
  store i8* %215, i8** %211, align 8, !dbg !916, !tbaa !420
  %216 = load i32* %196, align 4, !dbg !917, !tbaa !584
  store i32 %216, i32* %201, align 4, !dbg !918, !tbaa !413
  br label %.preheader11, !dbg !919

.preheader11:                                     ; preds = %204, %200, %199
  %217 = phi i32 [ %216, %204 ], [ %197, %200 ], [ %197, %199 ]
  %218 = icmp sgt i32 %217, 0, !dbg !920
  br i1 %218, label %.lr.ph27, label %._crit_edge28.thread, !dbg !921

._crit_edge28.thread:                             ; preds = %.preheader11
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %219 = load i32* %bOK, align 4, !dbg !922, !tbaa !466
  %not.64 = icmp ne i32 %219, 0, !dbg !923
  %220 = zext i1 %not.64 to i32, !dbg !923
  call void @llvm.dbg.value(metadata i32 %250, i64 0, metadata !228, metadata !362), !dbg !759
  store i32 %220, i32* %bOK, align 4, !dbg !924, !tbaa !466
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !229, metadata !362), !dbg !925
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !362), !dbg !926
  br label %._crit_edge23, !dbg !927

.lr.ph27:                                         ; preds = %.preheader11
  %221 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !928
  %222 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13, !dbg !928
  br label %223, !dbg !921

; <label>:223                                     ; preds = %.lr.ph27, %243
  %indvars.iv51 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next52, %243 ]
  %bOK1.026 = phi i32 [ 1, %.lr.ph27 ], [ %245, %243 ]
  call void @llvm.lifetime.start(i64 128, i8* %221) #6, !dbg !928
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !233, metadata !362), !dbg !928
  %224 = trunc i64 %indvars.iv51 to i32, !dbg !928
  %225 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %221, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 %224) #7, !dbg !928
  %226 = icmp eq i32 %bOK1.026, 0, !dbg !928
  br i1 %226, label %243, label %227, !dbg !928

; <label>:227                                     ; preds = %223
  br i1 %2, label %228, label %234, !dbg !928

; <label>:228                                     ; preds = %227
  %229 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !928, !tbaa !430
  %230 = load float** %222, align 8, !dbg !928, !tbaa !418
  %231 = getelementptr inbounds float* %230, i64 %indvars.iv51, !dbg !928
  %232 = bitcast float* %231 to i8*, !dbg !928
  %233 = call i32 %229(i8* %232, i32 1, i32 0, i8* %221, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #7, !dbg !928
  br label %240, !dbg !928

; <label>:234                                     ; preds = %227
  %235 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !928, !tbaa !430
  %236 = load float** %222, align 8, !dbg !928, !tbaa !418
  %237 = getelementptr inbounds float* %236, i64 %indvars.iv51, !dbg !928
  %238 = bitcast float* %237 to i8*, !dbg !928
  %239 = call i32 %235(i8* %238, i32 1, i32 0, i8* %221, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #7, !dbg !928
  br label %240, !dbg !928

; <label>:240                                     ; preds = %234, %228
  %241 = phi i32 [ %233, %228 ], [ %239, %234 ], !dbg !928
  %242 = icmp ne i32 %241, 0, !dbg !928
  br label %243

; <label>:243                                     ; preds = %223, %240
  %244 = phi i1 [ false, %223 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32, !dbg !928
  call void @llvm.dbg.value(metadata i32 %245, i64 0, metadata !229, metadata !362), !dbg !925
  call void @llvm.lifetime.end(i64 128, i8* %221) #6, !dbg !920
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !921
  %246 = load i32* %196, align 4, !dbg !920, !tbaa !584
  %247 = sext i32 %246 to i64, !dbg !920
  %248 = icmp slt i64 %indvars.iv.next52, %247, !dbg !920
  br i1 %248, label %223, label %._crit_edge28, !dbg !921

._crit_edge28:                                    ; preds = %243
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %249 = load i32* %bOK, align 4, !dbg !922, !tbaa !466
  %not. = icmp ne i32 %249, 0, !dbg !923
  %. = and i1 %244, %not., !dbg !923
  %250 = zext i1 %. to i32, !dbg !923
  call void @llvm.dbg.value(metadata i32 %250, i64 0, metadata !228, metadata !362), !dbg !759
  store i32 %250, i32* %bOK, align 4, !dbg !924, !tbaa !466
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !229, metadata !362), !dbg !925
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !362), !dbg !926
  %251 = icmp sgt i32 %246, 0, !dbg !929
  br i1 %251, label %.lr.ph22, label %._crit_edge23, !dbg !927

.lr.ph22:                                         ; preds = %._crit_edge28
  %252 = getelementptr inbounds [128 x i8]* %buf1, i64 0, i64 0, !dbg !930
  %253 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14, !dbg !930
  br label %254, !dbg !927

; <label>:254                                     ; preds = %.lr.ph22, %274
  %indvars.iv49 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next50, %274 ]
  %bOK1.120 = phi i32 [ 1, %.lr.ph22 ], [ %276, %274 ]
  call void @llvm.lifetime.start(i64 128, i8* %252) #6, !dbg !930
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf1, metadata !243, metadata !362), !dbg !930
  %255 = trunc i64 %indvars.iv49 to i32, !dbg !930
  %256 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %252, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i32 %255) #7, !dbg !930
  %257 = icmp eq i32 %bOK1.120, 0, !dbg !930
  br i1 %257, label %274, label %258, !dbg !930

; <label>:258                                     ; preds = %254
  br i1 %2, label %259, label %265, !dbg !930

; <label>:259                                     ; preds = %258
  %260 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !930, !tbaa !430
  %261 = load float** %253, align 8, !dbg !930, !tbaa !420
  %262 = getelementptr inbounds float* %261, i64 %indvars.iv49, !dbg !930
  %263 = bitcast float* %262 to i8*, !dbg !930
  %264 = call i32 %260(i8* %263, i32 1, i32 0, i8* %252, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 321) #7, !dbg !930
  br label %271, !dbg !930

; <label>:265                                     ; preds = %258
  %266 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !930, !tbaa !430
  %267 = load float** %253, align 8, !dbg !930, !tbaa !420
  %268 = getelementptr inbounds float* %267, i64 %indvars.iv49, !dbg !930
  %269 = bitcast float* %268 to i8*, !dbg !930
  %270 = call i32 %266(i8* %269, i32 1, i32 0, i8* %252, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 321) #7, !dbg !930
  br label %271, !dbg !930

; <label>:271                                     ; preds = %265, %259
  %272 = phi i32 [ %264, %259 ], [ %270, %265 ], !dbg !930
  %273 = icmp ne i32 %272, 0, !dbg !930
  br label %274

; <label>:274                                     ; preds = %254, %271
  %275 = phi i1 [ false, %254 ], [ %273, %271 ]
  %276 = zext i1 %275 to i32, !dbg !930
  call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !229, metadata !362), !dbg !925
  call void @llvm.lifetime.end(i64 128, i8* %252) #6, !dbg !929
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !927
  %277 = load i32* %196, align 4, !dbg !929, !tbaa !584
  %278 = sext i32 %277 to i64, !dbg !929
  %279 = icmp slt i64 %indvars.iv.next50, %278, !dbg !929
  br i1 %279, label %254, label %._crit_edge23, !dbg !927

._crit_edge23:                                    ; preds = %274, %._crit_edge28.thread, %._crit_edge28
  %.66 = phi i1 [ %., %._crit_edge28 ], [ %not.64, %._crit_edge28.thread ], [ %., %274 ]
  %bOK1.1.lcssa = phi i1 [ true, %._crit_edge28 ], [ true, %._crit_edge28.thread ], [ %275, %274 ]
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %.6 = and i1 %bOK1.1.lcssa, %.66, !dbg !931
  %280 = zext i1 %.6 to i32, !dbg !931
  call void @llvm.dbg.value(metadata i32 %280, i64 0, metadata !228, metadata !362), !dbg !759
  store i32 %280, i32* %bOK, align 4, !dbg !932, !tbaa !466
  br label %.preheader10, !dbg !933

.preheader10:                                     ; preds = %195, %._crit_edge23
  %281 = load i32* %56, align 4, !dbg !934, !tbaa !425
  %282 = icmp sgt i32 %281, 0, !dbg !935
  br i1 %282, label %.lr.ph16, label %.preheader10._crit_edge, !dbg !936

.preheader10._crit_edge:                          ; preds = %.preheader10
  %.pre63 = load i32* %bOK, align 4, !dbg !937, !tbaa !466
  br label %352, !dbg !936

.lr.ph16:                                         ; preds = %.preheader10
  %283 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !939
  %284 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11, !dbg !941
  %285 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15, !dbg !942
  %286 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0, !dbg !944
  %bOK.promoted = load i32* %bOK, align 4, !dbg !945, !tbaa !466
  br label %287, !dbg !936

; <label>:287                                     ; preds = %.lr.ph16, %._crit_edge
  %indvars.iv47 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next48, %._crit_edge ]
  %288 = phi i32 [ %bOK.promoted, %.lr.ph16 ], [ %348, %._crit_edge ]
  %289 = load i32** %283, align 8, !dbg !939, !tbaa !435
  br i1 %2, label %290, label %.preheader, !dbg !946

; <label>:290                                     ; preds = %287
  %291 = getelementptr inbounds i32* %289, i64 %indvars.iv47, !dbg !947
  %292 = load i32* %291, align 4, !dbg !947, !tbaa !466
  %293 = load i32** %284, align 8, !dbg !941, !tbaa !433
  %294 = getelementptr inbounds i32* %293, i64 %indvars.iv47, !dbg !948
  %295 = load i32* %294, align 4, !dbg !948, !tbaa !466
  %296 = icmp sgt i32 %292, %295, !dbg !949
  br i1 %296, label %297, label %.preheader, !dbg !950

; <label>:297                                     ; preds = %290
  %298 = load float*** %285, align 8, !dbg !942, !tbaa !429
  %299 = getelementptr inbounds float** %298, i64 %indvars.iv47, !dbg !942
  %300 = bitcast float** %299 to i8**, !dbg !942
  %301 = load i8** %300, align 8, !dbg !942, !tbaa !430
  %302 = shl i32 %292, 2, !dbg !942
  %303 = call i8* @save_realloc(i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %301, i32 %302) #7, !dbg !942
  %304 = load float*** %285, align 8, !dbg !942, !tbaa !429
  %305 = getelementptr inbounds float** %304, i64 %indvars.iv47, !dbg !942
  %306 = bitcast float** %305 to i8**, !dbg !942
  store i8* %303, i8** %306, align 8, !dbg !942, !tbaa !430
  %307 = load i32** %283, align 8, !dbg !951, !tbaa !435
  %308 = getelementptr inbounds i32* %307, i64 %indvars.iv47, !dbg !952
  %309 = load i32* %308, align 4, !dbg !952, !tbaa !466
  %310 = load i32** %284, align 8, !dbg !953, !tbaa !433
  %311 = getelementptr inbounds i32* %310, i64 %indvars.iv47, !dbg !954
  store i32 %309, i32* %311, align 4, !dbg !955, !tbaa !466
  br label %.preheader, !dbg !956

.preheader:                                       ; preds = %287, %297, %290
  %312 = phi i32* [ %307, %297 ], [ %289, %290 ], [ %289, %287 ], !dbg !957
  %313 = getelementptr inbounds i32* %312, i64 %indvars.iv47, !dbg !957
  %314 = load i32* %313, align 4, !dbg !957, !tbaa !466
  %315 = icmp sgt i32 %314, 0, !dbg !957
  br i1 %315, label %.lr.ph, label %._crit_edge, !dbg !958

.lr.ph:                                           ; preds = %.preheader, %339
  %indvars.iv = phi i64 [ %indvars.iv.next, %339 ], [ 0, %.preheader ]
  %bOK1.214 = phi i32 [ %341, %339 ], [ 1, %.preheader ]
  call void @llvm.lifetime.start(i64 128, i8* %286) #6, !dbg !944
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf2, metadata !248, metadata !362), !dbg !944
  %316 = trunc i64 %indvars.iv to i32, !dbg !944
  %317 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %286, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %316) #7, !dbg !944
  %318 = icmp eq i32 %bOK1.214, 0, !dbg !944
  br i1 %318, label %339, label %319, !dbg !944

; <label>:319                                     ; preds = %.lr.ph
  br i1 %2, label %320, label %328, !dbg !944

; <label>:320                                     ; preds = %319
  %321 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !944, !tbaa !430
  %322 = load float*** %285, align 8, !dbg !944, !tbaa !429
  %323 = getelementptr inbounds float** %322, i64 %indvars.iv47, !dbg !944
  %324 = load float** %323, align 8, !dbg !944, !tbaa !430
  %325 = getelementptr inbounds float* %324, i64 %indvars.iv, !dbg !944
  %326 = bitcast float* %325 to i8*, !dbg !944
  %327 = call i32 %321(i8* %326, i32 1, i32 0, i8* %286, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 329) #7, !dbg !944
  br label %336, !dbg !944

; <label>:328                                     ; preds = %319
  %329 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !944, !tbaa !430
  %330 = load float*** %285, align 8, !dbg !944, !tbaa !429
  %331 = getelementptr inbounds float** %330, i64 %indvars.iv47, !dbg !944
  %332 = load float** %331, align 8, !dbg !944, !tbaa !430
  %333 = getelementptr inbounds float* %332, i64 %indvars.iv, !dbg !944
  %334 = bitcast float* %333 to i8*, !dbg !944
  %335 = call i32 %329(i8* %334, i32 1, i32 0, i8* %286, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 329) #7, !dbg !944
  br label %336, !dbg !944

; <label>:336                                     ; preds = %328, %320
  %337 = phi i32 [ %327, %320 ], [ %335, %328 ], !dbg !944
  %338 = icmp ne i32 %337, 0, !dbg !944
  br label %339

; <label>:339                                     ; preds = %.lr.ph, %336
  %340 = phi i1 [ false, %.lr.ph ], [ %338, %336 ]
  %341 = zext i1 %340 to i32, !dbg !944
  call void @llvm.dbg.value(metadata i32 %341, i64 0, metadata !229, metadata !362), !dbg !925
  call void @llvm.lifetime.end(i64 128, i8* %286) #6, !dbg !957
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !958
  %342 = load i32** %283, align 8, !dbg !957, !tbaa !435
  %343 = getelementptr inbounds i32* %342, i64 %indvars.iv47, !dbg !957
  %344 = load i32* %343, align 4, !dbg !957, !tbaa !466
  %345 = sext i32 %344 to i64, !dbg !957
  %346 = icmp slt i64 %indvars.iv.next, %345, !dbg !957
  br i1 %346, label %.lr.ph, label %._crit_edge, !dbg !958

._crit_edge:                                      ; preds = %339, %.preheader
  %bOK1.2.lcssa = phi i32 [ 1, %.preheader ], [ %341, %339 ]
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %347 = icmp ne i32 %bOK1.2.lcssa, 0, !dbg !959
  %not.9 = icmp ne i32 %288, 0, !dbg !959
  %.7 = and i1 %347, %not.9, !dbg !959
  %348 = zext i1 %.7 to i32, !dbg !959
  call void @llvm.dbg.value(metadata i32 %348, i64 0, metadata !228, metadata !362), !dbg !759
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !936
  %349 = load i32* %56, align 4, !dbg !934, !tbaa !425
  %350 = sext i32 %349 to i64, !dbg !935
  %351 = icmp slt i64 %indvars.iv.next48, %350, !dbg !935
  br i1 %351, label %287, label %._crit_edge17, !dbg !936

._crit_edge17:                                    ; preds = %._crit_edge
  store i32 %348, i32* %bOK, align 4, !dbg !945, !tbaa !466
  br label %352, !dbg !936

; <label>:352                                     ; preds = %.preheader10._crit_edge, %._crit_edge17
  %353 = phi i32 [ %.pre63, %.preheader10._crit_edge ], [ %348, %._crit_edge17 ]
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !228, metadata !362), !dbg !759
  %354 = icmp eq i32 %353, 0, !dbg !937
  br i1 %354, label %355, label %368, !dbg !960

; <label>:355                                     ; preds = %352
  br i1 %2, label %356, label %367, !dbg !961

; <label>:356                                     ; preds = %355
  %357 = load %struct.__sFILE** @__stderrp, align 8, !dbg !963, !tbaa !430
  %358 = load i32* @framenr, align 4, !dbg !966, !tbaa !466
  %359 = add nsw i32 %358, -1, !dbg !967
  %360 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %357, i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), i32 %359) #7, !dbg !968
  %361 = load %struct.__sFILE** @__stderrp, align 8, !dbg !969, !tbaa !430
  %362 = load i32* @framenr, align 4, !dbg !970, !tbaa !466
  %363 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !971
  %364 = load float* %363, align 4, !dbg !971, !tbaa !794
  %365 = fpext float %364 to double, !dbg !972
  %366 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %361, i8* getelementptr inbounds ([52 x i8]* @.str27, i64 0, i64 0), i32 %362, double %365) #7, !dbg !973
  br label %368, !dbg !974

; <label>:367                                     ; preds = %355
  call void (i32, i8*, ...)* @fatal_error(i32 -1, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !975
  br label %368

; <label>:368                                     ; preds = %352, %356, %367, %15, %23, %16
  %.0 = phi i32 [ 0, %16 ], [ 0, %23 ], [ 0, %15 ], [ 0, %367 ], [ 0, %356 ], [ 1, %352 ]
  ret i32 %.0, !dbg !976
}

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #2

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #2

; Function Attrs: optsize
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #2

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @trim(i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

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
!llvm.module.flags = !{!358, !359, !360}
!llvm.ident = !{!361}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !71, subprograms: !74, globals: !355, imports: !357)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/enxio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !53, !65}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 52, size: 32, align: 32, elements: !55)
!54 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmxfio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64}
!56 = !DIEnumerator(name: "eioREAL", value: 0)
!57 = !DIEnumerator(name: "eioINT", value: 1)
!58 = !DIEnumerator(name: "eioNUCHAR", value: 2)
!59 = !DIEnumerator(name: "eioUSHORT", value: 3)
!60 = !DIEnumerator(name: "eioRVEC", value: 4)
!61 = !DIEnumerator(name: "eioNRVEC", value: 5)
!62 = !DIEnumerator(name: "eioIVEC", value: 6)
!63 = !DIEnumerator(name: "eioSTRING", value: 7)
!64 = !DIEnumerator(name: "eioNR", value: 8)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !66, line: 119, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!69 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!70 = !DIEnumerator(name: "XDR_FREE", value: 2)
!71 = !{!72, !73}
!72 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!74 = !{!75, !143, !149, !192, !202, !207, !219, !256, !315, !327, !335, !347}
!75 = !DISubprogram(name: "__sputc", scope: !76, file: !76, line: 348, type: !77, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !140)
!76 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !79, !80}
!79 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 153, baseType: !82)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !76, line: 122, size: 1216, align: 64, elements: !83)
!83 = !{!84, !87, !88, !89, !91, !92, !97, !98, !99, !103, !108, !118, !124, !125, !128, !129, !133, !137, !138, !139}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !82, file: !76, line: 123, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !82, file: !76, line: 124, baseType: !79, size: 32, align: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !82, file: !76, line: 125, baseType: !79, size: 32, align: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !82, file: !76, line: 126, baseType: !90, size: 16, align: 16, offset: 128)
!90 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !82, file: !76, line: 127, baseType: !90, size: 16, align: 16, offset: 144)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !82, file: !76, line: 128, baseType: !93, size: 128, align: 64, offset: 192)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !76, line: 88, size: 128, align: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !93, file: !76, line: 89, baseType: !85, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !93, file: !76, line: 90, baseType: !79, size: 32, align: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !82, file: !76, line: 129, baseType: !79, size: 32, align: 32, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !82, file: !76, line: 132, baseType: !73, size: 64, align: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !82, file: !76, line: 133, baseType: !100, size: 64, align: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!79, !73}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !82, file: !76, line: 134, baseType: !104, size: 64, align: 64, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!79, !73, !107, !79}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !82, file: !76, line: 135, baseType: !109, size: 64, align: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !73, !112, !79}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !76, line: 77, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !114, line: 71, baseType: !115)
!114 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !116, line: 46, baseType: !117)
!116 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!117 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !82, file: !76, line: 136, baseType: !119, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!79, !73, !122, !79}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !82, file: !76, line: 139, baseType: !93, size: 128, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !82, file: !76, line: 140, baseType: !126, size: 64, align: 64, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !76, line: 94, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !82, file: !76, line: 141, baseType: !79, size: 32, align: 32, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !82, file: !76, line: 144, baseType: !130, size: 24, align: 8, offset: 928)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 3)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !82, file: !76, line: 145, baseType: !134, size: 8, align: 8, offset: 952)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 8, align: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !82, file: !76, line: 148, baseType: !93, size: 128, align: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !82, file: !76, line: 151, baseType: !79, size: 32, align: 32, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !82, file: !76, line: 152, baseType: !112, size: 64, align: 64, offset: 1152)
!140 = !{!141, !142}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !75, file: !76, line: 348, type: !79)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !75, file: !76, line: 348, type: !80)
!143 = !DISubprogram(name: "__sigbits", scope: !144, file: !144, line: 114, type: !145, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !147)
!144 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!145 = !DISubroutineType(types: !146)
!146 = !{!79, !79}
!147 = !{!148}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !143, file: !144, line: 114, type: !79)
!149 = !DISubprogram(name: "free_enxframe", scope: !1, file: !1, line: 40, type: !150, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_enxframe*)* @free_enxframe, variables: !189)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_enxframe", file: !154, line: 89, baseType: !155)
!154 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/enxio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!155 = !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 72, size: 768, align: 64, elements: !156)
!156 = !{!157, !161, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !173, !184, !186, !187}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !155, file: !154, line: 73, baseType: !158, size: 32, align: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !159, line: 87, baseType: !160)
!159 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!160 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !155, file: !154, line: 74, baseType: !79, size: 32, align: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nre", scope: !155, file: !154, line: 75, baseType: !79, size: 32, align: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ndisre", scope: !155, file: !154, line: 76, baseType: !79, size: 32, align: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nblock", scope: !155, file: !154, line: 77, baseType: !79, size: 32, align: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !155, file: !154, line: 78, baseType: !166, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "e_size", scope: !155, file: !154, line: 79, baseType: !79, size: 32, align: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "d_size", scope: !155, file: !154, line: 80, baseType: !79, size: 32, align: 32, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_alloc", scope: !155, file: !154, line: 81, baseType: !79, size: 32, align: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "e_alloc", scope: !155, file: !154, line: 82, baseType: !79, size: 32, align: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "d_alloc", scope: !155, file: !154, line: 83, baseType: !79, size: 32, align: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_alloc", scope: !155, file: !154, line: 84, baseType: !166, size: 64, align: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ener", scope: !155, file: !154, line: 85, baseType: !174, size: 64, align: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_energy", file: !176, line: 41, baseType: !177)
!176 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/energy.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!177 = !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 36, size: 256, align: 64, elements: !178)
!178 = !{!179, !180, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !177, file: !176, line: 37, baseType: !158, size: 32, align: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "eav", scope: !177, file: !176, line: 38, baseType: !181, size: 64, align: 64, offset: 64)
!181 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "esum", scope: !177, file: !176, line: 39, baseType: !181, size: 64, align: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "e2sum", scope: !177, file: !176, line: 40, baseType: !158, size: 32, align: 32, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rav", scope: !155, file: !154, line: 86, baseType: !185, size: 64, align: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !155, file: !154, line: 87, baseType: !185, size: 64, align: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !155, file: !154, line: 88, baseType: !188, size: 64, align: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!189 = !{!190, !191}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 1, scope: !149, file: !1, line: 40, type: !152)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !149, file: !1, line: 42, type: !79)
!192 = !DISubprogram(name: "do_enxnms", scope: !1, file: !1, line: 154, type: !193, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*, i8***)* @do_enxnms, variables: !197)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !79, !166, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!197 = !{!198, !199, !200, !201}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !192, file: !1, line: 154, type: !79)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nre", arg: 2, scope: !192, file: !1, line: 154, type: !166)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nms", arg: 3, scope: !192, file: !1, line: 154, type: !195)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRead", scope: !192, file: !1, line: 156, type: !79)
!202 = !DISubprogram(name: "close_enx", scope: !1, file: !1, line: 169, type: !203, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @close_enx, variables: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !79}
!205 = !{!206}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !202, file: !1, line: 169, type: !79)
!207 = !DISubprogram(name: "open_enx", scope: !1, file: !1, line: 190, type: !208, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @open_enx, variables: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!79, !107, !107}
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !207, file: !1, line: 190, type: !107)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !207, file: !1, line: 190, type: !107)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !207, file: !1, line: 192, type: !79)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nre", scope: !207, file: !1, line: 192, type: !79)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !207, file: !1, line: 192, type: !79)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nm", scope: !207, file: !1, line: 193, type: !196)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !207, file: !1, line: 194, type: !152)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !207, file: !1, line: 195, type: !79)
!219 = !DISubprogram(name: "do_enx", scope: !1, file: !1, line: 253, type: !220, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_enxframe*)* @do_enx, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!79, !79, !152}
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !243, !248}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !219, file: !1, line: 253, type: !79)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !219, file: !1, line: 253, type: !152)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !219, file: !1, line: 255, type: !79)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block", scope: !219, file: !1, line: 255, type: !79)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRead", scope: !219, file: !1, line: 256, type: !79)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !219, file: !1, line: 256, type: !79)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK1", scope: !219, file: !1, line: 256, type: !79)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bSane", scope: !219, file: !1, line: 256, type: !79)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp1", scope: !219, file: !1, line: 257, type: !158)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp2", scope: !219, file: !1, line: 257, type: !158)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !234, file: !1, line: 319, type: !240)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 319, column: 5)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 319, column: 5)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 319, column: 5)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 319, column: 5)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 313, column: 19)
!239 = distinct !DILexicalBlock(scope: !219, file: !1, line: 313, column: 7)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1024, align: 8, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 128)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !244, file: !1, line: 321, type: !240)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 321, column: 5)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 321, column: 5)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 321, column: 5)
!247 = distinct !DILexicalBlock(scope: !238, file: !1, line: 321, column: 5)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !249, file: !1, line: 329, type: !240)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 329, column: 5)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 329, column: 5)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 329, column: 5)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 329, column: 5)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 324, column: 43)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 324, column: 3)
!255 = distinct !DILexicalBlock(scope: !219, file: !1, line: 324, column: 3)
!256 = !DISubprogram(name: "edr_nms", scope: !1, file: !1, line: 84, type: !193, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, variables: !257)
!257 = !{!258, !259, !260, !261, !312, !313, !314}
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !256, file: !1, line: 84, type: !79)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nre", arg: 2, scope: !256, file: !1, line: 84, type: !166)
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nms", arg: 3, scope: !256, file: !1, line: 84, type: !195)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xdr", scope: !256, file: !1, line: 86, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !66, line: 144, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !66, line: 145, size: 384, align: 64, elements: !265)
!265 = !{!266, !267, !308, !309, !310, !311}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !264, file: !66, line: 147, baseType: !65, size: 32, align: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !264, file: !66, line: 171, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !66, line: 148, size: 640, align: 64, elements: !270)
!270 = !{!271, !278, !279, !284, !285, !289, !293, !299, !303, !307}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !269, file: !66, line: 150, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !262, !276}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !66, line: 99, baseType: !79)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !269, file: !66, line: 152, baseType: !272, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !269, file: !66, line: 154, baseType: !280, size: 64, align: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!275, !262, !107, !283}
!283 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !269, file: !66, line: 156, baseType: !280, size: 64, align: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !269, file: !66, line: 158, baseType: !286, size: 64, align: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!283, !262}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !269, file: !66, line: 160, baseType: !290, size: 64, align: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!275, !262, !283}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !269, file: !66, line: 162, baseType: !294, size: 64, align: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !262, !79}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_int32_t", file: !66, line: 106, baseType: !79)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !269, file: !66, line: 164, baseType: !300, size: 64, align: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !262}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !269, file: !66, line: 166, baseType: !304, size: 64, align: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!275, !262, !297}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !269, file: !66, line: 168, baseType: !304, size: 64, align: 64, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !264, file: !66, line: 172, baseType: !107, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !264, file: !66, line: 173, baseType: !107, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !264, file: !66, line: 174, baseType: !107, size: 64, align: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !264, file: !66, line: 175, baseType: !79, size: 32, align: 32, offset: 320)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRead", scope: !256, file: !1, line: 87, type: !79)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !256, file: !1, line: 88, type: !79)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NM", scope: !256, file: !1, line: 89, type: !196)
!315 = !DISubprogram(name: "rd_ener_nms", scope: !1, file: !1, line: 66, type: !316, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, variables: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !80, !166, !195}
!318 = !{!319, !320, !321, !322, !326}
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !315, file: !1, line: 66, type: !80)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nre", arg: 2, scope: !315, file: !1, line: 66, type: !166)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nm", arg: 3, scope: !315, file: !1, line: 66, type: !195)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !315, file: !1, line: 68, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2048, align: 8, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 256)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !315, file: !1, line: 69, type: !79)
!327 = !DISubprogram(name: "wr_ener_nms", scope: !1, file: !1, line: 57, type: !328, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, variables: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !80, !79, !196}
!330 = !{!331, !332, !333, !334}
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !327, file: !1, line: 57, type: !80)
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nre", arg: 2, scope: !327, file: !1, line: 57, type: !79)
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nms", arg: 3, scope: !327, file: !1, line: 57, type: !196)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !327, file: !1, line: 59, type: !79)
!335 = !DISubprogram(name: "do_eheader", scope: !1, file: !1, line: 112, type: !336, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_enxframe*, i32*)* @do_eheader, variables: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!79, !79, !152, !166}
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346}
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !335, file: !1, line: 112, type: !79)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !335, file: !1, line: 112, type: !152)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOK", arg: 3, scope: !335, file: !1, line: 112, type: !166)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block", scope: !335, file: !1, line: 114, type: !79)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !335, file: !1, line: 114, type: !79)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum", scope: !335, file: !1, line: 114, type: !79)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRead", scope: !335, file: !1, line: 115, type: !79)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tempfix_nr", scope: !335, file: !1, line: 116, type: !79)
!347 = !DISubprogram(name: "empty_file", scope: !1, file: !1, line: 174, type: !348, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, variables: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!79, !107}
!350 = !{!351, !352, !353, !354}
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !347, file: !1, line: 174, type: !107)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !347, file: !1, line: 176, type: !80)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum", scope: !347, file: !1, line: 177, type: !72)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bEmpty", scope: !347, file: !1, line: 178, type: !79)
!355 = !{!356}
!356 = !DIGlobalVariable(name: "framenr", scope: !0, file: !1, line: 188, type: !79, isLocal: true, isDefinition: true, variable: i32* @framenr)
!357 = !{}
!358 = !{i32 2, !"Dwarf Version", i32 2}
!359 = !{i32 2, !"Debug Info Version", i32 700000003}
!360 = !{i32 1, !"PIC Level", i32 2}
!361 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!362 = !DIExpression()
!363 = !DILocation(line: 348, column: 40, scope: !75)
!364 = !DILocation(line: 348, column: 50, scope: !75)
!365 = !DILocation(line: 349, column: 12, scope: !366)
!366 = distinct !DILexicalBlock(scope: !75, file: !76, line: 349, column: 6)
!367 = !DILocation(line: 349, column: 6, scope: !366)
!368 = !{!369, !373, i64 12}
!369 = !{!"__sFILE", !370, i64 0, !373, i64 8, !373, i64 12, !374, i64 16, !374, i64 18, !375, i64 24, !373, i64 40, !370, i64 48, !370, i64 56, !370, i64 64, !370, i64 72, !370, i64 80, !375, i64 88, !370, i64 104, !373, i64 112, !371, i64 116, !371, i64 119, !375, i64 120, !373, i64 136, !376, i64 144}
!370 = !{!"any pointer", !371, i64 0}
!371 = !{!"omnipotent char", !372, i64 0}
!372 = !{!"Simple C/C++ TBAA"}
!373 = !{!"int", !371, i64 0}
!374 = !{!"short", !371, i64 0}
!375 = !{!"__sbuf", !370, i64 0, !373, i64 8}
!376 = !{!"long long", !371, i64 0}
!377 = !DILocation(line: 349, column: 15, scope: !366)
!378 = !DILocation(line: 349, column: 20, scope: !366)
!379 = !DILocation(line: 350, column: 10, scope: !366)
!380 = !DILocation(line: 349, column: 38, scope: !366)
!381 = !{!369, !373, i64 40}
!382 = !DILocation(line: 349, column: 31, scope: !366)
!383 = !DILocation(line: 349, column: 59, scope: !366)
!384 = !DILocation(line: 349, column: 47, scope: !366)
!385 = !DILocation(line: 350, column: 23, scope: !366)
!386 = !DILocation(line: 350, column: 16, scope: !366)
!387 = !DILocation(line: 350, column: 18, scope: !366)
!388 = !{!369, !370, i64 0}
!389 = !DILocation(line: 350, column: 21, scope: !366)
!390 = !{!371, !371, i64 0}
!391 = !DILocation(line: 350, column: 3, scope: !366)
!392 = !DILocation(line: 352, column: 11, scope: !366)
!393 = !DILocation(line: 352, column: 3, scope: !366)
!394 = !DILocation(line: 353, column: 1, scope: !75)
!395 = !DILocation(line: 114, column: 15, scope: !143)
!396 = !DILocation(line: 116, column: 20, scope: !143)
!397 = !DILocation(line: 116, column: 12, scope: !143)
!398 = !DILocation(line: 116, column: 57, scope: !143)
!399 = !DILocation(line: 116, column: 45, scope: !143)
!400 = !DILocation(line: 116, column: 5, scope: !143)
!401 = !DILocation(line: 40, column: 32, scope: !149)
!402 = !DILocation(line: 44, column: 11, scope: !403)
!403 = distinct !DILexicalBlock(scope: !149, file: !1, line: 44, column: 7)
!404 = !{!405, !373, i64 44}
!405 = !{!"", !406, i64 0, !373, i64 4, !373, i64 8, !373, i64 12, !373, i64 16, !370, i64 24, !373, i64 32, !373, i64 36, !373, i64 40, !373, i64 44, !373, i64 48, !370, i64 56, !370, i64 64, !370, i64 72, !370, i64 80, !370, i64 88}
!406 = !{!"float", !371, i64 0}
!407 = !DILocation(line: 44, column: 7, scope: !403)
!408 = !DILocation(line: 44, column: 7, scope: !149)
!409 = !DILocation(line: 45, column: 5, scope: !403)
!410 = !{!405, !370, i64 64}
!411 = !DILocation(line: 46, column: 11, scope: !412)
!412 = distinct !DILexicalBlock(scope: !149, file: !1, line: 46, column: 7)
!413 = !{!405, !373, i64 48}
!414 = !DILocation(line: 46, column: 7, scope: !412)
!415 = !DILocation(line: 46, column: 7, scope: !149)
!416 = !DILocation(line: 47, column: 5, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !1, line: 46, column: 20)
!418 = !{!405, !370, i64 72}
!419 = !DILocation(line: 48, column: 5, scope: !417)
!420 = !{!405, !370, i64 80}
!421 = !DILocation(line: 49, column: 3, scope: !417)
!422 = !DILocation(line: 50, column: 18, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 50, column: 3)
!424 = distinct !DILexicalBlock(scope: !149, file: !1, line: 50, column: 3)
!425 = !{!405, !373, i64 16}
!426 = !DILocation(line: 50, column: 13, scope: !423)
!427 = !DILocation(line: 51, column: 5, scope: !423)
!428 = !DILocation(line: 50, column: 3, scope: !424)
!429 = !{!405, !370, i64 88}
!430 = !{!370, !370, i64 0}
!431 = !DILocation(line: 52, column: 3, scope: !149)
!432 = !DILocation(line: 53, column: 3, scope: !149)
!433 = !{!405, !370, i64 56}
!434 = !DILocation(line: 54, column: 3, scope: !149)
!435 = !{!405, !370, i64 24}
!436 = !DILocation(line: 55, column: 1, scope: !149)
!437 = !DILocation(line: 154, column: 20, scope: !192)
!438 = !DILocation(line: 154, column: 28, scope: !192)
!439 = !DILocation(line: 154, column: 40, scope: !192)
!440 = !DILocation(line: 158, column: 11, scope: !192)
!441 = !DILocation(line: 156, column: 8, scope: !192)
!442 = !DILocation(line: 159, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !192, file: !1, line: 159, column: 7)
!444 = !DILocation(line: 159, column: 26, scope: !443)
!445 = !DILocation(line: 68, column: 8, scope: !315, inlinedAt: !446)
!446 = distinct !DILocation(line: 164, column: 5, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !1, line: 163, column: 12)
!448 = !DILocation(line: 159, column: 7, scope: !192)
!449 = !DILocation(line: 160, column: 5, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !1, line: 159, column: 36)
!451 = !DILocation(line: 84, column: 25, scope: !256, inlinedAt: !452)
!452 = distinct !DILocation(line: 161, column: 5, scope: !450)
!453 = !DILocation(line: 84, column: 33, scope: !256, inlinedAt: !452)
!454 = !DILocation(line: 84, column: 45, scope: !256, inlinedAt: !452)
!455 = !DILocation(line: 87, column: 16, scope: !256, inlinedAt: !452)
!456 = !DILocation(line: 87, column: 8, scope: !256, inlinedAt: !452)
!457 = !DILocation(line: 91, column: 9, scope: !256, inlinedAt: !452)
!458 = !DILocation(line: 86, column: 9, scope: !256, inlinedAt: !452)
!459 = !DILocation(line: 93, column: 6, scope: !256, inlinedAt: !452)
!460 = !DILocation(line: 89, column: 10, scope: !256, inlinedAt: !452)
!461 = !DILocation(line: 95, column: 8, scope: !462, inlinedAt: !452)
!462 = distinct !DILexicalBlock(scope: !256, file: !1, line: 95, column: 7)
!463 = !DILocation(line: 95, column: 7, scope: !256, inlinedAt: !452)
!464 = !DILocation(line: 96, column: 9, scope: !465, inlinedAt: !452)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 95, column: 26)
!466 = !{!373, !373, i64 0}
!467 = !DILocation(line: 97, column: 5, scope: !465, inlinedAt: !452)
!468 = !DILocation(line: 99, column: 10, scope: !469, inlinedAt: !452)
!469 = distinct !DILexicalBlock(scope: !256, file: !1, line: 99, column: 7)
!470 = !DILocation(line: 99, column: 7, scope: !256, inlinedAt: !452)
!471 = !DILocation(line: 100, column: 5, scope: !472, inlinedAt: !452)
!472 = distinct !DILexicalBlock(scope: !469, file: !1, line: 99, column: 19)
!473 = !DILocation(line: 101, column: 3, scope: !472, inlinedAt: !452)
!474 = !DILocation(line: 161, column: 5, scope: !450)
!475 = !DILocation(line: 88, column: 8, scope: !256, inlinedAt: !452)
!476 = !DILocation(line: 102, column: 14, scope: !477, inlinedAt: !452)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 102, column: 3)
!478 = distinct !DILexicalBlock(scope: !256, file: !1, line: 102, column: 3)
!479 = !DILocation(line: 102, column: 13, scope: !477, inlinedAt: !452)
!480 = !DILocation(line: 102, column: 3, scope: !478, inlinedAt: !452)
!481 = !DILocation(line: 103, column: 9, scope: !482, inlinedAt: !452)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 103, column: 9)
!483 = distinct !DILexicalBlock(scope: !477, file: !1, line: 102, column: 25)
!484 = !DILocation(line: 107, column: 22, scope: !483, inlinedAt: !452)
!485 = !DILocation(line: 103, column: 15, scope: !482, inlinedAt: !452)
!486 = !DILocation(line: 103, column: 18, scope: !482, inlinedAt: !452)
!487 = !DILocation(line: 103, column: 9, scope: !483, inlinedAt: !452)
!488 = !DILocation(line: 104, column: 7, scope: !489, inlinedAt: !452)
!489 = distinct !DILexicalBlock(scope: !482, file: !1, line: 103, column: 25)
!490 = !DILocation(line: 105, column: 13, scope: !489, inlinedAt: !452)
!491 = !DILocation(line: 106, column: 5, scope: !489, inlinedAt: !452)
!492 = !DILocation(line: 107, column: 5, scope: !483, inlinedAt: !452)
!493 = !DILocation(line: 109, column: 7, scope: !256, inlinedAt: !452)
!494 = !DILocation(line: 110, column: 1, scope: !256, inlinedAt: !452)
!495 = !DILocation(line: 163, column: 12, scope: !447)
!496 = !DILocation(line: 164, column: 17, scope: !447)
!497 = !DILocation(line: 163, column: 12, scope: !443)
!498 = !DILocation(line: 66, column: 31, scope: !315, inlinedAt: !446)
!499 = !DILocation(line: 66, column: 39, scope: !315, inlinedAt: !446)
!500 = !DILocation(line: 66, column: 51, scope: !315, inlinedAt: !446)
!501 = !DILocation(line: 68, column: 3, scope: !315, inlinedAt: !446)
!502 = !DILocation(line: 71, column: 3, scope: !315, inlinedAt: !446)
!503 = !DILocation(line: 72, column: 7, scope: !504, inlinedAt: !446)
!504 = distinct !DILexicalBlock(scope: !315, file: !1, line: 72, column: 7)
!505 = !DILocation(line: 72, column: 29, scope: !504, inlinedAt: !446)
!506 = !DILocation(line: 72, column: 7, scope: !315, inlinedAt: !446)
!507 = !DILocation(line: 73, column: 9, scope: !508, inlinedAt: !446)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 72, column: 35)
!509 = !DILocation(line: 74, column: 5, scope: !508, inlinedAt: !446)
!510 = !DILocation(line: 76, column: 3, scope: !315, inlinedAt: !446)
!511 = !DILocation(line: 69, column: 8, scope: !315, inlinedAt: !446)
!512 = !DILocation(line: 77, column: 17, scope: !513, inlinedAt: !446)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 77, column: 3)
!514 = distinct !DILexicalBlock(scope: !315, file: !1, line: 77, column: 3)
!515 = !DILocation(line: 77, column: 14, scope: !513, inlinedAt: !446)
!516 = !DILocation(line: 77, column: 3, scope: !514, inlinedAt: !446)
!517 = !DILocation(line: 164, column: 5, scope: !447)
!518 = !DILocation(line: 78, column: 5, scope: !519, inlinedAt: !446)
!519 = distinct !DILexicalBlock(scope: !513, file: !1, line: 77, column: 30)
!520 = !DILocation(line: 79, column: 5, scope: !519, inlinedAt: !446)
!521 = !DILocation(line: 80, column: 14, scope: !519, inlinedAt: !446)
!522 = !DILocation(line: 80, column: 6, scope: !519, inlinedAt: !446)
!523 = !DILocation(line: 80, column: 5, scope: !519, inlinedAt: !446)
!524 = !DILocation(line: 80, column: 13, scope: !519, inlinedAt: !446)
!525 = !DILocation(line: 82, column: 1, scope: !315, inlinedAt: !446)
!526 = !DILocation(line: 166, column: 35, scope: !447)
!527 = !DILocation(line: 166, column: 40, scope: !447)
!528 = !DILocation(line: 57, column: 31, scope: !327, inlinedAt: !529)
!529 = distinct !DILocation(line: 166, column: 5, scope: !447)
!530 = !DILocation(line: 57, column: 39, scope: !327, inlinedAt: !529)
!531 = !DILocation(line: 57, column: 49, scope: !327, inlinedAt: !529)
!532 = !DILocation(line: 61, column: 3, scope: !327, inlinedAt: !529)
!533 = !DILocation(line: 59, column: 7, scope: !327, inlinedAt: !529)
!534 = !DILocation(line: 62, column: 14, scope: !535, inlinedAt: !529)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 62, column: 3)
!536 = distinct !DILexicalBlock(scope: !327, file: !1, line: 62, column: 3)
!537 = !DILocation(line: 62, column: 3, scope: !536, inlinedAt: !529)
!538 = !DILocation(line: 166, column: 5, scope: !447)
!539 = !DILocation(line: 63, column: 24, scope: !535, inlinedAt: !529)
!540 = !DILocation(line: 63, column: 5, scope: !535, inlinedAt: !529)
!541 = !DILocation(line: 167, column: 1, scope: !192)
!542 = !DILocation(line: 169, column: 20, scope: !202)
!543 = !DILocation(line: 171, column: 3, scope: !202)
!544 = !DILocation(line: 172, column: 1, scope: !202)
!545 = !DILocation(line: 190, column: 20, scope: !207)
!546 = !DILocation(line: 190, column: 29, scope: !207)
!547 = !DILocation(line: 193, column: 16, scope: !207)
!548 = !DILocation(line: 195, column: 14, scope: !207)
!549 = !DILocation(line: 201, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !207, file: !1, line: 201, column: 7)
!551 = !DILocation(line: 201, column: 14, scope: !550)
!552 = !DILocation(line: 202, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !1, line: 201, column: 21)
!554 = !DILocation(line: 192, column: 14, scope: !207)
!555 = !DILocation(line: 201, column: 7, scope: !207)
!556 = !DILocation(line: 203, column: 5, scope: !553)
!557 = !DILocation(line: 204, column: 5, scope: !553)
!558 = !DILocation(line: 192, column: 17, scope: !207)
!559 = !DILocation(line: 205, column: 5, scope: !553)
!560 = !DILocation(line: 206, column: 5, scope: !553)
!561 = !DILocation(line: 194, column: 15, scope: !207)
!562 = !DILocation(line: 207, column: 5, scope: !553)
!563 = !DILocation(line: 210, column: 15, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !1, line: 210, column: 9)
!565 = !{!405, !373, i64 32}
!566 = !DILocation(line: 210, column: 11, scope: !564)
!567 = !DILocation(line: 210, column: 22, scope: !564)
!568 = !DILocation(line: 210, column: 30, scope: !564)
!569 = !{!405, !373, i64 8}
!570 = !DILocation(line: 210, column: 37, scope: !564)
!571 = !DILocation(line: 210, column: 34, scope: !564)
!572 = !DILocation(line: 210, column: 42, scope: !564)
!573 = !DILocation(line: 211, column: 8, scope: !564)
!574 = !DILocation(line: 211, column: 5, scope: !564)
!575 = !DILocation(line: 211, column: 10, scope: !564)
!576 = !DILocation(line: 211, column: 28, scope: !564)
!577 = !DILocation(line: 211, column: 25, scope: !564)
!578 = !DILocation(line: 211, column: 41, scope: !564)
!579 = !DILocation(line: 212, column: 8, scope: !564)
!580 = !{!405, !373, i64 36}
!581 = !DILocation(line: 212, column: 4, scope: !564)
!582 = !DILocation(line: 212, column: 15, scope: !564)
!583 = !DILocation(line: 213, column: 9, scope: !564)
!584 = !{!405, !373, i64 12}
!585 = !DILocation(line: 213, column: 5, scope: !564)
!586 = !DILocation(line: 213, column: 29, scope: !564)
!587 = !DILocation(line: 213, column: 31, scope: !564)
!588 = !DILocation(line: 213, column: 47, scope: !564)
!589 = !DILocation(line: 213, column: 44, scope: !564)
!590 = !DILocation(line: 210, column: 9, scope: !553)
!591 = !DILocation(line: 214, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !564, file: !1, line: 213, column: 61)
!593 = !DILocation(line: 214, column: 7, scope: !592)
!594 = !DILocation(line: 192, column: 21, scope: !207)
!595 = !DILocation(line: 215, column: 19, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 215, column: 7)
!597 = distinct !DILexicalBlock(scope: !592, file: !1, line: 215, column: 7)
!598 = !DILocation(line: 215, column: 18, scope: !596)
!599 = !DILocation(line: 215, column: 7, scope: !597)
!600 = !DILocation(line: 217, column: 7, scope: !592)
!601 = !DILocation(line: 216, column: 2, scope: !596)
!602 = !DILocation(line: 218, column: 5, scope: !592)
!603 = !DILocation(line: 220, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !564, file: !1, line: 219, column: 10)
!605 = !DILocation(line: 221, column: 7, scope: !604)
!606 = !DILocation(line: 222, column: 7, scope: !604)
!607 = !DILocation(line: 223, column: 7, scope: !604)
!608 = !DILocation(line: 224, column: 7, scope: !604)
!609 = !DILocation(line: 225, column: 17, scope: !610)
!610 = distinct !DILexicalBlock(scope: !604, file: !1, line: 225, column: 11)
!611 = !DILocation(line: 225, column: 13, scope: !610)
!612 = !DILocation(line: 225, column: 24, scope: !610)
!613 = !DILocation(line: 225, column: 32, scope: !610)
!614 = !DILocation(line: 225, column: 39, scope: !610)
!615 = !DILocation(line: 225, column: 36, scope: !610)
!616 = !DILocation(line: 225, column: 44, scope: !610)
!617 = !DILocation(line: 226, column: 10, scope: !610)
!618 = !DILocation(line: 226, column: 7, scope: !610)
!619 = !DILocation(line: 226, column: 12, scope: !610)
!620 = !DILocation(line: 226, column: 31, scope: !610)
!621 = !DILocation(line: 226, column: 28, scope: !610)
!622 = !DILocation(line: 226, column: 44, scope: !610)
!623 = !DILocation(line: 227, column: 10, scope: !610)
!624 = !DILocation(line: 227, column: 6, scope: !610)
!625 = !DILocation(line: 227, column: 17, scope: !610)
!626 = !DILocation(line: 228, column: 11, scope: !610)
!627 = !DILocation(line: 228, column: 7, scope: !610)
!628 = !DILocation(line: 228, column: 32, scope: !610)
!629 = !DILocation(line: 228, column: 34, scope: !610)
!630 = !DILocation(line: 228, column: 50, scope: !610)
!631 = !DILocation(line: 228, column: 47, scope: !610)
!632 = !DILocation(line: 225, column: 11, scope: !604)
!633 = !DILocation(line: 229, column: 10, scope: !610)
!634 = !DILocation(line: 229, column: 2, scope: !610)
!635 = !DILocation(line: 174, column: 30, scope: !347, inlinedAt: !636)
!636 = distinct !DILocation(line: 231, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 231, column: 6)
!638 = distinct !DILexicalBlock(scope: !610, file: !1, line: 230, column: 12)
!639 = !DILocation(line: 180, column: 8, scope: !347, inlinedAt: !636)
!640 = !DILocation(line: 176, column: 9, scope: !347, inlinedAt: !636)
!641 = !DILocation(line: 177, column: 8, scope: !347, inlinedAt: !636)
!642 = !DILocation(line: 181, column: 3, scope: !347, inlinedAt: !636)
!643 = !DILocation(line: 182, column: 12, scope: !347, inlinedAt: !636)
!644 = !DILocation(line: 178, column: 8, scope: !347, inlinedAt: !636)
!645 = !DILocation(line: 183, column: 3, scope: !347, inlinedAt: !636)
!646 = !DILocation(line: 185, column: 3, scope: !347, inlinedAt: !636)
!647 = !DILocation(line: 231, column: 6, scope: !637)
!648 = !DILocation(line: 231, column: 6, scope: !638)
!649 = !DILocation(line: 232, column: 4, scope: !637)
!650 = !DILocation(line: 234, column: 4, scope: !637)
!651 = !DILocation(line: 237, column: 19, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 237, column: 7)
!653 = distinct !DILexicalBlock(scope: !604, file: !1, line: 237, column: 7)
!654 = !DILocation(line: 237, column: 18, scope: !652)
!655 = !DILocation(line: 237, column: 7, scope: !653)
!656 = !DILocation(line: 239, column: 7, scope: !604)
!657 = !DILocation(line: 238, column: 4, scope: !652)
!658 = !DILocation(line: 241, column: 5, scope: !553)
!659 = !DILocation(line: 242, column: 5, scope: !553)
!660 = !DILocation(line: 243, column: 5, scope: !553)
!661 = !DILocation(line: 244, column: 3, scope: !553)
!662 = !DILocation(line: 248, column: 10, scope: !207)
!663 = !DILocation(line: 250, column: 3, scope: !207)
!664 = !DILocation(line: 112, column: 28, scope: !335)
!665 = !DILocation(line: 112, column: 43, scope: !335)
!666 = !DILocation(line: 112, column: 52, scope: !335)
!667 = !DILocation(line: 114, column: 16, scope: !335)
!668 = !DILocation(line: 115, column: 16, scope: !335)
!669 = !DILocation(line: 115, column: 8, scope: !335)
!670 = !DILocation(line: 116, column: 8, scope: !335)
!671 = !DILocation(line: 118, column: 7, scope: !335)
!672 = !DILocation(line: 119, column: 8, scope: !673)
!673 = distinct !DILexicalBlock(scope: !335, file: !1, line: 119, column: 7)
!674 = !DILocation(line: 119, column: 7, scope: !335)
!675 = !DILocation(line: 120, column: 8, scope: !676)
!676 = distinct !DILexicalBlock(scope: !335, file: !1, line: 120, column: 7)
!677 = !DILocation(line: 120, column: 35, scope: !676)
!678 = !DILocation(line: 121, column: 7, scope: !335)
!679 = !DILocation(line: 120, column: 7, scope: !335)
!680 = !DILocation(line: 121, column: 8, scope: !681)
!681 = distinct !DILexicalBlock(scope: !335, file: !1, line: 121, column: 7)
!682 = !DILocation(line: 121, column: 35, scope: !681)
!683 = !DILocation(line: 122, column: 7, scope: !335)
!684 = !DILocation(line: 122, column: 8, scope: !685)
!685 = distinct !DILexicalBlock(scope: !335, file: !1, line: 122, column: 7)
!686 = !DILocation(line: 122, column: 35, scope: !685)
!687 = !DILocation(line: 123, column: 7, scope: !335)
!688 = !DILocation(line: 123, column: 8, scope: !689)
!689 = distinct !DILexicalBlock(scope: !335, file: !1, line: 123, column: 7)
!690 = !DILocation(line: 123, column: 35, scope: !689)
!691 = !DILocation(line: 124, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !335, file: !1, line: 124, column: 7)
!693 = !DILocation(line: 142, column: 28, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 142, column: 5)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 142, column: 5)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 141, column: 8)
!697 = distinct !DILexicalBlock(scope: !335, file: !1, line: 139, column: 7)
!698 = !DILocation(line: 142, column: 23, scope: !694)
!699 = !DILocation(line: 142, column: 5, scope: !695)
!700 = !DILocation(line: 143, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !694, file: !1, line: 143, column: 11)
!702 = !DILocation(line: 124, column: 20, scope: !692)
!703 = !DILocation(line: 124, column: 26, scope: !692)
!704 = !DILocation(line: 124, column: 7, scope: !335)
!705 = !DILocation(line: 127, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !692, file: !1, line: 124, column: 31)
!707 = !DILocation(line: 128, column: 3, scope: !706)
!708 = !DILocation(line: 129, column: 31, scope: !709)
!709 = distinct !DILexicalBlock(scope: !335, file: !1, line: 129, column: 7)
!710 = !{!405, !373, i64 40}
!711 = !DILocation(line: 129, column: 26, scope: !709)
!712 = !DILocation(line: 129, column: 7, scope: !335)
!713 = !DILocation(line: 130, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !1, line: 129, column: 41)
!715 = !DILocation(line: 131, column: 5, scope: !714)
!716 = !DILocation(line: 132, column: 5, scope: !714)
!717 = !DILocation(line: 133, column: 15, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !1, line: 133, column: 5)
!719 = !DILocation(line: 114, column: 14, scope: !335)
!720 = !DILocation(line: 133, column: 31, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !1, line: 133, column: 5)
!722 = !DILocation(line: 133, column: 26, scope: !721)
!723 = !DILocation(line: 133, column: 5, scope: !718)
!724 = !DILocation(line: 134, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !1, line: 133, column: 44)
!726 = !DILocation(line: 134, column: 22, scope: !725)
!727 = !DILocation(line: 135, column: 11, scope: !725)
!728 = !DILocation(line: 135, column: 7, scope: !725)
!729 = !DILocation(line: 135, column: 22, scope: !725)
!730 = !DILocation(line: 134, column: 11, scope: !725)
!731 = !DILocation(line: 137, column: 18, scope: !714)
!732 = !DILocation(line: 138, column: 3, scope: !714)
!733 = !DILocation(line: 139, column: 7, scope: !697)
!734 = !DILocation(line: 139, column: 7, scope: !335)
!735 = !DILocation(line: 140, column: 9, scope: !697)
!736 = !DILocation(line: 140, column: 15, scope: !697)
!737 = !DILocation(line: 140, column: 5, scope: !697)
!738 = !DILocation(line: 143, column: 11, scope: !694)
!739 = !DILocation(line: 144, column: 7, scope: !701)
!740 = !DILocation(line: 144, column: 2, scope: !701)
!741 = !DILocation(line: 146, column: 7, scope: !335)
!742 = !DILocation(line: 146, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !335, file: !1, line: 146, column: 7)
!744 = !DILocation(line: 146, column: 35, scope: !743)
!745 = !DILocation(line: 147, column: 7, scope: !335)
!746 = !DILocation(line: 147, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !335, file: !1, line: 147, column: 7)
!748 = !DILocation(line: 147, column: 35, scope: !747)
!749 = !DILocation(line: 149, column: 7, scope: !335)
!750 = !DILocation(line: 149, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !335, file: !1, line: 149, column: 7)
!752 = !DILocation(line: 149, column: 35, scope: !751)
!753 = !DILocation(line: 149, column: 30, scope: !751)
!754 = !DILocation(line: 151, column: 10, scope: !335)
!755 = !DILocation(line: 151, column: 3, scope: !335)
!756 = !DILocation(line: 152, column: 1, scope: !335)
!757 = !DILocation(line: 253, column: 17, scope: !219)
!758 = !DILocation(line: 253, column: 32, scope: !219)
!759 = !DILocation(line: 256, column: 19, scope: !219)
!760 = !DILocation(line: 259, column: 7, scope: !219)
!761 = !DILocation(line: 260, column: 11, scope: !219)
!762 = !DILocation(line: 256, column: 13, scope: !219)
!763 = !DILocation(line: 261, column: 8, scope: !764)
!764 = distinct !DILexicalBlock(scope: !219, file: !1, line: 261, column: 7)
!765 = !DILocation(line: 261, column: 7, scope: !219)
!766 = !DILocation(line: 262, column: 22, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !1, line: 261, column: 15)
!768 = !DILocation(line: 262, column: 47, scope: !767)
!769 = !DILocation(line: 262, column: 9, scope: !767)
!770 = !DILocation(line: 262, column: 16, scope: !767)
!771 = !DILocation(line: 263, column: 22, scope: !767)
!772 = !DILocation(line: 263, column: 28, scope: !767)
!773 = !DILocation(line: 263, column: 9, scope: !767)
!774 = !DILocation(line: 263, column: 16, scope: !767)
!775 = !DILocation(line: 265, column: 3, scope: !767)
!776 = !DILocation(line: 266, column: 3, scope: !219)
!777 = !DILocation(line: 268, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !219, file: !1, line: 268, column: 7)
!779 = !DILocation(line: 268, column: 7, scope: !219)
!780 = !DILocation(line: 269, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !1, line: 268, column: 32)
!782 = !DILocation(line: 270, column: 10, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 269, column: 16)
!784 = distinct !DILexicalBlock(scope: !781, file: !1, line: 269, column: 9)
!785 = !DILocation(line: 270, column: 66, scope: !783)
!786 = !DILocation(line: 270, column: 73, scope: !783)
!787 = !DILocation(line: 270, column: 2, scope: !783)
!788 = !DILocation(line: 271, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !783, file: !1, line: 271, column: 6)
!790 = !DILocation(line: 271, column: 6, scope: !783)
!791 = !DILocation(line: 272, column: 12, scope: !789)
!792 = !DILocation(line: 273, column: 5, scope: !789)
!793 = !DILocation(line: 273, column: 17, scope: !789)
!794 = !{!405, !406, i64 0}
!795 = !DILocation(line: 273, column: 13, scope: !789)
!796 = !DILocation(line: 272, column: 4, scope: !789)
!797 = !DILocation(line: 277, column: 7, scope: !219)
!798 = !DILocation(line: 278, column: 12, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 278, column: 10)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 277, column: 14)
!801 = distinct !DILexicalBlock(scope: !219, file: !1, line: 277, column: 7)
!802 = !DILocation(line: 278, column: 19, scope: !799)
!803 = !DILocation(line: 278, column: 41, scope: !799)
!804 = !DILocation(line: 278, column: 25, scope: !799)
!805 = !DILocation(line: 279, column: 15, scope: !799)
!806 = !DILocation(line: 279, column: 78, scope: !799)
!807 = !DILocation(line: 279, column: 74, scope: !799)
!808 = !DILocation(line: 279, column: 7, scope: !799)
!809 = !DILocation(line: 280, column: 12, scope: !800)
!810 = !DILocation(line: 281, column: 3, scope: !800)
!811 = !DILocation(line: 283, column: 16, scope: !219)
!812 = !DILocation(line: 283, column: 20, scope: !219)
!813 = !DILocation(line: 283, column: 24, scope: !219)
!814 = !DILocation(line: 283, column: 31, scope: !219)
!815 = !DILocation(line: 283, column: 38, scope: !219)
!816 = !DILocation(line: 256, column: 28, scope: !219)
!817 = !DILocation(line: 255, column: 15, scope: !219)
!818 = !DILocation(line: 284, column: 26, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 284, column: 3)
!820 = distinct !DILexicalBlock(scope: !219, file: !1, line: 284, column: 3)
!821 = !DILocation(line: 284, column: 21, scope: !819)
!822 = !DILocation(line: 284, column: 3, scope: !820)
!823 = !DILocation(line: 285, column: 27, scope: !819)
!824 = !DILocation(line: 285, column: 13, scope: !819)
!825 = !DILocation(line: 285, column: 19, scope: !819)
!826 = !DILocation(line: 285, column: 23, scope: !819)
!827 = !DILocation(line: 285, column: 37, scope: !819)
!828 = !DILocation(line: 286, column: 14, scope: !829)
!829 = distinct !DILexicalBlock(scope: !219, file: !1, line: 286, column: 7)
!830 = !{!405, !373, i64 4}
!831 = !DILocation(line: 286, column: 19, scope: !829)
!832 = !DILocation(line: 286, column: 28, scope: !829)
!833 = !DILocation(line: 286, column: 25, scope: !829)
!834 = !DILocation(line: 287, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !829, file: !1, line: 286, column: 36)
!836 = !DILocation(line: 288, column: 6, scope: !835)
!837 = !DILocation(line: 287, column: 5, scope: !835)
!838 = !DILocation(line: 289, column: 13, scope: !835)
!839 = !DILocation(line: 291, column: 10, scope: !835)
!840 = !DILocation(line: 291, column: 19, scope: !835)
!841 = !DILocation(line: 291, column: 27, scope: !835)
!842 = !DILocation(line: 291, column: 38, scope: !835)
!843 = !DILocation(line: 291, column: 49, scope: !835)
!844 = !DILocation(line: 291, column: 45, scope: !835)
!845 = !DILocation(line: 289, column: 5, scope: !835)
!846 = !DILocation(line: 292, column: 3, scope: !835)
!847 = !DILocation(line: 293, column: 20, scope: !848)
!848 = distinct !DILexicalBlock(scope: !219, file: !1, line: 293, column: 7)
!849 = !DILocation(line: 293, column: 13, scope: !848)
!850 = !DILocation(line: 293, column: 28, scope: !848)
!851 = !DILocation(line: 293, column: 23, scope: !848)
!852 = !DILocation(line: 293, column: 7, scope: !219)
!853 = !DILocation(line: 294, column: 5, scope: !854)
!854 = distinct !DILexicalBlock(scope: !848, file: !1, line: 293, column: 37)
!855 = !DILocation(line: 295, column: 23, scope: !854)
!856 = !DILocation(line: 295, column: 17, scope: !854)
!857 = !DILocation(line: 296, column: 3, scope: !854)
!858 = !DILocation(line: 297, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 297, column: 3)
!860 = distinct !DILexicalBlock(scope: !219, file: !1, line: 297, column: 3)
!861 = !DILocation(line: 297, column: 3, scope: !860)
!862 = !DILocation(line: 300, column: 16, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !1, line: 297, column: 28)
!864 = !DILocation(line: 308, column: 18, scope: !863)
!865 = !DILocation(line: 303, column: 18, scope: !863)
!866 = !DILocation(line: 311, column: 9, scope: !863)
!867 = !DILocation(line: 298, column: 11, scope: !863)
!868 = !DILocation(line: 298, column: 15, scope: !863)
!869 = !DILocation(line: 298, column: 18, scope: !863)
!870 = !DILocation(line: 300, column: 24, scope: !863)
!871 = !{!872, !873, i64 8}
!872 = !{!"", !406, i64 0, !873, i64 8, !873, i64 16, !406, i64 24}
!873 = !{!"double", !371, i64 0}
!874 = !DILocation(line: 300, column: 12, scope: !863)
!875 = !DILocation(line: 257, column: 13, scope: !219)
!876 = !DILocation(line: 300, column: 10, scope: !863)
!877 = !{!406, !406, i64 0}
!878 = !DILocation(line: 301, column: 19, scope: !879)
!879 = distinct !DILexicalBlock(scope: !863, file: !1, line: 301, column: 8)
!880 = !DILocation(line: 301, column: 23, scope: !879)
!881 = !DILocation(line: 301, column: 14, scope: !879)
!882 = !DILocation(line: 301, column: 13, scope: !879)
!883 = !DILocation(line: 301, column: 8, scope: !879)
!884 = !DILocation(line: 301, column: 27, scope: !879)
!885 = !DILocation(line: 301, column: 8, scope: !863)
!886 = !DILocation(line: 302, column: 11, scope: !879)
!887 = !DILocation(line: 302, column: 7, scope: !879)
!888 = !DILocation(line: 303, column: 15, scope: !863)
!889 = !DILocation(line: 304, column: 23, scope: !863)
!890 = !DILocation(line: 304, column: 9, scope: !863)
!891 = !DILocation(line: 304, column: 17, scope: !863)
!892 = !DILocation(line: 304, column: 21, scope: !863)
!893 = !DILocation(line: 307, column: 24, scope: !863)
!894 = !{!872, !873, i64 16}
!895 = !DILocation(line: 307, column: 12, scope: !863)
!896 = !DILocation(line: 257, column: 18, scope: !219)
!897 = !DILocation(line: 307, column: 10, scope: !863)
!898 = !DILocation(line: 308, column: 15, scope: !863)
!899 = !DILocation(line: 309, column: 24, scope: !863)
!900 = !DILocation(line: 309, column: 17, scope: !863)
!901 = !DILocation(line: 309, column: 22, scope: !863)
!902 = !DILocation(line: 311, column: 15, scope: !863)
!903 = !DILocation(line: 309, column: 9, scope: !863)
!904 = !DILocation(line: 311, column: 18, scope: !863)
!905 = !DILocation(line: 297, column: 18, scope: !859)
!906 = !DILocation(line: 313, column: 11, scope: !239)
!907 = !DILocation(line: 313, column: 7, scope: !239)
!908 = !DILocation(line: 313, column: 7, scope: !219)
!909 = !DILocation(line: 314, column: 15, scope: !910)
!910 = distinct !DILexicalBlock(scope: !238, file: !1, line: 314, column: 9)
!911 = !DILocation(line: 314, column: 33, scope: !910)
!912 = !DILocation(line: 314, column: 28, scope: !910)
!913 = !DILocation(line: 314, column: 9, scope: !238)
!914 = !DILocation(line: 315, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !1, line: 314, column: 42)
!916 = !DILocation(line: 316, column: 7, scope: !915)
!917 = !DILocation(line: 317, column: 25, scope: !915)
!918 = !DILocation(line: 317, column: 19, scope: !915)
!919 = !DILocation(line: 318, column: 5, scope: !915)
!920 = !DILocation(line: 319, column: 5, scope: !235)
!921 = !DILocation(line: 319, column: 5, scope: !236)
!922 = !DILocation(line: 320, column: 11, scope: !238)
!923 = !DILocation(line: 320, column: 15, scope: !238)
!924 = !DILocation(line: 320, column: 9, scope: !238)
!925 = !DILocation(line: 256, column: 23, scope: !219)
!926 = !DILocation(line: 255, column: 13, scope: !219)
!927 = !DILocation(line: 321, column: 5, scope: !246)
!928 = !DILocation(line: 319, column: 5, scope: !234)
!929 = !DILocation(line: 321, column: 5, scope: !245)
!930 = !DILocation(line: 321, column: 5, scope: !244)
!931 = !DILocation(line: 322, column: 15, scope: !238)
!932 = !DILocation(line: 322, column: 9, scope: !238)
!933 = !DILocation(line: 323, column: 3, scope: !238)
!934 = !DILocation(line: 324, column: 26, scope: !254)
!935 = !DILocation(line: 324, column: 21, scope: !254)
!936 = !DILocation(line: 324, column: 3, scope: !255)
!937 = !DILocation(line: 332, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !219, file: !1, line: 332, column: 7)
!939 = !DILocation(line: 325, column: 22, scope: !940)
!940 = distinct !DILexicalBlock(scope: !253, file: !1, line: 325, column: 9)
!941 = !DILocation(line: 325, column: 36, scope: !940)
!942 = !DILocation(line: 326, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !1, line: 325, column: 52)
!944 = !DILocation(line: 329, column: 5, scope: !249)
!945 = !DILocation(line: 330, column: 9, scope: !253)
!946 = !DILocation(line: 325, column: 15, scope: !940)
!947 = !DILocation(line: 325, column: 18, scope: !940)
!948 = !DILocation(line: 325, column: 32, scope: !940)
!949 = !DILocation(line: 325, column: 31, scope: !940)
!950 = !DILocation(line: 325, column: 9, scope: !253)
!951 = !DILocation(line: 327, column: 32, scope: !943)
!952 = !DILocation(line: 327, column: 28, scope: !943)
!953 = !DILocation(line: 327, column: 11, scope: !943)
!954 = !DILocation(line: 327, column: 7, scope: !943)
!955 = !DILocation(line: 327, column: 26, scope: !943)
!956 = !DILocation(line: 328, column: 5, scope: !943)
!957 = !DILocation(line: 329, column: 5, scope: !250)
!958 = !DILocation(line: 329, column: 5, scope: !251)
!959 = !DILocation(line: 330, column: 15, scope: !253)
!960 = !DILocation(line: 332, column: 7, scope: !219)
!961 = !DILocation(line: 333, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !938, file: !1, line: 332, column: 13)
!963 = !DILocation(line: 334, column: 15, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !1, line: 333, column: 16)
!965 = distinct !DILexicalBlock(scope: !962, file: !1, line: 333, column: 9)
!966 = !DILocation(line: 335, column: 8, scope: !964)
!967 = !DILocation(line: 335, column: 15, scope: !964)
!968 = !DILocation(line: 334, column: 7, scope: !964)
!969 = !DILocation(line: 336, column: 15, scope: !964)
!970 = !DILocation(line: 337, column: 8, scope: !964)
!971 = !DILocation(line: 337, column: 20, scope: !964)
!972 = !DILocation(line: 337, column: 16, scope: !964)
!973 = !DILocation(line: 336, column: 7, scope: !964)
!974 = !DILocation(line: 338, column: 5, scope: !964)
!975 = !DILocation(line: 339, column: 7, scope: !965)
!976 = !DILocation(line: 344, column: 1, scope: !219)
