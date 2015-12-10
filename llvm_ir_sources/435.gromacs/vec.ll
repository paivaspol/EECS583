; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.c'
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

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !219), !dbg !220
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !219), !dbg !221
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !222
  %2 = load i32* %1, align 4, !dbg !224, !tbaa !225
  %3 = add nsw i32 %2, -1, !dbg !224
  store i32 %3, i32* %1, align 4, !dbg !224, !tbaa !225
  %4 = icmp sgt i32 %2, 0, !dbg !234
  br i1 %4, label %._crit_edge, label %5, !dbg !235

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !236
  br label %10, !dbg !235

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !237
  %7 = load i32* %6, align 4, !dbg !237, !tbaa !238
  %8 = icmp sle i32 %2, %7, !dbg !239
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !240
  %or.cond = or i1 %9, %8, !dbg !241
  br i1 %or.cond, label %15, label %10, !dbg !241

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !236
  %11 = trunc i32 %_c to i8, !dbg !242
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !243
  %13 = load i8** %12, align 8, !dbg !244, !tbaa !245
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !244
  store i8* %14, i8** %12, align 8, !dbg !244, !tbaa !245
  store i8 %11, i8* %13, align 1, !dbg !246, !tbaa !247
  br label %17, !dbg !248

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !249
  br label %17, !dbg !250

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !251
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !219), !dbg !252
  %1 = icmp sgt i32 %__signo, 32, !dbg !253
  br i1 %1, label %5, label %2, !dbg !254

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !255
  %4 = shl i32 1, %3, !dbg !256
  br label %5, !dbg !254

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !254
  ret i32 %6, !dbg !257
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !219), !dbg !258
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !259
  br i1 %1, label %2, label %5, !dbg !260

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !261
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !262
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !260
  ret i32 %7, !dbg !263
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !219), !dbg !264
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !265
  br i1 %1, label %2, label %5, !dbg !266

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !267
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !268
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !266
  ret i32 %7, !dbg !269
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !219), !dbg !270
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !271
  br i1 %1, label %2, label %5, !dbg !272

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !273
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !274
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !272
  ret i32 %7, !dbg !275
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !102, metadata !219), !dbg !276
  %1 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !277
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !278
  %3 = zext i1 %2 to i32, !dbg !278
  ret i32 %3, !dbg !279
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !105, metadata !219), !dbg !280
  %1 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !281
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !282
  %3 = zext i1 %2 to i32, !dbg !282
  ret i32 %3, !dbg !283
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !108, metadata !219), !dbg !284
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !285
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !286
  %3 = zext i1 %2 to i32, !dbg !286
  ret i32 %3, !dbg !287
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !111, metadata !219), !dbg !288
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !289
  %2 = zext i1 %1 to i32, !dbg !289
  ret i32 %2, !dbg !290
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !114, metadata !219), !dbg !291
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !292
  %2 = zext i1 %1 to i32, !dbg !292
  ret i32 %2, !dbg !293
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !117, metadata !219), !dbg !294
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !295
  %2 = zext i1 %1 to i32, !dbg !295
  ret i32 %2, !dbg !296
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !120, metadata !219), !dbg !297
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !121, metadata !219), !dbg !298
  %1 = bitcast float %__x to i32, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !121, metadata !219), !dbg !298
  %2 = lshr i32 %1, 31, !dbg !300
  ret i32 %2, !dbg !301
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !129, metadata !219), !dbg !302
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !130, metadata !219), !dbg !303
  %1 = bitcast double %__x to i64, !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !130, metadata !219), !dbg !303
  %2 = lshr i64 %1, 63, !dbg !305
  %3 = trunc i64 %2 to i32, !dbg !306
  ret i32 %3, !dbg !307
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !138, metadata !219), !dbg !308
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !139, metadata !219), !dbg !309
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !139, metadata !219), !dbg !309
  %1 = bitcast x86_fp80 %__x to i80, !dbg !310
  %2 = lshr i80 %1, 79, !dbg !310
  %3 = trunc i80 %2 to i32, !dbg !311
  ret i32 %3, !dbg !312
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !151, metadata !219), !dbg !313
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !219) #8, !dbg !314
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !316
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !317
  %or.cond = and i1 %1, %3, !dbg !318
  br i1 %or.cond, label %4, label %.critedge, !dbg !318

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !319
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !320
  ret i32 %7, !dbg !321
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !154, metadata !219), !dbg !322
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !219) #8, !dbg !323
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !325
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !326
  %or.cond = and i1 %1, %3, !dbg !327
  br i1 %or.cond, label %4, label %.critedge, !dbg !327

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !328
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !329
  ret i32 %7, !dbg !330
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !157, metadata !219), !dbg !331
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !219) #8, !dbg !332
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !334
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !335
  %or.cond = and i1 %1, %3, !dbg !336
  br i1 %or.cond, label %4, label %.critedge, !dbg !336

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !337
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !338
  ret i32 %7, !dbg !339
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !163, metadata !219), !dbg !340
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !164, metadata !219), !dbg !341
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !165, metadata !219), !dbg !342
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !166, metadata !219), !dbg !343
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6, !dbg !344
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !166, metadata !219), !dbg !343
  %2 = extractelement <2 x float> %1, i32 0, !dbg !345
  store float %2, float* %__sinp, align 4, !dbg !346, !tbaa !347
  %3 = extractelement <2 x float> %1, i32 1, !dbg !349
  store float %3, float* %__cosp, align 4, !dbg !350, !tbaa !347
  ret void, !dbg !351
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !177, metadata !219), !dbg !352
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !178, metadata !219), !dbg !353
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !179, metadata !219), !dbg !354
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !180, metadata !219), !dbg !355
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6, !dbg !356
  %2 = extractvalue { double, double } %1, 0, !dbg !356
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !357), !dbg !355
  %3 = extractvalue { double, double } %1, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !180, metadata !358), !dbg !355
  store double %2, double* %__sinp, align 8, !dbg !359, !tbaa !360
  store double %3, double* %__cosp, align 8, !dbg !362, !tbaa !360
  ret void, !dbg !363
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !188, metadata !219), !dbg !364
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !189, metadata !219), !dbg !365
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !190, metadata !219), !dbg !366
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !191, metadata !219), !dbg !367
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6, !dbg !368
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !191, metadata !219), !dbg !367
  %2 = extractelement <2 x float> %1, i32 0, !dbg !369
  store float %2, float* %__sinp, align 4, !dbg !370, !tbaa !347
  %3 = extractelement <2 x float> %1, i32 1, !dbg !371
  store float %3, float* %__cosp, align 4, !dbg !372, !tbaa !347
  ret void, !dbg !373
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !194, metadata !219), !dbg !374
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !195, metadata !219), !dbg !375
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !196, metadata !219), !dbg !376
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !197, metadata !219), !dbg !377
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6, !dbg !378
  %2 = extractvalue { double, double } %1, 0, !dbg !378
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !197, metadata !357), !dbg !377
  %3 = extractvalue { double, double } %1, 1, !dbg !378
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !197, metadata !358), !dbg !377
  store double %2, double* %__sinp, align 8, !dbg !379, !tbaa !360
  store double %3, double* %__cosp, align 8, !dbg !380, !tbaa !360
  ret void, !dbg !381
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @vecinvsqrt(float* nocapture readonly %in, float* nocapture %out, i32 %n) #4 {
  tail call void @llvm.dbg.value(metadata float* %in, i64 0, metadata !205, metadata !219), !dbg !382
  tail call void @llvm.dbg.value(metadata float* %out, i64 0, metadata !206, metadata !219), !dbg !383
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !207, metadata !219), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !208, metadata !219), !dbg !385
  %1 = icmp sgt i32 %n, 0, !dbg !386
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !389

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !389
  br label %3, !dbg !389

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %in, i64 %indvars.iv, !dbg !390
  %5 = load float* %4, align 4, !dbg !390, !tbaa !347
  %6 = fpext float %5 to double, !dbg !390
  %7 = tail call double @sqrt(double %6) #9, !dbg !391
  %8 = fdiv double 1.000000e+00, %7, !dbg !392
  %9 = fptrunc double %8 to float, !dbg !393
  %10 = getelementptr inbounds float* %out, i64 %indvars.iv, !dbg !394
  store float %9, float* %10, align 4, !dbg !395, !tbaa !347
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !389
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !389
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !389
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !389

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !396
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @vecrecip(float* nocapture readonly %in, float* nocapture %out, i32 %n) #4 {
  tail call void @llvm.dbg.value(metadata float* %in, i64 0, metadata !211, metadata !219), !dbg !397
  tail call void @llvm.dbg.value(metadata float* %out, i64 0, metadata !212, metadata !219), !dbg !398
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !213, metadata !219), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !219), !dbg !400
  %1 = icmp sgt i32 %n, 0, !dbg !401
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !404

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !404
  br label %3, !dbg !404

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %in, i64 %indvars.iv, !dbg !405
  %5 = load float* %4, align 4, !dbg !405, !tbaa !347
  %6 = fdiv float 1.000000e+00, %5, !dbg !406
  %7 = getelementptr inbounds float* %out, i64 %indvars.iv, !dbg !407
  store float %6, float* %7, align 4, !dbg !408, !tbaa !347
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !404
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !404
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !404
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !404

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !409
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!215, !216, !217}
!llvm.ident = !{!218}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !75, !81, !88, !94, !100, !103, !106, !109, !112, !115, !118, !127, !136, !149, !152, !155, !158, !172, !186, !192, !198, !209}
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
!198 = !DISubprogram(name: "vecinvsqrt", scope: !1, file: !1, line: 57, type: !199, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, float*, i32)* @vecinvsqrt, variables: !204)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !201, !5}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !203, line: 87, baseType: !85)
!203 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!204 = !{!205, !206, !207, !208}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !198, file: !1, line: 57, type: !201)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 2, scope: !198, file: !1, line: 57, type: !201)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !198, file: !1, line: 57, type: !5)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !198, file: !1, line: 85, type: !5)
!209 = !DISubprogram(name: "vecrecip", scope: !1, file: !1, line: 140, type: !199, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, float*, i32)* @vecrecip, variables: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !209, file: !1, line: 140, type: !201)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 2, scope: !209, file: !1, line: 140, type: !201)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !209, file: !1, line: 140, type: !5)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !209, file: !1, line: 163, type: !5)
!215 = !{i32 2, !"Dwarf Version", i32 2}
!216 = !{i32 2, !"Debug Info Version", i32 700000003}
!217 = !{i32 1, !"PIC Level", i32 2}
!218 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!219 = !DIExpression()
!220 = !DILocation(line: 348, column: 40, scope: !7)
!221 = !DILocation(line: 348, column: 50, scope: !7)
!222 = !DILocation(line: 349, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!224 = !DILocation(line: 349, column: 6, scope: !223)
!225 = !{!226, !230, i64 12}
!226 = !{!"__sFILE", !227, i64 0, !230, i64 8, !230, i64 12, !231, i64 16, !231, i64 18, !232, i64 24, !230, i64 40, !227, i64 48, !227, i64 56, !227, i64 64, !227, i64 72, !227, i64 80, !232, i64 88, !227, i64 104, !230, i64 112, !228, i64 116, !228, i64 119, !232, i64 120, !230, i64 136, !233, i64 144}
!227 = !{!"any pointer", !228, i64 0}
!228 = !{!"omnipotent char", !229, i64 0}
!229 = !{!"Simple C/C++ TBAA"}
!230 = !{!"int", !228, i64 0}
!231 = !{!"short", !228, i64 0}
!232 = !{!"__sbuf", !227, i64 0, !230, i64 8}
!233 = !{!"long long", !228, i64 0}
!234 = !DILocation(line: 349, column: 15, scope: !223)
!235 = !DILocation(line: 349, column: 20, scope: !223)
!236 = !DILocation(line: 350, column: 10, scope: !223)
!237 = !DILocation(line: 349, column: 38, scope: !223)
!238 = !{!226, !230, i64 40}
!239 = !DILocation(line: 349, column: 31, scope: !223)
!240 = !DILocation(line: 349, column: 59, scope: !223)
!241 = !DILocation(line: 349, column: 47, scope: !223)
!242 = !DILocation(line: 350, column: 23, scope: !223)
!243 = !DILocation(line: 350, column: 16, scope: !223)
!244 = !DILocation(line: 350, column: 18, scope: !223)
!245 = !{!226, !227, i64 0}
!246 = !DILocation(line: 350, column: 21, scope: !223)
!247 = !{!228, !228, i64 0}
!248 = !DILocation(line: 350, column: 3, scope: !223)
!249 = !DILocation(line: 352, column: 11, scope: !223)
!250 = !DILocation(line: 352, column: 3, scope: !223)
!251 = !DILocation(line: 353, column: 1, scope: !7)
!252 = !DILocation(line: 114, column: 15, scope: !75)
!253 = !DILocation(line: 116, column: 20, scope: !75)
!254 = !DILocation(line: 116, column: 12, scope: !75)
!255 = !DILocation(line: 116, column: 57, scope: !75)
!256 = !DILocation(line: 116, column: 45, scope: !75)
!257 = !DILocation(line: 116, column: 5, scope: !75)
!258 = !DILocation(line: 204, column: 53, scope: !81)
!259 = !DILocation(line: 205, column: 16, scope: !81)
!260 = !DILocation(line: 205, column: 23, scope: !81)
!261 = !DILocation(line: 205, column: 26, scope: !81)
!262 = !DILocation(line: 205, column: 47, scope: !81)
!263 = !DILocation(line: 205, column: 5, scope: !81)
!264 = !DILocation(line: 207, column: 54, scope: !88)
!265 = !DILocation(line: 208, column: 16, scope: !88)
!266 = !DILocation(line: 208, column: 23, scope: !88)
!267 = !DILocation(line: 208, column: 26, scope: !88)
!268 = !DILocation(line: 208, column: 46, scope: !88)
!269 = !DILocation(line: 208, column: 5, scope: !88)
!270 = !DILocation(line: 210, column: 59, scope: !94)
!271 = !DILocation(line: 211, column: 16, scope: !94)
!272 = !DILocation(line: 211, column: 23, scope: !94)
!273 = !DILocation(line: 211, column: 26, scope: !94)
!274 = !DILocation(line: 211, column: 47, scope: !94)
!275 = !DILocation(line: 211, column: 5, scope: !94)
!276 = !DILocation(line: 213, column: 50, scope: !100)
!277 = !DILocation(line: 214, column: 12, scope: !100)
!278 = !DILocation(line: 214, column: 33, scope: !100)
!279 = !DILocation(line: 214, column: 5, scope: !100)
!280 = !DILocation(line: 216, column: 51, scope: !103)
!281 = !DILocation(line: 217, column: 12, scope: !103)
!282 = !DILocation(line: 217, column: 32, scope: !103)
!283 = !DILocation(line: 217, column: 5, scope: !103)
!284 = !DILocation(line: 219, column: 56, scope: !106)
!285 = !DILocation(line: 220, column: 12, scope: !106)
!286 = !DILocation(line: 220, column: 33, scope: !106)
!287 = !DILocation(line: 220, column: 5, scope: !106)
!288 = !DILocation(line: 222, column: 50, scope: !109)
!289 = !DILocation(line: 223, column: 16, scope: !109)
!290 = !DILocation(line: 223, column: 5, scope: !109)
!291 = !DILocation(line: 225, column: 51, scope: !112)
!292 = !DILocation(line: 226, column: 16, scope: !112)
!293 = !DILocation(line: 226, column: 5, scope: !112)
!294 = !DILocation(line: 228, column: 56, scope: !115)
!295 = !DILocation(line: 229, column: 16, scope: !115)
!296 = !DILocation(line: 229, column: 5, scope: !115)
!297 = !DILocation(line: 231, column: 52, scope: !118)
!298 = !DILocation(line: 232, column: 44, scope: !118)
!299 = !DILocation(line: 233, column: 13, scope: !118)
!300 = !DILocation(line: 234, column: 26, scope: !118)
!301 = !DILocation(line: 234, column: 5, scope: !118)
!302 = !DILocation(line: 236, column: 53, scope: !127)
!303 = !DILocation(line: 237, column: 51, scope: !127)
!304 = !DILocation(line: 238, column: 13, scope: !127)
!305 = !DILocation(line: 239, column: 26, scope: !127)
!306 = !DILocation(line: 239, column: 12, scope: !127)
!307 = !DILocation(line: 239, column: 5, scope: !127)
!308 = !DILocation(line: 242, column: 58, scope: !136)
!309 = !DILocation(line: 246, column: 7, scope: !136)
!310 = !DILocation(line: 248, column: 26, scope: !136)
!311 = !DILocation(line: 248, column: 33, scope: !136)
!312 = !DILocation(line: 248, column: 5, scope: !136)
!313 = !DILocation(line: 257, column: 53, scope: !149)
!314 = !DILocation(line: 204, column: 53, scope: !81, inlinedAt: !315)
!315 = distinct !DILocation(line: 258, column: 12, scope: !149)
!316 = !DILocation(line: 205, column: 16, scope: !81, inlinedAt: !315)
!317 = !DILocation(line: 205, column: 47, scope: !81, inlinedAt: !315)
!318 = !DILocation(line: 205, column: 23, scope: !81, inlinedAt: !315)
!319 = !DILocation(line: 258, column: 60, scope: !149)
!320 = !DILocation(line: 258, column: 36, scope: !149)
!321 = !DILocation(line: 258, column: 5, scope: !149)
!322 = !DILocation(line: 260, column: 54, scope: !152)
!323 = !DILocation(line: 207, column: 54, scope: !88, inlinedAt: !324)
!324 = distinct !DILocation(line: 261, column: 12, scope: !152)
!325 = !DILocation(line: 208, column: 16, scope: !88, inlinedAt: !324)
!326 = !DILocation(line: 208, column: 46, scope: !88, inlinedAt: !324)
!327 = !DILocation(line: 208, column: 23, scope: !88, inlinedAt: !324)
!328 = !DILocation(line: 261, column: 59, scope: !152)
!329 = !DILocation(line: 261, column: 36, scope: !152)
!330 = !DILocation(line: 261, column: 5, scope: !152)
!331 = !DILocation(line: 263, column: 59, scope: !155)
!332 = !DILocation(line: 210, column: 59, scope: !94, inlinedAt: !333)
!333 = distinct !DILocation(line: 264, column: 12, scope: !155)
!334 = !DILocation(line: 211, column: 16, scope: !94, inlinedAt: !333)
!335 = !DILocation(line: 211, column: 47, scope: !94, inlinedAt: !333)
!336 = !DILocation(line: 211, column: 23, scope: !94, inlinedAt: !333)
!337 = !DILocation(line: 264, column: 60, scope: !155)
!338 = !DILocation(line: 264, column: 36, scope: !155)
!339 = !DILocation(line: 264, column: 5, scope: !155)
!340 = !DILocation(line: 642, column: 45, scope: !158)
!341 = !DILocation(line: 642, column: 57, scope: !158)
!342 = !DILocation(line: 642, column: 72, scope: !158)
!343 = !DILocation(line: 643, column: 27, scope: !158)
!344 = !DILocation(line: 643, column: 37, scope: !158)
!345 = !DILocation(line: 644, column: 23, scope: !158)
!346 = !DILocation(line: 644, column: 13, scope: !158)
!347 = !{!348, !348, i64 0}
!348 = !{!"float", !228, i64 0}
!349 = !DILocation(line: 644, column: 51, scope: !158)
!350 = !DILocation(line: 644, column: 41, scope: !158)
!351 = !DILocation(line: 645, column: 1, scope: !158)
!352 = !DILocation(line: 647, column: 45, scope: !172)
!353 = !DILocation(line: 647, column: 58, scope: !172)
!354 = !DILocation(line: 647, column: 74, scope: !172)
!355 = !DILocation(line: 648, column: 28, scope: !172)
!356 = !DILocation(line: 648, column: 38, scope: !172)
!357 = !DIExpression(DW_OP_bit_piece, 0, 64)
!358 = !DIExpression(DW_OP_bit_piece, 64, 64)
!359 = !DILocation(line: 649, column: 13, scope: !172)
!360 = !{!361, !361, i64 0}
!361 = !{!"double", !228, i64 0}
!362 = !DILocation(line: 649, column: 41, scope: !172)
!363 = !DILocation(line: 650, column: 1, scope: !172)
!364 = !DILocation(line: 652, column: 47, scope: !186)
!365 = !DILocation(line: 652, column: 59, scope: !186)
!366 = !DILocation(line: 652, column: 74, scope: !186)
!367 = !DILocation(line: 653, column: 27, scope: !186)
!368 = !DILocation(line: 653, column: 37, scope: !186)
!369 = !DILocation(line: 654, column: 23, scope: !186)
!370 = !DILocation(line: 654, column: 13, scope: !186)
!371 = !DILocation(line: 654, column: 51, scope: !186)
!372 = !DILocation(line: 654, column: 41, scope: !186)
!373 = !DILocation(line: 655, column: 1, scope: !186)
!374 = !DILocation(line: 657, column: 47, scope: !192)
!375 = !DILocation(line: 657, column: 60, scope: !192)
!376 = !DILocation(line: 657, column: 76, scope: !192)
!377 = !DILocation(line: 658, column: 28, scope: !192)
!378 = !DILocation(line: 658, column: 38, scope: !192)
!379 = !DILocation(line: 659, column: 13, scope: !192)
!380 = !DILocation(line: 659, column: 41, scope: !192)
!381 = !DILocation(line: 660, column: 1, scope: !192)
!382 = !DILocation(line: 57, column: 22, scope: !198)
!383 = !DILocation(line: 57, column: 32, scope: !198)
!384 = !DILocation(line: 57, column: 42, scope: !198)
!385 = !DILocation(line: 85, column: 7, scope: !198)
!386 = !DILocation(line: 132, column: 14, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 132, column: 5)
!388 = distinct !DILexicalBlock(scope: !198, file: !1, line: 132, column: 5)
!389 = !DILocation(line: 132, column: 5, scope: !388)
!390 = !DILocation(line: 133, column: 24, scope: !387)
!391 = !DILocation(line: 133, column: 19, scope: !387)
!392 = !DILocation(line: 133, column: 18, scope: !387)
!393 = !DILocation(line: 133, column: 14, scope: !387)
!394 = !DILocation(line: 133, column: 7, scope: !387)
!395 = !DILocation(line: 133, column: 13, scope: !387)
!396 = !DILocation(line: 136, column: 1, scope: !198)
!397 = !DILocation(line: 140, column: 20, scope: !209)
!398 = !DILocation(line: 140, column: 30, scope: !209)
!399 = !DILocation(line: 140, column: 40, scope: !209)
!400 = !DILocation(line: 163, column: 7, scope: !209)
!401 = !DILocation(line: 208, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 208, column: 5)
!403 = distinct !DILexicalBlock(scope: !209, file: !1, line: 208, column: 5)
!404 = !DILocation(line: 208, column: 5, scope: !403)
!405 = !DILocation(line: 209, column: 20, scope: !402)
!406 = !DILocation(line: 209, column: 18, scope: !402)
!407 = !DILocation(line: 209, column: 7, scope: !402)
!408 = !DILocation(line: 209, column: 13, scope: !402)
!409 = !DILocation(line: 212, column: 1, scope: !209)
