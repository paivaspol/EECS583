; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/psgather.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@ps_gather_f.bFirst = internal unnamed_addr global i1 false
@ps_gather_f.nnx = internal global i32* null, align 8
@ps_gather_f.nny = internal global i32* null, align 8
@ps_gather_f.nnz = internal global i32* null, align 8
@ps_gather_f.JCXYZ = internal global [81 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [57 x i8] c"Gathering Forces using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"beta = %10g,%10g,%10g\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"c1   = %10g,%10g,%10g\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"c2   = %10g,%10g,%10g\0A\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !207, metadata !346), !dbg !347
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !208, metadata !346), !dbg !348
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !349
  %2 = load i32* %1, align 4, !dbg !351, !tbaa !352
  %3 = add nsw i32 %2, -1, !dbg !351
  store i32 %3, i32* %1, align 4, !dbg !351, !tbaa !352
  %4 = icmp sgt i32 %2, 0, !dbg !361
  br i1 %4, label %._crit_edge, label %5, !dbg !362

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !363
  br label %10, !dbg !362

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !364
  %7 = load i32* %6, align 4, !dbg !364, !tbaa !365
  %8 = icmp sle i32 %2, %7, !dbg !366
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !367
  %or.cond = or i1 %9, %8, !dbg !368
  br i1 %or.cond, label %15, label %10, !dbg !368

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !363
  %11 = trunc i32 %_c to i8, !dbg !369
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !370
  %13 = load i8** %12, align 8, !dbg !371, !tbaa !372
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !371
  store i8* %14, i8** %12, align 8, !dbg !371, !tbaa !372
  store i8 %11, i8* %13, align 1, !dbg !373, !tbaa !374
  br label %17, !dbg !375

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !376
  br label %17, !dbg !377

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !378
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !214, metadata !346), !dbg !379
  %1 = icmp sgt i32 %__signo, 32, !dbg !380
  br i1 %1, label %5, label %2, !dbg !381

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !382
  %4 = shl i32 1, %3, !dbg !383
  br label %5, !dbg !381

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !381
  ret i32 %6, !dbg !384
}

; Function Attrs: nounwind optsize ssp uwtable
define float @ps_gather_inner(i32* nocapture readonly %JCXYZ, float* nocapture readonly %WXYZ, i32* nocapture readonly %ixw, i32* nocapture readonly %iyw, i32* nocapture readonly %izw, float %c1x, float %c1y, float %c1z, float %c2x, float %c2y, float %c2z, float %qi, float* nocapture %f, float*** nocapture readonly %ptr) #4 {
  tail call void @llvm.dbg.value(metadata i32* %JCXYZ, i64 0, metadata !226, metadata !346), !dbg !385
  tail call void @llvm.dbg.value(metadata float* %WXYZ, i64 0, metadata !227, metadata !346), !dbg !386
  tail call void @llvm.dbg.value(metadata i32* %ixw, i64 0, metadata !228, metadata !346), !dbg !387
  tail call void @llvm.dbg.value(metadata i32* %iyw, i64 0, metadata !229, metadata !346), !dbg !388
  tail call void @llvm.dbg.value(metadata i32* %izw, i64 0, metadata !230, metadata !346), !dbg !389
  tail call void @llvm.dbg.value(metadata float %c1x, i64 0, metadata !231, metadata !346), !dbg !390
  tail call void @llvm.dbg.value(metadata float %c1y, i64 0, metadata !232, metadata !346), !dbg !391
  tail call void @llvm.dbg.value(metadata float %c1z, i64 0, metadata !233, metadata !346), !dbg !392
  tail call void @llvm.dbg.value(metadata float %c2x, i64 0, metadata !234, metadata !346), !dbg !393
  tail call void @llvm.dbg.value(metadata float %c2y, i64 0, metadata !235, metadata !346), !dbg !394
  tail call void @llvm.dbg.value(metadata float %c2z, i64 0, metadata !236, metadata !346), !dbg !395
  tail call void @llvm.dbg.value(metadata float %qi, i64 0, metadata !237, metadata !346), !dbg !396
  tail call void @llvm.dbg.value(metadata float* %f, i64 0, metadata !238, metadata !346), !dbg !397
  tail call void @llvm.dbg.value(metadata float*** %ptr, i64 0, metadata !239, metadata !346), !dbg !398
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !240, metadata !346), !dbg !399
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !241, metadata !346), !dbg !400
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !242, metadata !346), !dbg !401
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !243, metadata !346), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !246, metadata !346), !dbg !403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !245, metadata !346), !dbg !404
  br label %1, !dbg !405

; <label>:1                                       ; preds = %1, %0
  %indvars.iv10 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %1 ]
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = phi <4 x float> [ zeroinitializer, %0 ], [ %163, %1 ]
  %3 = getelementptr inbounds i32* %JCXYZ, i64 %indvars.iv10, !dbg !407
  %4 = load i32* %3, align 4, !dbg !407, !tbaa !410
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !247, metadata !346), !dbg !411
  %5 = add nuw nsw i64 %indvars.iv10, 1, !dbg !412
  %6 = getelementptr inbounds i32* %JCXYZ, i64 %5, !dbg !413
  %7 = load i32* %6, align 4, !dbg !413, !tbaa !410
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !248, metadata !346), !dbg !414
  %8 = add nuw nsw i64 %indvars.iv10, 2, !dbg !415
  %9 = getelementptr inbounds i32* %JCXYZ, i64 %8, !dbg !416
  %10 = load i32* %9, align 4, !dbg !416, !tbaa !410
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !249, metadata !346), !dbg !417
  %11 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv, !dbg !418
  %12 = load float* %11, align 4, !dbg !418, !tbaa !419
  tail call void @llvm.dbg.value(metadata float %12, i64 0, metadata !244, metadata !346), !dbg !421
  %13 = sext i32 %4 to i64, !dbg !422
  %14 = getelementptr inbounds i32* %ixw, i64 %13, !dbg !422
  %15 = load i32* %14, align 4, !dbg !422, !tbaa !410
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !250, metadata !346), !dbg !423
  %16 = sext i32 %7 to i64, !dbg !424
  %17 = getelementptr inbounds i32* %iyw, i64 %16, !dbg !424
  %18 = load i32* %17, align 4, !dbg !424, !tbaa !410
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !251, metadata !346), !dbg !425
  %19 = sext i32 %10 to i64, !dbg !426
  %20 = getelementptr inbounds i32* %izw, i64 %19, !dbg !426
  %21 = load i32* %20, align 4, !dbg !426, !tbaa !410
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !252, metadata !346), !dbg !427
  %22 = sext i32 %21 to i64, !dbg !428
  %23 = sext i32 %18 to i64, !dbg !428
  %24 = sext i32 %15 to i64, !dbg !428
  %25 = getelementptr inbounds float*** %ptr, i64 %24, !dbg !428
  %26 = load float*** %25, align 8, !dbg !428, !tbaa !429
  %27 = getelementptr inbounds float** %26, i64 %23, !dbg !428
  %28 = load float** %27, align 8, !dbg !428, !tbaa !429
  %29 = getelementptr inbounds float* %28, i64 %22, !dbg !428
  %30 = load float* %29, align 4, !dbg !428, !tbaa !419
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !240, metadata !346), !dbg !399
  %31 = add nsw i32 %4, -1, !dbg !430
  %32 = sext i32 %31 to i64, !dbg !431
  %33 = getelementptr inbounds i32* %ixw, i64 %32, !dbg !431
  %34 = load i32* %33, align 4, !dbg !431, !tbaa !410
  %35 = sext i32 %34 to i64, !dbg !432
  %36 = getelementptr inbounds float*** %ptr, i64 %35, !dbg !432
  %37 = load float*** %36, align 8, !dbg !432, !tbaa !429
  %38 = getelementptr inbounds float** %37, i64 %23, !dbg !432
  %39 = load float** %38, align 8, !dbg !432, !tbaa !429
  %40 = getelementptr inbounds float* %39, i64 %22, !dbg !432
  %41 = load float* %40, align 4, !dbg !432, !tbaa !419
  %42 = add nsw i32 %4, 1, !dbg !433
  %43 = sext i32 %42 to i64, !dbg !434
  %44 = getelementptr inbounds i32* %ixw, i64 %43, !dbg !434
  %45 = load i32* %44, align 4, !dbg !434, !tbaa !410
  %46 = sext i32 %45 to i64, !dbg !435
  %47 = getelementptr inbounds float*** %ptr, i64 %46, !dbg !435
  %48 = load float*** %47, align 8, !dbg !435, !tbaa !429
  %49 = getelementptr inbounds float** %48, i64 %23, !dbg !435
  %50 = load float** %49, align 8, !dbg !435, !tbaa !429
  %51 = getelementptr inbounds float* %50, i64 %22, !dbg !435
  %52 = load float* %51, align 4, !dbg !435, !tbaa !419
  %53 = fsub float %41, %52, !dbg !436
  %54 = fmul float %53, %c1x, !dbg !437
  %55 = add nsw i32 %4, -2, !dbg !438
  %56 = sext i32 %55 to i64, !dbg !439
  %57 = getelementptr inbounds i32* %ixw, i64 %56, !dbg !439
  %58 = load i32* %57, align 4, !dbg !439, !tbaa !410
  %59 = sext i32 %58 to i64, !dbg !440
  %60 = getelementptr inbounds float*** %ptr, i64 %59, !dbg !440
  %61 = load float*** %60, align 8, !dbg !440, !tbaa !429
  %62 = getelementptr inbounds float** %61, i64 %23, !dbg !440
  %63 = load float** %62, align 8, !dbg !440, !tbaa !429
  %64 = getelementptr inbounds float* %63, i64 %22, !dbg !440
  %65 = load float* %64, align 4, !dbg !440, !tbaa !419
  %66 = add nsw i32 %4, 2, !dbg !441
  %67 = sext i32 %66 to i64, !dbg !442
  %68 = getelementptr inbounds i32* %ixw, i64 %67, !dbg !442
  %69 = load i32* %68, align 4, !dbg !442, !tbaa !410
  %70 = sext i32 %69 to i64, !dbg !443
  %71 = getelementptr inbounds float*** %ptr, i64 %70, !dbg !443
  %72 = load float*** %71, align 8, !dbg !443, !tbaa !429
  %73 = getelementptr inbounds float** %72, i64 %23, !dbg !443
  %74 = load float** %73, align 8, !dbg !443, !tbaa !429
  %75 = getelementptr inbounds float* %74, i64 %22, !dbg !443
  %76 = load float* %75, align 4, !dbg !443, !tbaa !419
  %77 = fsub float %65, %76, !dbg !444
  %78 = fmul float %77, %c2x, !dbg !445
  %79 = fadd float %54, %78, !dbg !446
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !241, metadata !346), !dbg !400
  %80 = add nsw i32 %7, -1, !dbg !447
  %81 = sext i32 %80 to i64, !dbg !448
  %82 = getelementptr inbounds i32* %iyw, i64 %81, !dbg !448
  %83 = load i32* %82, align 4, !dbg !448, !tbaa !410
  %84 = sext i32 %83 to i64, !dbg !449
  %85 = getelementptr inbounds float** %26, i64 %84, !dbg !449
  %86 = load float** %85, align 8, !dbg !449, !tbaa !429
  %87 = getelementptr inbounds float* %86, i64 %22, !dbg !449
  %88 = load float* %87, align 4, !dbg !449, !tbaa !419
  %89 = add nsw i32 %7, 1, !dbg !450
  %90 = sext i32 %89 to i64, !dbg !451
  %91 = getelementptr inbounds i32* %iyw, i64 %90, !dbg !451
  %92 = load i32* %91, align 4, !dbg !451, !tbaa !410
  %93 = sext i32 %92 to i64, !dbg !452
  %94 = getelementptr inbounds float** %26, i64 %93, !dbg !452
  %95 = load float** %94, align 8, !dbg !452, !tbaa !429
  %96 = getelementptr inbounds float* %95, i64 %22, !dbg !452
  %97 = load float* %96, align 4, !dbg !452, !tbaa !419
  %98 = fsub float %88, %97, !dbg !453
  %99 = fmul float %98, %c1y, !dbg !454
  %100 = add nsw i32 %7, -2, !dbg !455
  %101 = sext i32 %100 to i64, !dbg !456
  %102 = getelementptr inbounds i32* %iyw, i64 %101, !dbg !456
  %103 = load i32* %102, align 4, !dbg !456, !tbaa !410
  %104 = sext i32 %103 to i64, !dbg !457
  %105 = getelementptr inbounds float** %26, i64 %104, !dbg !457
  %106 = load float** %105, align 8, !dbg !457, !tbaa !429
  %107 = getelementptr inbounds float* %106, i64 %22, !dbg !457
  %108 = load float* %107, align 4, !dbg !457, !tbaa !419
  %109 = add nsw i32 %7, 2, !dbg !458
  %110 = sext i32 %109 to i64, !dbg !459
  %111 = getelementptr inbounds i32* %iyw, i64 %110, !dbg !459
  %112 = load i32* %111, align 4, !dbg !459, !tbaa !410
  %113 = sext i32 %112 to i64, !dbg !460
  %114 = getelementptr inbounds float** %26, i64 %113, !dbg !460
  %115 = load float** %114, align 8, !dbg !460, !tbaa !429
  %116 = getelementptr inbounds float* %115, i64 %22, !dbg !460
  %117 = load float* %116, align 4, !dbg !460, !tbaa !419
  %118 = fsub float %108, %117, !dbg !461
  %119 = fmul float %118, %c2y, !dbg !462
  %120 = fadd float %99, %119, !dbg !463
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !242, metadata !346), !dbg !401
  %121 = add nsw i32 %10, -1, !dbg !464
  %122 = sext i32 %121 to i64, !dbg !465
  %123 = getelementptr inbounds i32* %izw, i64 %122, !dbg !465
  %124 = load i32* %123, align 4, !dbg !465, !tbaa !410
  %125 = sext i32 %124 to i64, !dbg !466
  %126 = getelementptr inbounds float* %28, i64 %125, !dbg !466
  %127 = load float* %126, align 4, !dbg !466, !tbaa !419
  %128 = add nsw i32 %10, 1, !dbg !467
  %129 = sext i32 %128 to i64, !dbg !468
  %130 = getelementptr inbounds i32* %izw, i64 %129, !dbg !468
  %131 = load i32* %130, align 4, !dbg !468, !tbaa !410
  %132 = sext i32 %131 to i64, !dbg !469
  %133 = getelementptr inbounds float* %28, i64 %132, !dbg !469
  %134 = load float* %133, align 4, !dbg !469, !tbaa !419
  %135 = fsub float %127, %134, !dbg !470
  %136 = fmul float %135, %c1z, !dbg !471
  %137 = add nsw i32 %10, -2, !dbg !472
  %138 = sext i32 %137 to i64, !dbg !473
  %139 = getelementptr inbounds i32* %izw, i64 %138, !dbg !473
  %140 = load i32* %139, align 4, !dbg !473, !tbaa !410
  %141 = sext i32 %140 to i64, !dbg !474
  %142 = getelementptr inbounds float* %28, i64 %141, !dbg !474
  %143 = load float* %142, align 4, !dbg !474, !tbaa !419
  %144 = add nsw i32 %10, 2, !dbg !475
  %145 = sext i32 %144 to i64, !dbg !476
  %146 = getelementptr inbounds i32* %izw, i64 %145, !dbg !476
  %147 = load i32* %146, align 4, !dbg !476, !tbaa !410
  %148 = sext i32 %147 to i64, !dbg !477
  %149 = getelementptr inbounds float* %28, i64 %148, !dbg !477
  %150 = load float* %149, align 4, !dbg !477, !tbaa !419
  %151 = fsub float %143, %150, !dbg !478
  %152 = fmul float %151, %c2z, !dbg !479
  %153 = fadd float %136, %152, !dbg !480
  %154 = insertelement <4 x float> undef, float %12, i32 0, !dbg !481
  %155 = insertelement <4 x float> %154, float %12, i32 1, !dbg !481
  %156 = insertelement <4 x float> %155, float %12, i32 2, !dbg !481
  %157 = insertelement <4 x float> %156, float %12, i32 3, !dbg !481
  %158 = insertelement <4 x float> undef, float %30, i32 0, !dbg !481
  %159 = insertelement <4 x float> %158, float %79, i32 1, !dbg !481
  %160 = insertelement <4 x float> %159, float %120, i32 2, !dbg !481
  %161 = insertelement <4 x float> %160, float %153, i32 3, !dbg !481
  %162 = fmul <4 x float> %157, %161, !dbg !481
  %163 = fadd <4 x float> %2, %162, !dbg !482
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !243, metadata !346), !dbg !402
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !405
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 3, !dbg !405
  %exitcond = icmp eq i64 %indvars.iv.next, 27, !dbg !405
  br i1 %exitcond, label %164, label %1, !dbg !405

; <label>:164                                     ; preds = %1
  %165 = extractelement <4 x float> %163, i32 1, !dbg !483
  %166 = fmul float %165, %qi, !dbg !483
  %167 = load float* %f, align 4, !dbg !484, !tbaa !419
  %168 = fadd float %166, %167, !dbg !484
  store float %168, float* %f, align 4, !dbg !484, !tbaa !419
  %169 = extractelement <4 x float> %163, i32 2, !dbg !485
  %170 = fmul float %169, %qi, !dbg !485
  %171 = getelementptr inbounds float* %f, i64 1, !dbg !486
  %172 = load float* %171, align 4, !dbg !487, !tbaa !419
  %173 = fadd float %170, %172, !dbg !487
  store float %173, float* %171, align 4, !dbg !487, !tbaa !419
  %174 = extractelement <4 x float> %163, i32 3, !dbg !488
  %175 = fmul float %174, %qi, !dbg !488
  %176 = getelementptr inbounds float* %f, i64 2, !dbg !489
  %177 = load float* %176, align 4, !dbg !490, !tbaa !419
  %178 = fadd float %175, %177, !dbg !490
  store float %178, float* %176, align 4, !dbg !490, !tbaa !419
  %179 = extractelement <4 x float> %163, i32 0, !dbg !491
  ret float %179, !dbg !491
}

; Function Attrs: nounwind optsize ssp uwtable
define float @ps_gather_f(%struct.__sFILE* nocapture %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* %box, float* nocapture %pot, %struct.t_PSgrid* %grid, float* nocapture readonly %beta, %struct.t_nrnb* nocapture %nrnb) #4 {
  %ixyz = alloca [3 x i32], align 4
  %invh = alloca [3 x float], align 4
  %c1 = alloca [3 x float], align 4
  %c2 = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixw = alloca [7 x i32], align 16
  %iyw = alloca [7 x i32], align 16
  %izw = alloca [7 x i32], align 16
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %ptr = alloca float***, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !278, metadata !346), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %bVerbose, i64 0, metadata !279, metadata !346), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !280, metadata !346), !dbg !494
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !281, metadata !346), !dbg !495
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !282, metadata !346), !dbg !496
  tail call void @llvm.dbg.value(metadata float* %charge, i64 0, metadata !283, metadata !346), !dbg !497
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !284, metadata !346), !dbg !498
  tail call void @llvm.dbg.value(metadata float* %pot, i64 0, metadata !285, metadata !346), !dbg !499
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !286, metadata !346), !dbg !500
  tail call void @llvm.dbg.value(metadata float* %beta, i64 0, metadata !287, metadata !346), !dbg !501
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !288, metadata !346), !dbg !502
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %ixyz, metadata !294, metadata !346), !dbg !503
  tail call void @llvm.dbg.declare(metadata [3 x float]* %invh, metadata !297, metadata !346), !dbg !504
  tail call void @llvm.dbg.declare(metadata [3 x float]* undef, metadata !298, metadata !346), !dbg !505
  tail call void @llvm.dbg.declare(metadata [3 x float]* %c1, metadata !299, metadata !346), !dbg !506
  tail call void @llvm.dbg.declare(metadata [3 x float]* %c2, metadata !300, metadata !346), !dbg !507
  %1 = bitcast [27 x float]* %WXYZ to i8*, !dbg !508
  call void @llvm.lifetime.start(i64 108, i8* %1) #5, !dbg !508
  tail call void @llvm.dbg.declare(metadata [27 x float]* %WXYZ, metadata !301, metadata !346), !dbg !509
  tail call void @llvm.dbg.declare(metadata [7 x i32]* %ixw, metadata !311, metadata !346), !dbg !510
  tail call void @llvm.dbg.declare(metadata [7 x i32]* %iyw, metadata !315, metadata !346), !dbg !511
  tail call void @llvm.dbg.declare(metadata [7 x i32]* %izw, metadata !316, metadata !346), !dbg !512
  tail call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !318, metadata !346), !dbg !513
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !319, metadata !346), !dbg !514
  tail call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !320, metadata !346), !dbg !515
  tail call void @llvm.dbg.value(metadata float**** %ptr, i64 0, metadata !321, metadata !346), !dbg !516
  call void @unpack_PSgrid(%struct.t_PSgrid* %grid, i32* %nx, i32* %ny, i32* %nz, float**** %ptr) #7, !dbg !517
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !318, metadata !346), !dbg !513
  %2 = load i32* %nx, align 4, !dbg !518, !tbaa !410
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !319, metadata !346), !dbg !514
  %3 = load i32* %ny, align 4, !dbg !519, !tbaa !410
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !320, metadata !346), !dbg !515
  %4 = load i32* %nz, align 4, !dbg !520, !tbaa !410
  %5 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0, !dbg !521
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !326, metadata !346), !dbg !522
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !327, metadata !346), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !328, metadata !346), !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !329, metadata !346), !dbg !526
  tail call void @llvm.dbg.value(metadata float* %5, i64 0, metadata !330, metadata !346), !dbg !527
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !331, metadata !346), !dbg !528
  %6 = sitofp i32 %2 to float, !dbg !529
  %7 = load float* %box, align 4, !dbg !530, !tbaa !419
  %8 = fdiv float %6, %7, !dbg !531
  store float %8, float* %5, align 4, !dbg !532, !tbaa !419
  %9 = sitofp i32 %3 to float, !dbg !533
  %10 = getelementptr inbounds float* %box, i64 1, !dbg !534
  %11 = load float* %10, align 4, !dbg !534, !tbaa !419
  %12 = fdiv float %9, %11, !dbg !535
  %13 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1, !dbg !536
  store float %12, float* %13, align 4, !dbg !537, !tbaa !419
  %14 = sitofp i32 %4 to float, !dbg !538
  %15 = getelementptr inbounds float* %box, i64 2, !dbg !539
  %16 = load float* %15, align 4, !dbg !539, !tbaa !419
  %17 = fdiv float %14, %16, !dbg !540
  %18 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2, !dbg !541
  store float %17, float* %18, align 4, !dbg !542, !tbaa !419
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !290, metadata !346), !dbg !543
  br label %19, !dbg !544

; <label>:19                                      ; preds = %._crit_edge23, %0
  %20 = phi float [ %8, %0 ], [ %.pre, %._crit_edge23 ]
  %indvars.iv20 = phi i64 [ 0, %0 ], [ %indvars.iv.next21, %._crit_edge23 ]
  %21 = getelementptr inbounds float* %beta, i64 %indvars.iv20, !dbg !546
  %22 = load float* %21, align 4, !dbg !546, !tbaa !419
  %23 = fpext float %22 to double, !dbg !546
  %24 = fmul double %23, 5.000000e-01, !dbg !549
  %25 = fpext float %20 to double, !dbg !550
  %26 = fmul double %24, %25, !dbg !551
  %27 = fptrunc double %26 to float, !dbg !552
  %28 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 %indvars.iv20, !dbg !553
  store float %27, float* %28, align 4, !dbg !554, !tbaa !419
  %29 = fsub double 1.000000e+00, %23, !dbg !555
  %30 = fmul double %29, 2.500000e-01, !dbg !556
  %31 = fmul double %25, %30, !dbg !557
  %32 = fptrunc double %31 to float, !dbg !558
  %33 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 %indvars.iv20, !dbg !559
  store float %32, float* %33, align 4, !dbg !560, !tbaa !419
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !544
  %exitcond22 = icmp eq i64 %indvars.iv.next21, 3, !dbg !544
  br i1 %exitcond22, label %34, label %._crit_edge23, !dbg !544

._crit_edge23:                                    ; preds = %19
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv.next21
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !550, !tbaa !419
  br label %19, !dbg !544

; <label>:34                                      ; preds = %19
  %ixw6 = bitcast [7 x i32]* %ixw to i8*
  %iyw9 = bitcast [7 x i32]* %iyw to i8*
  %izw13 = bitcast [7 x i32]* %izw to i8*
  %35 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 0, !dbg !561
  %36 = load float* %35, align 4, !dbg !561, !tbaa !419
  call void @llvm.dbg.value(metadata float %36, i64 0, metadata !305, metadata !346), !dbg !562
  %37 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 1, !dbg !563
  %38 = load float* %37, align 4, !dbg !563, !tbaa !419
  call void @llvm.dbg.value(metadata float %38, i64 0, metadata !306, metadata !346), !dbg !564
  %39 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 2, !dbg !565
  %40 = load float* %39, align 4, !dbg !565, !tbaa !419
  call void @llvm.dbg.value(metadata float %40, i64 0, metadata !307, metadata !346), !dbg !566
  %41 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 0, !dbg !567
  %42 = load float* %41, align 4, !dbg !567, !tbaa !419
  call void @llvm.dbg.value(metadata float %42, i64 0, metadata !308, metadata !346), !dbg !568
  %43 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 1, !dbg !569
  %44 = load float* %43, align 4, !dbg !569, !tbaa !419
  call void @llvm.dbg.value(metadata float %44, i64 0, metadata !309, metadata !346), !dbg !570
  %45 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 2, !dbg !571
  %46 = load float* %45, align 4, !dbg !571, !tbaa !419
  call void @llvm.dbg.value(metadata float %46, i64 0, metadata !310, metadata !346), !dbg !572
  %.b = load i1* @ps_gather_f.bFirst, align 1
  br i1 %.b, label %.preheader, label %47, !dbg !573

; <label>:47                                      ; preds = %34
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !318, metadata !346), !dbg !513
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !319, metadata !346), !dbg !514
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !320, metadata !346), !dbg !515
  %48 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #7, !dbg !574
  %49 = load float* %beta, align 4, !dbg !577, !tbaa !419
  %50 = fpext float %49 to double, !dbg !577
  %51 = getelementptr inbounds float* %beta, i64 1, !dbg !578
  %52 = load float* %51, align 4, !dbg !578, !tbaa !419
  %53 = fpext float %52 to double, !dbg !578
  %54 = getelementptr inbounds float* %beta, i64 2, !dbg !579
  %55 = load float* %54, align 4, !dbg !579, !tbaa !419
  %56 = fpext float %55 to double, !dbg !579
  %57 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), double %50, double %53, double %56) #7, !dbg !580
  %58 = fpext float %36 to double, !dbg !581
  %59 = fpext float %38 to double, !dbg !582
  %60 = fpext float %40 to double, !dbg !583
  %61 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %58, double %59, double %60) #7, !dbg !584
  %62 = fpext float %42 to double, !dbg !585
  %63 = fpext float %44 to double, !dbg !586
  %64 = fpext float %46 to double, !dbg !587
  %65 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), double %62, double %63, double %64) #7, !dbg !588
  %66 = load float* %5, align 4, !dbg !589, !tbaa !419
  %67 = fpext float %66 to double, !dbg !589
  %68 = load float* %13, align 4, !dbg !590, !tbaa !419
  %69 = fpext float %68 to double, !dbg !590
  %70 = load float* %18, align 4, !dbg !591, !tbaa !419
  %71 = fpext float %70 to double, !dbg !591
  %72 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), double %67, double %69, double %71) #7, !dbg !592
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !318, metadata !346), !dbg !513
  %73 = load i32* %nx, align 4, !dbg !593, !tbaa !410
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !319, metadata !346), !dbg !514
  %74 = load i32* %ny, align 4, !dbg !594, !tbaa !410
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !320, metadata !346), !dbg !515
  %75 = load i32* %nz, align 4, !dbg !595, !tbaa !410
  call void @calc_nxyz(i32 %73, i32 %74, i32 %75, i32** @ps_gather_f.nnx, i32** @ps_gather_f.nny, i32** @ps_gather_f.nnz) #7, !dbg !596
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !289, metadata !346), !dbg !597
  br label %76, !dbg !598

; <label>:76                                      ; preds = %76, %47
  %indvars.iv17 = phi i64 [ 0, %47 ], [ %indvars.iv.next18, %76 ]
  %77 = trunc i64 %indvars.iv17 to i32, !dbg !600
  %78 = sdiv i32 %77, 9, !dbg !600
  %79 = add nsw i32 %78, 2, !dbg !603
  %80 = mul nsw i64 %indvars.iv17, 3, !dbg !604
  %81 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %80, !dbg !605
  store i32 %79, i32* %81, align 4, !dbg !606, !tbaa !410
  %82 = sdiv i32 %77, 3, !dbg !607
  %83 = srem i32 %82, 3, !dbg !608
  %84 = add nsw i32 %83, 2, !dbg !609
  %85 = add nuw nsw i64 %80, 1, !dbg !610
  %86 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %85, !dbg !611
  store i32 %84, i32* %86, align 4, !dbg !612, !tbaa !410
  %87 = srem i32 %77, 3, !dbg !613
  %88 = add nsw i32 %87, 2, !dbg !614
  %89 = add nuw nsw i64 %80, 2, !dbg !615
  %90 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %89, !dbg !616
  store i32 %88, i32* %90, align 4, !dbg !617, !tbaa !410
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !598
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 27, !dbg !598
  br i1 %exitcond19, label %91, label %76, !dbg !598

; <label>:91                                      ; preds = %76
  store i1 true, i1* @ps_gather_f.bFirst, align 1
  br label %.preheader, !dbg !618

.preheader:                                       ; preds = %34, %91
  %92 = icmp sgt i32 %natoms, 0, !dbg !619
  br i1 %92, label %.lr.ph, label %133, !dbg !622

.lr.ph:                                           ; preds = %.preheader
  %93 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0, !dbg !623
  %94 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0, !dbg !625
  %95 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1, !dbg !626
  %96 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2, !dbg !630
  %97 = getelementptr inbounds [7 x i32]* %ixw, i64 0, i64 0, !dbg !631
  %98 = getelementptr inbounds [7 x i32]* %iyw, i64 0, i64 0, !dbg !632
  %99 = getelementptr inbounds [7 x i32]* %izw, i64 0, i64 0, !dbg !633
  %100 = add i32 %natoms, -1, !dbg !622
  br label %101, !dbg !622

; <label>:101                                     ; preds = %101, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %101 ]
  %energy.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %131, %101 ]
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !318, metadata !346), !dbg !513
  %102 = load i32* %nx, align 4, !dbg !634, !tbaa !410
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !319, metadata !346), !dbg !514
  %103 = load i32* %ny, align 4, !dbg !635, !tbaa !410
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !320, metadata !346), !dbg !515
  %104 = load i32* %nz, align 4, !dbg !636, !tbaa !410
  %105 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !637
  %106 = trunc i64 %indvars.iv to i32, !dbg !638
  call void @calc_weights(i32 %106, i32 %102, i32 %103, i32 %104, float* %105, float* %box, float* %5, i32* %93, float* %94) #7, !dbg !638
  call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !317, metadata !346), !dbg !639
  %107 = load i32* %93, align 4, !dbg !640, !tbaa !410
  %108 = load i32* %nx, align 4, !dbg !641, !tbaa !410
  %109 = load i32** @ps_gather_f.nnx, align 8, !dbg !642, !tbaa !429
  %110 = load i32* %95, align 4, !dbg !626, !tbaa !410
  %111 = load i32* %ny, align 4, !dbg !643, !tbaa !410
  %112 = load i32** @ps_gather_f.nny, align 8, !dbg !644, !tbaa !429
  %113 = load i32* %96, align 4, !dbg !630, !tbaa !410
  %114 = load i32* %nz, align 4, !dbg !645, !tbaa !410
  %115 = load i32** @ps_gather_f.nnz, align 8, !dbg !646, !tbaa !429
  %116 = sext i32 %107 to i64
  %117 = sext i32 %108 to i64
  %118 = add nsw i64 %116, %117, !dbg !647
  %scevgep.sum = add nsw i64 %118, -3
  %scevgep7 = getelementptr i32* %109, i64 %scevgep.sum
  %scevgep78 = bitcast i32* %scevgep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ixw6, i8* %scevgep78, i64 28, i32 4, i1 false), !dbg !648
  %119 = sext i32 %110 to i64
  %120 = sext i32 %111 to i64
  %121 = add nsw i64 %119, %120, !dbg !647
  %scevgep10.sum = add nsw i64 %121, -3
  %scevgep11 = getelementptr i32* %112, i64 %scevgep10.sum
  %scevgep1112 = bitcast i32* %scevgep11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %iyw9, i8* %scevgep1112, i64 28, i32 4, i1 false), !dbg !649
  %122 = sext i32 %113 to i64
  %123 = sext i32 %114 to i64
  %124 = add nsw i64 %122, %123, !dbg !647
  %scevgep14.sum = add nsw i64 %124, -3
  %scevgep15 = getelementptr i32* %115, i64 %scevgep14.sum
  %scevgep1516 = bitcast i32* %scevgep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %izw13, i8* %scevgep1516, i64 28, i32 4, i1 false), !dbg !650
  %125 = getelementptr inbounds float* %charge, i64 %indvars.iv, !dbg !651
  %126 = load float* %125, align 4, !dbg !651, !tbaa !419
  call void @llvm.dbg.value(metadata float %126, i64 0, metadata !292, metadata !346), !dbg !652
  %127 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !653
  call void @llvm.dbg.value(metadata float**** %ptr, i64 0, metadata !321, metadata !346), !dbg !516
  %128 = load float**** %ptr, align 8, !dbg !654, !tbaa !429
  %129 = call float @ps_gather_inner(i32* getelementptr inbounds ([81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 0), float* %94, i32* %97, i32* %98, i32* %99, float %36, float %38, float %40, float %42, float %44, float %46, float %126, float* %127, float*** %128) #8, !dbg !655
  call void @llvm.dbg.value(metadata float %129, i64 0, metadata !293, metadata !346), !dbg !656
  %130 = fmul float %126, %129, !dbg !657
  %131 = fadd float %energy.02, %130, !dbg !658
  call void @llvm.dbg.value(metadata float %131, i64 0, metadata !291, metadata !346), !dbg !659
  %132 = getelementptr inbounds float* %pot, i64 %indvars.iv, !dbg !660
  store float %129, float* %132, align 4, !dbg !661, !tbaa !419
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !622
  %exitcond = icmp eq i32 %106, %100, !dbg !622
  br i1 %exitcond, label %._crit_edge, label %101, !dbg !622

._crit_edge:                                      ; preds = %101
  %phitmp = fmul float %131, 5.000000e-01, !dbg !622
  br label %133, !dbg !622

; <label>:133                                     ; preds = %._crit_edge, %.preheader
  %energy.0.lcssa = phi float [ %phitmp, %._crit_edge ], [ 0.000000e+00, %.preheader ]
  %134 = mul nsw i32 %natoms, 27, !dbg !662
  %135 = sitofp i32 %134 to double, !dbg !662
  %136 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 82, !dbg !662
  %137 = load double* %136, align 8, !dbg !662, !tbaa !663
  %138 = fadd double %135, %137, !dbg !662
  store double %138, double* %136, align 8, !dbg !662, !tbaa !663
  %139 = mul nsw i32 %natoms, 3, !dbg !665
  %140 = sitofp i32 %139 to double, !dbg !665
  %141 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79, !dbg !665
  %142 = load double* %141, align 8, !dbg !665, !tbaa !663
  %143 = fadd double %140, %142, !dbg !665
  store double %143, double* %141, align 8, !dbg !665, !tbaa !663
  call void @llvm.lifetime.end(i64 108, i8* %1) #5, !dbg !666
  ret float %energy.0.lcssa, !dbg !666
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #2

; Function Attrs: optsize
declare void @calc_weights(i32, i32, i32, i32, float*, float*, float*, i32*, float*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!342, !343, !344}
!llvm.ident = !{!345}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !137, subprograms: !139, globals: !332, imports: !341)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/psgather.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!6 = !DIEnumerator(name: "eNR_INL0100", value: 0)
!7 = !DIEnumerator(name: "eNR_INL0110", value: 1)
!8 = !DIEnumerator(name: "eNR_INL0200", value: 2)
!9 = !DIEnumerator(name: "eNR_INL0210", value: 3)
!10 = !DIEnumerator(name: "eNR_INL0300", value: 4)
!11 = !DIEnumerator(name: "eNR_INL0310", value: 5)
!12 = !DIEnumerator(name: "eNR_INL0301", value: 6)
!13 = !DIEnumerator(name: "eNR_INL0302", value: 7)
!14 = !DIEnumerator(name: "eNR_INL0400", value: 8)
!15 = !DIEnumerator(name: "eNR_INL0410", value: 9)
!16 = !DIEnumerator(name: "eNR_INL0401", value: 10)
!17 = !DIEnumerator(name: "eNR_INL0402", value: 11)
!18 = !DIEnumerator(name: "eNR_INL1000", value: 12)
!19 = !DIEnumerator(name: "eNR_INL1010", value: 13)
!20 = !DIEnumerator(name: "eNR_INL1020", value: 14)
!21 = !DIEnumerator(name: "eNR_INL1030", value: 15)
!22 = !DIEnumerator(name: "eNR_INL1100", value: 16)
!23 = !DIEnumerator(name: "eNR_INL1110", value: 17)
!24 = !DIEnumerator(name: "eNR_INL1120", value: 18)
!25 = !DIEnumerator(name: "eNR_INL1130", value: 19)
!26 = !DIEnumerator(name: "eNR_INL1200", value: 20)
!27 = !DIEnumerator(name: "eNR_INL1210", value: 21)
!28 = !DIEnumerator(name: "eNR_INL1220", value: 22)
!29 = !DIEnumerator(name: "eNR_INL1230", value: 23)
!30 = !DIEnumerator(name: "eNR_INL1300", value: 24)
!31 = !DIEnumerator(name: "eNR_INL1310", value: 25)
!32 = !DIEnumerator(name: "eNR_INL1320", value: 26)
!33 = !DIEnumerator(name: "eNR_INL1330", value: 27)
!34 = !DIEnumerator(name: "eNR_INL1400", value: 28)
!35 = !DIEnumerator(name: "eNR_INL1410", value: 29)
!36 = !DIEnumerator(name: "eNR_INL1420", value: 30)
!37 = !DIEnumerator(name: "eNR_INL1430", value: 31)
!38 = !DIEnumerator(name: "eNR_INL2000", value: 32)
!39 = !DIEnumerator(name: "eNR_INL2010", value: 33)
!40 = !DIEnumerator(name: "eNR_INL2020", value: 34)
!41 = !DIEnumerator(name: "eNR_INL2030", value: 35)
!42 = !DIEnumerator(name: "eNR_INL2100", value: 36)
!43 = !DIEnumerator(name: "eNR_INL2110", value: 37)
!44 = !DIEnumerator(name: "eNR_INL2120", value: 38)
!45 = !DIEnumerator(name: "eNR_INL2130", value: 39)
!46 = !DIEnumerator(name: "eNR_INL2200", value: 40)
!47 = !DIEnumerator(name: "eNR_INL2210", value: 41)
!48 = !DIEnumerator(name: "eNR_INL2220", value: 42)
!49 = !DIEnumerator(name: "eNR_INL2230", value: 43)
!50 = !DIEnumerator(name: "eNR_INL2300", value: 44)
!51 = !DIEnumerator(name: "eNR_INL2310", value: 45)
!52 = !DIEnumerator(name: "eNR_INL2320", value: 46)
!53 = !DIEnumerator(name: "eNR_INL2330", value: 47)
!54 = !DIEnumerator(name: "eNR_INL2400", value: 48)
!55 = !DIEnumerator(name: "eNR_INL2410", value: 49)
!56 = !DIEnumerator(name: "eNR_INL2420", value: 50)
!57 = !DIEnumerator(name: "eNR_INL2430", value: 51)
!58 = !DIEnumerator(name: "eNR_INL3000", value: 52)
!59 = !DIEnumerator(name: "eNR_INL3001", value: 53)
!60 = !DIEnumerator(name: "eNR_INL3002", value: 54)
!61 = !DIEnumerator(name: "eNR_INL3010", value: 55)
!62 = !DIEnumerator(name: "eNR_INL3020", value: 56)
!63 = !DIEnumerator(name: "eNR_INL3030", value: 57)
!64 = !DIEnumerator(name: "eNR_INL3100", value: 58)
!65 = !DIEnumerator(name: "eNR_INL3110", value: 59)
!66 = !DIEnumerator(name: "eNR_INL3120", value: 60)
!67 = !DIEnumerator(name: "eNR_INL3130", value: 61)
!68 = !DIEnumerator(name: "eNR_INL3200", value: 62)
!69 = !DIEnumerator(name: "eNR_INL3210", value: 63)
!70 = !DIEnumerator(name: "eNR_INL3220", value: 64)
!71 = !DIEnumerator(name: "eNR_INL3230", value: 65)
!72 = !DIEnumerator(name: "eNR_INL3300", value: 66)
!73 = !DIEnumerator(name: "eNR_INL3301", value: 67)
!74 = !DIEnumerator(name: "eNR_INL3302", value: 68)
!75 = !DIEnumerator(name: "eNR_INL3310", value: 69)
!76 = !DIEnumerator(name: "eNR_INL3320", value: 70)
!77 = !DIEnumerator(name: "eNR_INL3330", value: 71)
!78 = !DIEnumerator(name: "eNR_INL3400", value: 72)
!79 = !DIEnumerator(name: "eNR_INL3401", value: 73)
!80 = !DIEnumerator(name: "eNR_INL3402", value: 74)
!81 = !DIEnumerator(name: "eNR_INL3410", value: 75)
!82 = !DIEnumerator(name: "eNR_INL3420", value: 76)
!83 = !DIEnumerator(name: "eNR_INL3430", value: 77)
!84 = !DIEnumerator(name: "eNR_INLOOP", value: 78)
!85 = !DIEnumerator(name: "eNR_INL_IATOM", value: 78)
!86 = !DIEnumerator(name: "eNR_WEIGHTS", value: 79)
!87 = !DIEnumerator(name: "eNR_SPREADQ", value: 80)
!88 = !DIEnumerator(name: "eNR_SPREADQBSP", value: 81)
!89 = !DIEnumerator(name: "eNR_GATHERF", value: 82)
!90 = !DIEnumerator(name: "eNR_GATHERFBSP", value: 83)
!91 = !DIEnumerator(name: "eNR_FFT", value: 84)
!92 = !DIEnumerator(name: "eNR_CONV", value: 85)
!93 = !DIEnumerator(name: "eNR_SOLVEPME", value: 86)
!94 = !DIEnumerator(name: "eNR_NS", value: 87)
!95 = !DIEnumerator(name: "eNR_RESETX", value: 88)
!96 = !DIEnumerator(name: "eNR_SHIFTX", value: 89)
!97 = !DIEnumerator(name: "eNR_CGCM", value: 90)
!98 = !DIEnumerator(name: "eNR_FSUM", value: 91)
!99 = !DIEnumerator(name: "eNR_BONDS", value: 92)
!100 = !DIEnumerator(name: "eNR_G96BONDS", value: 93)
!101 = !DIEnumerator(name: "eNR_ANGLES", value: 94)
!102 = !DIEnumerator(name: "eNR_G96ANGLES", value: 95)
!103 = !DIEnumerator(name: "eNR_PROPER", value: 96)
!104 = !DIEnumerator(name: "eNR_IMPROPER", value: 97)
!105 = !DIEnumerator(name: "eNR_RB", value: 98)
!106 = !DIEnumerator(name: "eNR_DISRES", value: 99)
!107 = !DIEnumerator(name: "eNR_ORIRES", value: 100)
!108 = !DIEnumerator(name: "eNR_POSRES", value: 101)
!109 = !DIEnumerator(name: "eNR_ANGRES", value: 102)
!110 = !DIEnumerator(name: "eNR_ANGRESZ", value: 103)
!111 = !DIEnumerator(name: "eNR_MORSE", value: 104)
!112 = !DIEnumerator(name: "eNR_CUBICBONDS", value: 105)
!113 = !DIEnumerator(name: "eNR_WPOL", value: 106)
!114 = !DIEnumerator(name: "eNR_VIRIAL", value: 107)
!115 = !DIEnumerator(name: "eNR_UPDATE", value: 108)
!116 = !DIEnumerator(name: "eNR_EXTUPDATE", value: 109)
!117 = !DIEnumerator(name: "eNR_STOPCM", value: 110)
!118 = !DIEnumerator(name: "eNR_PCOUPL", value: 111)
!119 = !DIEnumerator(name: "eNR_EKIN", value: 112)
!120 = !DIEnumerator(name: "eNR_LINCS", value: 113)
!121 = !DIEnumerator(name: "eNR_LINCSMAT", value: 114)
!122 = !DIEnumerator(name: "eNR_SHAKE", value: 115)
!123 = !DIEnumerator(name: "eNR_SHAKE_V", value: 116)
!124 = !DIEnumerator(name: "eNR_SHAKE_RIJ", value: 117)
!125 = !DIEnumerator(name: "eNR_SHAKE_VIR", value: 118)
!126 = !DIEnumerator(name: "eNR_SETTLE", value: 119)
!127 = !DIEnumerator(name: "eNR_PSHAKEINITLD", value: 120)
!128 = !DIEnumerator(name: "eNR_PSHAKEINITMD", value: 121)
!129 = !DIEnumerator(name: "eNR_PSHAKE", value: 122)
!130 = !DIEnumerator(name: "eNR_DUM2", value: 123)
!131 = !DIEnumerator(name: "eNR_DUM3", value: 124)
!132 = !DIEnumerator(name: "eNR_DUM3FD", value: 125)
!133 = !DIEnumerator(name: "eNR_DUM3FAD", value: 126)
!134 = !DIEnumerator(name: "eNR_DUM3OUT", value: 127)
!135 = !DIEnumerator(name: "eNR_DUM4FD", value: 128)
!136 = !DIEnumerator(name: "eNRNB", value: 129)
!137 = !{!138}
!138 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!139 = !{!140, !209, !215, !253, !322}
!140 = !DISubprogram(name: "__sputc", scope: !141, file: !141, line: 348, type: !142, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !206)
!141 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !144, !145}
!144 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !141, line: 153, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !141, line: 122, size: 1216, align: 64, elements: !148)
!148 = !{!149, !152, !153, !154, !156, !157, !162, !163, !165, !169, !174, !184, !190, !191, !194, !195, !199, !203, !204, !205}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !147, file: !141, line: 123, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !147, file: !141, line: 124, baseType: !144, size: 32, align: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !147, file: !141, line: 125, baseType: !144, size: 32, align: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !147, file: !141, line: 126, baseType: !155, size: 16, align: 16, offset: 128)
!155 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !147, file: !141, line: 127, baseType: !155, size: 16, align: 16, offset: 144)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !147, file: !141, line: 128, baseType: !158, size: 128, align: 64, offset: 192)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !141, line: 88, size: 128, align: 64, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !158, file: !141, line: 89, baseType: !150, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !158, file: !141, line: 90, baseType: !144, size: 32, align: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !147, file: !141, line: 129, baseType: !144, size: 32, align: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !147, file: !141, line: 132, baseType: !164, size: 64, align: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !147, file: !141, line: 133, baseType: !166, size: 64, align: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!144, !164}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !147, file: !141, line: 134, baseType: !170, size: 64, align: 64, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!144, !164, !173, !144}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !147, file: !141, line: 135, baseType: !175, size: 64, align: 64, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !164, !178, !144}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !141, line: 77, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !180, line: 71, baseType: !181)
!180 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !182, line: 46, baseType: !183)
!182 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!183 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !147, file: !141, line: 136, baseType: !185, size: 64, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!144, !164, !188, !144}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !147, file: !141, line: 139, baseType: !158, size: 128, align: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !147, file: !141, line: 140, baseType: !192, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !141, line: 94, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !147, file: !141, line: 141, baseType: !144, size: 32, align: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !147, file: !141, line: 144, baseType: !196, size: 24, align: 8, offset: 928)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 24, align: 8, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 3)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !147, file: !141, line: 145, baseType: !200, size: 8, align: 8, offset: 952)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 8, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 1)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !147, file: !141, line: 148, baseType: !158, size: 128, align: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !147, file: !141, line: 151, baseType: !144, size: 32, align: 32, offset: 1088)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !147, file: !141, line: 152, baseType: !178, size: 64, align: 64, offset: 1152)
!206 = !{!207, !208}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !140, file: !141, line: 348, type: !144)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !140, file: !141, line: 348, type: !145)
!209 = !DISubprogram(name: "__sigbits", scope: !210, file: !210, line: 114, type: !211, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !213)
!210 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!211 = !DISubroutineType(types: !212)
!212 = !{!144, !144}
!213 = !{!214}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !209, file: !210, line: 114, type: !144)
!215 = !DISubprogram(name: "ps_gather_inner", scope: !1, file: !1, line: 38, type: !216, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, function: float (i32*, float*, i32*, i32*, i32*, float, float, float, float, float, float, float, float*, float***)* @ps_gather_inner, variables: !225)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !221, !222, !221, !221, !221, !218, !218, !218, !218, !218, !218, !218, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !219, line: 87, baseType: !220)
!219 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!220 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "JCXYZ", arg: 1, scope: !215, file: !1, line: 38, type: !221)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WXYZ", arg: 2, scope: !215, file: !1, line: 38, type: !222)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ixw", arg: 3, scope: !215, file: !1, line: 38, type: !221)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iyw", arg: 4, scope: !215, file: !1, line: 38, type: !221)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "izw", arg: 5, scope: !215, file: !1, line: 38, type: !221)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1x", arg: 6, scope: !215, file: !1, line: 39, type: !218)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1y", arg: 7, scope: !215, file: !1, line: 39, type: !218)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1z", arg: 8, scope: !215, file: !1, line: 39, type: !218)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2x", arg: 9, scope: !215, file: !1, line: 39, type: !218)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2y", arg: 10, scope: !215, file: !1, line: 39, type: !218)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2z", arg: 11, scope: !215, file: !1, line: 39, type: !218)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "qi", arg: 12, scope: !215, file: !1, line: 40, type: !218)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 13, scope: !215, file: !1, line: 40, type: !222)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 14, scope: !215, file: !1, line: 40, type: !223)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pi", scope: !215, file: !1, line: 42, type: !218)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fX", scope: !215, file: !1, line: 42, type: !218)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fY", scope: !215, file: !1, line: 42, type: !218)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fZ", scope: !215, file: !1, line: 42, type: !218)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weight", scope: !215, file: !1, line: 42, type: !218)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jxyz", scope: !215, file: !1, line: 43, type: !144)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !215, file: !1, line: 43, type: !144)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcx", scope: !215, file: !1, line: 43, type: !144)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcy", scope: !215, file: !1, line: 43, type: !144)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcz", scope: !215, file: !1, line: 43, type: !144)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcx0", scope: !215, file: !1, line: 44, type: !144)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcy0", scope: !215, file: !1, line: 44, type: !144)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcz0", scope: !215, file: !1, line: 44, type: !144)
!253 = !DISubprogram(name: "ps_gather_f", scope: !1, file: !1, line: 86, type: !254, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_PSgrid*, float*, %struct.t_nrnb*)* @ps_gather_f, variables: !277)
!254 = !DISubroutineType(types: !255)
!255 = !{!218, !145, !144, !144, !256, !256, !222, !222, !222, !259, !222, !268}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !219, line: 101, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 96, align: 32, elements: !197)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_PSgrid", file: !261, line: 46, baseType: !262)
!261 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/poisson.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!262 = !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 43, size: 192, align: 64, elements: !263)
!263 = !{!264, !265, !266, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nx", scope: !262, file: !261, line: 44, baseType: !144, size: 32, align: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ny", scope: !262, file: !261, line: 44, baseType: !144, size: 32, align: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !262, file: !261, line: 44, baseType: !144, size: 32, align: 32, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !262, file: !261, line: 45, baseType: !223, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb", file: !4, line: 95, baseType: !270)
!270 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 93, size: 8256, align: 64, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !270, file: !4, line: 94, baseType: !273, size: 8256, align: 64)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 8256, align: 64, elements: !275)
!274 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!275 = !{!276}
!276 = !DISubrange(count: 129)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !297, !298, !299, !300, !301, !305, !306, !307, !308, !309, !310, !311, !315, !316, !317, !318, !319, !320, !321}
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !253, file: !1, line: 86, type: !145)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerbose", arg: 2, scope: !253, file: !1, line: 86, type: !144)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 3, scope: !253, file: !1, line: 87, type: !144)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !253, file: !1, line: 87, type: !256)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !253, file: !1, line: 87, type: !256)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "charge", arg: 6, scope: !253, file: !1, line: 87, type: !222)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !253, file: !1, line: 87, type: !222)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pot", arg: 8, scope: !253, file: !1, line: 88, type: !222)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grid", arg: 9, scope: !253, file: !1, line: 88, type: !259)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 10, scope: !253, file: !1, line: 88, type: !222)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 11, scope: !253, file: !1, line: 88, type: !268)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !253, file: !1, line: 93, type: !144)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !253, file: !1, line: 93, type: !144)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "energy", scope: !253, file: !1, line: 94, type: !218)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qi", scope: !253, file: !1, line: 95, type: !218)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pi", scope: !253, file: !1, line: 95, type: !218)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ixyz", scope: !253, file: !1, line: 96, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !219, line: 107, baseType: !296)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 96, align: 32, elements: !197)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "invh", scope: !253, file: !1, line: 97, type: !257)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !253, file: !1, line: 97, type: !257)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1", scope: !253, file: !1, line: 97, type: !257)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !253, file: !1, line: 97, type: !257)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "WXYZ", scope: !253, file: !1, line: 98, type: !302)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 864, align: 32, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 27)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1x", scope: !253, file: !1, line: 99, type: !218)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1y", scope: !253, file: !1, line: 99, type: !218)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1z", scope: !253, file: !1, line: 99, type: !218)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2x", scope: !253, file: !1, line: 99, type: !218)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2y", scope: !253, file: !1, line: 99, type: !218)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2z", scope: !253, file: !1, line: 99, type: !218)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ixw", scope: !253, file: !1, line: 100, type: !312)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 224, align: 32, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 7)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iyw", scope: !253, file: !1, line: 100, type: !312)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "izw", scope: !253, file: !1, line: 100, type: !312)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ll", scope: !253, file: !1, line: 101, type: !144)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !253, file: !1, line: 102, type: !144)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !253, file: !1, line: 102, type: !144)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !253, file: !1, line: 102, type: !144)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !253, file: !1, line: 103, type: !223)
!322 = !DISubprogram(name: "calc_invh_h", scope: !261, file: !261, line: 77, type: !323, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, variables: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !222, !144, !144, !144, !222, !222}
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 1, scope: !322, file: !261, line: 77, type: !222)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 2, scope: !322, file: !261, line: 77, type: !144)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 3, scope: !322, file: !261, line: 77, type: !144)
!329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 4, scope: !322, file: !261, line: 77, type: !144)
!330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invh", arg: 5, scope: !322, file: !261, line: 77, type: !222)
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 6, scope: !322, file: !261, line: 77, type: !222)
!332 = !{!333, !334, !335, !336, !337}
!333 = !DIGlobalVariable(name: "bFirst", scope: !253, file: !1, line: 90, type: !144, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariable(name: "nnx", scope: !253, file: !1, line: 91, type: !221, isLocal: true, isDefinition: true, variable: i32** @ps_gather_f.nnx)
!335 = !DIGlobalVariable(name: "nny", scope: !253, file: !1, line: 91, type: !221, isLocal: true, isDefinition: true, variable: i32** @ps_gather_f.nny)
!336 = !DIGlobalVariable(name: "nnz", scope: !253, file: !1, line: 91, type: !221, isLocal: true, isDefinition: true, variable: i32** @ps_gather_f.nnz)
!337 = !DIGlobalVariable(name: "JCXYZ", scope: !253, file: !1, line: 92, type: !338, isLocal: true, isDefinition: true, variable: [81 x i32]* @ps_gather_f.JCXYZ)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 2592, align: 32, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 81)
!341 = !{}
!342 = !{i32 2, !"Dwarf Version", i32 2}
!343 = !{i32 2, !"Debug Info Version", i32 700000003}
!344 = !{i32 1, !"PIC Level", i32 2}
!345 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!346 = !DIExpression()
!347 = !DILocation(line: 348, column: 40, scope: !140)
!348 = !DILocation(line: 348, column: 50, scope: !140)
!349 = !DILocation(line: 349, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !140, file: !141, line: 349, column: 6)
!351 = !DILocation(line: 349, column: 6, scope: !350)
!352 = !{!353, !357, i64 12}
!353 = !{!"__sFILE", !354, i64 0, !357, i64 8, !357, i64 12, !358, i64 16, !358, i64 18, !359, i64 24, !357, i64 40, !354, i64 48, !354, i64 56, !354, i64 64, !354, i64 72, !354, i64 80, !359, i64 88, !354, i64 104, !357, i64 112, !355, i64 116, !355, i64 119, !359, i64 120, !357, i64 136, !360, i64 144}
!354 = !{!"any pointer", !355, i64 0}
!355 = !{!"omnipotent char", !356, i64 0}
!356 = !{!"Simple C/C++ TBAA"}
!357 = !{!"int", !355, i64 0}
!358 = !{!"short", !355, i64 0}
!359 = !{!"__sbuf", !354, i64 0, !357, i64 8}
!360 = !{!"long long", !355, i64 0}
!361 = !DILocation(line: 349, column: 15, scope: !350)
!362 = !DILocation(line: 349, column: 20, scope: !350)
!363 = !DILocation(line: 350, column: 10, scope: !350)
!364 = !DILocation(line: 349, column: 38, scope: !350)
!365 = !{!353, !357, i64 40}
!366 = !DILocation(line: 349, column: 31, scope: !350)
!367 = !DILocation(line: 349, column: 59, scope: !350)
!368 = !DILocation(line: 349, column: 47, scope: !350)
!369 = !DILocation(line: 350, column: 23, scope: !350)
!370 = !DILocation(line: 350, column: 16, scope: !350)
!371 = !DILocation(line: 350, column: 18, scope: !350)
!372 = !{!353, !354, i64 0}
!373 = !DILocation(line: 350, column: 21, scope: !350)
!374 = !{!355, !355, i64 0}
!375 = !DILocation(line: 350, column: 3, scope: !350)
!376 = !DILocation(line: 352, column: 11, scope: !350)
!377 = !DILocation(line: 352, column: 3, scope: !350)
!378 = !DILocation(line: 353, column: 1, scope: !140)
!379 = !DILocation(line: 114, column: 15, scope: !209)
!380 = !DILocation(line: 116, column: 20, scope: !209)
!381 = !DILocation(line: 116, column: 12, scope: !209)
!382 = !DILocation(line: 116, column: 57, scope: !209)
!383 = !DILocation(line: 116, column: 45, scope: !209)
!384 = !DILocation(line: 116, column: 5, scope: !209)
!385 = !DILocation(line: 38, column: 26, scope: !215)
!386 = !DILocation(line: 38, column: 39, scope: !215)
!387 = !DILocation(line: 38, column: 50, scope: !215)
!388 = !DILocation(line: 38, column: 60, scope: !215)
!389 = !DILocation(line: 38, column: 70, scope: !215)
!390 = !DILocation(line: 39, column: 13, scope: !215)
!391 = !DILocation(line: 39, column: 22, scope: !215)
!392 = !DILocation(line: 39, column: 31, scope: !215)
!393 = !DILocation(line: 39, column: 40, scope: !215)
!394 = !DILocation(line: 39, column: 49, scope: !215)
!395 = !DILocation(line: 39, column: 58, scope: !215)
!396 = !DILocation(line: 40, column: 13, scope: !215)
!397 = !DILocation(line: 40, column: 21, scope: !215)
!398 = !DILocation(line: 40, column: 31, scope: !215)
!399 = !DILocation(line: 42, column: 8, scope: !215)
!400 = !DILocation(line: 42, column: 11, scope: !215)
!401 = !DILocation(line: 42, column: 14, scope: !215)
!402 = !DILocation(line: 42, column: 17, scope: !215)
!403 = !DILocation(line: 43, column: 13, scope: !215)
!404 = !DILocation(line: 43, column: 8, scope: !215)
!405 = !DILocation(line: 52, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !215, file: !1, line: 52, column: 3)
!407 = !DILocation(line: 53, column: 14, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 52, column: 43)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 52, column: 3)
!410 = !{!357, !357, i64 0}
!411 = !DILocation(line: 43, column: 15, scope: !215)
!412 = !DILocation(line: 54, column: 21, scope: !408)
!413 = !DILocation(line: 54, column: 14, scope: !408)
!414 = !DILocation(line: 43, column: 19, scope: !215)
!415 = !DILocation(line: 55, column: 21, scope: !408)
!416 = !DILocation(line: 55, column: 14, scope: !408)
!417 = !DILocation(line: 43, column: 23, scope: !215)
!418 = !DILocation(line: 56, column: 14, scope: !408)
!419 = !{!420, !420, i64 0}
!420 = !{!"float", !355, i64 0}
!421 = !DILocation(line: 42, column: 20, scope: !215)
!422 = !DILocation(line: 58, column: 14, scope: !408)
!423 = !DILocation(line: 44, column: 8, scope: !215)
!424 = !DILocation(line: 59, column: 14, scope: !408)
!425 = !DILocation(line: 44, column: 13, scope: !215)
!426 = !DILocation(line: 60, column: 14, scope: !408)
!427 = !DILocation(line: 44, column: 18, scope: !215)
!428 = !DILocation(line: 63, column: 20, scope: !408)
!429 = !{!354, !354, i64 0}
!430 = !DILocation(line: 66, column: 38, scope: !408)
!431 = !DILocation(line: 66, column: 31, scope: !408)
!432 = !DILocation(line: 66, column: 27, scope: !408)
!433 = !DILocation(line: 67, column: 17, scope: !408)
!434 = !DILocation(line: 67, column: 10, scope: !408)
!435 = !DILocation(line: 67, column: 6, scope: !408)
!436 = !DILocation(line: 66, column: 63, scope: !408)
!437 = !DILocation(line: 66, column: 25, scope: !408)
!438 = !DILocation(line: 68, column: 24, scope: !408)
!439 = !DILocation(line: 68, column: 17, scope: !408)
!440 = !DILocation(line: 68, column: 13, scope: !408)
!441 = !DILocation(line: 69, column: 17, scope: !408)
!442 = !DILocation(line: 69, column: 10, scope: !408)
!443 = !DILocation(line: 69, column: 6, scope: !408)
!444 = !DILocation(line: 68, column: 49, scope: !408)
!445 = !DILocation(line: 68, column: 11, scope: !408)
!446 = !DILocation(line: 67, column: 45, scope: !408)
!447 = !DILocation(line: 70, column: 51, scope: !408)
!448 = !DILocation(line: 70, column: 44, scope: !408)
!449 = !DILocation(line: 70, column: 27, scope: !408)
!450 = !DILocation(line: 71, column: 30, scope: !408)
!451 = !DILocation(line: 71, column: 23, scope: !408)
!452 = !DILocation(line: 71, column: 6, scope: !408)
!453 = !DILocation(line: 70, column: 63, scope: !408)
!454 = !DILocation(line: 70, column: 25, scope: !408)
!455 = !DILocation(line: 72, column: 37, scope: !408)
!456 = !DILocation(line: 72, column: 30, scope: !408)
!457 = !DILocation(line: 72, column: 13, scope: !408)
!458 = !DILocation(line: 73, column: 30, scope: !408)
!459 = !DILocation(line: 73, column: 23, scope: !408)
!460 = !DILocation(line: 73, column: 6, scope: !408)
!461 = !DILocation(line: 72, column: 49, scope: !408)
!462 = !DILocation(line: 72, column: 11, scope: !408)
!463 = !DILocation(line: 71, column: 46, scope: !408)
!464 = !DILocation(line: 74, column: 64, scope: !408)
!465 = !DILocation(line: 74, column: 57, scope: !408)
!466 = !DILocation(line: 74, column: 27, scope: !408)
!467 = !DILocation(line: 75, column: 43, scope: !408)
!468 = !DILocation(line: 75, column: 36, scope: !408)
!469 = !DILocation(line: 75, column: 6, scope: !408)
!470 = !DILocation(line: 74, column: 69, scope: !408)
!471 = !DILocation(line: 74, column: 25, scope: !408)
!472 = !DILocation(line: 76, column: 50, scope: !408)
!473 = !DILocation(line: 76, column: 43, scope: !408)
!474 = !DILocation(line: 76, column: 13, scope: !408)
!475 = !DILocation(line: 77, column: 43, scope: !408)
!476 = !DILocation(line: 77, column: 36, scope: !408)
!477 = !DILocation(line: 77, column: 6, scope: !408)
!478 = !DILocation(line: 76, column: 55, scope: !408)
!479 = !DILocation(line: 76, column: 11, scope: !408)
!480 = !DILocation(line: 75, column: 52, scope: !408)
!481 = !DILocation(line: 63, column: 18, scope: !408)
!482 = !DILocation(line: 63, column: 8, scope: !408)
!483 = !DILocation(line: 79, column: 14, scope: !215)
!484 = !DILocation(line: 79, column: 9, scope: !215)
!485 = !DILocation(line: 80, column: 14, scope: !215)
!486 = !DILocation(line: 80, column: 3, scope: !215)
!487 = !DILocation(line: 80, column: 9, scope: !215)
!488 = !DILocation(line: 81, column: 14, scope: !215)
!489 = !DILocation(line: 81, column: 3, scope: !215)
!490 = !DILocation(line: 81, column: 9, scope: !215)
!491 = !DILocation(line: 83, column: 3, scope: !215)
!492 = !DILocation(line: 86, column: 24, scope: !253)
!493 = !DILocation(line: 86, column: 33, scope: !253)
!494 = !DILocation(line: 87, column: 8, scope: !253)
!495 = !DILocation(line: 87, column: 20, scope: !253)
!496 = !DILocation(line: 87, column: 29, scope: !253)
!497 = !DILocation(line: 87, column: 38, scope: !253)
!498 = !DILocation(line: 87, column: 52, scope: !253)
!499 = !DILocation(line: 88, column: 9, scope: !253)
!500 = !DILocation(line: 88, column: 25, scope: !253)
!501 = !DILocation(line: 88, column: 35, scope: !253)
!502 = !DILocation(line: 88, column: 48, scope: !253)
!503 = !DILocation(line: 96, column: 10, scope: !253)
!504 = !DILocation(line: 97, column: 10, scope: !253)
!505 = !DILocation(line: 97, column: 15, scope: !253)
!506 = !DILocation(line: 97, column: 17, scope: !253)
!507 = !DILocation(line: 97, column: 20, scope: !253)
!508 = !DILocation(line: 98, column: 3, scope: !253)
!509 = !DILocation(line: 98, column: 10, scope: !253)
!510 = !DILocation(line: 100, column: 10, scope: !253)
!511 = !DILocation(line: 100, column: 17, scope: !253)
!512 = !DILocation(line: 100, column: 24, scope: !253)
!513 = !DILocation(line: 102, column: 10, scope: !253)
!514 = !DILocation(line: 102, column: 13, scope: !253)
!515 = !DILocation(line: 102, column: 16, scope: !253)
!516 = !DILocation(line: 103, column: 13, scope: !253)
!517 = !DILocation(line: 105, column: 3, scope: !253)
!518 = !DILocation(line: 107, column: 19, scope: !253)
!519 = !DILocation(line: 107, column: 22, scope: !253)
!520 = !DILocation(line: 107, column: 25, scope: !253)
!521 = !DILocation(line: 107, column: 28, scope: !253)
!522 = !DILocation(line: 77, column: 30, scope: !322, inlinedAt: !523)
!523 = distinct !DILocation(line: 107, column: 3, scope: !253)
!524 = !DILocation(line: 77, column: 38, scope: !322, inlinedAt: !523)
!525 = !DILocation(line: 77, column: 45, scope: !322, inlinedAt: !523)
!526 = !DILocation(line: 77, column: 52, scope: !322, inlinedAt: !523)
!527 = !DILocation(line: 77, column: 60, scope: !322, inlinedAt: !523)
!528 = !DILocation(line: 77, column: 70, scope: !322, inlinedAt: !523)
!529 = !DILocation(line: 79, column: 14, scope: !322, inlinedAt: !523)
!530 = !DILocation(line: 79, column: 17, scope: !322, inlinedAt: !523)
!531 = !DILocation(line: 79, column: 16, scope: !322, inlinedAt: !523)
!532 = !DILocation(line: 79, column: 12, scope: !322, inlinedAt: !523)
!533 = !DILocation(line: 80, column: 14, scope: !322, inlinedAt: !523)
!534 = !DILocation(line: 80, column: 17, scope: !322, inlinedAt: !523)
!535 = !DILocation(line: 80, column: 16, scope: !322, inlinedAt: !523)
!536 = !DILocation(line: 80, column: 3, scope: !322, inlinedAt: !523)
!537 = !DILocation(line: 80, column: 12, scope: !322, inlinedAt: !523)
!538 = !DILocation(line: 81, column: 14, scope: !322, inlinedAt: !523)
!539 = !DILocation(line: 81, column: 17, scope: !322, inlinedAt: !523)
!540 = !DILocation(line: 81, column: 16, scope: !322, inlinedAt: !523)
!541 = !DILocation(line: 81, column: 3, scope: !322, inlinedAt: !523)
!542 = !DILocation(line: 81, column: 12, scope: !322, inlinedAt: !523)
!543 = !DILocation(line: 93, column: 12, scope: !253)
!544 = !DILocation(line: 109, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !253, file: !1, line: 109, column: 3)
!546 = !DILocation(line: 110, column: 14, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 109, column: 26)
!548 = distinct !DILexicalBlock(scope: !545, file: !1, line: 109, column: 3)
!549 = !DILocation(line: 110, column: 21, scope: !547)
!550 = !DILocation(line: 110, column: 27, scope: !547)
!551 = !DILocation(line: 110, column: 26, scope: !547)
!552 = !DILocation(line: 110, column: 13, scope: !547)
!553 = !DILocation(line: 110, column: 5, scope: !547)
!554 = !DILocation(line: 110, column: 11, scope: !547)
!555 = !DILocation(line: 111, column: 18, scope: !547)
!556 = !DILocation(line: 111, column: 27, scope: !547)
!557 = !DILocation(line: 111, column: 32, scope: !547)
!558 = !DILocation(line: 111, column: 13, scope: !547)
!559 = !DILocation(line: 111, column: 5, scope: !547)
!560 = !DILocation(line: 111, column: 11, scope: !547)
!561 = !DILocation(line: 113, column: 9, scope: !253)
!562 = !DILocation(line: 99, column: 10, scope: !253)
!563 = !DILocation(line: 114, column: 9, scope: !253)
!564 = !DILocation(line: 99, column: 14, scope: !253)
!565 = !DILocation(line: 115, column: 9, scope: !253)
!566 = !DILocation(line: 99, column: 18, scope: !253)
!567 = !DILocation(line: 116, column: 9, scope: !253)
!568 = !DILocation(line: 99, column: 22, scope: !253)
!569 = !DILocation(line: 117, column: 9, scope: !253)
!570 = !DILocation(line: 99, column: 26, scope: !253)
!571 = !DILocation(line: 118, column: 9, scope: !253)
!572 = !DILocation(line: 99, column: 30, scope: !253)
!573 = !DILocation(line: 120, column: 7, scope: !253)
!574 = !DILocation(line: 121, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 120, column: 15)
!576 = distinct !DILexicalBlock(scope: !253, file: !1, line: 120, column: 7)
!577 = !DILocation(line: 123, column: 43, scope: !575)
!578 = !DILocation(line: 123, column: 52, scope: !575)
!579 = !DILocation(line: 123, column: 61, scope: !575)
!580 = !DILocation(line: 123, column: 5, scope: !575)
!581 = !DILocation(line: 124, column: 43, scope: !575)
!582 = !DILocation(line: 124, column: 50, scope: !575)
!583 = !DILocation(line: 124, column: 57, scope: !575)
!584 = !DILocation(line: 124, column: 5, scope: !575)
!585 = !DILocation(line: 125, column: 43, scope: !575)
!586 = !DILocation(line: 125, column: 50, scope: !575)
!587 = !DILocation(line: 125, column: 57, scope: !575)
!588 = !DILocation(line: 125, column: 5, scope: !575)
!589 = !DILocation(line: 126, column: 43, scope: !575)
!590 = !DILocation(line: 126, column: 52, scope: !575)
!591 = !DILocation(line: 126, column: 61, scope: !575)
!592 = !DILocation(line: 126, column: 5, scope: !575)
!593 = !DILocation(line: 128, column: 15, scope: !575)
!594 = !DILocation(line: 128, column: 18, scope: !575)
!595 = !DILocation(line: 128, column: 21, scope: !575)
!596 = !DILocation(line: 128, column: 5, scope: !575)
!597 = !DILocation(line: 93, column: 10, scope: !253)
!598 = !DILocation(line: 130, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !575, file: !1, line: 130, column: 5)
!600 = !DILocation(line: 131, column: 28, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 130, column: 27)
!602 = distinct !DILexicalBlock(scope: !599, file: !1, line: 130, column: 5)
!603 = !DILocation(line: 131, column: 24, scope: !601)
!604 = !DILocation(line: 131, column: 14, scope: !601)
!605 = !DILocation(line: 131, column: 7, scope: !601)
!606 = !DILocation(line: 131, column: 20, scope: !601)
!607 = !DILocation(line: 132, column: 28, scope: !601)
!608 = !DILocation(line: 132, column: 32, scope: !601)
!609 = !DILocation(line: 132, column: 24, scope: !601)
!610 = !DILocation(line: 132, column: 16, scope: !601)
!611 = !DILocation(line: 132, column: 7, scope: !601)
!612 = !DILocation(line: 132, column: 20, scope: !601)
!613 = !DILocation(line: 133, column: 29, scope: !601)
!614 = !DILocation(line: 133, column: 24, scope: !601)
!615 = !DILocation(line: 133, column: 16, scope: !601)
!616 = !DILocation(line: 133, column: 7, scope: !601)
!617 = !DILocation(line: 133, column: 20, scope: !601)
!618 = !DILocation(line: 137, column: 3, scope: !575)
!619 = !DILocation(line: 140, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 140, column: 3)
!621 = distinct !DILexicalBlock(scope: !253, file: !1, line: 140, column: 3)
!622 = !DILocation(line: 140, column: 3, scope: !621)
!623 = !DILocation(line: 147, column: 43, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !1, line: 140, column: 29)
!625 = !DILocation(line: 147, column: 48, scope: !624)
!626 = !DILocation(line: 151, column: 27, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 149, column: 38)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 149, column: 5)
!629 = distinct !DILexicalBlock(scope: !624, file: !1, line: 149, column: 5)
!630 = !DILocation(line: 152, column: 27, scope: !627)
!631 = !DILocation(line: 156, column: 42, scope: !624)
!632 = !DILocation(line: 156, column: 46, scope: !624)
!633 = !DILocation(line: 156, column: 50, scope: !624)
!634 = !DILocation(line: 147, column: 20, scope: !624)
!635 = !DILocation(line: 147, column: 23, scope: !624)
!636 = !DILocation(line: 147, column: 26, scope: !624)
!637 = !DILocation(line: 147, column: 29, scope: !624)
!638 = !DILocation(line: 147, column: 5, scope: !624)
!639 = !DILocation(line: 101, column: 10, scope: !253)
!640 = !DILocation(line: 150, column: 27, scope: !627)
!641 = !DILocation(line: 150, column: 39, scope: !627)
!642 = !DILocation(line: 150, column: 23, scope: !627)
!643 = !DILocation(line: 151, column: 39, scope: !627)
!644 = !DILocation(line: 151, column: 23, scope: !627)
!645 = !DILocation(line: 152, column: 39, scope: !627)
!646 = !DILocation(line: 152, column: 23, scope: !627)
!647 = !DILocation(line: 149, column: 5, scope: !629)
!648 = !DILocation(line: 150, column: 21, scope: !627)
!649 = !DILocation(line: 151, column: 21, scope: !627)
!650 = !DILocation(line: 152, column: 21, scope: !627)
!651 = !DILocation(line: 155, column: 15, scope: !624)
!652 = !DILocation(line: 95, column: 10, scope: !253)
!653 = !DILocation(line: 158, column: 13, scope: !624)
!654 = !DILocation(line: 158, column: 18, scope: !624)
!655 = !DILocation(line: 156, column: 15, scope: !624)
!656 = !DILocation(line: 95, column: 13, scope: !253)
!657 = !DILocation(line: 160, column: 17, scope: !624)
!658 = !DILocation(line: 160, column: 12, scope: !624)
!659 = !DILocation(line: 94, column: 10, scope: !253)
!660 = !DILocation(line: 161, column: 5, scope: !624)
!661 = !DILocation(line: 161, column: 13, scope: !624)
!662 = !DILocation(line: 164, column: 3, scope: !253)
!663 = !{!664, !664, i64 0}
!664 = !{!"double", !355, i64 0}
!665 = !DILocation(line: 165, column: 3, scope: !253)
!666 = !DILocation(line: 168, column: 1, scope: !253)
