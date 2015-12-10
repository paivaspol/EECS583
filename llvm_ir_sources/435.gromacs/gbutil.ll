; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gbutil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [26 x i8] c"Generating configuration\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !280), !dbg !281
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !280), !dbg !282
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !283
  %2 = load i32* %1, align 4, !dbg !285, !tbaa !286
  %3 = add nsw i32 %2, -1, !dbg !285
  store i32 %3, i32* %1, align 4, !dbg !285, !tbaa !286
  %4 = icmp sgt i32 %2, 0, !dbg !295
  br i1 %4, label %._crit_edge, label %5, !dbg !296

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !297
  br label %10, !dbg !296

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !298
  %7 = load i32* %6, align 4, !dbg !298, !tbaa !299
  %8 = icmp sle i32 %2, %7, !dbg !300
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !301
  %or.cond = or i1 %9, %8, !dbg !302
  br i1 %or.cond, label %15, label %10, !dbg !302

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !297
  %11 = trunc i32 %_c to i8, !dbg !303
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !304
  %13 = load i8** %12, align 8, !dbg !305, !tbaa !306
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !305
  store i8* %14, i8** %12, align 8, !dbg !305, !tbaa !306
  store i8 %11, i8* %13, align 1, !dbg !307, !tbaa !308
  br label %17, !dbg !309

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !310
  br label %17, !dbg !311

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !312
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !280), !dbg !313
  %1 = icmp sgt i32 %__signo, 32, !dbg !314
  br i1 %1, label %5, label %2, !dbg !315

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !316
  %4 = shl i32 1, %3, !dbg !317
  br label %5, !dbg !315

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !315
  ret i32 %6, !dbg !318
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @distance_to_z(float* nocapture readonly %x) #4 {
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !89, metadata !280), !dbg !319
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !245, metadata !280), !dbg !320
  %1 = bitcast float* %x to <2 x float>*, !dbg !322
  %2 = load <2 x float>* %1, align 4, !dbg !322, !tbaa !323
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !245, metadata !280), !dbg !325
  %3 = fmul <2 x float> %2, %2, !dbg !327
  %4 = extractelement <2 x float> %3, i32 0, !dbg !328
  %5 = extractelement <2 x float> %3, i32 1, !dbg !328
  %6 = fadd float %4, %5, !dbg !328
  ret float %6, !dbg !329
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %alfa, float %beta, float %gamma) #5 {
  tail call void @llvm.dbg.value(metadata i32 %natom, i64 0, metadata !97, metadata !280), !dbg !330
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !98, metadata !280), !dbg !331
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !99, metadata !280), !dbg !332
  tail call void @llvm.dbg.value(metadata float %alfa, i64 0, metadata !100, metadata !280), !dbg !333
  tail call void @llvm.dbg.value(metadata float %beta, i64 0, metadata !101, metadata !280), !dbg !334
  tail call void @llvm.dbg.value(metadata float %gamma, i64 0, metadata !102, metadata !280), !dbg !335
  %1 = icmp eq [3 x float]* %x, null, !dbg !336
  br i1 %1, label %3, label %2, !dbg !338

; <label>:2                                       ; preds = %0
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %x, float %alfa, float %beta, float %gamma) #9, !dbg !339
  br label %3, !dbg !339

; <label>:3                                       ; preds = %0, %2
  %4 = icmp eq [3 x float]* %v, null, !dbg !340
  br i1 %4, label %6, label %5, !dbg !342

; <label>:5                                       ; preds = %3
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %v, float %alfa, float %beta, float %gamma) #9, !dbg !343
  br label %6, !dbg !343

; <label>:6                                       ; preds = %3, %5
  ret void, !dbg !344
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @low_rotate_conf(i32 %natom, [3 x float]* nocapture %x, float %alfa, float %beta, float %gamma) #5 {
  tail call void @llvm.dbg.value(metadata i32 %natom, i64 0, metadata !250, metadata !280), !dbg !345
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !251, metadata !280), !dbg !346
  tail call void @llvm.dbg.value(metadata float %alfa, i64 0, metadata !252, metadata !280), !dbg !347
  tail call void @llvm.dbg.value(metadata float %beta, i64 0, metadata !253, metadata !280), !dbg !348
  tail call void @llvm.dbg.value(metadata float %gamma, i64 0, metadata !254, metadata !280), !dbg !349
  tail call void @llvm.dbg.declare(metadata [3 x float]* undef, metadata !256, metadata !280), !dbg !350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !255, metadata !280), !dbg !351
  %1 = icmp sgt i32 %natom, 0, !dbg !352
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !355

.lr.ph:                                           ; preds = %0
  %2 = fpext float %alfa to double, !dbg !356
  %3 = tail call double @cos(double %2) #10, !dbg !358
  %4 = tail call double @sin(double %2) #10, !dbg !359
  %5 = fpext float %beta to double, !dbg !360
  %6 = tail call double @cos(double %5) #10, !dbg !361
  %7 = tail call double @sin(double %5) #10, !dbg !362
  %8 = fpext float %gamma to double, !dbg !363
  %9 = tail call double @cos(double %8) #10, !dbg !364
  %10 = tail call double @sin(double %8) #10, !dbg !365
  %11 = add i32 %natom, -1, !dbg !355
  br label %12, !dbg !355

; <label>:12                                      ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %13 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, !dbg !366
  %14 = getelementptr inbounds [3 x float]* %13, i64 0, i64 0, !dbg !366
  tail call void @llvm.dbg.value(metadata float* %14, i64 0, metadata !263, metadata !280), !dbg !367
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !264, metadata !280), !dbg !369
  %15 = getelementptr inbounds [3 x float]* %13, i64 0, i64 0, !dbg !370
  %16 = load float* %15, align 4, !dbg !370, !tbaa !323
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !371
  %18 = load float* %17, align 4, !dbg !371, !tbaa !323
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !372
  %20 = load float* %19, align 4, !dbg !372, !tbaa !323
  %21 = fpext float %18 to double, !dbg !373
  %22 = fmul double %21, %3, !dbg !374
  %23 = fpext float %20 to double, !dbg !375
  %24 = fmul double %23, %4, !dbg !376
  %25 = fadd double %22, %24, !dbg !377
  %26 = fptrunc double %25 to float, !dbg !373
  %27 = fmul double %23, %3, !dbg !378
  %28 = fmul double %21, %4, !dbg !379
  %29 = fsub double %27, %28, !dbg !380
  %30 = fptrunc double %29 to float, !dbg !381
  tail call void @llvm.dbg.value(metadata float* %14, i64 0, metadata !263, metadata !280), !dbg !382
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !264, metadata !280), !dbg !384
  %31 = fpext float %16 to double, !dbg !385
  %32 = fmul double %31, %6, !dbg !386
  %33 = fpext float %30 to double, !dbg !387
  %34 = fmul double %33, %7, !dbg !388
  %35 = fsub double %32, %34, !dbg !389
  %36 = fptrunc double %35 to float, !dbg !385
  %37 = fmul double %6, %33, !dbg !390
  %38 = fmul double %31, %7, !dbg !391
  %39 = fadd double %37, %38, !dbg !392
  %40 = fptrunc double %39 to float, !dbg !393
  tail call void @llvm.dbg.value(metadata float* %14, i64 0, metadata !263, metadata !280), !dbg !394
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !264, metadata !280), !dbg !396
  %41 = fpext float %36 to double, !dbg !397
  %42 = fmul double %41, %9, !dbg !398
  %43 = fpext float %26 to double, !dbg !399
  %44 = fmul double %43, %10, !dbg !400
  %45 = fadd double %42, %44, !dbg !401
  %46 = fptrunc double %45 to float, !dbg !397
  store float %46, float* %14, align 4, !dbg !402, !tbaa !323
  %47 = fmul double %43, %9, !dbg !403
  %48 = fmul double %41, %10, !dbg !404
  %49 = fsub double %47, %48, !dbg !405
  %50 = fptrunc double %49 to float, !dbg !406
  store float %50, float* %17, align 4, !dbg !407, !tbaa !323
  store float %40, float* %19, align 4, !dbg !408, !tbaa !323
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !355
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !355
  %exitcond = icmp eq i32 %lftr.wideiv, %11, !dbg !355
  br i1 %exitcond, label %._crit_edge, label %12, !dbg !355

._crit_edge:                                      ; preds = %12, %0
  ret void, !dbg !409
}

; Function Attrs: nounwind optsize ssp uwtable
define void @orient(i32 %natom, [3 x float]* %x, [3 x float]* %v, float* nocapture %angle, [3 x float]* nocapture readnone %box) #5 {
  %dx.i = alloca [3 x float], align 4
  %origin = alloca [3 x float], align 4
  %origin38 = bitcast [3 x float]* %origin to i8*
  tail call void @llvm.dbg.value(metadata i32 %natom, i64 0, metadata !108, metadata !280), !dbg !410
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !109, metadata !280), !dbg !411
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !110, metadata !280), !dbg !412
  tail call void @llvm.dbg.value(metadata float* %angle, i64 0, metadata !111, metadata !280), !dbg !413
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !112, metadata !280), !dbg !414
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !280), !dbg !415
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !120, metadata !280), !dbg !416
  tail call void @llvm.dbg.declare(metadata [3 x float]* %origin, metadata !121, metadata !280), !dbg !417
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !123, metadata !280), !dbg !418
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !124, metadata !280), !dbg !419
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !125, metadata !280), !dbg !420
  %1 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !421
  %2 = getelementptr inbounds [3 x float]* %x, i64 1, i64 0, !dbg !422
  %3 = bitcast [3 x float]* %dx.i to i8*, !dbg !423
  call void @llvm.lifetime.start(i64 12, i8* %3), !dbg !423
  tail call void @llvm.dbg.value(metadata [3 x float]* null, i64 0, metadata !271, metadata !280) #7, !dbg !423
  %4 = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 0, !dbg !425
  call void @pbc_dx(float* %1, float* %2, float* %4) #8, !dbg !426
  call void @llvm.dbg.value(metadata float* %4, i64 0, metadata !275, metadata !280) #7, !dbg !427
  %5 = load float* %4, align 4, !dbg !429, !tbaa !323
  %6 = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 1, !dbg !430
  %7 = load float* %6, align 4, !dbg !430, !tbaa !323
  %8 = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 2, !dbg !431
  %9 = load float* %8, align 4, !dbg !431, !tbaa !323
  call void @llvm.lifetime.end(i64 12, i8* %3), !dbg !432
  call void @llvm.dbg.value(metadata float %15, i64 0, metadata !113, metadata !280), !dbg !433
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !116, metadata !280), !dbg !434
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !117, metadata !280), !dbg !435
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !116, metadata !280), !dbg !434
  call void @llvm.dbg.declare(metadata [3 x float]* %dx.i, metadata !272, metadata !280), !dbg !436
  call void @llvm.dbg.declare(metadata [3 x float]* %dx.i, metadata !272, metadata !280), !dbg !437
  %10 = icmp sgt i32 %natom, 0, !dbg !445
  br i1 %10, label %.preheader3.lr.ph, label %.preheader2, !dbg !446

.preheader3.lr.ph:                                ; preds = %0
  %11 = fmul float %5, %5, !dbg !447
  %12 = fmul float %7, %7, !dbg !448
  %13 = fadd float %11, %12, !dbg !449
  %14 = fmul float %9, %9, !dbg !450
  %15 = fadd float %13, %14, !dbg !451
  %16 = add i32 %natom, -1, !dbg !446
  br label %.lr.ph15, !dbg !446

.lr.ph15:                                         ; preds = %.preheader3.lr.ph, %._crit_edge16
  %indvars.iv44 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next45, %._crit_edge16 ]
  %longest.024 = phi float [ %15, %.preheader3.lr.ph ], [ %longest.2, %._crit_edge16 ]
  %max_j.023 = phi i32 [ 0, %.preheader3.lr.ph ], [ %max_j.2, %._crit_edge16 ]
  %max_i.022 = phi i32 [ 0, %.preheader3.lr.ph ], [ %max_i.2, %._crit_edge16 ]
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv44, i64 0, !dbg !452
  br label %18, !dbg !453

; <label>:18                                      ; preds = %18, %.lr.ph15
  %indvars.iv40 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next41, %18 ]
  %longest.114 = phi float [ %longest.024, %.lr.ph15 ], [ %longest.2, %18 ]
  %max_j.113 = phi i32 [ %max_j.023, %.lr.ph15 ], [ %max_j.2, %18 ]
  %max_i.112 = phi i32 [ %max_i.022, %.lr.ph15 ], [ %max_i.2, %18 ]
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv40, i64 0, !dbg !454
  call void @llvm.lifetime.start(i64 12, i8* %3), !dbg !455
  call void @llvm.dbg.value(metadata [3 x float]* null, i64 0, metadata !271, metadata !280) #7, !dbg !455
  call void @pbc_dx(float* %17, float* %19, float* %4) #8, !dbg !456
  call void @llvm.dbg.value(metadata float* %4, i64 0, metadata !275, metadata !280) #7, !dbg !457
  %20 = load float* %4, align 4, !dbg !459, !tbaa !323
  %21 = fmul float %20, %20, !dbg !460
  %22 = load float* %6, align 4, !dbg !461, !tbaa !323
  %23 = fmul float %22, %22, !dbg !462
  %24 = fadd float %21, %23, !dbg !463
  %25 = load float* %8, align 4, !dbg !464, !tbaa !323
  %26 = fmul float %25, %25, !dbg !465
  %27 = fadd float %24, %26, !dbg !466
  call void @llvm.lifetime.end(i64 12, i8* %3), !dbg !467
  call void @llvm.dbg.value(metadata float %27, i64 0, metadata !114, metadata !280), !dbg !468
  %28 = fcmp ogt float %27, %longest.114, !dbg !469
  call void @llvm.dbg.value(metadata float %27, i64 0, metadata !113, metadata !280), !dbg !433
  %29 = trunc i64 %indvars.iv44 to i32, !dbg !471
  %max_i.2 = select i1 %28, i32 %29, i32 %max_i.112, !dbg !471
  %30 = trunc i64 %indvars.iv40 to i32, !dbg !471
  %max_j.2 = select i1 %28, i32 %30, i32 %max_j.113, !dbg !471
  %longest.2 = select i1 %28, float %27, float %longest.114, !dbg !471
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !dbg !453
  %exitcond43 = icmp eq i32 %30, %16, !dbg !453
  br i1 %exitcond43, label %._crit_edge16, label %18, !dbg !453

._crit_edge16:                                    ; preds = %18
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !446
  %exitcond47 = icmp eq i32 %29, %16, !dbg !446
  br i1 %exitcond47, label %.preheader2, label %.lr.ph15, !dbg !446

.preheader2:                                      ; preds = %._crit_edge16, %0
  %max_j.0.lcssa = phi i32 [ 0, %0 ], [ %max_j.2, %._crit_edge16 ]
  %max_i.0.lcssa = phi i32 [ 0, %0 ], [ %max_i.2, %._crit_edge16 ]
  %31 = sext i32 %max_i.0.lcssa to i64, !dbg !472
  %32 = getelementptr inbounds [3 x float]* %x, i64 %31, i64 2, !dbg !472
  %33 = load float* %32, align 4, !dbg !472, !tbaa !323
  %34 = sext i32 %max_j.0.lcssa to i64, !dbg !474
  %35 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 2, !dbg !474
  %36 = load float* %35, align 4, !dbg !474, !tbaa !323
  %37 = fcmp ogt float %33, %36, !dbg !475
  call void @llvm.dbg.value(metadata i32 %max_i.2, i64 0, metadata !122, metadata !280), !dbg !476
  call void @llvm.dbg.value(metadata i32 %max_j.2, i64 0, metadata !119, metadata !280), !dbg !415
  call void @llvm.dbg.value(metadata i32 %max_i.2, i64 0, metadata !120, metadata !280), !dbg !416
  %max_i.3 = select i1 %37, i32 %max_j.0.lcssa, i32 %max_i.0.lcssa, !dbg !477
  %38 = sext i32 %max_i.3 to i64
  %scevgep = getelementptr [3 x float]* %x, i64 %38, i64 0
  %scevgep39 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %origin38, i8* %scevgep39, i64 12, i32 4, i1 false), !dbg !478
  %max_j.3 = select i1 %37, i32 %max_i.0.lcssa, i32 %max_j.0.lcssa, !dbg !477
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge9, !dbg !481

.preheader.lr.ph:                                 ; preds = %.preheader2
  %39 = add i32 %natom, -1, !dbg !481
  br label %.preheader, !dbg !481

.preheader:                                       ; preds = %46, %.preheader.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next32, %46 ]
  br label %40, !dbg !483

; <label>:40                                      ; preds = %40, %.preheader
  %indvars.iv28 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next29, %40 ]
  %41 = getelementptr inbounds [3 x float]* %origin, i64 0, i64 %indvars.iv28, !dbg !486
  %42 = load float* %41, align 4, !dbg !486, !tbaa !323
  %43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv31, i64 %indvars.iv28, !dbg !488
  %44 = load float* %43, align 4, !dbg !489, !tbaa !323
  %45 = fsub float %44, %42, !dbg !489
  store float %45, float* %43, align 4, !dbg !489, !tbaa !323
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !483
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3, !dbg !483
  br i1 %exitcond30, label %46, label %40, !dbg !483

; <label>:46                                      ; preds = %40
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !481
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32, !dbg !481
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %39, !dbg !481
  br i1 %exitcond34, label %._crit_edge9, label %.preheader, !dbg !481

._crit_edge9:                                     ; preds = %46, %.preheader2
  %47 = sext i32 %max_j.3 to i64, !dbg !490
  %48 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 2, !dbg !490
  %49 = load float* %48, align 4, !dbg !490, !tbaa !323
  %50 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 1, !dbg !491
  %51 = load float* %50, align 4, !dbg !491, !tbaa !323
  %52 = fdiv float %49, %51, !dbg !492
  %53 = fpext float %52 to double, !dbg !490
  %54 = call double @atan(double %53) #10, !dbg !493
  %55 = fadd double %54, 0xBFF921FB54442D18, !dbg !494
  %56 = fptrunc double %55 to float, !dbg !493
  call void @llvm.dbg.value(metadata float %56, i64 0, metadata !123, metadata !280), !dbg !418
  %57 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 0, !dbg !495
  %58 = load float* %57, align 4, !dbg !495, !tbaa !323
  %59 = fdiv float %49, %58, !dbg !496
  %60 = fpext float %59 to double, !dbg !497
  %61 = call double @atan(double %60) #10, !dbg !498
  %62 = fsub double 0x3FF921FB54442D18, %61, !dbg !499
  %63 = fptrunc double %62 to float, !dbg !500
  call void @llvm.dbg.value(metadata float %63, i64 0, metadata !124, metadata !280), !dbg !419
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %56, float %63, float 0.000000e+00) #9, !dbg !501
  tail call void @llvm.dbg.value(metadata float* %1, i64 0, metadata !89, metadata !280), !dbg !502
  %64 = load float* %1, align 4, !dbg !504, !tbaa !323
  tail call void @llvm.dbg.value(metadata float %64, i64 0, metadata !245, metadata !280), !dbg !505
  %65 = getelementptr inbounds [3 x float]* %x, i64 0, i64 1, !dbg !507
  %66 = load float* %65, align 4, !dbg !507, !tbaa !323
  tail call void @llvm.dbg.value(metadata float %66, i64 0, metadata !245, metadata !280), !dbg !508
  call void @llvm.dbg.value(metadata float %70, i64 0, metadata !113, metadata !280), !dbg !433
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !280), !dbg !415
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !116, metadata !280), !dbg !434
  %67 = icmp sgt i32 %natom, 1, !dbg !510
  br i1 %67, label %.lr.ph, label %82, !dbg !513

.lr.ph:                                           ; preds = %._crit_edge9
  %68 = fmul float %64, %64, !dbg !514
  %69 = fmul float %66, %66, !dbg !515
  %70 = fadd float %68, %69, !dbg !516
  %71 = add i32 %natom, -1, !dbg !513
  br label %72, !dbg !513

; <label>:72                                      ; preds = %72, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %72 ]
  %longest.36 = phi float [ %70, %.lr.ph ], [ %longest.4, %72 ]
  %max_i.45 = phi i32 [ 0, %.lr.ph ], [ %max_i.5, %72 ]
  %73 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !517
  tail call void @llvm.dbg.value(metadata float* %73, i64 0, metadata !89, metadata !280), !dbg !519
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !245, metadata !280), !dbg !521
  %74 = bitcast float* %73 to <2 x float>*, !dbg !523
  %75 = load <2 x float>* %74, align 4, !dbg !523, !tbaa !323
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !245, metadata !280), !dbg !524
  %76 = fmul <2 x float> %75, %75, !dbg !526
  %77 = extractelement <2 x float> %76, i32 0, !dbg !527
  %78 = extractelement <2 x float> %76, i32 1, !dbg !527
  %79 = fadd float %77, %78, !dbg !527
  call void @llvm.dbg.value(metadata float %79, i64 0, metadata !115, metadata !280), !dbg !528
  %80 = fcmp ogt float %79, %longest.36, !dbg !529
  call void @llvm.dbg.value(metadata float %79, i64 0, metadata !113, metadata !280), !dbg !433
  %81 = trunc i64 %indvars.iv to i32, !dbg !531
  %max_i.5 = select i1 %80, i32 %81, i32 %max_i.45, !dbg !531
  %longest.4 = select i1 %80, float %79, float %longest.36, !dbg !531
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !513
  %exitcond = icmp eq i32 %81, %71, !dbg !513
  br i1 %exitcond, label %._crit_edge, label %72, !dbg !513

._crit_edge:                                      ; preds = %72
  %phitmp = sext i32 %max_i.5 to i64, !dbg !513
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 1
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !532, !tbaa !323
  %.phi.trans.insert48 = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 0
  %.pre49 = load float* %.phi.trans.insert48, align 4, !dbg !533, !tbaa !323
  br label %82, !dbg !513

; <label>:82                                      ; preds = %._crit_edge, %._crit_edge9
  %83 = phi float [ %.pre49, %._crit_edge ], [ %64, %._crit_edge9 ]
  %84 = phi float [ %.pre, %._crit_edge ], [ %66, %._crit_edge9 ]
  %85 = fdiv float %84, %83, !dbg !534
  %86 = fpext float %85 to double, !dbg !532
  %87 = call double @atan(double %86) #10, !dbg !535
  %88 = fadd double %87, 0xBFF921FB54442D18, !dbg !536
  %89 = fptrunc double %88 to float, !dbg !535
  call void @llvm.dbg.value(metadata float %89, i64 0, metadata !125, metadata !280), !dbg !420
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float 0.000000e+00, float 0.000000e+00, float %89) #9, !dbg !537
  store float %56, float* %angle, align 4, !dbg !538, !tbaa !323
  %90 = getelementptr inbounds float* %angle, i64 1, !dbg !539
  store float %63, float* %90, align 4, !dbg !540, !tbaa !323
  %91 = getelementptr inbounds float* %angle, i64 2, !dbg !541
  store float %89, float* %91, align 4, !dbg !542, !tbaa !323
  ret void, !dbg !543
}

; Function Attrs: nounwind optsize readnone
declare double @atan(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @genconf(%struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %v, float* nocapture %r, [3 x float]* nocapture %box, i32* nocapture readonly %n_box) #5 {
  %delta = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !204, metadata !280), !dbg !544
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !205, metadata !280), !dbg !545
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !206, metadata !280), !dbg !546
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !207, metadata !280), !dbg !547
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !208, metadata !280), !dbg !548
  tail call void @llvm.dbg.value(metadata i32* %n_box, i64 0, metadata !209, metadata !280), !dbg !549
  tail call void @llvm.dbg.declare(metadata [3 x float]* %delta, metadata !218, metadata !280), !dbg !550
  %1 = load i32* %n_box, align 4, !dbg !551, !tbaa !552
  %2 = getelementptr inbounds i32* %n_box, i64 1, !dbg !553
  %3 = load i32* %2, align 4, !dbg !553, !tbaa !552
  %4 = mul i32 %3, %1, !dbg !554
  %5 = getelementptr inbounds i32* %n_box, i64 2, !dbg !555
  %6 = load i32* %5, align 4, !dbg !555, !tbaa !552
  %7 = mul i32 %4, %6, !dbg !556
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !219, metadata !280), !dbg !557
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !558, !tbaa !559
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %8), !dbg !560
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !216, metadata !280), !dbg !561
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !280), !dbg !562
  %10 = load i32* %n_box, align 4, !dbg !563, !tbaa !552
  %11 = icmp sgt i32 %10, 0, !dbg !566
  br i1 %11, label %.lr.ph31, label %..preheader1_crit_edge50, !dbg !567

..preheader1_crit_edge50:                         ; preds = %0
  %.pre51 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !568
  br label %.preheader1, !dbg !567

.lr.ph31:                                         ; preds = %0
  %12 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !569
  %13 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 0, !dbg !571
  %14 = load i32* %2, align 4, !dbg !572, !tbaa !552
  %15 = icmp sgt i32 %14, 0, !dbg !575
  %16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !576
  %17 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 1, !dbg !578
  %18 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !579
  %19 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 2, !dbg !583
  %20 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !584
  %21 = icmp eq [3 x float]* %v, null, !dbg !585
  br label %31, !dbg !567

.preheader1:                                      ; preds = %._crit_edge26, %..preheader1_crit_edge50
  %.pre-phi52 = phi i32* [ %.pre51, %..preheader1_crit_edge50 ], [ %20, %._crit_edge26 ], !dbg !568
  %22 = icmp sgt i32 %7, 1, !dbg !590
  %23 = load i32* %.pre-phi52, align 4, !dbg !568, !tbaa !591
  %24 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !594
  %25 = load i32* %24, align 4, !dbg !594, !tbaa !595
  br i1 %22, label %.lr.ph9, label %._crit_edge10, !dbg !596

.lr.ph9:                                          ; preds = %.preheader1
  %26 = icmp sgt i32 %23, 0, !dbg !597
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !600
  %28 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !602
  %29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !603
  %30 = add i32 %7, -1, !dbg !596
  br label %81, !dbg !596

; <label>:31                                      ; preds = %.lr.ph31, %._crit_edge26
  %ix.029 = phi i32 [ 0, %.lr.ph31 ], [ %79, %._crit_edge26 ]
  %imol.028 = phi i32 [ 0, %.lr.ph31 ], [ %imol.1.lcssa, %._crit_edge26 ]
  %32 = sitofp i32 %ix.029 to float, !dbg !604
  %33 = load float* %12, align 4, !dbg !569, !tbaa !323
  %34 = fmul float %32, %33, !dbg !605
  store float %34, float* %13, align 4, !dbg !606, !tbaa !323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !212, metadata !280), !dbg !607
  br i1 %15, label %.lr.ph25, label %._crit_edge26, !dbg !608

.lr.ph25:                                         ; preds = %31
  %35 = load i32* %5, align 4, !dbg !609, !tbaa !552
  %36 = icmp sgt i32 %35, 0, !dbg !610
  br label %37, !dbg !608

; <label>:37                                      ; preds = %.lr.ph25, %76
  %iy.023 = phi i32 [ 0, %.lr.ph25 ], [ %77, %76 ]
  %imol.122 = phi i32 [ %imol.028, %.lr.ph25 ], [ %imol.2.lcssa, %76 ]
  %38 = sitofp i32 %iy.023 to float, !dbg !611
  %39 = load float* %16, align 4, !dbg !576, !tbaa !323
  %40 = fmul float %38, %39, !dbg !612
  store float %40, float* %17, align 4, !dbg !613, !tbaa !323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !213, metadata !280), !dbg !614
  br i1 %36, label %.lr.ph19, label %76, !dbg !615

.lr.ph19:                                         ; preds = %37
  %41 = load i32* %20, align 4, !dbg !584, !tbaa !591
  %42 = icmp sgt i32 %41, 0, !dbg !616
  %43 = sext i32 %imol.122 to i64
  %44 = sext i32 %41 to i64, !dbg !615
  %45 = icmp sgt i32 %35, 1
  %.op = add i32 %35, -1, !dbg !615
  %46 = select i1 %45, i32 %.op, i32 0
  br label %47, !dbg !615

; <label>:47                                      ; preds = %.lr.ph19, %._crit_edge15
  %indvars.iv48 = phi i64 [ %43, %.lr.ph19 ], [ %indvars.iv.next49, %._crit_edge15 ]
  %iz.017 = phi i32 [ 0, %.lr.ph19 ], [ %72, %._crit_edge15 ]
  %48 = sitofp i32 %iz.017 to float, !dbg !617
  %49 = load float* %18, align 4, !dbg !579, !tbaa !323
  %50 = fmul float %48, %49, !dbg !618
  store float %50, float* %19, align 4, !dbg !619, !tbaa !323
  %51 = mul nsw i64 %44, %indvars.iv48, !dbg !620
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !210, metadata !280), !dbg !621
  br i1 %42, label %.preheader3, label %._crit_edge15, !dbg !622

.preheader3:                                      ; preds = %47, %.loopexit
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.loopexit ], [ 0, %47 ]
  %52 = add nsw i64 %indvars.iv45, %51, !dbg !623
  br label %53, !dbg !626

; <label>:53                                      ; preds = %53, %.preheader3
  %indvars.iv38 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next39, %53 ]
  %54 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 %indvars.iv38, !dbg !627
  %55 = load float* %54, align 4, !dbg !627, !tbaa !323
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv45, i64 %indvars.iv38, !dbg !628
  %57 = load float* %56, align 4, !dbg !628, !tbaa !323
  %58 = fadd float %55, %57, !dbg !629
  %59 = getelementptr inbounds [3 x float]* %x, i64 %52, i64 %indvars.iv38, !dbg !630
  store float %58, float* %59, align 4, !dbg !631, !tbaa !323
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !626
  %exitcond40 = icmp eq i64 %indvars.iv.next39, 3, !dbg !626
  br i1 %exitcond40, label %60, label %53, !dbg !626

; <label>:60                                      ; preds = %53
  br i1 %21, label %.loopexit, label %.preheader2, !dbg !632

.preheader2:                                      ; preds = %60, %.preheader2
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.preheader2 ], [ 0, %60 ]
  %61 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv45, i64 %indvars.iv41, !dbg !633
  %62 = bitcast float* %61 to i32*, !dbg !633
  %63 = load i32* %62, align 4, !dbg !633, !tbaa !323
  %64 = getelementptr inbounds [3 x float]* %v, i64 %52, i64 %indvars.iv41, !dbg !636
  %65 = bitcast float* %64 to i32*, !dbg !637
  store i32 %63, i32* %65, align 4, !dbg !637, !tbaa !323
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !638
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 3, !dbg !638
  br i1 %exitcond43, label %.loopexit, label %.preheader2, !dbg !638

.loopexit:                                        ; preds = %.preheader2, %60
  %66 = getelementptr inbounds float* %r, i64 %indvars.iv45, !dbg !639
  %67 = bitcast float* %66 to i32*, !dbg !639
  %68 = load i32* %67, align 4, !dbg !639, !tbaa !323
  %69 = getelementptr inbounds float* %r, i64 %52, !dbg !640
  %70 = bitcast float* %69 to i32*, !dbg !641
  store i32 %68, i32* %70, align 4, !dbg !641, !tbaa !323
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !622
  %71 = icmp slt i64 %indvars.iv.next46, %44, !dbg !616
  br i1 %71, label %.preheader3, label %._crit_edge15, !dbg !622

._crit_edge15:                                    ; preds = %.loopexit, %47
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1, !dbg !615
  %72 = add nuw nsw i32 %iz.017, 1, !dbg !642
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !213, metadata !280), !dbg !614
  %73 = icmp slt i32 %72, %35, !dbg !610
  br i1 %73, label %47, label %._crit_edge20, !dbg !615

._crit_edge20:                                    ; preds = %._crit_edge15
  %74 = add i32 %imol.122, 1, !dbg !615
  %75 = add i32 %74, %46, !dbg !615
  br label %76, !dbg !615

; <label>:76                                      ; preds = %._crit_edge20, %37
  %imol.2.lcssa = phi i32 [ %75, %._crit_edge20 ], [ %imol.122, %37 ]
  %77 = add nuw nsw i32 %iy.023, 1, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !212, metadata !280), !dbg !607
  %78 = icmp slt i32 %77, %14, !dbg !575
  br i1 %78, label %37, label %._crit_edge26, !dbg !608

._crit_edge26:                                    ; preds = %76, %31
  %imol.1.lcssa = phi i32 [ %imol.028, %31 ], [ %imol.2.lcssa, %76 ]
  %79 = add nuw nsw i32 %ix.029, 1, !dbg !644
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !211, metadata !280), !dbg !562
  %80 = icmp slt i32 %79, %10, !dbg !566
  br i1 %80, label %31, label %.preheader1, !dbg !567

; <label>:81                                      ; preds = %._crit_edge, %.lr.ph9
  %i.18 = phi i32 [ 1, %.lr.ph9 ], [ %109, %._crit_edge ]
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !220, metadata !280), !dbg !645
  %82 = mul nsw i32 %25, %i.18, !dbg !646
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !224, metadata !280), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !215, metadata !280), !dbg !648
  br i1 %26, label %.lr.ph, label %._crit_edge, !dbg !649

.lr.ph:                                           ; preds = %81
  %83 = mul nsw i32 %23, %i.18, !dbg !650
  %84 = sext i32 %83 to i64, !dbg !649
  %85 = sext i32 %23 to i64, !dbg !649
  br label %86, !dbg !649

; <label>:86                                      ; preds = %.lr.ph, %86
  %indvars.iv35 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next36, %86 ]
  %87 = load i8**** %27, align 8, !dbg !600, !tbaa !651
  %88 = getelementptr inbounds i8*** %87, i64 %indvars.iv35, !dbg !652
  %89 = bitcast i8*** %88 to i64*, !dbg !652
  %90 = load i64* %89, align 8, !dbg !652, !tbaa !559
  %91 = add nsw i64 %indvars.iv35, %84, !dbg !653
  %92 = getelementptr inbounds i8*** %87, i64 %91, !dbg !654
  %93 = bitcast i8*** %92 to i64*, !dbg !655
  store i64 %90, i64* %93, align 8, !dbg !655, !tbaa !559
  %94 = load %struct.t_atom** %28, align 8, !dbg !602, !tbaa !656
  %95 = getelementptr inbounds %struct.t_atom* %94, i64 %indvars.iv35, i32 7, !dbg !657
  %96 = load i32* %95, align 4, !dbg !657, !tbaa !658
  %97 = add nsw i32 %96, %82, !dbg !660
  %98 = getelementptr inbounds %struct.t_atom* %94, i64 %91, i32 7, !dbg !661
  store i32 %97, i32* %98, align 4, !dbg !662, !tbaa !658
  %99 = load i32* %95, align 4, !dbg !663, !tbaa !658
  %100 = sext i32 %99 to i64, !dbg !664
  %101 = load i8**** %29, align 8, !dbg !603, !tbaa !665
  %102 = getelementptr inbounds i8*** %101, i64 %100, !dbg !664
  %103 = bitcast i8*** %102 to i64*, !dbg !664
  %104 = load i64* %103, align 8, !dbg !664, !tbaa !559
  %105 = sext i32 %97 to i64, !dbg !666
  %106 = getelementptr inbounds i8*** %101, i64 %105, !dbg !666
  %107 = bitcast i8*** %106 to i64*, !dbg !667
  store i64 %104, i64* %107, align 8, !dbg !667, !tbaa !559
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !649
  %108 = icmp slt i64 %indvars.iv.next36, %85, !dbg !597
  br i1 %108, label %86, label %._crit_edge, !dbg !649

._crit_edge:                                      ; preds = %86, %81
  %109 = add nuw nsw i32 %i.18, 1, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %109, i64 0, metadata !210, metadata !280), !dbg !621
  %exitcond37 = icmp eq i32 %i.18, %30, !dbg !596
  br i1 %exitcond37, label %._crit_edge10, label %81, !dbg !596

._crit_edge10:                                    ; preds = %._crit_edge, %.preheader1
  %110 = mul nsw i32 %23, %7, !dbg !669
  store i32 %110, i32* %.pre-phi52, align 4, !dbg !669, !tbaa !591
  %111 = mul nsw i32 %25, %7, !dbg !670
  store i32 %111, i32* %24, align 4, !dbg !670, !tbaa !595
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !210, metadata !280), !dbg !621
  br label %.preheader, !dbg !671

.preheader:                                       ; preds = %119, %._crit_edge10
  %indvars.iv32 = phi i64 [ 0, %._crit_edge10 ], [ %indvars.iv.next33, %119 ]
  br label %112, !dbg !673

; <label>:112                                     ; preds = %112, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %112 ]
  %113 = getelementptr inbounds i32* %n_box, i64 %indvars.iv, !dbg !676
  %114 = load i32* %113, align 4, !dbg !676, !tbaa !552
  %115 = sitofp i32 %114 to float, !dbg !676
  %116 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv32, !dbg !678
  %117 = load float* %116, align 4, !dbg !679, !tbaa !323
  %118 = fmul float %117, %115, !dbg !679
  store float %118, float* %116, align 4, !dbg !679, !tbaa !323
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !673
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !673
  br i1 %exitcond, label %119, label %112, !dbg !673

; <label>:119                                     ; preds = %112
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !671
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 3, !dbg !671
  br i1 %exitcond34, label %120, label %.preheader, !dbg !671

; <label>:120                                     ; preds = %119
  ret void, !dbg !680
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gen_box(i32 %NTB, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box, float* nocapture readonly %box_space, i32 %bCenter) #5 {
.preheader6:
  %x39 = bitcast [3 x float]* %x to i8*
  %xmin = alloca [3 x float], align 4
  %xmin40 = bitcast [3 x float]* %xmin to i8*
  %xmax = alloca [3 x float], align 4
  %xmax38 = bitcast [3 x float]* %xmax to i8*
  tail call void @llvm.dbg.value(metadata i32 %NTB, i64 0, metadata !229, metadata !280), !dbg !681
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !230, metadata !280), !dbg !682
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !231, metadata !280), !dbg !683
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !232, metadata !280), !dbg !684
  tail call void @llvm.dbg.value(metadata float* %box_space, i64 0, metadata !233, metadata !280), !dbg !685
  tail call void @llvm.dbg.value(metadata i32 %bCenter, i64 0, metadata !234, metadata !280), !dbg !686
  tail call void @llvm.dbg.declare(metadata [3 x float]* %xmin, metadata !237, metadata !280), !dbg !687
  tail call void @llvm.dbg.declare(metadata [3 x float]* %xmax, metadata !238, metadata !280), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !280), !dbg !689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax38, i8* %x39, i64 12, i32 4, i1 false), !dbg !690
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin40, i8* %x39, i64 12, i32 4, i1 false), !dbg !693
  %0 = icmp sgt i32 %natoms, 1, !dbg !694
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !280), !dbg !689
  br i1 %0, label %.preheader5.lr.ph, label %.preheader4, !dbg !697

.preheader5.lr.ph:                                ; preds = %.preheader6
  %1 = add i32 %natoms, -1, !dbg !697
  br label %.preheader5, !dbg !697

.preheader5:                                      ; preds = %12, %.preheader5.lr.ph
  %indvars.iv31 = phi i64 [ 1, %.preheader5.lr.ph ], [ %indvars.iv.next32, %12 ]
  br label %2, !dbg !698

; <label>:2                                       ; preds = %2, %.preheader5
  %indvars.iv28 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next29, %2 ]
  %3 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv28, !dbg !700
  %4 = load float* %3, align 4, !dbg !700, !tbaa !323
  %5 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv31, i64 %indvars.iv28, !dbg !700
  %6 = load float* %5, align 4, !dbg !700, !tbaa !323
  %7 = fcmp olt float %4, %6, !dbg !700
  %. = select i1 %7, float %4, float %6, !dbg !700
  store float %., float* %3, align 4, !dbg !703, !tbaa !323
  %8 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv28, !dbg !704
  %9 = load float* %8, align 4, !dbg !704, !tbaa !323
  %10 = fcmp ogt float %9, %6, !dbg !704
  %11 = select i1 %10, float %9, float %6, !dbg !704
  store float %11, float* %8, align 4, !dbg !705, !tbaa !323
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !698
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3, !dbg !698
  br i1 %exitcond30, label %12, label %2, !dbg !698

; <label>:12                                      ; preds = %2
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !280), !dbg !689
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32, !dbg !697
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %1, !dbg !697
  br i1 %exitcond34, label %.preheader4, label %.preheader5, !dbg !697

.preheader4:                                      ; preds = %.preheader6, %12, %.preheader4
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.preheader4 ], [ 0, %12 ], [ 0, %.preheader6 ]
  %13 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv25, !dbg !706
  %14 = load float* %13, align 4, !dbg !706, !tbaa !323
  %15 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv25, !dbg !709
  %16 = load float* %15, align 4, !dbg !709, !tbaa !323
  %17 = fsub float %14, %16, !dbg !710
  %18 = getelementptr inbounds float* %box_space, i64 %indvars.iv25, !dbg !711
  %19 = load float* %18, align 4, !dbg !711, !tbaa !323
  %20 = fmul float %19, 2.000000e+00, !dbg !712
  %21 = fadd float %17, %20, !dbg !713
  %22 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv25, i64 %indvars.iv25, !dbg !714
  store float %21, float* %22, align 4, !dbg !715, !tbaa !323
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !716
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3, !dbg !716
  br i1 %exitcond27, label %23, label %.preheader4, !dbg !716

; <label>:23                                      ; preds = %.preheader4
  %24 = icmp eq i32 %NTB, 1, !dbg !717
  br i1 %24, label %25, label %.loopexit3, !dbg !719

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !720
  %27 = load float* %26, align 4, !dbg !720, !tbaa !323
  tail call void @llvm.dbg.value(metadata float %27, i64 0, metadata !239, metadata !280), !dbg !722
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !280), !dbg !689
  tail call void @llvm.dbg.value(metadata float %27, i64 0, metadata !239, metadata !280), !dbg !722
  br label %._crit_edge, !dbg !723

._crit_edge:                                      ; preds = %25, %._crit_edge
  %indvars.iv.next2342 = phi i64 [ 1, %25 ], [ %indvars.iv.next23, %._crit_edge ]
  %max_box.0.41 = phi float [ %27, %25 ], [ %max_box.0., %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.next2342, i64 %indvars.iv.next2342
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !725, !tbaa !323
  %28 = fcmp ogt float %max_box.0.41, %.pre, !dbg !725
  %max_box.0. = select i1 %28, float %max_box.0.41, float %.pre, !dbg !725
  tail call void @llvm.dbg.value(metadata float %max_box.0., i64 0, metadata !239, metadata !280), !dbg !722
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv.next2342, 1, !dbg !723
  %exitcond24 = icmp eq i64 %indvars.iv.next23, 3, !dbg !723
  br i1 %exitcond24, label %.preheader2, label %._crit_edge, !dbg !723

.preheader2:                                      ; preds = %._crit_edge, %.preheader2
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %.preheader2 ], [ 0, %._crit_edge ]
  %29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv19, i64 %indvars.iv19, !dbg !727
  store float %max_box.0., float* %29, align 4, !dbg !730, !tbaa !323
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !731
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3, !dbg !731
  br i1 %exitcond21, label %.loopexit3, label %.preheader2, !dbg !731

.loopexit3:                                       ; preds = %.preheader2, %23
  %30 = icmp ne i32 %bCenter, 0, !dbg !732
  %31 = icmp sgt i32 %natoms, 0, !dbg !734
  %or.cond = and i1 %30, %31, !dbg !737
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit, !dbg !737

.preheader.lr.ph:                                 ; preds = %.loopexit3
  %32 = add i32 %natoms, -1, !dbg !738
  br label %.preheader, !dbg !738

.preheader:                                       ; preds = %49, %.preheader.lr.ph
  %indvars.iv16 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next17, %49 ]
  br label %33, !dbg !739

; <label>:33                                      ; preds = %33, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %33 ]
  %34 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !741
  %35 = load float* %34, align 4, !dbg !741, !tbaa !323
  %36 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv, !dbg !744
  %37 = load float* %36, align 4, !dbg !744, !tbaa !323
  %38 = fsub float %35, %37, !dbg !745
  %39 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv, !dbg !746
  %40 = load float* %39, align 4, !dbg !746, !tbaa !323
  %41 = fsub float %38, %40, !dbg !747
  %42 = fpext float %41 to double, !dbg !748
  %43 = fmul double %42, 5.000000e-01, !dbg !749
  %44 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv16, i64 %indvars.iv, !dbg !750
  %45 = load float* %44, align 4, !dbg !751, !tbaa !323
  %46 = fpext float %45 to double, !dbg !751
  %47 = fadd double %46, %43, !dbg !751
  %48 = fptrunc double %47 to float, !dbg !751
  store float %48, float* %44, align 4, !dbg !751, !tbaa !323
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !739
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !739
  br i1 %exitcond, label %49, label %33, !dbg !739

; <label>:49                                      ; preds = %33
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !738
  %lftr.wideiv = trunc i64 %indvars.iv16 to i32, !dbg !738
  %exitcond18 = icmp eq i32 %lftr.wideiv, %32, !dbg !738
  br i1 %exitcond18, label %.loopexit, label %.preheader, !dbg !738

.loopexit:                                        ; preds = %49, %.loopexit3
  ret void, !dbg !752
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #6

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #6

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!276, !277, !278}
!llvm.ident = !{!279}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gbutil.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !90, !103, !126, !225, !240, !246, !257, !265, !273}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "distance_to_z", scope: !1, file: !1, line: 49, type: !82, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: float (float*)* @distance_to_z, variables: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !87}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !85, line: 87, baseType: !86)
!85 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!86 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!88 = !{!89}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !81, file: !1, line: 49, type: !87)
!90 = !DISubprogram(name: "rotate_conf", scope: !1, file: !1, line: 78, type: !91, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, [3 x float]*, [3 x float]*, float, float, float)* @rotate_conf, variables: !96)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !10, !93, !93, !84, !84, !84}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !85, line: 101, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 96, align: 32, elements: !63)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natom", arg: 1, scope: !90, file: !1, line: 78, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !90, file: !1, line: 78, type: !93)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !90, file: !1, line: 78, type: !93)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alfa", arg: 4, scope: !90, file: !1, line: 78, type: !84)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 5, scope: !90, file: !1, line: 78, type: !84)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gamma", arg: 6, scope: !90, file: !1, line: 78, type: !84)
!103 = !DISubprogram(name: "orient", scope: !1, file: !1, line: 87, type: !104, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, [3 x float]*, [3 x float]*, float*, [3 x float]*)* @orient, variables: !107)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !10, !93, !93, !87, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natom", arg: 1, scope: !103, file: !1, line: 87, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !103, file: !1, line: 87, type: !93)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !103, file: !1, line: 87, type: !93)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "angle", arg: 4, scope: !103, file: !1, line: 87, type: !87)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !103, file: !1, line: 87, type: !106)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "longest", scope: !103, file: !1, line: 89, type: !84)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rij", scope: !103, file: !1, line: 89, type: !84)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rzi", scope: !103, file: !1, line: 89, type: !84)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !103, file: !1, line: 90, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !103, file: !1, line: 90, type: !10)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !103, file: !1, line: 90, type: !10)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_i", scope: !103, file: !1, line: 90, type: !10)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_j", scope: !103, file: !1, line: 90, type: !10)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "origin", scope: !103, file: !1, line: 91, type: !94)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !103, file: !1, line: 92, type: !10)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alfa", scope: !103, file: !1, line: 93, type: !84)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "beta", scope: !103, file: !1, line: 93, type: !84)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gamma", scope: !103, file: !1, line: 93, type: !84)
!126 = !DISubprogram(name: "genconf", scope: !1, file: !1, line: 150, type: !127, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*, [3 x float]*, [3 x float]*, float*, [3 x float]*, i32*)* @genconf, variables: !203)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !93, !93, !87, !106, !185}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !131, line: 94, baseType: !132)
!131 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 75, size: 10240, align: 64, elements: !133)
!133 = !{!134, !135, !154, !157, !158, !159, !160, !161, !162, !163, !178, !186}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !132, file: !131, line: 76, baseType: !10, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !132, file: !131, line: 77, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !131, line: 57, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 48, size: 320, align: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !146, !147, !148, !149, !153}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !138, file: !131, line: 49, baseType: !84, size: 32, align: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !138, file: !131, line: 49, baseType: !84, size: 32, align: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !138, file: !131, line: 50, baseType: !84, size: 32, align: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !138, file: !131, line: 50, baseType: !84, size: 32, align: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !131, line: 51, baseType: !145, size: 16, align: 16, offset: 128)
!145 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !138, file: !131, line: 52, baseType: !145, size: 16, align: 16, offset: 144)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !138, file: !131, line: 53, baseType: !10, size: 32, align: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !138, file: !131, line: 54, baseType: !10, size: 32, align: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !138, file: !131, line: 55, baseType: !150, size: 72, align: 8, offset: 224)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 72, align: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 9)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !138, file: !131, line: 56, baseType: !17, size: 8, align: 8, offset: 296)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !132, file: !131, line: 80, baseType: !155, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !132, file: !131, line: 82, baseType: !155, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !132, file: !131, line: 84, baseType: !155, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !132, file: !131, line: 86, baseType: !10, size: 32, align: 32, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !132, file: !131, line: 87, baseType: !155, size: 64, align: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !132, file: !131, line: 89, baseType: !10, size: 32, align: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !132, file: !131, line: 90, baseType: !155, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !132, file: !131, line: 91, baseType: !164, size: 8448, align: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !165, line: 52, baseType: !166)
!165 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!166 = !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 36, size: 8448, align: 64, elements: !167)
!167 = !{!168, !172, !173, !176, !177}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !166, file: !165, line: 37, baseType: !169, size: 8192, align: 32)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, align: 32, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !166, file: !165, line: 43, baseType: !10, size: 32, align: 32, offset: 8192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !166, file: !165, line: 44, baseType: !174, size: 64, align: 64, offset: 8256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !85, line: 73, baseType: !10)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !166, file: !165, line: 45, baseType: !10, size: 32, align: 32, offset: 8320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !166, file: !165, line: 46, baseType: !174, size: 64, align: 64, offset: 8384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !132, file: !131, line: 92, baseType: !179, size: 1152, align: 64, offset: 9024)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1152, align: 64, elements: !151)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !131, line: 73, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 70, size: 128, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !181, file: !131, line: 71, baseType: !10, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !181, file: !131, line: 72, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !132, file: !131, line: 93, baseType: !187, size: 64, align: 64, offset: 10176)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !131, line: 68, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 59, size: 416, align: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !198, !199, !200, !201}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !131, line: 60, baseType: !10, size: 32, align: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !189, file: !131, line: 61, baseType: !10, size: 32, align: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !189, file: !131, line: 62, baseType: !4, size: 8, align: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !189, file: !131, line: 63, baseType: !195, size: 48, align: 8, offset: 72)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 6)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !189, file: !131, line: 64, baseType: !84, size: 32, align: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !189, file: !131, line: 65, baseType: !84, size: 32, align: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !189, file: !131, line: 66, baseType: !10, size: 32, align: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !189, file: !131, line: 67, baseType: !202, size: 192, align: 32, offset: 224)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, align: 32, elements: !196)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !224}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !126, file: !1, line: 150, type: !129)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !126, file: !1, line: 150, type: !93)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !126, file: !1, line: 150, type: !93)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 4, scope: !126, file: !1, line: 150, type: !87)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !126, file: !1, line: 150, type: !106)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_box", arg: 6, scope: !126, file: !1, line: 150, type: !185)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !126, file: !1, line: 152, type: !10)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !126, file: !1, line: 152, type: !10)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iy", scope: !126, file: !1, line: 152, type: !10)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iz", scope: !126, file: !1, line: 152, type: !10)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !126, file: !1, line: 152, type: !10)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !126, file: !1, line: 152, type: !10)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imol", scope: !126, file: !1, line: 152, type: !10)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !126, file: !1, line: 152, type: !10)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta", scope: !126, file: !1, line: 153, type: !94)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmol", scope: !126, file: !1, line: 154, type: !10)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offs", scope: !221, file: !1, line: 181, type: !10)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 180, column: 26)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 180, column: 3)
!223 = distinct !DILexicalBlock(scope: !126, file: !1, line: 180, column: 3)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offsres", scope: !221, file: !1, line: 182, type: !10)
!225 = !DISubprogram(name: "gen_box", scope: !1, file: !1, line: 198, type: !226, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, [3 x float]*, [3 x float]*, float*, i32)* @gen_box, variables: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !10, !10, !93, !106, !87, !10}
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NTB", arg: 1, scope: !225, file: !1, line: 198, type: !10)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !225, file: !1, line: 198, type: !10)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !225, file: !1, line: 198, type: !93)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 4, scope: !225, file: !1, line: 198, type: !106)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box_space", arg: 5, scope: !225, file: !1, line: 198, type: !87)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bCenter", arg: 6, scope: !225, file: !1, line: 199, type: !10)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !225, file: !1, line: 201, type: !10)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !225, file: !1, line: 201, type: !10)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !225, file: !1, line: 202, type: !94)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !225, file: !1, line: 202, type: !94)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_box", scope: !225, file: !1, line: 203, type: !84)
!240 = !DISubprogram(name: "sqr", scope: !241, file: !241, line: 197, type: !242, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !244)
!241 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!242 = !DISubroutineType(types: !243)
!243 = !{!84, !84}
!244 = !{!245}
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !240, file: !241, line: 197, type: !84)
!246 = !DISubprogram(name: "low_rotate_conf", scope: !1, file: !1, line: 54, type: !247, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, [3 x float]*, float, float, float)* @low_rotate_conf, variables: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !10, !93, !84, !84, !84}
!249 = !{!250, !251, !252, !253, !254, !255, !256}
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natom", arg: 1, scope: !246, file: !1, line: 54, type: !10)
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !246, file: !1, line: 54, type: !93)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alfa", arg: 3, scope: !246, file: !1, line: 54, type: !84)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 4, scope: !246, file: !1, line: 54, type: !84)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gamma", arg: 5, scope: !246, file: !1, line: 54, type: !84)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !246, file: !1, line: 56, type: !10)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x_old", scope: !246, file: !1, line: 57, type: !94)
!257 = !DISubprogram(name: "copy_rvec", scope: !241, file: !241, line: 270, type: !258, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !262)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !260, !87}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!262 = !{!263, !264}
!263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !257, file: !241, line: 270, type: !260)
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !257, file: !241, line: 270, type: !87)
!265 = !DISubprogram(name: "dist2", scope: !1, file: !1, line: 40, type: !266, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, variables: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!84, !87, !87, !106}
!268 = !{!269, !270, !271, !272}
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !265, file: !1, line: 40, type: !87)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !265, file: !1, line: 40, type: !87)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 3, scope: !265, file: !1, line: 40, type: !106)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !265, file: !1, line: 42, type: !94)
!273 = !DISubprogram(name: "norm2", scope: !241, file: !241, line: 353, type: !82, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, variables: !274)
!274 = !{!275}
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !273, file: !241, line: 353, type: !87)
!276 = !{i32 2, !"Dwarf Version", i32 2}
!277 = !{i32 2, !"Debug Info Version", i32 700000003}
!278 = !{i32 1, !"PIC Level", i32 2}
!279 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!280 = !DIExpression()
!281 = !DILocation(line: 348, column: 40, scope: !6)
!282 = !DILocation(line: 348, column: 50, scope: !6)
!283 = !DILocation(line: 349, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!285 = !DILocation(line: 349, column: 6, scope: !284)
!286 = !{!287, !291, i64 12}
!287 = !{!"__sFILE", !288, i64 0, !291, i64 8, !291, i64 12, !292, i64 16, !292, i64 18, !293, i64 24, !291, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72, !288, i64 80, !293, i64 88, !288, i64 104, !291, i64 112, !289, i64 116, !289, i64 119, !293, i64 120, !291, i64 136, !294, i64 144}
!288 = !{!"any pointer", !289, i64 0}
!289 = !{!"omnipotent char", !290, i64 0}
!290 = !{!"Simple C/C++ TBAA"}
!291 = !{!"int", !289, i64 0}
!292 = !{!"short", !289, i64 0}
!293 = !{!"__sbuf", !288, i64 0, !291, i64 8}
!294 = !{!"long long", !289, i64 0}
!295 = !DILocation(line: 349, column: 15, scope: !284)
!296 = !DILocation(line: 349, column: 20, scope: !284)
!297 = !DILocation(line: 350, column: 10, scope: !284)
!298 = !DILocation(line: 349, column: 38, scope: !284)
!299 = !{!287, !291, i64 40}
!300 = !DILocation(line: 349, column: 31, scope: !284)
!301 = !DILocation(line: 349, column: 59, scope: !284)
!302 = !DILocation(line: 349, column: 47, scope: !284)
!303 = !DILocation(line: 350, column: 23, scope: !284)
!304 = !DILocation(line: 350, column: 16, scope: !284)
!305 = !DILocation(line: 350, column: 18, scope: !284)
!306 = !{!287, !288, i64 0}
!307 = !DILocation(line: 350, column: 21, scope: !284)
!308 = !{!289, !289, i64 0}
!309 = !DILocation(line: 350, column: 3, scope: !284)
!310 = !DILocation(line: 352, column: 11, scope: !284)
!311 = !DILocation(line: 352, column: 3, scope: !284)
!312 = !DILocation(line: 353, column: 1, scope: !6)
!313 = !DILocation(line: 114, column: 15, scope: !75)
!314 = !DILocation(line: 116, column: 20, scope: !75)
!315 = !DILocation(line: 116, column: 12, scope: !75)
!316 = !DILocation(line: 116, column: 57, scope: !75)
!317 = !DILocation(line: 116, column: 45, scope: !75)
!318 = !DILocation(line: 116, column: 5, scope: !75)
!319 = !DILocation(line: 49, column: 25, scope: !81)
!320 = !DILocation(line: 197, column: 29, scope: !240, inlinedAt: !321)
!321 = distinct !DILocation(line: 51, column: 11, scope: !81)
!322 = !DILocation(line: 51, column: 15, scope: !81)
!323 = !{!324, !324, i64 0}
!324 = !{!"float", !289, i64 0}
!325 = !DILocation(line: 197, column: 29, scope: !240, inlinedAt: !326)
!326 = distinct !DILocation(line: 51, column: 22, scope: !81)
!327 = !DILocation(line: 199, column: 12, scope: !240, inlinedAt: !321)
!328 = !DILocation(line: 51, column: 21, scope: !81)
!329 = !DILocation(line: 51, column: 3, scope: !81)
!330 = !DILocation(line: 78, column: 22, scope: !90)
!331 = !DILocation(line: 78, column: 34, scope: !90)
!332 = !DILocation(line: 78, column: 42, scope: !90)
!333 = !DILocation(line: 78, column: 49, scope: !90)
!334 = !DILocation(line: 78, column: 60, scope: !90)
!335 = !DILocation(line: 78, column: 70, scope: !90)
!336 = !DILocation(line: 80, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !90, file: !1, line: 80, column: 7)
!338 = !DILocation(line: 80, column: 7, scope: !90)
!339 = !DILocation(line: 81, column: 5, scope: !337)
!340 = !DILocation(line: 82, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !90, file: !1, line: 82, column: 7)
!342 = !DILocation(line: 82, column: 7, scope: !90)
!343 = !DILocation(line: 83, column: 5, scope: !341)
!344 = !DILocation(line: 84, column: 1, scope: !90)
!345 = !DILocation(line: 54, column: 33, scope: !246)
!346 = !DILocation(line: 54, column: 45, scope: !246)
!347 = !DILocation(line: 54, column: 52, scope: !246)
!348 = !DILocation(line: 54, column: 63, scope: !246)
!349 = !DILocation(line: 54, column: 73, scope: !246)
!350 = !DILocation(line: 57, column: 8, scope: !246)
!351 = !DILocation(line: 56, column: 8, scope: !246)
!352 = !DILocation(line: 59, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 59, column: 3)
!354 = distinct !DILexicalBlock(scope: !246, file: !1, line: 59, column: 3)
!355 = !DILocation(line: 59, column: 3, scope: !354)
!356 = !DILocation(line: 63, column: 28, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !1, line: 59, column: 27)
!358 = !DILocation(line: 63, column: 24, scope: !357)
!359 = !DILocation(line: 63, column: 44, scope: !357)
!360 = !DILocation(line: 67, column: 28, scope: !357)
!361 = !DILocation(line: 67, column: 24, scope: !357)
!362 = !DILocation(line: 67, column: 44, scope: !357)
!363 = !DILocation(line: 72, column: 28, scope: !357)
!364 = !DILocation(line: 72, column: 24, scope: !357)
!365 = !DILocation(line: 72, column: 45, scope: !357)
!366 = !DILocation(line: 60, column: 15, scope: !357)
!367 = !DILocation(line: 270, column: 41, scope: !257, inlinedAt: !368)
!368 = distinct !DILocation(line: 60, column: 5, scope: !357)
!369 = !DILocation(line: 270, column: 48, scope: !257, inlinedAt: !368)
!370 = !DILocation(line: 272, column: 9, scope: !257, inlinedAt: !368)
!371 = !DILocation(line: 273, column: 9, scope: !257, inlinedAt: !368)
!372 = !DILocation(line: 274, column: 9, scope: !257, inlinedAt: !368)
!373 = !DILocation(line: 63, column: 14, scope: !357)
!374 = !DILocation(line: 63, column: 23, scope: !357)
!375 = !DILocation(line: 63, column: 34, scope: !357)
!376 = !DILocation(line: 63, column: 43, scope: !357)
!377 = !DILocation(line: 63, column: 33, scope: !357)
!378 = !DILocation(line: 64, column: 23, scope: !357)
!379 = !DILocation(line: 64, column: 43, scope: !357)
!380 = !DILocation(line: 64, column: 33, scope: !357)
!381 = !DILocation(line: 64, column: 14, scope: !357)
!382 = !DILocation(line: 270, column: 41, scope: !257, inlinedAt: !383)
!383 = distinct !DILocation(line: 65, column: 5, scope: !357)
!384 = !DILocation(line: 270, column: 48, scope: !257, inlinedAt: !383)
!385 = !DILocation(line: 67, column: 14, scope: !357)
!386 = !DILocation(line: 67, column: 23, scope: !357)
!387 = !DILocation(line: 67, column: 34, scope: !357)
!388 = !DILocation(line: 67, column: 43, scope: !357)
!389 = !DILocation(line: 67, column: 33, scope: !357)
!390 = !DILocation(line: 69, column: 23, scope: !357)
!391 = !DILocation(line: 69, column: 43, scope: !357)
!392 = !DILocation(line: 69, column: 33, scope: !357)
!393 = !DILocation(line: 69, column: 14, scope: !357)
!394 = !DILocation(line: 270, column: 41, scope: !257, inlinedAt: !395)
!395 = distinct !DILocation(line: 70, column: 5, scope: !357)
!396 = !DILocation(line: 270, column: 48, scope: !257, inlinedAt: !395)
!397 = !DILocation(line: 72, column: 14, scope: !357)
!398 = !DILocation(line: 72, column: 23, scope: !357)
!399 = !DILocation(line: 72, column: 35, scope: !357)
!400 = !DILocation(line: 72, column: 44, scope: !357)
!401 = !DILocation(line: 72, column: 34, scope: !357)
!402 = !DILocation(line: 72, column: 13, scope: !357)
!403 = !DILocation(line: 73, column: 23, scope: !357)
!404 = !DILocation(line: 73, column: 44, scope: !357)
!405 = !DILocation(line: 73, column: 34, scope: !357)
!406 = !DILocation(line: 73, column: 14, scope: !357)
!407 = !DILocation(line: 73, column: 13, scope: !357)
!408 = !DILocation(line: 74, column: 13, scope: !357)
!409 = !DILocation(line: 76, column: 1, scope: !246)
!410 = !DILocation(line: 87, column: 17, scope: !103)
!411 = !DILocation(line: 87, column: 29, scope: !103)
!412 = !DILocation(line: 87, column: 37, scope: !103)
!413 = !DILocation(line: 87, column: 45, scope: !103)
!414 = !DILocation(line: 87, column: 58, scope: !103)
!415 = !DILocation(line: 90, column: 14, scope: !103)
!416 = !DILocation(line: 90, column: 22, scope: !103)
!417 = !DILocation(line: 91, column: 8, scope: !103)
!418 = !DILocation(line: 93, column: 8, scope: !103)
!419 = !DILocation(line: 93, column: 15, scope: !103)
!420 = !DILocation(line: 93, column: 22, scope: !103)
!421 = !DILocation(line: 96, column: 17, scope: !103)
!422 = !DILocation(line: 96, column: 22, scope: !103)
!423 = !DILocation(line: 40, column: 40, scope: !265, inlinedAt: !424)
!424 = distinct !DILocation(line: 96, column: 11, scope: !103)
!425 = !DILocation(line: 44, column: 14, scope: !265, inlinedAt: !424)
!426 = !DILocation(line: 44, column: 3, scope: !265, inlinedAt: !424)
!427 = !DILocation(line: 353, column: 31, scope: !273, inlinedAt: !428)
!428 = distinct !DILocation(line: 46, column: 10, scope: !265, inlinedAt: !424)
!429 = !DILocation(line: 355, column: 10, scope: !273, inlinedAt: !428)
!430 = !DILocation(line: 355, column: 22, scope: !273, inlinedAt: !428)
!431 = !DILocation(line: 355, column: 34, scope: !273, inlinedAt: !428)
!432 = !DILocation(line: 46, column: 3, scope: !265, inlinedAt: !424)
!433 = !DILocation(line: 89, column: 8, scope: !103)
!434 = !DILocation(line: 90, column: 8, scope: !103)
!435 = !DILocation(line: 90, column: 10, scope: !103)
!436 = !DILocation(line: 42, column: 8, scope: !265, inlinedAt: !424)
!437 = !DILocation(line: 42, column: 8, scope: !265, inlinedAt: !438)
!438 = distinct !DILocation(line: 101, column: 11, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 100, column: 29)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 100, column: 5)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 100, column: 5)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 99, column: 27)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 99, column: 3)
!444 = distinct !DILexicalBlock(scope: !103, file: !1, line: 99, column: 3)
!445 = !DILocation(line: 99, column: 14, scope: !443)
!446 = !DILocation(line: 99, column: 3, scope: !444)
!447 = !DILocation(line: 355, column: 15, scope: !273, inlinedAt: !428)
!448 = !DILocation(line: 355, column: 27, scope: !273, inlinedAt: !428)
!449 = !DILocation(line: 355, column: 21, scope: !273, inlinedAt: !428)
!450 = !DILocation(line: 355, column: 39, scope: !273, inlinedAt: !428)
!451 = !DILocation(line: 355, column: 33, scope: !273, inlinedAt: !428)
!452 = !DILocation(line: 101, column: 17, scope: !439)
!453 = !DILocation(line: 100, column: 5, scope: !441)
!454 = !DILocation(line: 101, column: 22, scope: !439)
!455 = !DILocation(line: 40, column: 40, scope: !265, inlinedAt: !438)
!456 = !DILocation(line: 44, column: 3, scope: !265, inlinedAt: !438)
!457 = !DILocation(line: 353, column: 31, scope: !273, inlinedAt: !458)
!458 = distinct !DILocation(line: 46, column: 10, scope: !265, inlinedAt: !438)
!459 = !DILocation(line: 355, column: 10, scope: !273, inlinedAt: !458)
!460 = !DILocation(line: 355, column: 15, scope: !273, inlinedAt: !458)
!461 = !DILocation(line: 355, column: 22, scope: !273, inlinedAt: !458)
!462 = !DILocation(line: 355, column: 27, scope: !273, inlinedAt: !458)
!463 = !DILocation(line: 355, column: 21, scope: !273, inlinedAt: !458)
!464 = !DILocation(line: 355, column: 34, scope: !273, inlinedAt: !458)
!465 = !DILocation(line: 355, column: 39, scope: !273, inlinedAt: !458)
!466 = !DILocation(line: 355, column: 33, scope: !273, inlinedAt: !458)
!467 = !DILocation(line: 46, column: 3, scope: !265, inlinedAt: !438)
!468 = !DILocation(line: 89, column: 16, scope: !103)
!469 = !DILocation(line: 102, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !439, file: !1, line: 102, column: 11)
!471 = !DILocation(line: 102, column: 11, scope: !439)
!472 = !DILocation(line: 110, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !103, file: !1, line: 110, column: 7)
!474 = !DILocation(line: 110, column: 19, scope: !473)
!475 = !DILocation(line: 110, column: 18, scope: !473)
!476 = !DILocation(line: 92, column: 8, scope: !103)
!477 = !DILocation(line: 110, column: 7, scope: !103)
!478 = !DILocation(line: 118, column: 14, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 117, column: 3)
!480 = distinct !DILexicalBlock(scope: !103, file: !1, line: 117, column: 3)
!481 = !DILocation(line: 119, column: 3, scope: !482)
!482 = distinct !DILexicalBlock(scope: !103, file: !1, line: 119, column: 3)
!483 = !DILocation(line: 120, column: 5, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 120, column: 5)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 119, column: 3)
!486 = !DILocation(line: 121, column: 16, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !1, line: 120, column: 5)
!488 = !DILocation(line: 121, column: 7, scope: !487)
!489 = !DILocation(line: 121, column: 14, scope: !487)
!490 = !DILocation(line: 128, column: 13, scope: !103)
!491 = !DILocation(line: 128, column: 26, scope: !103)
!492 = !DILocation(line: 128, column: 25, scope: !103)
!493 = !DILocation(line: 128, column: 8, scope: !103)
!494 = !DILocation(line: 128, column: 39, scope: !103)
!495 = !DILocation(line: 129, column: 33, scope: !103)
!496 = !DILocation(line: 129, column: 32, scope: !103)
!497 = !DILocation(line: 129, column: 20, scope: !103)
!498 = !DILocation(line: 129, column: 15, scope: !103)
!499 = !DILocation(line: 129, column: 14, scope: !103)
!500 = !DILocation(line: 129, column: 8, scope: !103)
!501 = !DILocation(line: 130, column: 3, scope: !103)
!502 = !DILocation(line: 49, column: 25, scope: !81, inlinedAt: !503)
!503 = distinct !DILocation(line: 133, column: 11, scope: !103)
!504 = !DILocation(line: 51, column: 15, scope: !81, inlinedAt: !503)
!505 = !DILocation(line: 197, column: 29, scope: !240, inlinedAt: !506)
!506 = distinct !DILocation(line: 51, column: 11, scope: !81, inlinedAt: !503)
!507 = !DILocation(line: 51, column: 26, scope: !81, inlinedAt: !503)
!508 = !DILocation(line: 197, column: 29, scope: !240, inlinedAt: !509)
!509 = distinct !DILocation(line: 51, column: 22, scope: !81, inlinedAt: !503)
!510 = !DILocation(line: 135, column: 14, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 135, column: 3)
!512 = distinct !DILexicalBlock(scope: !103, file: !1, line: 135, column: 3)
!513 = !DILocation(line: 135, column: 3, scope: !512)
!514 = !DILocation(line: 199, column: 12, scope: !240, inlinedAt: !506)
!515 = !DILocation(line: 199, column: 12, scope: !240, inlinedAt: !509)
!516 = !DILocation(line: 51, column: 21, scope: !81, inlinedAt: !503)
!517 = !DILocation(line: 136, column: 23, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !1, line: 135, column: 27)
!519 = !DILocation(line: 49, column: 25, scope: !81, inlinedAt: !520)
!520 = distinct !DILocation(line: 136, column: 9, scope: !518)
!521 = !DILocation(line: 197, column: 29, scope: !240, inlinedAt: !522)
!522 = distinct !DILocation(line: 51, column: 11, scope: !81, inlinedAt: !520)
!523 = !DILocation(line: 51, column: 15, scope: !81, inlinedAt: !520)
!524 = !DILocation(line: 197, column: 29, scope: !240, inlinedAt: !525)
!525 = distinct !DILocation(line: 51, column: 22, scope: !81, inlinedAt: !520)
!526 = !DILocation(line: 199, column: 12, scope: !240, inlinedAt: !522)
!527 = !DILocation(line: 51, column: 21, scope: !81, inlinedAt: !520)
!528 = !DILocation(line: 89, column: 20, scope: !103)
!529 = !DILocation(line: 137, column: 12, scope: !530)
!530 = distinct !DILexicalBlock(scope: !518, file: !1, line: 137, column: 9)
!531 = !DILocation(line: 137, column: 9, scope: !518)
!532 = !DILocation(line: 142, column: 14, scope: !103)
!533 = !DILocation(line: 142, column: 27, scope: !103)
!534 = !DILocation(line: 142, column: 26, scope: !103)
!535 = !DILocation(line: 142, column: 9, scope: !103)
!536 = !DILocation(line: 142, column: 40, scope: !103)
!537 = !DILocation(line: 143, column: 3, scope: !103)
!538 = !DILocation(line: 144, column: 11, scope: !103)
!539 = !DILocation(line: 145, column: 3, scope: !103)
!540 = !DILocation(line: 145, column: 11, scope: !103)
!541 = !DILocation(line: 146, column: 3, scope: !103)
!542 = !DILocation(line: 146, column: 11, scope: !103)
!543 = !DILocation(line: 147, column: 1, scope: !103)
!544 = !DILocation(line: 150, column: 23, scope: !126)
!545 = !DILocation(line: 150, column: 35, scope: !126)
!546 = !DILocation(line: 150, column: 43, scope: !126)
!547 = !DILocation(line: 150, column: 51, scope: !126)
!548 = !DILocation(line: 150, column: 60, scope: !126)
!549 = !DILocation(line: 150, column: 69, scope: !126)
!550 = !DILocation(line: 153, column: 11, scope: !126)
!551 = !DILocation(line: 156, column: 8, scope: !126)
!552 = !{!291, !291, i64 0}
!553 = !DILocation(line: 156, column: 18, scope: !126)
!554 = !DILocation(line: 156, column: 17, scope: !126)
!555 = !DILocation(line: 156, column: 28, scope: !126)
!556 = !DILocation(line: 156, column: 27, scope: !126)
!557 = !DILocation(line: 154, column: 11, scope: !126)
!558 = !DILocation(line: 159, column: 11, scope: !126)
!559 = !{!288, !288, i64 0}
!560 = !DILocation(line: 159, column: 3, scope: !126)
!561 = !DILocation(line: 152, column: 26, scope: !126)
!562 = !DILocation(line: 152, column: 13, scope: !126)
!563 = !DILocation(line: 161, column: 19, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 161, column: 3)
!565 = distinct !DILexicalBlock(scope: !126, file: !1, line: 161, column: 3)
!566 = !DILocation(line: 161, column: 17, scope: !564)
!567 = !DILocation(line: 161, column: 3, scope: !565)
!568 = !DILocation(line: 181, column: 28, scope: !221)
!569 = !DILocation(line: 162, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !564, file: !1, line: 161, column: 37)
!571 = !DILocation(line: 162, column: 5, scope: !570)
!572 = !DILocation(line: 163, column: 21, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 163, column: 5)
!574 = distinct !DILexicalBlock(scope: !570, file: !1, line: 163, column: 5)
!575 = !DILocation(line: 163, column: 19, scope: !573)
!576 = !DILocation(line: 164, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 163, column: 39)
!578 = !DILocation(line: 164, column: 7, scope: !577)
!579 = !DILocation(line: 166, column: 15, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 165, column: 41)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 165, column: 7)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 165, column: 7)
!583 = !DILocation(line: 166, column: 2, scope: !580)
!584 = !DILocation(line: 167, column: 21, scope: !580)
!585 = !DILocation(line: 171, column: 8, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 171, column: 8)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 168, column: 32)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 168, column: 2)
!589 = distinct !DILexicalBlock(scope: !580, file: !1, line: 168, column: 2)
!590 = !DILocation(line: 180, column: 14, scope: !222)
!591 = !{!592, !291, i64 0}
!592 = !{!"", !291, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !291, i64 40, !288, i64 48, !291, i64 56, !288, i64 64, !593, i64 72, !289, i64 1128, !288, i64 1272}
!593 = !{!"", !289, i64 0, !291, i64 1024, !288, i64 1032, !291, i64 1040, !288, i64 1048}
!594 = !DILocation(line: 182, column: 28, scope: !221)
!595 = !{!592, !291, i64 40}
!596 = !DILocation(line: 180, column: 3, scope: !223)
!597 = !DILocation(line: 183, column: 16, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 183, column: 5)
!599 = distinct !DILexicalBlock(scope: !221, file: !1, line: 183, column: 5)
!600 = !DILocation(line: 184, column: 41, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !1, line: 183, column: 33)
!602 = !DILocation(line: 185, column: 42, scope: !601)
!603 = !DILocation(line: 187, column: 9, scope: !601)
!604 = !DILocation(line: 162, column: 15, scope: !570)
!605 = !DILocation(line: 162, column: 17, scope: !570)
!606 = !DILocation(line: 162, column: 14, scope: !570)
!607 = !DILocation(line: 152, column: 16, scope: !126)
!608 = !DILocation(line: 163, column: 5, scope: !574)
!609 = !DILocation(line: 165, column: 23, scope: !581)
!610 = !DILocation(line: 165, column: 21, scope: !581)
!611 = !DILocation(line: 164, column: 17, scope: !577)
!612 = !DILocation(line: 164, column: 19, scope: !577)
!613 = !DILocation(line: 164, column: 16, scope: !577)
!614 = !DILocation(line: 152, column: 19, scope: !126)
!615 = !DILocation(line: 165, column: 7, scope: !582)
!616 = !DILocation(line: 168, column: 14, scope: !588)
!617 = !DILocation(line: 166, column: 12, scope: !580)
!618 = !DILocation(line: 166, column: 14, scope: !580)
!619 = !DILocation(line: 166, column: 11, scope: !580)
!620 = !DILocation(line: 167, column: 13, scope: !580)
!621 = !DILocation(line: 152, column: 11, scope: !126)
!622 = !DILocation(line: 168, column: 2, scope: !589)
!623 = !DILocation(line: 170, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 169, column: 4)
!625 = distinct !DILexicalBlock(scope: !587, file: !1, line: 169, column: 4)
!626 = !DILocation(line: 169, column: 4, scope: !625)
!627 = !DILocation(line: 170, column: 21, scope: !624)
!628 = !DILocation(line: 170, column: 30, scope: !624)
!629 = !DILocation(line: 170, column: 29, scope: !624)
!630 = !DILocation(line: 170, column: 6, scope: !624)
!631 = !DILocation(line: 170, column: 20, scope: !624)
!632 = !DILocation(line: 171, column: 8, scope: !587)
!633 = !DILocation(line: 173, column: 23, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 172, column: 6)
!635 = distinct !DILexicalBlock(scope: !586, file: !1, line: 172, column: 6)
!636 = !DILocation(line: 173, column: 8, scope: !634)
!637 = !DILocation(line: 173, column: 22, scope: !634)
!638 = !DILocation(line: 172, column: 6, scope: !635)
!639 = !DILocation(line: 174, column: 16, scope: !587)
!640 = !DILocation(line: 174, column: 4, scope: !587)
!641 = !DILocation(line: 174, column: 15, scope: !587)
!642 = !DILocation(line: 165, column: 37, scope: !581)
!643 = !DILocation(line: 163, column: 35, scope: !573)
!644 = !DILocation(line: 161, column: 33, scope: !564)
!645 = !DILocation(line: 181, column: 9, scope: !221)
!646 = !DILocation(line: 182, column: 20, scope: !221)
!647 = !DILocation(line: 182, column: 9, scope: !221)
!648 = !DILocation(line: 152, column: 24, scope: !126)
!649 = !DILocation(line: 183, column: 5, scope: !599)
!650 = !DILocation(line: 181, column: 20, scope: !221)
!651 = !{!592, !288, i64 16}
!652 = !DILocation(line: 184, column: 34, scope: !601)
!653 = !DILocation(line: 184, column: 27, scope: !601)
!654 = !DILocation(line: 184, column: 7, scope: !601)
!655 = !DILocation(line: 184, column: 32, scope: !601)
!656 = !{!592, !288, i64 8}
!657 = !DILocation(line: 185, column: 50, scope: !601)
!658 = !{!659, !291, i64 24}
!659 = !{!"", !324, i64 0, !324, i64 4, !324, i64 8, !324, i64 12, !292, i64 16, !292, i64 18, !291, i64 20, !291, i64 24, !289, i64 28, !289, i64 37}
!660 = !DILocation(line: 185, column: 55, scope: !601)
!661 = !DILocation(line: 185, column: 27, scope: !601)
!662 = !DILocation(line: 185, column: 33, scope: !601)
!663 = !DILocation(line: 187, column: 32, scope: !601)
!664 = !DILocation(line: 187, column: 2, scope: !601)
!665 = !{!592, !288, i64 48}
!666 = !DILocation(line: 186, column: 7, scope: !601)
!667 = !DILocation(line: 186, column: 48, scope: !601)
!668 = !DILocation(line: 180, column: 22, scope: !222)
!669 = !DILocation(line: 190, column: 12, scope: !126)
!670 = !DILocation(line: 191, column: 14, scope: !126)
!671 = !DILocation(line: 192, column: 3, scope: !672)
!672 = distinct !DILexicalBlock(scope: !126, file: !1, line: 192, column: 3)
!673 = !DILocation(line: 193, column: 5, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 193, column: 5)
!675 = distinct !DILexicalBlock(scope: !672, file: !1, line: 192, column: 3)
!676 = !DILocation(line: 194, column: 18, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !1, line: 193, column: 5)
!678 = !DILocation(line: 194, column: 7, scope: !677)
!679 = !DILocation(line: 194, column: 16, scope: !677)
!680 = !DILocation(line: 195, column: 1, scope: !126)
!681 = !DILocation(line: 198, column: 18, scope: !225)
!682 = !DILocation(line: 198, column: 26, scope: !225)
!683 = !DILocation(line: 198, column: 39, scope: !225)
!684 = !DILocation(line: 198, column: 49, scope: !225)
!685 = !DILocation(line: 198, column: 58, scope: !225)
!686 = !DILocation(line: 199, column: 12, scope: !225)
!687 = !DILocation(line: 202, column: 8, scope: !225)
!688 = !DILocation(line: 202, column: 14, scope: !225)
!689 = !DILocation(line: 201, column: 9, scope: !225)
!690 = !DILocation(line: 207, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 206, column: 3)
!692 = distinct !DILexicalBlock(scope: !225, file: !1, line: 206, column: 3)
!693 = !DILocation(line: 207, column: 12, scope: !691)
!694 = !DILocation(line: 208, column: 15, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 208, column: 3)
!696 = distinct !DILexicalBlock(scope: !225, file: !1, line: 208, column: 3)
!697 = !DILocation(line: 208, column: 3, scope: !696)
!698 = !DILocation(line: 209, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !1, line: 209, column: 5)
!700 = !DILocation(line: 210, column: 15, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 209, column: 25)
!702 = distinct !DILexicalBlock(scope: !699, file: !1, line: 209, column: 5)
!703 = !DILocation(line: 210, column: 14, scope: !701)
!704 = !DILocation(line: 211, column: 15, scope: !701)
!705 = !DILocation(line: 211, column: 14, scope: !701)
!706 = !DILocation(line: 216, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 215, column: 3)
!708 = distinct !DILexicalBlock(scope: !225, file: !1, line: 215, column: 3)
!709 = !DILocation(line: 216, column: 23, scope: !707)
!710 = !DILocation(line: 216, column: 22, scope: !707)
!711 = !DILocation(line: 216, column: 33, scope: !707)
!712 = !DILocation(line: 216, column: 32, scope: !707)
!713 = !DILocation(line: 216, column: 30, scope: !707)
!714 = !DILocation(line: 216, column: 5, scope: !707)
!715 = !DILocation(line: 216, column: 14, scope: !707)
!716 = !DILocation(line: 215, column: 3, scope: !708)
!717 = !DILocation(line: 219, column: 10, scope: !718)
!718 = distinct !DILexicalBlock(scope: !225, file: !1, line: 219, column: 7)
!719 = !DILocation(line: 219, column: 7, scope: !225)
!720 = !DILocation(line: 220, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !1, line: 219, column: 15)
!722 = !DILocation(line: 203, column: 8, scope: !225)
!723 = !DILocation(line: 221, column: 5, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !1, line: 221, column: 5)
!725 = !DILocation(line: 222, column: 15, scope: !726)
!726 = distinct !DILexicalBlock(scope: !724, file: !1, line: 221, column: 5)
!727 = !DILocation(line: 224, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 223, column: 5)
!729 = distinct !DILexicalBlock(scope: !721, file: !1, line: 223, column: 5)
!730 = !DILocation(line: 224, column: 16, scope: !728)
!731 = !DILocation(line: 223, column: 5, scope: !729)
!732 = !DILocation(line: 228, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !225, file: !1, line: 228, column: 7)
!734 = !DILocation(line: 229, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 229, column: 5)
!736 = distinct !DILexicalBlock(scope: !733, file: !1, line: 229, column: 5)
!737 = !DILocation(line: 228, column: 7, scope: !225)
!738 = !DILocation(line: 229, column: 5, scope: !736)
!739 = !DILocation(line: 230, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !1, line: 230, column: 7)
!741 = !DILocation(line: 231, column: 16, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 230, column: 29)
!743 = distinct !DILexicalBlock(scope: !740, file: !1, line: 230, column: 7)
!744 = !DILocation(line: 231, column: 26, scope: !742)
!745 = !DILocation(line: 231, column: 25, scope: !742)
!746 = !DILocation(line: 231, column: 34, scope: !742)
!747 = !DILocation(line: 231, column: 33, scope: !742)
!748 = !DILocation(line: 231, column: 15, scope: !742)
!749 = !DILocation(line: 231, column: 14, scope: !742)
!750 = !DILocation(line: 231, column: 2, scope: !742)
!751 = !DILocation(line: 231, column: 9, scope: !742)
!752 = !DILocation(line: 239, column: 1, scope: !225)
