; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calch.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }

@gen_waterhydrogen.matrix1 = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000]], align 16
@gen_waterhydrogen.matrix2 = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000]], align 16
@gen_waterhydrogen.l = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid argument (%d) for nht in routine genh\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !291), !dbg !292
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !291), !dbg !293
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !294
  %2 = load i32* %1, align 4, !dbg !296, !tbaa !297
  %3 = add nsw i32 %2, -1, !dbg !296
  store i32 %3, i32* %1, align 4, !dbg !296, !tbaa !297
  %4 = icmp sgt i32 %2, 0, !dbg !306
  br i1 %4, label %._crit_edge, label %5, !dbg !307

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !308
  br label %10, !dbg !307

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !309
  %7 = load i32* %6, align 4, !dbg !309, !tbaa !310
  %8 = icmp sle i32 %2, %7, !dbg !311
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !312
  %or.cond = or i1 %9, %8, !dbg !313
  br i1 %or.cond, label %15, label %10, !dbg !313

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !308
  %11 = trunc i32 %_c to i8, !dbg !314
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !315
  %13 = load i8** %12, align 8, !dbg !316, !tbaa !317
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !316
  store i8* %14, i8** %12, align 8, !dbg !316, !tbaa !317
  store i8 %11, i8* %13, align 1, !dbg !318, !tbaa !319
  br label %17, !dbg !320

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !321
  br label %17, !dbg !322

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !323
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !291), !dbg !324
  %1 = icmp sgt i32 %__signo, 32, !dbg !325
  br i1 %1, label %5, label %2, !dbg !326

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !327
  %4 = shl i32 1, %3, !dbg !328
  br label %5, !dbg !326

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !326
  ret i32 %6, !dbg !329
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !291), !dbg !330
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !331
  br i1 %1, label %2, label %5, !dbg !332

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !333
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !334
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !332
  ret i32 %7, !dbg !335
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !291), !dbg !336
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !337
  br i1 %1, label %2, label %5, !dbg !338

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !339
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !340
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !338
  ret i32 %7, !dbg !341
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !291), !dbg !342
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !343
  br i1 %1, label %2, label %5, !dbg !344

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !345
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !346
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !344
  ret i32 %7, !dbg !347
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !102, metadata !291), !dbg !348
  %1 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !349
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !350
  %3 = zext i1 %2 to i32, !dbg !350
  ret i32 %3, !dbg !351
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !105, metadata !291), !dbg !352
  %1 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !353
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !354
  %3 = zext i1 %2 to i32, !dbg !354
  ret i32 %3, !dbg !355
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !108, metadata !291), !dbg !356
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !357
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !358
  %3 = zext i1 %2 to i32, !dbg !358
  ret i32 %3, !dbg !359
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !111, metadata !291), !dbg !360
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !361
  %2 = zext i1 %1 to i32, !dbg !361
  ret i32 %2, !dbg !362
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !114, metadata !291), !dbg !363
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !364
  %2 = zext i1 %1 to i32, !dbg !364
  ret i32 %2, !dbg !365
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !117, metadata !291), !dbg !366
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !367
  %2 = zext i1 %1 to i32, !dbg !367
  ret i32 %2, !dbg !368
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !120, metadata !291), !dbg !369
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !121, metadata !291), !dbg !370
  %1 = bitcast float %__x to i32, !dbg !371
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !121, metadata !291), !dbg !370
  %2 = lshr i32 %1, 31, !dbg !372
  ret i32 %2, !dbg !373
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !129, metadata !291), !dbg !374
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !130, metadata !291), !dbg !375
  %1 = bitcast double %__x to i64, !dbg !376
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !130, metadata !291), !dbg !375
  %2 = lshr i64 %1, 63, !dbg !377
  %3 = trunc i64 %2 to i32, !dbg !378
  ret i32 %3, !dbg !379
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !138, metadata !291), !dbg !380
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !139, metadata !291), !dbg !381
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !139, metadata !291), !dbg !381
  %1 = bitcast x86_fp80 %__x to i80, !dbg !382
  %2 = lshr i80 %1, 79, !dbg !382
  %3 = trunc i80 %2 to i32, !dbg !383
  ret i32 %3, !dbg !384
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !151, metadata !291), !dbg !385
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !291) #5, !dbg !386
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !388
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !389
  %or.cond = and i1 %1, %3, !dbg !390
  br i1 %or.cond, label %4, label %.critedge, !dbg !390

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !391
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !392
  ret i32 %7, !dbg !393
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !154, metadata !291), !dbg !394
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !291) #5, !dbg !395
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !397
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !398
  %or.cond = and i1 %1, %3, !dbg !399
  br i1 %or.cond, label %4, label %.critedge, !dbg !399

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !400
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !401
  ret i32 %7, !dbg !402
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !157, metadata !291), !dbg !403
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !291) #5, !dbg !404
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !406
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !407
  %or.cond = and i1 %1, %3, !dbg !408
  br i1 %or.cond, label %4, label %.critedge, !dbg !408

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !409
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !410
  ret i32 %7, !dbg !411
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !163, metadata !291), !dbg !412
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !164, metadata !291), !dbg !413
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !165, metadata !291), !dbg !414
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !166, metadata !291), !dbg !415
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6, !dbg !416
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !166, metadata !291), !dbg !415
  %2 = extractelement <2 x float> %1, i32 0, !dbg !417
  store float %2, float* %__sinp, align 4, !dbg !418, !tbaa !419
  %3 = extractelement <2 x float> %1, i32 1, !dbg !421
  store float %3, float* %__cosp, align 4, !dbg !422, !tbaa !419
  ret void, !dbg !423
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !177, metadata !291), !dbg !424
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !178, metadata !291), !dbg !425
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !179, metadata !291), !dbg !426
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !180, metadata !291), !dbg !427
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6, !dbg !428
  %2 = extractvalue { double, double } %1, 0, !dbg !428
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !429), !dbg !427
  %3 = extractvalue { double, double } %1, 1, !dbg !428
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !180, metadata !430), !dbg !427
  store double %2, double* %__sinp, align 8, !dbg !431, !tbaa !432
  store double %3, double* %__cosp, align 8, !dbg !434, !tbaa !432
  ret void, !dbg !435
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !188, metadata !291), !dbg !436
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !189, metadata !291), !dbg !437
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !190, metadata !291), !dbg !438
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !191, metadata !291), !dbg !439
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6, !dbg !440
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !191, metadata !291), !dbg !439
  %2 = extractelement <2 x float> %1, i32 0, !dbg !441
  store float %2, float* %__sinp, align 4, !dbg !442, !tbaa !419
  %3 = extractelement <2 x float> %1, i32 1, !dbg !443
  store float %3, float* %__cosp, align 4, !dbg !444, !tbaa !419
  ret void, !dbg !445
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !194, metadata !291), !dbg !446
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !195, metadata !291), !dbg !447
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !196, metadata !291), !dbg !448
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !197, metadata !291), !dbg !449
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6, !dbg !450
  %2 = extractvalue { double, double } %1, 0, !dbg !450
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !197, metadata !429), !dbg !449
  %3 = extractvalue { double, double } %1, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !197, metadata !430), !dbg !449
  store double %2, double* %__sinp, align 8, !dbg !451, !tbaa !432
  store double %3, double* %__cosp, align 8, !dbg !452, !tbaa !432
  ret void, !dbg !453
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @gen_waterhydrogen([3 x float]* nocapture readonly %xa, [3 x float]* nocapture %xh) #4 {
  tail call void @llvm.dbg.value(metadata [3 x float]* %xa, i64 0, metadata !207, metadata !291), !dbg !454
  tail call void @llvm.dbg.value(metadata [3 x float]* %xh, i64 0, metadata !208, metadata !291), !dbg !455
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !209, metadata !291), !dbg !456
  %1 = load i32* @gen_waterhydrogen.l, align 4, !dbg !457, !tbaa !461
  %2 = sext i32 %1 to i64, !dbg !462
  br label %3, !dbg !463

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv, !dbg !464
  %5 = load float* %4, align 4, !dbg !464, !tbaa !419
  %6 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix1, i64 0, i64 %2, i64 %indvars.iv, !dbg !462
  %7 = load float* %6, align 4, !dbg !462, !tbaa !419
  %8 = fadd float %5, %7, !dbg !465
  %9 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv, !dbg !466
  store float %8, float* %9, align 4, !dbg !467, !tbaa !419
  %10 = load float* %4, align 4, !dbg !468, !tbaa !419
  %11 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix2, i64 0, i64 %2, i64 %indvars.iv, !dbg !469
  %12 = load float* %11, align 4, !dbg !469, !tbaa !419
  %13 = fadd float %10, %12, !dbg !470
  %14 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv, !dbg !471
  store float %13, float* %14, align 4, !dbg !472, !tbaa !419
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !463
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !463
  br i1 %exitcond, label %15, label %3, !dbg !463

; <label>:15                                      ; preds = %3
  %16 = add nsw i32 %1, 1, !dbg !473
  %17 = srem i32 %16, 6, !dbg !474
  store i32 %17, i32* @gen_waterhydrogen.l, align 4, !dbg !475, !tbaa !461
  ret void, !dbg !476
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_h_pos(i32 %nht, [3 x float]* %xa, [3 x float]* nocapture %xh) #4 {
  %sa = alloca [3 x float], align 4
  %sb = alloca [3 x float], align 4
  %sij = alloca [3 x float], align 4
  %dxc = alloca [3 x float], align 4
  %rBB = alloca [3 x float], align 4
  %rNN = alloca [3 x float], align 4
  %xa2 = alloca [4 x [3 x float]], align 16
  tail call void @llvm.dbg.value(metadata i32 %nht, i64 0, metadata !214, metadata !291), !dbg !477
  tail call void @llvm.dbg.value(metadata [3 x float]* %xa, i64 0, metadata !215, metadata !291), !dbg !478
  tail call void @llvm.dbg.value(metadata [3 x float]* %xh, i64 0, metadata !216, metadata !291), !dbg !479
  tail call void @llvm.dbg.declare(metadata [3 x float]* %sa, metadata !217, metadata !291), !dbg !480
  tail call void @llvm.dbg.declare(metadata [3 x float]* %sb, metadata !218, metadata !291), !dbg !481
  tail call void @llvm.dbg.declare(metadata [3 x float]* %sij, metadata !219, metadata !291), !dbg !482
  tail call void @llvm.dbg.value(metadata float 0x3FEBB67AE0000000, i64 0, metadata !220, metadata !291), !dbg !483
  %switch.tableidx = add i32 %nht, -2, !dbg !484
  %1 = icmp ult i32 %switch.tableidx, 8, !dbg !484
  br i1 %1, label %switch.hole_check, label %70, !dbg !484

switch.hole_check:                                ; preds = %0
  %switch.maskindex = trunc i32 %switch.tableidx to i8, !dbg !484
  %switch.shifted = lshr i8 -57, %switch.maskindex, !dbg !484
  %2 = and i8 %switch.shifted, 1, !dbg !484
  %switch.lobit = icmp eq i8 %2, 0, !dbg !484
  br i1 %switch.lobit, label %70, label %switch.lookup, !dbg !484

switch.lookup:                                    ; preds = %switch.hole_check, %switch.lookup
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %switch.lookup ], [ 0, %switch.hole_check ]
  %rij.040 = phi float [ %14, %switch.lookup ], [ 0.000000e+00, %switch.hole_check ]
  %3 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv84, !dbg !485
  %4 = load float* %3, align 4, !dbg !485, !tbaa !419
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !224, metadata !291), !dbg !490
  %5 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv84, !dbg !491
  %6 = load float* %5, align 4, !dbg !491, !tbaa !419
  %7 = fsub float %6, %4, !dbg !492
  %8 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv84, !dbg !493
  store float %7, float* %8, align 4, !dbg !494, !tbaa !419
  %9 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv84, !dbg !495
  %10 = load float* %9, align 4, !dbg !495, !tbaa !419
  %11 = fsub float %4, %10, !dbg !496
  %12 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv84, !dbg !497
  store float %11, float* %12, align 4, !dbg !498, !tbaa !419
  tail call void @llvm.dbg.value(metadata float %7, i64 0, metadata !247, metadata !291), !dbg !499
  %13 = fmul float %7, %7, !dbg !501
  %14 = fadd float %rij.040, %13, !dbg !502
  tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !221, metadata !291), !dbg !503
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !504
  %exitcond86 = icmp eq i64 %indvars.iv.next85, 3, !dbg !504
  br i1 %exitcond86, label %15, label %switch.lookup, !dbg !504

; <label>:15                                      ; preds = %switch.lookup
  %sqrtf = tail call float @sqrtf(float %14) #8, !dbg !505
  tail call void @llvm.dbg.value(metadata float %sqrtf, i64 0, metadata !221, metadata !291), !dbg !503
  %16 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 1, !dbg !506
  %17 = load float* %16, align 4, !dbg !506, !tbaa !419
  %18 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 2, !dbg !507
  %19 = load float* %18, align 4, !dbg !507, !tbaa !419
  %20 = fmul float %17, %19, !dbg !508
  %21 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 2, !dbg !509
  %22 = load float* %21, align 4, !dbg !509, !tbaa !419
  %23 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 1, !dbg !510
  %24 = load float* %23, align 4, !dbg !510, !tbaa !419
  %25 = fmul float %22, %24, !dbg !511
  %26 = fsub float %20, %25, !dbg !512
  %27 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 0, !dbg !513
  store float %26, float* %27, align 4, !dbg !514, !tbaa !419
  %28 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 0, !dbg !515
  %29 = load float* %28, align 4, !dbg !515, !tbaa !419
  %30 = fmul float %22, %29, !dbg !516
  %31 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 0, !dbg !517
  %32 = load float* %31, align 4, !dbg !517, !tbaa !419
  %33 = fmul float %32, %19, !dbg !518
  %34 = fsub float %30, %33, !dbg !519
  %35 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 1, !dbg !520
  store float %34, float* %35, align 4, !dbg !521, !tbaa !419
  %36 = fmul float %32, %24, !dbg !522
  %37 = fmul float %17, %29, !dbg !523
  %38 = fsub float %36, %37, !dbg !524
  %39 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 2, !dbg !525
  store float %38, float* %39, align 4, !dbg !526, !tbaa !419
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !222, metadata !291), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  %40 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 0, !dbg !529
  %41 = fdiv float %32, %sqrtf, !dbg !533
  store float %41, float* %40, align 4, !dbg !534, !tbaa !419
  tail call void @llvm.dbg.value(metadata float %26, i64 0, metadata !247, metadata !291), !dbg !535
  %42 = fmul float %26, %26, !dbg !537
  %43 = fadd float %42, 0.000000e+00, !dbg !538
  tail call void @llvm.dbg.value(metadata float %43, i64 0, metadata !222, metadata !291), !dbg !527
  br label %._crit_edge, !dbg !539

._crit_edge:                                      ; preds = %15, %._crit_edge
  %indvars.iv.next82142 = phi i64 [ 1, %15 ], [ %indvars.iv.next82, %._crit_edge ]
  %44 = phi float [ %43, %15 ], [ %48, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next82142
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !529, !tbaa !419
  %.phi.trans.insert87 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next82142
  %.pre88 = load float* %.phi.trans.insert87, align 4, !dbg !540, !tbaa !419
  %45 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next82142, !dbg !529
  %46 = fdiv float %.pre, %sqrtf, !dbg !533
  store float %46, float* %45, align 4, !dbg !534, !tbaa !419
  tail call void @llvm.dbg.value(metadata float %.pre88, i64 0, metadata !247, metadata !291), !dbg !535
  %47 = fmul float %.pre88, %.pre88, !dbg !537
  %48 = fadd float %44, %47, !dbg !538
  tail call void @llvm.dbg.value(metadata float %48, i64 0, metadata !222, metadata !291), !dbg !527
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv.next82142, 1, !dbg !539
  %exitcond83 = icmp eq i64 %indvars.iv.next82, 3, !dbg !539
  br i1 %exitcond83, label %49, label %._crit_edge, !dbg !539

; <label>:49                                      ; preds = %._crit_edge
  %sqrtf1 = tail call float @sqrtf(float %48) #8, !dbg !541
  tail call void @llvm.dbg.value(metadata float %sqrtf1, i64 0, metadata !222, metadata !291), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  %50 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 0, !dbg !542
  %51 = fdiv float %26, %sqrtf1, !dbg !545
  store float %51, float* %50, align 4, !dbg !546, !tbaa !419
  br label %._crit_edge89, !dbg !547

._crit_edge89:                                    ; preds = %49, %._crit_edge89
  %indvars.iv.next79141 = phi i64 [ 1, %49 ], [ %indvars.iv.next79, %._crit_edge89 ]
  %.phi.trans.insert90 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next79141
  %.pre91 = load float* %.phi.trans.insert90, align 4, !dbg !542, !tbaa !419
  %52 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next79141, !dbg !542
  %53 = fdiv float %.pre91, %sqrtf1, !dbg !545
  store float %53, float* %52, align 4, !dbg !546, !tbaa !419
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv.next79141, 1, !dbg !547
  %exitcond80 = icmp eq i64 %indvars.iv.next79, 3, !dbg !547
  br i1 %exitcond80, label %54, label %._crit_edge89, !dbg !547

; <label>:54                                      ; preds = %._crit_edge89
  %55 = load float* %35, align 4, !dbg !548, !tbaa !419
  %56 = load float* %21, align 4, !dbg !549, !tbaa !419
  %57 = fmul float %55, %56, !dbg !550
  %58 = load float* %39, align 4, !dbg !551, !tbaa !419
  %59 = load float* %16, align 4, !dbg !552, !tbaa !419
  %60 = fmul float %58, %59, !dbg !553
  %61 = fsub float %57, %60, !dbg !554
  store float %61, float* %28, align 4, !dbg !555, !tbaa !419
  %62 = load float* %31, align 4, !dbg !556, !tbaa !419
  %63 = fmul float %58, %62, !dbg !557
  %64 = load float* %27, align 4, !dbg !558, !tbaa !419
  %65 = fmul float %64, %56, !dbg !559
  %66 = fsub float %63, %65, !dbg !560
  store float %66, float* %23, align 4, !dbg !561, !tbaa !419
  %67 = fmul float %64, %59, !dbg !562
  %68 = fmul float %55, %62, !dbg !563
  %69 = fsub float %67, %68, !dbg !564
  store float %69, float* %18, align 4, !dbg !565, !tbaa !419
  br label %70, !dbg !566

; <label>:70                                      ; preds = %switch.hole_check, %0, %54
  %71 = phi float [ undef, %switch.hole_check ], [ undef, %0 ], [ %64, %54 ]
  %72 = phi float [ undef, %switch.hole_check ], [ undef, %0 ], [ %62, %54 ]
  %73 = phi float [ undef, %switch.hole_check ], [ undef, %0 ], [ %61, %54 ]
  switch i32 %nht, label %423 [
    i32 1, label %.preheader
    i32 2, label %.preheader9.preheader
    i32 3, label %.preheader11
    i32 4, label %.preheader13
    i32 5, label %.preheader16
    i32 6, label %.preheader18
    i32 7, label %348
    i32 8, label %.preheader19
    i32 9, label %368
  ], !dbg !567

.preheader9.preheader:                            ; preds = %70
  %74 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0, !dbg !568
  %75 = load float* %74, align 4, !dbg !568, !tbaa !419
  %76 = fpext float %75 to double, !dbg !568
  %77 = fpext float %73 to double, !dbg !572
  %78 = fmul double %77, 0x3FB821B1FD9BFEE5, !dbg !573
  %79 = fadd double %76, %78, !dbg !574
  %80 = fpext float %72 to double, !dbg !575
  %81 = fmul double %80, 0x3FA11745F4B7C896, !dbg !576
  %82 = fadd double %79, %81, !dbg !576
  %83 = fptrunc double %82 to float, !dbg !568
  %84 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 0, !dbg !577
  store float %83, float* %84, align 4, !dbg !578, !tbaa !419
  br label %._crit_edge124, !dbg !579

.preheader13:                                     ; preds = %70
  %85 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 0, !dbg !580
  %86 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 1, !dbg !585
  %87 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 2, !dbg !586
  br label %164, !dbg !587

.preheader:                                       ; preds = %70, %.preheader
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.preheader ], [ 0, %70 ]
  %88 = phi <2 x float> [ %105, %.preheader ], [ zeroinitializer, %70 ]
  %89 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv48, !dbg !588
  %90 = load float* %89, align 4, !dbg !588, !tbaa !419
  %91 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv48, !dbg !592
  %92 = load float* %91, align 4, !dbg !592, !tbaa !419
  %93 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv48, !dbg !593
  %94 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv48, !dbg !594
  %95 = load float* %94, align 4, !dbg !594, !tbaa !419
  %96 = insertelement <2 x float> undef, float %90, i32 0, !dbg !595
  %97 = insertelement <2 x float> %96, float %90, i32 1, !dbg !595
  %98 = insertelement <2 x float> undef, float %92, i32 0, !dbg !595
  %99 = insertelement <2 x float> %98, float %95, i32 1, !dbg !595
  %100 = fsub <2 x float> %97, %99, !dbg !595
  %101 = extractelement <2 x float> %100, i32 0, !dbg !596
  store float %101, float* %93, align 4, !dbg !596, !tbaa !419
  %102 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv48, !dbg !597
  %103 = extractelement <2 x float> %100, i32 1, !dbg !598
  store float %103, float* %102, align 4, !dbg !598, !tbaa !419
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !247, metadata !291), !dbg !599
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !221, metadata !291), !dbg !503
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !247, metadata !291), !dbg !601
  %104 = fmul <2 x float> %100, %100, !dbg !603
  %105 = fadd <2 x float> %88, %104, !dbg !604
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !223, metadata !291), !dbg !605
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !606
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 3, !dbg !606
  br i1 %exitcond50, label %106, label %.preheader, !dbg !606

; <label>:106                                     ; preds = %.preheader
  %107 = extractelement <2 x float> %105, i32 0, !dbg !607
  %sqrtf4 = tail call float @sqrtf(float %107) #8, !dbg !607
  tail call void @llvm.dbg.value(metadata float %sqrtf4, i64 0, metadata !221, metadata !291), !dbg !503
  %108 = extractelement <2 x float> %105, i32 1, !dbg !608
  %sqrtf5 = tail call float @sqrtf(float %108) #8, !dbg !608
  tail call void @llvm.dbg.value(metadata float %sqrtf5, i64 0, metadata !223, metadata !291), !dbg !605
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !222, metadata !291), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  br label %109, !dbg !609

; <label>:109                                     ; preds = %109, %106
  %indvars.iv45 = phi i64 [ 0, %106 ], [ %indvars.iv.next46, %109 ]
  %ra.123 = phi float [ 0.000000e+00, %106 ], [ %119, %109 ]
  %110 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv45, !dbg !611
  %111 = load float* %110, align 4, !dbg !611, !tbaa !419
  %112 = fdiv float %111, %sqrtf4, !dbg !614
  %113 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv45, !dbg !615
  %114 = load float* %113, align 4, !dbg !615, !tbaa !419
  %115 = fdiv float %114, %sqrtf5, !dbg !616
  %116 = fadd float %112, %115, !dbg !617
  %117 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv45, !dbg !618
  store float %116, float* %117, align 4, !dbg !619, !tbaa !419
  tail call void @llvm.dbg.value(metadata float %116, i64 0, metadata !247, metadata !291), !dbg !620
  %118 = fmul float %116, %116, !dbg !622
  %119 = fadd float %ra.123, %118, !dbg !623
  tail call void @llvm.dbg.value(metadata float %119, i64 0, metadata !222, metadata !291), !dbg !527
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !609
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 3, !dbg !609
  br i1 %exitcond47, label %120, label %109, !dbg !609

; <label>:120                                     ; preds = %109
  %sqrtf6 = tail call float @sqrtf(float %119) #8, !dbg !624
  tail call void @llvm.dbg.value(metadata float %sqrtf6, i64 0, metadata !222, metadata !291), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  %121 = fpext float %sqrtf6 to double, !dbg !625
  br label %122, !dbg !628

; <label>:122                                     ; preds = %122, %120
  %indvars.iv = phi i64 [ 0, %120 ], [ %indvars.iv.next, %122 ]
  %123 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv, !dbg !629
  %124 = load float* %123, align 4, !dbg !629, !tbaa !419
  %125 = fpext float %124 to double, !dbg !629
  %126 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv, !dbg !630
  %127 = load float* %126, align 4, !dbg !630, !tbaa !419
  %128 = fpext float %127 to double, !dbg !630
  %129 = fmul double %128, 1.000000e-01, !dbg !631
  %130 = fdiv double %129, %121, !dbg !632
  %131 = fadd double %125, %130, !dbg !633
  %132 = fptrunc double %131 to float, !dbg !629
  %133 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv, !dbg !634
  store float %132, float* %133, align 4, !dbg !635, !tbaa !419
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !628
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !628
  br i1 %exitcond, label %.loopexit, label %122, !dbg !628

._crit_edge124:                                   ; preds = %.preheader9.preheader, %._crit_edge124
  %indvars.iv.next52139 = phi i64 [ 1, %.preheader9.preheader ], [ %indvars.iv.next52, %._crit_edge124 ]
  %.phi.trans.insert125 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next52139
  %.pre126 = load float* %.phi.trans.insert125, align 4, !dbg !572, !tbaa !419
  %.phi.trans.insert127 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next52139
  %.pre128 = load float* %.phi.trans.insert127, align 4, !dbg !575, !tbaa !419
  %134 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv.next52139, !dbg !568
  %135 = load float* %134, align 4, !dbg !568, !tbaa !419
  %136 = fpext float %135 to double, !dbg !568
  %137 = fpext float %.pre126 to double, !dbg !572
  %138 = fmul double %137, 0x3FB821B1FD9BFEE5, !dbg !573
  %139 = fadd double %136, %138, !dbg !574
  %140 = fpext float %.pre128 to double, !dbg !575
  %141 = fmul double %140, 0x3FA11745F4B7C896, !dbg !576
  %142 = fadd double %139, %141, !dbg !576
  %143 = fptrunc double %142 to float, !dbg !568
  %144 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv.next52139, !dbg !577
  store float %143, float* %144, align 4, !dbg !578, !tbaa !419
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv.next52139, 1, !dbg !579
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 3, !dbg !579
  br i1 %exitcond53, label %.loopexit, label %._crit_edge124, !dbg !579

.preheader11:                                     ; preds = %70, %._crit_edge119
  %145 = phi float [ %.pre123, %._crit_edge119 ], [ %72, %70 ]
  %146 = phi float [ %.pre121, %._crit_edge119 ], [ %73, %70 ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %._crit_edge119 ], [ 0, %70 ]
  %147 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv54, !dbg !636
  %148 = load float* %147, align 4, !dbg !636, !tbaa !419
  %149 = fpext float %148 to double, !dbg !636
  %150 = fpext float %146 to double, !dbg !640
  %151 = fmul double %150, 0x3FB821B1FD9BFEE5, !dbg !641
  %152 = fsub double %149, %151, !dbg !642
  %153 = fpext float %145 to double, !dbg !643
  %154 = fmul double %153, 0x3FA11745F4B7C896, !dbg !644
  %155 = fadd double %152, %154, !dbg !644
  %156 = fptrunc double %155 to float, !dbg !636
  %157 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv54, !dbg !645
  store float %156, float* %157, align 4, !dbg !646, !tbaa !419
  %158 = load float* %147, align 4, !dbg !647, !tbaa !419
  %159 = fpext float %158 to double, !dbg !647
  %160 = fadd double %159, %151, !dbg !648
  %161 = fadd double %160, %154, !dbg !649
  %162 = fptrunc double %161 to float, !dbg !647
  %163 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv54, !dbg !650
  store float %162, float* %163, align 4, !dbg !651, !tbaa !419
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !652
  %exitcond56 = icmp eq i64 %indvars.iv.next55, 3, !dbg !652
  br i1 %exitcond56, label %.loopexit, label %._crit_edge119, !dbg !652

._crit_edge119:                                   ; preds = %.preheader11
  %.phi.trans.insert120 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next55
  %.pre121 = load float* %.phi.trans.insert120, align 4, !dbg !640, !tbaa !419
  %.phi.trans.insert122 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next55
  %.pre123 = load float* %.phi.trans.insert122, align 4, !dbg !643, !tbaa !419
  br label %.preheader11, !dbg !652

; <label>:164                                     ; preds = %._crit_edge112, %.preheader13
  %165 = phi float [ %71, %.preheader13 ], [ %.pre118, %._crit_edge112 ]
  %166 = phi float [ %72, %.preheader13 ], [ %.pre116, %._crit_edge112 ]
  %167 = phi float [ %73, %.preheader13 ], [ %.pre114, %._crit_edge112 ]
  %indvars.iv57 = phi i64 [ 0, %.preheader13 ], [ %indvars.iv.next58, %._crit_edge112 ]
  %168 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv57, !dbg !653
  %169 = load float* %168, align 4, !dbg !653, !tbaa !419
  %170 = fpext float %169 to double, !dbg !653
  %171 = fpext float %167 to double, !dbg !654
  %172 = fmul double %171, 0x3FB821B1FD9BFEE5, !dbg !655
  %173 = fadd double %170, %172, !dbg !656
  %174 = fpext float %166 to double, !dbg !657
  %175 = fmul double %174, 0x3FA11745F4B7C896, !dbg !658
  %176 = fadd double %173, %175, !dbg !658
  %177 = fptrunc double %176 to float, !dbg !653
  %178 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv57, !dbg !659
  store float %177, float* %178, align 4, !dbg !660, !tbaa !419
  %179 = load float* %168, align 4, !dbg !661, !tbaa !419
  %180 = fpext float %179 to double, !dbg !661
  %181 = fmul double %171, 0x3FA821B1FD9BFEE5, !dbg !662
  %182 = fsub double %180, %181, !dbg !663
  %183 = fpext float %165 to double, !dbg !664
  %184 = fmul double %183, 0x3FB4E60A7BB07B1D, !dbg !665
  %185 = fadd double %182, %184, !dbg !666
  %186 = fadd double %185, %175, !dbg !667
  %187 = fptrunc double %186 to float, !dbg !668
  %188 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv57, !dbg !669
  store float %187, float* %188, align 4, !dbg !670, !tbaa !419
  %189 = load float* %85, align 4, !dbg !580, !tbaa !419
  %190 = fadd float %189, 1.234500e+04, !dbg !671
  %fabsf = tail call float @fabsf(float %190) #8, !dbg !672
  %191 = fpext float %fabsf to double, !dbg !672
  %192 = fcmp ogt double %191, 1.200000e-38, !dbg !673
  br i1 %192, label %193, label %211, !dbg !674

; <label>:193                                     ; preds = %164
  %194 = load float* %86, align 4, !dbg !585, !tbaa !419
  %195 = fadd float %194, 1.234500e+04, !dbg !675
  %fabsf2 = tail call float @fabsf(float %195) #8, !dbg !676
  %196 = fpext float %fabsf2 to double, !dbg !676
  %197 = fcmp ogt double %196, 1.200000e-38, !dbg !677
  br i1 %197, label %198, label %211, !dbg !678

; <label>:198                                     ; preds = %193
  %199 = load float* %87, align 4, !dbg !586, !tbaa !419
  %200 = fadd float %199, 1.234500e+04, !dbg !679
  %fabsf3 = tail call float @fabsf(float %200) #8, !dbg !680
  %201 = fpext float %fabsf3 to double, !dbg !680
  %202 = fcmp ogt double %201, 1.200000e-38, !dbg !681
  br i1 %202, label %203, label %211, !dbg !682

; <label>:203                                     ; preds = %198
  %204 = load float* %168, align 4, !dbg !683, !tbaa !419
  %205 = fpext float %204 to double, !dbg !683
  %206 = fsub double %205, %181, !dbg !684
  %207 = fsub double %206, %184, !dbg !685
  %208 = fadd double %207, %175, !dbg !686
  %209 = fptrunc double %208 to float, !dbg !687
  %210 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 %indvars.iv57, !dbg !688
  store float %209, float* %210, align 4, !dbg !689, !tbaa !419
  br label %211, !dbg !688

; <label>:211                                     ; preds = %164, %193, %198, %203
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !dbg !587
  %exitcond59 = icmp eq i64 %indvars.iv.next58, 3, !dbg !587
  br i1 %exitcond59, label %.loopexit, label %._crit_edge112, !dbg !587

._crit_edge112:                                   ; preds = %211
  %.phi.trans.insert113 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next58
  %.pre114 = load float* %.phi.trans.insert113, align 4, !dbg !654, !tbaa !419
  %.phi.trans.insert115 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next58
  %.pre116 = load float* %.phi.trans.insert115, align 4, !dbg !657, !tbaa !419
  %.phi.trans.insert117 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next58
  %.pre118 = load float* %.phi.trans.insert117, align 4, !dbg !664, !tbaa !419
  br label %164, !dbg !587

.preheader16:                                     ; preds = %70, %.preheader16
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %.preheader16 ], [ 0, %70 ]
  %212 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv63, !dbg !690
  %213 = load float* %212, align 4, !dbg !690, !tbaa !419
  %214 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv63, !dbg !694
  %215 = load float* %214, align 4, !dbg !694, !tbaa !419
  %216 = fadd float %213, %215, !dbg !695
  %217 = getelementptr inbounds [3 x float]* %xa, i64 3, i64 %indvars.iv63, !dbg !696
  %218 = load float* %217, align 4, !dbg !696, !tbaa !419
  %219 = fadd float %216, %218, !dbg !697
  %220 = fdiv float %219, 3.000000e+00, !dbg !698
  tail call void @llvm.dbg.value(metadata float %220, i64 0, metadata !226, metadata !291), !dbg !699
  %221 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv63, !dbg !700
  %222 = load float* %221, align 4, !dbg !700, !tbaa !419
  %223 = fsub float %222, %220, !dbg !701
  %224 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv63, !dbg !702
  store float %223, float* %224, align 4, !dbg !703, !tbaa !419
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1, !dbg !704
  %exitcond65 = icmp eq i64 %indvars.iv.next64, 3, !dbg !704
  br i1 %exitcond65, label %225, label %.preheader16, !dbg !704

; <label>:225                                     ; preds = %.preheader16
  %226 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 0, !dbg !705
  tail call void @llvm.dbg.value(metadata float* %226, i64 0, metadata !253, metadata !291) #5, !dbg !706
  %227 = load float* %226, align 4, !dbg !708, !tbaa !419
  %228 = fmul float %227, %227, !dbg !709
  %229 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 1, !dbg !710
  %230 = load float* %229, align 4, !dbg !710, !tbaa !419
  %231 = fmul float %230, %230, !dbg !711
  %232 = fadd float %228, %231, !dbg !712
  %233 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 2, !dbg !713
  %234 = load float* %233, align 4, !dbg !713, !tbaa !419
  %235 = fmul float %234, %234, !dbg !714
  %236 = fadd float %232, %235, !dbg !715
  %sqrtf.i8 = tail call float @sqrtf(float %236) #8, !dbg !716
  tail call void @llvm.dbg.value(metadata float %sqrtf.i8, i64 0, metadata !226, metadata !291), !dbg !699
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  %237 = fpext float %sqrtf.i8 to double, !dbg !717
  %238 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0, !dbg !720
  %239 = load float* %238, align 4, !dbg !720, !tbaa !419
  %240 = fpext float %239 to double, !dbg !720
  %241 = fpext float %227 to double, !dbg !721
  %242 = fmul double %241, 1.000000e-01, !dbg !722
  %243 = fdiv double %242, %237, !dbg !723
  %244 = fadd double %240, %243, !dbg !724
  %245 = fptrunc double %244 to float, !dbg !720
  %246 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 0, !dbg !725
  store float %245, float* %246, align 4, !dbg !726, !tbaa !419
  br label %._crit_edge109, !dbg !727

._crit_edge109:                                   ; preds = %225, %._crit_edge109
  %indvars.iv.next61140 = phi i64 [ 1, %225 ], [ %indvars.iv.next61, %._crit_edge109 ]
  %.phi.trans.insert110 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv.next61140
  %.pre111 = load float* %.phi.trans.insert110, align 4, !dbg !721, !tbaa !419
  %247 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv.next61140, !dbg !720
  %248 = load float* %247, align 4, !dbg !720, !tbaa !419
  %249 = fpext float %248 to double, !dbg !720
  %250 = fpext float %.pre111 to double, !dbg !721
  %251 = fmul double %250, 1.000000e-01, !dbg !722
  %252 = fdiv double %251, %237, !dbg !723
  %253 = fadd double %249, %252, !dbg !724
  %254 = fptrunc double %253 to float, !dbg !720
  %255 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv.next61140, !dbg !725
  store float %254, float* %255, align 4, !dbg !726, !tbaa !419
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv.next61140, 1, !dbg !727
  %exitcond62 = icmp eq i64 %indvars.iv.next61, 3, !dbg !727
  br i1 %exitcond62, label %.loopexit, label %._crit_edge109, !dbg !727

.preheader18:                                     ; preds = %70, %.preheader18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.preheader18 ], [ 0, %70 ]
  %256 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv69, !dbg !728
  %257 = load float* %256, align 4, !dbg !728, !tbaa !419
  %258 = fpext float %257 to double, !dbg !728
  %259 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv69, !dbg !731
  %260 = load float* %259, align 4, !dbg !731, !tbaa !419
  %261 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv69, !dbg !732
  %262 = load float* %261, align 4, !dbg !732, !tbaa !419
  %263 = fadd float %260, %262, !dbg !733
  %264 = fpext float %263 to double, !dbg !734
  %265 = fmul double %264, 5.000000e-01, !dbg !735
  %266 = fsub double %258, %265, !dbg !736
  %267 = fptrunc double %266 to float, !dbg !728
  %268 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv69, !dbg !737
  store float %267, float* %268, align 4, !dbg !738, !tbaa !419
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1, !dbg !739
  %exitcond71 = icmp eq i64 %indvars.iv.next70, 3, !dbg !739
  br i1 %exitcond71, label %269, label %.preheader18, !dbg !739

; <label>:269                                     ; preds = %.preheader18
  %270 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 0, !dbg !740
  tail call void @llvm.dbg.value(metadata float* %270, i64 0, metadata !253, metadata !291) #5, !dbg !741
  %271 = load float* %270, align 4, !dbg !743, !tbaa !419
  %272 = fmul float %271, %271, !dbg !744
  %273 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 1, !dbg !745
  %274 = load float* %273, align 4, !dbg !745, !tbaa !419
  %275 = fmul float %274, %274, !dbg !746
  %276 = fadd float %272, %275, !dbg !747
  %277 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 2, !dbg !748
  %278 = load float* %277, align 4, !dbg !748, !tbaa !419
  %279 = fmul float %278, %278, !dbg !749
  %280 = fadd float %276, %279, !dbg !750
  %sqrtf.i7 = tail call float @sqrtf(float %280) #8, !dbg !751
  tail call void @llvm.dbg.value(metadata float %sqrtf.i7, i64 0, metadata !235, metadata !291), !dbg !752
  %281 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0, !dbg !753
  %282 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 0, !dbg !754
  tail call void @llvm.dbg.value(metadata float* %281, i64 0, metadata !260, metadata !291), !dbg !755
  tail call void @llvm.dbg.value(metadata float* %282, i64 0, metadata !261, metadata !291), !dbg !757
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !262, metadata !291), !dbg !758
  %283 = load float* %281, align 4, !dbg !759, !tbaa !419
  %284 = load float* %282, align 4, !dbg !760, !tbaa !419
  %285 = fsub float %283, %284, !dbg !761
  tail call void @llvm.dbg.value(metadata float %285, i64 0, metadata !263, metadata !291), !dbg !762
  %286 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 1, !dbg !763
  %287 = load float* %286, align 4, !dbg !763, !tbaa !419
  %288 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1, !dbg !764
  %289 = load float* %288, align 4, !dbg !764, !tbaa !419
  %290 = fsub float %287, %289, !dbg !765
  tail call void @llvm.dbg.value(metadata float %290, i64 0, metadata !264, metadata !291), !dbg !766
  %291 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 2, !dbg !767
  %292 = load float* %291, align 4, !dbg !767, !tbaa !419
  %293 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 2, !dbg !768
  %294 = load float* %293, align 4, !dbg !768, !tbaa !419
  %295 = fsub float %292, %294, !dbg !769
  tail call void @llvm.dbg.value(metadata float %295, i64 0, metadata !265, metadata !291), !dbg !770
  %296 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 0, !dbg !771
  tail call void @llvm.dbg.value(metadata float* %281, i64 0, metadata !260, metadata !291), !dbg !772
  tail call void @llvm.dbg.value(metadata float* %296, i64 0, metadata !261, metadata !291), !dbg !774
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !262, metadata !291), !dbg !775
  %297 = load float* %296, align 4, !dbg !776, !tbaa !419
  %298 = fsub float %283, %297, !dbg !777
  tail call void @llvm.dbg.value(metadata float %298, i64 0, metadata !263, metadata !291), !dbg !778
  %299 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 1, !dbg !779
  %300 = load float* %299, align 4, !dbg !779, !tbaa !419
  %301 = fsub float %287, %300, !dbg !780
  tail call void @llvm.dbg.value(metadata float %301, i64 0, metadata !264, metadata !291), !dbg !781
  %302 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2, !dbg !782
  %303 = load float* %302, align 4, !dbg !782, !tbaa !419
  %304 = fsub float %292, %303, !dbg !783
  tail call void @llvm.dbg.value(metadata float %304, i64 0, metadata !265, metadata !291), !dbg !784
  %305 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 0, !dbg !785
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !270, metadata !291), !dbg !786
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !271, metadata !291), !dbg !788
  tail call void @llvm.dbg.value(metadata float* %305, i64 0, metadata !272, metadata !291), !dbg !789
  %306 = fmul float %290, %304, !dbg !790
  %307 = fmul float %295, %301, !dbg !791
  %308 = fsub float %306, %307, !dbg !792
  store float %308, float* %305, align 4, !dbg !793, !tbaa !419
  %309 = fmul float %295, %298, !dbg !794
  %310 = fmul float %285, %304, !dbg !795
  %311 = fsub float %309, %310, !dbg !796
  %312 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 1, !dbg !797
  store float %311, float* %312, align 4, !dbg !798, !tbaa !419
  %313 = fmul float %285, %301, !dbg !799
  %314 = fmul float %290, %298, !dbg !800
  %315 = fsub float %313, %314, !dbg !801
  %316 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 2, !dbg !802
  store float %315, float* %316, align 4, !dbg !803, !tbaa !419
  tail call void @llvm.dbg.value(metadata float* %305, i64 0, metadata !253, metadata !291) #5, !dbg !804
  %317 = fmul float %308, %308, !dbg !806
  %318 = fmul float %311, %311, !dbg !807
  %319 = fadd float %317, %318, !dbg !808
  %320 = fmul float %315, %315, !dbg !809
  %321 = fadd float %320, %319, !dbg !810
  %sqrtf.i = tail call float @sqrtf(float %321) #8, !dbg !811
  tail call void @llvm.dbg.value(metadata float %sqrtf.i, i64 0, metadata !236, metadata !291), !dbg !812
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  %322 = fpext float %sqrtf.i7 to double, !dbg !813
  %323 = fpext float %sqrtf.i to double, !dbg !817
  br label %324, !dbg !818

; <label>:324                                     ; preds = %._crit_edge102, %269
  %325 = phi float [ %308, %269 ], [ %.pre108, %._crit_edge102 ]
  %326 = phi float [ %271, %269 ], [ %.pre106, %._crit_edge102 ]
  %327 = phi float [ %283, %269 ], [ %.pre104, %._crit_edge102 ]
  %indvars.iv66 = phi i64 [ 0, %269 ], [ %indvars.iv.next67, %._crit_edge102 ]
  %328 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv66, !dbg !819
  %329 = fpext float %327 to double, !dbg !819
  %330 = fpext float %326 to double, !dbg !820
  %331 = fmul double %330, 0x3FE277F930881DAF, !dbg !821
  %332 = fdiv double %331, %322, !dbg !822
  %333 = fpext float %325 to double, !dbg !823
  %334 = fmul double %333, 0x3FEA21ED787F2AEF, !dbg !824
  %335 = fdiv double %334, %323, !dbg !825
  %336 = fadd double %332, %335, !dbg !826
  %337 = fmul double %336, 1.000000e-01, !dbg !827
  %338 = fadd double %329, %337, !dbg !828
  %339 = fptrunc double %338 to float, !dbg !819
  %340 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv66, !dbg !829
  store float %339, float* %340, align 4, !dbg !830, !tbaa !419
  %341 = load float* %328, align 4, !dbg !831, !tbaa !419
  %342 = fpext float %341 to double, !dbg !831
  %343 = fsub double %332, %335, !dbg !832
  %344 = fmul double %343, 1.000000e-01, !dbg !833
  %345 = fadd double %342, %344, !dbg !834
  %346 = fptrunc double %345 to float, !dbg !831
  %347 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv66, !dbg !835
  store float %346, float* %347, align 4, !dbg !836, !tbaa !419
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1, !dbg !818
  %exitcond68 = icmp eq i64 %indvars.iv.next67, 3, !dbg !818
  br i1 %exitcond68, label %.loopexit, label %._crit_edge102, !dbg !818

._crit_edge102:                                   ; preds = %324
  %.phi.trans.insert103 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv.next67
  %.pre104 = load float* %.phi.trans.insert103, align 4, !dbg !819, !tbaa !419
  %.phi.trans.insert105 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv.next67
  %.pre106 = load float* %.phi.trans.insert105, align 4, !dbg !820, !tbaa !419
  %.phi.trans.insert107 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 %indvars.iv.next67
  %.pre108 = load float* %.phi.trans.insert107, align 4, !dbg !823, !tbaa !419
  br label %324, !dbg !818

; <label>:348                                     ; preds = %70
  tail call void @gen_waterhydrogen([3 x float]* %xa, [3 x float]* %xh) #9, !dbg !837
  br label %.loopexit, !dbg !838

.preheader19:                                     ; preds = %70, %._crit_edge97
  %349 = phi float [ %.pre101, %._crit_edge97 ], [ %72, %70 ]
  %350 = phi float [ %.pre99, %._crit_edge97 ], [ %73, %70 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %._crit_edge97 ], [ 0, %70 ]
  %351 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv72, !dbg !839
  %352 = load float* %351, align 4, !dbg !839, !tbaa !419
  %353 = fpext float %352 to double, !dbg !839
  %354 = fpext float %350 to double, !dbg !843
  %355 = fmul double %354, 0x3FBF0572CFF0A307, !dbg !844
  %356 = fsub double %353, %355, !dbg !845
  %357 = fpext float %349 to double, !dbg !846
  %358 = fmul double %357, 0x3FAF9CBD7EF2DD0F, !dbg !847
  %359 = fadd double %356, %358, !dbg !847
  %360 = fptrunc double %359 to float, !dbg !839
  %361 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv72, !dbg !848
  store float %360, float* %361, align 4, !dbg !849, !tbaa !419
  %362 = load float* %351, align 4, !dbg !850, !tbaa !419
  %363 = fpext float %362 to double, !dbg !850
  %364 = fadd double %363, %355, !dbg !851
  %365 = fadd double %364, %358, !dbg !852
  %366 = fptrunc double %365 to float, !dbg !850
  %367 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv72, !dbg !853
  store float %366, float* %367, align 4, !dbg !854, !tbaa !419
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1, !dbg !855
  %exitcond74 = icmp eq i64 %indvars.iv.next73, 3, !dbg !855
  br i1 %exitcond74, label %.loopexit, label %._crit_edge97, !dbg !855

._crit_edge97:                                    ; preds = %.preheader19
  %.phi.trans.insert98 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next73
  %.pre99 = load float* %.phi.trans.insert98, align 4, !dbg !843, !tbaa !419
  %.phi.trans.insert100 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next73
  %.pre101 = load float* %.phi.trans.insert100, align 4, !dbg !846, !tbaa !419
  br label %.preheader19, !dbg !855

; <label>:368                                     ; preds = %70
  %369 = bitcast [4 x [3 x float]]* %xa2 to i8*, !dbg !856
  call void @llvm.lifetime.start(i64 48, i8* %369) #5, !dbg !856
  tail call void @llvm.dbg.declare(metadata [4 x [3 x float]]* %xa2, metadata !237, metadata !291), !dbg !857
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !291), !dbg !528
  br label %370, !dbg !858

; <label>:370                                     ; preds = %._crit_edge92, %368
  %371 = phi float [ %72, %368 ], [ %.pre96, %._crit_edge92 ]
  %372 = phi float [ %73, %368 ], [ %.pre94, %._crit_edge92 ]
  %indvars.iv75 = phi i64 [ 0, %368 ], [ %indvars.iv.next76, %._crit_edge92 ]
  %373 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv75, !dbg !860
  %374 = load float* %373, align 4, !dbg !860, !tbaa !419
  %375 = fpext float %374 to double, !dbg !860
  %376 = fpext float %372 to double, !dbg !863
  %377 = fmul double %376, 0x3FBAFD905B6AC657, !dbg !864
  %378 = fsub double %375, %377, !dbg !865
  %379 = fpext float %371 to double, !dbg !866
  %380 = fmul double %379, 0x3FB037AF519DA642, !dbg !867
  %381 = fadd double %378, %380, !dbg !867
  %382 = fptrunc double %381 to float, !dbg !860
  %383 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv75, !dbg !868
  store float %382, float* %383, align 4, !dbg !869, !tbaa !419
  %384 = load float* %373, align 4, !dbg !870, !tbaa !419
  %385 = fpext float %384 to double, !dbg !870
  %386 = fmul double %376, 0x3FBD0079302DD768, !dbg !871
  %387 = fadd double %385, %386, !dbg !872
  %388 = fmul double %379, 0x3FAB0C2D77379851, !dbg !873
  %389 = fadd double %387, %388, !dbg !873
  %390 = fptrunc double %389 to float, !dbg !870
  %391 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv75, !dbg !874
  store float %390, float* %391, align 4, !dbg !875, !tbaa !419
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1, !dbg !858
  %exitcond77 = icmp eq i64 %indvars.iv.next76, 3, !dbg !858
  br i1 %exitcond77, label %392, label %._crit_edge92, !dbg !858

._crit_edge92:                                    ; preds = %370
  %.phi.trans.insert93 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next76
  %.pre94 = load float* %.phi.trans.insert93, align 4, !dbg !863, !tbaa !419
  %.phi.trans.insert95 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next76
  %.pre96 = load float* %.phi.trans.insert95, align 4, !dbg !866, !tbaa !419
  br label %370, !dbg !858

; <label>:392                                     ; preds = %370
  %393 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 0, !dbg !876
  tail call void @llvm.dbg.value(metadata float* %393, i64 0, metadata !277, metadata !291), !dbg !877
  %394 = bitcast float* %393 to i32*, !dbg !879
  %395 = load i32* %394, align 4, !dbg !879, !tbaa !419
  %396 = bitcast [4 x [3 x float]]* %xa2 to i32*, !dbg !880
  store i32 %395, i32* %396, align 16, !dbg !880, !tbaa !419
  %397 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 1, !dbg !881
  %398 = bitcast float* %397 to i32*, !dbg !881
  %399 = load i32* %398, align 4, !dbg !881, !tbaa !419
  %400 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 1, !dbg !882
  %401 = bitcast float* %400 to i32*, !dbg !883
  store i32 %399, i32* %401, align 4, !dbg !883, !tbaa !419
  %402 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 2, !dbg !884
  %403 = bitcast float* %402 to i32*, !dbg !884
  %404 = load i32* %403, align 4, !dbg !884, !tbaa !419
  %405 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 2, !dbg !885
  %406 = bitcast float* %405 to i32*, !dbg !886
  store i32 %404, i32* %406, align 8, !dbg !886, !tbaa !419
  %407 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 0, !dbg !887
  tail call void @llvm.dbg.value(metadata float* %407, i64 0, metadata !278, metadata !291), !dbg !888
  %408 = bitcast [3 x float]* %xa to <4 x i32>*, !dbg !890
  %409 = load <4 x i32>* %408, align 4, !dbg !890, !tbaa !419
  %410 = bitcast float* %407 to <4 x i32>*, !dbg !891
  store <4 x i32> %409, <4 x i32>* %410, align 4, !dbg !891, !tbaa !419
  %411 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1, !dbg !892
  %412 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 1, !dbg !894
  %413 = bitcast float* %411 to <4 x i32>*, !dbg !892
  %414 = load <4 x i32>* %413, align 4, !dbg !892, !tbaa !419
  %415 = bitcast float* %412 to <4 x i32>*, !dbg !895
  store <4 x i32> %414, <4 x i32>* %415, align 4, !dbg !895, !tbaa !419
  %416 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2, !dbg !896
  %417 = bitcast float* %416 to i32*, !dbg !896
  %418 = load i32* %417, align 4, !dbg !896, !tbaa !419
  %419 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 2, !dbg !898
  %420 = bitcast float* %419 to i32*, !dbg !899
  store i32 %418, i32* %420, align 4, !dbg !899, !tbaa !419
  %421 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, !dbg !900
  %422 = getelementptr inbounds [3 x float]* %xh, i64 2, !dbg !901
  call void @calc_h_pos(i32 2, [3 x float]* %421, [3 x float]* %422) #9, !dbg !902
  call void @llvm.lifetime.end(i64 48, i8* %369) #5, !dbg !903
  br label %.loopexit

; <label>:423                                     ; preds = %70
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), i32 %nht) #6, !dbg !904
  br label %.loopexit, !dbg !905

.loopexit:                                        ; preds = %.preheader19, %324, %._crit_edge109, %211, %.preheader11, %._crit_edge124, %122, %423, %392, %348
  ret void, !dbg !906
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @sqrtf(float)

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!287, !288, !289}
!llvm.ident = !{!290}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !279, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calch.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !75, !81, !88, !94, !100, !103, !106, !109, !112, !115, !118, !127, !136, !149, !152, !155, !158, !172, !186, !192, !198, !210, !242, !248, !254, !266, !273}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!5, !5, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !8, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !8, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !8, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !8, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !8, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !8, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !8, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !8, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !8, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !8, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !8, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !8, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!5, !30, !39, !5}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !8, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !5}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !8, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !30, !54, !5}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !8, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !8, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !8, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !8, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !8, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !8, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !8, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !8, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !5}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !5)
!81 = !DISubprogram(name: "__inline_isfinitef", scope: !82, file: !82, line: 204, type: !83, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !86)
!82 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DISubroutineType(types: !84)
!84 = !{!5, !85}
!85 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !81, file: !82, line: 204, type: !85)
!88 = !DISubprogram(name: "__inline_isfinited", scope: !82, file: !82, line: 207, type: !89, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !92)
!89 = !DISubroutineType(types: !90)
!90 = !{!5, !91}
!91 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !88, file: !82, line: 207, type: !91)
!94 = !DISubprogram(name: "__inline_isfinitel", scope: !82, file: !82, line: 210, type: !95, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{!5, !97}
!97 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!98 = !{!99}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !94, file: !82, line: 210, type: !97)
!100 = !DISubprogram(name: "__inline_isinff", scope: !82, file: !82, line: 213, type: !83, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !101)
!101 = !{!102}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !100, file: !82, line: 213, type: !85)
!103 = !DISubprogram(name: "__inline_isinfd", scope: !82, file: !82, line: 216, type: !89, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !104)
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !103, file: !82, line: 216, type: !91)
!106 = !DISubprogram(name: "__inline_isinfl", scope: !82, file: !82, line: 219, type: !95, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !106, file: !82, line: 219, type: !97)
!109 = !DISubprogram(name: "__inline_isnanf", scope: !82, file: !82, line: 222, type: !83, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !110)
!110 = !{!111}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !109, file: !82, line: 222, type: !85)
!112 = !DISubprogram(name: "__inline_isnand", scope: !82, file: !82, line: 225, type: !89, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !113)
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !112, file: !82, line: 225, type: !91)
!115 = !DISubprogram(name: "__inline_isnanl", scope: !82, file: !82, line: 228, type: !95, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !116)
!116 = !{!117}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !115, file: !82, line: 228, type: !97)
!118 = !DISubprogram(name: "__inline_signbitf", scope: !82, file: !82, line: 231, type: !83, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !118, file: !82, line: 231, type: !85)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !118, file: !82, line: 232, type: !122)
!122 = !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !82, line: 232, size: 32, align: 32, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !122, file: !82, line: 232, baseType: !85, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !122, file: !82, line: 232, baseType: !126, size: 32, align: 32)
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DISubprogram(name: "__inline_signbitd", scope: !82, file: !82, line: 236, type: !89, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !127, file: !82, line: 236, type: !91)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !127, file: !82, line: 237, type: !131)
!131 = !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !82, line: 237, size: 64, align: 64, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !131, file: !82, line: 237, baseType: !91, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !131, file: !82, line: 237, baseType: !135, size: 64, align: 64)
!135 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DISubprogram(name: "__inline_signbitl", scope: !82, file: !82, line: 242, type: !95, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !136, file: !82, line: 242, type: !97)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !136, file: !82, line: 246, type: !140)
!140 = !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !82, line: 243, size: 128, align: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !140, file: !82, line: 244, baseType: !97, size: 128, align: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !140, file: !82, line: 245, baseType: !144, size: 128, align: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !82, line: 245, size: 128, align: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !144, file: !82, line: 245, baseType: !135, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !144, file: !82, line: 245, baseType: !148, size: 16, align: 16, offset: 64)
!148 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!149 = !DISubprogram(name: "__inline_isnormalf", scope: !82, file: !82, line: 257, type: !83, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !150)
!150 = !{!151}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !149, file: !82, line: 257, type: !85)
!152 = !DISubprogram(name: "__inline_isnormald", scope: !82, file: !82, line: 260, type: !89, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !153)
!153 = !{!154}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !152, file: !82, line: 260, type: !91)
!155 = !DISubprogram(name: "__inline_isnormall", scope: !82, file: !82, line: 263, type: !95, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !156)
!156 = !{!157}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !155, file: !82, line: 263, type: !97)
!158 = !DISubprogram(name: "__sincosf", scope: !82, file: !82, line: 642, type: !159, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !162)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !85, !161, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !158, file: !82, line: 642, type: !85)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !158, file: !82, line: 642, type: !161)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !158, file: !82, line: 642, type: !161)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !158, file: !82, line: 643, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !82, line: 634, size: 64, align: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !168, file: !82, line: 634, baseType: !85, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !168, file: !82, line: 634, baseType: !85, size: 32, align: 32, offset: 32)
!172 = !DISubprogram(name: "__sincos", scope: !82, file: !82, line: 647, type: !173, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !176)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !91, !175, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !172, file: !82, line: 647, type: !91)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !172, file: !82, line: 647, type: !175)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !172, file: !82, line: 647, type: !175)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !172, file: !82, line: 648, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !82, line: 635, size: 128, align: 64, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !182, file: !82, line: 635, baseType: !91, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !182, file: !82, line: 635, baseType: !91, size: 64, align: 64, offset: 64)
!186 = !DISubprogram(name: "__sincospif", scope: !82, file: !82, line: 652, type: !159, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !187)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !186, file: !82, line: 652, type: !85)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !186, file: !82, line: 652, type: !161)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !186, file: !82, line: 652, type: !161)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !186, file: !82, line: 653, type: !167)
!192 = !DISubprogram(name: "__sincospi", scope: !82, file: !82, line: 657, type: !173, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !192, file: !82, line: 657, type: !91)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !192, file: !82, line: 657, type: !175)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !192, file: !82, line: 657, type: !175)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !192, file: !82, line: 658, type: !181)
!198 = !DISubprogram(name: "gen_waterhydrogen", scope: !1, file: !1, line: 47, type: !199, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void ([3 x float]*, [3 x float]*)* @gen_waterhydrogen, variables: !206)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !203, line: 101, baseType: !204)
!203 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 96, align: 32, elements: !63)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !203, line: 87, baseType: !85)
!206 = !{!207, !208, !209}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xa", arg: 1, scope: !198, file: !1, line: 47, type: !201)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xh", arg: 2, scope: !198, file: !1, line: 47, type: !201)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !198, file: !1, line: 72, type: !5)
!210 = !DISubprogram(name: "calc_h_pos", scope: !1, file: !1, line: 83, type: !211, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, [3 x float]*, [3 x float]*)* @calc_h_pos, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !5, !201, !201}
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !229, !230, !232, !233, !234, !235, !236, !237}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nht", arg: 1, scope: !210, file: !1, line: 83, type: !5)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xa", arg: 2, scope: !210, file: !1, line: 83, type: !201)
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xh", arg: 3, scope: !210, file: !1, line: 83, type: !201)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sa", scope: !210, file: !1, line: 96, type: !202)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sb", scope: !210, file: !1, line: 96, type: !202)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sij", scope: !210, file: !1, line: 96, type: !202)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s6", scope: !210, file: !1, line: 97, type: !205)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rij", scope: !210, file: !1, line: 97, type: !205)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ra", scope: !210, file: !1, line: 97, type: !205)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rb", scope: !210, file: !1, line: 97, type: !205)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xd", scope: !210, file: !1, line: 97, type: !205)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !210, file: !1, line: 98, type: !5)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "center", scope: !227, file: !1, line: 184, type: !205)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 183, column: 11)
!228 = distinct !DILexicalBlock(scope: !210, file: !1, line: 135, column: 16)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxc", scope: !227, file: !1, line: 185, type: !202)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rBB", scope: !231, file: !1, line: 197, type: !202)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 196, column: 11)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rCC1", scope: !231, file: !1, line: 197, type: !202)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rCC2", scope: !231, file: !1, line: 197, type: !202)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rNN", scope: !231, file: !1, line: 197, type: !202)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bb", scope: !231, file: !1, line: 198, type: !205)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !231, file: !1, line: 198, type: !205)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xa2", scope: !238, file: !1, line: 227, type: !239)
!238 = distinct !DILexicalBlock(scope: !228, file: !1, line: 226, column: 11)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 384, align: 32, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DISubprogram(name: "sqr", scope: !243, file: !243, line: 197, type: !244, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !246)
!243 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!244 = !DISubroutineType(types: !245)
!245 = !{!205, !205}
!246 = !{!247}
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !242, file: !243, line: 197, type: !205)
!248 = !DISubprogram(name: "norm", scope: !243, file: !243, line: 358, type: !249, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, variables: !252)
!249 = !DISubroutineType(types: !250)
!250 = !{!205, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!252 = !{!253}
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !248, file: !243, line: 358, type: !251)
!254 = !DISubprogram(name: "rvec_sub", scope: !243, file: !243, line: 244, type: !255, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, variables: !259)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257, !257, !251}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!259 = !{!260, !261, !262, !263, !264, !265}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !254, file: !243, line: 244, type: !257)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !254, file: !243, line: 244, type: !257)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !254, file: !243, line: 244, type: !251)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !254, file: !243, line: 246, type: !205)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !254, file: !243, line: 246, type: !205)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !254, file: !243, line: 246, type: !205)
!266 = !DISubprogram(name: "oprod", scope: !243, file: !243, line: 417, type: !267, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, variables: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !251, !251, !251}
!269 = !{!270, !271, !272}
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !266, file: !243, line: 417, type: !251)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !266, file: !243, line: 417, type: !251)
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !266, file: !243, line: 417, type: !251)
!273 = !DISubprogram(name: "copy_rvec", scope: !243, file: !243, line: 270, type: !274, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !257, !251}
!276 = !{!277, !278}
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !273, file: !243, line: 270, type: !257)
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !273, file: !243, line: 270, type: !251)
!279 = !{!280, !285, !286}
!280 = !DIGlobalVariable(name: "matrix1", scope: !198, file: !1, line: 52, type: !281, isLocal: true, isDefinition: true, variable: [6 x [3 x float]]* @gen_waterhydrogen.matrix1)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 576, align: 32, elements: !283)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!283 = !{!284}
!284 = !DISubrange(count: 6)
!285 = !DIGlobalVariable(name: "matrix2", scope: !198, file: !1, line: 60, type: !281, isLocal: true, isDefinition: true, variable: [6 x [3 x float]]* @gen_waterhydrogen.matrix2)
!286 = !DIGlobalVariable(name: "l", scope: !198, file: !1, line: 71, type: !5, isLocal: true, isDefinition: true, variable: i32* @gen_waterhydrogen.l)
!287 = !{i32 2, !"Dwarf Version", i32 2}
!288 = !{i32 2, !"Debug Info Version", i32 700000003}
!289 = !{i32 1, !"PIC Level", i32 2}
!290 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!291 = !DIExpression()
!292 = !DILocation(line: 348, column: 40, scope: !7)
!293 = !DILocation(line: 348, column: 50, scope: !7)
!294 = !DILocation(line: 349, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!296 = !DILocation(line: 349, column: 6, scope: !295)
!297 = !{!298, !302, i64 12}
!298 = !{!"__sFILE", !299, i64 0, !302, i64 8, !302, i64 12, !303, i64 16, !303, i64 18, !304, i64 24, !302, i64 40, !299, i64 48, !299, i64 56, !299, i64 64, !299, i64 72, !299, i64 80, !304, i64 88, !299, i64 104, !302, i64 112, !300, i64 116, !300, i64 119, !304, i64 120, !302, i64 136, !305, i64 144}
!299 = !{!"any pointer", !300, i64 0}
!300 = !{!"omnipotent char", !301, i64 0}
!301 = !{!"Simple C/C++ TBAA"}
!302 = !{!"int", !300, i64 0}
!303 = !{!"short", !300, i64 0}
!304 = !{!"__sbuf", !299, i64 0, !302, i64 8}
!305 = !{!"long long", !300, i64 0}
!306 = !DILocation(line: 349, column: 15, scope: !295)
!307 = !DILocation(line: 349, column: 20, scope: !295)
!308 = !DILocation(line: 350, column: 10, scope: !295)
!309 = !DILocation(line: 349, column: 38, scope: !295)
!310 = !{!298, !302, i64 40}
!311 = !DILocation(line: 349, column: 31, scope: !295)
!312 = !DILocation(line: 349, column: 59, scope: !295)
!313 = !DILocation(line: 349, column: 47, scope: !295)
!314 = !DILocation(line: 350, column: 23, scope: !295)
!315 = !DILocation(line: 350, column: 16, scope: !295)
!316 = !DILocation(line: 350, column: 18, scope: !295)
!317 = !{!298, !299, i64 0}
!318 = !DILocation(line: 350, column: 21, scope: !295)
!319 = !{!300, !300, i64 0}
!320 = !DILocation(line: 350, column: 3, scope: !295)
!321 = !DILocation(line: 352, column: 11, scope: !295)
!322 = !DILocation(line: 352, column: 3, scope: !295)
!323 = !DILocation(line: 353, column: 1, scope: !7)
!324 = !DILocation(line: 114, column: 15, scope: !75)
!325 = !DILocation(line: 116, column: 20, scope: !75)
!326 = !DILocation(line: 116, column: 12, scope: !75)
!327 = !DILocation(line: 116, column: 57, scope: !75)
!328 = !DILocation(line: 116, column: 45, scope: !75)
!329 = !DILocation(line: 116, column: 5, scope: !75)
!330 = !DILocation(line: 204, column: 53, scope: !81)
!331 = !DILocation(line: 205, column: 16, scope: !81)
!332 = !DILocation(line: 205, column: 23, scope: !81)
!333 = !DILocation(line: 205, column: 26, scope: !81)
!334 = !DILocation(line: 205, column: 47, scope: !81)
!335 = !DILocation(line: 205, column: 5, scope: !81)
!336 = !DILocation(line: 207, column: 54, scope: !88)
!337 = !DILocation(line: 208, column: 16, scope: !88)
!338 = !DILocation(line: 208, column: 23, scope: !88)
!339 = !DILocation(line: 208, column: 26, scope: !88)
!340 = !DILocation(line: 208, column: 46, scope: !88)
!341 = !DILocation(line: 208, column: 5, scope: !88)
!342 = !DILocation(line: 210, column: 59, scope: !94)
!343 = !DILocation(line: 211, column: 16, scope: !94)
!344 = !DILocation(line: 211, column: 23, scope: !94)
!345 = !DILocation(line: 211, column: 26, scope: !94)
!346 = !DILocation(line: 211, column: 47, scope: !94)
!347 = !DILocation(line: 211, column: 5, scope: !94)
!348 = !DILocation(line: 213, column: 50, scope: !100)
!349 = !DILocation(line: 214, column: 12, scope: !100)
!350 = !DILocation(line: 214, column: 33, scope: !100)
!351 = !DILocation(line: 214, column: 5, scope: !100)
!352 = !DILocation(line: 216, column: 51, scope: !103)
!353 = !DILocation(line: 217, column: 12, scope: !103)
!354 = !DILocation(line: 217, column: 32, scope: !103)
!355 = !DILocation(line: 217, column: 5, scope: !103)
!356 = !DILocation(line: 219, column: 56, scope: !106)
!357 = !DILocation(line: 220, column: 12, scope: !106)
!358 = !DILocation(line: 220, column: 33, scope: !106)
!359 = !DILocation(line: 220, column: 5, scope: !106)
!360 = !DILocation(line: 222, column: 50, scope: !109)
!361 = !DILocation(line: 223, column: 16, scope: !109)
!362 = !DILocation(line: 223, column: 5, scope: !109)
!363 = !DILocation(line: 225, column: 51, scope: !112)
!364 = !DILocation(line: 226, column: 16, scope: !112)
!365 = !DILocation(line: 226, column: 5, scope: !112)
!366 = !DILocation(line: 228, column: 56, scope: !115)
!367 = !DILocation(line: 229, column: 16, scope: !115)
!368 = !DILocation(line: 229, column: 5, scope: !115)
!369 = !DILocation(line: 231, column: 52, scope: !118)
!370 = !DILocation(line: 232, column: 44, scope: !118)
!371 = !DILocation(line: 233, column: 13, scope: !118)
!372 = !DILocation(line: 234, column: 26, scope: !118)
!373 = !DILocation(line: 234, column: 5, scope: !118)
!374 = !DILocation(line: 236, column: 53, scope: !127)
!375 = !DILocation(line: 237, column: 51, scope: !127)
!376 = !DILocation(line: 238, column: 13, scope: !127)
!377 = !DILocation(line: 239, column: 26, scope: !127)
!378 = !DILocation(line: 239, column: 12, scope: !127)
!379 = !DILocation(line: 239, column: 5, scope: !127)
!380 = !DILocation(line: 242, column: 58, scope: !136)
!381 = !DILocation(line: 246, column: 7, scope: !136)
!382 = !DILocation(line: 248, column: 26, scope: !136)
!383 = !DILocation(line: 248, column: 33, scope: !136)
!384 = !DILocation(line: 248, column: 5, scope: !136)
!385 = !DILocation(line: 257, column: 53, scope: !149)
!386 = !DILocation(line: 204, column: 53, scope: !81, inlinedAt: !387)
!387 = distinct !DILocation(line: 258, column: 12, scope: !149)
!388 = !DILocation(line: 205, column: 16, scope: !81, inlinedAt: !387)
!389 = !DILocation(line: 205, column: 47, scope: !81, inlinedAt: !387)
!390 = !DILocation(line: 205, column: 23, scope: !81, inlinedAt: !387)
!391 = !DILocation(line: 258, column: 60, scope: !149)
!392 = !DILocation(line: 258, column: 36, scope: !149)
!393 = !DILocation(line: 258, column: 5, scope: !149)
!394 = !DILocation(line: 260, column: 54, scope: !152)
!395 = !DILocation(line: 207, column: 54, scope: !88, inlinedAt: !396)
!396 = distinct !DILocation(line: 261, column: 12, scope: !152)
!397 = !DILocation(line: 208, column: 16, scope: !88, inlinedAt: !396)
!398 = !DILocation(line: 208, column: 46, scope: !88, inlinedAt: !396)
!399 = !DILocation(line: 208, column: 23, scope: !88, inlinedAt: !396)
!400 = !DILocation(line: 261, column: 59, scope: !152)
!401 = !DILocation(line: 261, column: 36, scope: !152)
!402 = !DILocation(line: 261, column: 5, scope: !152)
!403 = !DILocation(line: 263, column: 59, scope: !155)
!404 = !DILocation(line: 210, column: 59, scope: !94, inlinedAt: !405)
!405 = distinct !DILocation(line: 264, column: 12, scope: !155)
!406 = !DILocation(line: 211, column: 16, scope: !94, inlinedAt: !405)
!407 = !DILocation(line: 211, column: 47, scope: !94, inlinedAt: !405)
!408 = !DILocation(line: 211, column: 23, scope: !94, inlinedAt: !405)
!409 = !DILocation(line: 264, column: 60, scope: !155)
!410 = !DILocation(line: 264, column: 36, scope: !155)
!411 = !DILocation(line: 264, column: 5, scope: !155)
!412 = !DILocation(line: 642, column: 45, scope: !158)
!413 = !DILocation(line: 642, column: 57, scope: !158)
!414 = !DILocation(line: 642, column: 72, scope: !158)
!415 = !DILocation(line: 643, column: 27, scope: !158)
!416 = !DILocation(line: 643, column: 37, scope: !158)
!417 = !DILocation(line: 644, column: 23, scope: !158)
!418 = !DILocation(line: 644, column: 13, scope: !158)
!419 = !{!420, !420, i64 0}
!420 = !{!"float", !300, i64 0}
!421 = !DILocation(line: 644, column: 51, scope: !158)
!422 = !DILocation(line: 644, column: 41, scope: !158)
!423 = !DILocation(line: 645, column: 1, scope: !158)
!424 = !DILocation(line: 647, column: 45, scope: !172)
!425 = !DILocation(line: 647, column: 58, scope: !172)
!426 = !DILocation(line: 647, column: 74, scope: !172)
!427 = !DILocation(line: 648, column: 28, scope: !172)
!428 = !DILocation(line: 648, column: 38, scope: !172)
!429 = !DIExpression(DW_OP_bit_piece, 0, 64)
!430 = !DIExpression(DW_OP_bit_piece, 64, 64)
!431 = !DILocation(line: 649, column: 13, scope: !172)
!432 = !{!433, !433, i64 0}
!433 = !{!"double", !300, i64 0}
!434 = !DILocation(line: 649, column: 41, scope: !172)
!435 = !DILocation(line: 650, column: 1, scope: !172)
!436 = !DILocation(line: 652, column: 47, scope: !186)
!437 = !DILocation(line: 652, column: 59, scope: !186)
!438 = !DILocation(line: 652, column: 74, scope: !186)
!439 = !DILocation(line: 653, column: 27, scope: !186)
!440 = !DILocation(line: 653, column: 37, scope: !186)
!441 = !DILocation(line: 654, column: 23, scope: !186)
!442 = !DILocation(line: 654, column: 13, scope: !186)
!443 = !DILocation(line: 654, column: 51, scope: !186)
!444 = !DILocation(line: 654, column: 41, scope: !186)
!445 = !DILocation(line: 655, column: 1, scope: !186)
!446 = !DILocation(line: 657, column: 47, scope: !192)
!447 = !DILocation(line: 657, column: 60, scope: !192)
!448 = !DILocation(line: 657, column: 76, scope: !192)
!449 = !DILocation(line: 658, column: 28, scope: !192)
!450 = !DILocation(line: 658, column: 38, scope: !192)
!451 = !DILocation(line: 659, column: 13, scope: !192)
!452 = !DILocation(line: 659, column: 41, scope: !192)
!453 = !DILocation(line: 660, column: 1, scope: !192)
!454 = !DILocation(line: 47, column: 29, scope: !198)
!455 = !DILocation(line: 47, column: 40, scope: !198)
!456 = !DILocation(line: 72, column: 14, scope: !198)
!457 = !DILocation(line: 76, column: 27, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 75, column: 26)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 75, column: 3)
!460 = distinct !DILexicalBlock(scope: !198, file: !1, line: 75, column: 3)
!461 = !{!302, !302, i64 0}
!462 = !DILocation(line: 76, column: 19, scope: !458)
!463 = !DILocation(line: 75, column: 3, scope: !460)
!464 = !DILocation(line: 76, column: 12, scope: !458)
!465 = !DILocation(line: 76, column: 18, scope: !458)
!466 = !DILocation(line: 76, column: 5, scope: !458)
!467 = !DILocation(line: 76, column: 11, scope: !458)
!468 = !DILocation(line: 77, column: 12, scope: !458)
!469 = !DILocation(line: 77, column: 19, scope: !458)
!470 = !DILocation(line: 77, column: 18, scope: !458)
!471 = !DILocation(line: 77, column: 5, scope: !458)
!472 = !DILocation(line: 77, column: 11, scope: !458)
!473 = !DILocation(line: 80, column: 7, scope: !198)
!474 = !DILocation(line: 80, column: 11, scope: !198)
!475 = !DILocation(line: 80, column: 4, scope: !198)
!476 = !DILocation(line: 81, column: 1, scope: !198)
!477 = !DILocation(line: 83, column: 21, scope: !210)
!478 = !DILocation(line: 83, column: 31, scope: !210)
!479 = !DILocation(line: 83, column: 42, scope: !210)
!480 = !DILocation(line: 96, column: 8, scope: !210)
!481 = !DILocation(line: 96, column: 11, scope: !210)
!482 = !DILocation(line: 96, column: 14, scope: !210)
!483 = !DILocation(line: 97, column: 8, scope: !210)
!484 = !DILocation(line: 103, column: 3, scope: !210)
!485 = !DILocation(line: 111, column: 16, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 110, column: 28)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 110, column: 5)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 110, column: 5)
!489 = distinct !DILexicalBlock(scope: !210, file: !1, line: 103, column: 16)
!490 = !DILocation(line: 97, column: 21, scope: !210)
!491 = !DILocation(line: 112, column: 16, scope: !486)
!492 = !DILocation(line: 112, column: 22, scope: !486)
!493 = !DILocation(line: 112, column: 7, scope: !486)
!494 = !DILocation(line: 112, column: 14, scope: !486)
!495 = !DILocation(line: 113, column: 19, scope: !486)
!496 = !DILocation(line: 113, column: 18, scope: !486)
!497 = !DILocation(line: 113, column: 7, scope: !486)
!498 = !DILocation(line: 113, column: 14, scope: !486)
!499 = !DILocation(line: 197, column: 29, scope: !242, inlinedAt: !500)
!500 = distinct !DILocation(line: 114, column: 16, scope: !486)
!501 = !DILocation(line: 199, column: 12, scope: !242, inlinedAt: !500)
!502 = !DILocation(line: 114, column: 13, scope: !486)
!503 = !DILocation(line: 97, column: 11, scope: !210)
!504 = !DILocation(line: 110, column: 5, scope: !488)
!505 = !DILocation(line: 116, column: 11, scope: !489)
!506 = !DILocation(line: 117, column: 14, scope: !489)
!507 = !DILocation(line: 117, column: 22, scope: !489)
!508 = !DILocation(line: 117, column: 21, scope: !489)
!509 = !DILocation(line: 117, column: 29, scope: !489)
!510 = !DILocation(line: 117, column: 37, scope: !489)
!511 = !DILocation(line: 117, column: 36, scope: !489)
!512 = !DILocation(line: 117, column: 28, scope: !489)
!513 = !DILocation(line: 117, column: 5, scope: !489)
!514 = !DILocation(line: 117, column: 12, scope: !489)
!515 = !DILocation(line: 118, column: 22, scope: !489)
!516 = !DILocation(line: 118, column: 21, scope: !489)
!517 = !DILocation(line: 118, column: 29, scope: !489)
!518 = !DILocation(line: 118, column: 36, scope: !489)
!519 = !DILocation(line: 118, column: 28, scope: !489)
!520 = !DILocation(line: 118, column: 5, scope: !489)
!521 = !DILocation(line: 118, column: 12, scope: !489)
!522 = !DILocation(line: 119, column: 21, scope: !489)
!523 = !DILocation(line: 119, column: 36, scope: !489)
!524 = !DILocation(line: 119, column: 28, scope: !489)
!525 = !DILocation(line: 119, column: 5, scope: !489)
!526 = !DILocation(line: 119, column: 12, scope: !489)
!527 = !DILocation(line: 97, column: 15, scope: !210)
!528 = !DILocation(line: 98, column: 8, scope: !210)
!529 = !DILocation(line: 122, column: 16, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 121, column: 28)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 121, column: 5)
!532 = distinct !DILexicalBlock(scope: !489, file: !1, line: 121, column: 5)
!533 = !DILocation(line: 122, column: 22, scope: !530)
!534 = !DILocation(line: 122, column: 14, scope: !530)
!535 = !DILocation(line: 197, column: 29, scope: !242, inlinedAt: !536)
!536 = distinct !DILocation(line: 123, column: 16, scope: !530)
!537 = !DILocation(line: 199, column: 12, scope: !242, inlinedAt: !536)
!538 = !DILocation(line: 123, column: 13, scope: !530)
!539 = !DILocation(line: 121, column: 5, scope: !532)
!540 = !DILocation(line: 123, column: 20, scope: !530)
!541 = !DILocation(line: 125, column: 10, scope: !489)
!542 = !DILocation(line: 127, column: 15, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 126, column: 5)
!544 = distinct !DILexicalBlock(scope: !489, file: !1, line: 126, column: 5)
!545 = !DILocation(line: 127, column: 20, scope: !543)
!546 = !DILocation(line: 127, column: 13, scope: !543)
!547 = !DILocation(line: 126, column: 5, scope: !544)
!548 = !DILocation(line: 129, column: 14, scope: !489)
!549 = !DILocation(line: 129, column: 21, scope: !489)
!550 = !DILocation(line: 129, column: 20, scope: !489)
!551 = !DILocation(line: 129, column: 29, scope: !489)
!552 = !DILocation(line: 129, column: 36, scope: !489)
!553 = !DILocation(line: 129, column: 35, scope: !489)
!554 = !DILocation(line: 129, column: 28, scope: !489)
!555 = !DILocation(line: 129, column: 12, scope: !489)
!556 = !DILocation(line: 130, column: 21, scope: !489)
!557 = !DILocation(line: 130, column: 20, scope: !489)
!558 = !DILocation(line: 130, column: 29, scope: !489)
!559 = !DILocation(line: 130, column: 35, scope: !489)
!560 = !DILocation(line: 130, column: 28, scope: !489)
!561 = !DILocation(line: 130, column: 12, scope: !489)
!562 = !DILocation(line: 131, column: 20, scope: !489)
!563 = !DILocation(line: 131, column: 35, scope: !489)
!564 = !DILocation(line: 131, column: 28, scope: !489)
!565 = !DILocation(line: 131, column: 12, scope: !489)
!566 = !DILocation(line: 132, column: 5, scope: !489)
!567 = !DILocation(line: 135, column: 3, scope: !210)
!568 = !DILocation(line: 158, column: 16, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 157, column: 28)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 157, column: 5)
!571 = distinct !DILexicalBlock(scope: !228, file: !1, line: 157, column: 5)
!572 = !DILocation(line: 158, column: 40, scope: !569)
!573 = !DILocation(line: 158, column: 39, scope: !569)
!574 = !DILocation(line: 158, column: 22, scope: !569)
!575 = !DILocation(line: 158, column: 63, scope: !569)
!576 = !DILocation(line: 158, column: 62, scope: !569)
!577 = !DILocation(line: 158, column: 7, scope: !569)
!578 = !DILocation(line: 158, column: 14, scope: !569)
!579 = !DILocation(line: 157, column: 5, scope: !571)
!580 = !DILocation(line: 174, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 174, column: 12)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 168, column: 28)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 168, column: 5)
!584 = distinct !DILexicalBlock(scope: !228, file: !1, line: 168, column: 5)
!585 = !DILocation(line: 175, column: 10, scope: !581)
!586 = !DILocation(line: 176, column: 10, scope: !581)
!587 = !DILocation(line: 168, column: 5, scope: !584)
!588 = !DILocation(line: 140, column: 16, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 139, column: 28)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 139, column: 5)
!591 = distinct !DILexicalBlock(scope: !228, file: !1, line: 139, column: 5)
!592 = !DILocation(line: 140, column: 23, scope: !589)
!593 = !DILocation(line: 140, column: 7, scope: !589)
!594 = !DILocation(line: 141, column: 23, scope: !589)
!595 = !DILocation(line: 140, column: 22, scope: !589)
!596 = !DILocation(line: 140, column: 14, scope: !589)
!597 = !DILocation(line: 141, column: 7, scope: !589)
!598 = !DILocation(line: 141, column: 14, scope: !589)
!599 = !DILocation(line: 197, column: 29, scope: !242, inlinedAt: !600)
!600 = distinct !DILocation(line: 142, column: 16, scope: !589)
!601 = !DILocation(line: 197, column: 29, scope: !242, inlinedAt: !602)
!602 = distinct !DILocation(line: 143, column: 16, scope: !589)
!603 = !DILocation(line: 199, column: 12, scope: !242, inlinedAt: !600)
!604 = !DILocation(line: 142, column: 13, scope: !589)
!605 = !DILocation(line: 97, column: 18, scope: !210)
!606 = !DILocation(line: 139, column: 5, scope: !591)
!607 = !DILocation(line: 145, column: 11, scope: !228)
!608 = !DILocation(line: 146, column: 11, scope: !228)
!609 = !DILocation(line: 148, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !228, file: !1, line: 148, column: 5)
!611 = !DILocation(line: 149, column: 15, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 148, column: 28)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 148, column: 5)
!614 = !DILocation(line: 149, column: 21, scope: !612)
!615 = !DILocation(line: 149, column: 26, scope: !612)
!616 = !DILocation(line: 149, column: 31, scope: !612)
!617 = !DILocation(line: 149, column: 25, scope: !612)
!618 = !DILocation(line: 149, column: 7, scope: !612)
!619 = !DILocation(line: 149, column: 13, scope: !612)
!620 = !DILocation(line: 197, column: 29, scope: !242, inlinedAt: !621)
!621 = distinct !DILocation(line: 150, column: 15, scope: !612)
!622 = !DILocation(line: 199, column: 12, scope: !242, inlinedAt: !621)
!623 = !DILocation(line: 150, column: 12, scope: !612)
!624 = !DILocation(line: 152, column: 10, scope: !228)
!625 = !DILocation(line: 154, column: 35, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !1, line: 153, column: 5)
!627 = distinct !DILexicalBlock(scope: !228, file: !1, line: 153, column: 5)
!628 = !DILocation(line: 153, column: 5, scope: !627)
!629 = !DILocation(line: 154, column: 16, scope: !626)
!630 = !DILocation(line: 154, column: 29, scope: !626)
!631 = !DILocation(line: 154, column: 28, scope: !626)
!632 = !DILocation(line: 154, column: 34, scope: !626)
!633 = !DILocation(line: 154, column: 22, scope: !626)
!634 = !DILocation(line: 154, column: 7, scope: !626)
!635 = !DILocation(line: 154, column: 14, scope: !626)
!636 = !DILocation(line: 163, column: 16, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 162, column: 28)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 162, column: 5)
!639 = distinct !DILexicalBlock(scope: !228, file: !1, line: 162, column: 5)
!640 = !DILocation(line: 163, column: 40, scope: !637)
!641 = !DILocation(line: 163, column: 39, scope: !637)
!642 = !DILocation(line: 163, column: 22, scope: !637)
!643 = !DILocation(line: 163, column: 63, scope: !637)
!644 = !DILocation(line: 163, column: 62, scope: !637)
!645 = !DILocation(line: 163, column: 7, scope: !637)
!646 = !DILocation(line: 163, column: 14, scope: !637)
!647 = !DILocation(line: 164, column: 16, scope: !637)
!648 = !DILocation(line: 164, column: 22, scope: !637)
!649 = !DILocation(line: 164, column: 62, scope: !637)
!650 = !DILocation(line: 164, column: 7, scope: !637)
!651 = !DILocation(line: 164, column: 14, scope: !637)
!652 = !DILocation(line: 162, column: 5, scope: !639)
!653 = !DILocation(line: 169, column: 16, scope: !582)
!654 = !DILocation(line: 169, column: 40, scope: !582)
!655 = !DILocation(line: 169, column: 39, scope: !582)
!656 = !DILocation(line: 169, column: 22, scope: !582)
!657 = !DILocation(line: 169, column: 63, scope: !582)
!658 = !DILocation(line: 169, column: 62, scope: !582)
!659 = !DILocation(line: 169, column: 7, scope: !582)
!660 = !DILocation(line: 169, column: 14, scope: !582)
!661 = !DILocation(line: 170, column: 18, scope: !582)
!662 = !DILocation(line: 171, column: 28, scope: !582)
!663 = !DILocation(line: 171, column: 6, scope: !582)
!664 = !DILocation(line: 172, column: 28, scope: !582)
!665 = !DILocation(line: 172, column: 27, scope: !582)
!666 = !DILocation(line: 172, column: 6, scope: !582)
!667 = !DILocation(line: 173, column: 24, scope: !582)
!668 = !DILocation(line: 170, column: 16, scope: !582)
!669 = !DILocation(line: 170, column: 7, scope: !582)
!670 = !DILocation(line: 170, column: 14, scope: !582)
!671 = !DILocation(line: 174, column: 24, scope: !581)
!672 = !DILocation(line: 174, column: 12, scope: !581)
!673 = !DILocation(line: 174, column: 32, scope: !581)
!674 = !DILocation(line: 174, column: 46, scope: !581)
!675 = !DILocation(line: 175, column: 17, scope: !581)
!676 = !DILocation(line: 175, column: 5, scope: !581)
!677 = !DILocation(line: 175, column: 25, scope: !581)
!678 = !DILocation(line: 175, column: 39, scope: !581)
!679 = !DILocation(line: 176, column: 17, scope: !581)
!680 = !DILocation(line: 176, column: 5, scope: !581)
!681 = !DILocation(line: 176, column: 25, scope: !581)
!682 = !DILocation(line: 174, column: 12, scope: !582)
!683 = !DILocation(line: 177, column: 13, scope: !581)
!684 = !DILocation(line: 178, column: 8, scope: !581)
!685 = !DILocation(line: 179, column: 8, scope: !581)
!686 = !DILocation(line: 180, column: 26, scope: !581)
!687 = !DILocation(line: 177, column: 11, scope: !581)
!688 = !DILocation(line: 177, column: 2, scope: !581)
!689 = !DILocation(line: 177, column: 9, scope: !581)
!690 = !DILocation(line: 188, column: 15, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 187, column: 28)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 187, column: 5)
!693 = distinct !DILexicalBlock(scope: !227, file: !1, line: 187, column: 5)
!694 = !DILocation(line: 188, column: 22, scope: !691)
!695 = !DILocation(line: 188, column: 21, scope: !691)
!696 = !DILocation(line: 188, column: 29, scope: !691)
!697 = !DILocation(line: 188, column: 28, scope: !691)
!698 = !DILocation(line: 188, column: 14, scope: !691)
!699 = !DILocation(line: 184, column: 10, scope: !227)
!700 = !DILocation(line: 189, column: 14, scope: !691)
!701 = !DILocation(line: 189, column: 20, scope: !691)
!702 = !DILocation(line: 189, column: 7, scope: !691)
!703 = !DILocation(line: 189, column: 13, scope: !691)
!704 = !DILocation(line: 187, column: 5, scope: !693)
!705 = !DILocation(line: 191, column: 17, scope: !227)
!706 = !DILocation(line: 358, column: 30, scope: !248, inlinedAt: !707)
!707 = distinct !DILocation(line: 191, column: 12, scope: !227)
!708 = !DILocation(line: 360, column: 15, scope: !248, inlinedAt: !707)
!709 = !DILocation(line: 360, column: 20, scope: !248, inlinedAt: !707)
!710 = !DILocation(line: 360, column: 27, scope: !248, inlinedAt: !707)
!711 = !DILocation(line: 360, column: 32, scope: !248, inlinedAt: !707)
!712 = !DILocation(line: 360, column: 26, scope: !248, inlinedAt: !707)
!713 = !DILocation(line: 360, column: 39, scope: !248, inlinedAt: !707)
!714 = !DILocation(line: 360, column: 44, scope: !248, inlinedAt: !707)
!715 = !DILocation(line: 360, column: 38, scope: !248, inlinedAt: !707)
!716 = !DILocation(line: 360, column: 10, scope: !248, inlinedAt: !707)
!717 = !DILocation(line: 193, column: 34, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 192, column: 5)
!719 = distinct !DILexicalBlock(scope: !227, file: !1, line: 192, column: 5)
!720 = !DILocation(line: 193, column: 14, scope: !718)
!721 = !DILocation(line: 193, column: 21, scope: !718)
!722 = !DILocation(line: 193, column: 27, scope: !718)
!723 = !DILocation(line: 193, column: 33, scope: !718)
!724 = !DILocation(line: 193, column: 20, scope: !718)
!725 = !DILocation(line: 193, column: 7, scope: !718)
!726 = !DILocation(line: 193, column: 13, scope: !718)
!727 = !DILocation(line: 192, column: 5, scope: !719)
!728 = !DILocation(line: 201, column: 14, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 200, column: 5)
!730 = distinct !DILexicalBlock(scope: !231, file: !1, line: 200, column: 5)
!731 = !DILocation(line: 201, column: 26, scope: !729)
!732 = !DILocation(line: 201, column: 33, scope: !729)
!733 = !DILocation(line: 201, column: 32, scope: !729)
!734 = !DILocation(line: 201, column: 25, scope: !729)
!735 = !DILocation(line: 201, column: 24, scope: !729)
!736 = !DILocation(line: 201, column: 20, scope: !729)
!737 = !DILocation(line: 201, column: 7, scope: !729)
!738 = !DILocation(line: 201, column: 13, scope: !729)
!739 = !DILocation(line: 200, column: 5, scope: !730)
!740 = !DILocation(line: 202, column: 13, scope: !231)
!741 = !DILocation(line: 358, column: 30, scope: !248, inlinedAt: !742)
!742 = distinct !DILocation(line: 202, column: 8, scope: !231)
!743 = !DILocation(line: 360, column: 15, scope: !248, inlinedAt: !742)
!744 = !DILocation(line: 360, column: 20, scope: !248, inlinedAt: !742)
!745 = !DILocation(line: 360, column: 27, scope: !248, inlinedAt: !742)
!746 = !DILocation(line: 360, column: 32, scope: !248, inlinedAt: !742)
!747 = !DILocation(line: 360, column: 26, scope: !248, inlinedAt: !742)
!748 = !DILocation(line: 360, column: 39, scope: !248, inlinedAt: !742)
!749 = !DILocation(line: 360, column: 44, scope: !248, inlinedAt: !742)
!750 = !DILocation(line: 360, column: 38, scope: !248, inlinedAt: !742)
!751 = !DILocation(line: 360, column: 10, scope: !248, inlinedAt: !742)
!752 = !DILocation(line: 198, column: 10, scope: !231)
!753 = !DILocation(line: 204, column: 14, scope: !231)
!754 = !DILocation(line: 204, column: 18, scope: !231)
!755 = !DILocation(line: 244, column: 40, scope: !254, inlinedAt: !756)
!756 = distinct !DILocation(line: 204, column: 5, scope: !231)
!757 = !DILocation(line: 244, column: 53, scope: !254, inlinedAt: !756)
!758 = !DILocation(line: 244, column: 60, scope: !254, inlinedAt: !756)
!759 = !DILocation(line: 248, column: 5, scope: !254, inlinedAt: !756)
!760 = !DILocation(line: 248, column: 11, scope: !254, inlinedAt: !756)
!761 = !DILocation(line: 248, column: 10, scope: !254, inlinedAt: !756)
!762 = !DILocation(line: 246, column: 8, scope: !254, inlinedAt: !756)
!763 = !DILocation(line: 249, column: 5, scope: !254, inlinedAt: !756)
!764 = !DILocation(line: 249, column: 11, scope: !254, inlinedAt: !756)
!765 = !DILocation(line: 249, column: 10, scope: !254, inlinedAt: !756)
!766 = !DILocation(line: 246, column: 10, scope: !254, inlinedAt: !756)
!767 = !DILocation(line: 250, column: 5, scope: !254, inlinedAt: !756)
!768 = !DILocation(line: 250, column: 11, scope: !254, inlinedAt: !756)
!769 = !DILocation(line: 250, column: 10, scope: !254, inlinedAt: !756)
!770 = !DILocation(line: 246, column: 12, scope: !254, inlinedAt: !756)
!771 = !DILocation(line: 205, column: 18, scope: !231)
!772 = !DILocation(line: 244, column: 40, scope: !254, inlinedAt: !773)
!773 = distinct !DILocation(line: 205, column: 5, scope: !231)
!774 = !DILocation(line: 244, column: 53, scope: !254, inlinedAt: !773)
!775 = !DILocation(line: 244, column: 60, scope: !254, inlinedAt: !773)
!776 = !DILocation(line: 248, column: 11, scope: !254, inlinedAt: !773)
!777 = !DILocation(line: 248, column: 10, scope: !254, inlinedAt: !773)
!778 = !DILocation(line: 246, column: 8, scope: !254, inlinedAt: !773)
!779 = !DILocation(line: 249, column: 11, scope: !254, inlinedAt: !773)
!780 = !DILocation(line: 249, column: 10, scope: !254, inlinedAt: !773)
!781 = !DILocation(line: 246, column: 10, scope: !254, inlinedAt: !773)
!782 = !DILocation(line: 250, column: 11, scope: !254, inlinedAt: !773)
!783 = !DILocation(line: 250, column: 10, scope: !254, inlinedAt: !773)
!784 = !DILocation(line: 246, column: 12, scope: !254, inlinedAt: !773)
!785 = !DILocation(line: 206, column: 21, scope: !231)
!786 = !DILocation(line: 417, column: 31, scope: !266, inlinedAt: !787)
!787 = distinct !DILocation(line: 206, column: 5, scope: !231)
!788 = !DILocation(line: 417, column: 38, scope: !266, inlinedAt: !787)
!789 = !DILocation(line: 417, column: 45, scope: !266, inlinedAt: !787)
!790 = !DILocation(line: 419, column: 14, scope: !266, inlinedAt: !787)
!791 = !DILocation(line: 419, column: 26, scope: !266, inlinedAt: !787)
!792 = !DILocation(line: 419, column: 20, scope: !266, inlinedAt: !787)
!793 = !DILocation(line: 419, column: 8, scope: !266, inlinedAt: !787)
!794 = !DILocation(line: 420, column: 14, scope: !266, inlinedAt: !787)
!795 = !DILocation(line: 420, column: 26, scope: !266, inlinedAt: !787)
!796 = !DILocation(line: 420, column: 20, scope: !266, inlinedAt: !787)
!797 = !DILocation(line: 420, column: 3, scope: !266, inlinedAt: !787)
!798 = !DILocation(line: 420, column: 8, scope: !266, inlinedAt: !787)
!799 = !DILocation(line: 421, column: 14, scope: !266, inlinedAt: !787)
!800 = !DILocation(line: 421, column: 26, scope: !266, inlinedAt: !787)
!801 = !DILocation(line: 421, column: 20, scope: !266, inlinedAt: !787)
!802 = !DILocation(line: 421, column: 3, scope: !266, inlinedAt: !787)
!803 = !DILocation(line: 421, column: 8, scope: !266, inlinedAt: !787)
!804 = !DILocation(line: 358, column: 30, scope: !248, inlinedAt: !805)
!805 = distinct !DILocation(line: 207, column: 8, scope: !231)
!806 = !DILocation(line: 360, column: 20, scope: !248, inlinedAt: !805)
!807 = !DILocation(line: 360, column: 32, scope: !248, inlinedAt: !805)
!808 = !DILocation(line: 360, column: 26, scope: !248, inlinedAt: !805)
!809 = !DILocation(line: 360, column: 44, scope: !248, inlinedAt: !805)
!810 = !DILocation(line: 360, column: 38, scope: !248, inlinedAt: !805)
!811 = !DILocation(line: 360, column: 10, scope: !248, inlinedAt: !805)
!812 = !DILocation(line: 198, column: 13, scope: !231)
!813 = !DILocation(line: 210, column: 50, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 209, column: 28)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 209, column: 5)
!816 = distinct !DILexicalBlock(scope: !231, file: !1, line: 209, column: 5)
!817 = !DILocation(line: 211, column: 33, scope: !814)
!818 = !DILocation(line: 209, column: 5, scope: !816)
!819 = !DILocation(line: 210, column: 14, scope: !814)
!820 = !DILocation(line: 210, column: 43, scope: !814)
!821 = !DILocation(line: 210, column: 42, scope: !814)
!822 = !DILocation(line: 210, column: 49, scope: !814)
!823 = !DILocation(line: 211, column: 26, scope: !814)
!824 = !DILocation(line: 211, column: 25, scope: !814)
!825 = !DILocation(line: 211, column: 32, scope: !814)
!826 = !DILocation(line: 210, column: 52, scope: !814)
!827 = !DILocation(line: 210, column: 26, scope: !814)
!828 = !DILocation(line: 210, column: 20, scope: !814)
!829 = !DILocation(line: 210, column: 7, scope: !814)
!830 = !DILocation(line: 210, column: 13, scope: !814)
!831 = !DILocation(line: 212, column: 14, scope: !814)
!832 = !DILocation(line: 212, column: 52, scope: !814)
!833 = !DILocation(line: 212, column: 26, scope: !814)
!834 = !DILocation(line: 212, column: 20, scope: !814)
!835 = !DILocation(line: 212, column: 7, scope: !814)
!836 = !DILocation(line: 212, column: 13, scope: !814)
!837 = !DILocation(line: 218, column: 5, scope: !228)
!838 = !DILocation(line: 219, column: 5, scope: !228)
!839 = !DILocation(line: 222, column: 16, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 221, column: 28)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 221, column: 5)
!842 = distinct !DILexicalBlock(scope: !228, file: !1, line: 221, column: 5)
!843 = !DILocation(line: 222, column: 43, scope: !840)
!844 = !DILocation(line: 222, column: 42, scope: !840)
!845 = !DILocation(line: 222, column: 22, scope: !840)
!846 = !DILocation(line: 222, column: 69, scope: !840)
!847 = !DILocation(line: 222, column: 68, scope: !840)
!848 = !DILocation(line: 222, column: 7, scope: !840)
!849 = !DILocation(line: 222, column: 14, scope: !840)
!850 = !DILocation(line: 223, column: 16, scope: !840)
!851 = !DILocation(line: 223, column: 22, scope: !840)
!852 = !DILocation(line: 223, column: 68, scope: !840)
!853 = !DILocation(line: 223, column: 7, scope: !840)
!854 = !DILocation(line: 223, column: 14, scope: !840)
!855 = !DILocation(line: 221, column: 5, scope: !842)
!856 = !DILocation(line: 227, column: 5, scope: !238)
!857 = !DILocation(line: 227, column: 10, scope: !238)
!858 = !DILocation(line: 230, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !238, file: !1, line: 230, column: 5)
!860 = !DILocation(line: 231, column: 16, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 230, column: 28)
!862 = distinct !DILexicalBlock(scope: !859, file: !1, line: 230, column: 5)
!863 = !DILocation(line: 231, column: 43, scope: !861)
!864 = !DILocation(line: 231, column: 42, scope: !861)
!865 = !DILocation(line: 231, column: 22, scope: !861)
!866 = !DILocation(line: 231, column: 69, scope: !861)
!867 = !DILocation(line: 231, column: 68, scope: !861)
!868 = !DILocation(line: 231, column: 7, scope: !861)
!869 = !DILocation(line: 231, column: 14, scope: !861)
!870 = !DILocation(line: 232, column: 16, scope: !861)
!871 = !DILocation(line: 232, column: 42, scope: !861)
!872 = !DILocation(line: 232, column: 22, scope: !861)
!873 = !DILocation(line: 232, column: 68, scope: !861)
!874 = !DILocation(line: 232, column: 7, scope: !861)
!875 = !DILocation(line: 232, column: 14, scope: !861)
!876 = !DILocation(line: 236, column: 15, scope: !238)
!877 = !DILocation(line: 270, column: 41, scope: !273, inlinedAt: !878)
!878 = distinct !DILocation(line: 236, column: 5, scope: !238)
!879 = !DILocation(line: 272, column: 9, scope: !273, inlinedAt: !878)
!880 = !DILocation(line: 272, column: 8, scope: !273, inlinedAt: !878)
!881 = !DILocation(line: 273, column: 9, scope: !273, inlinedAt: !878)
!882 = !DILocation(line: 273, column: 3, scope: !273, inlinedAt: !878)
!883 = !DILocation(line: 273, column: 8, scope: !273, inlinedAt: !878)
!884 = !DILocation(line: 274, column: 9, scope: !273, inlinedAt: !878)
!885 = !DILocation(line: 274, column: 3, scope: !273, inlinedAt: !878)
!886 = !DILocation(line: 274, column: 8, scope: !273, inlinedAt: !878)
!887 = !DILocation(line: 237, column: 20, scope: !238)
!888 = !DILocation(line: 270, column: 48, scope: !273, inlinedAt: !889)
!889 = distinct !DILocation(line: 237, column: 5, scope: !238)
!890 = !DILocation(line: 272, column: 9, scope: !273, inlinedAt: !889)
!891 = !DILocation(line: 272, column: 8, scope: !273, inlinedAt: !889)
!892 = !DILocation(line: 273, column: 9, scope: !273, inlinedAt: !893)
!893 = distinct !DILocation(line: 238, column: 5, scope: !238)
!894 = !DILocation(line: 273, column: 3, scope: !273, inlinedAt: !893)
!895 = !DILocation(line: 273, column: 8, scope: !273, inlinedAt: !893)
!896 = !DILocation(line: 274, column: 9, scope: !273, inlinedAt: !897)
!897 = distinct !DILocation(line: 239, column: 5, scope: !238)
!898 = !DILocation(line: 274, column: 3, scope: !273, inlinedAt: !897)
!899 = !DILocation(line: 274, column: 8, scope: !273, inlinedAt: !897)
!900 = !DILocation(line: 240, column: 19, scope: !238)
!901 = !DILocation(line: 240, column: 27, scope: !238)
!902 = !DILocation(line: 240, column: 5, scope: !238)
!903 = !DILocation(line: 243, column: 3, scope: !228)
!904 = !DILocation(line: 245, column: 5, scope: !228)
!905 = !DILocation(line: 246, column: 3, scope: !228)
!906 = !DILocation(line: 247, column: 1, scope: !210)
