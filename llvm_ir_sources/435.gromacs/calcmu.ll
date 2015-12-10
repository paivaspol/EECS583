; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcmu.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !16, metadata !261), !dbg !262
  %1 = icmp sgt i32 %__signo, 32, !dbg !263
  br i1 %1, label %5, label %2, !dbg !264

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !265
  %4 = shl i32 1, %3, !dbg !266
  br label %5, !dbg !264

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !264
  ret i32 %6, !dbg !267
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !23, metadata !261), !dbg !268
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !269
  br i1 %1, label %2, label %5, !dbg !270

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !271
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !272
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !270
  ret i32 %7, !dbg !273
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !29, metadata !261), !dbg !274
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !275
  br i1 %1, label %2, label %5, !dbg !276

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !277
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !278
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !276
  ret i32 %7, !dbg !279
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !35, metadata !261), !dbg !280
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !281
  br i1 %1, label %2, label %5, !dbg !282

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !283
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !284
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !282
  ret i32 %7, !dbg !285
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !38, metadata !261), !dbg !286
  %1 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !287
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !288
  %3 = zext i1 %2 to i32, !dbg !288
  ret i32 %3, !dbg !289
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !41, metadata !261), !dbg !290
  %1 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !291
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !292
  %3 = zext i1 %2 to i32, !dbg !292
  ret i32 %3, !dbg !293
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !44, metadata !261), !dbg !294
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !295
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !296
  %3 = zext i1 %2 to i32, !dbg !296
  ret i32 %3, !dbg !297
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !47, metadata !261), !dbg !298
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !299
  %2 = zext i1 %1 to i32, !dbg !299
  ret i32 %2, !dbg !300
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !50, metadata !261), !dbg !301
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !302
  %2 = zext i1 %1 to i32, !dbg !302
  ret i32 %2, !dbg !303
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !53, metadata !261), !dbg !304
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !305
  %2 = zext i1 %1 to i32, !dbg !305
  ret i32 %2, !dbg !306
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !56, metadata !261), !dbg !307
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !57, metadata !261), !dbg !308
  %1 = bitcast float %__x to i32, !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !57, metadata !261), !dbg !308
  %2 = lshr i32 %1, 31, !dbg !310
  ret i32 %2, !dbg !311
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !65, metadata !261), !dbg !312
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !66, metadata !261), !dbg !313
  %1 = bitcast double %__x to i64, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !66, metadata !261), !dbg !313
  %2 = lshr i64 %1, 63, !dbg !315
  %3 = trunc i64 %2 to i32, !dbg !316
  ret i32 %3, !dbg !317
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !74, metadata !261), !dbg !318
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !75, metadata !261), !dbg !319
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !75, metadata !261), !dbg !319
  %1 = bitcast x86_fp80 %__x to i80, !dbg !320
  %2 = lshr i80 %1, 79, !dbg !320
  %3 = trunc i80 %2 to i32, !dbg !321
  ret i32 %3, !dbg !322
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !261), !dbg !323
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !23, metadata !261) #6, !dbg !324
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !326
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !327
  %or.cond = and i1 %1, %3, !dbg !328
  br i1 %or.cond, label %4, label %.critedge, !dbg !328

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !329
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !330
  ret i32 %7, !dbg !331
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !90, metadata !261), !dbg !332
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !29, metadata !261) #6, !dbg !333
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !335
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !336
  %or.cond = and i1 %1, %3, !dbg !337
  br i1 %or.cond, label %4, label %.critedge, !dbg !337

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !338
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !339
  ret i32 %7, !dbg !340
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !93, metadata !261), !dbg !341
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !35, metadata !261) #6, !dbg !342
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !344
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !345
  %or.cond = and i1 %1, %3, !dbg !346
  br i1 %or.cond, label %4, label %.critedge, !dbg !346

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !347
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !348
  ret i32 %7, !dbg !349
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !99, metadata !261), !dbg !350
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !100, metadata !261), !dbg !351
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !101, metadata !261), !dbg !352
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !102, metadata !261), !dbg !353
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8, !dbg !354
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !102, metadata !261), !dbg !353
  %2 = extractelement <2 x float> %1, i32 0, !dbg !355
  store float %2, float* %__sinp, align 4, !dbg !356, !tbaa !357
  %3 = extractelement <2 x float> %1, i32 1, !dbg !361
  store float %3, float* %__cosp, align 4, !dbg !362, !tbaa !357
  ret void, !dbg !363
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !113, metadata !261), !dbg !364
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !114, metadata !261), !dbg !365
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !115, metadata !261), !dbg !366
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !116, metadata !261), !dbg !367
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8, !dbg !368
  %2 = extractvalue { double, double } %1, 0, !dbg !368
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !116, metadata !369), !dbg !367
  %3 = extractvalue { double, double } %1, 1, !dbg !368
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !116, metadata !370), !dbg !367
  store double %2, double* %__sinp, align 8, !dbg !371, !tbaa !372
  store double %3, double* %__cosp, align 8, !dbg !374, !tbaa !372
  ret void, !dbg !375
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !124, metadata !261), !dbg !376
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !125, metadata !261), !dbg !377
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !126, metadata !261), !dbg !378
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !127, metadata !261), !dbg !379
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8, !dbg !380
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !127, metadata !261), !dbg !379
  %2 = extractelement <2 x float> %1, i32 0, !dbg !381
  store float %2, float* %__sinp, align 4, !dbg !382, !tbaa !357
  %3 = extractelement <2 x float> %1, i32 1, !dbg !383
  store float %3, float* %__cosp, align 4, !dbg !384, !tbaa !357
  ret void, !dbg !385
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !130, metadata !261), !dbg !386
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !131, metadata !261), !dbg !387
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !132, metadata !261), !dbg !388
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !133, metadata !261), !dbg !389
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8, !dbg !390
  %2 = extractvalue { double, double } %1, 0, !dbg !390
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !133, metadata !369), !dbg !389
  %3 = extractvalue { double, double } %1, 1, !dbg !390
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !133, metadata !370), !dbg !389
  store double %2, double* %__sinp, align 8, !dbg !391, !tbaa !372
  store double %3, double* %__cosp, align 8, !dbg !392, !tbaa !372
  ret void, !dbg !393
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_mu_and_q(%struct.t_nsborder* nocapture readonly %nsb, [3 x float]* nocapture readonly %x, float* nocapture readonly %q, float* nocapture %mu, float* nocapture %qsum) #4 {
.preheader2:
  %tmpmu = alloca [3 x double], align 16
  %tmpmu16 = bitcast [3 x double]* %tmpmu to i8*
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !165, metadata !261), !dbg !394
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !166, metadata !261), !dbg !395
  tail call void @llvm.dbg.value(metadata float* %q, i64 0, metadata !167, metadata !261), !dbg !396
  tail call void @llvm.dbg.value(metadata float* %mu, i64 0, metadata !168, metadata !261), !dbg !397
  tail call void @llvm.dbg.value(metadata float* %qsum, i64 0, metadata !169, metadata !261), !dbg !398
  tail call void @llvm.dbg.declare(metadata [3 x double]* %tmpmu, metadata !174, metadata !261), !dbg !399
  %0 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !400
  %1 = load i32* %0, align 4, !dbg !400, !tbaa !401
  %2 = sext i32 %1 to i64, !dbg !400
  %3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %2, !dbg !400
  %4 = load i32* %3, align 4, !dbg !400, !tbaa !404
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !171, metadata !261), !dbg !405
  %5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %2, !dbg !406
  %6 = load i32* %5, align 4, !dbg !406, !tbaa !404
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !172, metadata !261), !dbg !407
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !176, metadata !261), !dbg !408
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !173, metadata !261), !dbg !409
  call void @llvm.memset.p0i8.i64(i8* %tmpmu16, i8 0, i64 24, i32 16, i1 false), !dbg !410
  %7 = icmp sgt i32 %6, 0, !dbg !413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !173, metadata !261), !dbg !409
  br i1 %7, label %.preheader1.lr.ph, label %.preheader, !dbg !416

.preheader1.lr.ph:                                ; preds = %.preheader2
  %8 = add nsw i32 %6, %4, !dbg !417
  %9 = sext i32 %4 to i64
  %10 = sext i32 %8 to i64, !dbg !416
  br label %.preheader1, !dbg !416

.preheader1:                                      ; preds = %.preheader1.lr.ph, %21
  %indvars.iv11 = phi i64 [ %9, %.preheader1.lr.ph ], [ %indvars.iv.next12, %21 ]
  %tmpq.06 = phi double [ 0.000000e+00, %.preheader1.lr.ph ], [ %23, %21 ]
  %11 = getelementptr inbounds float* %q, i64 %indvars.iv11, !dbg !418
  %12 = load float* %11, align 4, !dbg !418, !tbaa !357
  br label %13, !dbg !423

..preheader_crit_edge:                            ; preds = %21
  %phitmp = fptrunc double %23 to float, !dbg !416
  br label %.preheader, !dbg !416

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader2
  %tmpq.0.lcssa = phi float [ %phitmp, %..preheader_crit_edge ], [ 0.000000e+00, %.preheader2 ]
  br label %25, !dbg !424

; <label>:13                                      ; preds = %13, %.preheader1
  %indvars.iv8 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next9, %13 ]
  %14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv11, i64 %indvars.iv8, !dbg !426
  %15 = load float* %14, align 4, !dbg !426, !tbaa !357
  %16 = fmul float %12, %15, !dbg !427
  %17 = fpext float %16 to double, !dbg !418
  %18 = getelementptr inbounds [3 x double]* %tmpmu, i64 0, i64 %indvars.iv8, !dbg !428
  %19 = load double* %18, align 8, !dbg !429, !tbaa !372
  %20 = fadd double %19, %17, !dbg !429
  store double %20, double* %18, align 8, !dbg !429, !tbaa !372
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !423
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 3, !dbg !423
  br i1 %exitcond10, label %21, label %13, !dbg !423

; <label>:21                                      ; preds = %13
  %22 = fpext float %12 to double, !dbg !430
  %23 = fadd double %tmpq.06, %22, !dbg !431
  tail call void @llvm.dbg.value(metadata double %23, i64 0, metadata !176, metadata !261), !dbg !408
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, 1, !dbg !416
  %24 = icmp slt i64 %indvars.iv.next12, %10, !dbg !413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !173, metadata !261), !dbg !409
  br i1 %24, label %.preheader1, label %..preheader_crit_edge, !dbg !416

; <label>:25                                      ; preds = %25, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %25 ]
  %26 = getelementptr inbounds [3 x double]* %tmpmu, i64 0, i64 %indvars.iv, !dbg !432
  %27 = load double* %26, align 8, !dbg !432, !tbaa !372
  %28 = fmul double %27, 4.803210e+01, !dbg !434
  %29 = fptrunc double %28 to float, !dbg !432
  %30 = getelementptr inbounds float* %mu, i64 %indvars.iv, !dbg !435
  store float %29, float* %30, align 4, !dbg !436, !tbaa !357
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !424
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !424
  br i1 %exitcond, label %31, label %25, !dbg !424

; <label>:31                                      ; preds = %25
  store float %tmpq.0.lcssa, float* %qsum, align 4, !dbg !437, !tbaa !357
  ret void, !dbg !438
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_mu(%struct.__sFILE* nocapture %fp, float* nocapture %mu, float* nocapture %vol) #4 {
  %mmm = alloca [4 x float], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !241, metadata !261), !dbg !439
  tail call void @llvm.dbg.value(metadata float* %mu, i64 0, metadata !242, metadata !261), !dbg !440
  tail call void @llvm.dbg.value(metadata float* %vol, i64 0, metadata !243, metadata !261), !dbg !441
  tail call void @llvm.dbg.declare(metadata [4 x float]* %mmm, metadata !244, metadata !261), !dbg !442
  %1 = bitcast [4 x float]* %mmm to i8*, !dbg !443
  %2 = call i64 @fread(i8* %1, i64 64, i64 1, %struct.__sFILE* %fp) #8, !dbg !445
  %3 = icmp eq i64 %2, 1, !dbg !446
  br i1 %3, label %4, label %22, !dbg !447

; <label>:4                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata float* %mu, i64 0, metadata !256, metadata !261), !dbg !448
  %5 = bitcast [4 x float]* %mmm to i64*, !dbg !450
  %6 = load i64* %5, align 16, !dbg !450
  %7 = trunc i64 %6 to i32, !dbg !450
  %8 = bitcast float* %mu to i32*, !dbg !451
  store i32 %7, i32* %8, align 4, !dbg !451, !tbaa !357
  %9 = lshr i64 %6, 32
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds float* %mu, i64 1, !dbg !452
  %12 = bitcast float* %11 to i32*, !dbg !453
  store i32 %10, i32* %12, align 4, !dbg !453, !tbaa !357
  %13 = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 2, !dbg !454
  %14 = bitcast float* %13 to i64*, !dbg !454
  %15 = load i64* %14, align 8, !dbg !454
  %16 = trunc i64 %15 to i32, !dbg !454
  %17 = getelementptr inbounds float* %mu, i64 2, !dbg !455
  %18 = bitcast float* %17 to i32*, !dbg !456
  store i32 %16, i32* %18, align 4, !dbg !456, !tbaa !357
  %19 = lshr i64 %15, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast float* %vol to i32*, !dbg !457
  store i32 %20, i32* %21, align 4, !dbg !457, !tbaa !357
  br label %22, !dbg !458

; <label>:22                                      ; preds = %0, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %0 ]
  ret i32 %.0, !dbg !459
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!257, !258, !259}
!llvm.ident = !{!260}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !10, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcmu.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 30, baseType: !7)
!6 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !8, line: 92, baseType: !9)
!8 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!10 = !{!11, !17, !24, !30, !36, !39, !42, !45, !48, !51, !54, !63, !72, !85, !88, !91, !94, !108, !122, !128, !134, !177, !248}
!11 = !DISubprogram(name: "__sigbits", scope: !12, file: !12, line: 114, type: !13, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !15)
!12 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !4}
!15 = !{!16}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !11, file: !12, line: 114, type: !4)
!17 = !DISubprogram(name: "__inline_isfinitef", scope: !18, file: !18, line: 204, type: !19, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !22)
!18 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DISubroutineType(types: !20)
!20 = !{!4, !21}
!21 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!22 = !{!23}
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !17, file: !18, line: 204, type: !21)
!24 = !DISubprogram(name: "__inline_isfinited", scope: !18, file: !18, line: 207, type: !25, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !28)
!25 = !DISubroutineType(types: !26)
!26 = !{!4, !27}
!27 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!28 = !{!29}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !24, file: !18, line: 207, type: !27)
!30 = !DISubprogram(name: "__inline_isfinitel", scope: !18, file: !18, line: 210, type: !31, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !34)
!31 = !DISubroutineType(types: !32)
!32 = !{!4, !33}
!33 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!34 = !{!35}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !30, file: !18, line: 210, type: !33)
!36 = !DISubprogram(name: "__inline_isinff", scope: !18, file: !18, line: 213, type: !19, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !37)
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !36, file: !18, line: 213, type: !21)
!39 = !DISubprogram(name: "__inline_isinfd", scope: !18, file: !18, line: 216, type: !25, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !40)
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !39, file: !18, line: 216, type: !27)
!42 = !DISubprogram(name: "__inline_isinfl", scope: !18, file: !18, line: 219, type: !31, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !43)
!43 = !{!44}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !42, file: !18, line: 219, type: !33)
!45 = !DISubprogram(name: "__inline_isnanf", scope: !18, file: !18, line: 222, type: !19, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !46)
!46 = !{!47}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !45, file: !18, line: 222, type: !21)
!48 = !DISubprogram(name: "__inline_isnand", scope: !18, file: !18, line: 225, type: !25, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !49)
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !48, file: !18, line: 225, type: !27)
!51 = !DISubprogram(name: "__inline_isnanl", scope: !18, file: !18, line: 228, type: !31, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !52)
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !51, file: !18, line: 228, type: !33)
!54 = !DISubprogram(name: "__inline_signbitf", scope: !18, file: !18, line: 231, type: !19, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !55)
!55 = !{!56, !57}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !54, file: !18, line: 231, type: !21)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !54, file: !18, line: 232, type: !58)
!58 = !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !18, line: 232, size: 32, align: 32, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !58, file: !18, line: 232, baseType: !21, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !58, file: !18, line: 232, baseType: !62, size: 32, align: 32)
!62 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!63 = !DISubprogram(name: "__inline_signbitd", scope: !18, file: !18, line: 236, type: !25, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !64)
!64 = !{!65, !66}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !63, file: !18, line: 236, type: !27)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !63, file: !18, line: 237, type: !67)
!67 = !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !18, line: 237, size: 64, align: 64, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !67, file: !18, line: 237, baseType: !27, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !67, file: !18, line: 237, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!72 = !DISubprogram(name: "__inline_signbitl", scope: !18, file: !18, line: 242, type: !31, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !73)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !72, file: !18, line: 242, type: !33)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !72, file: !18, line: 246, type: !76)
!76 = !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !18, line: 243, size: 128, align: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !76, file: !18, line: 244, baseType: !33, size: 128, align: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !76, file: !18, line: 245, baseType: !80, size: 128, align: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !18, line: 245, size: 128, align: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !80, file: !18, line: 245, baseType: !71, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !80, file: !18, line: 245, baseType: !84, size: 16, align: 16, offset: 64)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DISubprogram(name: "__inline_isnormalf", scope: !18, file: !18, line: 257, type: !19, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !86)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !85, file: !18, line: 257, type: !21)
!88 = !DISubprogram(name: "__inline_isnormald", scope: !18, file: !18, line: 260, type: !25, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !89)
!89 = !{!90}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !88, file: !18, line: 260, type: !27)
!91 = !DISubprogram(name: "__inline_isnormall", scope: !18, file: !18, line: 263, type: !31, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !92)
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !91, file: !18, line: 263, type: !33)
!94 = !DISubprogram(name: "__sincosf", scope: !18, file: !18, line: 642, type: !95, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !21, !97, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!98 = !{!99, !100, !101, !102}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !94, file: !18, line: 642, type: !21)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !94, file: !18, line: 642, type: !97)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !94, file: !18, line: 642, type: !97)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !94, file: !18, line: 643, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !18, line: 634, size: 64, align: 32, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !104, file: !18, line: 634, baseType: !21, size: 32, align: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !104, file: !18, line: 634, baseType: !21, size: 32, align: 32, offset: 32)
!108 = !DISubprogram(name: "__sincos", scope: !18, file: !18, line: 647, type: !109, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !112)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !27, !111, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!112 = !{!113, !114, !115, !116}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !108, file: !18, line: 647, type: !27)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !108, file: !18, line: 647, type: !111)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !108, file: !18, line: 647, type: !111)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !108, file: !18, line: 648, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !18, line: 635, size: 128, align: 64, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !118, file: !18, line: 635, baseType: !27, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !118, file: !18, line: 635, baseType: !27, size: 64, align: 64, offset: 64)
!122 = !DISubprogram(name: "__sincospif", scope: !18, file: !18, line: 652, type: !95, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !122, file: !18, line: 652, type: !21)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !122, file: !18, line: 652, type: !97)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !122, file: !18, line: 652, type: !97)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !122, file: !18, line: 653, type: !103)
!128 = !DISubprogram(name: "__sincospi", scope: !18, file: !18, line: 657, type: !109, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !128, file: !18, line: 657, type: !27)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !128, file: !18, line: 657, type: !111)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !128, file: !18, line: 657, type: !111)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !128, file: !18, line: 658, type: !117)
!134 = !DISubprogram(name: "calc_mu_and_q", scope: !1, file: !1, line: 43, type: !135, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_nsborder*, [3 x float]*, float*, float*, float*)* @calc_mu_and_q, variables: !164)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137, !156, !163, !163, !163}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nsborder", file: !139, line: 59, baseType: !140)
!139 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!140 = !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 36, size: 32992, align: 32, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !153, !154, !155}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !140, file: !139, line: 37, baseType: !4, size: 32, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !140, file: !139, line: 38, baseType: !4, size: 32, align: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cgtotal", scope: !140, file: !139, line: 39, baseType: !4, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !140, file: !139, line: 40, baseType: !4, size: 32, align: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nstDlb", scope: !140, file: !139, line: 41, baseType: !4, size: 32, align: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !140, file: !139, line: 43, baseType: !4, size: 32, align: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !140, file: !139, line: 43, baseType: !4, size: 32, align: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "homenr", scope: !140, file: !139, line: 50, baseType: !150, size: 8192, align: 32, offset: 224)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, align: 32, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !140, file: !139, line: 51, baseType: !150, size: 8192, align: 32, offset: 8416)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cgload", scope: !140, file: !139, line: 52, baseType: !150, size: 8192, align: 32, offset: 16608)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "workload", scope: !140, file: !139, line: 55, baseType: !150, size: 8192, align: 32, offset: 24800)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !158, line: 101, baseType: !159)
!158 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 96, align: 32, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !158, line: 87, baseType: !21)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176}
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 1, scope: !134, file: !1, line: 43, type: !137)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !134, file: !1, line: 43, type: !156)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "q", arg: 3, scope: !134, file: !1, line: 43, type: !163)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mu", arg: 4, scope: !134, file: !1, line: 43, type: !163)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "qsum", arg: 5, scope: !134, file: !1, line: 43, type: !163)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !134, file: !1, line: 45, type: !4)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !134, file: !1, line: 45, type: !4)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !134, file: !1, line: 45, type: !4)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !134, file: !1, line: 45, type: !4)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpmu", scope: !134, file: !1, line: 47, type: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, align: 64, elements: !161)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpq", scope: !134, file: !1, line: 48, type: !27)
!177 = !DISubprogram(name: "read_mu", scope: !1, file: !1, line: 69, type: !178, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, float*, float*)* @read_mu, variables: !240)
!178 = !DISubroutineType(types: !179)
!179 = !{!4, !180, !163, !163}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !182, line: 153, baseType: !183)
!182 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !182, line: 122, size: 1216, align: 64, elements: !184)
!184 = !{!185, !188, !189, !190, !192, !193, !198, !199, !201, !205, !211, !220, !226, !227, !230, !231, !233, !237, !238, !239}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !183, file: !182, line: 123, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !183, file: !182, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !183, file: !182, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !183, file: !182, line: 126, baseType: !191, size: 16, align: 16, offset: 128)
!191 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !183, file: !182, line: 127, baseType: !191, size: 16, align: 16, offset: 144)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !183, file: !182, line: 128, baseType: !194, size: 128, align: 64, offset: 192)
!194 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !182, line: 88, size: 128, align: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !194, file: !182, line: 89, baseType: !186, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !194, file: !182, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !183, file: !182, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !183, file: !182, line: 132, baseType: !200, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !183, file: !182, line: 133, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!4, !200}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !183, file: !182, line: 134, baseType: !206, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!4, !200, !209, !4}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !183, file: !182, line: 135, baseType: !212, size: 64, align: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !200, !215, !4}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !182, line: 77, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !217, line: 71, baseType: !218)
!217 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 46, baseType: !219)
!219 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !183, file: !182, line: 136, baseType: !221, size: 64, align: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!4, !200, !224, !4}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !183, file: !182, line: 139, baseType: !194, size: 128, align: 64, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !183, file: !182, line: 140, baseType: !228, size: 64, align: 64, offset: 832)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !182, line: 94, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !183, file: !182, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !183, file: !182, line: 144, baseType: !232, size: 24, align: 8, offset: 928)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 24, align: 8, elements: !161)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !183, file: !182, line: 145, baseType: !234, size: 8, align: 8, offset: 952)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 8, align: 8, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 1)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !183, file: !182, line: 148, baseType: !194, size: 128, align: 64, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !183, file: !182, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !183, file: !182, line: 152, baseType: !215, size: 64, align: 64, offset: 1152)
!240 = !{!241, !242, !243, !244}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !177, file: !1, line: 69, type: !180)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mu", arg: 2, scope: !177, file: !1, line: 69, type: !163)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vol", arg: 3, scope: !177, file: !1, line: 69, type: !163)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mmm", scope: !177, file: !1, line: 72, type: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, align: 32, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 4)
!248 = !DISubprogram(name: "copy_rvec", scope: !249, file: !249, line: 270, type: !250, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !254)
!249 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!250 = !DISubroutineType(types: !251)
!251 = !{null, !252, !163}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!254 = !{!255, !256}
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !248, file: !249, line: 270, type: !252)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !248, file: !249, line: 270, type: !163)
!257 = !{i32 2, !"Dwarf Version", i32 2}
!258 = !{i32 2, !"Debug Info Version", i32 700000003}
!259 = !{i32 1, !"PIC Level", i32 2}
!260 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!261 = !DIExpression()
!262 = !DILocation(line: 114, column: 15, scope: !11)
!263 = !DILocation(line: 116, column: 20, scope: !11)
!264 = !DILocation(line: 116, column: 12, scope: !11)
!265 = !DILocation(line: 116, column: 57, scope: !11)
!266 = !DILocation(line: 116, column: 45, scope: !11)
!267 = !DILocation(line: 116, column: 5, scope: !11)
!268 = !DILocation(line: 204, column: 53, scope: !17)
!269 = !DILocation(line: 205, column: 16, scope: !17)
!270 = !DILocation(line: 205, column: 23, scope: !17)
!271 = !DILocation(line: 205, column: 26, scope: !17)
!272 = !DILocation(line: 205, column: 47, scope: !17)
!273 = !DILocation(line: 205, column: 5, scope: !17)
!274 = !DILocation(line: 207, column: 54, scope: !24)
!275 = !DILocation(line: 208, column: 16, scope: !24)
!276 = !DILocation(line: 208, column: 23, scope: !24)
!277 = !DILocation(line: 208, column: 26, scope: !24)
!278 = !DILocation(line: 208, column: 46, scope: !24)
!279 = !DILocation(line: 208, column: 5, scope: !24)
!280 = !DILocation(line: 210, column: 59, scope: !30)
!281 = !DILocation(line: 211, column: 16, scope: !30)
!282 = !DILocation(line: 211, column: 23, scope: !30)
!283 = !DILocation(line: 211, column: 26, scope: !30)
!284 = !DILocation(line: 211, column: 47, scope: !30)
!285 = !DILocation(line: 211, column: 5, scope: !30)
!286 = !DILocation(line: 213, column: 50, scope: !36)
!287 = !DILocation(line: 214, column: 12, scope: !36)
!288 = !DILocation(line: 214, column: 33, scope: !36)
!289 = !DILocation(line: 214, column: 5, scope: !36)
!290 = !DILocation(line: 216, column: 51, scope: !39)
!291 = !DILocation(line: 217, column: 12, scope: !39)
!292 = !DILocation(line: 217, column: 32, scope: !39)
!293 = !DILocation(line: 217, column: 5, scope: !39)
!294 = !DILocation(line: 219, column: 56, scope: !42)
!295 = !DILocation(line: 220, column: 12, scope: !42)
!296 = !DILocation(line: 220, column: 33, scope: !42)
!297 = !DILocation(line: 220, column: 5, scope: !42)
!298 = !DILocation(line: 222, column: 50, scope: !45)
!299 = !DILocation(line: 223, column: 16, scope: !45)
!300 = !DILocation(line: 223, column: 5, scope: !45)
!301 = !DILocation(line: 225, column: 51, scope: !48)
!302 = !DILocation(line: 226, column: 16, scope: !48)
!303 = !DILocation(line: 226, column: 5, scope: !48)
!304 = !DILocation(line: 228, column: 56, scope: !51)
!305 = !DILocation(line: 229, column: 16, scope: !51)
!306 = !DILocation(line: 229, column: 5, scope: !51)
!307 = !DILocation(line: 231, column: 52, scope: !54)
!308 = !DILocation(line: 232, column: 44, scope: !54)
!309 = !DILocation(line: 233, column: 13, scope: !54)
!310 = !DILocation(line: 234, column: 26, scope: !54)
!311 = !DILocation(line: 234, column: 5, scope: !54)
!312 = !DILocation(line: 236, column: 53, scope: !63)
!313 = !DILocation(line: 237, column: 51, scope: !63)
!314 = !DILocation(line: 238, column: 13, scope: !63)
!315 = !DILocation(line: 239, column: 26, scope: !63)
!316 = !DILocation(line: 239, column: 12, scope: !63)
!317 = !DILocation(line: 239, column: 5, scope: !63)
!318 = !DILocation(line: 242, column: 58, scope: !72)
!319 = !DILocation(line: 246, column: 7, scope: !72)
!320 = !DILocation(line: 248, column: 26, scope: !72)
!321 = !DILocation(line: 248, column: 33, scope: !72)
!322 = !DILocation(line: 248, column: 5, scope: !72)
!323 = !DILocation(line: 257, column: 53, scope: !85)
!324 = !DILocation(line: 204, column: 53, scope: !17, inlinedAt: !325)
!325 = distinct !DILocation(line: 258, column: 12, scope: !85)
!326 = !DILocation(line: 205, column: 16, scope: !17, inlinedAt: !325)
!327 = !DILocation(line: 205, column: 47, scope: !17, inlinedAt: !325)
!328 = !DILocation(line: 205, column: 23, scope: !17, inlinedAt: !325)
!329 = !DILocation(line: 258, column: 60, scope: !85)
!330 = !DILocation(line: 258, column: 36, scope: !85)
!331 = !DILocation(line: 258, column: 5, scope: !85)
!332 = !DILocation(line: 260, column: 54, scope: !88)
!333 = !DILocation(line: 207, column: 54, scope: !24, inlinedAt: !334)
!334 = distinct !DILocation(line: 261, column: 12, scope: !88)
!335 = !DILocation(line: 208, column: 16, scope: !24, inlinedAt: !334)
!336 = !DILocation(line: 208, column: 46, scope: !24, inlinedAt: !334)
!337 = !DILocation(line: 208, column: 23, scope: !24, inlinedAt: !334)
!338 = !DILocation(line: 261, column: 59, scope: !88)
!339 = !DILocation(line: 261, column: 36, scope: !88)
!340 = !DILocation(line: 261, column: 5, scope: !88)
!341 = !DILocation(line: 263, column: 59, scope: !91)
!342 = !DILocation(line: 210, column: 59, scope: !30, inlinedAt: !343)
!343 = distinct !DILocation(line: 264, column: 12, scope: !91)
!344 = !DILocation(line: 211, column: 16, scope: !30, inlinedAt: !343)
!345 = !DILocation(line: 211, column: 47, scope: !30, inlinedAt: !343)
!346 = !DILocation(line: 211, column: 23, scope: !30, inlinedAt: !343)
!347 = !DILocation(line: 264, column: 60, scope: !91)
!348 = !DILocation(line: 264, column: 36, scope: !91)
!349 = !DILocation(line: 264, column: 5, scope: !91)
!350 = !DILocation(line: 642, column: 45, scope: !94)
!351 = !DILocation(line: 642, column: 57, scope: !94)
!352 = !DILocation(line: 642, column: 72, scope: !94)
!353 = !DILocation(line: 643, column: 27, scope: !94)
!354 = !DILocation(line: 643, column: 37, scope: !94)
!355 = !DILocation(line: 644, column: 23, scope: !94)
!356 = !DILocation(line: 644, column: 13, scope: !94)
!357 = !{!358, !358, i64 0}
!358 = !{!"float", !359, i64 0}
!359 = !{!"omnipotent char", !360, i64 0}
!360 = !{!"Simple C/C++ TBAA"}
!361 = !DILocation(line: 644, column: 51, scope: !94)
!362 = !DILocation(line: 644, column: 41, scope: !94)
!363 = !DILocation(line: 645, column: 1, scope: !94)
!364 = !DILocation(line: 647, column: 45, scope: !108)
!365 = !DILocation(line: 647, column: 58, scope: !108)
!366 = !DILocation(line: 647, column: 74, scope: !108)
!367 = !DILocation(line: 648, column: 28, scope: !108)
!368 = !DILocation(line: 648, column: 38, scope: !108)
!369 = !DIExpression(DW_OP_bit_piece, 0, 64)
!370 = !DIExpression(DW_OP_bit_piece, 64, 64)
!371 = !DILocation(line: 649, column: 13, scope: !108)
!372 = !{!373, !373, i64 0}
!373 = !{!"double", !359, i64 0}
!374 = !DILocation(line: 649, column: 41, scope: !108)
!375 = !DILocation(line: 650, column: 1, scope: !108)
!376 = !DILocation(line: 652, column: 47, scope: !122)
!377 = !DILocation(line: 652, column: 59, scope: !122)
!378 = !DILocation(line: 652, column: 74, scope: !122)
!379 = !DILocation(line: 653, column: 27, scope: !122)
!380 = !DILocation(line: 653, column: 37, scope: !122)
!381 = !DILocation(line: 654, column: 23, scope: !122)
!382 = !DILocation(line: 654, column: 13, scope: !122)
!383 = !DILocation(line: 654, column: 51, scope: !122)
!384 = !DILocation(line: 654, column: 41, scope: !122)
!385 = !DILocation(line: 655, column: 1, scope: !122)
!386 = !DILocation(line: 657, column: 47, scope: !128)
!387 = !DILocation(line: 657, column: 60, scope: !128)
!388 = !DILocation(line: 657, column: 76, scope: !128)
!389 = !DILocation(line: 658, column: 28, scope: !128)
!390 = !DILocation(line: 658, column: 38, scope: !128)
!391 = !DILocation(line: 659, column: 13, scope: !128)
!392 = !DILocation(line: 659, column: 41, scope: !128)
!393 = !DILocation(line: 660, column: 1, scope: !128)
!394 = !DILocation(line: 43, column: 32, scope: !134)
!395 = !DILocation(line: 43, column: 41, scope: !134)
!396 = !DILocation(line: 43, column: 50, scope: !134)
!397 = !DILocation(line: 43, column: 59, scope: !134)
!398 = !DILocation(line: 43, column: 68, scope: !134)
!399 = !DILocation(line: 47, column: 10, scope: !134)
!400 = !DILocation(line: 50, column: 11, scope: !134)
!401 = !{!402, !403, i64 0}
!402 = !{!"", !403, i64 0, !403, i64 4, !403, i64 8, !403, i64 12, !403, i64 16, !403, i64 20, !403, i64 24, !359, i64 28, !359, i64 1052, !359, i64 2076, !359, i64 3100}
!403 = !{!"int", !359, i64 0}
!404 = !{!403, !403, i64 0}
!405 = !DILocation(line: 45, column: 9, scope: !134)
!406 = !DILocation(line: 51, column: 19, scope: !134)
!407 = !DILocation(line: 45, column: 15, scope: !134)
!408 = !DILocation(line: 48, column: 10, scope: !134)
!409 = !DILocation(line: 45, column: 19, scope: !134)
!410 = !DILocation(line: 55, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 54, column: 3)
!412 = distinct !DILexicalBlock(scope: !134, file: !1, line: 54, column: 3)
!413 = !DILocation(line: 57, column: 18, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 57, column: 3)
!415 = distinct !DILexicalBlock(scope: !134, file: !1, line: 57, column: 3)
!416 = !DILocation(line: 57, column: 3, scope: !415)
!417 = !DILocation(line: 51, column: 17, scope: !134)
!418 = !DILocation(line: 59, column: 19, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 58, column: 28)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 58, column: 5)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 58, column: 5)
!422 = distinct !DILexicalBlock(scope: !414, file: !1, line: 57, column: 30)
!423 = !DILocation(line: 58, column: 5, scope: !421)
!424 = !DILocation(line: 63, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !134, file: !1, line: 63, column: 3)
!426 = !DILocation(line: 59, column: 24, scope: !419)
!427 = !DILocation(line: 59, column: 23, scope: !419)
!428 = !DILocation(line: 59, column: 7, scope: !419)
!429 = !DILocation(line: 59, column: 16, scope: !419)
!430 = !DILocation(line: 61, column: 11, scope: !422)
!431 = !DILocation(line: 61, column: 9, scope: !422)
!432 = !DILocation(line: 64, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !425, file: !1, line: 63, column: 3)
!434 = !DILocation(line: 64, column: 22, scope: !433)
!435 = !DILocation(line: 64, column: 5, scope: !433)
!436 = !DILocation(line: 64, column: 11, scope: !433)
!437 = !DILocation(line: 66, column: 8, scope: !134)
!438 = !DILocation(line: 67, column: 1, scope: !134)
!439 = !DILocation(line: 69, column: 20, scope: !177)
!440 = !DILocation(line: 69, column: 28, scope: !177)
!441 = !DILocation(line: 69, column: 37, scope: !177)
!442 = !DILocation(line: 72, column: 8, scope: !177)
!443 = !DILocation(line: 74, column: 13, scope: !444)
!444 = distinct !DILexicalBlock(scope: !177, file: !1, line: 74, column: 7)
!445 = !DILocation(line: 74, column: 7, scope: !444)
!446 = !DILocation(line: 74, column: 47, scope: !444)
!447 = !DILocation(line: 74, column: 7, scope: !177)
!448 = !DILocation(line: 270, column: 48, scope: !248, inlinedAt: !449)
!449 = distinct !DILocation(line: 77, column: 3, scope: !177)
!450 = !DILocation(line: 272, column: 9, scope: !248, inlinedAt: !449)
!451 = !DILocation(line: 272, column: 8, scope: !248, inlinedAt: !449)
!452 = !DILocation(line: 273, column: 3, scope: !248, inlinedAt: !449)
!453 = !DILocation(line: 273, column: 8, scope: !248, inlinedAt: !449)
!454 = !DILocation(line: 274, column: 9, scope: !248, inlinedAt: !449)
!455 = !DILocation(line: 274, column: 3, scope: !248, inlinedAt: !449)
!456 = !DILocation(line: 274, column: 8, scope: !248, inlinedAt: !449)
!457 = !DILocation(line: 78, column: 8, scope: !177)
!458 = !DILocation(line: 80, column: 3, scope: !177)
!459 = !DILocation(line: 81, column: 1, scope: !177)
