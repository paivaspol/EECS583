; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/glaasje.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@do_glas.bFirst = internal unnamed_addr global i1 false
@do_glas.bGlas = internal unnamed_addr global i32 0, align 4
@do_glas.d = internal unnamed_addr global [2 x float] zeroinitializer, align 4
@do_glas.pi6 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.pi12 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc9 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc4 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc10 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc3 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.c6 = internal unnamed_addr global float* null, align 8
@do_glas.c12 = internal unnamed_addr global float* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Can not have Long Range C6 corrections and GLASMD\00", align 1
@.str1 = private unnamed_addr constant [185 x i8] c"Constants for GLASMD: pi6 = %10g, pi12 = %10g\0A                      d1  = %10g, d2   = %10g\0A                      rc3 = %10g, rc4  = %10g\0A                      rc9 = %10g, rc10 = %10g\0A\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"d1 > d2 for GLASMD (check log file)\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/glaasje.c\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"c12\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [12 x i8] c"No glasmd!\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !66, metadata !431), !dbg !432
  %1 = icmp sgt i32 %__signo, 32, !dbg !433
  br i1 %1, label %5, label %2, !dbg !434

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !435
  %4 = shl i32 1, %3, !dbg !436
  br label %5, !dbg !434

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !434
  ret i32 %6, !dbg !437
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_glas(%struct.__sFILE* nocapture %log, i32 %start, i32 %homenr, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_mdatoms* nocapture readonly %md, i32 %atnr, %struct.t_inputrec* nocapture readonly %ir, float* nocapture %ener) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !383, metadata !431), !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !384, metadata !431), !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %homenr, i64 0, metadata !385, metadata !431), !dbg !440
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !386, metadata !431), !dbg !441
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !387, metadata !431), !dbg !442
  tail call void @llvm.dbg.value(metadata %struct.t_forcerec* %fr, i64 0, metadata !388, metadata !431), !dbg !443
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !389, metadata !431), !dbg !444
  tail call void @llvm.dbg.value(metadata i32 %atnr, i64 0, metadata !390, metadata !431), !dbg !445
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !391, metadata !431), !dbg !446
  tail call void @llvm.dbg.value(metadata float* %ener, i64 0, metadata !392, metadata !431), !dbg !447
  %1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11, !dbg !448
  %2 = load i32** %1, align 8, !dbg !448, !tbaa !449
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !407, metadata !431), !dbg !456
  %.b = load i1* @do_glas.bFirst, align 1
  br i1 %.b, label %95, label %3, !dbg !457

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !458
  %5 = bitcast float* %4 to i32*, !dbg !458
  %6 = load i32* %5, align 4, !dbg !458, !tbaa !461
  store i32 %6, i32* bitcast (float* @do_glas.pi6 to i32*), align 4, !dbg !464, !tbaa !465
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !466
  %8 = bitcast float* %7 to i32*, !dbg !466
  %9 = load i32* %8, align 4, !dbg !466, !tbaa !467
  store i32 %9, i32* bitcast (float* @do_glas.pi12 to i32*), align 4, !dbg !468, !tbaa !465
  %10 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !469
  %11 = bitcast float* %10 to i32*, !dbg !469
  %12 = load i32* %11, align 4, !dbg !469, !tbaa !470
  store i32 %12, i32* bitcast ([2 x float]* @do_glas.d to i32*), align 4, !dbg !471, !tbaa !465
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !472
  %14 = load float* %13, align 4, !dbg !472, !tbaa !473
  store float %14, float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !dbg !474, !tbaa !465
  %15 = bitcast i32 %6 to float
  %fabsf2 = tail call float @fabsf(float %15) #4, !dbg !475
  %16 = fpext float %fabsf2 to double, !dbg !475
  %17 = fcmp ogt double %16, 1.200000e-38, !dbg !476
  %18 = bitcast i32 %9 to float
  %19 = bitcast i32 %12 to float
  br i1 %17, label %20, label %.thread, !dbg !477

; <label>:20                                      ; preds = %3
  %fabsf3 = tail call float @fabsf(float %18) #4, !dbg !478
  %21 = fpext float %fabsf3 to double, !dbg !478
  %22 = fcmp ogt double %21, 1.200000e-38, !dbg !479
  br i1 %22, label %23, label %.thread, !dbg !480

; <label>:23                                      ; preds = %20
  %fabsf4 = tail call float @fabsf(float %19) #4, !dbg !481
  %24 = fpext float %fabsf4 to double, !dbg !481
  %25 = fcmp ogt double %24, 1.200000e-38, !dbg !482
  br i1 %25, label %26, label %.thread, !dbg !483

.thread:                                          ; preds = %23, %20, %3
  store i32 0, i32* @do_glas.bGlas, align 4, !dbg !484, !tbaa !485
  br label %92, !dbg !486

; <label>:26                                      ; preds = %23
  %fabsf5 = tail call float @fabsf(float %14) #4, !dbg !487
  %27 = fpext float %fabsf5 to double, !dbg !487
  %28 = fcmp ogt double %27, 1.200000e-38, !dbg !488
  %29 = zext i1 %28 to i32, !dbg !483
  store i32 %29, i32* @do_glas.bGlas, align 4, !dbg !484, !tbaa !485
  br i1 %28, label %30, label %92, !dbg !486

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43, !dbg !489
  %32 = load i32* %31, align 4, !dbg !489, !tbaa !493
  %33 = icmp eq i32 %32, 0, !dbg !494
  br i1 %33, label %35, label %34, !dbg !495

; <label>:34                                      ; preds = %30
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #7, !dbg !496
  %.pre = load float* @do_glas.pi6, align 4, !dbg !498, !tbaa !465
  %.pre20 = load float* @do_glas.pi12, align 4, !dbg !499, !tbaa !465
  %.pre21 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !dbg !500, !tbaa !465
  %.pre22 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !dbg !501, !tbaa !465
  br label %35, !dbg !502

; <label>:35                                      ; preds = %30, %34
  %36 = phi float [ %14, %30 ], [ %.pre22, %34 ]
  %37 = phi float [ %19, %30 ], [ %.pre21, %34 ]
  %38 = phi float [ %18, %30 ], [ %.pre20, %34 ]
  %39 = phi float [ %15, %30 ], [ %.pre, %34 ]
  %40 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26, !dbg !503
  %41 = load float* %40, align 4, !dbg !503, !tbaa !504
  %42 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1, !dbg !503
  %43 = load float* %42, align 4, !dbg !503, !tbaa !506
  %44 = fcmp ogt float %41, %43, !dbg !503
  %. = select i1 %44, float %41, float %43, !dbg !503
  store float %., float* @do_glas.rc, align 4, !dbg !507, !tbaa !465
  %45 = fmul float %., %., !dbg !508
  %46 = fmul float %., %45, !dbg !509
  store float %46, float* @do_glas.rc3, align 4, !dbg !510, !tbaa !465
  %47 = fmul float %., %46, !dbg !511
  store float %47, float* @do_glas.rc4, align 4, !dbg !512, !tbaa !465
  %48 = fmul float %46, %46, !dbg !513
  %49 = fmul float %46, %48, !dbg !514
  store float %49, float* @do_glas.rc9, align 4, !dbg !515, !tbaa !465
  %50 = fmul float %., %49, !dbg !516
  store float %50, float* @do_glas.rc10, align 4, !dbg !517, !tbaa !465
  %51 = fpext float %39 to double, !dbg !498
  %52 = fpext float %38 to double, !dbg !499
  %53 = fpext float %37 to double, !dbg !500
  %54 = fpext float %36 to double, !dbg !501
  %55 = fpext float %46 to double, !dbg !518
  %56 = fpext float %47 to double, !dbg !519
  %57 = fpext float %49 to double, !dbg !520
  %58 = fpext float %50 to double, !dbg !521
  %59 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([185 x i8]* @.str1, i64 0, i64 0), double %51, double %52, double %53, double %54, double %55, double %56, double %57, double %58) #7, !dbg !522
  %60 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !dbg !523, !tbaa !465
  %61 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !dbg !525, !tbaa !465
  %62 = fcmp ogt float %60, %61, !dbg !526
  br i1 %62, label %63, label %64, !dbg !527

; <label>:63                                      ; preds = %35
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !528
  br label %64, !dbg !528

; <label>:64                                      ; preds = %63, %35
  %65 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), i32 84, i32 %atnr, i32 4) #7, !dbg !529
  store i8* %65, i8** bitcast (float** @do_glas.c6 to i8**), align 8, !dbg !529, !tbaa !530
  %66 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), i32 85, i32 %atnr, i32 4) #7, !dbg !531
  store i8* %66, i8** bitcast (float** @do_glas.c12 to i8**), align 8, !dbg !531, !tbaa !530
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !408, metadata !431), !dbg !532
  %67 = icmp sgt i32 %atnr, 0, !dbg !533
  %68 = bitcast i8* %66 to float*
  br i1 %67, label %.lr.ph14, label %.loopexit6, !dbg !536

.lr.ph14:                                         ; preds = %64
  %69 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65, !dbg !537
  %70 = load float** %69, align 8, !dbg !537, !tbaa !539
  %71 = load float** @do_glas.c6, align 8, !dbg !540, !tbaa !530
  %72 = add i32 %atnr, -1, !dbg !536
  br label %73, !dbg !536

; <label>:73                                      ; preds = %73, %.lr.ph14
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %73 ]
  %i.012 = phi i32 [ 0, %.lr.ph14 ], [ %91, %73 ]
  %74 = mul nsw i32 %i.012, %atnr, !dbg !537
  %75 = trunc i64 %indvars.iv17 to i32, !dbg !537
  %76 = add nsw i32 %74, %75, !dbg !537
  %77 = shl nsw i32 %76, 1, !dbg !537
  %78 = sext i32 %77 to i64, !dbg !537
  %79 = getelementptr inbounds float* %70, i64 %78, !dbg !537
  %80 = bitcast float* %79 to i32*, !dbg !537
  %81 = load i32* %80, align 4, !dbg !537, !tbaa !465
  %82 = getelementptr inbounds float* %71, i64 %indvars.iv17, !dbg !540
  %83 = bitcast float* %82 to i32*, !dbg !541
  store i32 %81, i32* %83, align 4, !dbg !541, !tbaa !465
  %84 = or i32 %77, 1, !dbg !542
  %85 = sext i32 %84 to i64, !dbg !542
  %86 = getelementptr inbounds float* %70, i64 %85, !dbg !542
  %87 = bitcast float* %86 to i32*, !dbg !542
  %88 = load i32* %87, align 4, !dbg !542, !tbaa !465
  %89 = getelementptr inbounds float* %68, i64 %indvars.iv17, !dbg !543
  %90 = bitcast float* %89 to i32*, !dbg !544
  store i32 %88, i32* %90, align 4, !dbg !544, !tbaa !465
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !536
  %91 = add nuw nsw i32 %i.012, 1, !dbg !545
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !408, metadata !431), !dbg !532
  %exitcond19 = icmp eq i32 %75, %72, !dbg !536
  br i1 %exitcond19, label %.loopexit6, label %73, !dbg !536

; <label>:92                                      ; preds = %.thread, %26
  %93 = load %struct.__sFILE** @__stderrp, align 8, !dbg !546, !tbaa !530
  %94 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %93), !dbg !547
  br label %.loopexit6

.loopexit6:                                       ; preds = %73, %64, %92
  store i1 true, i1* @do_glas.bFirst, align 1
  br label %95, !dbg !548

; <label>:95                                      ; preds = %0, %.loopexit6
  %96 = load i32* @do_glas.bGlas, align 4, !dbg !549, !tbaa !485
  %97 = icmp eq i32 %96, 0, !dbg !549
  br i1 %97, label %197, label %.preheader, !dbg !551

.preheader:                                       ; preds = %95
  %98 = icmp sgt i32 %homenr, 0, !dbg !552
  br i1 %98, label %.lr.ph, label %._crit_edge, !dbg !556

.lr.ph:                                           ; preds = %.preheader
  %99 = add nsw i32 %homenr, %start, !dbg !557
  %100 = load float** @do_glas.c6, align 8, !dbg !558, !tbaa !530
  %101 = load float** @do_glas.c12, align 8, !dbg !561, !tbaa !530
  %102 = sext i32 %start to i64
  %103 = sext i32 %99 to i64, !dbg !556
  br label %104, !dbg !556

; <label>:104                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv15 = phi i64 [ %102, %.lr.ph ], [ %indvars.iv.next16, %.loopexit ]
  %wd.011 = phi float [ 0.000000e+00, %.lr.ph ], [ %wd.2, %.loopexit ]
  %105 = getelementptr inbounds i32* %2, i64 %indvars.iv15, !dbg !563
  %106 = load i32* %105, align 4, !dbg !563, !tbaa !485
  tail call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !410, metadata !431), !dbg !564
  %107 = sext i32 %106 to i64, !dbg !558
  %108 = getelementptr inbounds float* %100, i64 %107, !dbg !558
  %109 = load float* %108, align 4, !dbg !558, !tbaa !465
  %fabsf = tail call float @fabsf(float %109) #4, !dbg !565
  %110 = fpext float %fabsf to double, !dbg !565
  %111 = fcmp ogt double %110, 1.200000e-38, !dbg !566
  %.phi.trans.insert = getelementptr inbounds float* %101, i64 %107
  %.pre24 = load float* %.phi.trans.insert, align 4, !dbg !561, !tbaa !465
  br i1 %111, label %._crit_edge23, label %112, !dbg !567

; <label>:112                                     ; preds = %104
  %fabsf1 = tail call float @fabsf(float %.pre24) #4, !dbg !568
  %113 = fpext float %fabsf1 to double, !dbg !568
  %114 = fcmp ogt double %113, 1.200000e-38, !dbg !569
  br i1 %114, label %._crit_edge23, label %.loopexit, !dbg !570

._crit_edge23:                                    ; preds = %104, %112
  %115 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv15, i64 2, !dbg !571
  %116 = load float* %115, align 4, !dbg !571, !tbaa !465
  tail call void @llvm.dbg.value(metadata float %116, i64 0, metadata !395, metadata !431), !dbg !572
  %117 = load float* @do_glas.pi6, align 4, !dbg !573, !tbaa !465
  %118 = fmul float %109, %117, !dbg !574
  %119 = fpext float %118 to double, !dbg !575
  %120 = tail call double @sqrt(double %119) #8, !dbg !576
  %121 = fmul double %120, 0x400921FB54442D18, !dbg !577
  %122 = fptrunc double %121 to float, !dbg !578
  tail call void @llvm.dbg.value(metadata float %122, i64 0, metadata !405, metadata !431), !dbg !579
  %123 = load float* @do_glas.pi12, align 4, !dbg !580, !tbaa !465
  %124 = fmul float %.pre24, %123, !dbg !581
  %125 = fpext float %124 to double, !dbg !561
  %126 = tail call double @sqrt(double %125) #8, !dbg !582
  %127 = fmul double %126, 0x400921FB54442D18, !dbg !583
  %128 = fptrunc double %127 to float, !dbg !584
  tail call void @llvm.dbg.value(metadata float %128, i64 0, metadata !406, metadata !431), !dbg !585
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !404, metadata !431), !dbg !586
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !409, metadata !431), !dbg !587
  %129 = fpext float %128 to double, !dbg !588
  %130 = fpext float %122 to double, !dbg !594
  %131 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv15, i64 2, !dbg !595
  br label %132, !dbg !596

; <label>:132                                     ; preds = %190, %._crit_edge23
  %indvars.iv = phi i64 [ 0, %._crit_edge23 ], [ %indvars.iv.next, %190 ]
  %wd.19 = phi float [ %wd.011, %._crit_edge23 ], [ %191, %190 ]
  %sign.07 = phi float [ 1.000000e+00, %._crit_edge23 ], [ %194, %190 ]
  %133 = getelementptr inbounds [2 x float]* @do_glas.d, i64 0, i64 %indvars.iv, !dbg !597
  %134 = load float* %133, align 4, !dbg !597, !tbaa !465
  %135 = fsub float %116, %134, !dbg !598
  %136 = fmul float %sign.07, %135, !dbg !599
  tail call void @llvm.dbg.value(metadata float %136, i64 0, metadata !397, metadata !431), !dbg !600
  %137 = load float* @do_glas.rc, align 4, !dbg !601, !tbaa !465
  %138 = fcmp ult float %136, %137, !dbg !602
  br i1 %138, label %162, label %139, !dbg !603

; <label>:139                                     ; preds = %132
  %140 = fmul float %136, %136, !dbg !604
  %141 = fmul float %136, %140, !dbg !606
  tail call void @llvm.dbg.value(metadata float %141, i64 0, metadata !401, metadata !431), !dbg !607
  %142 = fmul float %141, %141, !dbg !608
  %143 = fmul float %141, %142, !dbg !609
  tail call void @llvm.dbg.value(metadata float %143, i64 0, metadata !400, metadata !431), !dbg !610
  %144 = fpext float %143 to double, !dbg !611
  %145 = fmul double %144, 4.500000e+01, !dbg !612
  %146 = fdiv double %129, %145, !dbg !613
  %147 = fpext float %141 to double, !dbg !614
  %148 = fmul double %147, 6.000000e+00, !dbg !615
  %149 = fdiv double %130, %148, !dbg !616
  %150 = fsub double %146, %149, !dbg !617
  %151 = fmul float %136, %141, !dbg !618
  tail call void @llvm.dbg.value(metadata float %151, i64 0, metadata !399, metadata !431), !dbg !619
  %152 = fmul float %136, %143, !dbg !620
  tail call void @llvm.dbg.value(metadata float %152, i64 0, metadata !398, metadata !431), !dbg !621
  %153 = fpext float %sign.07 to double, !dbg !622
  %154 = fpext float %152 to double, !dbg !623
  %155 = fmul double %154, 5.000000e+00, !dbg !624
  %156 = fdiv double %129, %155, !dbg !625
  %157 = fpext float %151 to double, !dbg !626
  %158 = fmul double %157, 2.000000e+00, !dbg !627
  %159 = fdiv double %130, %158, !dbg !628
  %160 = fsub double %156, %159, !dbg !629
  %161 = fmul double %153, %160, !dbg !630
  br label %190, !dbg !631

; <label>:162                                     ; preds = %132
  %163 = load float* @do_glas.rc9, align 4, !dbg !632, !tbaa !465
  %164 = fpext float %163 to double, !dbg !632
  %165 = fmul double %164, 9.000000e+00, !dbg !633
  %166 = fdiv double 2.000000e+00, %165, !dbg !634
  %167 = fpext float %136 to double, !dbg !635
  %168 = load float* @do_glas.rc10, align 4, !dbg !636, !tbaa !465
  %169 = fpext float %168 to double, !dbg !636
  %170 = fmul double %169, 5.000000e+00, !dbg !637
  %171 = fdiv double %167, %170, !dbg !638
  %172 = fsub double %166, %171, !dbg !639
  %173 = fmul double %129, %172, !dbg !640
  %174 = load float* @do_glas.rc3, align 4, !dbg !641, !tbaa !465
  %175 = fpext float %174 to double, !dbg !641
  %176 = fmul double %175, 3.000000e+00, !dbg !642
  %177 = fdiv double 2.000000e+00, %176, !dbg !643
  %178 = load float* @do_glas.rc4, align 4, !dbg !644, !tbaa !465
  %179 = fpext float %178 to double, !dbg !644
  %180 = fmul double %179, 2.000000e+00, !dbg !645
  %181 = fdiv double %167, %180, !dbg !646
  %182 = fsub double %177, %181, !dbg !647
  %183 = fmul double %130, %182, !dbg !648
  %184 = fsub double %173, %183, !dbg !649
  %185 = fpext float %sign.07 to double, !dbg !650
  %186 = fdiv double %129, %170, !dbg !651
  %187 = fdiv double %130, %180, !dbg !652
  %188 = fsub double %186, %187, !dbg !653
  %189 = fmul double %185, %188, !dbg !654
  br label %190

; <label>:190                                     ; preds = %162, %139
  %fz.0.in = phi double [ %161, %139 ], [ %189, %162 ]
  %wdd.0.in = phi double [ %150, %139 ], [ %184, %162 ]
  %wdd.0 = fptrunc double %wdd.0.in to float, !dbg !655
  %fz.0 = fptrunc double %fz.0.in to float, !dbg !622
  %191 = fadd float %wd.19, %wdd.0, !dbg !656
  tail call void @llvm.dbg.value(metadata float %191, i64 0, metadata !393, metadata !431), !dbg !657
  %192 = load float* %131, align 4, !dbg !658, !tbaa !465
  %193 = fadd float %fz.0, %192, !dbg !658
  store float %193, float* %131, align 4, !dbg !658, !tbaa !465
  %194 = fsub float -0.000000e+00, %sign.07, !dbg !659
  tail call void @llvm.dbg.value(metadata float %194, i64 0, metadata !404, metadata !431), !dbg !586
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !596
  %exitcond = icmp eq i64 %indvars.iv.next, 2, !dbg !596
  br i1 %exitcond, label %.loopexit, label %132, !dbg !596

.loopexit:                                        ; preds = %190, %112
  %wd.2 = phi float [ %wd.011, %112 ], [ %191, %190 ]
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1, !dbg !556
  %195 = icmp slt i64 %indvars.iv.next16, %103, !dbg !552
  br i1 %195, label %104, label %._crit_edge, !dbg !556

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %wd.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %wd.2, %.loopexit ]
  %196 = getelementptr inbounds float* %ener, i64 15, !dbg !660
  store float %wd.0.lcssa, float* %196, align 4, !dbg !661, !tbaa !465
  br label %197, !dbg !662

; <label>:197                                     ; preds = %95, %._crit_edge
  ret void, !dbg !663
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!427, !428, !429}
!llvm.ident = !{!430}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !58, subprograms: !59, globals: !411, imports: !58)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/glaasje.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 116, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "edispcNO", value: 0)
!7 = !DIEnumerator(name: "edispcEnerPres", value: 1)
!8 = !DIEnumerator(name: "edispcEner", value: 2)
!9 = !DIEnumerator(name: "edispcNR", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 49, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!13 = !DIEnumerator(name: "F_BONDS", value: 0)
!14 = !DIEnumerator(name: "F_G96BONDS", value: 1)
!15 = !DIEnumerator(name: "F_MORSE", value: 2)
!16 = !DIEnumerator(name: "F_CUBICBONDS", value: 3)
!17 = !DIEnumerator(name: "F_CONNBONDS", value: 4)
!18 = !DIEnumerator(name: "F_HARMONIC", value: 5)
!19 = !DIEnumerator(name: "F_ANGLES", value: 6)
!20 = !DIEnumerator(name: "F_G96ANGLES", value: 7)
!21 = !DIEnumerator(name: "F_PDIHS", value: 8)
!22 = !DIEnumerator(name: "F_RBDIHS", value: 9)
!23 = !DIEnumerator(name: "F_IDIHS", value: 10)
!24 = !DIEnumerator(name: "F_LJ14", value: 11)
!25 = !DIEnumerator(name: "F_COUL14", value: 12)
!26 = !DIEnumerator(name: "F_LJ", value: 13)
!27 = !DIEnumerator(name: "F_BHAM", value: 14)
!28 = !DIEnumerator(name: "F_LJLR", value: 15)
!29 = !DIEnumerator(name: "F_DISPCORR", value: 16)
!30 = !DIEnumerator(name: "F_SR", value: 17)
!31 = !DIEnumerator(name: "F_LR", value: 18)
!32 = !DIEnumerator(name: "F_WPOL", value: 19)
!33 = !DIEnumerator(name: "F_POSRES", value: 20)
!34 = !DIEnumerator(name: "F_DISRES", value: 21)
!35 = !DIEnumerator(name: "F_DISRESVIOL", value: 22)
!36 = !DIEnumerator(name: "F_ORIRES", value: 23)
!37 = !DIEnumerator(name: "F_ORIRESDEV", value: 24)
!38 = !DIEnumerator(name: "F_ANGRES", value: 25)
!39 = !DIEnumerator(name: "F_ANGRESZ", value: 26)
!40 = !DIEnumerator(name: "F_SHAKE", value: 27)
!41 = !DIEnumerator(name: "F_SHAKENC", value: 28)
!42 = !DIEnumerator(name: "F_SETTLE", value: 29)
!43 = !DIEnumerator(name: "F_DUMMY2", value: 30)
!44 = !DIEnumerator(name: "F_DUMMY3", value: 31)
!45 = !DIEnumerator(name: "F_DUMMY3FD", value: 32)
!46 = !DIEnumerator(name: "F_DUMMY3FAD", value: 33)
!47 = !DIEnumerator(name: "F_DUMMY3OUT", value: 34)
!48 = !DIEnumerator(name: "F_DUMMY4FD", value: 35)
!49 = !DIEnumerator(name: "F_EQM", value: 36)
!50 = !DIEnumerator(name: "F_EPOT", value: 37)
!51 = !DIEnumerator(name: "F_EKIN", value: 38)
!52 = !DIEnumerator(name: "F_ETOT", value: 39)
!53 = !DIEnumerator(name: "F_TEMP", value: 40)
!54 = !DIEnumerator(name: "F_PRES", value: 41)
!55 = !DIEnumerator(name: "F_DVDL", value: 42)
!56 = !DIEnumerator(name: "F_DVDLKIN", value: 43)
!57 = !DIEnumerator(name: "F_NRE", value: 44)
!58 = !{}
!59 = !{!60, !67}
!60 = !DISubprogram(name: "__sigbits", scope: !61, file: !61, line: 114, type: !62, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !65)
!61 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !64}
!64 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!65 = !{!66}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !60, file: !61, line: 114, type: !64)
!67 = !DISubprogram(name: "do_glas", scope: !1, file: !1, line: 41, type: !68, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_mdatoms*, i32, %struct.t_inputrec*, float*)* @do_glas, variables: !382)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !64, !64, !133, !133, !139, !238, !64, !268, !163}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 153, baseType: !73)
!72 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !72, line: 122, size: 1216, align: 64, elements: !74)
!74 = !{!75, !78, !79, !80, !82, !83, !88, !89, !91, !95, !101, !111, !117, !118, !121, !122, !126, !130, !131, !132}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !73, file: !72, line: 123, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !73, file: !72, line: 124, baseType: !64, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !73, file: !72, line: 125, baseType: !64, size: 32, align: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !73, file: !72, line: 126, baseType: !81, size: 16, align: 16, offset: 128)
!81 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !73, file: !72, line: 127, baseType: !81, size: 16, align: 16, offset: 144)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !73, file: !72, line: 128, baseType: !84, size: 128, align: 64, offset: 192)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !72, line: 88, size: 128, align: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !84, file: !72, line: 89, baseType: !76, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !84, file: !72, line: 90, baseType: !64, size: 32, align: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !73, file: !72, line: 129, baseType: !64, size: 32, align: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !73, file: !72, line: 132, baseType: !90, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !73, file: !72, line: 133, baseType: !92, size: 64, align: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!64, !90}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !73, file: !72, line: 134, baseType: !96, size: 64, align: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!64, !90, !99, !64}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !73, file: !72, line: 135, baseType: !102, size: 64, align: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !90, !105, !64}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !72, line: 77, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !107, line: 71, baseType: !108)
!107 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!110 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !73, file: !72, line: 136, baseType: !112, size: 64, align: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!64, !90, !115, !64}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !73, file: !72, line: 139, baseType: !84, size: 128, align: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !73, file: !72, line: 140, baseType: !119, size: 64, align: 64, offset: 832)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !72, line: 94, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !73, file: !72, line: 141, baseType: !64, size: 32, align: 32, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !73, file: !72, line: 144, baseType: !123, size: 24, align: 8, offset: 928)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !73, file: !72, line: 145, baseType: !127, size: 8, align: 8, offset: 952)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 1)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !73, file: !72, line: 148, baseType: !84, size: 128, align: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !73, file: !72, line: 151, baseType: !64, size: 32, align: 32, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !73, file: !72, line: 152, baseType: !105, size: 64, align: 64, offset: 1152)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !135, line: 101, baseType: !136)
!135 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 96, align: 32, elements: !124)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !135, line: 87, baseType: !138)
!138 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_forcerec", file: !141, line: 149, baseType: !142)
!141 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!142 = !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 43, size: 22784, align: 64, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !142, file: !141, line: 45, baseType: !64, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !142, file: !141, line: 46, baseType: !137, size: 32, align: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rlistlong", scope: !142, file: !141, line: 46, baseType: !137, size: 32, align: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "zsquare", scope: !142, file: !141, line: 49, baseType: !137, size: 32, align: 32, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !142, file: !141, line: 49, baseType: !137, size: 32, align: 32, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !142, file: !141, line: 50, baseType: !137, size: 32, align: 32, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "epsfac", scope: !142, file: !141, line: 50, baseType: !137, size: 32, align: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bRF", scope: !142, file: !141, line: 53, baseType: !64, size: 32, align: 32, offset: 224)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kappa", scope: !142, file: !141, line: 54, baseType: !137, size: 32, align: 32, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "k_rf", scope: !142, file: !141, line: 54, baseType: !137, size: 32, align: 32, offset: 288)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "c_rf", scope: !142, file: !141, line: 54, baseType: !137, size: 32, align: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "avcsix", scope: !142, file: !141, line: 57, baseType: !137, size: 32, align: 32, offset: 352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !142, file: !141, line: 60, baseType: !137, size: 32, align: 32, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "bcoultab", scope: !142, file: !141, line: 63, baseType: !64, size: 32, align: 32, offset: 416)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bvdwtab", scope: !142, file: !141, line: 64, baseType: !64, size: 32, align: 32, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rtab", scope: !142, file: !141, line: 65, baseType: !137, size: 32, align: 32, offset: 480)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ntab", scope: !142, file: !141, line: 66, baseType: !64, size: 32, align: 32, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale", scope: !142, file: !141, line: 67, baseType: !137, size: 32, align: 32, offset: 544)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "coultab", scope: !142, file: !141, line: 69, baseType: !163, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtab", scope: !142, file: !141, line: 70, baseType: !163, size: 64, align: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdwtab", scope: !142, file: !141, line: 71, baseType: !163, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdw14tab", scope: !142, file: !141, line: 72, baseType: !163, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !142, file: !141, line: 75, baseType: !137, size: 32, align: 32, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !142, file: !141, line: 75, baseType: !137, size: 32, align: 32, offset: 864)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !142, file: !141, line: 76, baseType: !163, size: 64, align: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !142, file: !141, line: 79, baseType: !137, size: 32, align: 32, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !142, file: !141, line: 79, baseType: !137, size: 32, align: 32, offset: 992)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "bham_b_max", scope: !142, file: !141, line: 80, baseType: !137, size: 32, align: 32, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale_exp", scope: !142, file: !141, line: 81, baseType: !137, size: 32, align: 32, offset: 1056)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !142, file: !141, line: 84, baseType: !64, size: 32, align: 32, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !142, file: !141, line: 85, baseType: !137, size: 32, align: 32, offset: 1120)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma6", scope: !142, file: !141, line: 86, baseType: !137, size: 32, align: 32, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bSepDVDL", scope: !142, file: !141, line: 87, baseType: !64, size: 32, align: 32, offset: 1184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "eeltype", scope: !142, file: !141, line: 90, baseType: !64, size: 32, align: 32, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !142, file: !141, line: 91, baseType: !64, size: 32, align: 32, offset: 1248)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "cg0", scope: !142, file: !141, line: 92, baseType: !64, size: 32, align: 32, offset: 1280)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "hcg", scope: !142, file: !141, line: 92, baseType: !64, size: 32, align: 32, offset: 1312)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !142, file: !141, line: 93, baseType: !64, size: 32, align: 32, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bSolvOpt", scope: !142, file: !141, line: 94, baseType: !64, size: 32, align: 32, offset: 1376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOMol", scope: !142, file: !141, line: 95, baseType: !64, size: 32, align: 32, offset: 1408)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOav", scope: !142, file: !141, line: 96, baseType: !136, size: 96, align: 32, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nWatMol", scope: !142, file: !141, line: 97, baseType: !64, size: 32, align: 32, offset: 1536)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Dimension", scope: !142, file: !141, line: 98, baseType: !64, size: 32, align: 32, offset: 1568)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bGrid", scope: !142, file: !141, line: 99, baseType: !64, size: 32, align: 32, offset: 1600)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !142, file: !141, line: 99, baseType: !64, size: 32, align: 32, offset: 1632)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "solvent_type", scope: !142, file: !141, line: 100, baseType: !191, size: 64, align: 64, offset: 1664)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mno_index", scope: !142, file: !141, line: 101, baseType: !191, size: 64, align: 64, offset: 1728)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cg_cm", scope: !142, file: !141, line: 102, baseType: !133, size: 64, align: 64, offset: 1792)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "shift_vec", scope: !142, file: !141, line: 103, baseType: !133, size: 64, align: 64, offset: 1856)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_sr", scope: !142, file: !141, line: 108, baseType: !196, size: 9984, align: 64, offset: 1920)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 9984, align: 64, elements: !218)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nblist", file: !198, line: 60, baseType: !199)
!198 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nblist.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!199 = !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 36, size: 768, align: 64, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !211, !212, !213, !214, !215, !216, !217}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "il_code", scope: !199, file: !198, line: 37, baseType: !64, size: 32, align: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nri", scope: !199, file: !198, line: 39, baseType: !64, size: 32, align: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "maxnri", scope: !199, file: !198, line: 39, baseType: !64, size: 32, align: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nrj", scope: !199, file: !198, line: 40, baseType: !64, size: 32, align: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "maxnrj", scope: !199, file: !198, line: 40, baseType: !64, size: 32, align: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !199, file: !198, line: 41, baseType: !64, size: 32, align: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "solvent", scope: !199, file: !198, line: 42, baseType: !64, size: 32, align: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "iinr", scope: !199, file: !198, line: 43, baseType: !209, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !135, line: 73, baseType: !64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !199, file: !198, line: 44, baseType: !191, size: 64, align: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !199, file: !198, line: 45, baseType: !191, size: 64, align: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "jindex", scope: !199, file: !198, line: 46, baseType: !191, size: 64, align: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "jjnr", scope: !199, file: !198, line: 47, baseType: !209, size: 64, align: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "nsatoms", scope: !199, file: !198, line: 48, baseType: !191, size: 64, align: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !199, file: !198, line: 58, baseType: !64, size: 32, align: 32, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !199, file: !198, line: 58, baseType: !191, size: 64, align: 64, offset: 704)
!218 = !{!219}
!219 = !DISubrange(count: 13)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_lr", scope: !142, file: !141, line: 109, baseType: !196, size: 9984, align: 64, offset: 11904)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "bTwinRange", scope: !142, file: !141, line: 120, baseType: !64, size: 32, align: 32, offset: 21888)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nlr", scope: !142, file: !141, line: 121, baseType: !64, size: 32, align: 32, offset: 21920)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_twin", scope: !142, file: !141, line: 122, baseType: !133, size: 64, align: 64, offset: 21952)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "fshift_twin", scope: !142, file: !141, line: 123, baseType: !133, size: 64, align: 64, offset: 22016)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_pme", scope: !142, file: !141, line: 126, baseType: !133, size: 64, align: 64, offset: 22080)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "bEwald", scope: !142, file: !141, line: 127, baseType: !64, size: 32, align: 32, offset: 22144)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ewaldcoeff", scope: !142, file: !141, line: 128, baseType: !137, size: 32, align: 32, offset: 22176)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "fshift", scope: !142, file: !141, line: 131, baseType: !133, size: 64, align: 64, offset: 22208)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nmol", scope: !142, file: !141, line: 134, baseType: !64, size: 32, align: 32, offset: 22272)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mol_nr", scope: !142, file: !141, line: 135, baseType: !209, size: 64, align: 64, offset: 22336)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mol_epot", scope: !142, file: !141, line: 136, baseType: !163, size: 64, align: 64, offset: 22400)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nstcalc", scope: !142, file: !141, line: 137, baseType: !64, size: 32, align: 32, offset: 22464)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ntype", scope: !142, file: !141, line: 140, baseType: !64, size: 32, align: 32, offset: 22496)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bBHAM", scope: !142, file: !141, line: 141, baseType: !64, size: 32, align: 32, offset: 22528)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nbfp", scope: !142, file: !141, line: 142, baseType: !163, size: 64, align: 64, offset: 22592)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !142, file: !141, line: 145, baseType: !191, size: 64, align: 64, offset: 22656)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !142, file: !141, line: 148, baseType: !137, size: 32, align: 32, offset: 22720)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mdatoms", file: !240, line: 51, baseType: !241)
!240 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!241 = !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 40, size: 1408, align: 64, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tmass", scope: !241, file: !240, line: 41, baseType: !137, size: 32, align: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !241, file: !240, line: 42, baseType: !64, size: 32, align: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "massA", scope: !241, file: !240, line: 43, baseType: !163, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "massB", scope: !241, file: !240, line: 43, baseType: !163, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "massT", scope: !241, file: !240, line: 43, baseType: !163, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "invmass", scope: !241, file: !240, line: 43, baseType: !163, size: 64, align: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "chargeA", scope: !241, file: !240, line: 44, baseType: !163, size: 64, align: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "chargeB", scope: !241, file: !240, line: 44, baseType: !163, size: 64, align: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "chargeT", scope: !241, file: !240, line: 44, baseType: !163, size: 64, align: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "bPerturbed", scope: !241, file: !240, line: 45, baseType: !191, size: 64, align: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !241, file: !240, line: 46, baseType: !191, size: 64, align: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "typeA", scope: !241, file: !240, line: 47, baseType: !191, size: 64, align: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !241, file: !240, line: 47, baseType: !191, size: 64, align: 64, offset: 704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !241, file: !240, line: 48, baseType: !257, size: 64, align: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cTC", scope: !241, file: !240, line: 49, baseType: !257, size: 64, align: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cENER", scope: !241, file: !240, line: 49, baseType: !257, size: 64, align: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cACC", scope: !241, file: !240, line: 49, baseType: !257, size: 64, align: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cFREEZE", scope: !241, file: !240, line: 49, baseType: !257, size: 64, align: 64, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cXTC", scope: !241, file: !240, line: 49, baseType: !257, size: 64, align: 64, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cVCM", scope: !241, file: !240, line: 49, baseType: !257, size: 64, align: 64, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cU1", scope: !241, file: !240, line: 50, baseType: !257, size: 64, align: 64, offset: 1216)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cU2", scope: !241, file: !240, line: 50, baseType: !257, size: 64, align: 64, offset: 1280)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cORF", scope: !241, file: !240, line: 50, baseType: !257, size: 64, align: 64, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !270, line: 143, baseType: !271)
!270 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!271 = !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 55, size: 4736, align: 64, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !373, !381}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !271, file: !270, line: 56, baseType: !64, size: 32, align: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !271, file: !270, line: 57, baseType: !64, size: 32, align: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !271, file: !270, line: 58, baseType: !64, size: 32, align: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !271, file: !270, line: 59, baseType: !64, size: 32, align: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !271, file: !270, line: 60, baseType: !64, size: 32, align: 32, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !271, file: !270, line: 61, baseType: !64, size: 32, align: 32, offset: 160)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !271, file: !270, line: 62, baseType: !64, size: 32, align: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !271, file: !270, line: 63, baseType: !64, size: 32, align: 32, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !271, file: !270, line: 65, baseType: !64, size: 32, align: 32, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !271, file: !270, line: 66, baseType: !64, size: 32, align: 32, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !271, file: !270, line: 67, baseType: !64, size: 32, align: 32, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !271, file: !270, line: 68, baseType: !64, size: 32, align: 32, offset: 352)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !271, file: !270, line: 69, baseType: !64, size: 32, align: 32, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !271, file: !270, line: 70, baseType: !64, size: 32, align: 32, offset: 416)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !271, file: !270, line: 71, baseType: !137, size: 32, align: 32, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !271, file: !270, line: 72, baseType: !137, size: 32, align: 32, offset: 480)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !271, file: !270, line: 73, baseType: !137, size: 32, align: 32, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !271, file: !270, line: 74, baseType: !64, size: 32, align: 32, offset: 544)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !271, file: !270, line: 74, baseType: !64, size: 32, align: 32, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !271, file: !270, line: 74, baseType: !64, size: 32, align: 32, offset: 608)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !271, file: !270, line: 76, baseType: !64, size: 32, align: 32, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !271, file: !270, line: 77, baseType: !137, size: 32, align: 32, offset: 672)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !271, file: !270, line: 79, baseType: !64, size: 32, align: 32, offset: 704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !271, file: !270, line: 80, baseType: !64, size: 32, align: 32, offset: 736)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !271, file: !270, line: 81, baseType: !64, size: 32, align: 32, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !271, file: !270, line: 82, baseType: !64, size: 32, align: 32, offset: 800)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !271, file: !270, line: 83, baseType: !64, size: 32, align: 32, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !271, file: !270, line: 84, baseType: !64, size: 32, align: 32, offset: 864)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !271, file: !270, line: 85, baseType: !64, size: 32, align: 32, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !271, file: !270, line: 86, baseType: !64, size: 32, align: 32, offset: 928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !271, file: !270, line: 87, baseType: !137, size: 32, align: 32, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !271, file: !270, line: 88, baseType: !305, size: 288, align: 32, offset: 992)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !135, line: 105, baseType: !306)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 288, align: 32, elements: !307)
!307 = !{!125, !125}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !271, file: !270, line: 89, baseType: !305, size: 288, align: 32, offset: 1280)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !271, file: !270, line: 90, baseType: !64, size: 32, align: 32, offset: 1568)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !271, file: !270, line: 91, baseType: !137, size: 32, align: 32, offset: 1600)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !271, file: !270, line: 92, baseType: !137, size: 32, align: 32, offset: 1632)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !271, file: !270, line: 93, baseType: !64, size: 32, align: 32, offset: 1664)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !271, file: !270, line: 94, baseType: !137, size: 32, align: 32, offset: 1696)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !271, file: !270, line: 95, baseType: !137, size: 32, align: 32, offset: 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !271, file: !270, line: 96, baseType: !64, size: 32, align: 32, offset: 1760)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !271, file: !270, line: 97, baseType: !137, size: 32, align: 32, offset: 1792)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !271, file: !270, line: 98, baseType: !137, size: 32, align: 32, offset: 1824)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !271, file: !270, line: 99, baseType: !137, size: 32, align: 32, offset: 1856)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !271, file: !270, line: 100, baseType: !64, size: 32, align: 32, offset: 1888)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !271, file: !270, line: 101, baseType: !137, size: 32, align: 32, offset: 1920)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !271, file: !270, line: 102, baseType: !137, size: 32, align: 32, offset: 1952)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !271, file: !270, line: 103, baseType: !64, size: 32, align: 32, offset: 1984)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !271, file: !270, line: 104, baseType: !137, size: 32, align: 32, offset: 2016)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !271, file: !270, line: 105, baseType: !137, size: 32, align: 32, offset: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !271, file: !270, line: 106, baseType: !137, size: 32, align: 32, offset: 2080)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !271, file: !270, line: 107, baseType: !137, size: 32, align: 32, offset: 2112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !271, file: !270, line: 108, baseType: !137, size: 32, align: 32, offset: 2144)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !271, file: !270, line: 109, baseType: !64, size: 32, align: 32, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !271, file: !270, line: 110, baseType: !64, size: 32, align: 32, offset: 2208)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !271, file: !270, line: 111, baseType: !64, size: 32, align: 32, offset: 2240)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !271, file: !270, line: 112, baseType: !137, size: 32, align: 32, offset: 2272)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !271, file: !270, line: 113, baseType: !137, size: 32, align: 32, offset: 2304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !271, file: !270, line: 114, baseType: !137, size: 32, align: 32, offset: 2336)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !271, file: !270, line: 115, baseType: !64, size: 32, align: 32, offset: 2368)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !271, file: !270, line: 116, baseType: !137, size: 32, align: 32, offset: 2400)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !271, file: !270, line: 117, baseType: !137, size: 32, align: 32, offset: 2432)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !271, file: !270, line: 118, baseType: !64, size: 32, align: 32, offset: 2464)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !271, file: !270, line: 120, baseType: !64, size: 32, align: 32, offset: 2496)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !271, file: !270, line: 122, baseType: !64, size: 32, align: 32, offset: 2528)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !271, file: !270, line: 124, baseType: !64, size: 32, align: 32, offset: 2560)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !271, file: !270, line: 125, baseType: !64, size: 32, align: 32, offset: 2592)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !271, file: !270, line: 126, baseType: !137, size: 32, align: 32, offset: 2624)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !271, file: !270, line: 127, baseType: !64, size: 32, align: 32, offset: 2656)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !271, file: !270, line: 128, baseType: !137, size: 32, align: 32, offset: 2688)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !271, file: !270, line: 129, baseType: !137, size: 32, align: 32, offset: 2720)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !271, file: !270, line: 130, baseType: !64, size: 32, align: 32, offset: 2752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !271, file: !270, line: 131, baseType: !137, size: 32, align: 32, offset: 2784)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !271, file: !270, line: 132, baseType: !64, size: 32, align: 32, offset: 2816)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !271, file: !270, line: 133, baseType: !64, size: 32, align: 32, offset: 2848)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !271, file: !270, line: 134, baseType: !64, size: 32, align: 32, offset: 2880)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !271, file: !270, line: 135, baseType: !64, size: 32, align: 32, offset: 2912)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !271, file: !270, line: 136, baseType: !137, size: 32, align: 32, offset: 2944)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !271, file: !270, line: 137, baseType: !137, size: 32, align: 32, offset: 2976)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !271, file: !270, line: 138, baseType: !137, size: 32, align: 32, offset: 3008)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !271, file: !270, line: 139, baseType: !137, size: 32, align: 32, offset: 3040)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !271, file: !270, line: 140, baseType: !357, size: 512, align: 64, offset: 3072)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !270, line: 53, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 42, size: 512, align: 64, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !372}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !358, file: !270, line: 43, baseType: !64, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !358, file: !270, line: 44, baseType: !64, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !358, file: !270, line: 45, baseType: !64, size: 32, align: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !358, file: !270, line: 46, baseType: !64, size: 32, align: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !358, file: !270, line: 47, baseType: !163, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !358, file: !270, line: 48, baseType: !163, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !358, file: !270, line: 49, baseType: !163, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !358, file: !270, line: 50, baseType: !133, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !358, file: !270, line: 51, baseType: !369, size: 64, align: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !135, line: 107, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 96, align: 32, elements: !124)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !358, file: !270, line: 52, baseType: !191, size: 64, align: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !271, file: !270, line: 141, baseType: !374, size: 576, align: 64, offset: 3584)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 576, align: 64, elements: !124)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !270, line: 40, baseType: !376)
!376 = !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 36, size: 192, align: 64, elements: !377)
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !376, file: !270, line: 37, baseType: !64, size: 32, align: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !376, file: !270, line: 38, baseType: !163, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !376, file: !270, line: 39, baseType: !163, size: 64, align: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !271, file: !270, line: 142, baseType: !374, size: 576, align: 64, offset: 4160)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !67, file: !1, line: 41, type: !70)
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 2, scope: !67, file: !1, line: 41, type: !64)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "homenr", arg: 3, scope: !67, file: !1, line: 41, type: !64)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !67, file: !1, line: 41, type: !133)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !67, file: !1, line: 41, type: !133)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 6, scope: !67, file: !1, line: 42, type: !139)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 7, scope: !67, file: !1, line: 42, type: !238)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atnr", arg: 8, scope: !67, file: !1, line: 42, type: !64)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 9, scope: !67, file: !1, line: 42, type: !268)
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ener", arg: 10, scope: !67, file: !1, line: 43, type: !163)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wd", scope: !67, file: !1, line: 48, type: !137)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wdd", scope: !67, file: !1, line: 48, type: !137)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zi", scope: !67, file: !1, line: 48, type: !137)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fz", scope: !67, file: !1, line: 48, type: !137)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dd", scope: !67, file: !1, line: 48, type: !137)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d10", scope: !67, file: !1, line: 48, type: !137)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d4", scope: !67, file: !1, line: 48, type: !137)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d9", scope: !67, file: !1, line: 48, type: !137)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d3", scope: !67, file: !1, line: 48, type: !137)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r9", scope: !67, file: !1, line: 48, type: !137)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r3", scope: !67, file: !1, line: 48, type: !137)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !67, file: !1, line: 48, type: !137)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc6", scope: !67, file: !1, line: 48, type: !137)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc12", scope: !67, file: !1, line: 48, type: !137)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !67, file: !1, line: 49, type: !191)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !67, file: !1, line: 50, type: !64)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !67, file: !1, line: 50, type: !64)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ti", scope: !67, file: !1, line: 50, type: !64)
!411 = !{!412, !413, !414, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!412 = !DIGlobalVariable(name: "bFirst", scope: !67, file: !1, line: 45, type: !64, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariable(name: "bGlas", scope: !67, file: !1, line: 45, type: !64, isLocal: true, isDefinition: true, variable: i32* @do_glas.bGlas)
!414 = !DIGlobalVariable(name: "d", scope: !67, file: !1, line: 46, type: !415, isLocal: true, isDefinition: true, variable: [2 x float]* @do_glas.d)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, align: 32, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 2)
!418 = !DIGlobalVariable(name: "pi6", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.pi6)
!419 = !DIGlobalVariable(name: "pi12", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.pi12)
!420 = !DIGlobalVariable(name: "rc9", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.rc9)
!421 = !DIGlobalVariable(name: "rc4", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.rc4)
!422 = !DIGlobalVariable(name: "rc10", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.rc10)
!423 = !DIGlobalVariable(name: "rc3", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.rc3)
!424 = !DIGlobalVariable(name: "rc", scope: !67, file: !1, line: 46, type: !137, isLocal: true, isDefinition: true, variable: float* @do_glas.rc)
!425 = !DIGlobalVariable(name: "c6", scope: !67, file: !1, line: 47, type: !163, isLocal: true, isDefinition: true, variable: float** @do_glas.c6)
!426 = !DIGlobalVariable(name: "c12", scope: !67, file: !1, line: 47, type: !163, isLocal: true, isDefinition: true, variable: float** @do_glas.c12)
!427 = !{i32 2, !"Dwarf Version", i32 2}
!428 = !{i32 2, !"Debug Info Version", i32 700000003}
!429 = !{i32 1, !"PIC Level", i32 2}
!430 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!431 = !DIExpression()
!432 = !DILocation(line: 114, column: 15, scope: !60)
!433 = !DILocation(line: 116, column: 20, scope: !60)
!434 = !DILocation(line: 116, column: 12, scope: !60)
!435 = !DILocation(line: 116, column: 57, scope: !60)
!436 = !DILocation(line: 116, column: 45, scope: !60)
!437 = !DILocation(line: 116, column: 5, scope: !60)
!438 = !DILocation(line: 41, column: 20, scope: !67)
!439 = !DILocation(line: 41, column: 28, scope: !67)
!440 = !DILocation(line: 41, column: 38, scope: !67)
!441 = !DILocation(line: 41, column: 50, scope: !67)
!442 = !DILocation(line: 41, column: 59, scope: !67)
!443 = !DILocation(line: 42, column: 19, scope: !67)
!444 = !DILocation(line: 42, column: 33, scope: !67)
!445 = !DILocation(line: 42, column: 40, scope: !67)
!446 = !DILocation(line: 42, column: 57, scope: !67)
!447 = !DILocation(line: 43, column: 12, scope: !67)
!448 = !DILocation(line: 52, column: 12, scope: !67)
!449 = !{!450, !455, i64 80}
!450 = !{!"", !451, i64 0, !454, i64 4, !455, i64 8, !455, i64 16, !455, i64 24, !455, i64 32, !455, i64 40, !455, i64 48, !455, i64 56, !455, i64 64, !455, i64 72, !455, i64 80, !455, i64 88, !455, i64 96, !455, i64 104, !455, i64 112, !455, i64 120, !455, i64 128, !455, i64 136, !455, i64 144, !455, i64 152, !455, i64 160, !455, i64 168}
!451 = !{!"float", !452, i64 0}
!452 = !{!"omnipotent char", !453, i64 0}
!453 = !{!"Simple C/C++ TBAA"}
!454 = !{!"int", !452, i64 0}
!455 = !{!"any pointer", !452, i64 0}
!456 = !DILocation(line: 49, column: 9, scope: !67)
!457 = !DILocation(line: 53, column: 7, scope: !67)
!458 = !DILocation(line: 54, column: 16, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 53, column: 15)
!460 = distinct !DILexicalBlock(scope: !67, file: !1, line: 53, column: 7)
!461 = !{!462, !451, i64 368}
!462 = !{!"", !454, i64 0, !454, i64 4, !454, i64 8, !454, i64 12, !454, i64 16, !454, i64 20, !454, i64 24, !454, i64 28, !454, i64 32, !454, i64 36, !454, i64 40, !454, i64 44, !454, i64 48, !454, i64 52, !451, i64 56, !451, i64 60, !451, i64 64, !454, i64 68, !454, i64 72, !454, i64 76, !454, i64 80, !451, i64 84, !454, i64 88, !454, i64 92, !454, i64 96, !454, i64 100, !454, i64 104, !454, i64 108, !454, i64 112, !454, i64 116, !451, i64 120, !452, i64 124, !452, i64 160, !454, i64 196, !451, i64 200, !451, i64 204, !454, i64 208, !451, i64 212, !451, i64 216, !454, i64 220, !451, i64 224, !451, i64 228, !451, i64 232, !454, i64 236, !451, i64 240, !451, i64 244, !454, i64 248, !451, i64 252, !451, i64 256, !451, i64 260, !451, i64 264, !451, i64 268, !454, i64 272, !454, i64 276, !454, i64 280, !451, i64 284, !451, i64 288, !451, i64 292, !454, i64 296, !451, i64 300, !451, i64 304, !454, i64 308, !454, i64 312, !454, i64 316, !454, i64 320, !454, i64 324, !451, i64 328, !454, i64 332, !451, i64 336, !451, i64 340, !454, i64 344, !451, i64 348, !454, i64 352, !454, i64 356, !454, i64 360, !454, i64 364, !451, i64 368, !451, i64 372, !451, i64 376, !451, i64 380, !463, i64 384, !452, i64 448, !452, i64 520}
!463 = !{!"", !454, i64 0, !454, i64 4, !454, i64 8, !454, i64 12, !455, i64 16, !455, i64 24, !455, i64 32, !455, i64 40, !455, i64 48, !455, i64 56}
!464 = !DILocation(line: 54, column: 10, scope: !459)
!465 = !{!451, !451, i64 0}
!466 = !DILocation(line: 55, column: 16, scope: !459)
!467 = !{!462, !451, i64 372}
!468 = !DILocation(line: 55, column: 10, scope: !459)
!469 = !DILocation(line: 56, column: 16, scope: !459)
!470 = !{!462, !451, i64 376}
!471 = !DILocation(line: 56, column: 10, scope: !459)
!472 = !DILocation(line: 57, column: 16, scope: !459)
!473 = !{!462, !451, i64 380}
!474 = !DILocation(line: 57, column: 10, scope: !459)
!475 = !DILocation(line: 60, column: 13, scope: !459)
!476 = !DILocation(line: 60, column: 24, scope: !459)
!477 = !DILocation(line: 60, column: 39, scope: !459)
!478 = !DILocation(line: 61, column: 13, scope: !459)
!479 = !DILocation(line: 61, column: 24, scope: !459)
!480 = !DILocation(line: 61, column: 39, scope: !459)
!481 = !DILocation(line: 62, column: 13, scope: !459)
!482 = !DILocation(line: 62, column: 24, scope: !459)
!483 = !DILocation(line: 62, column: 39, scope: !459)
!484 = !DILocation(line: 60, column: 11, scope: !459)
!485 = !{!454, !454, i64 0}
!486 = !DILocation(line: 65, column: 9, scope: !459)
!487 = !DILocation(line: 63, column: 13, scope: !459)
!488 = !DILocation(line: 63, column: 24, scope: !459)
!489 = !DILocation(line: 66, column: 15, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 66, column: 11)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 65, column: 16)
!492 = distinct !DILexicalBlock(scope: !459, file: !1, line: 65, column: 9)
!493 = !{!462, !454, i64 236}
!494 = !DILocation(line: 66, column: 25, scope: !490)
!495 = !DILocation(line: 66, column: 11, scope: !491)
!496 = !DILocation(line: 67, column: 2, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !1, line: 66, column: 38)
!498 = !DILocation(line: 80, column: 8, scope: !491)
!499 = !DILocation(line: 80, column: 12, scope: !491)
!500 = !DILocation(line: 80, column: 17, scope: !491)
!501 = !DILocation(line: 80, column: 22, scope: !491)
!502 = !DILocation(line: 68, column: 7, scope: !497)
!503 = !DILocation(line: 69, column: 14, scope: !491)
!504 = !{!505, !451, i64 124}
!505 = !{!"", !454, i64 0, !451, i64 4, !451, i64 8, !451, i64 12, !451, i64 16, !451, i64 20, !451, i64 24, !454, i64 28, !451, i64 32, !451, i64 36, !451, i64 40, !451, i64 44, !451, i64 48, !454, i64 52, !454, i64 56, !451, i64 60, !454, i64 64, !451, i64 68, !455, i64 72, !455, i64 80, !455, i64 88, !455, i64 96, !451, i64 104, !451, i64 108, !455, i64 112, !451, i64 120, !451, i64 124, !451, i64 128, !451, i64 132, !454, i64 136, !451, i64 140, !451, i64 144, !454, i64 148, !454, i64 152, !454, i64 156, !454, i64 160, !454, i64 164, !454, i64 168, !454, i64 172, !454, i64 176, !452, i64 180, !454, i64 192, !454, i64 196, !454, i64 200, !454, i64 204, !455, i64 208, !455, i64 216, !455, i64 224, !455, i64 232, !452, i64 240, !452, i64 1488, !454, i64 2736, !454, i64 2740, !455, i64 2744, !455, i64 2752, !455, i64 2760, !454, i64 2768, !451, i64 2772, !455, i64 2776, !454, i64 2784, !455, i64 2792, !455, i64 2800, !454, i64 2808, !454, i64 2812, !454, i64 2816, !455, i64 2824, !455, i64 2832, !451, i64 2840}
!506 = !{!505, !451, i64 4}
!507 = !DILocation(line: 69, column: 12, scope: !491)
!508 = !DILocation(line: 70, column: 16, scope: !491)
!509 = !DILocation(line: 70, column: 19, scope: !491)
!510 = !DILocation(line: 70, column: 12, scope: !491)
!511 = !DILocation(line: 71, column: 17, scope: !491)
!512 = !DILocation(line: 71, column: 12, scope: !491)
!513 = !DILocation(line: 72, column: 17, scope: !491)
!514 = !DILocation(line: 72, column: 21, scope: !491)
!515 = !DILocation(line: 72, column: 12, scope: !491)
!516 = !DILocation(line: 73, column: 17, scope: !491)
!517 = !DILocation(line: 73, column: 12, scope: !491)
!518 = !DILocation(line: 80, column: 27, scope: !491)
!519 = !DILocation(line: 80, column: 31, scope: !491)
!520 = !DILocation(line: 80, column: 35, scope: !491)
!521 = !DILocation(line: 80, column: 39, scope: !491)
!522 = !DILocation(line: 75, column: 7, scope: !491)
!523 = !DILocation(line: 81, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !491, file: !1, line: 81, column: 11)
!525 = !DILocation(line: 81, column: 18, scope: !524)
!526 = !DILocation(line: 81, column: 16, scope: !524)
!527 = !DILocation(line: 81, column: 11, scope: !491)
!528 = !DILocation(line: 82, column: 2, scope: !524)
!529 = !DILocation(line: 84, column: 7, scope: !491)
!530 = !{!455, !455, i64 0}
!531 = !DILocation(line: 85, column: 7, scope: !491)
!532 = !DILocation(line: 50, column: 8, scope: !67)
!533 = !DILocation(line: 87, column: 18, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 87, column: 7)
!535 = distinct !DILexicalBlock(scope: !491, file: !1, line: 87, column: 7)
!536 = !DILocation(line: 87, column: 7, scope: !535)
!537 = !DILocation(line: 88, column: 11, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !1, line: 87, column: 31)
!539 = !{!505, !455, i64 2824}
!540 = !DILocation(line: 88, column: 2, scope: !538)
!541 = !DILocation(line: 88, column: 9, scope: !538)
!542 = !DILocation(line: 89, column: 11, scope: !538)
!543 = !DILocation(line: 89, column: 2, scope: !538)
!544 = !DILocation(line: 89, column: 9, scope: !538)
!545 = !DILocation(line: 87, column: 27, scope: !534)
!546 = !DILocation(line: 93, column: 15, scope: !492)
!547 = !DILocation(line: 93, column: 7, scope: !492)
!548 = !DILocation(line: 95, column: 3, scope: !459)
!549 = !DILocation(line: 97, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !67, file: !1, line: 97, column: 7)
!551 = !DILocation(line: 97, column: 7, scope: !67)
!552 = !DILocation(line: 99, column: 20, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 99, column: 5)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 99, column: 5)
!555 = distinct !DILexicalBlock(scope: !550, file: !1, line: 97, column: 14)
!556 = !DILocation(line: 99, column: 5, scope: !554)
!557 = !DILocation(line: 99, column: 26, scope: !553)
!558 = !DILocation(line: 101, column: 16, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 101, column: 11)
!560 = distinct !DILexicalBlock(scope: !553, file: !1, line: 99, column: 41)
!561 = !DILocation(line: 104, column: 19, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !1, line: 101, column: 70)
!563 = !DILocation(line: 100, column: 14, scope: !560)
!564 = !DILocation(line: 50, column: 12, scope: !67)
!565 = !DILocation(line: 101, column: 11, scope: !559)
!566 = !DILocation(line: 101, column: 24, scope: !559)
!567 = !DILocation(line: 101, column: 39, scope: !559)
!568 = !DILocation(line: 101, column: 42, scope: !559)
!569 = !DILocation(line: 101, column: 55, scope: !559)
!570 = !DILocation(line: 101, column: 11, scope: !560)
!571 = !DILocation(line: 102, column: 9, scope: !562)
!572 = !DILocation(line: 48, column: 15, scope: !67)
!573 = !DILocation(line: 103, column: 26, scope: !562)
!574 = !DILocation(line: 103, column: 25, scope: !562)
!575 = !DILocation(line: 103, column: 19, scope: !562)
!576 = !DILocation(line: 103, column: 14, scope: !562)
!577 = !DILocation(line: 103, column: 13, scope: !562)
!578 = !DILocation(line: 103, column: 9, scope: !562)
!579 = !DILocation(line: 48, column: 48, scope: !67)
!580 = !DILocation(line: 104, column: 27, scope: !562)
!581 = !DILocation(line: 104, column: 26, scope: !562)
!582 = !DILocation(line: 104, column: 14, scope: !562)
!583 = !DILocation(line: 104, column: 13, scope: !562)
!584 = !DILocation(line: 104, column: 9, scope: !562)
!585 = !DILocation(line: 48, column: 52, scope: !67)
!586 = !DILocation(line: 48, column: 43, scope: !67)
!587 = !DILocation(line: 50, column: 10, scope: !67)
!588 = !DILocation(line: 119, column: 12, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 118, column: 9)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 110, column: 8)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 108, column: 23)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 108, column: 2)
!593 = distinct !DILexicalBlock(scope: !562, file: !1, line: 108, column: 2)
!594 = !DILocation(line: 120, column: 8, scope: !589)
!595 = !DILocation(line: 124, column: 4, scope: !591)
!596 = !DILocation(line: 108, column: 2, scope: !593)
!597 = !DILocation(line: 109, column: 18, scope: !591)
!598 = !DILocation(line: 109, column: 17, scope: !591)
!599 = !DILocation(line: 109, column: 13, scope: !591)
!600 = !DILocation(line: 48, column: 21, scope: !67)
!601 = !DILocation(line: 110, column: 14, scope: !590)
!602 = !DILocation(line: 110, column: 11, scope: !590)
!603 = !DILocation(line: 110, column: 8, scope: !591)
!604 = !DILocation(line: 111, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !590, file: !1, line: 110, column: 18)
!606 = !DILocation(line: 111, column: 17, scope: !605)
!607 = !DILocation(line: 48, column: 34, scope: !67)
!608 = !DILocation(line: 112, column: 14, scope: !605)
!609 = !DILocation(line: 112, column: 17, scope: !605)
!610 = !DILocation(line: 48, column: 31, scope: !67)
!611 = !DILocation(line: 113, column: 23, scope: !605)
!612 = !DILocation(line: 113, column: 22, scope: !605)
!613 = !DILocation(line: 113, column: 16, scope: !605)
!614 = !DILocation(line: 113, column: 38, scope: !605)
!615 = !DILocation(line: 113, column: 37, scope: !605)
!616 = !DILocation(line: 113, column: 32, scope: !605)
!617 = !DILocation(line: 113, column: 27, scope: !605)
!618 = !DILocation(line: 114, column: 14, scope: !605)
!619 = !DILocation(line: 48, column: 28, scope: !67)
!620 = !DILocation(line: 115, column: 14, scope: !605)
!621 = !DILocation(line: 48, column: 24, scope: !67)
!622 = !DILocation(line: 116, column: 12, scope: !605)
!623 = !DILocation(line: 116, column: 28, scope: !605)
!624 = !DILocation(line: 116, column: 27, scope: !605)
!625 = !DILocation(line: 116, column: 22, scope: !605)
!626 = !DILocation(line: 116, column: 44, scope: !605)
!627 = !DILocation(line: 116, column: 43, scope: !605)
!628 = !DILocation(line: 116, column: 38, scope: !605)
!629 = !DILocation(line: 116, column: 33, scope: !605)
!630 = !DILocation(line: 116, column: 16, scope: !605)
!631 = !DILocation(line: 117, column: 4, scope: !605)
!632 = !DILocation(line: 119, column: 27, scope: !589)
!633 = !DILocation(line: 119, column: 26, scope: !589)
!634 = !DILocation(line: 119, column: 21, scope: !589)
!635 = !DILocation(line: 119, column: 34, scope: !589)
!636 = !DILocation(line: 119, column: 42, scope: !589)
!637 = !DILocation(line: 119, column: 41, scope: !589)
!638 = !DILocation(line: 119, column: 36, scope: !589)
!639 = !DILocation(line: 119, column: 32, scope: !589)
!640 = !DILocation(line: 119, column: 16, scope: !589)
!641 = !DILocation(line: 120, column: 22, scope: !589)
!642 = !DILocation(line: 120, column: 21, scope: !589)
!643 = !DILocation(line: 120, column: 16, scope: !589)
!644 = !DILocation(line: 120, column: 37, scope: !589)
!645 = !DILocation(line: 120, column: 36, scope: !589)
!646 = !DILocation(line: 120, column: 31, scope: !589)
!647 = !DILocation(line: 120, column: 27, scope: !589)
!648 = !DILocation(line: 120, column: 11, scope: !589)
!649 = !DILocation(line: 119, column: 49, scope: !589)
!650 = !DILocation(line: 121, column: 12, scope: !589)
!651 = !DILocation(line: 121, column: 22, scope: !589)
!652 = !DILocation(line: 121, column: 37, scope: !589)
!653 = !DILocation(line: 121, column: 33, scope: !589)
!654 = !DILocation(line: 121, column: 16, scope: !589)
!655 = !DILocation(line: 113, column: 12, scope: !605)
!656 = !DILocation(line: 123, column: 13, scope: !591)
!657 = !DILocation(line: 48, column: 8, scope: !67)
!658 = !DILocation(line: 124, column: 13, scope: !591)
!659 = !DILocation(line: 125, column: 16, scope: !591)
!660 = !DILocation(line: 129, column: 5, scope: !555)
!661 = !DILocation(line: 129, column: 18, scope: !555)
!662 = !DILocation(line: 130, column: 3, scope: !555)
!663 = !DILocation(line: 131, column: 1, scope: !67)
