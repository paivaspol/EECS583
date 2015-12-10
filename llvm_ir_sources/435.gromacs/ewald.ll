; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_complex = type { float, float }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }

@do_ewald.bFirst = internal unnamed_addr global i1 false
@do_ewald.nx = internal unnamed_addr global i32 0, align 4
@do_ewald.ny = internal unnamed_addr global i32 0, align 4
@do_ewald.nz = internal unnamed_addr global i32 0, align 4
@do_ewald.kmax = internal unnamed_addr global i32 0, align 4
@do_ewald.eir = internal unnamed_addr global [3 x %struct.t_complex]** null, align 8
@do_ewald.tab_xy = internal unnamed_addr global %struct.t_complex* null, align 8
@do_ewald.tab_qxyz = internal unnamed_addr global %struct.t_complex* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Will do ordinary reciprocal space Ewald sum.\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"No parallel Ewald. Use PME instead.\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"eir\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald.c\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"eir[n]\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"tab_xy\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"tab_qxyz\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"Go away! kmax = %d\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !12, metadata !331), !dbg !332
  %1 = icmp sgt i32 %__signo, 32, !dbg !333
  br i1 %1, label %5, label %2, !dbg !334

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !335
  %4 = shl i32 1, %3, !dbg !336
  br label %5, !dbg !334

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !334
  ret i32 %6, !dbg !337
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @do_ewald(%struct.__sFILE* nocapture %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* nocapture readonly %box, %struct.t_commrec* readonly %cr, %struct.t_nsborder* nocapture readonly %nsb, [3 x float]* nocapture %lrvir, float %ewaldcoeff) #2 {
  %lll = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !232, metadata !331), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %bVerbose, i64 0, metadata !233, metadata !331), !dbg !339
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !234, metadata !331), !dbg !340
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !235, metadata !331), !dbg !341
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !236, metadata !331), !dbg !342
  tail call void @llvm.dbg.value(metadata float* %charge, i64 0, metadata !237, metadata !331), !dbg !343
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !238, metadata !331), !dbg !344
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !239, metadata !331), !dbg !345
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !240, metadata !331), !dbg !346
  tail call void @llvm.dbg.value(metadata [3 x float]* %lrvir, i64 0, metadata !241, metadata !331), !dbg !347
  tail call void @llvm.dbg.value(metadata float %ewaldcoeff, i64 0, metadata !242, metadata !331), !dbg !348
  %1 = fmul float %ewaldcoeff, 4.000000e+00, !dbg !349
  %2 = fmul float %1, %ewaldcoeff, !dbg !350
  %3 = fdiv float -1.000000e+00, %2, !dbg !351
  tail call void @llvm.dbg.value(metadata float %3, i64 0, metadata !243, metadata !331), !dbg !352
  tail call void @llvm.dbg.declare(metadata [3 x float]* %lll, metadata !245, metadata !331), !dbg !353
  %.b = load i1* @do_ewald.bFirst, align 1
  br i1 %.b, label %._crit_edge89, label %4, !dbg !354

._crit_edge89:                                    ; preds = %0
  %.pre = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !355
  br label %58, !dbg !354

; <label>:4                                       ; preds = %0
  %5 = icmp eq i32 %bVerbose, 0, !dbg !356
  br i1 %5, label %8, label %6, !dbg !360

; <label>:6                                       ; preds = %4
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 45, i64 1, %struct.__sFILE* %log), !dbg !361
  br label %8, !dbg !361

; <label>:8                                       ; preds = %4, %6
  %9 = icmp eq %struct.t_commrec* %cr, null, !dbg !362
  br i1 %9, label %19, label %10, !dbg !364

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !365
  %12 = load i32* %11, align 4, !dbg !365, !tbaa !368
  %13 = icmp sgt i32 %12, 1, !dbg !373
  br i1 %13, label %18, label %14, !dbg !374

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !375
  %16 = load i32* %15, align 4, !dbg !375, !tbaa !376
  %17 = icmp sgt i32 %16, 1, !dbg !377
  br i1 %17, label %18, label %19, !dbg !378

; <label>:18                                      ; preds = %14, %10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !379
  br label %19, !dbg !379

; <label>:19                                      ; preds = %8, %14, %18
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !380
  %21 = load i32* %20, align 4, !dbg !380, !tbaa !381
  %22 = add nsw i32 %21, 1, !dbg !386
  store i32 %22, i32* @do_ewald.nx, align 4, !dbg !387, !tbaa !388
  %23 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !389
  %24 = load i32* %23, align 4, !dbg !389, !tbaa !390
  %25 = add nsw i32 %24, 1, !dbg !391
  store i32 %25, i32* @do_ewald.ny, align 4, !dbg !392, !tbaa !388
  %26 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !393
  %27 = load i32* %26, align 4, !dbg !393, !tbaa !394
  %28 = add nsw i32 %27, 1, !dbg !395
  store i32 %28, i32* @do_ewald.nz, align 4, !dbg !396, !tbaa !388
  %29 = icmp sgt i32 %25, %28, !dbg !397
  %30 = select i1 %29, i32 %25, i32 %28, !dbg !397
  %31 = icmp sgt i32 %22, %30, !dbg !397
  %. = select i1 %31, i32 %22, i32 %30, !dbg !397
  store i32 %., i32* @do_ewald.kmax, align 4, !dbg !398, !tbaa !388
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 124, i32 %., i32 8) #8, !dbg !399
  store i8* %32, i8** bitcast ([3 x %struct.t_complex]*** @do_ewald.eir to i8**), align 8, !dbg !399, !tbaa !400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !331), !dbg !401
  %33 = load i32* @do_ewald.kmax, align 4, !dbg !402, !tbaa !388
  %34 = icmp sgt i32 %33, 0, !dbg !405
  %35 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !406
  %36 = load i32* %35, align 4, !dbg !406, !tbaa !407
  %37 = sext i32 %36 to i64, !dbg !406
  %38 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %37, !dbg !406
  %39 = load i32* %38, align 4, !dbg !406, !tbaa !388
  br i1 %34, label %.lr.ph58, label %._crit_edge59, !dbg !409

.lr.ph58:                                         ; preds = %19, %.lr.ph58
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph58 ], [ 0, %19 ]
  %40 = phi i32 [ %51, %.lr.ph58 ], [ %39, %19 ]
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %40, i32 24) #8, !dbg !406
  %42 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !406, !tbaa !400
  %43 = getelementptr inbounds [3 x %struct.t_complex]** %42, i64 %indvars.iv87, !dbg !406
  %44 = bitcast [3 x %struct.t_complex]** %43 to i8**, !dbg !406
  store i8* %41, i8** %44, align 8, !dbg !406, !tbaa !400
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1, !dbg !409
  %45 = load i32* @do_ewald.kmax, align 4, !dbg !402, !tbaa !388
  %46 = sext i32 %45 to i64, !dbg !405
  %47 = icmp slt i64 %indvars.iv.next88, %46, !dbg !405
  %48 = load i32* %35, align 4, !dbg !406, !tbaa !407
  %49 = sext i32 %48 to i64, !dbg !406
  %50 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %49, !dbg !406
  %51 = load i32* %50, align 4, !dbg !406, !tbaa !388
  br i1 %47, label %.lr.ph58, label %._crit_edge59, !dbg !409

._crit_edge59:                                    ; preds = %.lr.ph58, %19
  %.lcssa13 = phi i32 [ %39, %19 ], [ %51, %.lr.ph58 ]
  %52 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 127, i32 %.lcssa13, i32 8) #8, !dbg !410
  store i8* %52, i8** bitcast (%struct.t_complex** @do_ewald.tab_xy to i8**), align 8, !dbg !410, !tbaa !400
  %53 = load i32* %35, align 4, !dbg !411, !tbaa !407
  %54 = sext i32 %53 to i64, !dbg !411
  %55 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %54, !dbg !411
  %56 = load i32* %55, align 4, !dbg !411, !tbaa !388
  %57 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 128, i32 %56, i32 8) #8, !dbg !411
  store i8* %57, i8** bitcast (%struct.t_complex** @do_ewald.tab_qxyz to i8**), align 8, !dbg !411, !tbaa !400
  store i1 true, i1* @do_ewald.bFirst, align 1
  br label %58, !dbg !412

; <label>:58                                      ; preds = %._crit_edge89, %._crit_edge59
  %.pre-phi = phi i32* [ %.pre, %._crit_edge89 ], [ %35, %._crit_edge59 ], !dbg !355
  tail call void @llvm.dbg.value(metadata [3 x float]* %lrvir, i64 0, metadata !266, metadata !331) #7, !dbg !413
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !267, metadata !331) #7, !dbg !415
  %59 = bitcast [3 x float]* %lrvir to i8*, !dbg !416
  tail call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 36, i32 4, i1 false) #7, !dbg !417
  %60 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0, !dbg !418
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !274, metadata !331), !dbg !419
  tail call void @llvm.dbg.value(metadata float* %60, i64 0, metadata !275, metadata !331), !dbg !421
  %61 = load float* %box, align 4, !dbg !422, !tbaa !423
  %62 = fpext float %61 to double, !dbg !422
  %63 = fdiv double 0x401921FB54442D18, %62, !dbg !424
  %64 = fptrunc double %63 to float, !dbg !425
  store float %64, float* %60, align 4, !dbg !426, !tbaa !423
  %65 = getelementptr inbounds float* %box, i64 1, !dbg !427
  %66 = load float* %65, align 4, !dbg !427, !tbaa !423
  %67 = fpext float %66 to double, !dbg !427
  %68 = fdiv double 0x401921FB54442D18, %67, !dbg !428
  %69 = fptrunc double %68 to float, !dbg !429
  %70 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1, !dbg !430
  store float %69, float* %70, align 4, !dbg !431, !tbaa !423
  %71 = getelementptr inbounds float* %box, i64 2, !dbg !432
  %72 = load float* %71, align 4, !dbg !432, !tbaa !423
  %73 = fpext float %72 to double, !dbg !432
  %74 = fdiv double 0x401921FB54442D18, %73, !dbg !433
  %75 = fptrunc double %74 to float, !dbg !434
  %76 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2, !dbg !435
  store float %75, float* %76, align 4, !dbg !436, !tbaa !423
  %77 = load i32* %.pre-phi, align 4, !dbg !355, !tbaa !407
  %78 = sext i32 %77 to i64, !dbg !355
  %79 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %78, !dbg !355
  %80 = load i32* %79, align 4, !dbg !355, !tbaa !388
  %81 = load i32* @do_ewald.kmax, align 4, !dbg !437, !tbaa !388
  %82 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !438, !tbaa !400
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !290, metadata !331) #7, !dbg !439
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !291, metadata !331) #7, !dbg !441
  tail call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !292, metadata !331) #7, !dbg !442
  tail call void @llvm.dbg.value(metadata [3 x %struct.t_complex]** %82, i64 0, metadata !293, metadata !331) #7, !dbg !443
  tail call void @llvm.dbg.value(metadata float* %60, i64 0, metadata !294, metadata !331) #7, !dbg !444
  %83 = icmp slt i32 %81, 1, !dbg !445
  br i1 %83, label %89, label %.preheader4.i, !dbg !447

.preheader4.i:                                    ; preds = %58
  %84 = icmp sgt i32 %80, 0, !dbg !448
  br i1 %84, label %.preheader3.lr.ph.i, label %tabulate_eir.exit.preheader, !dbg !451

.preheader3.lr.ph.i:                              ; preds = %.preheader4.i
  %85 = getelementptr inbounds [3 x %struct.t_complex]** %82, i64 1, !dbg !452
  %86 = icmp sgt i32 %81, 2, !dbg !457
  %87 = add i32 %81, -1, !dbg !451
  %88 = add i32 %80, -1, !dbg !451
  br label %.preheader3.i, !dbg !451

; <label>:89                                      ; preds = %58
  %90 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %81) #8, !dbg !460
  tail call void @exit(i32 1) #9, !dbg !462
  unreachable, !dbg !462

.preheader3.i:                                    ; preds = %._crit_edge.i, %.preheader3.lr.ph.i
  %indvars.iv20.i = phi i64 [ 0, %.preheader3.lr.ph.i ], [ %indvars.iv.next21.i, %._crit_edge.i ], !dbg !463
  %91 = load [3 x %struct.t_complex]** %82, align 8, !dbg !464, !tbaa !400
  br label %93, !dbg !468

.preheader2.i:                                    ; preds = %93
  %92 = load [3 x %struct.t_complex]** %85, align 8, !dbg !452, !tbaa !400
  br label %96, !dbg !469

; <label>:93                                      ; preds = %93, %.preheader3.i
  %indvars.iv.i = phi i64 [ 0, %.preheader3.i ], [ %indvars.iv.next.i, %93 ], !dbg !463
  %94 = getelementptr inbounds [3 x %struct.t_complex]* %91, i64 %indvars.iv20.i, i64 %indvars.iv.i, i32 0, !dbg !470
  store float 1.000000e+00, float* %94, align 4, !dbg !471, !tbaa !472
  %95 = getelementptr inbounds [3 x %struct.t_complex]* %91, i64 %indvars.iv20.i, i64 %indvars.iv.i, i32 1, !dbg !474
  store float 0.000000e+00, float* %95, align 4, !dbg !475, !tbaa !476
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !468
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3, !dbg !468
  br i1 %exitcond.i, label %.preheader2.i, label %93, !dbg !468

.preheader1.i:                                    ; preds = %96
  br i1 %86, label %.preheader.i, label %._crit_edge.i, !dbg !477

; <label>:96                                      ; preds = %96, %.preheader2.i
  %indvars.iv11.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next12.i, %96 ], !dbg !463
  %97 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv20.i, i64 %indvars.iv11.i, !dbg !478
  %98 = load float* %97, align 4, !dbg !478, !tbaa !423
  %99 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 %indvars.iv11.i, !dbg !479
  %100 = load float* %99, align 4, !dbg !479, !tbaa !423
  %101 = fmul float %98, %100, !dbg !480
  %102 = fpext float %101 to double, !dbg !478
  %103 = tail call double @cos(double %102) #10, !dbg !481
  %104 = fptrunc double %103 to float, !dbg !481
  %105 = getelementptr inbounds [3 x %struct.t_complex]* %92, i64 %indvars.iv20.i, i64 %indvars.iv11.i, i32 0, !dbg !482
  store float %104, float* %105, align 4, !dbg !483, !tbaa !472
  %106 = load float* %97, align 4, !dbg !484, !tbaa !423
  %107 = fmul float %106, %100, !dbg !485
  %108 = fpext float %107 to double, !dbg !484
  %109 = tail call double @sin(double %108) #10, !dbg !486
  %110 = fptrunc double %109 to float, !dbg !486
  %111 = getelementptr inbounds [3 x %struct.t_complex]* %92, i64 %indvars.iv20.i, i64 %indvars.iv11.i, i32 1, !dbg !487
  store float %110, float* %111, align 4, !dbg !488, !tbaa !476
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1, !dbg !469
  %exitcond13.i = icmp eq i64 %indvars.iv.next12.i, 3, !dbg !469
  br i1 %exitcond13.i, label %.preheader1.i, label %96, !dbg !469

.preheader.i:                                     ; preds = %.preheader1.i, %139
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %139 ], [ 2, %.preheader1.i ], !dbg !463
  %112 = getelementptr inbounds [3 x %struct.t_complex]** %82, i64 %indvars.iv17.i, !dbg !489
  %113 = add nsw i64 %indvars.iv17.i, -1, !dbg !492
  %114 = getelementptr inbounds [3 x %struct.t_complex]** %82, i64 %113, !dbg !493
  br label %115, !dbg !494

; <label>:115                                     ; preds = %115, %.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next15.i, %115 ], !dbg !463
  %116 = load [3 x %struct.t_complex]** %112, align 8, !dbg !489, !tbaa !400
  %117 = getelementptr inbounds [3 x %struct.t_complex]* %116, i64 %indvars.iv20.i, i64 %indvars.iv14.i, !dbg !489
  %118 = load [3 x %struct.t_complex]** %114, align 8, !dbg !493, !tbaa !400
  %119 = getelementptr inbounds [3 x %struct.t_complex]* %118, i64 %indvars.iv20.i, i64 %indvars.iv14.i, !dbg !493
  %120 = load [3 x %struct.t_complex]** %85, align 8, !dbg !495, !tbaa !400
  %121 = getelementptr inbounds [3 x %struct.t_complex]* %120, i64 %indvars.iv20.i, i64 %indvars.iv14.i, !dbg !495
  %122 = bitcast %struct.t_complex* %119 to <2 x float>*, !dbg !496
  %123 = load <2 x float>* %122, align 1, !dbg !496
  %124 = bitcast %struct.t_complex* %121 to <2 x float>*, !dbg !496
  %125 = load <2 x float>* %124, align 1, !dbg !496
  tail call void @llvm.dbg.value(metadata <2 x float> %123, i64 0, metadata !302, metadata !331) #7, !dbg !497
  tail call void @llvm.dbg.value(metadata <2 x float> %125, i64 0, metadata !303, metadata !331) #7, !dbg !499
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !302, metadata !331) #7, !dbg !497
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !303, metadata !331) #7, !dbg !499
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !304, metadata !331) #7, !dbg !500
  %126 = extractelement <2 x float> %123, i32 0, !dbg !501
  %127 = extractelement <2 x float> %125, i32 0, !dbg !502
  %128 = fmul float %126, %127, !dbg !503
  %129 = extractelement <2 x float> %123, i32 1, !dbg !504
  %130 = extractelement <2 x float> %125, i32 1, !dbg !505
  %131 = fmul float %129, %130, !dbg !506
  %132 = fsub float %128, %131, !dbg !507
  tail call void @llvm.dbg.value(metadata float %132, i64 0, metadata !304, metadata !508) #7, !dbg !500
  %133 = fmul float %126, %130, !dbg !509
  %134 = fmul float %129, %127, !dbg !510
  %135 = fadd float %133, %134, !dbg !511
  tail call void @llvm.dbg.value(metadata float %135, i64 0, metadata !304, metadata !512) #7, !dbg !500
  %136 = insertelement <2 x float> undef, float %132, i32 0, !dbg !513
  %137 = insertelement <2 x float> %136, float %135, i32 1, !dbg !513
  %138 = bitcast %struct.t_complex* %117 to <2 x float>*, !dbg !496
  store <2 x float> %137, <2 x float>* %138, align 4, !dbg !496
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1, !dbg !494
  %exitcond16.i = icmp eq i64 %indvars.iv.next15.i, 3, !dbg !494
  br i1 %exitcond16.i, label %139, label %115, !dbg !494

; <label>:139                                     ; preds = %115
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1, !dbg !477
  %lftr.wideiv = trunc i64 %indvars.iv17.i to i32, !dbg !477
  %exitcond = icmp eq i32 %lftr.wideiv, %87, !dbg !477
  br i1 %exitcond, label %._crit_edge.i, label %.preheader.i, !dbg !477

._crit_edge.i:                                    ; preds = %139, %.preheader1.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1, !dbg !451
  %lftr.wideiv85 = trunc i64 %indvars.iv20.i to i32, !dbg !451
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %88, !dbg !451
  br i1 %exitcond86, label %tabulate_eir.exit.preheader, label %.preheader3.i, !dbg !451

tabulate_eir.exit.preheader:                      ; preds = %._crit_edge.i, %.preheader4.i
  %140 = load i32* @do_ewald.nx, align 4, !dbg !514, !tbaa !388
  %141 = icmp sgt i32 %140, 0, !dbg !517
  br i1 %141, label %.lr.ph54, label %tabulate_eir.exit._crit_edge, !dbg !518

.lr.ph54:                                         ; preds = %tabulate_eir.exit.preheader
  %142 = load float* %60, align 4, !dbg !519, !tbaa !423
  %143 = fpext float %3 to double, !dbg !521
  %144 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0, !dbg !528
  %145 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1, !dbg !529
  %146 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2, !dbg !530
  %147 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1, !dbg !531
  %148 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2, !dbg !532
  %149 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2, !dbg !533
  br label %150, !dbg !518

; <label>:150                                     ; preds = %.lr.ph54, %tabulate_eir.exit
  %indvars.iv83 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next84, %tabulate_eir.exit ]
  %energy.053 = phi float [ 0.000000e+00, %.lr.ph54 ], [ %energy.1.lcssa, %tabulate_eir.exit ]
  %lowiy.052 = phi i32 [ 0, %.lr.ph54 ], [ %lowiy.1.lcssa, %tabulate_eir.exit ]
  %lowiz.051 = phi i32 [ 1, %.lr.ph54 ], [ %lowiz.1.lcssa, %tabulate_eir.exit ]
  %151 = trunc i64 %indvars.iv83 to i32, !dbg !534
  %152 = sitofp i32 %151 to float, !dbg !534
  %153 = fmul float %152, %142, !dbg !535
  tail call void @llvm.dbg.value(metadata float %153, i64 0, metadata !257, metadata !331), !dbg !536
  tail call void @llvm.dbg.value(metadata i32 %lowiy.1.lcssa, i64 0, metadata !249, metadata !331), !dbg !537
  %154 = load i32* @do_ewald.ny, align 4, !dbg !538, !tbaa !388
  %155 = icmp slt i32 %lowiy.052, %154, !dbg !539
  br i1 %155, label %.lr.ph44, label %tabulate_eir.exit, !dbg !540

.lr.ph44:                                         ; preds = %150
  %156 = fmul float %153, %153, !dbg !541
  %157 = sext i32 %lowiy.052 to i64
  br label %158, !dbg !540

; <label>:158                                     ; preds = %.lr.ph44, %407
  %indvars.iv81 = phi i64 [ %157, %.lr.ph44 ], [ %indvars.iv.next82, %407 ]
  %energy.142 = phi float [ %energy.053, %.lr.ph44 ], [ %energy.2.lcssa, %407 ]
  %lowiz.141 = phi i32 [ %lowiz.051, %.lr.ph44 ], [ %lowiz.2.lcssa, %407 ]
  %159 = trunc i64 %indvars.iv81 to i32, !dbg !542
  %160 = sitofp i32 %159 to float, !dbg !542
  %161 = fmul float %160, %69, !dbg !543
  tail call void @llvm.dbg.value(metadata float %161, i64 0, metadata !258, metadata !331), !dbg !544
  %162 = icmp sgt i64 %indvars.iv81, -1, !dbg !545
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !331), !dbg !401
  %163 = load i32* %.pre-phi, align 4, !dbg !547, !tbaa !407
  %164 = sext i32 %163 to i64, !dbg !547
  %165 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %164, !dbg !547
  %166 = load i32* %165, align 4, !dbg !547, !tbaa !388
  %167 = icmp sgt i32 %166, 0, !dbg !550
  br i1 %162, label %.preheader10, label %.preheader11, !dbg !551

.preheader11:                                     ; preds = %158
  br i1 %167, label %.lr.ph16, label %.preheader9, !dbg !552

.lr.ph16:                                         ; preds = %.preheader11
  %168 = sub nsw i64 0, %indvars.iv81, !dbg !554
  br label %207, !dbg !552

.preheader10:                                     ; preds = %158
  br i1 %167, label %.lr.ph18, label %.preheader9, !dbg !556

.preheader9:                                      ; preds = %207, %.lr.ph18, %.preheader11, %.preheader10
  %169 = phi i32 [ %163, %.preheader10 ], [ %163, %.preheader11 ], [ %201, %.lr.ph18 ], [ %234, %207 ]
  %170 = load i32* @do_ewald.nz, align 4, !dbg !557, !tbaa !388
  %171 = icmp slt i32 %lowiz.141, %170, !dbg !558
  br i1 %171, label %.lr.ph35, label %407, !dbg !559

.lr.ph35:                                         ; preds = %.preheader9
  %172 = fmul float %161, %161, !dbg !560
  %173 = fadd float %156, %172, !dbg !561
  %174 = sext i32 %lowiz.141 to i64
  br label %240, !dbg !559

.lr.ph18:                                         ; preds = %.preheader10, %.lr.ph18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph18 ], [ 0, %.preheader10 ]
  %175 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !562, !tbaa !400
  %176 = getelementptr inbounds %struct.t_complex* %175, i64 %indvars.iv69, !dbg !562
  %177 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !563, !tbaa !400
  %178 = getelementptr inbounds [3 x %struct.t_complex]** %177, i64 %indvars.iv83, !dbg !563
  %179 = load [3 x %struct.t_complex]** %178, align 8, !dbg !563, !tbaa !400
  %180 = getelementptr inbounds [3 x %struct.t_complex]* %179, i64 %indvars.iv69, i64 0, !dbg !563
  %181 = getelementptr inbounds [3 x %struct.t_complex]** %177, i64 %indvars.iv81, !dbg !564
  %182 = load [3 x %struct.t_complex]** %181, align 8, !dbg !564, !tbaa !400
  %183 = getelementptr inbounds [3 x %struct.t_complex]* %182, i64 %indvars.iv69, i64 1, !dbg !564
  %184 = bitcast %struct.t_complex* %180 to <2 x float>*, !dbg !565
  %185 = load <2 x float>* %184, align 1, !dbg !565
  %186 = bitcast %struct.t_complex* %183 to <2 x float>*, !dbg !565
  %187 = load <2 x float>* %186, align 1, !dbg !565
  tail call void @llvm.dbg.value(metadata <2 x float> %185, i64 0, metadata !302, metadata !331), !dbg !566
  tail call void @llvm.dbg.value(metadata <2 x float> %187, i64 0, metadata !303, metadata !331), !dbg !568
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !302, metadata !331), !dbg !566
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !303, metadata !331), !dbg !568
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !304, metadata !331), !dbg !569
  %188 = extractelement <2 x float> %185, i32 0, !dbg !570
  %189 = extractelement <2 x float> %187, i32 0, !dbg !571
  %190 = fmul float %188, %189, !dbg !572
  %191 = extractelement <2 x float> %185, i32 1, !dbg !573
  %192 = extractelement <2 x float> %187, i32 1, !dbg !574
  %193 = fmul float %191, %192, !dbg !575
  %194 = fsub float %190, %193, !dbg !576
  tail call void @llvm.dbg.value(metadata float %194, i64 0, metadata !304, metadata !508), !dbg !569
  %195 = fmul float %188, %192, !dbg !577
  %196 = fmul float %191, %189, !dbg !578
  %197 = fadd float %195, %196, !dbg !579
  tail call void @llvm.dbg.value(metadata float %197, i64 0, metadata !304, metadata !512), !dbg !569
  %198 = insertelement <2 x float> undef, float %194, i32 0, !dbg !580
  %199 = insertelement <2 x float> %198, float %197, i32 1, !dbg !580
  %200 = bitcast %struct.t_complex* %176 to <2 x float>*, !dbg !565
  store <2 x float> %199, <2 x float>* %200, align 4, !dbg !565
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1, !dbg !556
  %201 = load i32* %.pre-phi, align 4, !dbg !547, !tbaa !407
  %202 = sext i32 %201 to i64, !dbg !547
  %203 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %202, !dbg !547
  %204 = load i32* %203, align 4, !dbg !547, !tbaa !388
  %205 = sext i32 %204 to i64, !dbg !550
  %206 = icmp slt i64 %indvars.iv.next70, %205, !dbg !550
  br i1 %206, label %.lr.ph18, label %.preheader9, !dbg !556

; <label>:207                                     ; preds = %.lr.ph16, %207
  %indvars.iv67 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next68, %207 ]
  %208 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !581, !tbaa !400
  %209 = getelementptr inbounds %struct.t_complex* %208, i64 %indvars.iv67, !dbg !581
  %210 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !582, !tbaa !400
  %211 = getelementptr inbounds [3 x %struct.t_complex]** %210, i64 %indvars.iv83, !dbg !582
  %212 = load [3 x %struct.t_complex]** %211, align 8, !dbg !582, !tbaa !400
  %213 = getelementptr inbounds [3 x %struct.t_complex]* %212, i64 %indvars.iv67, i64 0, !dbg !582
  %214 = getelementptr inbounds [3 x %struct.t_complex]** %210, i64 %168, !dbg !583
  %215 = load [3 x %struct.t_complex]** %214, align 8, !dbg !583, !tbaa !400
  %216 = getelementptr inbounds [3 x %struct.t_complex]* %215, i64 %indvars.iv67, i64 1, !dbg !583
  %217 = bitcast %struct.t_complex* %213 to <2 x float>*, !dbg !584
  %218 = load <2 x float>* %217, align 1, !dbg !584
  %219 = bitcast %struct.t_complex* %216 to <2 x float>*, !dbg !584
  %220 = load <2 x float>* %219, align 1, !dbg !584
  tail call void @llvm.dbg.value(metadata <2 x float> %218, i64 0, metadata !307, metadata !331), !dbg !585
  tail call void @llvm.dbg.value(metadata <2 x float> %220, i64 0, metadata !308, metadata !331), !dbg !587
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !307, metadata !331), !dbg !585
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !308, metadata !331), !dbg !587
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !309, metadata !331), !dbg !588
  %221 = extractelement <2 x float> %218, i32 0, !dbg !589
  %222 = extractelement <2 x float> %220, i32 0, !dbg !590
  %223 = fmul float %221, %222, !dbg !591
  %224 = extractelement <2 x float> %218, i32 1, !dbg !592
  %225 = extractelement <2 x float> %220, i32 1, !dbg !593
  %226 = fmul float %224, %225, !dbg !594
  %227 = fadd float %223, %226, !dbg !595
  tail call void @llvm.dbg.value(metadata float %227, i64 0, metadata !309, metadata !508), !dbg !588
  %228 = fmul float %224, %222, !dbg !596
  %229 = fmul float %221, %225, !dbg !597
  %230 = fsub float %228, %229, !dbg !598
  tail call void @llvm.dbg.value(metadata float %230, i64 0, metadata !309, metadata !512), !dbg !588
  %231 = insertelement <2 x float> undef, float %227, i32 0, !dbg !599
  %232 = insertelement <2 x float> %231, float %230, i32 1, !dbg !599
  %233 = bitcast %struct.t_complex* %209 to <2 x float>*, !dbg !584
  store <2 x float> %232, <2 x float>* %233, align 4, !dbg !584
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1, !dbg !552
  %234 = load i32* %.pre-phi, align 4, !dbg !600, !tbaa !407
  %235 = sext i32 %234 to i64, !dbg !600
  %236 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %235, !dbg !600
  %237 = load i32* %236, align 4, !dbg !600, !tbaa !388
  %238 = sext i32 %237 to i64, !dbg !601
  %239 = icmp slt i64 %indvars.iv.next68, %238, !dbg !601
  br i1 %239, label %207, label %.preheader9, !dbg !552

; <label>:240                                     ; preds = %.lr.ph35, %._crit_edge32
  %241 = phi i32 [ %169, %.lr.ph35 ], [ %265, %._crit_edge32 ]
  %indvars.iv79 = phi i64 [ %174, %.lr.ph35 ], [ %indvars.iv.next80, %._crit_edge32 ]
  %energy.234 = phi float [ %energy.142, %.lr.ph35 ], [ %357, %._crit_edge32 ]
  %242 = trunc i64 %indvars.iv79 to i32, !dbg !602
  %243 = sitofp i32 %242 to float, !dbg !602
  %244 = fmul float %243, %75, !dbg !603
  tail call void @llvm.dbg.value(metadata float %244, i64 0, metadata !259, metadata !331), !dbg !604
  %245 = fmul float %244, %244, !dbg !605
  %246 = fadd float %173, %245, !dbg !606
  tail call void @llvm.dbg.value(metadata float %246, i64 0, metadata !260, metadata !331), !dbg !607
  %247 = fmul float %3, %246, !dbg !608
  %248 = fpext float %247 to double, !dbg !609
  %249 = tail call double @exp(double %248) #10, !dbg !610
  %250 = fpext float %246 to double, !dbg !611
  %251 = fdiv double %249, %250, !dbg !612
  %252 = fptrunc double %251 to float, !dbg !610
  tail call void @llvm.dbg.value(metadata float %252, i64 0, metadata !255, metadata !331), !dbg !613
  %253 = fpext float %252 to double, !dbg !614
  %254 = fmul double %253, 2.000000e+00, !dbg !615
  %255 = fdiv double 1.000000e+00, %250, !dbg !616
  %256 = fsub double %255, %143, !dbg !617
  %257 = fmul double %256, %254, !dbg !618
  %258 = fptrunc double %257 to float, !dbg !619
  tail call void @llvm.dbg.value(metadata float %258, i64 0, metadata !256, metadata !331), !dbg !620
  %259 = icmp sgt i64 %indvars.iv79, -1, !dbg !621
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !331), !dbg !401
  %260 = sext i32 %241 to i64, !dbg !623
  %261 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %260, !dbg !623
  %262 = load i32* %261, align 4, !dbg !623, !tbaa !388
  %263 = icmp sgt i32 %262, 0, !dbg !626
  br i1 %259, label %.preheader6, label %.preheader7, !dbg !627

.preheader7:                                      ; preds = %240
  br i1 %263, label %.lr.ph20, label %.preheader, !dbg !628

.lr.ph20:                                         ; preds = %.preheader7
  %264 = sub nsw i64 0, %indvars.iv79, !dbg !630
  br label %307, !dbg !628

.preheader6:                                      ; preds = %240
  br i1 %263, label %.lr.ph22, label %.preheader, !dbg !632

.preheader:                                       ; preds = %307, %.lr.ph22, %.preheader7, %.preheader6
  %265 = phi i32 [ %241, %.preheader6 ], [ %241, %.preheader7 ], [ %301, %.lr.ph22 ], [ %337, %307 ]
  %266 = sext i32 %265 to i64, !dbg !633
  %267 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %266, !dbg !633
  %268 = load i32* %267, align 4, !dbg !633, !tbaa !388
  %269 = icmp sgt i32 %268, 0, !dbg !636
  br i1 %269, label %.lr.ph26, label %._crit_edge27, !dbg !637

.lr.ph26:                                         ; preds = %.preheader
  %270 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !638, !tbaa !400
  %271 = sext i32 %268 to i64, !dbg !637
  br label %343, !dbg !637

.lr.ph22:                                         ; preds = %.preheader6, %.lr.ph22
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph22 ], [ 0, %.preheader6 ]
  %272 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !640, !tbaa !400
  %273 = getelementptr inbounds %struct.t_complex* %272, i64 %indvars.iv73, !dbg !640
  %274 = getelementptr inbounds float* %charge, i64 %indvars.iv73, !dbg !641
  %275 = load float* %274, align 4, !dbg !641, !tbaa !423
  %276 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !642, !tbaa !400
  %277 = getelementptr inbounds %struct.t_complex* %276, i64 %indvars.iv73, !dbg !642
  %278 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !643, !tbaa !400
  %279 = getelementptr inbounds [3 x %struct.t_complex]** %278, i64 %indvars.iv79, !dbg !643
  %280 = load [3 x %struct.t_complex]** %279, align 8, !dbg !643, !tbaa !400
  %281 = getelementptr inbounds [3 x %struct.t_complex]* %280, i64 %indvars.iv73, i64 2, !dbg !643
  %282 = bitcast %struct.t_complex* %277 to <2 x float>*, !dbg !644
  %283 = load <2 x float>* %282, align 1, !dbg !644
  %284 = bitcast %struct.t_complex* %281 to <2 x float>*, !dbg !644
  %285 = load <2 x float>* %284, align 1, !dbg !644
  tail call void @llvm.dbg.value(metadata <2 x float> %283, i64 0, metadata !302, metadata !331), !dbg !645
  tail call void @llvm.dbg.value(metadata <2 x float> %285, i64 0, metadata !303, metadata !331), !dbg !647
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !302, metadata !331), !dbg !645
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !303, metadata !331), !dbg !647
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !304, metadata !331), !dbg !648
  %286 = extractelement <2 x float> %283, i32 0, !dbg !649
  %287 = extractelement <2 x float> %285, i32 0, !dbg !650
  %288 = fmul float %286, %287, !dbg !651
  %289 = extractelement <2 x float> %283, i32 1, !dbg !652
  %290 = extractelement <2 x float> %285, i32 1, !dbg !653
  %291 = fmul float %289, %290, !dbg !654
  %292 = fsub float %288, %291, !dbg !655
  tail call void @llvm.dbg.value(metadata float %292, i64 0, metadata !304, metadata !508), !dbg !648
  %293 = fmul float %286, %290, !dbg !656
  %294 = fmul float %289, %287, !dbg !657
  %295 = fadd float %293, %294, !dbg !658
  tail call void @llvm.dbg.value(metadata float %295, i64 0, metadata !304, metadata !512), !dbg !648
  tail call void @llvm.dbg.value(metadata float %275, i64 0, metadata !314, metadata !331), !dbg !659
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !315, metadata !331), !dbg !661
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !316, metadata !331), !dbg !662
  %296 = fmul float %275, %292, !dbg !663
  tail call void @llvm.dbg.value(metadata float %296, i64 0, metadata !316, metadata !508), !dbg !662
  %297 = fmul float %275, %295, !dbg !664
  tail call void @llvm.dbg.value(metadata float %297, i64 0, metadata !316, metadata !512), !dbg !662
  %298 = insertelement <2 x float> undef, float %296, i32 0, !dbg !665
  %299 = insertelement <2 x float> %298, float %297, i32 1, !dbg !665
  %300 = bitcast %struct.t_complex* %273 to <2 x float>*, !dbg !666
  store <2 x float> %299, <2 x float>* %300, align 4, !dbg !666
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1, !dbg !632
  %301 = load i32* %.pre-phi, align 4, !dbg !623, !tbaa !407
  %302 = sext i32 %301 to i64, !dbg !623
  %303 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %302, !dbg !623
  %304 = load i32* %303, align 4, !dbg !623, !tbaa !388
  %305 = sext i32 %304 to i64, !dbg !626
  %306 = icmp slt i64 %indvars.iv.next74, %305, !dbg !626
  br i1 %306, label %.lr.ph22, label %.preheader, !dbg !632

; <label>:307                                     ; preds = %.lr.ph20, %307
  %indvars.iv71 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next72, %307 ]
  %308 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !667, !tbaa !400
  %309 = getelementptr inbounds %struct.t_complex* %308, i64 %indvars.iv71, !dbg !667
  %310 = getelementptr inbounds float* %charge, i64 %indvars.iv71, !dbg !668
  %311 = load float* %310, align 4, !dbg !668, !tbaa !423
  %312 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !669, !tbaa !400
  %313 = getelementptr inbounds %struct.t_complex* %312, i64 %indvars.iv71, !dbg !669
  %314 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !670, !tbaa !400
  %315 = getelementptr inbounds [3 x %struct.t_complex]** %314, i64 %264, !dbg !670
  %316 = load [3 x %struct.t_complex]** %315, align 8, !dbg !670, !tbaa !400
  %317 = getelementptr inbounds [3 x %struct.t_complex]* %316, i64 %indvars.iv71, i64 2, !dbg !670
  %318 = bitcast %struct.t_complex* %313 to <2 x float>*, !dbg !671
  %319 = load <2 x float>* %318, align 1, !dbg !671
  %320 = bitcast %struct.t_complex* %317 to <2 x float>*, !dbg !671
  %321 = load <2 x float>* %320, align 1, !dbg !671
  tail call void @llvm.dbg.value(metadata <2 x float> %319, i64 0, metadata !307, metadata !331), !dbg !672
  tail call void @llvm.dbg.value(metadata <2 x float> %321, i64 0, metadata !308, metadata !331), !dbg !674
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !307, metadata !331), !dbg !672
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !308, metadata !331), !dbg !674
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !309, metadata !331), !dbg !675
  %322 = extractelement <2 x float> %319, i32 0, !dbg !676
  %323 = extractelement <2 x float> %321, i32 0, !dbg !677
  %324 = fmul float %322, %323, !dbg !678
  %325 = extractelement <2 x float> %319, i32 1, !dbg !679
  %326 = extractelement <2 x float> %321, i32 1, !dbg !680
  %327 = fmul float %325, %326, !dbg !681
  %328 = fadd float %324, %327, !dbg !682
  tail call void @llvm.dbg.value(metadata float %328, i64 0, metadata !309, metadata !508), !dbg !675
  %329 = fmul float %325, %323, !dbg !683
  %330 = fmul float %322, %326, !dbg !684
  %331 = fsub float %329, %330, !dbg !685
  tail call void @llvm.dbg.value(metadata float %331, i64 0, metadata !309, metadata !512), !dbg !675
  tail call void @llvm.dbg.value(metadata float %311, i64 0, metadata !314, metadata !331), !dbg !686
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !315, metadata !331), !dbg !688
  tail call void @llvm.dbg.declare(metadata %struct.t_complex* undef, metadata !316, metadata !331), !dbg !689
  %332 = fmul float %311, %328, !dbg !690
  tail call void @llvm.dbg.value(metadata float %332, i64 0, metadata !316, metadata !508), !dbg !689
  %333 = fmul float %311, %331, !dbg !691
  tail call void @llvm.dbg.value(metadata float %333, i64 0, metadata !316, metadata !512), !dbg !689
  %334 = insertelement <2 x float> undef, float %332, i32 0, !dbg !692
  %335 = insertelement <2 x float> %334, float %333, i32 1, !dbg !692
  %336 = bitcast %struct.t_complex* %309 to <2 x float>*, !dbg !693
  store <2 x float> %335, <2 x float>* %336, align 4, !dbg !693
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1, !dbg !628
  %337 = load i32* %.pre-phi, align 4, !dbg !694, !tbaa !407
  %338 = sext i32 %337 to i64, !dbg !694
  %339 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %338, !dbg !694
  %340 = load i32* %339, align 4, !dbg !694, !tbaa !388
  %341 = sext i32 %340 to i64, !dbg !695
  %342 = icmp slt i64 %indvars.iv.next72, %341, !dbg !695
  br i1 %342, label %307, label %.preheader, !dbg !628

; <label>:343                                     ; preds = %.lr.ph26, %343
  %indvars.iv75 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next76, %343 ]
  %344 = phi <2 x float> [ zeroinitializer, %.lr.ph26 ], [ %348, %343 ]
  %345 = getelementptr inbounds %struct.t_complex* %270, i64 %indvars.iv75, i32 0, !dbg !696
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !253, metadata !331), !dbg !697
  %346 = bitcast float* %345 to <2 x float>*, !dbg !696
  %347 = load <2 x float>* %346, align 4, !dbg !696, !tbaa !423
  %348 = fadd <2 x float> %344, %347, !dbg !698
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !254, metadata !331), !dbg !699
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1, !dbg !637
  %349 = icmp slt i64 %indvars.iv.next76, %271, !dbg !636
  br i1 %349, label %343, label %._crit_edge27, !dbg !637

._crit_edge27:                                    ; preds = %343, %.preheader
  %350 = phi <2 x float> [ zeroinitializer, %.preheader ], [ %348, %343 ]
  %351 = extractelement <2 x float> %350, i32 0, !dbg !700
  %352 = fmul float %351, %351, !dbg !700
  %353 = extractelement <2 x float> %350, i32 1, !dbg !701
  %354 = fmul float %353, %353, !dbg !701
  %355 = fadd float %354, %352, !dbg !702
  %356 = fmul float %252, %355, !dbg !703
  %357 = fadd float %energy.234, %356, !dbg !704
  tail call void @llvm.dbg.value(metadata float %357, i64 0, metadata !244, metadata !331), !dbg !705
  %358 = fmul float %258, %355, !dbg !706
  tail call void @llvm.dbg.value(metadata float %358, i64 0, metadata !252, metadata !331), !dbg !707
  %359 = fmul float %153, %358, !dbg !708
  %360 = fmul float %153, %359, !dbg !709
  %361 = load float* %144, align 4, !dbg !710, !tbaa !423
  %362 = fsub float %361, %360, !dbg !710
  store float %362, float* %144, align 4, !dbg !710, !tbaa !423
  %363 = fmul float %161, %359, !dbg !711
  %364 = load float* %145, align 4, !dbg !712, !tbaa !423
  %365 = fsub float %364, %363, !dbg !712
  store float %365, float* %145, align 4, !dbg !712, !tbaa !423
  %366 = fmul float %244, %359, !dbg !713
  %367 = load float* %146, align 4, !dbg !714, !tbaa !423
  %368 = fsub float %367, %366, !dbg !714
  store float %368, float* %146, align 4, !dbg !714, !tbaa !423
  %369 = fmul float %161, %358, !dbg !715
  %370 = fmul float %161, %369, !dbg !716
  %371 = load float* %147, align 4, !dbg !717, !tbaa !423
  %372 = fsub float %371, %370, !dbg !717
  store float %372, float* %147, align 4, !dbg !717, !tbaa !423
  %373 = fmul float %244, %369, !dbg !718
  %374 = load float* %148, align 4, !dbg !719, !tbaa !423
  %375 = fsub float %374, %373, !dbg !719
  store float %375, float* %148, align 4, !dbg !719, !tbaa !423
  %376 = fmul float %244, %358, !dbg !720
  %377 = fmul float %244, %376, !dbg !721
  %378 = load float* %149, align 4, !dbg !722, !tbaa !423
  %379 = fsub float %378, %377, !dbg !722
  store float %379, float* %149, align 4, !dbg !722, !tbaa !423
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !331), !dbg !401
  br i1 %269, label %.lr.ph31, label %._crit_edge32, !dbg !723

.lr.ph31:                                         ; preds = %._crit_edge27
  %380 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !725, !tbaa !400
  %381 = sext i32 %268 to i64, !dbg !723
  br label %382, !dbg !723

; <label>:382                                     ; preds = %.lr.ph31, %382
  %indvars.iv77 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next78, %382 ]
  %383 = getelementptr inbounds %struct.t_complex* %380, i64 %indvars.iv77, i32 1, !dbg !728
  %384 = load float* %383, align 4, !dbg !728, !tbaa !476
  %385 = fmul float %351, %384, !dbg !729
  %386 = getelementptr inbounds %struct.t_complex* %380, i64 %indvars.iv77, i32 0, !dbg !730
  %387 = load float* %386, align 4, !dbg !730, !tbaa !472
  %388 = fmul float %353, %387, !dbg !731
  %389 = fsub float %385, %388, !dbg !732
  %390 = fmul float %252, %389, !dbg !733
  tail call void @llvm.dbg.value(metadata float %390, i64 0, metadata !252, metadata !331), !dbg !707
  %391 = fmul float %153, %390, !dbg !734
  %392 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv77, i64 0, !dbg !735
  %393 = load float* %392, align 4, !dbg !736, !tbaa !423
  %394 = fadd float %393, %391, !dbg !736
  store float %394, float* %392, align 4, !dbg !736, !tbaa !423
  %395 = fmul float %161, %390, !dbg !737
  %396 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv77, i64 1, !dbg !738
  %397 = load float* %396, align 4, !dbg !739, !tbaa !423
  %398 = fadd float %397, %395, !dbg !739
  store float %398, float* %396, align 4, !dbg !739, !tbaa !423
  %399 = fmul float %244, %390, !dbg !740
  %400 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv77, i64 2, !dbg !741
  %401 = load float* %400, align 4, !dbg !742, !tbaa !423
  %402 = fadd float %401, %399, !dbg !742
  store float %402, float* %400, align 4, !dbg !742, !tbaa !423
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1, !dbg !723
  %403 = icmp slt i64 %indvars.iv.next78, %381, !dbg !743
  br i1 %403, label %382, label %._crit_edge32, !dbg !723

._crit_edge32:                                    ; preds = %382, %._crit_edge27
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1, !dbg !559
  %404 = sext i32 %170 to i64, !dbg !558
  %405 = icmp slt i64 %indvars.iv.next80, %404, !dbg !558
  br i1 %405, label %240, label %._crit_edge36, !dbg !559

._crit_edge36:                                    ; preds = %._crit_edge32
  %406 = sub nsw i32 1, %170, !dbg !744
  br label %407, !dbg !559

; <label>:407                                     ; preds = %._crit_edge36, %.preheader9
  %energy.2.lcssa = phi float [ %357, %._crit_edge36 ], [ %energy.142, %.preheader9 ]
  %lowiz.2.lcssa = phi i32 [ %406, %._crit_edge36 ], [ %lowiz.141, %.preheader9 ]
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1, !dbg !540
  %408 = sext i32 %154 to i64, !dbg !539
  %409 = icmp slt i64 %indvars.iv.next82, %408, !dbg !539
  br i1 %409, label %158, label %._crit_edge45, !dbg !540

._crit_edge45:                                    ; preds = %407
  %410 = sub nsw i32 1, %154, !dbg !745
  br label %tabulate_eir.exit, !dbg !540

tabulate_eir.exit:                                ; preds = %._crit_edge45, %150
  %energy.1.lcssa = phi float [ %energy.2.lcssa, %._crit_edge45 ], [ %energy.053, %150 ]
  %lowiy.1.lcssa = phi i32 [ %410, %._crit_edge45 ], [ %lowiy.052, %150 ]
  %lowiz.1.lcssa = phi i32 [ %lowiz.2.lcssa, %._crit_edge45 ], [ %lowiz.051, %150 ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1, !dbg !518
  %411 = sext i32 %140 to i64, !dbg !517
  %412 = icmp slt i64 %indvars.iv.next84, %411, !dbg !517
  br i1 %412, label %150, label %tabulate_eir.exit._crit_edge, !dbg !518

tabulate_eir.exit._crit_edge:                     ; preds = %tabulate_eir.exit, %tabulate_eir.exit.preheader
  %energy.0.lcssa = phi float [ 0.000000e+00, %tabulate_eir.exit.preheader ], [ %energy.1.lcssa, %tabulate_eir.exit ]
  %413 = load float* %box, align 4, !dbg !746, !tbaa !423
  %414 = load float* %65, align 4, !dbg !747, !tbaa !423
  %415 = fmul float %413, %414, !dbg !748
  %416 = load float* %71, align 4, !dbg !749, !tbaa !423
  %417 = fmul float %415, %416, !dbg !750
  %418 = fpext float %417 to double, !dbg !751
  %419 = fdiv double 0x402921FB54442D18, %418, !dbg !752
  %420 = fmul double %419, 3.320636e+02, !dbg !753
  %421 = fmul double %420, 4.184000e+00, !dbg !754
  %422 = fmul double %421, 1.000000e-01, !dbg !754
  %423 = fptrunc double %422 to float, !dbg !755
  tail call void @llvm.dbg.value(metadata float %423, i64 0, metadata !252, metadata !331), !dbg !707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !331), !dbg !401
  %424 = load i32* %.pre-phi, align 4, !dbg !756, !tbaa !407
  %425 = sext i32 %424 to i64, !dbg !756
  %426 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %425, !dbg !756
  %427 = load i32* %426, align 4, !dbg !756, !tbaa !388
  %428 = icmp sgt i32 %427, 0, !dbg !759
  br i1 %428, label %.lr.ph, label %._crit_edge, !dbg !760

.lr.ph:                                           ; preds = %tabulate_eir.exit._crit_edge
  %429 = fmul float %423, 2.000000e+00, !dbg !761
  %430 = sext i32 %427 to i64, !dbg !760
  br label %431, !dbg !760

; <label>:431                                     ; preds = %.lr.ph, %431
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %431 ]
  %432 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !763
  %433 = load float* %432, align 4, !dbg !764, !tbaa !423
  %434 = fmul float %429, %433, !dbg !764
  store float %434, float* %432, align 4, !dbg !764, !tbaa !423
  %435 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1, !dbg !765
  %436 = load float* %435, align 4, !dbg !766, !tbaa !423
  %437 = fmul float %429, %436, !dbg !766
  store float %437, float* %435, align 4, !dbg !766, !tbaa !423
  %438 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2, !dbg !767
  %439 = load float* %438, align 4, !dbg !768, !tbaa !423
  %440 = fmul float %429, %439, !dbg !768
  store float %440, float* %438, align 4, !dbg !768, !tbaa !423
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !760
  %441 = icmp slt i64 %indvars.iv.next, %430, !dbg !759
  br i1 %441, label %431, label %._crit_edge, !dbg !760

._crit_edge:                                      ; preds = %431, %tabulate_eir.exit._crit_edge
  %442 = fpext float %423 to double, !dbg !769
  %443 = fmul double %442, -5.000000e-01, !dbg !770
  %444 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0, !dbg !771
  %445 = load float* %444, align 4, !dbg !771, !tbaa !423
  %446 = fadd float %energy.0.lcssa, %445, !dbg !772
  %447 = fpext float %446 to double, !dbg !773
  %448 = fmul double %443, %447, !dbg !774
  %449 = fptrunc double %448 to float, !dbg !775
  store float %449, float* %444, align 4, !dbg !776, !tbaa !423
  %450 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1, !dbg !777
  %451 = load float* %450, align 4, !dbg !777, !tbaa !423
  %452 = fpext float %451 to double, !dbg !778
  %453 = fmul double %443, %452, !dbg !779
  %454 = fptrunc double %453 to float, !dbg !780
  store float %454, float* %450, align 4, !dbg !781, !tbaa !423
  %455 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2, !dbg !782
  %456 = load float* %455, align 4, !dbg !782, !tbaa !423
  %457 = fpext float %456 to double, !dbg !783
  %458 = fmul double %443, %457, !dbg !784
  %459 = fptrunc double %458 to float, !dbg !785
  store float %459, float* %455, align 4, !dbg !786, !tbaa !423
  %460 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1, !dbg !787
  %461 = load float* %460, align 4, !dbg !787, !tbaa !423
  %462 = fadd float %energy.0.lcssa, %461, !dbg !788
  %463 = fpext float %462 to double, !dbg !789
  %464 = fmul double %443, %463, !dbg !790
  %465 = fptrunc double %464 to float, !dbg !791
  store float %465, float* %460, align 4, !dbg !792, !tbaa !423
  %466 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2, !dbg !793
  %467 = load float* %466, align 4, !dbg !793, !tbaa !423
  %468 = fpext float %467 to double, !dbg !794
  %469 = fmul double %443, %468, !dbg !795
  %470 = fptrunc double %469 to float, !dbg !796
  store float %470, float* %466, align 4, !dbg !797, !tbaa !423
  %471 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2, !dbg !798
  %472 = load float* %471, align 4, !dbg !798, !tbaa !423
  %473 = fadd float %energy.0.lcssa, %472, !dbg !799
  %474 = fpext float %473 to double, !dbg !800
  %475 = fmul double %443, %474, !dbg !801
  %476 = fptrunc double %475 to float, !dbg !802
  store float %476, float* %471, align 4, !dbg !803, !tbaa !423
  %477 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 0, !dbg !804
  store float %454, float* %477, align 4, !dbg !804, !tbaa !423
  %478 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 0, !dbg !805
  store float %459, float* %478, align 4, !dbg !805, !tbaa !423
  %479 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 1, !dbg !806
  store float %470, float* %479, align 4, !dbg !807, !tbaa !423
  %480 = fmul float %energy.0.lcssa, %423, !dbg !808
  tail call void @llvm.dbg.value(metadata float %480, i64 0, metadata !244, metadata !331), !dbg !705
  ret float %480, !dbg !809
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #4

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!327, !328, !329}
!llvm.ident = !{!330}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !317, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !13, !261, !269, !276, !298, !305, !310}
!6 = !DISubprogram(name: "__sigbits", scope: !7, file: !7, line: 114, type: !8, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !11)
!7 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !6, file: !7, line: 114, type: !10)
!13 = !DISubprogram(name: "do_ewald", scope: !1, file: !1, line: 94, type: !14, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float)* @do_ewald, variables: !231)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !19, !10, !81, !182, !182, !178, !178, !200, !211, !230, !16}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !17, line: 87, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
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
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !83, line: 143, baseType: !84)
!83 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!84 = !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 55, size: 4736, align: 64, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !191, !199}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !84, file: !83, line: 56, baseType: !10, size: 32, align: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !84, file: !83, line: 57, baseType: !10, size: 32, align: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !84, file: !83, line: 58, baseType: !10, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !84, file: !83, line: 59, baseType: !10, size: 32, align: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !84, file: !83, line: 60, baseType: !10, size: 32, align: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !84, file: !83, line: 61, baseType: !10, size: 32, align: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !84, file: !83, line: 62, baseType: !10, size: 32, align: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !84, file: !83, line: 63, baseType: !10, size: 32, align: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !84, file: !83, line: 65, baseType: !10, size: 32, align: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !84, file: !83, line: 66, baseType: !10, size: 32, align: 32, offset: 288)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !84, file: !83, line: 67, baseType: !10, size: 32, align: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !84, file: !83, line: 68, baseType: !10, size: 32, align: 32, offset: 352)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !84, file: !83, line: 69, baseType: !10, size: 32, align: 32, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !84, file: !83, line: 70, baseType: !10, size: 32, align: 32, offset: 416)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !84, file: !83, line: 71, baseType: !16, size: 32, align: 32, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !84, file: !83, line: 72, baseType: !16, size: 32, align: 32, offset: 480)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !84, file: !83, line: 73, baseType: !16, size: 32, align: 32, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !84, file: !83, line: 74, baseType: !10, size: 32, align: 32, offset: 544)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !84, file: !83, line: 74, baseType: !10, size: 32, align: 32, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !84, file: !83, line: 74, baseType: !10, size: 32, align: 32, offset: 608)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !84, file: !83, line: 76, baseType: !10, size: 32, align: 32, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !84, file: !83, line: 77, baseType: !16, size: 32, align: 32, offset: 672)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !84, file: !83, line: 79, baseType: !10, size: 32, align: 32, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !84, file: !83, line: 80, baseType: !10, size: 32, align: 32, offset: 736)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !84, file: !83, line: 81, baseType: !10, size: 32, align: 32, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !84, file: !83, line: 82, baseType: !10, size: 32, align: 32, offset: 800)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !84, file: !83, line: 83, baseType: !10, size: 32, align: 32, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !84, file: !83, line: 84, baseType: !10, size: 32, align: 32, offset: 864)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !84, file: !83, line: 85, baseType: !10, size: 32, align: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !84, file: !83, line: 86, baseType: !10, size: 32, align: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !84, file: !83, line: 87, baseType: !16, size: 32, align: 32, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !84, file: !83, line: 88, baseType: !118, size: 288, align: 32, offset: 992)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !17, line: 105, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 288, align: 32, elements: !120)
!120 = !{!73, !73}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !84, file: !83, line: 89, baseType: !118, size: 288, align: 32, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !84, file: !83, line: 90, baseType: !10, size: 32, align: 32, offset: 1568)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !84, file: !83, line: 91, baseType: !16, size: 32, align: 32, offset: 1600)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !84, file: !83, line: 92, baseType: !16, size: 32, align: 32, offset: 1632)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !84, file: !83, line: 93, baseType: !10, size: 32, align: 32, offset: 1664)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !84, file: !83, line: 94, baseType: !16, size: 32, align: 32, offset: 1696)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !84, file: !83, line: 95, baseType: !16, size: 32, align: 32, offset: 1728)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !84, file: !83, line: 96, baseType: !10, size: 32, align: 32, offset: 1760)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !84, file: !83, line: 97, baseType: !16, size: 32, align: 32, offset: 1792)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !84, file: !83, line: 98, baseType: !16, size: 32, align: 32, offset: 1824)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !84, file: !83, line: 99, baseType: !16, size: 32, align: 32, offset: 1856)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !84, file: !83, line: 100, baseType: !10, size: 32, align: 32, offset: 1888)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !84, file: !83, line: 101, baseType: !16, size: 32, align: 32, offset: 1920)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !84, file: !83, line: 102, baseType: !16, size: 32, align: 32, offset: 1952)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !84, file: !83, line: 103, baseType: !10, size: 32, align: 32, offset: 1984)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !84, file: !83, line: 104, baseType: !16, size: 32, align: 32, offset: 2016)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !84, file: !83, line: 105, baseType: !16, size: 32, align: 32, offset: 2048)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !84, file: !83, line: 106, baseType: !16, size: 32, align: 32, offset: 2080)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !84, file: !83, line: 107, baseType: !16, size: 32, align: 32, offset: 2112)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !84, file: !83, line: 108, baseType: !16, size: 32, align: 32, offset: 2144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !84, file: !83, line: 109, baseType: !10, size: 32, align: 32, offset: 2176)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !84, file: !83, line: 110, baseType: !10, size: 32, align: 32, offset: 2208)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !84, file: !83, line: 111, baseType: !10, size: 32, align: 32, offset: 2240)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !84, file: !83, line: 112, baseType: !16, size: 32, align: 32, offset: 2272)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !84, file: !83, line: 113, baseType: !16, size: 32, align: 32, offset: 2304)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !84, file: !83, line: 114, baseType: !16, size: 32, align: 32, offset: 2336)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !84, file: !83, line: 115, baseType: !10, size: 32, align: 32, offset: 2368)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !84, file: !83, line: 116, baseType: !16, size: 32, align: 32, offset: 2400)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !84, file: !83, line: 117, baseType: !16, size: 32, align: 32, offset: 2432)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !84, file: !83, line: 118, baseType: !10, size: 32, align: 32, offset: 2464)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !84, file: !83, line: 120, baseType: !10, size: 32, align: 32, offset: 2496)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !84, file: !83, line: 122, baseType: !10, size: 32, align: 32, offset: 2528)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !84, file: !83, line: 124, baseType: !10, size: 32, align: 32, offset: 2560)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !84, file: !83, line: 125, baseType: !10, size: 32, align: 32, offset: 2592)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !84, file: !83, line: 126, baseType: !16, size: 32, align: 32, offset: 2624)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !84, file: !83, line: 127, baseType: !10, size: 32, align: 32, offset: 2656)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !84, file: !83, line: 128, baseType: !16, size: 32, align: 32, offset: 2688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !84, file: !83, line: 129, baseType: !16, size: 32, align: 32, offset: 2720)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !84, file: !83, line: 130, baseType: !10, size: 32, align: 32, offset: 2752)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !84, file: !83, line: 131, baseType: !16, size: 32, align: 32, offset: 2784)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !84, file: !83, line: 132, baseType: !10, size: 32, align: 32, offset: 2816)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !84, file: !83, line: 133, baseType: !10, size: 32, align: 32, offset: 2848)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !84, file: !83, line: 134, baseType: !10, size: 32, align: 32, offset: 2880)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !84, file: !83, line: 135, baseType: !10, size: 32, align: 32, offset: 2912)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !84, file: !83, line: 136, baseType: !16, size: 32, align: 32, offset: 2944)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !84, file: !83, line: 137, baseType: !16, size: 32, align: 32, offset: 2976)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !84, file: !83, line: 138, baseType: !16, size: 32, align: 32, offset: 3008)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !84, file: !83, line: 139, baseType: !16, size: 32, align: 32, offset: 3040)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !84, file: !83, line: 140, baseType: !170, size: 512, align: 64, offset: 3072)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !83, line: 53, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 42, size: 512, align: 64, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !179, !180, !181, !185, !189}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !171, file: !83, line: 43, baseType: !10, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !171, file: !83, line: 44, baseType: !10, size: 32, align: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !171, file: !83, line: 45, baseType: !10, size: 32, align: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !171, file: !83, line: 46, baseType: !10, size: 32, align: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !171, file: !83, line: 47, baseType: !178, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !171, file: !83, line: 48, baseType: !178, size: 64, align: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !171, file: !83, line: 49, baseType: !178, size: 64, align: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !171, file: !83, line: 50, baseType: !182, size: 64, align: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !17, line: 101, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 96, align: 32, elements: !72)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !171, file: !83, line: 51, baseType: !186, size: 64, align: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !17, line: 107, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, align: 32, elements: !72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !171, file: !83, line: 52, baseType: !190, size: 64, align: 64, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !84, file: !83, line: 141, baseType: !192, size: 576, align: 64, offset: 3584)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 576, align: 64, elements: !72)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !83, line: 40, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 36, size: 192, align: 64, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !194, file: !83, line: 37, baseType: !10, size: 32, align: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !194, file: !83, line: 38, baseType: !178, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !194, file: !83, line: 39, baseType: !178, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !84, file: !83, line: 142, baseType: !192, size: 576, align: 64, offset: 4160)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !202, line: 40, baseType: !203)
!202 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!203 = !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 36, size: 192, align: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !203, file: !202, line: 37, baseType: !10, size: 32, align: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !203, file: !202, line: 37, baseType: !10, size: 32, align: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !203, file: !202, line: 38, baseType: !10, size: 32, align: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !203, file: !202, line: 38, baseType: !10, size: 32, align: 32, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !203, file: !202, line: 39, baseType: !10, size: 32, align: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !203, file: !202, line: 39, baseType: !10, size: 32, align: 32, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nsborder", file: !213, line: 59, baseType: !214)
!213 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!214 = !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 36, size: 32992, align: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !227, !228, !229}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !214, file: !213, line: 37, baseType: !10, size: 32, align: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !214, file: !213, line: 38, baseType: !10, size: 32, align: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cgtotal", scope: !214, file: !213, line: 39, baseType: !10, size: 32, align: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !214, file: !213, line: 40, baseType: !10, size: 32, align: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nstDlb", scope: !214, file: !213, line: 41, baseType: !10, size: 32, align: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !214, file: !213, line: 43, baseType: !10, size: 32, align: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !214, file: !213, line: 43, baseType: !10, size: 32, align: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "homenr", scope: !214, file: !213, line: 50, baseType: !224, size: 8192, align: 32, offset: 224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, align: 32, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !214, file: !213, line: 51, baseType: !224, size: 8192, align: 32, offset: 8416)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cgload", scope: !214, file: !213, line: 52, baseType: !224, size: 8192, align: 32, offset: 16608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "workload", scope: !214, file: !213, line: 55, baseType: !224, size: 8192, align: 32, offset: 24800)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !13, file: !1, line: 94, type: !19)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerbose", arg: 2, scope: !13, file: !1, line: 94, type: !10)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 3, scope: !13, file: !1, line: 95, type: !81)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !13, file: !1, line: 96, type: !182)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !13, file: !1, line: 96, type: !182)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "charge", arg: 6, scope: !13, file: !1, line: 97, type: !178)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !13, file: !1, line: 97, type: !178)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 8, scope: !13, file: !1, line: 98, type: !200)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 9, scope: !13, file: !1, line: 98, type: !211)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lrvir", arg: 10, scope: !13, file: !1, line: 99, type: !230)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ewaldcoeff", arg: 11, scope: !13, file: !1, line: 99, type: !16)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !13, file: !1, line: 105, type: !16)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "energy", scope: !13, file: !1, line: 106, type: !16)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lll", scope: !13, file: !1, line: 107, type: !183)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lowiy", scope: !13, file: !1, line: 108, type: !10)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lowiz", scope: !13, file: !1, line: 108, type: !10)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !13, file: !1, line: 108, type: !10)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iy", scope: !13, file: !1, line: 108, type: !10)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iz", scope: !13, file: !1, line: 108, type: !10)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !13, file: !1, line: 108, type: !10)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !13, file: !1, line: 109, type: !16)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cs", scope: !13, file: !1, line: 109, type: !16)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ss", scope: !13, file: !1, line: 109, type: !16)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ak", scope: !13, file: !1, line: 109, type: !16)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "akv", scope: !13, file: !1, line: 109, type: !16)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mx", scope: !13, file: !1, line: 109, type: !16)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "my", scope: !13, file: !1, line: 109, type: !16)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mz", scope: !13, file: !1, line: 109, type: !16)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m2", scope: !13, file: !1, line: 109, type: !16)
!261 = !DISubprogram(name: "clear_mat", scope: !262, file: !262, line: 334, type: !263, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !265)
!262 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!263 = !DISubroutineType(types: !264)
!264 = !{null, !230}
!265 = !{!266, !267}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !261, file: !262, line: 334, type: !230)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !261, file: !262, line: 336, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!269 = !DISubprogram(name: "calc_lll", scope: !270, file: !270, line: 90, type: !271, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, variables: !273)
!270 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shift_util.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!271 = !DISubroutineType(types: !272)
!272 = !{null, !178, !178}
!273 = !{!274, !275}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 1, scope: !269, file: !270, line: 90, type: !178)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lll", arg: 2, scope: !269, file: !270, line: 90, type: !178)
!276 = !DISubprogram(name: "tabulate_eir", scope: !1, file: !1, line: 66, type: !277, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, variables: !289)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !10, !182, !10, !279, !178}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "cvec", file: !282, line: 48, baseType: !283)
!282 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, align: 32, elements: !72)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_complex", file: !282, line: 46, baseType: !285)
!285 = !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 44, size: 64, align: 32, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "re", scope: !285, file: !282, line: 45, baseType: !16, size: 32, align: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !285, file: !282, line: 45, baseType: !16, size: 32, align: 32, offset: 32)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297}
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natom", arg: 1, scope: !276, file: !1, line: 66, type: !10)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !276, file: !1, line: 66, type: !182)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kmax", arg: 3, scope: !276, file: !1, line: 66, type: !10)
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eir", arg: 4, scope: !276, file: !1, line: 66, type: !279)
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lll", arg: 5, scope: !276, file: !1, line: 66, type: !178)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !276, file: !1, line: 68, type: !10)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !276, file: !1, line: 68, type: !10)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !276, file: !1, line: 68, type: !10)
!298 = !DISubprogram(name: "cmul", scope: !282, file: !282, line: 93, type: !299, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, variables: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!284, !284, !284}
!301 = !{!302, !303, !304}
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !298, file: !282, line: 93, type: !284)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !298, file: !282, line: 93, type: !284)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !298, file: !282, line: 95, type: !284)
!305 = !DISubprogram(name: "conjmul", scope: !1, file: !1, line: 53, type: !299, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, variables: !306)
!306 = !{!307, !308, !309}
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !305, file: !1, line: 53, type: !284)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !305, file: !1, line: 53, type: !284)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !305, file: !1, line: 55, type: !284)
!310 = !DISubprogram(name: "rcmul", scope: !282, file: !282, line: 52, type: !311, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, variables: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{!284, !16, !284}
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !310, file: !282, line: 52, type: !16)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !310, file: !282, line: 52, type: !284)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !310, file: !282, line: 54, type: !284)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !326}
!318 = !DIGlobalVariable(name: "bFirst", scope: !13, file: !1, line: 101, type: !10, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariable(name: "nx", scope: !13, file: !1, line: 102, type: !10, isLocal: true, isDefinition: true, variable: i32* @do_ewald.nx)
!320 = !DIGlobalVariable(name: "ny", scope: !13, file: !1, line: 102, type: !10, isLocal: true, isDefinition: true, variable: i32* @do_ewald.ny)
!321 = !DIGlobalVariable(name: "nz", scope: !13, file: !1, line: 102, type: !10, isLocal: true, isDefinition: true, variable: i32* @do_ewald.nz)
!322 = !DIGlobalVariable(name: "kmax", scope: !13, file: !1, line: 102, type: !10, isLocal: true, isDefinition: true, variable: i32* @do_ewald.kmax)
!323 = !DIGlobalVariable(name: "eir", scope: !13, file: !1, line: 103, type: !279, isLocal: true, isDefinition: true, variable: [3 x %struct.t_complex]*** @do_ewald.eir)
!324 = !DIGlobalVariable(name: "tab_xy", scope: !13, file: !1, line: 104, type: !325, isLocal: true, isDefinition: true, variable: %struct.t_complex** @do_ewald.tab_xy)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!326 = !DIGlobalVariable(name: "tab_qxyz", scope: !13, file: !1, line: 104, type: !325, isLocal: true, isDefinition: true, variable: %struct.t_complex** @do_ewald.tab_qxyz)
!327 = !{i32 2, !"Dwarf Version", i32 2}
!328 = !{i32 2, !"Debug Info Version", i32 700000003}
!329 = !{i32 1, !"PIC Level", i32 2}
!330 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!331 = !DIExpression()
!332 = !DILocation(line: 114, column: 15, scope: !6)
!333 = !DILocation(line: 116, column: 20, scope: !6)
!334 = !DILocation(line: 116, column: 12, scope: !6)
!335 = !DILocation(line: 116, column: 57, scope: !6)
!336 = !DILocation(line: 116, column: 45, scope: !6)
!337 = !DILocation(line: 116, column: 5, scope: !6)
!338 = !DILocation(line: 94, column: 21, scope: !13)
!339 = !DILocation(line: 94, column: 37, scope: !13)
!340 = !DILocation(line: 95, column: 20, scope: !13)
!341 = !DILocation(line: 96, column: 13, scope: !13)
!342 = !DILocation(line: 96, column: 30, scope: !13)
!343 = !DILocation(line: 97, column: 10, scope: !13)
!344 = !DILocation(line: 97, column: 27, scope: !13)
!345 = !DILocation(line: 98, column: 19, scope: !13)
!346 = !DILocation(line: 98, column: 41, scope: !13)
!347 = !DILocation(line: 99, column: 15, scope: !13)
!348 = !DILocation(line: 99, column: 27, scope: !13)
!349 = !DILocation(line: 105, column: 22, scope: !13)
!350 = !DILocation(line: 105, column: 33, scope: !13)
!351 = !DILocation(line: 105, column: 15, scope: !13)
!352 = !DILocation(line: 105, column: 8, scope: !13)
!353 = !DILocation(line: 107, column: 8, scope: !13)
!354 = !DILocation(line: 111, column: 7, scope: !13)
!355 = !DILocation(line: 135, column: 16, scope: !13)
!356 = !DILocation(line: 112, column: 11, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 112, column: 11)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 111, column: 15)
!359 = distinct !DILexicalBlock(scope: !13, file: !1, line: 111, column: 7)
!360 = !DILocation(line: 112, column: 11, scope: !358)
!361 = !DILocation(line: 113, column: 5, scope: !357)
!362 = !DILocation(line: 115, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !358, file: !1, line: 115, column: 9)
!364 = !DILocation(line: 115, column: 9, scope: !358)
!365 = !DILocation(line: 116, column: 15, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 116, column: 11)
!367 = distinct !DILexicalBlock(scope: !363, file: !1, line: 115, column: 21)
!368 = !{!369, !370, i64 4}
!369 = !{!"", !370, i64 0, !370, i64 4, !370, i64 8, !370, i64 12, !370, i64 16, !370, i64 20}
!370 = !{!"int", !371, i64 0}
!371 = !{!"omnipotent char", !372, i64 0}
!372 = !{!"Simple C/C++ TBAA"}
!373 = !DILocation(line: 116, column: 22, scope: !366)
!374 = !DILocation(line: 116, column: 26, scope: !366)
!375 = !DILocation(line: 116, column: 33, scope: !366)
!376 = !{!369, !370, i64 20}
!377 = !DILocation(line: 116, column: 41, scope: !366)
!378 = !DILocation(line: 116, column: 11, scope: !367)
!379 = !DILocation(line: 117, column: 2, scope: !366)
!380 = !DILocation(line: 120, column: 14, scope: !358)
!381 = !{!382, !370, i64 68}
!382 = !{!"", !370, i64 0, !370, i64 4, !370, i64 8, !370, i64 12, !370, i64 16, !370, i64 20, !370, i64 24, !370, i64 28, !370, i64 32, !370, i64 36, !370, i64 40, !370, i64 44, !370, i64 48, !370, i64 52, !383, i64 56, !383, i64 60, !383, i64 64, !370, i64 68, !370, i64 72, !370, i64 76, !370, i64 80, !383, i64 84, !370, i64 88, !370, i64 92, !370, i64 96, !370, i64 100, !370, i64 104, !370, i64 108, !370, i64 112, !370, i64 116, !383, i64 120, !371, i64 124, !371, i64 160, !370, i64 196, !383, i64 200, !383, i64 204, !370, i64 208, !383, i64 212, !383, i64 216, !370, i64 220, !383, i64 224, !383, i64 228, !383, i64 232, !370, i64 236, !383, i64 240, !383, i64 244, !370, i64 248, !383, i64 252, !383, i64 256, !383, i64 260, !383, i64 264, !383, i64 268, !370, i64 272, !370, i64 276, !370, i64 280, !383, i64 284, !383, i64 288, !383, i64 292, !370, i64 296, !383, i64 300, !383, i64 304, !370, i64 308, !370, i64 312, !370, i64 316, !370, i64 320, !370, i64 324, !383, i64 328, !370, i64 332, !383, i64 336, !383, i64 340, !370, i64 344, !383, i64 348, !370, i64 352, !370, i64 356, !370, i64 360, !370, i64 364, !383, i64 368, !383, i64 372, !383, i64 376, !383, i64 380, !384, i64 384, !371, i64 448, !371, i64 520}
!383 = !{!"float", !371, i64 0}
!384 = !{!"", !370, i64 0, !370, i64 4, !370, i64 8, !370, i64 12, !385, i64 16, !385, i64 24, !385, i64 32, !385, i64 40, !385, i64 48, !385, i64 56}
!385 = !{!"any pointer", !371, i64 0}
!386 = !DILocation(line: 120, column: 17, scope: !358)
!387 = !DILocation(line: 120, column: 8, scope: !358)
!388 = !{!370, !370, i64 0}
!389 = !DILocation(line: 121, column: 14, scope: !358)
!390 = !{!382, !370, i64 72}
!391 = !DILocation(line: 121, column: 17, scope: !358)
!392 = !DILocation(line: 121, column: 8, scope: !358)
!393 = !DILocation(line: 122, column: 14, scope: !358)
!394 = !{!382, !370, i64 76}
!395 = !DILocation(line: 122, column: 17, scope: !358)
!396 = !DILocation(line: 122, column: 8, scope: !358)
!397 = !DILocation(line: 123, column: 12, scope: !358)
!398 = !DILocation(line: 123, column: 10, scope: !358)
!399 = !DILocation(line: 124, column: 5, scope: !358)
!400 = !{!385, !385, i64 0}
!401 = !DILocation(line: 108, column: 29, scope: !13)
!402 = !DILocation(line: 125, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 125, column: 5)
!404 = distinct !DILexicalBlock(scope: !358, file: !1, line: 125, column: 5)
!405 = !DILocation(line: 125, column: 14, scope: !403)
!406 = !DILocation(line: 126, column: 7, scope: !403)
!407 = !{!408, !370, i64 0}
!408 = !{!"", !370, i64 0, !370, i64 4, !370, i64 8, !370, i64 12, !370, i64 16, !370, i64 20, !370, i64 24, !371, i64 28, !371, i64 1052, !371, i64 2076, !371, i64 3100}
!409 = !DILocation(line: 125, column: 5, scope: !404)
!410 = !DILocation(line: 127, column: 5, scope: !358)
!411 = !DILocation(line: 128, column: 5, scope: !358)
!412 = !DILocation(line: 130, column: 3, scope: !358)
!413 = !DILocation(line: 334, column: 37, scope: !261, inlinedAt: !414)
!414 = distinct !DILocation(line: 131, column: 3, scope: !13)
!415 = !DILocation(line: 336, column: 14, scope: !261, inlinedAt: !414)
!416 = !DILocation(line: 341, column: 1, scope: !261, inlinedAt: !414)
!417 = !DILocation(line: 338, column: 22, scope: !261, inlinedAt: !414)
!418 = !DILocation(line: 133, column: 16, scope: !13)
!419 = !DILocation(line: 90, column: 27, scope: !269, inlinedAt: !420)
!420 = distinct !DILocation(line: 133, column: 3, scope: !13)
!421 = !DILocation(line: 90, column: 36, scope: !269, inlinedAt: !420)
!422 = !DILocation(line: 92, column: 22, scope: !269, inlinedAt: !420)
!423 = !{!383, !383, i64 0}
!424 = !DILocation(line: 92, column: 21, scope: !269, inlinedAt: !420)
!425 = !DILocation(line: 92, column: 13, scope: !269, inlinedAt: !420)
!426 = !DILocation(line: 92, column: 11, scope: !269, inlinedAt: !420)
!427 = !DILocation(line: 93, column: 22, scope: !269, inlinedAt: !420)
!428 = !DILocation(line: 93, column: 21, scope: !269, inlinedAt: !420)
!429 = !DILocation(line: 93, column: 13, scope: !269, inlinedAt: !420)
!430 = !DILocation(line: 93, column: 3, scope: !269, inlinedAt: !420)
!431 = !DILocation(line: 93, column: 11, scope: !269, inlinedAt: !420)
!432 = !DILocation(line: 94, column: 22, scope: !269, inlinedAt: !420)
!433 = !DILocation(line: 94, column: 21, scope: !269, inlinedAt: !420)
!434 = !DILocation(line: 94, column: 13, scope: !269, inlinedAt: !420)
!435 = !DILocation(line: 94, column: 3, scope: !269, inlinedAt: !420)
!436 = !DILocation(line: 94, column: 11, scope: !269, inlinedAt: !420)
!437 = !DILocation(line: 135, column: 30, scope: !13)
!438 = !DILocation(line: 135, column: 35, scope: !13)
!439 = !DILocation(line: 66, column: 30, scope: !276, inlinedAt: !440)
!440 = distinct !DILocation(line: 135, column: 3, scope: !13)
!441 = !DILocation(line: 66, column: 41, scope: !276, inlinedAt: !440)
!442 = !DILocation(line: 66, column: 49, scope: !276, inlinedAt: !440)
!443 = !DILocation(line: 66, column: 61, scope: !276, inlinedAt: !440)
!444 = !DILocation(line: 66, column: 70, scope: !276, inlinedAt: !440)
!445 = !DILocation(line: 70, column: 12, scope: !446, inlinedAt: !440)
!446 = distinct !DILexicalBlock(scope: !276, file: !1, line: 70, column: 7)
!447 = !DILocation(line: 70, column: 7, scope: !276, inlinedAt: !440)
!448 = !DILocation(line: 75, column: 14, scope: !449, inlinedAt: !440)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 75, column: 3)
!450 = distinct !DILexicalBlock(scope: !276, file: !1, line: 75, column: 3)
!451 = !DILocation(line: 75, column: 3, scope: !450, inlinedAt: !440)
!452 = !DILocation(line: 82, column: 7, scope: !453, inlinedAt: !440)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 81, column: 26)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 81, column: 5)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 81, column: 5)
!456 = distinct !DILexicalBlock(scope: !449, file: !1, line: 75, column: 28)
!457 = !DILocation(line: 85, column: 16, scope: !458, inlinedAt: !440)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 85, column: 5)
!459 = distinct !DILexicalBlock(scope: !456, file: !1, line: 85, column: 5)
!460 = !DILocation(line: 71, column: 7, scope: !461, inlinedAt: !440)
!461 = distinct !DILexicalBlock(scope: !446, file: !1, line: 70, column: 17)
!462 = !DILocation(line: 72, column: 7, scope: !461, inlinedAt: !440)
!463 = !DILocation(line: 135, column: 3, scope: !13)
!464 = !DILocation(line: 77, column: 7, scope: !465, inlinedAt: !440)
!465 = distinct !DILexicalBlock(scope: !466, file: !1, line: 76, column: 26)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 76, column: 5)
!467 = distinct !DILexicalBlock(scope: !456, file: !1, line: 76, column: 5)
!468 = !DILocation(line: 76, column: 5, scope: !467, inlinedAt: !440)
!469 = !DILocation(line: 81, column: 5, scope: !455, inlinedAt: !440)
!470 = !DILocation(line: 77, column: 20, scope: !465, inlinedAt: !440)
!471 = !DILocation(line: 77, column: 23, scope: !465, inlinedAt: !440)
!472 = !{!473, !383, i64 0}
!473 = !{!"", !383, i64 0, !383, i64 4}
!474 = !DILocation(line: 78, column: 20, scope: !465, inlinedAt: !440)
!475 = !DILocation(line: 78, column: 23, scope: !465, inlinedAt: !440)
!476 = !{!473, !383, i64 4}
!477 = !DILocation(line: 85, column: 5, scope: !459, inlinedAt: !440)
!478 = !DILocation(line: 82, column: 29, scope: !453, inlinedAt: !440)
!479 = !DILocation(line: 82, column: 37, scope: !453, inlinedAt: !440)
!480 = !DILocation(line: 82, column: 36, scope: !453, inlinedAt: !440)
!481 = !DILocation(line: 82, column: 25, scope: !453, inlinedAt: !440)
!482 = !DILocation(line: 82, column: 20, scope: !453, inlinedAt: !440)
!483 = !DILocation(line: 82, column: 23, scope: !453, inlinedAt: !440)
!484 = !DILocation(line: 83, column: 29, scope: !453, inlinedAt: !440)
!485 = !DILocation(line: 83, column: 36, scope: !453, inlinedAt: !440)
!486 = !DILocation(line: 83, column: 25, scope: !453, inlinedAt: !440)
!487 = !DILocation(line: 83, column: 20, scope: !453, inlinedAt: !440)
!488 = !DILocation(line: 83, column: 23, scope: !453, inlinedAt: !440)
!489 = !DILocation(line: 87, column: 2, scope: !490, inlinedAt: !440)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 86, column: 7)
!491 = distinct !DILexicalBlock(scope: !458, file: !1, line: 86, column: 7)
!492 = !DILocation(line: 87, column: 27, scope: !490, inlinedAt: !440)
!493 = !DILocation(line: 87, column: 22, scope: !490, inlinedAt: !440)
!494 = !DILocation(line: 86, column: 7, scope: !491, inlinedAt: !440)
!495 = !DILocation(line: 87, column: 37, scope: !490, inlinedAt: !440)
!496 = !DILocation(line: 87, column: 17, scope: !490, inlinedAt: !440)
!497 = !DILocation(line: 93, column: 33, scope: !298, inlinedAt: !498)
!498 = distinct !DILocation(line: 87, column: 17, scope: !490, inlinedAt: !440)
!499 = !DILocation(line: 93, column: 45, scope: !298, inlinedAt: !498)
!500 = !DILocation(line: 95, column: 13, scope: !298, inlinedAt: !498)
!501 = !DILocation(line: 97, column: 12, scope: !298, inlinedAt: !498)
!502 = !DILocation(line: 97, column: 17, scope: !298, inlinedAt: !498)
!503 = !DILocation(line: 97, column: 14, scope: !298, inlinedAt: !498)
!504 = !DILocation(line: 97, column: 24, scope: !298, inlinedAt: !498)
!505 = !DILocation(line: 97, column: 29, scope: !298, inlinedAt: !498)
!506 = !DILocation(line: 97, column: 26, scope: !298, inlinedAt: !498)
!507 = !DILocation(line: 97, column: 20, scope: !298, inlinedAt: !498)
!508 = !DIExpression(DW_OP_bit_piece, 0, 32)
!509 = !DILocation(line: 98, column: 14, scope: !298, inlinedAt: !498)
!510 = !DILocation(line: 98, column: 26, scope: !298, inlinedAt: !498)
!511 = !DILocation(line: 98, column: 20, scope: !298, inlinedAt: !498)
!512 = !DIExpression(DW_OP_bit_piece, 32, 32)
!513 = !DILocation(line: 100, column: 10, scope: !298, inlinedAt: !498)
!514 = !DILocation(line: 140, column: 15, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 140, column: 3)
!516 = distinct !DILexicalBlock(scope: !13, file: !1, line: 140, column: 3)
!517 = !DILocation(line: 140, column: 14, scope: !515)
!518 = !DILocation(line: 140, column: 3, scope: !516)
!519 = !DILocation(line: 141, column: 11, scope: !520)
!520 = distinct !DILexicalBlock(scope: !515, file: !1, line: 140, column: 24)
!521 = !DILocation(line: 154, column: 21, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 150, column: 32)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 150, column: 7)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 150, column: 7)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 142, column: 30)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 142, column: 5)
!527 = distinct !DILexicalBlock(scope: !520, file: !1, line: 142, column: 5)
!528 = !DILocation(line: 169, column: 2, scope: !522)
!529 = !DILocation(line: 170, column: 2, scope: !522)
!530 = !DILocation(line: 171, column: 2, scope: !522)
!531 = !DILocation(line: 172, column: 2, scope: !522)
!532 = !DILocation(line: 173, column: 2, scope: !522)
!533 = !DILocation(line: 174, column: 2, scope: !522)
!534 = !DILocation(line: 141, column: 8, scope: !520)
!535 = !DILocation(line: 141, column: 10, scope: !520)
!536 = !DILocation(line: 109, column: 25, scope: !13)
!537 = !DILocation(line: 108, column: 23, scope: !13)
!538 = !DILocation(line: 142, column: 21, scope: !526)
!539 = !DILocation(line: 142, column: 20, scope: !526)
!540 = !DILocation(line: 142, column: 5, scope: !527)
!541 = !DILocation(line: 152, column: 7, scope: !522)
!542 = !DILocation(line: 143, column: 10, scope: !525)
!543 = !DILocation(line: 143, column: 12, scope: !525)
!544 = !DILocation(line: 109, column: 28, scope: !13)
!545 = !DILocation(line: 144, column: 12, scope: !546)
!546 = distinct !DILexicalBlock(scope: !525, file: !1, line: 144, column: 10)
!547 = !DILocation(line: 145, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 145, column: 2)
!549 = distinct !DILexicalBlock(scope: !546, file: !1, line: 145, column: 2)
!550 = !DILocation(line: 145, column: 11, scope: !548)
!551 = !DILocation(line: 144, column: 10, scope: !525)
!552 = !DILocation(line: 148, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !546, file: !1, line: 148, column: 2)
!554 = !DILocation(line: 149, column: 41, scope: !555)
!555 = distinct !DILexicalBlock(scope: !553, file: !1, line: 148, column: 2)
!556 = !DILocation(line: 145, column: 2, scope: !549)
!557 = !DILocation(line: 150, column: 23, scope: !523)
!558 = !DILocation(line: 150, column: 22, scope: !523)
!559 = !DILocation(line: 150, column: 7, scope: !524)
!560 = !DILocation(line: 152, column: 13, scope: !522)
!561 = !DILocation(line: 152, column: 10, scope: !522)
!562 = !DILocation(line: 146, column: 4, scope: !548)
!563 = !DILocation(line: 146, column: 19, scope: !548)
!564 = !DILocation(line: 146, column: 34, scope: !548)
!565 = !DILocation(line: 146, column: 14, scope: !548)
!566 = !DILocation(line: 93, column: 33, scope: !298, inlinedAt: !567)
!567 = distinct !DILocation(line: 146, column: 14, scope: !548)
!568 = !DILocation(line: 93, column: 45, scope: !298, inlinedAt: !567)
!569 = !DILocation(line: 95, column: 13, scope: !298, inlinedAt: !567)
!570 = !DILocation(line: 97, column: 12, scope: !298, inlinedAt: !567)
!571 = !DILocation(line: 97, column: 17, scope: !298, inlinedAt: !567)
!572 = !DILocation(line: 97, column: 14, scope: !298, inlinedAt: !567)
!573 = !DILocation(line: 97, column: 24, scope: !298, inlinedAt: !567)
!574 = !DILocation(line: 97, column: 29, scope: !298, inlinedAt: !567)
!575 = !DILocation(line: 97, column: 26, scope: !298, inlinedAt: !567)
!576 = !DILocation(line: 97, column: 20, scope: !298, inlinedAt: !567)
!577 = !DILocation(line: 98, column: 14, scope: !298, inlinedAt: !567)
!578 = !DILocation(line: 98, column: 26, scope: !298, inlinedAt: !567)
!579 = !DILocation(line: 98, column: 20, scope: !298, inlinedAt: !567)
!580 = !DILocation(line: 100, column: 10, scope: !298, inlinedAt: !567)
!581 = !DILocation(line: 149, column: 4, scope: !555)
!582 = !DILocation(line: 149, column: 22, scope: !555)
!583 = !DILocation(line: 149, column: 37, scope: !555)
!584 = !DILocation(line: 149, column: 14, scope: !555)
!585 = !DILocation(line: 53, column: 36, scope: !305, inlinedAt: !586)
!586 = distinct !DILocation(line: 149, column: 14, scope: !555)
!587 = !DILocation(line: 53, column: 48, scope: !305, inlinedAt: !586)
!588 = !DILocation(line: 55, column: 13, scope: !305, inlinedAt: !586)
!589 = !DILocation(line: 57, column: 12, scope: !305, inlinedAt: !586)
!590 = !DILocation(line: 57, column: 17, scope: !305, inlinedAt: !586)
!591 = !DILocation(line: 57, column: 14, scope: !305, inlinedAt: !586)
!592 = !DILocation(line: 57, column: 24, scope: !305, inlinedAt: !586)
!593 = !DILocation(line: 57, column: 29, scope: !305, inlinedAt: !586)
!594 = !DILocation(line: 57, column: 26, scope: !305, inlinedAt: !586)
!595 = !DILocation(line: 57, column: 20, scope: !305, inlinedAt: !586)
!596 = !DILocation(line: 58, column: 14, scope: !305, inlinedAt: !586)
!597 = !DILocation(line: 58, column: 26, scope: !305, inlinedAt: !586)
!598 = !DILocation(line: 58, column: 20, scope: !305, inlinedAt: !586)
!599 = !DILocation(line: 60, column: 10, scope: !305, inlinedAt: !586)
!600 = !DILocation(line: 148, column: 12, scope: !555)
!601 = !DILocation(line: 148, column: 11, scope: !555)
!602 = !DILocation(line: 151, column: 5, scope: !522)
!603 = !DILocation(line: 151, column: 7, scope: !522)
!604 = !DILocation(line: 109, column: 31, scope: !13)
!605 = !DILocation(line: 152, column: 19, scope: !522)
!606 = !DILocation(line: 152, column: 16, scope: !522)
!607 = !DILocation(line: 109, column: 34, scope: !13)
!608 = !DILocation(line: 153, column: 11, scope: !522)
!609 = !DILocation(line: 153, column: 9, scope: !522)
!610 = !DILocation(line: 153, column: 5, scope: !522)
!611 = !DILocation(line: 153, column: 20, scope: !522)
!612 = !DILocation(line: 153, column: 19, scope: !522)
!613 = !DILocation(line: 109, column: 18, scope: !13)
!614 = !DILocation(line: 154, column: 10, scope: !522)
!615 = !DILocation(line: 154, column: 9, scope: !522)
!616 = !DILocation(line: 154, column: 17, scope: !522)
!617 = !DILocation(line: 154, column: 20, scope: !522)
!618 = !DILocation(line: 154, column: 12, scope: !522)
!619 = !DILocation(line: 154, column: 6, scope: !522)
!620 = !DILocation(line: 109, column: 21, scope: !13)
!621 = !DILocation(line: 155, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !522, file: !1, line: 155, column: 5)
!623 = !DILocation(line: 156, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 156, column: 4)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 156, column: 4)
!626 = !DILocation(line: 156, column: 13, scope: !624)
!627 = !DILocation(line: 155, column: 5, scope: !522)
!628 = !DILocation(line: 159, column: 4, scope: !629)
!629 = distinct !DILexicalBlock(scope: !622, file: !1, line: 159, column: 4)
!630 = !DILocation(line: 160, column: 56, scope: !631)
!631 = distinct !DILexicalBlock(scope: !629, file: !1, line: 159, column: 4)
!632 = !DILocation(line: 156, column: 4, scope: !625)
!633 = !DILocation(line: 163, column: 12, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 163, column: 2)
!635 = distinct !DILexicalBlock(scope: !522, file: !1, line: 163, column: 2)
!636 = !DILocation(line: 163, column: 11, scope: !634)
!637 = !DILocation(line: 163, column: 2, scope: !635)
!638 = !DILocation(line: 164, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !1, line: 163, column: 29)
!640 = !DILocation(line: 157, column: 6, scope: !624)
!641 = !DILocation(line: 157, column: 24, scope: !624)
!642 = !DILocation(line: 157, column: 39, scope: !624)
!643 = !DILocation(line: 157, column: 49, scope: !624)
!644 = !DILocation(line: 157, column: 34, scope: !624)
!645 = !DILocation(line: 93, column: 33, scope: !298, inlinedAt: !646)
!646 = distinct !DILocation(line: 157, column: 34, scope: !624)
!647 = !DILocation(line: 93, column: 45, scope: !298, inlinedAt: !646)
!648 = !DILocation(line: 95, column: 13, scope: !298, inlinedAt: !646)
!649 = !DILocation(line: 97, column: 12, scope: !298, inlinedAt: !646)
!650 = !DILocation(line: 97, column: 17, scope: !298, inlinedAt: !646)
!651 = !DILocation(line: 97, column: 14, scope: !298, inlinedAt: !646)
!652 = !DILocation(line: 97, column: 24, scope: !298, inlinedAt: !646)
!653 = !DILocation(line: 97, column: 29, scope: !298, inlinedAt: !646)
!654 = !DILocation(line: 97, column: 26, scope: !298, inlinedAt: !646)
!655 = !DILocation(line: 97, column: 20, scope: !298, inlinedAt: !646)
!656 = !DILocation(line: 98, column: 14, scope: !298, inlinedAt: !646)
!657 = !DILocation(line: 98, column: 26, scope: !298, inlinedAt: !646)
!658 = !DILocation(line: 98, column: 20, scope: !298, inlinedAt: !646)
!659 = !DILocation(line: 52, column: 29, scope: !310, inlinedAt: !660)
!660 = distinct !DILocation(line: 157, column: 18, scope: !624)
!661 = !DILocation(line: 52, column: 41, scope: !310, inlinedAt: !660)
!662 = !DILocation(line: 54, column: 13, scope: !310, inlinedAt: !660)
!663 = !DILocation(line: 56, column: 11, scope: !310, inlinedAt: !660)
!664 = !DILocation(line: 57, column: 11, scope: !310, inlinedAt: !660)
!665 = !DILocation(line: 59, column: 10, scope: !310, inlinedAt: !660)
!666 = !DILocation(line: 157, column: 18, scope: !624)
!667 = !DILocation(line: 160, column: 6, scope: !631)
!668 = !DILocation(line: 160, column: 24, scope: !631)
!669 = !DILocation(line: 160, column: 42, scope: !631)
!670 = !DILocation(line: 160, column: 52, scope: !631)
!671 = !DILocation(line: 160, column: 34, scope: !631)
!672 = !DILocation(line: 53, column: 36, scope: !305, inlinedAt: !673)
!673 = distinct !DILocation(line: 160, column: 34, scope: !631)
!674 = !DILocation(line: 53, column: 48, scope: !305, inlinedAt: !673)
!675 = !DILocation(line: 55, column: 13, scope: !305, inlinedAt: !673)
!676 = !DILocation(line: 57, column: 12, scope: !305, inlinedAt: !673)
!677 = !DILocation(line: 57, column: 17, scope: !305, inlinedAt: !673)
!678 = !DILocation(line: 57, column: 14, scope: !305, inlinedAt: !673)
!679 = !DILocation(line: 57, column: 24, scope: !305, inlinedAt: !673)
!680 = !DILocation(line: 57, column: 29, scope: !305, inlinedAt: !673)
!681 = !DILocation(line: 57, column: 26, scope: !305, inlinedAt: !673)
!682 = !DILocation(line: 57, column: 20, scope: !305, inlinedAt: !673)
!683 = !DILocation(line: 58, column: 14, scope: !305, inlinedAt: !673)
!684 = !DILocation(line: 58, column: 26, scope: !305, inlinedAt: !673)
!685 = !DILocation(line: 58, column: 20, scope: !305, inlinedAt: !673)
!686 = !DILocation(line: 52, column: 29, scope: !310, inlinedAt: !687)
!687 = distinct !DILocation(line: 160, column: 18, scope: !631)
!688 = !DILocation(line: 52, column: 41, scope: !310, inlinedAt: !687)
!689 = !DILocation(line: 54, column: 13, scope: !310, inlinedAt: !687)
!690 = !DILocation(line: 56, column: 11, scope: !310, inlinedAt: !687)
!691 = !DILocation(line: 57, column: 11, scope: !310, inlinedAt: !687)
!692 = !DILocation(line: 59, column: 10, scope: !310, inlinedAt: !687)
!693 = !DILocation(line: 160, column: 18, scope: !631)
!694 = !DILocation(line: 159, column: 14, scope: !631)
!695 = !DILocation(line: 159, column: 13, scope: !631)
!696 = !DILocation(line: 164, column: 20, scope: !639)
!697 = !DILocation(line: 109, column: 12, scope: !13)
!698 = !DILocation(line: 164, column: 6, scope: !639)
!699 = !DILocation(line: 109, column: 15, scope: !13)
!700 = !DILocation(line: 167, column: 16, scope: !522)
!701 = !DILocation(line: 167, column: 22, scope: !522)
!702 = !DILocation(line: 167, column: 19, scope: !522)
!703 = !DILocation(line: 167, column: 12, scope: !522)
!704 = !DILocation(line: 167, column: 8, scope: !522)
!705 = !DILocation(line: 106, column: 8, scope: !13)
!706 = !DILocation(line: 168, column: 9, scope: !522)
!707 = !DILocation(line: 109, column: 8, scope: !13)
!708 = !DILocation(line: 169, column: 20, scope: !522)
!709 = !DILocation(line: 169, column: 23, scope: !522)
!710 = !DILocation(line: 169, column: 15, scope: !522)
!711 = !DILocation(line: 170, column: 23, scope: !522)
!712 = !DILocation(line: 170, column: 15, scope: !522)
!713 = !DILocation(line: 171, column: 23, scope: !522)
!714 = !DILocation(line: 171, column: 15, scope: !522)
!715 = !DILocation(line: 172, column: 20, scope: !522)
!716 = !DILocation(line: 172, column: 23, scope: !522)
!717 = !DILocation(line: 172, column: 15, scope: !522)
!718 = !DILocation(line: 173, column: 23, scope: !522)
!719 = !DILocation(line: 173, column: 15, scope: !522)
!720 = !DILocation(line: 174, column: 20, scope: !522)
!721 = !DILocation(line: 174, column: 23, scope: !522)
!722 = !DILocation(line: 174, column: 15, scope: !522)
!723 = !DILocation(line: 175, column: 2, scope: !724)
!724 = distinct !DILexicalBlock(scope: !522, file: !1, line: 175, column: 2)
!725 = !DILocation(line: 176, column: 15, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 175, column: 29)
!727 = distinct !DILexicalBlock(scope: !724, file: !1, line: 175, column: 2)
!728 = !DILocation(line: 176, column: 27, scope: !726)
!729 = !DILocation(line: 176, column: 14, scope: !726)
!730 = !DILocation(line: 176, column: 45, scope: !726)
!731 = !DILocation(line: 176, column: 32, scope: !726)
!732 = !DILocation(line: 176, column: 29, scope: !726)
!733 = !DILocation(line: 176, column: 10, scope: !726)
!734 = !DILocation(line: 177, column: 17, scope: !726)
!735 = !DILocation(line: 177, column: 4, scope: !726)
!736 = !DILocation(line: 177, column: 12, scope: !726)
!737 = !DILocation(line: 178, column: 17, scope: !726)
!738 = !DILocation(line: 178, column: 4, scope: !726)
!739 = !DILocation(line: 178, column: 12, scope: !726)
!740 = !DILocation(line: 179, column: 17, scope: !726)
!741 = !DILocation(line: 179, column: 4, scope: !726)
!742 = !DILocation(line: 179, column: 12, scope: !726)
!743 = !DILocation(line: 175, column: 11, scope: !727)
!744 = !DILocation(line: 181, column: 9, scope: !522)
!745 = !DILocation(line: 183, column: 14, scope: !525)
!746 = !DILocation(line: 186, column: 17, scope: !13)
!747 = !DILocation(line: 186, column: 25, scope: !13)
!748 = !DILocation(line: 186, column: 24, scope: !13)
!749 = !DILocation(line: 186, column: 33, scope: !13)
!750 = !DILocation(line: 186, column: 32, scope: !13)
!751 = !DILocation(line: 186, column: 16, scope: !13)
!752 = !DILocation(line: 186, column: 15, scope: !13)
!753 = !DILocation(line: 186, column: 41, scope: !13)
!754 = !DILocation(line: 186, column: 42, scope: !13)
!755 = !DILocation(line: 186, column: 7, scope: !13)
!756 = !DILocation(line: 187, column: 13, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 187, column: 3)
!758 = distinct !DILexicalBlock(scope: !13, file: !1, line: 187, column: 3)
!759 = !DILocation(line: 187, column: 12, scope: !757)
!760 = !DILocation(line: 187, column: 3, scope: !758)
!761 = !DILocation(line: 188, column: 16, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !1, line: 187, column: 30)
!763 = !DILocation(line: 188, column: 5, scope: !762)
!764 = !DILocation(line: 188, column: 13, scope: !762)
!765 = !DILocation(line: 189, column: 5, scope: !762)
!766 = !DILocation(line: 189, column: 13, scope: !762)
!767 = !DILocation(line: 190, column: 5, scope: !762)
!768 = !DILocation(line: 190, column: 13, scope: !762)
!769 = !DILocation(line: 192, column: 22, scope: !13)
!770 = !DILocation(line: 192, column: 21, scope: !13)
!771 = !DILocation(line: 192, column: 27, scope: !13)
!772 = !DILocation(line: 192, column: 40, scope: !13)
!773 = !DILocation(line: 192, column: 26, scope: !13)
!774 = !DILocation(line: 192, column: 25, scope: !13)
!775 = !DILocation(line: 192, column: 17, scope: !13)
!776 = !DILocation(line: 192, column: 16, scope: !13)
!777 = !DILocation(line: 193, column: 27, scope: !13)
!778 = !DILocation(line: 193, column: 26, scope: !13)
!779 = !DILocation(line: 193, column: 25, scope: !13)
!780 = !DILocation(line: 193, column: 17, scope: !13)
!781 = !DILocation(line: 193, column: 16, scope: !13)
!782 = !DILocation(line: 194, column: 27, scope: !13)
!783 = !DILocation(line: 194, column: 26, scope: !13)
!784 = !DILocation(line: 194, column: 25, scope: !13)
!785 = !DILocation(line: 194, column: 17, scope: !13)
!786 = !DILocation(line: 194, column: 16, scope: !13)
!787 = !DILocation(line: 195, column: 27, scope: !13)
!788 = !DILocation(line: 195, column: 40, scope: !13)
!789 = !DILocation(line: 195, column: 26, scope: !13)
!790 = !DILocation(line: 195, column: 25, scope: !13)
!791 = !DILocation(line: 195, column: 17, scope: !13)
!792 = !DILocation(line: 195, column: 16, scope: !13)
!793 = !DILocation(line: 196, column: 27, scope: !13)
!794 = !DILocation(line: 196, column: 26, scope: !13)
!795 = !DILocation(line: 196, column: 25, scope: !13)
!796 = !DILocation(line: 196, column: 17, scope: !13)
!797 = !DILocation(line: 196, column: 16, scope: !13)
!798 = !DILocation(line: 197, column: 27, scope: !13)
!799 = !DILocation(line: 197, column: 40, scope: !13)
!800 = !DILocation(line: 197, column: 26, scope: !13)
!801 = !DILocation(line: 197, column: 25, scope: !13)
!802 = !DILocation(line: 197, column: 17, scope: !13)
!803 = !DILocation(line: 197, column: 16, scope: !13)
!804 = !DILocation(line: 199, column: 16, scope: !13)
!805 = !DILocation(line: 200, column: 16, scope: !13)
!806 = !DILocation(line: 201, column: 3, scope: !13)
!807 = !DILocation(line: 201, column: 16, scope: !13)
!808 = !DILocation(line: 203, column: 9, scope: !13)
!809 = !DILocation(line: 205, column: 3, scope: !13)
