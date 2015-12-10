; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/maths.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon.2 = type { float }
%union.anon.3 = type { float }

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !15, metadata !333), !dbg !334
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !335
  br i1 %1, label %2, label %5, !dbg !336

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #6, !dbg !337
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !338
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !336
  ret i32 %7, !dbg !339
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !21, metadata !333), !dbg !340
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !341
  br i1 %1, label %2, label %5, !dbg !342

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #6, !dbg !343
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !344
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !342
  ret i32 %7, !dbg !345
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !27, metadata !333), !dbg !346
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !347
  br i1 %1, label %2, label %5, !dbg !348

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6, !dbg !349
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !350
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !348
  ret i32 %7, !dbg !351
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !30, metadata !333), !dbg !352
  %1 = tail call float @llvm.fabs.f32(float %__x) #6, !dbg !353
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !354
  %3 = zext i1 %2 to i32, !dbg !354
  ret i32 %3, !dbg !355
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !33, metadata !333), !dbg !356
  %1 = tail call double @llvm.fabs.f64(double %__x) #6, !dbg !357
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !358
  %3 = zext i1 %2 to i32, !dbg !358
  ret i32 %3, !dbg !359
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !36, metadata !333), !dbg !360
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6, !dbg !361
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !362
  %3 = zext i1 %2 to i32, !dbg !362
  ret i32 %3, !dbg !363
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !39, metadata !333), !dbg !364
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !365
  %2 = zext i1 %1 to i32, !dbg !365
  ret i32 %2, !dbg !366
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !42, metadata !333), !dbg !367
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !368
  %2 = zext i1 %1 to i32, !dbg !368
  ret i32 %2, !dbg !369
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !45, metadata !333), !dbg !370
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !371
  %2 = zext i1 %1 to i32, !dbg !371
  ret i32 %2, !dbg !372
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !48, metadata !333), !dbg !373
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !49, metadata !333), !dbg !374
  %1 = bitcast float %__x to i32, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !49, metadata !333), !dbg !374
  %2 = lshr i32 %1, 31, !dbg !376
  ret i32 %2, !dbg !377
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !56, metadata !333), !dbg !378
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !57, metadata !333), !dbg !379
  %1 = bitcast double %__x to i64, !dbg !380
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !57, metadata !333), !dbg !379
  %2 = lshr i64 %1, 63, !dbg !381
  %3 = trunc i64 %2 to i32, !dbg !382
  ret i32 %3, !dbg !383
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !65, metadata !333), !dbg !384
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !66, metadata !333), !dbg !385
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !66, metadata !333), !dbg !385
  %1 = bitcast x86_fp80 %__x to i80, !dbg !386
  %2 = lshr i80 %1, 79, !dbg !386
  %3 = trunc i80 %2 to i32, !dbg !387
  ret i32 %3, !dbg !388
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !78, metadata !333), !dbg !389
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !15, metadata !333) #7, !dbg !390
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !392
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !393
  %or.cond = and i1 %1, %3, !dbg !394
  br i1 %or.cond, label %4, label %.critedge, !dbg !394

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !395
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !396
  ret i32 %7, !dbg !397
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !81, metadata !333), !dbg !398
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !21, metadata !333) #7, !dbg !399
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !401
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !402
  %or.cond = and i1 %1, %3, !dbg !403
  br i1 %or.cond, label %4, label %.critedge, !dbg !403

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !404
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !405
  ret i32 %7, !dbg !406
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !84, metadata !333), !dbg !407
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !27, metadata !333) #7, !dbg !408
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !410
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !411
  %or.cond = and i1 %1, %3, !dbg !412
  br i1 %or.cond, label %4, label %.critedge, !dbg !412

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !413
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !414
  ret i32 %7, !dbg !415
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !90, metadata !333), !dbg !416
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !91, metadata !333), !dbg !417
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !92, metadata !333), !dbg !418
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !93, metadata !333), !dbg !419
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8, !dbg !420
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !93, metadata !333), !dbg !419
  %2 = extractelement <2 x float> %1, i32 0, !dbg !421
  store float %2, float* %__sinp, align 4, !dbg !422, !tbaa !423
  %3 = extractelement <2 x float> %1, i32 1, !dbg !427
  store float %3, float* %__cosp, align 4, !dbg !428, !tbaa !423
  ret void, !dbg !429
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !104, metadata !333), !dbg !430
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !105, metadata !333), !dbg !431
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !106, metadata !333), !dbg !432
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !107, metadata !333), !dbg !433
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8, !dbg !434
  %2 = extractvalue { double, double } %1, 0, !dbg !434
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !107, metadata !435), !dbg !433
  %3 = extractvalue { double, double } %1, 1, !dbg !434
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !107, metadata !436), !dbg !433
  store double %2, double* %__sinp, align 8, !dbg !437, !tbaa !438
  store double %3, double* %__cosp, align 8, !dbg !440, !tbaa !438
  ret void, !dbg !441
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !115, metadata !333), !dbg !442
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !116, metadata !333), !dbg !443
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !117, metadata !333), !dbg !444
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !118, metadata !333), !dbg !445
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8, !dbg !446
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !118, metadata !333), !dbg !445
  %2 = extractelement <2 x float> %1, i32 0, !dbg !447
  store float %2, float* %__sinp, align 4, !dbg !448, !tbaa !423
  %3 = extractelement <2 x float> %1, i32 1, !dbg !449
  store float %3, float* %__cosp, align 4, !dbg !450, !tbaa !423
  ret void, !dbg !451
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !121, metadata !333), !dbg !452
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !122, metadata !333), !dbg !453
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !123, metadata !333), !dbg !454
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !124, metadata !333), !dbg !455
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8, !dbg !456
  %2 = extractvalue { double, double } %1, 0, !dbg !456
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !124, metadata !435), !dbg !455
  %3 = extractvalue { double, double } %1, 1, !dbg !456
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !124, metadata !436), !dbg !455
  store double %2, double* %__sinp, align 8, !dbg !457, !tbaa !438
  store double %3, double* %__cosp, align 8, !dbg !458, !tbaa !438
  ret void, !dbg !459
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #2 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !191, metadata !333), !dbg !460
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !192, metadata !333), !dbg !461
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !462
  %2 = load i32* %1, align 4, !dbg !464, !tbaa !465
  %3 = add nsw i32 %2, -1, !dbg !464
  store i32 %3, i32* %1, align 4, !dbg !464, !tbaa !465
  %4 = icmp sgt i32 %2, 0, !dbg !472
  br i1 %4, label %._crit_edge, label %5, !dbg !473

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !474
  br label %10, !dbg !473

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !475
  %7 = load i32* %6, align 4, !dbg !475, !tbaa !476
  %8 = icmp sle i32 %2, %7, !dbg !477
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !478
  %or.cond = or i1 %9, %8, !dbg !479
  br i1 %or.cond, label %15, label %10, !dbg !479

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !474
  %11 = trunc i32 %_c to i8, !dbg !480
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !481
  %13 = load i8** %12, align 8, !dbg !482, !tbaa !483
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !482
  store i8* %14, i8** %12, align 8, !dbg !482, !tbaa !483
  store i8 %11, i8* %13, align 1, !dbg !484, !tbaa !485
  br label %17, !dbg !486

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !487
  br label %17, !dbg !488

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !489
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !198, metadata !333), !dbg !490
  %1 = icmp sgt i32 %__signo, 32, !dbg !491
  br i1 %1, label %5, label %2, !dbg !492

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !493
  %4 = shl i32 1, %3, !dbg !494
  br label %5, !dbg !492

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !492
  ret i32 %6, !dbg !495
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_nint(float %a) #4 {
  tail call void @llvm.dbg.value(metadata float %a, i64 0, metadata !205, metadata !333), !dbg !496
  tail call void @llvm.dbg.value(metadata float 5.000000e-01, i64 0, metadata !206, metadata !333), !dbg !497
  %1 = fcmp olt float %a, 0.000000e+00, !dbg !498
  br i1 %1, label %2, label %4, !dbg !499

; <label>:2                                       ; preds = %0
  %3 = fadd float %a, -5.000000e-01, !dbg !500
  br label %6, !dbg !499

; <label>:4                                       ; preds = %0
  %5 = fadd float %a, 5.000000e-01, !dbg !501
  br label %6, !dbg !499

; <label>:6                                       ; preds = %4, %2
  %.sink = phi float [ %3, %2 ], [ %5, %4 ]
  %7 = fptosi float %.sink to i32, !dbg !502
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !208, metadata !333), !dbg !503
  ret i32 %7, !dbg !504
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @sign(float %x, float %y) #4 {
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !213, metadata !333), !dbg !505
  tail call void @llvm.dbg.value(metadata float %y, i64 0, metadata !214, metadata !333), !dbg !506
  %1 = fcmp olt float %y, 0.000000e+00, !dbg !507
  %fabsf = tail call float @fabsf(float %x) #5, !dbg !509
  br i1 %1, label %2, label %4, !dbg !510

; <label>:2                                       ; preds = %0
  %3 = fsub float -0.000000e+00, %fabsf, !dbg !511
  br label %4, !dbg !512

; <label>:4                                       ; preds = %0, %2
  %.0 = phi float [ %3, %2 ], [ %fabsf, %0 ]
  ret float %.0, !dbg !513
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @gmx_erf(float %x) #4 {
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !219, metadata !333), !dbg !514
  tail call void @llvm.dbg.declare(metadata %union.anon.2* undef, metadata !232, metadata !333), !dbg !515
  %1 = bitcast float %x to i32, !dbg !516
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !232, metadata !333), !dbg !515
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !220, metadata !333), !dbg !517
  %2 = and i32 %1, 2147483647, !dbg !518
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !222, metadata !333), !dbg !519
  %3 = icmp ugt i32 %2, 2139095039, !dbg !520
  br i1 %3, label %4, label %11, !dbg !522

; <label>:4                                       ; preds = %0
  %5 = lshr i32 %1, 31, !dbg !523
  %6 = shl nuw nsw i32 %5, 1, !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !223, metadata !333), !dbg !526
  %7 = sub nsw i32 1, %6, !dbg !527
  %8 = sitofp i32 %7 to float, !dbg !528
  %9 = fdiv float 1.000000e+00, %x, !dbg !529
  %10 = fadd float %8, %9, !dbg !530
  br label %146, !dbg !531

; <label>:11                                      ; preds = %0
  %12 = icmp ult i32 %2, 1062731776, !dbg !532
  br i1 %12, label %13, label %48, !dbg !534

; <label>:13                                      ; preds = %11
  %14 = icmp ult i32 %2, 830472192, !dbg !535
  br i1 %14, label %15, label %25, !dbg !538

; <label>:15                                      ; preds = %13
  %16 = icmp ult i32 %2, 67108864, !dbg !539
  br i1 %16, label %17, label %22, !dbg !542

; <label>:17                                      ; preds = %15
  %18 = fmul float %x, 8.000000e+00, !dbg !543
  %19 = fmul float %x, 0x3FF06EBA80000000, !dbg !544
  %20 = fadd float %18, %19, !dbg !545
  %21 = fmul float %20, 1.250000e-01, !dbg !546
  br label %146, !dbg !547

; <label>:22                                      ; preds = %15
  %23 = fmul float %x, 0x3FC06EBA80000000, !dbg !548
  %24 = fadd float %23, %x, !dbg !549
  br label %146, !dbg !550

; <label>:25                                      ; preds = %13
  %26 = fmul float %x, %x, !dbg !551
  tail call void @llvm.dbg.value(metadata float %26, i64 0, metadata !230, metadata !333), !dbg !552
  %27 = fmul float %26, 0x3EF8EAD620000000, !dbg !553
  %28 = fsub float 0xBF77A29120000000, %27, !dbg !553
  %29 = fmul float %26, %28, !dbg !554
  %30 = fadd float %29, 0xBF9D2A51E0000000, !dbg !555
  %31 = fmul float %26, %30, !dbg !556
  %32 = fadd float %31, 0xBFD4CD7D60000000, !dbg !557
  %33 = fmul float %26, %32, !dbg !558
  %34 = fadd float %33, 0x3FC06EBA80000000, !dbg !559
  tail call void @llvm.dbg.value(metadata float %34, i64 0, metadata !231, metadata !333), !dbg !560
  %35 = fmul float %26, 0x3ED09C4340000000, !dbg !561
  %36 = fsub float 0x3F215DC920000000, %35, !dbg !561
  %37 = fmul float %26, %36, !dbg !562
  %38 = fadd float %37, 0x3F74D022C0000000, !dbg !563
  %39 = fmul float %26, %38, !dbg !564
  %40 = fadd float %39, 0x3FB0A54C60000000, !dbg !565
  %41 = fmul float %26, %40, !dbg !566
  %42 = fadd float %41, 0x3FD97779C0000000, !dbg !567
  %43 = fmul float %26, %42, !dbg !568
  %44 = fadd float %43, 1.000000e+00, !dbg !569
  tail call void @llvm.dbg.value(metadata float %44, i64 0, metadata !228, metadata !333), !dbg !570
  %45 = fdiv float %34, %44, !dbg !571
  tail call void @llvm.dbg.value(metadata float %45, i64 0, metadata !229, metadata !333), !dbg !572
  %46 = fmul float %45, %x, !dbg !573
  %47 = fadd float %46, %x, !dbg !574
  br label %146, !dbg !575

; <label>:48                                      ; preds = %11
  %49 = icmp ult i32 %2, 1067450368, !dbg !576
  br i1 %49, label %50, label %82, !dbg !578

; <label>:50                                      ; preds = %48
  %fabsf1 = tail call float @fabsf(float %x) #5, !dbg !579
  %51 = fadd float %fabsf1, -1.000000e+00, !dbg !579
  tail call void @llvm.dbg.value(metadata float %51, i64 0, metadata !228, metadata !333), !dbg !570
  %52 = fmul float %51, 0x3F61BF3800000000, !dbg !581
  %53 = fsub float 0x3FA22A3660000000, %52, !dbg !581
  %54 = fmul float %51, %53, !dbg !582
  %55 = fadd float %54, 0xBFBC639840000000, !dbg !583
  %56 = fmul float %51, %55, !dbg !584
  %57 = fadd float %56, 0x3FD45FCA80000000, !dbg !585
  %58 = fmul float %51, %57, !dbg !586
  %59 = fadd float %58, 0xBFD7D24100000000, !dbg !587
  %60 = fmul float %51, %59, !dbg !588
  %61 = fadd float %60, 0x3FDA8D00A0000000, !dbg !589
  %62 = fmul float %51, %61, !dbg !590
  %63 = fadd float %62, 0xBF6359B8C0000000, !dbg !591
  tail call void @llvm.dbg.value(metadata float %63, i64 0, metadata !226, metadata !333), !dbg !592
  %64 = fmul float %51, 0x3F888B5460000000, !dbg !593
  %65 = fadd float %64, 0x3F8BEDC260000000, !dbg !594
  %66 = fmul float %51, %65, !dbg !595
  %67 = fadd float %66, 0x3FC02660E0000000, !dbg !596
  %68 = fmul float %51, %67, !dbg !597
  %69 = fadd float %68, 0x3FB2635CE0000000, !dbg !598
  %70 = fmul float %51, %69, !dbg !599
  %71 = fadd float %70, 0x3FE14AF0A0000000, !dbg !600
  %72 = fmul float %51, %71, !dbg !601
  %73 = fadd float %72, 0x3FBB3E6620000000, !dbg !602
  %74 = fmul float %51, %73, !dbg !603
  %75 = fadd float %74, 1.000000e+00, !dbg !604
  tail call void @llvm.dbg.value(metadata float %75, i64 0, metadata !227, metadata !333), !dbg !605
  %76 = icmp sgt i32 %1, -1, !dbg !606
  %77 = fdiv float %63, %75, !dbg !608
  br i1 %76, label %78, label %80, !dbg !609

; <label>:78                                      ; preds = %50
  %79 = fadd float %77, 0x3FEB0AC160000000, !dbg !610
  br label %146, !dbg !611

; <label>:80                                      ; preds = %50
  %81 = fsub float 0xBFEB0AC160000000, %77, !dbg !612
  br label %146, !dbg !613

; <label>:82                                      ; preds = %48
  %83 = icmp ugt i32 %2, 1086324735, !dbg !614
  br i1 %83, label %84, label %86, !dbg !616

; <label>:84                                      ; preds = %82
  %85 = icmp sgt i32 %1, -1, !dbg !617
  %. = select i1 %85, float 1.000000e+00, float -1.000000e+00, !dbg !620
  br label %146, !dbg !620

; <label>:86                                      ; preds = %82
  %fabsf = tail call float @fabsf(float %x) #5, !dbg !621
  tail call void @llvm.dbg.value(metadata float %fabsf, i64 0, metadata !219, metadata !333), !dbg !514
  %87 = fmul float %fabsf, %fabsf, !dbg !622
  %88 = fdiv float 1.000000e+00, %87, !dbg !623
  tail call void @llvm.dbg.value(metadata float %88, i64 0, metadata !228, metadata !333), !dbg !570
  %89 = icmp ult i32 %2, 1077336942, !dbg !624
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !224, metadata !333), !dbg !626
  %90 = insertelement <2 x float> undef, float %88, i32 0, !dbg !627
  %91 = insertelement <2 x float> %90, float %88, i32 1, !dbg !627
  br i1 %89, label %92, label %107, !dbg !629

; <label>:92                                      ; preds = %86
  %93 = fmul <2 x float> %91, <float 0x3FAEEFF2E0000000, float 0x4023A0EFC0000000>, !dbg !627
  %94 = fsub <2 x float> <float 0x401A47EF80000000, float 0xC054526560000000>, %93, !dbg !627
  %95 = fmul <2 x float> %94, %91, !dbg !630
  %96 = fadd <2 x float> %95, <float 0x405B28A3E0000000, float 0xC067135CE0000000>, !dbg !631
  %97 = fmul <2 x float> %96, %91, !dbg !632
  %98 = fadd <2 x float> %97, <float 0x407AD02160000000, float 0xC0644CB180000000>, !dbg !633
  %99 = fmul <2 x float> %98, %91, !dbg !634
  %100 = fadd <2 x float> %99, <float 0x40842B1920000000, float 0xC04F300AE0000000>, !dbg !635
  %101 = fmul <2 x float> %100, %91, !dbg !636
  %102 = fadd <2 x float> %101, <float 0x407B290DE0000000, float 0xC0251E0440000000>, !dbg !637
  %103 = fmul <2 x float> %102, %91, !dbg !638
  %104 = fadd <2 x float> %103, <float 0x4061350C60000000, float 0xBFE63416E0000000>, !dbg !639
  %105 = fmul <2 x float> %104, %91, !dbg !640
  %106 = fadd <2 x float> %105, <float 0x4033A6B9C0000000, float 0xBF84341260000000>, !dbg !641
  br label %120, !dbg !642

; <label>:107                                     ; preds = %86
  %108 = fmul <2 x float> %91, <float 0x403670E240000000, float 0x407E384EA0000000>, !dbg !643
  %109 = fsub <2 x float> <float 0x407DA874E0000000, float 0xC090046160000000>, %108, !dbg !643
  %110 = fmul <2 x float> %109, %91, !dbg !645
  %111 = fadd <2 x float> %110, <float 0x40A3F219C0000000, float 0xC083EC8820000000>, !dbg !646
  %112 = fmul <2 x float> %111, %91, !dbg !647
  %113 = fadd <2 x float> %112, <float 0x40A8FFB760000000, float 0xC064145D40000000>, !dbg !648
  %114 = fmul <2 x float> %113, %91, !dbg !649
  %115 = fadd <2 x float> %114, <float 0x409802EB20000000, float 0xC031C20960000000>, !dbg !650
  %116 = fmul <2 x float> %115, %91, !dbg !651
  %117 = fadd <2 x float> %116, <float 0x40745CAE20000000, float 0xBFE993BA80000000>, !dbg !652
  %118 = fmul <2 x float> %117, %91, !dbg !653
  %119 = fadd <2 x float> %118, <float 0x403E568B20000000, float 0xBF84341240000000>, !dbg !654
  br label %120

; <label>:120                                     ; preds = %107, %92
  %121 = phi <2 x float> [ %106, %92 ], [ %119, %107 ]
  %122 = extractelement <2 x float> %121, i32 0, !dbg !655
  %S.0.in = fmul float %88, %122, !dbg !655
  %S.0 = fadd float %S.0.in, 1.000000e+00, !dbg !656
  %123 = bitcast float %fabsf to i32, !dbg !657
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !232, metadata !333), !dbg !515
  %124 = and i32 %123, -4096, !dbg !658
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !232, metadata !333), !dbg !515
  %125 = bitcast i32 %124 to float, !dbg !659
  tail call void @llvm.dbg.value(metadata float %125, i64 0, metadata !230, metadata !333), !dbg !552
  %126 = fmul float %125, %125, !dbg !660
  %127 = fsub float -5.625000e-01, %126, !dbg !661
  %128 = fpext float %127 to double, !dbg !662
  %129 = tail call double @exp(double %128) #9, !dbg !663
  %130 = fsub float %125, %fabsf, !dbg !664
  %131 = fadd float %fabsf, %125, !dbg !665
  %132 = fmul float %130, %131, !dbg !666
  %133 = extractelement <2 x float> %121, i32 1, !dbg !667
  %134 = fdiv float %133, %S.0, !dbg !667
  %135 = fadd float %132, %134, !dbg !668
  %136 = fpext float %135 to double, !dbg !669
  %137 = tail call double @exp(double %136) #9, !dbg !670
  %138 = fmul double %129, %137, !dbg !671
  %139 = fptrunc double %138 to float, !dbg !663
  tail call void @llvm.dbg.value(metadata float %139, i64 0, metadata !231, metadata !333), !dbg !560
  %140 = icmp sgt i32 %1, -1, !dbg !672
  %141 = fdiv float %139, %fabsf, !dbg !674
  br i1 %140, label %142, label %144, !dbg !675

; <label>:142                                     ; preds = %120
  %143 = fsub float 1.000000e+00, %141, !dbg !676
  br label %146, !dbg !677

; <label>:144                                     ; preds = %120
  %145 = fadd float %141, -1.000000e+00, !dbg !678
  br label %146, !dbg !679

; <label>:146                                     ; preds = %84, %144, %142, %80, %78, %25, %22, %17, %4
  %.0 = phi float [ %10, %4 ], [ %21, %17 ], [ %24, %22 ], [ %47, %25 ], [ %79, %78 ], [ %81, %80 ], [ %143, %142 ], [ %145, %144 ], [ %., %84 ]
  ret float %.0, !dbg !680
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #5

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @gmx_erfc(float %x) #4 {
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !239, metadata !333), !dbg !681
  tail call void @llvm.dbg.declare(metadata %union.anon.3* undef, metadata !250, metadata !333), !dbg !682
  %1 = bitcast float %x to i32, !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !250, metadata !333), !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !240, metadata !333), !dbg !684
  %2 = and i32 %1, 2147483647, !dbg !685
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !241, metadata !333), !dbg !686
  %3 = icmp ugt i32 %2, 2139095039, !dbg !687
  br i1 %3, label %4, label %10, !dbg !689

; <label>:4                                       ; preds = %0
  %5 = lshr i32 %1, 31, !dbg !690
  %6 = shl nuw nsw i32 %5, 1, !dbg !692
  %7 = uitofp i32 %6 to float, !dbg !693
  %8 = fdiv float 1.000000e+00, %x, !dbg !694
  %9 = fadd float %7, %8, !dbg !695
  br label %148, !dbg !696

; <label>:10                                      ; preds = %0
  %11 = icmp ult i32 %2, 1062731776, !dbg !697
  br i1 %11, label %12, label %46, !dbg !699

; <label>:12                                      ; preds = %10
  %13 = icmp ult i32 %2, 595591168, !dbg !700
  br i1 %13, label %14, label %16, !dbg !703

; <label>:14                                      ; preds = %12
  %15 = fsub float 1.000000e+00, %x, !dbg !704
  br label %148, !dbg !705

; <label>:16                                      ; preds = %12
  %17 = fmul float %x, %x, !dbg !706
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !248, metadata !333), !dbg !707
  %18 = fmul float %17, 0x3EF8EAD620000000, !dbg !708
  %19 = fsub float 0xBF77A29120000000, %18, !dbg !708
  %20 = fmul float %17, %19, !dbg !709
  %21 = fadd float %20, 0xBF9D2A51E0000000, !dbg !710
  %22 = fmul float %17, %21, !dbg !711
  %23 = fadd float %22, 0xBFD4CD7D60000000, !dbg !712
  %24 = fmul float %17, %23, !dbg !713
  %25 = fadd float %24, 0x3FC06EBA80000000, !dbg !714
  tail call void @llvm.dbg.value(metadata float %25, i64 0, metadata !249, metadata !333), !dbg !715
  %26 = fmul float %17, 0x3ED09C4340000000, !dbg !716
  %27 = fsub float 0x3F215DC920000000, %26, !dbg !716
  %28 = fmul float %17, %27, !dbg !717
  %29 = fadd float %28, 0x3F74D022C0000000, !dbg !718
  %30 = fmul float %17, %29, !dbg !719
  %31 = fadd float %30, 0x3FB0A54C60000000, !dbg !720
  %32 = fmul float %17, %31, !dbg !721
  %33 = fadd float %32, 0x3FD97779C0000000, !dbg !722
  %34 = fmul float %17, %33, !dbg !723
  %35 = fadd float %34, 1.000000e+00, !dbg !724
  tail call void @llvm.dbg.value(metadata float %35, i64 0, metadata !246, metadata !333), !dbg !725
  %36 = fdiv float %25, %35, !dbg !726
  tail call void @llvm.dbg.value(metadata float %36, i64 0, metadata !247, metadata !333), !dbg !727
  %37 = icmp slt i32 %1, 1048576000, !dbg !728
  %38 = fmul float %36, %x, !dbg !730
  br i1 %37, label %39, label %42, !dbg !732

; <label>:39                                      ; preds = %16
  %40 = fadd float %38, %x, !dbg !733
  %41 = fsub float 1.000000e+00, %40, !dbg !734
  br label %148, !dbg !735

; <label>:42                                      ; preds = %16
  tail call void @llvm.dbg.value(metadata float %38, i64 0, metadata !249, metadata !333), !dbg !715
  %43 = fadd float %x, -5.000000e-01, !dbg !736
  %44 = fadd float %43, %38, !dbg !738
  tail call void @llvm.dbg.value(metadata float %44, i64 0, metadata !249, metadata !333), !dbg !715
  %45 = fsub float 5.000000e-01, %44, !dbg !739
  br label %148, !dbg !740

; <label>:46                                      ; preds = %10
  %47 = icmp ult i32 %2, 1067450368, !dbg !741
  br i1 %47, label %48, label %81, !dbg !743

; <label>:48                                      ; preds = %46
  %fabsf2 = tail call float @fabsf(float %x) #5, !dbg !744
  %49 = fadd float %fabsf2, -1.000000e+00, !dbg !744
  tail call void @llvm.dbg.value(metadata float %49, i64 0, metadata !246, metadata !333), !dbg !725
  %50 = fmul float %49, 0x3F61BF3800000000, !dbg !746
  %51 = fsub float 0x3FA22A3660000000, %50, !dbg !746
  %52 = fmul float %49, %51, !dbg !747
  %53 = fadd float %52, 0xBFBC639840000000, !dbg !748
  %54 = fmul float %49, %53, !dbg !749
  %55 = fadd float %54, 0x3FD45FCA80000000, !dbg !750
  %56 = fmul float %49, %55, !dbg !751
  %57 = fadd float %56, 0xBFD7D24100000000, !dbg !752
  %58 = fmul float %49, %57, !dbg !753
  %59 = fadd float %58, 0x3FDA8D00A0000000, !dbg !754
  %60 = fmul float %49, %59, !dbg !755
  %61 = fadd float %60, 0xBF6359B8C0000000, !dbg !756
  tail call void @llvm.dbg.value(metadata float %61, i64 0, metadata !244, metadata !333), !dbg !757
  %62 = fmul float %49, 0x3F888B5460000000, !dbg !758
  %63 = fadd float %62, 0x3F8BEDC260000000, !dbg !759
  %64 = fmul float %49, %63, !dbg !760
  %65 = fadd float %64, 0x3FC02660E0000000, !dbg !761
  %66 = fmul float %49, %65, !dbg !762
  %67 = fadd float %66, 0x3FB2635CE0000000, !dbg !763
  %68 = fmul float %49, %67, !dbg !764
  %69 = fadd float %68, 0x3FE14AF0A0000000, !dbg !765
  %70 = fmul float %49, %69, !dbg !766
  %71 = fadd float %70, 0x3FBB3E6620000000, !dbg !767
  %72 = fmul float %49, %71, !dbg !768
  %73 = fadd float %72, 1.000000e+00, !dbg !769
  tail call void @llvm.dbg.value(metadata float %73, i64 0, metadata !245, metadata !333), !dbg !770
  %74 = icmp sgt i32 %1, -1, !dbg !771
  %75 = fdiv float %61, %73, !dbg !773
  br i1 %74, label %76, label %78, !dbg !775

; <label>:76                                      ; preds = %48
  tail call void @llvm.dbg.value(metadata float 0x3FC3D4FA80000000, i64 0, metadata !248, metadata !333), !dbg !707
  %77 = fsub float 0x3FC3D4FA80000000, %75, !dbg !776
  br label %148, !dbg !777

; <label>:78                                      ; preds = %48
  %79 = fadd float %75, 0x3FEB0AC160000000, !dbg !778
  tail call void @llvm.dbg.value(metadata float %79, i64 0, metadata !248, metadata !333), !dbg !707
  %80 = fadd float %79, 1.000000e+00, !dbg !780
  br label %148, !dbg !781

; <label>:81                                      ; preds = %46
  %82 = icmp ult i32 %2, 1105199104, !dbg !782
  br i1 %82, label %83, label %146, !dbg !784

; <label>:83                                      ; preds = %81
  %fabsf = tail call float @fabsf(float %x) #5, !dbg !785
  tail call void @llvm.dbg.value(metadata float %fabsf, i64 0, metadata !239, metadata !333), !dbg !681
  %84 = fmul float %fabsf, %fabsf, !dbg !787
  %85 = fdiv float 1.000000e+00, %84, !dbg !788
  tail call void @llvm.dbg.value(metadata float %85, i64 0, metadata !246, metadata !333), !dbg !725
  %86 = icmp ult i32 %2, 1077336941, !dbg !789
  br i1 %86, label %87, label %104, !dbg !791

; <label>:87                                      ; preds = %83
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !242, metadata !333), !dbg !792
  %88 = insertelement <2 x float> undef, float %85, i32 0, !dbg !793
  %89 = insertelement <2 x float> %88, float %85, i32 1, !dbg !793
  %90 = fmul <2 x float> %89, <float 0x3FAEEFF2E0000000, float 0x4023A0EFC0000000>, !dbg !793
  %91 = fsub <2 x float> <float 0x401A47EF80000000, float 0xC054526560000000>, %90, !dbg !793
  %92 = fmul <2 x float> %91, %89, !dbg !795
  %93 = fadd <2 x float> %92, <float 0x405B28A3E0000000, float 0xC067135CE0000000>, !dbg !796
  %94 = fmul <2 x float> %93, %89, !dbg !797
  %95 = fadd <2 x float> %94, <float 0x407AD02160000000, float 0xC0644CB180000000>, !dbg !798
  %96 = fmul <2 x float> %95, %89, !dbg !799
  %97 = fadd <2 x float> %96, <float 0x40842B1920000000, float 0xC04F300AE0000000>, !dbg !800
  %98 = fmul <2 x float> %97, %89, !dbg !801
  %99 = fadd <2 x float> %98, <float 0x407B290DE0000000, float 0xC0251E0440000000>, !dbg !802
  %100 = fmul <2 x float> %99, %89, !dbg !803
  %101 = fadd <2 x float> %100, <float 0x4061350C60000000, float 0xBFE63416E0000000>, !dbg !804
  %102 = fmul <2 x float> %101, %89, !dbg !805
  %103 = fadd <2 x float> %102, <float 0x4033A6B9C0000000, float 0xBF84341260000000>, !dbg !806
  br label %122, !dbg !807

; <label>:104                                     ; preds = %83
  %105 = icmp slt i32 %1, 0, !dbg !808
  %106 = icmp ugt i32 %2, 1086324735, !dbg !811
  %or.cond = and i1 %105, %106, !dbg !812
  br i1 %or.cond, label %148, label %107, !dbg !812

; <label>:107                                     ; preds = %104
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !242, metadata !333), !dbg !792
  %108 = insertelement <2 x float> undef, float %85, i32 0, !dbg !813
  %109 = insertelement <2 x float> %108, float %85, i32 1, !dbg !813
  %110 = fmul <2 x float> %109, <float 0x403670E240000000, float 0x407E384EA0000000>, !dbg !813
  %111 = fsub <2 x float> <float 0x407DA874E0000000, float 0xC090046160000000>, %110, !dbg !813
  %112 = fmul <2 x float> %111, %109, !dbg !814
  %113 = fadd <2 x float> %112, <float 0x40A3F219C0000000, float 0xC083EC8820000000>, !dbg !815
  %114 = fmul <2 x float> %113, %109, !dbg !816
  %115 = fadd <2 x float> %114, <float 0x40A8FFB760000000, float 0xC064145D40000000>, !dbg !817
  %116 = fmul <2 x float> %115, %109, !dbg !818
  %117 = fadd <2 x float> %116, <float 0x409802EB20000000, float 0xC031C20960000000>, !dbg !819
  %118 = fmul <2 x float> %117, %109, !dbg !820
  %119 = fadd <2 x float> %118, <float 0x40745CAE20000000, float 0xBFE993BA80000000>, !dbg !821
  %120 = fmul <2 x float> %119, %109, !dbg !822
  %121 = fadd <2 x float> %120, <float 0x403E568B20000000, float 0xBF84341240000000>, !dbg !823
  br label %122

; <label>:122                                     ; preds = %107, %87
  %123 = phi <2 x float> [ %103, %87 ], [ %121, %107 ]
  %124 = extractelement <2 x float> %123, i32 0, !dbg !824
  %S.0.in = fmul float %85, %124, !dbg !824
  %S.0 = fadd float %S.0.in, 1.000000e+00, !dbg !825
  %125 = bitcast float %fabsf to i32, !dbg !826
  tail call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !250, metadata !333), !dbg !682
  %126 = and i32 %125, -4096, !dbg !827
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !250, metadata !333), !dbg !682
  %127 = bitcast i32 %126 to float, !dbg !828
  tail call void @llvm.dbg.value(metadata float %127, i64 0, metadata !248, metadata !333), !dbg !707
  %128 = fmul float %127, %127, !dbg !829
  %129 = fsub float -5.625000e-01, %128, !dbg !830
  %130 = fpext float %129 to double, !dbg !831
  %131 = tail call double @exp(double %130) #9, !dbg !832
  %132 = fsub float %127, %fabsf, !dbg !833
  %133 = fadd float %fabsf, %127, !dbg !834
  %134 = fmul float %132, %133, !dbg !835
  %135 = extractelement <2 x float> %123, i32 1, !dbg !836
  %136 = fdiv float %135, %S.0, !dbg !836
  %137 = fadd float %134, %136, !dbg !837
  %138 = fpext float %137 to double, !dbg !838
  %139 = tail call double @exp(double %138) #9, !dbg !839
  %140 = fmul double %131, %139, !dbg !840
  %141 = fptrunc double %140 to float, !dbg !832
  tail call void @llvm.dbg.value(metadata float %141, i64 0, metadata !249, metadata !333), !dbg !715
  %142 = icmp sgt i32 %1, 0, !dbg !841
  %143 = fdiv float %141, %fabsf, !dbg !843
  br i1 %142, label %148, label %144, !dbg !844

; <label>:144                                     ; preds = %122
  %145 = fsub float 2.000000e+00, %143, !dbg !845
  br label %148, !dbg !846

; <label>:146                                     ; preds = %81
  %147 = icmp sgt i32 %1, 0, !dbg !847
  %. = select i1 %147, float 0.000000e+00, float 2.000000e+00, !dbg !850
  br label %148, !dbg !850

; <label>:148                                     ; preds = %146, %122, %104, %144, %78, %76, %42, %39, %14, %4
  %.0 = phi float [ %9, %4 ], [ %15, %14 ], [ %41, %39 ], [ %45, %42 ], [ %77, %76 ], [ %80, %78 ], [ %145, %144 ], [ 2.000000e+00, %104 ], [ %143, %122 ], [ %., %146 ]
  ret float %.0, !dbg !851
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @fast_float_erf(float %x) #4 {
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !259, metadata !333), !dbg !852
  %1 = fpext float %x to double, !dbg !853
  %2 = fmul double %1, 5.000000e-01, !dbg !854
  %3 = fadd double %2, 1.000000e+00, !dbg !855
  %4 = fdiv double 1.000000e+00, %3, !dbg !856
  %5 = fptrunc double %4 to float, !dbg !857
  tail call void @llvm.dbg.value(metadata float %5, i64 0, metadata !260, metadata !333), !dbg !858
  %6 = fpext float %5 to double, !dbg !859
  %7 = fmul float %x, %x, !dbg !860
  %8 = fsub float -0.000000e+00, %7, !dbg !860
  %9 = fpext float %8 to double, !dbg !861
  %10 = fadd double %9, 0xBFF43F89C0889BC5, !dbg !862
  %11 = fmul double %6, 0x3FC5DF28AF76A5A4, !dbg !863
  %12 = fadd double %11, 0xBFEA4F123185DEFD, !dbg !864
  %13 = fmul double %6, %12, !dbg !865
  %14 = fadd double %13, 0x3FF7D0F60453A1BE, !dbg !866
  %15 = fmul double %6, %14, !dbg !867
  %16 = fadd double %15, 0xBFF229CBA6063980, !dbg !868
  %17 = fmul double %6, %16, !dbg !869
  %18 = fadd double %17, 0x3FD1D8F976231CE6, !dbg !870
  %19 = fmul double %6, %18, !dbg !871
  %20 = fadd double %19, 0xBFC7D84982AAEAA5, !dbg !872
  %21 = fmul double %6, %20, !dbg !873
  %22 = fadd double %21, 9.678418e-02, !dbg !874
  %23 = fmul double %6, %22, !dbg !875
  %24 = fadd double %23, 0x3FD7F11F677960EA, !dbg !876
  %25 = fmul double %6, %24, !dbg !877
  %26 = fadd double %25, 0x3FF00018D48D3588, !dbg !878
  %27 = fmul double %6, %26, !dbg !879
  %28 = fadd double %10, %27, !dbg !880
  %29 = tail call double @exp(double %28) #9, !dbg !881
  %30 = fmul double %29, %6, !dbg !882
  %31 = fptrunc double %30 to float, !dbg !859
  tail call void @llvm.dbg.value(metadata float %31, i64 0, metadata !261, metadata !333), !dbg !883
  %32 = fsub float 1.000000e+00, %31, !dbg !884
  ret float %32, !dbg !885
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @fast_float_erfc(float %x) #4 {
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !264, metadata !333), !dbg !886
  %1 = fpext float %x to double, !dbg !887
  %2 = fmul double %1, 5.000000e-01, !dbg !888
  %3 = fadd double %2, 1.000000e+00, !dbg !889
  %4 = fdiv double 1.000000e+00, %3, !dbg !890
  %5 = fptrunc double %4 to float, !dbg !891
  tail call void @llvm.dbg.value(metadata float %5, i64 0, metadata !265, metadata !333), !dbg !892
  %6 = fpext float %5 to double, !dbg !893
  %7 = fmul float %x, %x, !dbg !894
  %8 = fsub float -0.000000e+00, %7, !dbg !894
  %9 = fpext float %8 to double, !dbg !895
  %10 = fadd double %9, 0xBFF43F89C0889BC5, !dbg !896
  %11 = fmul double %6, 0x3FC5DF28AF76A5A4, !dbg !897
  %12 = fadd double %11, 0xBFEA4F123185DEFD, !dbg !898
  %13 = fmul double %6, %12, !dbg !899
  %14 = fadd double %13, 0x3FF7D0F60453A1BE, !dbg !900
  %15 = fmul double %6, %14, !dbg !901
  %16 = fadd double %15, 0xBFF229CBA6063980, !dbg !902
  %17 = fmul double %6, %16, !dbg !903
  %18 = fadd double %17, 0x3FD1D8F976231CE6, !dbg !904
  %19 = fmul double %6, %18, !dbg !905
  %20 = fadd double %19, 0xBFC7D84982AAEAA5, !dbg !906
  %21 = fmul double %6, %20, !dbg !907
  %22 = fadd double %21, 9.678418e-02, !dbg !908
  %23 = fmul double %6, %22, !dbg !909
  %24 = fadd double %23, 0x3FD7F11F677960EA, !dbg !910
  %25 = fmul double %6, %24, !dbg !911
  %26 = fadd double %25, 0x3FF00018D48D3588, !dbg !912
  %27 = fmul double %6, %26, !dbg !913
  %28 = fadd double %10, %27, !dbg !914
  %29 = tail call double @exp(double %28) #9, !dbg !915
  %30 = fmul double %29, %6, !dbg !916
  %31 = fptrunc double %30 to float, !dbg !893
  tail call void @llvm.dbg.value(metadata float %31, i64 0, metadata !266, metadata !333), !dbg !917
  ret float %31, !dbg !918
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!329, !330, !331}
!llvm.ident = !{!332}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !267, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/maths.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !8}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "erf_u_int32_t", file: !1, line: 80, baseType: !7)
!7 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!9 = !{!10, !16, !22, !28, !31, !34, !37, !40, !43, !46, !54, !63, !76, !79, !82, !85, !99, !113, !119, !125, !193, !199, !209, !215, !237, !255, !262}
!10 = !DISubprogram(name: "__inline_isfinitef", scope: !11, file: !11, line: 204, type: !12, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !14)
!11 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !8}
!14 = !{!15}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !10, file: !11, line: 204, type: !8)
!16 = !DISubprogram(name: "__inline_isfinited", scope: !11, file: !11, line: 207, type: !17, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !19}
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !16, file: !11, line: 207, type: !19)
!22 = !DISubprogram(name: "__inline_isfinitel", scope: !11, file: !11, line: 210, type: !23, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !25}
!25 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!26 = !{!27}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !22, file: !11, line: 210, type: !25)
!28 = !DISubprogram(name: "__inline_isinff", scope: !11, file: !11, line: 213, type: !12, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !29)
!29 = !{!30}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !28, file: !11, line: 213, type: !8)
!31 = !DISubprogram(name: "__inline_isinfd", scope: !11, file: !11, line: 216, type: !17, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !32)
!32 = !{!33}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !31, file: !11, line: 216, type: !19)
!34 = !DISubprogram(name: "__inline_isinfl", scope: !11, file: !11, line: 219, type: !23, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !35)
!35 = !{!36}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !34, file: !11, line: 219, type: !25)
!37 = !DISubprogram(name: "__inline_isnanf", scope: !11, file: !11, line: 222, type: !12, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !38)
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !37, file: !11, line: 222, type: !8)
!40 = !DISubprogram(name: "__inline_isnand", scope: !11, file: !11, line: 225, type: !17, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !41)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !40, file: !11, line: 225, type: !19)
!43 = !DISubprogram(name: "__inline_isnanl", scope: !11, file: !11, line: 228, type: !23, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !44)
!44 = !{!45}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !43, file: !11, line: 228, type: !25)
!46 = !DISubprogram(name: "__inline_signbitf", scope: !11, file: !11, line: 231, type: !12, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !47)
!47 = !{!48, !49}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !46, file: !11, line: 231, type: !8)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !46, file: !11, line: 232, type: !50)
!50 = !DICompositeType(tag: DW_TAG_union_type, scope: !46, file: !11, line: 232, size: 32, align: 32, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !50, file: !11, line: 232, baseType: !8, size: 32, align: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !50, file: !11, line: 232, baseType: !7, size: 32, align: 32)
!54 = !DISubprogram(name: "__inline_signbitd", scope: !11, file: !11, line: 236, type: !17, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !55)
!55 = !{!56, !57}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !54, file: !11, line: 236, type: !19)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !54, file: !11, line: 237, type: !58)
!58 = !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !11, line: 237, size: 64, align: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !58, file: !11, line: 237, baseType: !19, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !58, file: !11, line: 237, baseType: !62, size: 64, align: 64)
!62 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !DISubprogram(name: "__inline_signbitl", scope: !11, file: !11, line: 242, type: !23, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !64)
!64 = !{!65, !66}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !63, file: !11, line: 242, type: !25)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !63, file: !11, line: 246, type: !67)
!67 = !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !11, line: 243, size: 128, align: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !67, file: !11, line: 244, baseType: !25, size: 128, align: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !67, file: !11, line: 245, baseType: !71, size: 128, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !11, line: 245, size: 128, align: 64, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !71, file: !11, line: 245, baseType: !62, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !71, file: !11, line: 245, baseType: !75, size: 16, align: 16, offset: 64)
!75 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!76 = !DISubprogram(name: "__inline_isnormalf", scope: !11, file: !11, line: 257, type: !12, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !77)
!77 = !{!78}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !76, file: !11, line: 257, type: !8)
!79 = !DISubprogram(name: "__inline_isnormald", scope: !11, file: !11, line: 260, type: !17, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !80)
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !79, file: !11, line: 260, type: !19)
!82 = !DISubprogram(name: "__inline_isnormall", scope: !11, file: !11, line: 263, type: !23, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !83)
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !82, file: !11, line: 263, type: !25)
!85 = !DISubprogram(name: "__sincosf", scope: !11, file: !11, line: 642, type: !86, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !89)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !8, !88, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !85, file: !11, line: 642, type: !8)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !85, file: !11, line: 642, type: !88)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !85, file: !11, line: 642, type: !88)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !85, file: !11, line: 643, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !11, line: 634, size: 64, align: 32, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !95, file: !11, line: 634, baseType: !8, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !95, file: !11, line: 634, baseType: !8, size: 32, align: 32, offset: 32)
!99 = !DISubprogram(name: "__sincos", scope: !11, file: !11, line: 647, type: !100, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !19, !102, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!103 = !{!104, !105, !106, !107}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !99, file: !11, line: 647, type: !19)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !99, file: !11, line: 647, type: !102)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !99, file: !11, line: 647, type: !102)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !99, file: !11, line: 648, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !11, line: 635, size: 128, align: 64, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !109, file: !11, line: 635, baseType: !19, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !109, file: !11, line: 635, baseType: !19, size: 64, align: 64, offset: 64)
!113 = !DISubprogram(name: "__sincospif", scope: !11, file: !11, line: 652, type: !86, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !113, file: !11, line: 652, type: !8)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !113, file: !11, line: 652, type: !88)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !113, file: !11, line: 652, type: !88)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !113, file: !11, line: 653, type: !94)
!119 = !DISubprogram(name: "__sincospi", scope: !11, file: !11, line: 657, type: !100, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !119, file: !11, line: 657, type: !19)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !119, file: !11, line: 657, type: !102)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !119, file: !11, line: 657, type: !102)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !119, file: !11, line: 658, type: !108)
!125 = !DISubprogram(name: "__sputc", scope: !126, file: !126, line: 348, type: !127, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !190)
!126 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!127 = !DISubroutineType(types: !128)
!128 = !{!4, !4, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !126, line: 153, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !126, line: 122, size: 1216, align: 64, elements: !132)
!132 = !{!133, !136, !137, !138, !140, !141, !146, !147, !149, !153, !158, !168, !174, !175, !178, !179, !183, !187, !188, !189}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !131, file: !126, line: 123, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !131, file: !126, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !131, file: !126, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !126, line: 126, baseType: !139, size: 16, align: 16, offset: 128)
!139 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !131, file: !126, line: 127, baseType: !139, size: 16, align: 16, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !131, file: !126, line: 128, baseType: !142, size: 128, align: 64, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !126, line: 88, size: 128, align: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !142, file: !126, line: 89, baseType: !134, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !142, file: !126, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !131, file: !126, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !131, file: !126, line: 132, baseType: !148, size: 64, align: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !131, file: !126, line: 133, baseType: !150, size: 64, align: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!4, !148}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !131, file: !126, line: 134, baseType: !154, size: 64, align: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!4, !148, !157, !4}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !131, file: !126, line: 135, baseType: !159, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !148, !162, !4}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !126, line: 77, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !164, line: 71, baseType: !165)
!164 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !166, line: 46, baseType: !167)
!166 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!167 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !131, file: !126, line: 136, baseType: !169, size: 64, align: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!4, !148, !172, !4}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !131, file: !126, line: 139, baseType: !142, size: 128, align: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !131, file: !126, line: 140, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !126, line: 94, flags: DIFlagFwdDecl)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !131, file: !126, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !131, file: !126, line: 144, baseType: !180, size: 24, align: 8, offset: 928)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 24, align: 8, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 3)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !131, file: !126, line: 145, baseType: !184, size: 8, align: 8, offset: 952)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8, align: 8, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 1)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !131, file: !126, line: 148, baseType: !142, size: 128, align: 64, offset: 960)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !131, file: !126, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !126, line: 152, baseType: !162, size: 64, align: 64, offset: 1152)
!190 = !{!191, !192}
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !125, file: !126, line: 348, type: !4)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !125, file: !126, line: 348, type: !129)
!193 = !DISubprogram(name: "__sigbits", scope: !194, file: !194, line: 114, type: !195, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !197)
!194 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!195 = !DISubroutineType(types: !196)
!196 = !{!4, !4}
!197 = !{!198}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !193, file: !194, line: 114, type: !4)
!199 = !DISubprogram(name: "gmx_nint", scope: !1, file: !1, line: 45, type: !200, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @gmx_nint, variables: !204)
!200 = !DISubroutineType(types: !201)
!201 = !{!4, !202}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !203, line: 87, baseType: !8)
!203 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!204 = !{!205, !206, !208}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !199, file: !1, line: 45, type: !202)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "half", scope: !199, file: !1, line: 47, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !199, file: !1, line: 48, type: !4)
!209 = !DISubprogram(name: "sign", scope: !1, file: !1, line: 54, type: !210, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: float (float, float)* @sign, variables: !212)
!210 = !DISubroutineType(types: !211)
!211 = !{!202, !202, !202}
!212 = !{!213, !214}
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !209, file: !1, line: 54, type: !202)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !209, file: !1, line: 54, type: !202)
!215 = !DISubprogram(name: "gmx_erf", scope: !1, file: !1, line: 471, type: !216, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, function: float (float)* @gmx_erf, variables: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!202, !8}
!218 = !{!219, !220, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !215, file: !1, line: 471, type: !8)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hx", scope: !215, file: !1, line: 473, type: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "erf_int32_t", file: !1, line: 79, baseType: !4)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !215, file: !1, line: 473, type: !221)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !215, file: !1, line: 473, type: !221)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !215, file: !1, line: 474, type: !8)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "S", scope: !215, file: !1, line: 474, type: !8)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "P", scope: !215, file: !1, line: 474, type: !8)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Q", scope: !215, file: !1, line: 474, type: !8)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !215, file: !1, line: 474, type: !8)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !215, file: !1, line: 474, type: !8)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !215, file: !1, line: 474, type: !8)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !215, file: !1, line: 474, type: !8)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conv", scope: !215, file: !1, line: 481, type: !233)
!233 = !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !1, line: 476, size: 32, align: 32, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !233, file: !1, line: 478, baseType: !8, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !233, file: !1, line: 479, baseType: !4, size: 32, align: 32)
!237 = !DISubprogram(name: "gmx_erfc", scope: !1, file: !1, line: 546, type: !216, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: float (float)* @gmx_erfc, variables: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !237, file: !1, line: 546, type: !8)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hx", scope: !237, file: !1, line: 548, type: !221)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !237, file: !1, line: 548, type: !221)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !237, file: !1, line: 549, type: !8)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "S", scope: !237, file: !1, line: 549, type: !8)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "P", scope: !237, file: !1, line: 549, type: !8)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Q", scope: !237, file: !1, line: 549, type: !8)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !237, file: !1, line: 549, type: !8)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !237, file: !1, line: 549, type: !8)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !237, file: !1, line: 549, type: !8)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !237, file: !1, line: 549, type: !8)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conv", scope: !237, file: !1, line: 556, type: !251)
!251 = !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !1, line: 551, size: 32, align: 32, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !251, file: !1, line: 553, baseType: !8, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !251, file: !1, line: 554, baseType: !4, size: 32, align: 32)
!255 = !DISubprogram(name: "fast_float_erf", scope: !1, file: !1, line: 630, type: !256, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, function: float (float)* @fast_float_erf, variables: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{!8, !8}
!258 = !{!259, !260, !261}
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !255, file: !1, line: 630, type: !8)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !255, file: !1, line: 632, type: !8)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ans", scope: !255, file: !1, line: 632, type: !8)
!262 = !DISubprogram(name: "fast_float_erfc", scope: !1, file: !1, line: 641, type: !256, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: float (float)* @fast_float_erfc, variables: !263)
!263 = !{!264, !265, !266}
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !262, file: !1, line: 641, type: !8)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !262, file: !1, line: 643, type: !8)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ans", scope: !262, file: !1, line: 643, type: !8)
!267 = !{!268, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!268 = !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 376, type: !269, isLocal: true, isDefinition: true, variable: float 1.000000e+00)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!270 = !DIGlobalVariable(name: "efx8", scope: !0, file: !1, line: 384, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FF06EBA80000000)
!271 = !DIGlobalVariable(name: "efx", scope: !0, file: !1, line: 383, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FC06EBA80000000)
!272 = !DIGlobalVariable(name: "pp0", scope: !0, file: !1, line: 385, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FC06EBA80000000)
!273 = !DIGlobalVariable(name: "pp1", scope: !0, file: !1, line: 386, type: !269, isLocal: true, isDefinition: true, variable: float 0xBFD4CD7D60000000)
!274 = !DIGlobalVariable(name: "pp2", scope: !0, file: !1, line: 387, type: !269, isLocal: true, isDefinition: true, variable: float 0xBF9D2A51E0000000)
!275 = !DIGlobalVariable(name: "pp3", scope: !0, file: !1, line: 388, type: !269, isLocal: true, isDefinition: true, variable: float 0xBF77A29120000000)
!276 = !DIGlobalVariable(name: "pp4", scope: !0, file: !1, line: 389, type: !269, isLocal: true, isDefinition: true, variable: float 0xBEF8EAD620000000)
!277 = !DIGlobalVariable(name: "qq1", scope: !0, file: !1, line: 390, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FD97779C0000000)
!278 = !DIGlobalVariable(name: "qq2", scope: !0, file: !1, line: 391, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FB0A54C60000000)
!279 = !DIGlobalVariable(name: "qq3", scope: !0, file: !1, line: 392, type: !269, isLocal: true, isDefinition: true, variable: float 0x3F74D022C0000000)
!280 = !DIGlobalVariable(name: "qq4", scope: !0, file: !1, line: 393, type: !269, isLocal: true, isDefinition: true, variable: float 0x3F215DC920000000)
!281 = !DIGlobalVariable(name: "qq5", scope: !0, file: !1, line: 394, type: !269, isLocal: true, isDefinition: true, variable: float 0xBED09C4340000000)
!282 = !DIGlobalVariable(name: "pa0", scope: !0, file: !1, line: 398, type: !269, isLocal: true, isDefinition: true, variable: float 0xBF6359B8C0000000)
!283 = !DIGlobalVariable(name: "pa1", scope: !0, file: !1, line: 399, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FDA8D00A0000000)
!284 = !DIGlobalVariable(name: "pa2", scope: !0, file: !1, line: 400, type: !269, isLocal: true, isDefinition: true, variable: float 0xBFD7D24100000000)
!285 = !DIGlobalVariable(name: "pa3", scope: !0, file: !1, line: 401, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FD45FCA80000000)
!286 = !DIGlobalVariable(name: "pa4", scope: !0, file: !1, line: 402, type: !269, isLocal: true, isDefinition: true, variable: float 0xBFBC639840000000)
!287 = !DIGlobalVariable(name: "pa5", scope: !0, file: !1, line: 403, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FA22A3660000000)
!288 = !DIGlobalVariable(name: "pa6", scope: !0, file: !1, line: 404, type: !269, isLocal: true, isDefinition: true, variable: float 0xBF61BF3800000000)
!289 = !DIGlobalVariable(name: "qa1", scope: !0, file: !1, line: 405, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FBB3E6620000000)
!290 = !DIGlobalVariable(name: "qa2", scope: !0, file: !1, line: 406, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FE14AF0A0000000)
!291 = !DIGlobalVariable(name: "qa3", scope: !0, file: !1, line: 407, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FB2635CE0000000)
!292 = !DIGlobalVariable(name: "qa4", scope: !0, file: !1, line: 408, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FC02660E0000000)
!293 = !DIGlobalVariable(name: "qa5", scope: !0, file: !1, line: 409, type: !269, isLocal: true, isDefinition: true, variable: float 0x3F8BEDC260000000)
!294 = !DIGlobalVariable(name: "qa6", scope: !0, file: !1, line: 410, type: !269, isLocal: true, isDefinition: true, variable: float 0x3F888B5460000000)
!295 = !DIGlobalVariable(name: "erx", scope: !0, file: !1, line: 379, type: !269, isLocal: true, isDefinition: true, variable: float 0x3FEB0AC160000000)
!296 = !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 374, type: !269, isLocal: true, isDefinition: true, variable: float 0x39B4484C00000000)
!297 = !DIGlobalVariable(name: "ra0", scope: !0, file: !1, line: 414, type: !269, isLocal: true, isDefinition: true, variable: float 0xBF84341260000000)
!298 = !DIGlobalVariable(name: "ra1", scope: !0, file: !1, line: 415, type: !269, isLocal: true, isDefinition: true, variable: float 0xBFE63416E0000000)
!299 = !DIGlobalVariable(name: "ra2", scope: !0, file: !1, line: 416, type: !269, isLocal: true, isDefinition: true, variable: float 0xC0251E0440000000)
!300 = !DIGlobalVariable(name: "ra3", scope: !0, file: !1, line: 417, type: !269, isLocal: true, isDefinition: true, variable: float 0xC04F300AE0000000)
!301 = !DIGlobalVariable(name: "ra4", scope: !0, file: !1, line: 418, type: !269, isLocal: true, isDefinition: true, variable: float 0xC0644CB180000000)
!302 = !DIGlobalVariable(name: "ra5", scope: !0, file: !1, line: 419, type: !269, isLocal: true, isDefinition: true, variable: float 0xC067135CE0000000)
!303 = !DIGlobalVariable(name: "ra6", scope: !0, file: !1, line: 420, type: !269, isLocal: true, isDefinition: true, variable: float 0xC054526560000000)
!304 = !DIGlobalVariable(name: "ra7", scope: !0, file: !1, line: 421, type: !269, isLocal: true, isDefinition: true, variable: float 0xC023A0EFC0000000)
!305 = !DIGlobalVariable(name: "sa1", scope: !0, file: !1, line: 422, type: !269, isLocal: true, isDefinition: true, variable: float 0x4033A6B9C0000000)
!306 = !DIGlobalVariable(name: "sa2", scope: !0, file: !1, line: 423, type: !269, isLocal: true, isDefinition: true, variable: float 0x4061350C60000000)
!307 = !DIGlobalVariable(name: "sa3", scope: !0, file: !1, line: 424, type: !269, isLocal: true, isDefinition: true, variable: float 0x407B290DE0000000)
!308 = !DIGlobalVariable(name: "sa4", scope: !0, file: !1, line: 425, type: !269, isLocal: true, isDefinition: true, variable: float 0x40842B1920000000)
!309 = !DIGlobalVariable(name: "sa5", scope: !0, file: !1, line: 426, type: !269, isLocal: true, isDefinition: true, variable: float 0x407AD02160000000)
!310 = !DIGlobalVariable(name: "sa6", scope: !0, file: !1, line: 427, type: !269, isLocal: true, isDefinition: true, variable: float 0x405B28A3E0000000)
!311 = !DIGlobalVariable(name: "sa7", scope: !0, file: !1, line: 428, type: !269, isLocal: true, isDefinition: true, variable: float 0x401A47EF80000000)
!312 = !DIGlobalVariable(name: "sa8", scope: !0, file: !1, line: 429, type: !269, isLocal: true, isDefinition: true, variable: float 0xBFAEEFF2E0000000)
!313 = !DIGlobalVariable(name: "rb0", scope: !0, file: !1, line: 433, type: !269, isLocal: true, isDefinition: true, variable: float 0xBF84341240000000)
!314 = !DIGlobalVariable(name: "rb1", scope: !0, file: !1, line: 434, type: !269, isLocal: true, isDefinition: true, variable: float 0xBFE993BA80000000)
!315 = !DIGlobalVariable(name: "rb2", scope: !0, file: !1, line: 435, type: !269, isLocal: true, isDefinition: true, variable: float 0xC031C20960000000)
!316 = !DIGlobalVariable(name: "rb3", scope: !0, file: !1, line: 436, type: !269, isLocal: true, isDefinition: true, variable: float 0xC064145D40000000)
!317 = !DIGlobalVariable(name: "rb4", scope: !0, file: !1, line: 437, type: !269, isLocal: true, isDefinition: true, variable: float 0xC083EC8820000000)
!318 = !DIGlobalVariable(name: "rb5", scope: !0, file: !1, line: 438, type: !269, isLocal: true, isDefinition: true, variable: float 0xC090046160000000)
!319 = !DIGlobalVariable(name: "rb6", scope: !0, file: !1, line: 439, type: !269, isLocal: true, isDefinition: true, variable: float 0xC07E384EA0000000)
!320 = !DIGlobalVariable(name: "sb1", scope: !0, file: !1, line: 440, type: !269, isLocal: true, isDefinition: true, variable: float 0x403E568B20000000)
!321 = !DIGlobalVariable(name: "sb2", scope: !0, file: !1, line: 441, type: !269, isLocal: true, isDefinition: true, variable: float 0x40745CAE20000000)
!322 = !DIGlobalVariable(name: "sb3", scope: !0, file: !1, line: 442, type: !269, isLocal: true, isDefinition: true, variable: float 0x409802EB20000000)
!323 = !DIGlobalVariable(name: "sb4", scope: !0, file: !1, line: 443, type: !269, isLocal: true, isDefinition: true, variable: float 0x40A8FFB760000000)
!324 = !DIGlobalVariable(name: "sb5", scope: !0, file: !1, line: 444, type: !269, isLocal: true, isDefinition: true, variable: float 0x40A3F219C0000000)
!325 = !DIGlobalVariable(name: "sb6", scope: !0, file: !1, line: 445, type: !269, isLocal: true, isDefinition: true, variable: float 0x407DA874E0000000)
!326 = !DIGlobalVariable(name: "sb7", scope: !0, file: !1, line: 446, type: !269, isLocal: true, isDefinition: true, variable: float 0xC03670E240000000)
!327 = !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 375, type: !269, isLocal: true, isDefinition: true, variable: float 5.000000e-01)
!328 = !DIGlobalVariable(name: "two", scope: !0, file: !1, line: 377, type: !269, isLocal: true, isDefinition: true, variable: float 2.000000e+00)
!329 = !{i32 2, !"Dwarf Version", i32 2}
!330 = !{i32 2, !"Debug Info Version", i32 700000003}
!331 = !{i32 1, !"PIC Level", i32 2}
!332 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!333 = !DIExpression()
!334 = !DILocation(line: 204, column: 53, scope: !10)
!335 = !DILocation(line: 205, column: 16, scope: !10)
!336 = !DILocation(line: 205, column: 23, scope: !10)
!337 = !DILocation(line: 205, column: 26, scope: !10)
!338 = !DILocation(line: 205, column: 47, scope: !10)
!339 = !DILocation(line: 205, column: 5, scope: !10)
!340 = !DILocation(line: 207, column: 54, scope: !16)
!341 = !DILocation(line: 208, column: 16, scope: !16)
!342 = !DILocation(line: 208, column: 23, scope: !16)
!343 = !DILocation(line: 208, column: 26, scope: !16)
!344 = !DILocation(line: 208, column: 46, scope: !16)
!345 = !DILocation(line: 208, column: 5, scope: !16)
!346 = !DILocation(line: 210, column: 59, scope: !22)
!347 = !DILocation(line: 211, column: 16, scope: !22)
!348 = !DILocation(line: 211, column: 23, scope: !22)
!349 = !DILocation(line: 211, column: 26, scope: !22)
!350 = !DILocation(line: 211, column: 47, scope: !22)
!351 = !DILocation(line: 211, column: 5, scope: !22)
!352 = !DILocation(line: 213, column: 50, scope: !28)
!353 = !DILocation(line: 214, column: 12, scope: !28)
!354 = !DILocation(line: 214, column: 33, scope: !28)
!355 = !DILocation(line: 214, column: 5, scope: !28)
!356 = !DILocation(line: 216, column: 51, scope: !31)
!357 = !DILocation(line: 217, column: 12, scope: !31)
!358 = !DILocation(line: 217, column: 32, scope: !31)
!359 = !DILocation(line: 217, column: 5, scope: !31)
!360 = !DILocation(line: 219, column: 56, scope: !34)
!361 = !DILocation(line: 220, column: 12, scope: !34)
!362 = !DILocation(line: 220, column: 33, scope: !34)
!363 = !DILocation(line: 220, column: 5, scope: !34)
!364 = !DILocation(line: 222, column: 50, scope: !37)
!365 = !DILocation(line: 223, column: 16, scope: !37)
!366 = !DILocation(line: 223, column: 5, scope: !37)
!367 = !DILocation(line: 225, column: 51, scope: !40)
!368 = !DILocation(line: 226, column: 16, scope: !40)
!369 = !DILocation(line: 226, column: 5, scope: !40)
!370 = !DILocation(line: 228, column: 56, scope: !43)
!371 = !DILocation(line: 229, column: 16, scope: !43)
!372 = !DILocation(line: 229, column: 5, scope: !43)
!373 = !DILocation(line: 231, column: 52, scope: !46)
!374 = !DILocation(line: 232, column: 44, scope: !46)
!375 = !DILocation(line: 233, column: 13, scope: !46)
!376 = !DILocation(line: 234, column: 26, scope: !46)
!377 = !DILocation(line: 234, column: 5, scope: !46)
!378 = !DILocation(line: 236, column: 53, scope: !54)
!379 = !DILocation(line: 237, column: 51, scope: !54)
!380 = !DILocation(line: 238, column: 13, scope: !54)
!381 = !DILocation(line: 239, column: 26, scope: !54)
!382 = !DILocation(line: 239, column: 12, scope: !54)
!383 = !DILocation(line: 239, column: 5, scope: !54)
!384 = !DILocation(line: 242, column: 58, scope: !63)
!385 = !DILocation(line: 246, column: 7, scope: !63)
!386 = !DILocation(line: 248, column: 26, scope: !63)
!387 = !DILocation(line: 248, column: 33, scope: !63)
!388 = !DILocation(line: 248, column: 5, scope: !63)
!389 = !DILocation(line: 257, column: 53, scope: !76)
!390 = !DILocation(line: 204, column: 53, scope: !10, inlinedAt: !391)
!391 = distinct !DILocation(line: 258, column: 12, scope: !76)
!392 = !DILocation(line: 205, column: 16, scope: !10, inlinedAt: !391)
!393 = !DILocation(line: 205, column: 47, scope: !10, inlinedAt: !391)
!394 = !DILocation(line: 205, column: 23, scope: !10, inlinedAt: !391)
!395 = !DILocation(line: 258, column: 60, scope: !76)
!396 = !DILocation(line: 258, column: 36, scope: !76)
!397 = !DILocation(line: 258, column: 5, scope: !76)
!398 = !DILocation(line: 260, column: 54, scope: !79)
!399 = !DILocation(line: 207, column: 54, scope: !16, inlinedAt: !400)
!400 = distinct !DILocation(line: 261, column: 12, scope: !79)
!401 = !DILocation(line: 208, column: 16, scope: !16, inlinedAt: !400)
!402 = !DILocation(line: 208, column: 46, scope: !16, inlinedAt: !400)
!403 = !DILocation(line: 208, column: 23, scope: !16, inlinedAt: !400)
!404 = !DILocation(line: 261, column: 59, scope: !79)
!405 = !DILocation(line: 261, column: 36, scope: !79)
!406 = !DILocation(line: 261, column: 5, scope: !79)
!407 = !DILocation(line: 263, column: 59, scope: !82)
!408 = !DILocation(line: 210, column: 59, scope: !22, inlinedAt: !409)
!409 = distinct !DILocation(line: 264, column: 12, scope: !82)
!410 = !DILocation(line: 211, column: 16, scope: !22, inlinedAt: !409)
!411 = !DILocation(line: 211, column: 47, scope: !22, inlinedAt: !409)
!412 = !DILocation(line: 211, column: 23, scope: !22, inlinedAt: !409)
!413 = !DILocation(line: 264, column: 60, scope: !82)
!414 = !DILocation(line: 264, column: 36, scope: !82)
!415 = !DILocation(line: 264, column: 5, scope: !82)
!416 = !DILocation(line: 642, column: 45, scope: !85)
!417 = !DILocation(line: 642, column: 57, scope: !85)
!418 = !DILocation(line: 642, column: 72, scope: !85)
!419 = !DILocation(line: 643, column: 27, scope: !85)
!420 = !DILocation(line: 643, column: 37, scope: !85)
!421 = !DILocation(line: 644, column: 23, scope: !85)
!422 = !DILocation(line: 644, column: 13, scope: !85)
!423 = !{!424, !424, i64 0}
!424 = !{!"float", !425, i64 0}
!425 = !{!"omnipotent char", !426, i64 0}
!426 = !{!"Simple C/C++ TBAA"}
!427 = !DILocation(line: 644, column: 51, scope: !85)
!428 = !DILocation(line: 644, column: 41, scope: !85)
!429 = !DILocation(line: 645, column: 1, scope: !85)
!430 = !DILocation(line: 647, column: 45, scope: !99)
!431 = !DILocation(line: 647, column: 58, scope: !99)
!432 = !DILocation(line: 647, column: 74, scope: !99)
!433 = !DILocation(line: 648, column: 28, scope: !99)
!434 = !DILocation(line: 648, column: 38, scope: !99)
!435 = !DIExpression(DW_OP_bit_piece, 0, 64)
!436 = !DIExpression(DW_OP_bit_piece, 64, 64)
!437 = !DILocation(line: 649, column: 13, scope: !99)
!438 = !{!439, !439, i64 0}
!439 = !{!"double", !425, i64 0}
!440 = !DILocation(line: 649, column: 41, scope: !99)
!441 = !DILocation(line: 650, column: 1, scope: !99)
!442 = !DILocation(line: 652, column: 47, scope: !113)
!443 = !DILocation(line: 652, column: 59, scope: !113)
!444 = !DILocation(line: 652, column: 74, scope: !113)
!445 = !DILocation(line: 653, column: 27, scope: !113)
!446 = !DILocation(line: 653, column: 37, scope: !113)
!447 = !DILocation(line: 654, column: 23, scope: !113)
!448 = !DILocation(line: 654, column: 13, scope: !113)
!449 = !DILocation(line: 654, column: 51, scope: !113)
!450 = !DILocation(line: 654, column: 41, scope: !113)
!451 = !DILocation(line: 655, column: 1, scope: !113)
!452 = !DILocation(line: 657, column: 47, scope: !119)
!453 = !DILocation(line: 657, column: 60, scope: !119)
!454 = !DILocation(line: 657, column: 76, scope: !119)
!455 = !DILocation(line: 658, column: 28, scope: !119)
!456 = !DILocation(line: 658, column: 38, scope: !119)
!457 = !DILocation(line: 659, column: 13, scope: !119)
!458 = !DILocation(line: 659, column: 41, scope: !119)
!459 = !DILocation(line: 660, column: 1, scope: !119)
!460 = !DILocation(line: 348, column: 40, scope: !125)
!461 = !DILocation(line: 348, column: 50, scope: !125)
!462 = !DILocation(line: 349, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !125, file: !126, line: 349, column: 6)
!464 = !DILocation(line: 349, column: 6, scope: !463)
!465 = !{!466, !468, i64 12}
!466 = !{!"__sFILE", !467, i64 0, !468, i64 8, !468, i64 12, !469, i64 16, !469, i64 18, !470, i64 24, !468, i64 40, !467, i64 48, !467, i64 56, !467, i64 64, !467, i64 72, !467, i64 80, !470, i64 88, !467, i64 104, !468, i64 112, !425, i64 116, !425, i64 119, !470, i64 120, !468, i64 136, !471, i64 144}
!467 = !{!"any pointer", !425, i64 0}
!468 = !{!"int", !425, i64 0}
!469 = !{!"short", !425, i64 0}
!470 = !{!"__sbuf", !467, i64 0, !468, i64 8}
!471 = !{!"long long", !425, i64 0}
!472 = !DILocation(line: 349, column: 15, scope: !463)
!473 = !DILocation(line: 349, column: 20, scope: !463)
!474 = !DILocation(line: 350, column: 10, scope: !463)
!475 = !DILocation(line: 349, column: 38, scope: !463)
!476 = !{!466, !468, i64 40}
!477 = !DILocation(line: 349, column: 31, scope: !463)
!478 = !DILocation(line: 349, column: 59, scope: !463)
!479 = !DILocation(line: 349, column: 47, scope: !463)
!480 = !DILocation(line: 350, column: 23, scope: !463)
!481 = !DILocation(line: 350, column: 16, scope: !463)
!482 = !DILocation(line: 350, column: 18, scope: !463)
!483 = !{!466, !467, i64 0}
!484 = !DILocation(line: 350, column: 21, scope: !463)
!485 = !{!425, !425, i64 0}
!486 = !DILocation(line: 350, column: 3, scope: !463)
!487 = !DILocation(line: 352, column: 11, scope: !463)
!488 = !DILocation(line: 352, column: 3, scope: !463)
!489 = !DILocation(line: 353, column: 1, scope: !125)
!490 = !DILocation(line: 114, column: 15, scope: !193)
!491 = !DILocation(line: 116, column: 20, scope: !193)
!492 = !DILocation(line: 116, column: 12, scope: !193)
!493 = !DILocation(line: 116, column: 57, scope: !193)
!494 = !DILocation(line: 116, column: 45, scope: !193)
!495 = !DILocation(line: 116, column: 5, scope: !193)
!496 = !DILocation(line: 45, column: 19, scope: !199)
!497 = !DILocation(line: 47, column: 14, scope: !199)
!498 = !DILocation(line: 50, column: 15, scope: !199)
!499 = !DILocation(line: 50, column: 12, scope: !199)
!500 = !DILocation(line: 50, column: 32, scope: !199)
!501 = !DILocation(line: 50, column: 52, scope: !199)
!502 = !DILocation(line: 50, column: 24, scope: !199)
!503 = !DILocation(line: 48, column: 9, scope: !199)
!504 = !DILocation(line: 51, column: 3, scope: !199)
!505 = !DILocation(line: 54, column: 16, scope: !209)
!506 = !DILocation(line: 54, column: 23, scope: !209)
!507 = !DILocation(line: 56, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !209, file: !1, line: 56, column: 7)
!509 = !DILocation(line: 57, column: 13, scope: !508)
!510 = !DILocation(line: 56, column: 7, scope: !209)
!511 = !DILocation(line: 57, column: 12, scope: !508)
!512 = !DILocation(line: 57, column: 5, scope: !508)
!513 = !DILocation(line: 60, column: 1, scope: !209)
!514 = !DILocation(line: 471, column: 21, scope: !215)
!515 = !DILocation(line: 481, column: 5, scope: !215)
!516 = !DILocation(line: 483, column: 11, scope: !215)
!517 = !DILocation(line: 473, column: 14, scope: !215)
!518 = !DILocation(line: 486, column: 9, scope: !215)
!519 = !DILocation(line: 473, column: 17, scope: !215)
!520 = !DILocation(line: 487, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !215, file: !1, line: 487, column: 5)
!522 = !DILocation(line: 487, column: 5, scope: !215)
!523 = !DILocation(line: 490, column: 28, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !1, line: 488, column: 5)
!525 = !DILocation(line: 490, column: 33, scope: !524)
!526 = !DILocation(line: 473, column: 20, scope: !215)
!527 = !DILocation(line: 491, column: 22, scope: !524)
!528 = !DILocation(line: 491, column: 13, scope: !524)
!529 = !DILocation(line: 491, column: 29, scope: !524)
!530 = !DILocation(line: 491, column: 25, scope: !524)
!531 = !DILocation(line: 491, column: 6, scope: !524)
!532 = !DILocation(line: 494, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !215, file: !1, line: 494, column: 5)
!534 = !DILocation(line: 494, column: 5, scope: !215)
!535 = !DILocation(line: 497, column: 12, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 497, column: 9)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 495, column: 5)
!538 = !DILocation(line: 497, column: 9, scope: !537)
!539 = !DILocation(line: 500, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 500, column: 14)
!541 = distinct !DILexicalBlock(scope: !536, file: !1, line: 498, column: 9)
!542 = !DILocation(line: 500, column: 14, scope: !541)
!543 = !DILocation(line: 501, column: 48, scope: !540)
!544 = !DILocation(line: 501, column: 55, scope: !540)
!545 = !DILocation(line: 501, column: 50, scope: !540)
!546 = !DILocation(line: 501, column: 36, scope: !540)
!547 = !DILocation(line: 501, column: 17, scope: !540)
!548 = !DILocation(line: 502, column: 27, scope: !541)
!549 = !DILocation(line: 502, column: 22, scope: !541)
!550 = !DILocation(line: 502, column: 13, scope: !541)
!551 = !DILocation(line: 504, column: 14, scope: !537)
!552 = !DILocation(line: 474, column: 20, scope: !215)
!553 = !DILocation(line: 505, column: 39, scope: !537)
!554 = !DILocation(line: 505, column: 32, scope: !537)
!555 = !DILocation(line: 505, column: 30, scope: !537)
!556 = !DILocation(line: 505, column: 25, scope: !537)
!557 = !DILocation(line: 505, column: 23, scope: !537)
!558 = !DILocation(line: 505, column: 18, scope: !537)
!559 = !DILocation(line: 505, column: 16, scope: !537)
!560 = !DILocation(line: 474, column: 22, scope: !215)
!561 = !DILocation(line: 506, column: 43, scope: !537)
!562 = !DILocation(line: 506, column: 36, scope: !537)
!563 = !DILocation(line: 506, column: 34, scope: !537)
!564 = !DILocation(line: 506, column: 29, scope: !537)
!565 = !DILocation(line: 506, column: 27, scope: !537)
!566 = !DILocation(line: 506, column: 22, scope: !537)
!567 = !DILocation(line: 506, column: 20, scope: !537)
!568 = !DILocation(line: 506, column: 15, scope: !537)
!569 = !DILocation(line: 506, column: 13, scope: !537)
!570 = !DILocation(line: 474, column: 16, scope: !215)
!571 = !DILocation(line: 507, column: 11, scope: !537)
!572 = !DILocation(line: 474, column: 18, scope: !215)
!573 = !DILocation(line: 508, column: 18, scope: !537)
!574 = !DILocation(line: 508, column: 15, scope: !537)
!575 = !DILocation(line: 508, column: 6, scope: !537)
!576 = !DILocation(line: 510, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !215, file: !1, line: 510, column: 5)
!578 = !DILocation(line: 510, column: 5, scope: !215)
!579 = !DILocation(line: 513, column: 10, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !1, line: 511, column: 5)
!581 = !DILocation(line: 514, column: 50, scope: !580)
!582 = !DILocation(line: 514, column: 43, scope: !580)
!583 = !DILocation(line: 514, column: 41, scope: !580)
!584 = !DILocation(line: 514, column: 36, scope: !580)
!585 = !DILocation(line: 514, column: 34, scope: !580)
!586 = !DILocation(line: 514, column: 29, scope: !580)
!587 = !DILocation(line: 514, column: 27, scope: !580)
!588 = !DILocation(line: 514, column: 22, scope: !580)
!589 = !DILocation(line: 514, column: 20, scope: !580)
!590 = !DILocation(line: 514, column: 15, scope: !580)
!591 = !DILocation(line: 514, column: 13, scope: !580)
!592 = !DILocation(line: 474, column: 12, scope: !215)
!593 = !DILocation(line: 515, column: 50, scope: !580)
!594 = !DILocation(line: 515, column: 48, scope: !580)
!595 = !DILocation(line: 515, column: 43, scope: !580)
!596 = !DILocation(line: 515, column: 41, scope: !580)
!597 = !DILocation(line: 515, column: 36, scope: !580)
!598 = !DILocation(line: 515, column: 34, scope: !580)
!599 = !DILocation(line: 515, column: 29, scope: !580)
!600 = !DILocation(line: 515, column: 27, scope: !580)
!601 = !DILocation(line: 515, column: 22, scope: !580)
!602 = !DILocation(line: 515, column: 20, scope: !580)
!603 = !DILocation(line: 515, column: 15, scope: !580)
!604 = !DILocation(line: 515, column: 13, scope: !580)
!605 = !DILocation(line: 474, column: 14, scope: !215)
!606 = !DILocation(line: 516, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !580, file: !1, line: 516, column: 9)
!608 = !DILocation(line: 516, column: 30, scope: !607)
!609 = !DILocation(line: 516, column: 9, scope: !580)
!610 = !DILocation(line: 516, column: 27, scope: !607)
!611 = !DILocation(line: 516, column: 16, scope: !607)
!612 = !DILocation(line: 516, column: 51, scope: !607)
!613 = !DILocation(line: 516, column: 39, scope: !607)
!614 = !DILocation(line: 518, column: 12, scope: !615)
!615 = distinct !DILexicalBlock(scope: !215, file: !1, line: 518, column: 9)
!616 = !DILocation(line: 518, column: 9, scope: !215)
!617 = !DILocation(line: 521, column: 14, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 521, column: 12)
!619 = distinct !DILexicalBlock(scope: !615, file: !1, line: 519, column: 5)
!620 = !DILocation(line: 521, column: 19, scope: !618)
!621 = !DILocation(line: 523, column: 6, scope: !215)
!622 = !DILocation(line: 524, column: 13, scope: !215)
!623 = !DILocation(line: 524, column: 10, scope: !215)
!624 = !DILocation(line: 525, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !215, file: !1, line: 525, column: 8)
!626 = !DILocation(line: 474, column: 8, scope: !215)
!627 = !DILocation(line: 529, column: 62, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !1, line: 526, column: 5)
!629 = !DILocation(line: 525, column: 8, scope: !215)
!630 = !DILocation(line: 529, column: 55, scope: !628)
!631 = !DILocation(line: 529, column: 53, scope: !628)
!632 = !DILocation(line: 529, column: 48, scope: !628)
!633 = !DILocation(line: 529, column: 46, scope: !628)
!634 = !DILocation(line: 529, column: 41, scope: !628)
!635 = !DILocation(line: 529, column: 39, scope: !628)
!636 = !DILocation(line: 529, column: 34, scope: !628)
!637 = !DILocation(line: 529, column: 32, scope: !628)
!638 = !DILocation(line: 529, column: 27, scope: !628)
!639 = !DILocation(line: 529, column: 25, scope: !628)
!640 = !DILocation(line: 529, column: 20, scope: !628)
!641 = !DILocation(line: 529, column: 18, scope: !628)
!642 = !DILocation(line: 530, column: 2, scope: !628)
!643 = !DILocation(line: 535, column: 55, scope: !644)
!644 = distinct !DILexicalBlock(scope: !625, file: !1, line: 532, column: 5)
!645 = !DILocation(line: 535, column: 48, scope: !644)
!646 = !DILocation(line: 535, column: 46, scope: !644)
!647 = !DILocation(line: 535, column: 41, scope: !644)
!648 = !DILocation(line: 535, column: 39, scope: !644)
!649 = !DILocation(line: 535, column: 34, scope: !644)
!650 = !DILocation(line: 535, column: 32, scope: !644)
!651 = !DILocation(line: 535, column: 27, scope: !644)
!652 = !DILocation(line: 535, column: 25, scope: !644)
!653 = !DILocation(line: 535, column: 20, scope: !644)
!654 = !DILocation(line: 535, column: 18, scope: !644)
!655 = !DILocation(line: 529, column: 13, scope: !628)
!656 = !DILocation(line: 529, column: 11, scope: !628)
!657 = !DILocation(line: 538, column: 12, scope: !215)
!658 = !DILocation(line: 539, column: 21, scope: !215)
!659 = !DILocation(line: 540, column: 14, scope: !215)
!660 = !DILocation(line: 542, column: 14, scope: !215)
!661 = !DILocation(line: 542, column: 16, scope: !215)
!662 = !DILocation(line: 542, column: 12, scope: !215)
!663 = !DILocation(line: 542, column: 8, scope: !215)
!664 = !DILocation(line: 542, column: 38, scope: !215)
!665 = !DILocation(line: 542, column: 44, scope: !215)
!666 = !DILocation(line: 542, column: 41, scope: !215)
!667 = !DILocation(line: 542, column: 49, scope: !215)
!668 = !DILocation(line: 542, column: 47, scope: !215)
!669 = !DILocation(line: 542, column: 36, scope: !215)
!670 = !DILocation(line: 542, column: 32, scope: !215)
!671 = !DILocation(line: 542, column: 31, scope: !215)
!672 = !DILocation(line: 543, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !215, file: !1, line: 543, column: 5)
!674 = !DILocation(line: 543, column: 24, scope: !673)
!675 = !DILocation(line: 543, column: 5, scope: !215)
!676 = !DILocation(line: 543, column: 22, scope: !673)
!677 = !DILocation(line: 543, column: 12, scope: !673)
!678 = !DILocation(line: 543, column: 44, scope: !673)
!679 = !DILocation(line: 543, column: 33, scope: !673)
!680 = !DILocation(line: 544, column: 1, scope: !215)
!681 = !DILocation(line: 546, column: 22, scope: !237)
!682 = !DILocation(line: 556, column: 5, scope: !237)
!683 = !DILocation(line: 558, column: 11, scope: !237)
!684 = !DILocation(line: 548, column: 14, scope: !237)
!685 = !DILocation(line: 561, column: 9, scope: !237)
!686 = !DILocation(line: 548, column: 17, scope: !237)
!687 = !DILocation(line: 562, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !237, file: !1, line: 562, column: 5)
!689 = !DILocation(line: 562, column: 5, scope: !237)
!690 = !DILocation(line: 566, column: 39, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !1, line: 563, column: 5)
!692 = !DILocation(line: 566, column: 44, scope: !691)
!693 = !DILocation(line: 566, column: 13, scope: !691)
!694 = !DILocation(line: 566, column: 52, scope: !691)
!695 = !DILocation(line: 566, column: 48, scope: !691)
!696 = !DILocation(line: 566, column: 6, scope: !691)
!697 = !DILocation(line: 569, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !237, file: !1, line: 569, column: 5)
!699 = !DILocation(line: 569, column: 5, scope: !237)
!700 = !DILocation(line: 572, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 572, column: 9)
!702 = distinct !DILexicalBlock(scope: !698, file: !1, line: 570, column: 5)
!703 = !DILocation(line: 572, column: 9, scope: !702)
!704 = !DILocation(line: 573, column: 23, scope: !701)
!705 = !DILocation(line: 573, column: 13, scope: !701)
!706 = !DILocation(line: 574, column: 11, scope: !702)
!707 = !DILocation(line: 549, column: 20, scope: !237)
!708 = !DILocation(line: 575, column: 36, scope: !702)
!709 = !DILocation(line: 575, column: 29, scope: !702)
!710 = !DILocation(line: 575, column: 27, scope: !702)
!711 = !DILocation(line: 575, column: 22, scope: !702)
!712 = !DILocation(line: 575, column: 20, scope: !702)
!713 = !DILocation(line: 575, column: 15, scope: !702)
!714 = !DILocation(line: 575, column: 13, scope: !702)
!715 = !DILocation(line: 549, column: 22, scope: !237)
!716 = !DILocation(line: 576, column: 43, scope: !702)
!717 = !DILocation(line: 576, column: 36, scope: !702)
!718 = !DILocation(line: 576, column: 34, scope: !702)
!719 = !DILocation(line: 576, column: 29, scope: !702)
!720 = !DILocation(line: 576, column: 27, scope: !702)
!721 = !DILocation(line: 576, column: 22, scope: !702)
!722 = !DILocation(line: 576, column: 20, scope: !702)
!723 = !DILocation(line: 576, column: 15, scope: !702)
!724 = !DILocation(line: 576, column: 13, scope: !702)
!725 = !DILocation(line: 549, column: 16, scope: !237)
!726 = !DILocation(line: 577, column: 11, scope: !702)
!727 = !DILocation(line: 549, column: 18, scope: !237)
!728 = !DILocation(line: 578, column: 12, scope: !729)
!729 = distinct !DILexicalBlock(scope: !702, file: !1, line: 578, column: 9)
!730 = !DILocation(line: 581, column: 28, scope: !731)
!731 = distinct !DILexicalBlock(scope: !729, file: !1, line: 579, column: 9)
!732 = !DILocation(line: 578, column: 9, scope: !702)
!733 = !DILocation(line: 581, column: 26, scope: !731)
!734 = !DILocation(line: 581, column: 23, scope: !731)
!735 = !DILocation(line: 581, column: 13, scope: !731)
!736 = !DILocation(line: 584, column: 20, scope: !737)
!737 = distinct !DILexicalBlock(scope: !729, file: !1, line: 582, column: 13)
!738 = !DILocation(line: 584, column: 15, scope: !737)
!739 = !DILocation(line: 585, column: 22, scope: !737)
!740 = !DILocation(line: 585, column: 10, scope: !737)
!741 = !DILocation(line: 588, column: 8, scope: !742)
!742 = distinct !DILexicalBlock(scope: !237, file: !1, line: 588, column: 5)
!743 = !DILocation(line: 588, column: 5, scope: !237)
!744 = !DILocation(line: 591, column: 10, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !1, line: 589, column: 5)
!746 = !DILocation(line: 592, column: 50, scope: !745)
!747 = !DILocation(line: 592, column: 43, scope: !745)
!748 = !DILocation(line: 592, column: 41, scope: !745)
!749 = !DILocation(line: 592, column: 36, scope: !745)
!750 = !DILocation(line: 592, column: 34, scope: !745)
!751 = !DILocation(line: 592, column: 29, scope: !745)
!752 = !DILocation(line: 592, column: 27, scope: !745)
!753 = !DILocation(line: 592, column: 22, scope: !745)
!754 = !DILocation(line: 592, column: 20, scope: !745)
!755 = !DILocation(line: 592, column: 15, scope: !745)
!756 = !DILocation(line: 592, column: 13, scope: !745)
!757 = !DILocation(line: 549, column: 12, scope: !237)
!758 = !DILocation(line: 593, column: 50, scope: !745)
!759 = !DILocation(line: 593, column: 48, scope: !745)
!760 = !DILocation(line: 593, column: 43, scope: !745)
!761 = !DILocation(line: 593, column: 41, scope: !745)
!762 = !DILocation(line: 593, column: 36, scope: !745)
!763 = !DILocation(line: 593, column: 34, scope: !745)
!764 = !DILocation(line: 593, column: 29, scope: !745)
!765 = !DILocation(line: 593, column: 27, scope: !745)
!766 = !DILocation(line: 593, column: 22, scope: !745)
!767 = !DILocation(line: 593, column: 20, scope: !745)
!768 = !DILocation(line: 593, column: 15, scope: !745)
!769 = !DILocation(line: 593, column: 13, scope: !745)
!770 = !DILocation(line: 549, column: 14, scope: !237)
!771 = !DILocation(line: 594, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !745, file: !1, line: 594, column: 9)
!773 = !DILocation(line: 595, column: 36, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !1, line: 594, column: 16)
!775 = !DILocation(line: 594, column: 9, scope: !745)
!776 = !DILocation(line: 595, column: 33, scope: !774)
!777 = !DILocation(line: 595, column: 24, scope: !774)
!778 = !DILocation(line: 597, column: 20, scope: !779)
!779 = distinct !DILexicalBlock(scope: !772, file: !1, line: 596, column: 13)
!780 = !DILocation(line: 597, column: 36, scope: !779)
!781 = !DILocation(line: 597, column: 26, scope: !779)
!782 = !DILocation(line: 600, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !237, file: !1, line: 600, column: 6)
!784 = !DILocation(line: 600, column: 6, scope: !237)
!785 = !DILocation(line: 603, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !1, line: 601, column: 5)
!787 = !DILocation(line: 604, column: 17, scope: !786)
!788 = !DILocation(line: 604, column: 14, scope: !786)
!789 = !DILocation(line: 605, column: 11, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !1, line: 605, column: 9)
!791 = !DILocation(line: 605, column: 9, scope: !786)
!792 = !DILocation(line: 549, column: 8, scope: !237)
!793 = !DILocation(line: 609, column: 66, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !1, line: 606, column: 9)
!795 = !DILocation(line: 609, column: 59, scope: !794)
!796 = !DILocation(line: 609, column: 57, scope: !794)
!797 = !DILocation(line: 609, column: 52, scope: !794)
!798 = !DILocation(line: 609, column: 50, scope: !794)
!799 = !DILocation(line: 609, column: 45, scope: !794)
!800 = !DILocation(line: 609, column: 43, scope: !794)
!801 = !DILocation(line: 609, column: 38, scope: !794)
!802 = !DILocation(line: 609, column: 36, scope: !794)
!803 = !DILocation(line: 609, column: 31, scope: !794)
!804 = !DILocation(line: 609, column: 29, scope: !794)
!805 = !DILocation(line: 609, column: 24, scope: !794)
!806 = !DILocation(line: 609, column: 22, scope: !794)
!807 = !DILocation(line: 610, column: 6, scope: !794)
!808 = !DILocation(line: 612, column: 18, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 612, column: 16)
!810 = distinct !DILexicalBlock(scope: !790, file: !1, line: 610, column: 13)
!811 = !DILocation(line: 612, column: 24, scope: !809)
!812 = !DILocation(line: 612, column: 20, scope: !809)
!813 = !DILocation(line: 614, column: 59, scope: !810)
!814 = !DILocation(line: 614, column: 52, scope: !810)
!815 = !DILocation(line: 614, column: 50, scope: !810)
!816 = !DILocation(line: 614, column: 45, scope: !810)
!817 = !DILocation(line: 614, column: 43, scope: !810)
!818 = !DILocation(line: 614, column: 38, scope: !810)
!819 = !DILocation(line: 614, column: 36, scope: !810)
!820 = !DILocation(line: 614, column: 31, scope: !810)
!821 = !DILocation(line: 614, column: 29, scope: !810)
!822 = !DILocation(line: 614, column: 24, scope: !810)
!823 = !DILocation(line: 614, column: 22, scope: !810)
!824 = !DILocation(line: 609, column: 17, scope: !794)
!825 = !DILocation(line: 609, column: 15, scope: !794)
!826 = !DILocation(line: 617, column: 16, scope: !786)
!827 = !DILocation(line: 618, column: 25, scope: !786)
!828 = !DILocation(line: 619, column: 18, scope: !786)
!829 = !DILocation(line: 621, column: 18, scope: !786)
!830 = !DILocation(line: 621, column: 20, scope: !786)
!831 = !DILocation(line: 621, column: 16, scope: !786)
!832 = !DILocation(line: 621, column: 12, scope: !786)
!833 = !DILocation(line: 621, column: 42, scope: !786)
!834 = !DILocation(line: 621, column: 48, scope: !786)
!835 = !DILocation(line: 621, column: 45, scope: !786)
!836 = !DILocation(line: 621, column: 53, scope: !786)
!837 = !DILocation(line: 621, column: 51, scope: !786)
!838 = !DILocation(line: 621, column: 40, scope: !786)
!839 = !DILocation(line: 621, column: 36, scope: !786)
!840 = !DILocation(line: 621, column: 35, scope: !786)
!841 = !DILocation(line: 622, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !786, file: !1, line: 622, column: 9)
!843 = !DILocation(line: 622, column: 23, scope: !842)
!844 = !DILocation(line: 622, column: 9, scope: !786)
!845 = !DILocation(line: 622, column: 42, scope: !842)
!846 = !DILocation(line: 622, column: 32, scope: !842)
!847 = !DILocation(line: 624, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 624, column: 9)
!849 = distinct !DILexicalBlock(scope: !783, file: !1, line: 623, column: 9)
!850 = !DILocation(line: 624, column: 15, scope: !848)
!851 = !DILocation(line: 626, column: 1, scope: !237)
!852 = !DILocation(line: 630, column: 28, scope: !255)
!853 = !DILocation(line: 634, column: 17, scope: !255)
!854 = !DILocation(line: 634, column: 16, scope: !255)
!855 = !DILocation(line: 634, column: 12, scope: !255)
!856 = !DILocation(line: 634, column: 7, scope: !255)
!857 = !DILocation(line: 634, column: 4, scope: !255)
!858 = !DILocation(line: 632, column: 8, scope: !255)
!859 = !DILocation(line: 635, column: 6, scope: !255)
!860 = !DILocation(line: 635, column: 14, scope: !255)
!861 = !DILocation(line: 635, column: 12, scope: !255)
!862 = !DILocation(line: 635, column: 16, scope: !255)
!863 = !DILocation(line: 637, column: 19, scope: !255)
!864 = !DILocation(line: 637, column: 17, scope: !255)
!865 = !DILocation(line: 637, column: 4, scope: !255)
!866 = !DILocation(line: 636, column: 60, scope: !255)
!867 = !DILocation(line: 636, column: 48, scope: !255)
!868 = !DILocation(line: 636, column: 46, scope: !255)
!869 = !DILocation(line: 636, column: 33, scope: !255)
!870 = !DILocation(line: 636, column: 31, scope: !255)
!871 = !DILocation(line: 636, column: 19, scope: !255)
!872 = !DILocation(line: 636, column: 17, scope: !255)
!873 = !DILocation(line: 636, column: 4, scope: !255)
!874 = !DILocation(line: 635, column: 69, scope: !255)
!875 = !DILocation(line: 635, column: 57, scope: !255)
!876 = !DILocation(line: 635, column: 55, scope: !255)
!877 = !DILocation(line: 635, column: 43, scope: !255)
!878 = !DILocation(line: 635, column: 41, scope: !255)
!879 = !DILocation(line: 635, column: 29, scope: !255)
!880 = !DILocation(line: 635, column: 27, scope: !255)
!881 = !DILocation(line: 635, column: 8, scope: !255)
!882 = !DILocation(line: 635, column: 7, scope: !255)
!883 = !DILocation(line: 632, column: 10, scope: !255)
!884 = !DILocation(line: 638, column: 9, scope: !255)
!885 = !DILocation(line: 638, column: 2, scope: !255)
!886 = !DILocation(line: 641, column: 29, scope: !262)
!887 = !DILocation(line: 645, column: 17, scope: !262)
!888 = !DILocation(line: 645, column: 16, scope: !262)
!889 = !DILocation(line: 645, column: 12, scope: !262)
!890 = !DILocation(line: 645, column: 7, scope: !262)
!891 = !DILocation(line: 645, column: 4, scope: !262)
!892 = !DILocation(line: 643, column: 8, scope: !262)
!893 = !DILocation(line: 646, column: 6, scope: !262)
!894 = !DILocation(line: 646, column: 14, scope: !262)
!895 = !DILocation(line: 646, column: 12, scope: !262)
!896 = !DILocation(line: 646, column: 16, scope: !262)
!897 = !DILocation(line: 648, column: 19, scope: !262)
!898 = !DILocation(line: 648, column: 17, scope: !262)
!899 = !DILocation(line: 648, column: 4, scope: !262)
!900 = !DILocation(line: 647, column: 60, scope: !262)
!901 = !DILocation(line: 647, column: 48, scope: !262)
!902 = !DILocation(line: 647, column: 46, scope: !262)
!903 = !DILocation(line: 647, column: 33, scope: !262)
!904 = !DILocation(line: 647, column: 31, scope: !262)
!905 = !DILocation(line: 647, column: 19, scope: !262)
!906 = !DILocation(line: 647, column: 17, scope: !262)
!907 = !DILocation(line: 647, column: 4, scope: !262)
!908 = !DILocation(line: 646, column: 69, scope: !262)
!909 = !DILocation(line: 646, column: 57, scope: !262)
!910 = !DILocation(line: 646, column: 55, scope: !262)
!911 = !DILocation(line: 646, column: 43, scope: !262)
!912 = !DILocation(line: 646, column: 41, scope: !262)
!913 = !DILocation(line: 646, column: 29, scope: !262)
!914 = !DILocation(line: 646, column: 27, scope: !262)
!915 = !DILocation(line: 646, column: 8, scope: !262)
!916 = !DILocation(line: 646, column: 7, scope: !262)
!917 = !DILocation(line: 643, column: 10, scope: !262)
!918 = !DILocation(line: 649, column: 2, scope: !262)
