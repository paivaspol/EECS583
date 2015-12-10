; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nsb.c'
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
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"CPU=%3d, lastcg=%5d, targetcg=%5d, myshift=%5d\0A\00", align 1
@.str1 = private unnamed_addr constant [35 x i8] c"nsb->shift = %3d, nsb->bshift=%3d\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"nsb->nodeid:     %5d\0A\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"nsb->nnodes:  %5d\0A\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"nsb->cgtotal: %5d\0A\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"nsb->natoms:  %5d\0A\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"nsb->shift:   %5d\0A\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"nsb->bshift:  %5d\0A\00", align 1
@.str9 = private unnamed_addr constant [42 x i8] c"Nodeid   index  homenr  cgload  workload\0A\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"%6d%8d%8d%8d%10d\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !264), !dbg !265
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !264), !dbg !266
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !267
  %2 = load i32* %1, align 4, !dbg !269, !tbaa !270
  %3 = add nsw i32 %2, -1, !dbg !269
  store i32 %3, i32* %1, align 4, !dbg !269, !tbaa !270
  %4 = icmp sgt i32 %2, 0, !dbg !279
  br i1 %4, label %._crit_edge, label %5, !dbg !280

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !281
  br label %10, !dbg !280

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !282
  %7 = load i32* %6, align 4, !dbg !282, !tbaa !283
  %8 = icmp sle i32 %2, %7, !dbg !284
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !285
  %or.cond = or i1 %9, %8, !dbg !286
  br i1 %or.cond, label %15, label %10, !dbg !286

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !281
  %11 = trunc i32 %_c to i8, !dbg !287
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !288
  %13 = load i8** %12, align 8, !dbg !289, !tbaa !290
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !289
  store i8* %14, i8** %12, align 8, !dbg !289, !tbaa !290
  store i8 %11, i8* %13, align 1, !dbg !291, !tbaa !292
  br label %17, !dbg !293

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !294
  br label %17, !dbg !295

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !296
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !264), !dbg !297
  %1 = icmp sgt i32 %__signo, 32, !dbg !298
  br i1 %1, label %5, label %2, !dbg !299

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !300
  %4 = shl i32 1, %3, !dbg !301
  br label %5, !dbg !299

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !299
  ret i32 %6, !dbg !302
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !264), !dbg !303
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !304
  br i1 %1, label %2, label %5, !dbg !305

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !306
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !307
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !305
  ret i32 %7, !dbg !308
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !264), !dbg !309
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !310
  br i1 %1, label %2, label %5, !dbg !311

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !312
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !313
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !311
  ret i32 %7, !dbg !314
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !264), !dbg !315
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !316
  br i1 %1, label %2, label %5, !dbg !317

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !318
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !319
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !317
  ret i32 %7, !dbg !320
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !102, metadata !264), !dbg !321
  %1 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !322
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !323
  %3 = zext i1 %2 to i32, !dbg !323
  ret i32 %3, !dbg !324
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !105, metadata !264), !dbg !325
  %1 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !326
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !327
  %3 = zext i1 %2 to i32, !dbg !327
  ret i32 %3, !dbg !328
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !108, metadata !264), !dbg !329
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !330
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !331
  %3 = zext i1 %2 to i32, !dbg !331
  ret i32 %3, !dbg !332
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !111, metadata !264), !dbg !333
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !334
  %2 = zext i1 %1 to i32, !dbg !334
  ret i32 %2, !dbg !335
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !114, metadata !264), !dbg !336
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !337
  %2 = zext i1 %1 to i32, !dbg !337
  ret i32 %2, !dbg !338
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !117, metadata !264), !dbg !339
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !340
  %2 = zext i1 %1 to i32, !dbg !340
  ret i32 %2, !dbg !341
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !120, metadata !264), !dbg !342
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !121, metadata !264), !dbg !343
  %1 = bitcast float %__x to i32, !dbg !344
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !121, metadata !264), !dbg !343
  %2 = lshr i32 %1, 31, !dbg !345
  ret i32 %2, !dbg !346
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !129, metadata !264), !dbg !347
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !130, metadata !264), !dbg !348
  %1 = bitcast double %__x to i64, !dbg !349
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !130, metadata !264), !dbg !348
  %2 = lshr i64 %1, 63, !dbg !350
  %3 = trunc i64 %2 to i32, !dbg !351
  ret i32 %3, !dbg !352
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !138, metadata !264), !dbg !353
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !139, metadata !264), !dbg !354
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !139, metadata !264), !dbg !354
  %1 = bitcast x86_fp80 %__x to i80, !dbg !355
  %2 = lshr i80 %1, 79, !dbg !355
  %3 = trunc i80 %2 to i32, !dbg !356
  ret i32 %3, !dbg !357
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !151, metadata !264), !dbg !358
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !264) #6, !dbg !359
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !361
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !362
  %or.cond = and i1 %1, %3, !dbg !363
  br i1 %or.cond, label %4, label %.critedge, !dbg !363

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !364
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !365
  ret i32 %7, !dbg !366
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !154, metadata !264), !dbg !367
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !264) #6, !dbg !368
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !370
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !371
  %or.cond = and i1 %1, %3, !dbg !372
  br i1 %or.cond, label %4, label %.critedge, !dbg !372

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !373
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !374
  ret i32 %7, !dbg !375
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !157, metadata !264), !dbg !376
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !264) #6, !dbg !377
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !379
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !380
  %or.cond = and i1 %1, %3, !dbg !381
  br i1 %or.cond, label %4, label %.critedge, !dbg !381

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !382
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !383
  ret i32 %7, !dbg !384
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !163, metadata !264), !dbg !385
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !164, metadata !264), !dbg !386
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !165, metadata !264), !dbg !387
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !166, metadata !264), !dbg !388
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #7, !dbg !389
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !166, metadata !264), !dbg !388
  %2 = extractelement <2 x float> %1, i32 0, !dbg !390
  store float %2, float* %__sinp, align 4, !dbg !391, !tbaa !392
  %3 = extractelement <2 x float> %1, i32 1, !dbg !394
  store float %3, float* %__cosp, align 4, !dbg !395, !tbaa !392
  ret void, !dbg !396
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !177, metadata !264), !dbg !397
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !178, metadata !264), !dbg !398
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !179, metadata !264), !dbg !399
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !180, metadata !264), !dbg !400
  %1 = tail call { double, double } @__sincos_stret(double %__x) #7, !dbg !401
  %2 = extractvalue { double, double } %1, 0, !dbg !401
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !402), !dbg !400
  %3 = extractvalue { double, double } %1, 1, !dbg !401
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !180, metadata !403), !dbg !400
  store double %2, double* %__sinp, align 8, !dbg !404, !tbaa !405
  store double %3, double* %__cosp, align 8, !dbg !407, !tbaa !405
  ret void, !dbg !408
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !188, metadata !264), !dbg !409
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !189, metadata !264), !dbg !410
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !190, metadata !264), !dbg !411
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !191, metadata !264), !dbg !412
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #7, !dbg !413
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !191, metadata !264), !dbg !412
  %2 = extractelement <2 x float> %1, i32 0, !dbg !414
  store float %2, float* %__sinp, align 4, !dbg !415, !tbaa !392
  %3 = extractelement <2 x float> %1, i32 1, !dbg !416
  store float %3, float* %__cosp, align 4, !dbg !417, !tbaa !392
  ret void, !dbg !418
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !194, metadata !264), !dbg !419
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !195, metadata !264), !dbg !420
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !196, metadata !264), !dbg !421
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !197, metadata !264), !dbg !422
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #7, !dbg !423
  %2 = extractvalue { double, double } %1, 0, !dbg !423
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !197, metadata !402), !dbg !422
  %3 = extractvalue { double, double } %1, 1, !dbg !423
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !197, metadata !403), !dbg !422
  store double %2, double* %__sinp, align 8, !dbg !424, !tbaa !405
  store double %3, double* %__cosp, align 8, !dbg !425, !tbaa !405
  ret void, !dbg !426
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_nsbshift(%struct.__sFILE* %fp, %struct.t_nsborder* nocapture %nsb) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !221, metadata !264), !dbg !427
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !222, metadata !264), !dbg !428
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6, !dbg !429
  store i32 0, i32* %1, align 4, !dbg !430, !tbaa !431
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !223, metadata !264), !dbg !433
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !434
  %3 = load i32* %2, align 4, !dbg !434, !tbaa !437
  %4 = icmp sgt i32 %3, 1, !dbg !438
  br i1 %4, label %.lr.ph11, label %._crit_edge12, !dbg !439

.lr.ph11:                                         ; preds = %0, %.critedge
  %5 = phi i32 [ %., %.critedge ], [ 0, %0 ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.critedge ], [ 1, %0 ]
  %6 = add nsw i64 %indvars.iv23, -1, !dbg !440
  %7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %6, !dbg !442
  %8 = load i32* %7, align 4, !dbg !442, !tbaa !443
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !225, metadata !264), !dbg !444
  %9 = trunc i64 %indvars.iv23 to i32, !dbg !445
  br label %10, !dbg !445

; <label>:10                                      ; preds = %13, %.lr.ph11
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %13 ], [ %indvars.iv23, %.lr.ph11 ]
  %nshift.0 = phi i32 [ %14, %13 ], [ %9, %.lr.ph11 ]
  %11 = icmp sgt i64 %indvars.iv21, 0, !dbg !447
  %12 = trunc i64 %indvars.iv21 to i32, !dbg !449
  br i1 %11, label %13, label %.critedge, !dbg !449

; <label>:13                                      ; preds = %10
  %14 = add nsw i32 %nshift.0, -1, !dbg !450
  %15 = sext i32 %14 to i64, !dbg !451
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %15, !dbg !451
  %17 = load i32* %16, align 4, !dbg !451, !tbaa !443
  %18 = icmp sgt i32 %17, %8, !dbg !452
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1, !dbg !453
  br i1 %18, label %10, label %.critedge, !dbg !453

.critedge:                                        ; preds = %10, %13
  %19 = sub nsw i32 %9, %12, !dbg !454
  %20 = icmp sgt i32 %5, %19, !dbg !454
  %. = select i1 %20, i32 %5, i32 %19, !dbg !454
  store i32 %., i32* %1, align 4, !dbg !455, !tbaa !431
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !439
  %21 = sext i32 %3 to i64, !dbg !438
  %22 = icmp slt i64 %indvars.iv.next24, %21, !dbg !438
  br i1 %22, label %.lr.ph11, label %._crit_edge12, !dbg !439

._crit_edge12:                                    ; preds = %.critedge, %0
  %23 = add nsw i32 %3, 1, !dbg !456
  %24 = sdiv i32 %23, 2, !dbg !457
  %25 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5, !dbg !458
  store i32 %24, i32* %25, align 4, !dbg !459, !tbaa !460
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !223, metadata !264), !dbg !433
  %26 = icmp sgt i32 %3, 0, !dbg !461
  br i1 %26, label %.lr.ph8, label %._crit_edge, !dbg !464

.lr.ph8:                                          ; preds = %._crit_edge12
  %27 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2, !dbg !465
  %28 = icmp eq %struct.__sFILE* %fp, null, !dbg !467
  br label %29, !dbg !464

; <label>:29                                      ; preds = %.lr.ph8, %54
  %indvars.iv17 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next18, %54 ]
  %30 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv17, !dbg !469
  %31 = load i32* %30, align 4, !dbg !469, !tbaa !443
  %32 = add nsw i32 %31, -1, !dbg !470
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !224, metadata !264), !dbg !471
  %33 = load i32* %27, align 4, !dbg !465, !tbaa !472
  %34 = tail call i32 @calc_naaj(i32 %32, i32 %33) #7, !dbg !473
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !227, metadata !264), !dbg !474
  %35 = add nsw i32 %34, %32, !dbg !475
  %36 = load i32* %27, align 4, !dbg !476, !tbaa !472
  %37 = srem i32 %35, %36, !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !225, metadata !264), !dbg !444
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !264), !dbg !478
  %38 = load i32* %2, align 4, !dbg !479, !tbaa !437
  %39 = icmp sgt i32 %38, 0, !dbg !482
  br i1 %39, label %.lr.ph, label %.critedge1, !dbg !483

.lr.ph:                                           ; preds = %29, %43
  %indvars.iv = phi i64 [ %indvars.iv.next, %43 ], [ 0, %29 ]
  %40 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv, !dbg !484
  %41 = load i32* %40, align 4, !dbg !484, !tbaa !443
  %42 = icmp sgt i32 %37, %41, !dbg !485
  br i1 %42, label %43, label %..critedge1_crit_edge5, !dbg !486

; <label>:43                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !483
  %44 = sext i32 %38 to i64, !dbg !482
  %45 = icmp slt i64 %indvars.iv.next, %44, !dbg !482
  br i1 %45, label %.lr.ph, label %..critedge1_crit_edge, !dbg !483

..critedge1_crit_edge:                            ; preds = %43
  %46 = trunc i64 %indvars.iv.next to i32, !dbg !483
  br label %.critedge1, !dbg !483

..critedge1_crit_edge5:                           ; preds = %.lr.ph
  %47 = trunc i64 %indvars.iv to i32, !dbg !486
  br label %.critedge1, !dbg !486

.critedge1:                                       ; preds = %..critedge1_crit_edge5, %..critedge1_crit_edge, %29
  %nshift.1.lcssa = phi i32 [ %46, %..critedge1_crit_edge ], [ %47, %..critedge1_crit_edge5 ], [ 0, %29 ]
  %48 = trunc i64 %indvars.iv17 to i32, !dbg !487
  %49 = sub i32 %nshift.1.lcssa, %48, !dbg !487
  %50 = add nsw i32 %49, %38, !dbg !488
  %51 = srem i32 %50, %38, !dbg !489
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !226, metadata !264), !dbg !478
  br i1 %28, label %54, label %52, !dbg !490

; <label>:52                                      ; preds = %.critedge1
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %32, i32 %37, i32 %51) #7, !dbg !491
  %.pre = load i32* %2, align 4, !dbg !492, !tbaa !437
  br label %54, !dbg !491

; <label>:54                                      ; preds = %.critedge1, %52
  %55 = phi i32 [ %38, %.critedge1 ], [ %.pre, %52 ]
  %56 = load i32* %25, align 4, !dbg !493, !tbaa !460
  %57 = icmp sgt i32 %51, %56, !dbg !493
  %.2 = select i1 %57, i32 %51, i32 %56, !dbg !493
  store i32 %.2, i32* %25, align 4, !dbg !494, !tbaa !460
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !464
  %58 = sext i32 %55 to i64, !dbg !461
  %59 = icmp slt i64 %indvars.iv.next18, %58, !dbg !461
  br i1 %59, label %29, label %._crit_edge, !dbg !464

._crit_edge:                                      ; preds = %54, %._crit_edge12
  %60 = phi i32 [ %24, %._crit_edge12 ], [ %.2, %54 ]
  %61 = icmp eq %struct.__sFILE* %fp, null, !dbg !495
  br i1 %61, label %65, label %62, !dbg !497

; <label>:62                                      ; preds = %._crit_edge
  %63 = load i32* %1, align 4, !dbg !498, !tbaa !431
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str1, i64 0, i64 0), i32 %60, i32 %63) #7, !dbg !499
  br label %65, !dbg !499

; <label>:65                                      ; preds = %._crit_edge, %62
  ret void, !dbg !500
}

; Function Attrs: optsize
declare i32 @calc_naaj(i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_nsb(%struct.__sFILE* %fp, %struct.t_block* nocapture readonly %cgs, i32 %nnodes, %struct.t_nsborder* nocapture %nsb, i32 %nstDlb) #4 {
overflow.checked:
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !245, metadata !264), !dbg !501
  tail call void @llvm.dbg.value(metadata %struct.t_block* %cgs, i64 0, metadata !246, metadata !264), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 %nnodes, i64 0, metadata !247, metadata !264), !dbg !503
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !248, metadata !264), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %nstDlb, i64 0, metadata !249, metadata !264), !dbg !505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !264), !dbg !506
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %overflow.checked
  %index = phi i64 [ 0, %overflow.checked ], [ %index.next, %vector.body ], !dbg !507
  %0 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %index, !dbg !509
  %1 = bitcast i32* %0 to <4 x i32>*, !dbg !511
  store <4 x i32> zeroinitializer, <4 x i32>* %1, align 4, !dbg !511, !tbaa !443
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %index, !dbg !512
  %3 = bitcast i32* %2 to <4 x i32>*, !dbg !513
  store <4 x i32> zeroinitializer, <4 x i32>* %3, align 4, !dbg !513, !tbaa !443
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %index, !dbg !514
  %5 = bitcast i32* %4 to <4 x i32>*, !dbg !515
  store <4 x i32> zeroinitializer, <4 x i32>* %5, align 4, !dbg !515, !tbaa !443
  %6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %index, !dbg !516
  %7 = bitcast i32* %6 to <4 x i32>*, !dbg !517
  store <4 x i32> zeroinitializer, <4 x i32>* %7, align 4, !dbg !517, !tbaa !443
  %index.next = add i64 %index, 4, !dbg !507
  %8 = icmp eq i64 %index.next, 256, !dbg !507
  br i1 %8, label %middle.block, label %vector.body, !dbg !507, !llvm.loop !518

middle.block:                                     ; preds = %vector.body
  %9 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !521
  store i32 %nnodes, i32* %9, align 4, !dbg !522, !tbaa !437
  %10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4, !dbg !523
  store i32 %nstDlb, i32* %10, align 4, !dbg !524, !tbaa !525
  %11 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 1, !dbg !526
  %12 = load i32* %11, align 4, !dbg !526, !tbaa !527
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2, !dbg !529
  store i32 %12, i32* %13, align 4, !dbg !530, !tbaa !472
  %14 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 3, !dbg !531
  %15 = load i32* %14, align 4, !dbg !531, !tbaa !532
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !533
  store i32 %15, i32* %16, align 4, !dbg !534, !tbaa !535
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !264), !dbg !506
  %17 = icmp sgt i32 %nnodes, 0, !dbg !536
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !539

.lr.ph:                                           ; preds = %middle.block
  %18 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2, !dbg !540
  %19 = add i32 %nnodes, -1, !dbg !539
  br label %20, !dbg !539

; <label>:20                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %21 = icmp sgt i64 %indvars.iv, 0, !dbg !542
  br i1 %21, label %22, label %26, !dbg !543

; <label>:22                                      ; preds = %20
  %23 = add nsw i64 %indvars.iv, -1, !dbg !544
  %24 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %23, !dbg !545
  %25 = load i32* %24, align 4, !dbg !545, !tbaa !443
  br label %26, !dbg !543

; <label>:26                                      ; preds = %20, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %20 ], !dbg !543
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !251, metadata !264), !dbg !546
  %28 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %indvars.iv, !dbg !547
  %29 = load i32* %28, align 4, !dbg !547, !tbaa !443
  %30 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv, !dbg !548
  store i32 %29, i32* %30, align 4, !dbg !549, !tbaa !443
  %31 = load i32* %28, align 4, !dbg !550, !tbaa !443
  %32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv, !dbg !551
  store i32 %31, i32* %32, align 4, !dbg !552, !tbaa !443
  %33 = sext i32 %27 to i64, !dbg !553
  %34 = load i32** %18, align 8, !dbg !540, !tbaa !554
  %35 = getelementptr inbounds i32* %34, i64 %33, !dbg !553
  %36 = load i32* %35, align 4, !dbg !553, !tbaa !443
  %37 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv, !dbg !555
  store i32 %36, i32* %37, align 4, !dbg !556, !tbaa !443
  %38 = load i32* %28, align 4, !dbg !557, !tbaa !443
  %39 = sext i32 %38 to i64, !dbg !558
  %40 = getelementptr inbounds i32* %34, i64 %39, !dbg !558
  %41 = load i32* %40, align 4, !dbg !558, !tbaa !443
  %42 = sub nsw i32 %41, %36, !dbg !559
  %43 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv, !dbg !560
  store i32 %42, i32* %43, align 4, !dbg !561, !tbaa !443
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !539
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !539
  %exitcond = icmp eq i32 %lftr.wideiv, %19, !dbg !539
  br i1 %exitcond, label %._crit_edge, label %20, !dbg !539

._crit_edge:                                      ; preds = %26, %middle.block
  tail call void @calc_nsbshift(%struct.__sFILE* %fp, %struct.t_nsborder* %nsb) #9, !dbg !562
  ret void, !dbg !563
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_nsb(%struct.__sFILE* %fp, i8* %title, %struct.t_nsborder* nocapture readonly %nsb) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !256, metadata !264), !dbg !564
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !257, metadata !264), !dbg !565
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !258, metadata !264), !dbg !566
  %1 = icmp eq %struct.__sFILE* %fp, null, !dbg !567
  br i1 %1, label %38, label %2, !dbg !569

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %title) #7, !dbg !570
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !572
  %5 = load i32* %4, align 4, !dbg !572, !tbaa !573
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i32 %5) #7, !dbg !574
  %7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !575
  %8 = load i32* %7, align 4, !dbg !575, !tbaa !437
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %8) #7, !dbg !576
  %10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2, !dbg !577
  %11 = load i32* %10, align 4, !dbg !577, !tbaa !472
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %11) #7, !dbg !578
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !579
  %14 = load i32* %13, align 4, !dbg !579, !tbaa !535
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 %14) #7, !dbg !580
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5, !dbg !581
  %17 = load i32* %16, align 4, !dbg !581, !tbaa !460
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %17) #7, !dbg !582
  %19 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6, !dbg !583
  %20 = load i32* %19, align 4, !dbg !583, !tbaa !431
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i32 %20) #7, !dbg !584
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0), i64 41, i64 1, %struct.__sFILE* %fp), !dbg !585
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !259, metadata !264), !dbg !586
  %23 = load i32* %7, align 4, !dbg !587, !tbaa !437
  %24 = icmp sgt i32 %23, 0, !dbg !590
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !591

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %25 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv, !dbg !592
  %26 = load i32* %25, align 4, !dbg !592, !tbaa !443
  %27 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv, !dbg !593
  %28 = load i32* %27, align 4, !dbg !593, !tbaa !443
  %29 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv, !dbg !594
  %30 = load i32* %29, align 4, !dbg !594, !tbaa !443
  %31 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv, !dbg !595
  %32 = load i32* %31, align 4, !dbg !595, !tbaa !443
  %33 = trunc i64 %indvars.iv to i32, !dbg !596
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i32 %33, i32 %26, i32 %28, i32 %30, i32 %32) #7, !dbg !596
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !591
  %35 = load i32* %7, align 4, !dbg !587, !tbaa !437
  %36 = sext i32 %35 to i64, !dbg !590
  %37 = icmp slt i64 %indvars.iv.next, %36, !dbg !590
  br i1 %37, label %.lr.ph, label %._crit_edge, !dbg !591

._crit_edge:                                      ; preds = %.lr.ph, %2
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !597
  br label %38, !dbg !598

; <label>:38                                      ; preds = %0, %._crit_edge
  ret void, !dbg !599
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!260, !261, !262}
!llvm.ident = !{!263}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nsb.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !75, !81, !88, !94, !100, !103, !106, !109, !112, !115, !118, !127, !136, !149, !152, !155, !158, !172, !186, !192, !198, !228, !252}
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
!198 = !DISubprogram(name: "calc_nsbshift", scope: !1, file: !1, line: 43, type: !199, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_nsborder*)* @calc_nsbshift, variables: !220)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !11, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nsborder", file: !203, line: 59, baseType: !204)
!203 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 36, size: 32992, align: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !217, !218, !219}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !204, file: !203, line: 37, baseType: !5, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !204, file: !203, line: 38, baseType: !5, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cgtotal", scope: !204, file: !203, line: 39, baseType: !5, size: 32, align: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !204, file: !203, line: 40, baseType: !5, size: 32, align: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nstDlb", scope: !204, file: !203, line: 41, baseType: !5, size: 32, align: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !204, file: !203, line: 43, baseType: !5, size: 32, align: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !204, file: !203, line: 43, baseType: !5, size: 32, align: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "homenr", scope: !204, file: !203, line: 50, baseType: !214, size: 8192, align: 32, offset: 224)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, align: 32, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !204, file: !203, line: 51, baseType: !214, size: 8192, align: 32, offset: 8416)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cgload", scope: !204, file: !203, line: 52, baseType: !214, size: 8192, align: 32, offset: 16608)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "workload", scope: !204, file: !203, line: 55, baseType: !214, size: 8192, align: 32, offset: 24800)
!220 = !{!221, !222, !223, !224, !225, !226, !227}
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !198, file: !1, line: 43, type: !11)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 2, scope: !198, file: !1, line: 43, type: !201)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !198, file: !1, line: 45, type: !5)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastcg", scope: !198, file: !1, line: 46, type: !5)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "targetcg", scope: !198, file: !1, line: 46, type: !5)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nshift", scope: !198, file: !1, line: 46, type: !5)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "naaj", scope: !198, file: !1, line: 46, type: !5)
!228 = !DISubprogram(name: "calc_nsb", scope: !1, file: !1, line: 81, type: !229, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_block*, i32, %struct.t_nsborder*, i32)* @calc_nsb, variables: !244)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !11, !231, !5, !201, !5}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !233, line: 52, baseType: !234)
!233 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 36, size: 8448, align: 64, elements: !235)
!235 = !{!236, !237, !238, !242, !243}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !234, file: !233, line: 37, baseType: !214, size: 8192, align: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !234, file: !233, line: 43, baseType: !5, size: 32, align: 32, offset: 8192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !234, file: !233, line: 44, baseType: !239, size: 64, align: 64, offset: 8256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !241, line: 73, baseType: !5)
!241 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !234, file: !233, line: 45, baseType: !5, size: 32, align: 32, offset: 8320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !234, file: !233, line: 46, baseType: !239, size: 64, align: 64, offset: 8384)
!244 = !{!245, !246, !247, !248, !249, !250, !251}
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !228, file: !1, line: 81, type: !11)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cgs", arg: 2, scope: !228, file: !1, line: 81, type: !231)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 3, scope: !228, file: !1, line: 81, type: !5)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 4, scope: !228, file: !1, line: 81, type: !201)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nstDlb", arg: 5, scope: !228, file: !1, line: 81, type: !5)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !228, file: !1, line: 83, type: !5)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cg0", scope: !228, file: !1, line: 83, type: !5)
!252 = !DISubprogram(name: "print_nsb", scope: !1, file: !1, line: 103, type: !253, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, %struct.t_nsborder*)* @print_nsb, variables: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !11, !39, !201}
!255 = !{!256, !257, !258, !259}
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !252, file: !1, line: 103, type: !11)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !252, file: !1, line: 103, type: !39)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 3, scope: !252, file: !1, line: 103, type: !201)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !252, file: !1, line: 105, type: !5)
!260 = !{i32 2, !"Dwarf Version", i32 2}
!261 = !{i32 2, !"Debug Info Version", i32 700000003}
!262 = !{i32 1, !"PIC Level", i32 2}
!263 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!264 = !DIExpression()
!265 = !DILocation(line: 348, column: 40, scope: !7)
!266 = !DILocation(line: 348, column: 50, scope: !7)
!267 = !DILocation(line: 349, column: 12, scope: !268)
!268 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!269 = !DILocation(line: 349, column: 6, scope: !268)
!270 = !{!271, !275, i64 12}
!271 = !{!"__sFILE", !272, i64 0, !275, i64 8, !275, i64 12, !276, i64 16, !276, i64 18, !277, i64 24, !275, i64 40, !272, i64 48, !272, i64 56, !272, i64 64, !272, i64 72, !272, i64 80, !277, i64 88, !272, i64 104, !275, i64 112, !273, i64 116, !273, i64 119, !277, i64 120, !275, i64 136, !278, i64 144}
!272 = !{!"any pointer", !273, i64 0}
!273 = !{!"omnipotent char", !274, i64 0}
!274 = !{!"Simple C/C++ TBAA"}
!275 = !{!"int", !273, i64 0}
!276 = !{!"short", !273, i64 0}
!277 = !{!"__sbuf", !272, i64 0, !275, i64 8}
!278 = !{!"long long", !273, i64 0}
!279 = !DILocation(line: 349, column: 15, scope: !268)
!280 = !DILocation(line: 349, column: 20, scope: !268)
!281 = !DILocation(line: 350, column: 10, scope: !268)
!282 = !DILocation(line: 349, column: 38, scope: !268)
!283 = !{!271, !275, i64 40}
!284 = !DILocation(line: 349, column: 31, scope: !268)
!285 = !DILocation(line: 349, column: 59, scope: !268)
!286 = !DILocation(line: 349, column: 47, scope: !268)
!287 = !DILocation(line: 350, column: 23, scope: !268)
!288 = !DILocation(line: 350, column: 16, scope: !268)
!289 = !DILocation(line: 350, column: 18, scope: !268)
!290 = !{!271, !272, i64 0}
!291 = !DILocation(line: 350, column: 21, scope: !268)
!292 = !{!273, !273, i64 0}
!293 = !DILocation(line: 350, column: 3, scope: !268)
!294 = !DILocation(line: 352, column: 11, scope: !268)
!295 = !DILocation(line: 352, column: 3, scope: !268)
!296 = !DILocation(line: 353, column: 1, scope: !7)
!297 = !DILocation(line: 114, column: 15, scope: !75)
!298 = !DILocation(line: 116, column: 20, scope: !75)
!299 = !DILocation(line: 116, column: 12, scope: !75)
!300 = !DILocation(line: 116, column: 57, scope: !75)
!301 = !DILocation(line: 116, column: 45, scope: !75)
!302 = !DILocation(line: 116, column: 5, scope: !75)
!303 = !DILocation(line: 204, column: 53, scope: !81)
!304 = !DILocation(line: 205, column: 16, scope: !81)
!305 = !DILocation(line: 205, column: 23, scope: !81)
!306 = !DILocation(line: 205, column: 26, scope: !81)
!307 = !DILocation(line: 205, column: 47, scope: !81)
!308 = !DILocation(line: 205, column: 5, scope: !81)
!309 = !DILocation(line: 207, column: 54, scope: !88)
!310 = !DILocation(line: 208, column: 16, scope: !88)
!311 = !DILocation(line: 208, column: 23, scope: !88)
!312 = !DILocation(line: 208, column: 26, scope: !88)
!313 = !DILocation(line: 208, column: 46, scope: !88)
!314 = !DILocation(line: 208, column: 5, scope: !88)
!315 = !DILocation(line: 210, column: 59, scope: !94)
!316 = !DILocation(line: 211, column: 16, scope: !94)
!317 = !DILocation(line: 211, column: 23, scope: !94)
!318 = !DILocation(line: 211, column: 26, scope: !94)
!319 = !DILocation(line: 211, column: 47, scope: !94)
!320 = !DILocation(line: 211, column: 5, scope: !94)
!321 = !DILocation(line: 213, column: 50, scope: !100)
!322 = !DILocation(line: 214, column: 12, scope: !100)
!323 = !DILocation(line: 214, column: 33, scope: !100)
!324 = !DILocation(line: 214, column: 5, scope: !100)
!325 = !DILocation(line: 216, column: 51, scope: !103)
!326 = !DILocation(line: 217, column: 12, scope: !103)
!327 = !DILocation(line: 217, column: 32, scope: !103)
!328 = !DILocation(line: 217, column: 5, scope: !103)
!329 = !DILocation(line: 219, column: 56, scope: !106)
!330 = !DILocation(line: 220, column: 12, scope: !106)
!331 = !DILocation(line: 220, column: 33, scope: !106)
!332 = !DILocation(line: 220, column: 5, scope: !106)
!333 = !DILocation(line: 222, column: 50, scope: !109)
!334 = !DILocation(line: 223, column: 16, scope: !109)
!335 = !DILocation(line: 223, column: 5, scope: !109)
!336 = !DILocation(line: 225, column: 51, scope: !112)
!337 = !DILocation(line: 226, column: 16, scope: !112)
!338 = !DILocation(line: 226, column: 5, scope: !112)
!339 = !DILocation(line: 228, column: 56, scope: !115)
!340 = !DILocation(line: 229, column: 16, scope: !115)
!341 = !DILocation(line: 229, column: 5, scope: !115)
!342 = !DILocation(line: 231, column: 52, scope: !118)
!343 = !DILocation(line: 232, column: 44, scope: !118)
!344 = !DILocation(line: 233, column: 13, scope: !118)
!345 = !DILocation(line: 234, column: 26, scope: !118)
!346 = !DILocation(line: 234, column: 5, scope: !118)
!347 = !DILocation(line: 236, column: 53, scope: !127)
!348 = !DILocation(line: 237, column: 51, scope: !127)
!349 = !DILocation(line: 238, column: 13, scope: !127)
!350 = !DILocation(line: 239, column: 26, scope: !127)
!351 = !DILocation(line: 239, column: 12, scope: !127)
!352 = !DILocation(line: 239, column: 5, scope: !127)
!353 = !DILocation(line: 242, column: 58, scope: !136)
!354 = !DILocation(line: 246, column: 7, scope: !136)
!355 = !DILocation(line: 248, column: 26, scope: !136)
!356 = !DILocation(line: 248, column: 33, scope: !136)
!357 = !DILocation(line: 248, column: 5, scope: !136)
!358 = !DILocation(line: 257, column: 53, scope: !149)
!359 = !DILocation(line: 204, column: 53, scope: !81, inlinedAt: !360)
!360 = distinct !DILocation(line: 258, column: 12, scope: !149)
!361 = !DILocation(line: 205, column: 16, scope: !81, inlinedAt: !360)
!362 = !DILocation(line: 205, column: 47, scope: !81, inlinedAt: !360)
!363 = !DILocation(line: 205, column: 23, scope: !81, inlinedAt: !360)
!364 = !DILocation(line: 258, column: 60, scope: !149)
!365 = !DILocation(line: 258, column: 36, scope: !149)
!366 = !DILocation(line: 258, column: 5, scope: !149)
!367 = !DILocation(line: 260, column: 54, scope: !152)
!368 = !DILocation(line: 207, column: 54, scope: !88, inlinedAt: !369)
!369 = distinct !DILocation(line: 261, column: 12, scope: !152)
!370 = !DILocation(line: 208, column: 16, scope: !88, inlinedAt: !369)
!371 = !DILocation(line: 208, column: 46, scope: !88, inlinedAt: !369)
!372 = !DILocation(line: 208, column: 23, scope: !88, inlinedAt: !369)
!373 = !DILocation(line: 261, column: 59, scope: !152)
!374 = !DILocation(line: 261, column: 36, scope: !152)
!375 = !DILocation(line: 261, column: 5, scope: !152)
!376 = !DILocation(line: 263, column: 59, scope: !155)
!377 = !DILocation(line: 210, column: 59, scope: !94, inlinedAt: !378)
!378 = distinct !DILocation(line: 264, column: 12, scope: !155)
!379 = !DILocation(line: 211, column: 16, scope: !94, inlinedAt: !378)
!380 = !DILocation(line: 211, column: 47, scope: !94, inlinedAt: !378)
!381 = !DILocation(line: 211, column: 23, scope: !94, inlinedAt: !378)
!382 = !DILocation(line: 264, column: 60, scope: !155)
!383 = !DILocation(line: 264, column: 36, scope: !155)
!384 = !DILocation(line: 264, column: 5, scope: !155)
!385 = !DILocation(line: 642, column: 45, scope: !158)
!386 = !DILocation(line: 642, column: 57, scope: !158)
!387 = !DILocation(line: 642, column: 72, scope: !158)
!388 = !DILocation(line: 643, column: 27, scope: !158)
!389 = !DILocation(line: 643, column: 37, scope: !158)
!390 = !DILocation(line: 644, column: 23, scope: !158)
!391 = !DILocation(line: 644, column: 13, scope: !158)
!392 = !{!393, !393, i64 0}
!393 = !{!"float", !273, i64 0}
!394 = !DILocation(line: 644, column: 51, scope: !158)
!395 = !DILocation(line: 644, column: 41, scope: !158)
!396 = !DILocation(line: 645, column: 1, scope: !158)
!397 = !DILocation(line: 647, column: 45, scope: !172)
!398 = !DILocation(line: 647, column: 58, scope: !172)
!399 = !DILocation(line: 647, column: 74, scope: !172)
!400 = !DILocation(line: 648, column: 28, scope: !172)
!401 = !DILocation(line: 648, column: 38, scope: !172)
!402 = !DIExpression(DW_OP_bit_piece, 0, 64)
!403 = !DIExpression(DW_OP_bit_piece, 64, 64)
!404 = !DILocation(line: 649, column: 13, scope: !172)
!405 = !{!406, !406, i64 0}
!406 = !{!"double", !273, i64 0}
!407 = !DILocation(line: 649, column: 41, scope: !172)
!408 = !DILocation(line: 650, column: 1, scope: !172)
!409 = !DILocation(line: 652, column: 47, scope: !186)
!410 = !DILocation(line: 652, column: 59, scope: !186)
!411 = !DILocation(line: 652, column: 74, scope: !186)
!412 = !DILocation(line: 653, column: 27, scope: !186)
!413 = !DILocation(line: 653, column: 37, scope: !186)
!414 = !DILocation(line: 654, column: 23, scope: !186)
!415 = !DILocation(line: 654, column: 13, scope: !186)
!416 = !DILocation(line: 654, column: 51, scope: !186)
!417 = !DILocation(line: 654, column: 41, scope: !186)
!418 = !DILocation(line: 655, column: 1, scope: !186)
!419 = !DILocation(line: 657, column: 47, scope: !192)
!420 = !DILocation(line: 657, column: 60, scope: !192)
!421 = !DILocation(line: 657, column: 76, scope: !192)
!422 = !DILocation(line: 658, column: 28, scope: !192)
!423 = !DILocation(line: 658, column: 38, scope: !192)
!424 = !DILocation(line: 659, column: 13, scope: !192)
!425 = !DILocation(line: 659, column: 41, scope: !192)
!426 = !DILocation(line: 660, column: 1, scope: !192)
!427 = !DILocation(line: 43, column: 26, scope: !198)
!428 = !DILocation(line: 43, column: 41, scope: !198)
!429 = !DILocation(line: 48, column: 8, scope: !198)
!430 = !DILocation(line: 48, column: 14, scope: !198)
!431 = !{!432, !275, i64 24}
!432 = !{!"", !275, i64 0, !275, i64 4, !275, i64 8, !275, i64 12, !275, i64 16, !275, i64 20, !275, i64 24, !273, i64 28, !273, i64 1052, !273, i64 2076, !273, i64 3100}
!433 = !DILocation(line: 45, column: 7, scope: !198)
!434 = !DILocation(line: 49, column: 20, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 49, column: 3)
!436 = distinct !DILexicalBlock(scope: !198, file: !1, line: 49, column: 3)
!437 = !{!432, !275, i64 4}
!438 = !DILocation(line: 49, column: 14, scope: !435)
!439 = !DILocation(line: 49, column: 3, scope: !436)
!440 = !DILocation(line: 50, column: 31, scope: !441)
!441 = distinct !DILexicalBlock(scope: !435, file: !1, line: 49, column: 34)
!442 = !DILocation(line: 50, column: 16, scope: !441)
!443 = !{!275, !275, i64 0}
!444 = !DILocation(line: 46, column: 14, scope: !198)
!445 = !DILocation(line: 51, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !1, line: 51, column: 5)
!447 = !DILocation(line: 51, column: 27, scope: !448)
!448 = distinct !DILexicalBlock(scope: !446, file: !1, line: 51, column: 5)
!449 = !DILocation(line: 51, column: 32, scope: !448)
!450 = !DILocation(line: 51, column: 54, scope: !448)
!451 = !DILocation(line: 51, column: 36, scope: !448)
!452 = !DILocation(line: 51, column: 58, scope: !448)
!453 = !DILocation(line: 51, column: 5, scope: !446)
!454 = !DILocation(line: 53, column: 17, scope: !441)
!455 = !DILocation(line: 53, column: 16, scope: !441)
!456 = !DILocation(line: 56, column: 26, scope: !198)
!457 = !DILocation(line: 56, column: 29, scope: !198)
!458 = !DILocation(line: 56, column: 8, scope: !198)
!459 = !DILocation(line: 56, column: 13, scope: !198)
!460 = !{!432, !275, i64 20}
!461 = !DILocation(line: 57, column: 14, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 57, column: 3)
!463 = distinct !DILexicalBlock(scope: !198, file: !1, line: 57, column: 3)
!464 = !DILocation(line: 57, column: 3, scope: !463)
!465 = !DILocation(line: 59, column: 32, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !1, line: 57, column: 34)
!467 = !DILocation(line: 69, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !466, file: !1, line: 69, column: 9)
!469 = !DILocation(line: 58, column: 12, scope: !466)
!470 = !DILocation(line: 58, column: 26, scope: !466)
!471 = !DILocation(line: 46, column: 7, scope: !198)
!472 = !{!432, !275, i64 8}
!473 = !DILocation(line: 59, column: 10, scope: !466)
!474 = !DILocation(line: 46, column: 30, scope: !198)
!475 = !DILocation(line: 60, column: 21, scope: !466)
!476 = !DILocation(line: 60, column: 35, scope: !466)
!477 = !DILocation(line: 60, column: 28, scope: !466)
!478 = !DILocation(line: 46, column: 23, scope: !198)
!479 = !DILocation(line: 63, column: 34, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 63, column: 5)
!481 = distinct !DILexicalBlock(scope: !466, file: !1, line: 63, column: 5)
!482 = !DILocation(line: 63, column: 27, scope: !480)
!483 = !DILocation(line: 63, column: 42, scope: !480)
!484 = !DILocation(line: 63, column: 57, scope: !480)
!485 = !DILocation(line: 63, column: 55, scope: !480)
!486 = !DILocation(line: 63, column: 5, scope: !481)
!487 = !DILocation(line: 67, column: 20, scope: !466)
!488 = !DILocation(line: 67, column: 22, scope: !466)
!489 = !DILocation(line: 67, column: 36, scope: !466)
!490 = !DILocation(line: 69, column: 9, scope: !466)
!491 = !DILocation(line: 70, column: 7, scope: !468)
!492 = !DILocation(line: 57, column: 20, scope: !462)
!493 = !DILocation(line: 74, column: 16, scope: !466)
!494 = !DILocation(line: 74, column: 15, scope: !466)
!495 = !DILocation(line: 76, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !198, file: !1, line: 76, column: 7)
!497 = !DILocation(line: 76, column: 7, scope: !198)
!498 = !DILocation(line: 78, column: 22, scope: !496)
!499 = !DILocation(line: 77, column: 5, scope: !496)
!500 = !DILocation(line: 79, column: 1, scope: !198)
!501 = !DILocation(line: 81, column: 21, scope: !228)
!502 = !DILocation(line: 81, column: 33, scope: !228)
!503 = !DILocation(line: 81, column: 41, scope: !228)
!504 = !DILocation(line: 81, column: 60, scope: !228)
!505 = !DILocation(line: 81, column: 68, scope: !228)
!506 = !DILocation(line: 83, column: 8, scope: !228)
!507 = !DILocation(line: 86, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !228, file: !1, line: 86, column: 3)
!509 = !DILocation(line: 87, column: 49, scope: !510)
!510 = distinct !DILexicalBlock(scope: !508, file: !1, line: 86, column: 3)
!511 = !DILocation(line: 87, column: 65, scope: !510)
!512 = !DILocation(line: 87, column: 34, scope: !510)
!513 = !DILocation(line: 87, column: 48, scope: !510)
!514 = !DILocation(line: 87, column: 20, scope: !510)
!515 = !DILocation(line: 87, column: 33, scope: !510)
!516 = !DILocation(line: 87, column: 5, scope: !510)
!517 = !DILocation(line: 87, column: 19, scope: !510)
!518 = distinct !{!518, !519, !520}
!519 = !{!"llvm.loop.vectorize.width", i32 1}
!520 = !{!"llvm.loop.interleave.count", i32 1}
!521 = !DILocation(line: 89, column: 8, scope: !228)
!522 = !DILocation(line: 89, column: 14, scope: !228)
!523 = !DILocation(line: 90, column: 8, scope: !228)
!524 = !DILocation(line: 90, column: 14, scope: !228)
!525 = !{!432, !275, i64 16}
!526 = !DILocation(line: 91, column: 21, scope: !228)
!527 = !{!528, !275, i64 1024}
!528 = !{!"", !273, i64 0, !275, i64 1024, !272, i64 1032, !275, i64 1040, !272, i64 1048}
!529 = !DILocation(line: 91, column: 8, scope: !228)
!530 = !DILocation(line: 91, column: 15, scope: !228)
!531 = !DILocation(line: 92, column: 20, scope: !228)
!532 = !{!528, !275, i64 1040}
!533 = !DILocation(line: 92, column: 8, scope: !228)
!534 = !DILocation(line: 92, column: 14, scope: !228)
!535 = !{!432, !275, i64 12}
!536 = !DILocation(line: 93, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 93, column: 3)
!538 = distinct !DILexicalBlock(scope: !228, file: !1, line: 93, column: 3)
!539 = !DILocation(line: 93, column: 3, scope: !538)
!540 = !DILocation(line: 97, column: 29, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !1, line: 93, column: 29)
!542 = !DILocation(line: 94, column: 27, scope: !541)
!543 = !DILocation(line: 94, column: 24, scope: !541)
!544 = !DILocation(line: 94, column: 48, scope: !541)
!545 = !DILocation(line: 94, column: 34, scope: !541)
!546 = !DILocation(line: 83, column: 10, scope: !228)
!547 = !DILocation(line: 95, column: 24, scope: !541)
!548 = !DILocation(line: 95, column: 5, scope: !541)
!549 = !DILocation(line: 95, column: 22, scope: !541)
!550 = !DILocation(line: 96, column: 24, scope: !541)
!551 = !DILocation(line: 96, column: 5, scope: !541)
!552 = !DILocation(line: 96, column: 22, scope: !541)
!553 = !DILocation(line: 97, column: 24, scope: !541)
!554 = !{!528, !272, i64 1032}
!555 = !DILocation(line: 97, column: 5, scope: !541)
!556 = !DILocation(line: 97, column: 22, scope: !541)
!557 = !DILocation(line: 98, column: 35, scope: !541)
!558 = !DILocation(line: 98, column: 24, scope: !541)
!559 = !DILocation(line: 98, column: 51, scope: !541)
!560 = !DILocation(line: 98, column: 5, scope: !541)
!561 = !DILocation(line: 98, column: 22, scope: !541)
!562 = !DILocation(line: 100, column: 3, scope: !228)
!563 = !DILocation(line: 101, column: 1, scope: !228)
!564 = !DILocation(line: 103, column: 22, scope: !252)
!565 = !DILocation(line: 103, column: 31, scope: !252)
!566 = !DILocation(line: 103, column: 49, scope: !252)
!567 = !DILocation(line: 107, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !252, file: !1, line: 107, column: 8)
!569 = !DILocation(line: 107, column: 8, scope: !252)
!570 = !DILocation(line: 109, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !1, line: 108, column: 5)
!572 = !DILocation(line: 110, column: 50, scope: !571)
!573 = !{!432, !275, i64 0}
!574 = !DILocation(line: 110, column: 9, scope: !571)
!575 = !DILocation(line: 111, column: 47, scope: !571)
!576 = !DILocation(line: 111, column: 9, scope: !571)
!577 = !DILocation(line: 112, column: 47, scope: !571)
!578 = !DILocation(line: 112, column: 9, scope: !571)
!579 = !DILocation(line: 113, column: 47, scope: !571)
!580 = !DILocation(line: 113, column: 9, scope: !571)
!581 = !DILocation(line: 114, column: 47, scope: !571)
!582 = !DILocation(line: 114, column: 9, scope: !571)
!583 = !DILocation(line: 115, column: 47, scope: !571)
!584 = !DILocation(line: 115, column: 9, scope: !571)
!585 = !DILocation(line: 117, column: 9, scope: !571)
!586 = !DILocation(line: 105, column: 7, scope: !252)
!587 = !DILocation(line: 118, column: 26, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 118, column: 9)
!589 = distinct !DILexicalBlock(scope: !571, file: !1, line: 118, column: 9)
!590 = !DILocation(line: 118, column: 20, scope: !588)
!591 = !DILocation(line: 118, column: 9, scope: !589)
!592 = !DILocation(line: 120, column: 21, scope: !588)
!593 = !DILocation(line: 120, column: 35, scope: !588)
!594 = !DILocation(line: 120, column: 50, scope: !588)
!595 = !DILocation(line: 120, column: 65, scope: !588)
!596 = !DILocation(line: 119, column: 13, scope: !588)
!597 = !DILocation(line: 121, column: 9, scope: !571)
!598 = !DILocation(line: 122, column: 5, scope: !571)
!599 = !DILocation(line: 123, column: 1, scope: !252)
