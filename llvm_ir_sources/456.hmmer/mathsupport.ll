; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/mathsupport.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@ILogsum.firsttime = internal unnamed_addr global i1 false
@ilogsum_lookup = internal unnamed_addr global [20000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [46 x i8] c"Invalid argument alpha < 0.0 to SampleGamma()\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @Prob2Score(float %p, float %null) #0 {
  tail call void @llvm.dbg.value(metadata float %p, i64 0, metadata !12, metadata !184), !dbg !185
  tail call void @llvm.dbg.value(metadata float %null, i64 0, metadata !13, metadata !184), !dbg !186
  %1 = fcmp oeq float %p, 0.000000e+00, !dbg !187
  br i1 %1, label %13, label %2, !dbg !189

; <label>:2                                       ; preds = %0
  %3 = fdiv float %p, %null, !dbg !190
  %4 = fcmp ogt float %3, 0.000000e+00, !dbg !190
  br i1 %4, label %5, label %9, !dbg !190

; <label>:5                                       ; preds = %2
  %6 = fpext float %3 to double, !dbg !190
  %7 = tail call double @log(double %6) #5, !dbg !190
  %8 = fmul double %7, 0x3FF7154764EE6C2F, !dbg !190
  %phitmp = fmul double %8, 1.000000e+03, !dbg !190
  %phitmp1 = fadd double %phitmp, 5.000000e-01, !dbg !190
  br label %9, !dbg !190

; <label>:9                                       ; preds = %2, %5
  %10 = phi double [ %phitmp1, %5 ], [ 0xC1631252F0000000, %2 ]
  %11 = tail call double @floor(double %10) #5, !dbg !191
  %12 = fptosi double %11 to i32, !dbg !192
  br label %13, !dbg !193

; <label>:13                                      ; preds = %0, %9
  %.0 = phi i32 [ %12, %9 ], [ -987654321, %0 ]
  ret i32 %.0, !dbg !194
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #1

; Function Attrs: nounwind optsize readnone
declare double @log(double) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @Score2Prob(i32 %sc, float %null) #0 {
  tail call void @llvm.dbg.value(metadata i32 %sc, i64 0, metadata !18, metadata !184), !dbg !195
  tail call void @llvm.dbg.value(metadata float %null, i64 0, metadata !19, metadata !184), !dbg !196
  %1 = icmp eq i32 %sc, -987654321, !dbg !197
  br i1 %1, label %11, label %2, !dbg !199

; <label>:2                                       ; preds = %0
  %3 = fpext float %null to double, !dbg !200
  %4 = sitofp i32 %sc to float, !dbg !201
  %5 = fpext float %4 to double, !dbg !201
  %6 = fdiv double %5, 1.000000e+03, !dbg !201
  %7 = fmul double %6, 0x3FE62E42FEAD449C, !dbg !201
  %8 = tail call double @exp(double %7) #5, !dbg !201
  %9 = fmul double %3, %8, !dbg !202
  %10 = fptrunc double %9 to float, !dbg !203
  br label %11, !dbg !204

; <label>:11                                      ; preds = %0, %2
  %.0 = phi float [ %10, %2 ], [ 0.000000e+00, %0 ]
  ret float %.0, !dbg !205
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @Scorify(i32 %sc) #0 {
  tail call void @llvm.dbg.value(metadata i32 %sc, i64 0, metadata !24, metadata !184), !dbg !206
  %1 = sitofp i32 %sc to float, !dbg !207
  %2 = fdiv float %1, 1.000000e+03, !dbg !208
  ret float %2, !dbg !209
}

; Function Attrs: nounwind optsize ssp uwtable
define double @PValue(%struct.plan7_s* readonly %hmm, float %sc) #2 {
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !96, metadata !184), !dbg !210
  tail call void @llvm.dbg.value(metadata float %sc, i64 0, metadata !97, metadata !184), !dbg !211
  %1 = fpext float %sc to double, !dbg !212
  %2 = fcmp ult double %1, 0x408FFFFFFFAB5002, !dbg !214
  br i1 %2, label %3, label %10, !dbg !215

; <label>:3                                       ; preds = %0
  %4 = fcmp ugt double %1, 0xC08FFFFFFFAB5002, !dbg !216
  br i1 %4, label %5, label %10, !dbg !218

; <label>:5                                       ; preds = %3
  %6 = fmul double %1, 0x3FE62E42FEAD449C, !dbg !219
  %7 = tail call double @exp(double %6) #5, !dbg !219
  %8 = fadd double %7, 1.000000e+00, !dbg !220
  %9 = fdiv double 1.000000e+00, %8, !dbg !221
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !98, metadata !184), !dbg !222
  br label %10

; <label>:10                                      ; preds = %3, %0, %5
  %pval.0 = phi double [ %9, %5 ], [ 0.000000e+00, %0 ], [ 1.000000e+00, %3 ]
  %11 = icmp eq %struct.plan7_s* %hmm, null, !dbg !223
  br i1 %11, label %25, label %12, !dbg !225

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !226
  %14 = load i32* %13, align 4, !dbg !226, !tbaa !227
  %15 = and i32 %14, 128, !dbg !234
  %16 = icmp eq i32 %15, 0, !dbg !234
  br i1 %16, label %25, label %17, !dbg !235

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45, !dbg !236
  %19 = load float* %18, align 4, !dbg !236, !tbaa !238
  %20 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46, !dbg !239
  %21 = load float* %20, align 4, !dbg !239, !tbaa !240
  %22 = tail call double @ExtremeValueP(float %sc, float %19, float %21) #6, !dbg !241
  tail call void @llvm.dbg.value(metadata double %22, i64 0, metadata !99, metadata !184), !dbg !242
  %23 = fcmp olt double %22, %pval.0, !dbg !243
  br i1 %23, label %24, label %25, !dbg !245

; <label>:24                                      ; preds = %17
  tail call void @llvm.dbg.value(metadata double %22, i64 0, metadata !98, metadata !184), !dbg !222
  br label %25, !dbg !246

; <label>:25                                      ; preds = %12, %10, %17, %24
  %pval.1 = phi double [ %22, %24 ], [ %pval.0, %17 ], [ %pval.0, %12 ], [ %pval.0, %10 ]
  ret double %pval.1, !dbg !247
}

; Function Attrs: optsize
declare double @ExtremeValueP(float, float, float) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @LogSum(float %p1, float %p2) #0 {
  tail call void @llvm.dbg.value(metadata float %p1, i64 0, metadata !104, metadata !184), !dbg !248
  tail call void @llvm.dbg.value(metadata float %p2, i64 0, metadata !105, metadata !184), !dbg !249
  %1 = fcmp ogt float %p1, %p2, !dbg !250
  br i1 %1, label %2, label %13, !dbg !252

; <label>:2                                       ; preds = %0
  %3 = fsub float %p1, %p2, !dbg !253
  %4 = fcmp ogt float %3, 5.000000e+01, !dbg !254
  %5 = fpext float %p1 to double, !dbg !255
  br i1 %4, label %24, label %6, !dbg !256

; <label>:6                                       ; preds = %2
  %7 = fsub float %p2, %p1, !dbg !257
  %8 = fpext float %7 to double, !dbg !258
  %9 = tail call double @exp(double %8) #5, !dbg !259
  %10 = fadd double %9, 1.000000e+00, !dbg !260
  %11 = tail call double @log(double %10) #5, !dbg !261
  %12 = fadd double %5, %11, !dbg !262
  br label %24, !dbg !256

; <label>:13                                      ; preds = %0
  %14 = fsub float %p2, %p1, !dbg !263
  %15 = fcmp ogt float %14, 5.000000e+01, !dbg !264
  %16 = fpext float %p2 to double, !dbg !265
  br i1 %15, label %24, label %17, !dbg !266

; <label>:17                                      ; preds = %13
  %18 = fsub float %p1, %p2, !dbg !267
  %19 = fpext float %18 to double, !dbg !268
  %20 = tail call double @exp(double %19) #5, !dbg !269
  %21 = fadd double %20, 1.000000e+00, !dbg !270
  %22 = tail call double @log(double %21) #5, !dbg !271
  %23 = fadd double %16, %22, !dbg !272
  br label %24, !dbg !266

; <label>:24                                      ; preds = %17, %13, %6, %2
  %.0.in = phi double [ %12, %6 ], [ %5, %2 ], [ %23, %17 ], [ %16, %13 ]
  %.0 = fptrunc double %.0.in to float, !dbg !256
  ret float %.0, !dbg !273
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ILogsum(i32 %p1, i32 %p2) #2 {
  tail call void @llvm.dbg.value(metadata i32 %p1, i64 0, metadata !110, metadata !184), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %p2, i64 0, metadata !111, metadata !184), !dbg !275
  %.b = load i1* @ILogsum.firsttime, align 1
  br i1 %.b, label %13, label %.preheader, !dbg !276

.preheader:                                       ; preds = %0, %.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader ], [ 0, %0 ], !dbg !277
  %1 = sub nsw i64 0, %indvars.iv.i, !dbg !280
  %2 = trunc i64 %1 to i32, !dbg !284
  %3 = sitofp i32 %2 to float, !dbg !284
  %4 = fpext float %3 to double, !dbg !284
  %5 = fmul double %4, 0x3FE62E42FEAD449C, !dbg !285
  %6 = fdiv double %5, 1.000000e+03, !dbg !286
  %7 = tail call double @exp(double %6) #5, !dbg !287
  %8 = fadd double %7, 1.000000e+00, !dbg !288
  %9 = tail call double @log(double %8) #5, !dbg !289
  %10 = fmul double %9, 0x40968AC7B890D5A6, !dbg !290
  %11 = fptosi double %10 to i32, !dbg !291
  %12 = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %indvars.iv.i, !dbg !292
  store i32 %11, i32* %12, align 4, !dbg !293, !tbaa !294
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !295
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 20000, !dbg !295
  br i1 %exitcond.i, label %init_ilogsum.exit, label %.preheader, !dbg !295

init_ilogsum.exit:                                ; preds = %.preheader
  store i1 true, i1* @ILogsum.firsttime, align 1
  br label %13, !dbg !296

; <label>:13                                      ; preds = %0, %init_ilogsum.exit
  %14 = sub nsw i32 %p1, %p2, !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !112, metadata !184), !dbg !298
  %15 = icmp sgt i32 %14, 19999, !dbg !299
  br i1 %15, label %31, label %16, !dbg !301

; <label>:16                                      ; preds = %13
  %17 = icmp slt i32 %14, -19999, !dbg !302
  br i1 %17, label %31, label %18, !dbg !304

; <label>:18                                      ; preds = %16
  %19 = icmp sgt i32 %14, 0, !dbg !305
  br i1 %19, label %20, label %25, !dbg !307

; <label>:20                                      ; preds = %18
  %21 = sext i32 %14 to i64, !dbg !308
  %22 = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %21, !dbg !308
  %23 = load i32* %22, align 4, !dbg !308, !tbaa !294
  %24 = add nsw i32 %23, %p1, !dbg !309
  br label %31, !dbg !310

; <label>:25                                      ; preds = %18
  %26 = sub nsw i32 0, %14, !dbg !311
  %27 = sext i32 %26 to i64, !dbg !312
  %28 = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %27, !dbg !312
  %29 = load i32* %28, align 4, !dbg !312, !tbaa !294
  %30 = add nsw i32 %29, %p2, !dbg !313
  br label %31, !dbg !314

; <label>:31                                      ; preds = %16, %13, %25, %20
  %.0 = phi i32 [ %24, %20 ], [ %30, %25 ], [ %p1, %13 ], [ %p2, %16 ]
  ret i32 %.0, !dbg !315
}

; Function Attrs: nounwind optsize ssp uwtable
define void @LogNorm(float* nocapture %vec, i32 %n) #2 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !117, metadata !184), !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !118, metadata !184), !dbg !317
  tail call void @llvm.dbg.value(metadata float 0xC6293E5940000000, i64 0, metadata !120, metadata !184), !dbg !318
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !121, metadata !184), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !184), !dbg !320
  %1 = icmp sgt i32 %n, 0, !dbg !321
  br i1 %1, label %.lr.ph9, label %._crit_edge, !dbg !324

.lr.ph9:                                          ; preds = %0
  %2 = add i32 %n, -1, !dbg !324
  br label %6, !dbg !324

.preheader1:                                      ; preds = %6
  br i1 %1, label %.lr.ph5, label %._crit_edge, !dbg !325

.lr.ph5:                                          ; preds = %.preheader1
  %3 = fpext float %max.1 to double, !dbg !327
  %4 = fadd double %3, -5.000000e+01, !dbg !330
  %5 = add i32 %n, -1, !dbg !325
  br label %14, !dbg !325

; <label>:6                                       ; preds = %6, %.lr.ph9
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %6 ]
  %max.07 = phi float [ 0xC6293E5940000000, %.lr.ph9 ], [ %max.1, %6 ]
  %7 = getelementptr inbounds float* %vec, i64 %indvars.iv15, !dbg !331
  %8 = load float* %7, align 4, !dbg !331, !tbaa !333
  %9 = fcmp ogt float %8, %max.07, !dbg !334
  tail call void @llvm.dbg.value(metadata float %8, i64 0, metadata !120, metadata !184), !dbg !318
  %max.1 = select i1 %9, float %8, float %max.07, !dbg !335
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !324
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32, !dbg !324
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %2, !dbg !324
  br i1 %exitcond18, label %.preheader1, label %6, !dbg !324

.preheader:                                       ; preds = %26
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !336

.lr.ph:                                           ; preds = %.preheader
  %10 = fpext float %max.1 to double, !dbg !338
  %11 = fadd double %10, -5.000000e+01, !dbg !341
  %12 = fpext float %denom.1 to double, !dbg !342
  %13 = add i32 %n, -1, !dbg !336
  br label %27, !dbg !336

; <label>:14                                      ; preds = %26, %.lr.ph5
  %indvars.iv11 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next12, %26 ]
  %denom.04 = phi float [ 0.000000e+00, %.lr.ph5 ], [ %denom.1, %26 ]
  %15 = getelementptr inbounds float* %vec, i64 %indvars.iv11, !dbg !343
  %16 = load float* %15, align 4, !dbg !343, !tbaa !333
  %17 = fpext float %16 to double, !dbg !343
  %18 = fcmp ogt double %17, %4, !dbg !344
  br i1 %18, label %19, label %26, !dbg !345

; <label>:19                                      ; preds = %14
  %20 = fsub float %16, %max.1, !dbg !346
  %21 = fpext float %20 to double, !dbg !347
  %22 = tail call double @exp(double %21) #5, !dbg !348
  %23 = fpext float %denom.04 to double, !dbg !349
  %24 = fadd double %23, %22, !dbg !349
  %25 = fptrunc double %24 to float, !dbg !349
  tail call void @llvm.dbg.value(metadata float %25, i64 0, metadata !121, metadata !184), !dbg !319
  br label %26, !dbg !350

; <label>:26                                      ; preds = %14, %19
  %denom.1 = phi float [ %25, %19 ], [ %denom.04, %14 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !325
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32, !dbg !325
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %5, !dbg !325
  br i1 %exitcond14, label %.preheader, label %14, !dbg !325

; <label>:27                                      ; preds = %38, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %38 ]
  %28 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !351
  %29 = load float* %28, align 4, !dbg !351, !tbaa !333
  %30 = fpext float %29 to double, !dbg !351
  %31 = fcmp ogt double %30, %11, !dbg !352
  br i1 %31, label %32, label %38, !dbg !353

; <label>:32                                      ; preds = %27
  %33 = fsub float %29, %max.1, !dbg !354
  %34 = fpext float %33 to double, !dbg !355
  %35 = tail call double @exp(double %34) #5, !dbg !356
  %36 = fdiv double %35, %12, !dbg !357
  %37 = fptrunc double %36 to float, !dbg !356
  br label %38, !dbg !358

; <label>:38                                      ; preds = %27, %32
  %storemerge = phi float [ %37, %32 ], [ 0.000000e+00, %27 ]
  store float %storemerge, float* %28, align 4, !dbg !359, !tbaa !333
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !336
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !336
  %exitcond = icmp eq i32 %lftr.wideiv, %13, !dbg !336
  br i1 %exitcond, label %._crit_edge, label %27, !dbg !336

._crit_edge:                                      ; preds = %38, %0, %.preheader1, %.preheader
  ret void, !dbg !360
}

; Function Attrs: nounwind optsize ssp uwtable
define float @Logp_cvec(float* nocapture readonly %cvec, i32 %n, float* nocapture readonly %alpha) #2 {
  tail call void @llvm.dbg.value(metadata float* %cvec, i64 0, metadata !126, metadata !184), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !127, metadata !184), !dbg !362
  tail call void @llvm.dbg.value(metadata float* %alpha, i64 0, metadata !128, metadata !184), !dbg !363
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !129, metadata !184), !dbg !364
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !132, metadata !184), !dbg !365
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !131, metadata !184), !dbg !366
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !130, metadata !184), !dbg !367
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !184), !dbg !368
  %1 = icmp sgt i32 %n, 0, !dbg !369
  br i1 %1, label %.lr.ph, label %32, !dbg !372

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !372
  br label %3, !dbg !372

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %sum3.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %13, %3 ]
  %lnp.01 = phi double [ 0.000000e+00, %.lr.ph ], [ %phitmp, %3 ]
  %4 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %12, %3 ]
  %5 = getelementptr inbounds float* %cvec, i64 %indvars.iv, !dbg !373
  %6 = load float* %5, align 4, !dbg !373, !tbaa !333
  %7 = getelementptr inbounds float* %alpha, i64 %indvars.iv, !dbg !375
  %8 = load float* %7, align 4, !dbg !375, !tbaa !333
  %9 = fadd float %6, %8, !dbg !376
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !130, metadata !184), !dbg !367
  %10 = insertelement <2 x float> undef, float %8, i32 0, !dbg !377
  %11 = insertelement <2 x float> %10, float %9, i32 1, !dbg !377
  %12 = fadd <2 x float> %4, %11, !dbg !377
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !131, metadata !184), !dbg !366
  %13 = fadd float %sum3.04, %6, !dbg !378
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !132, metadata !184), !dbg !365
  %14 = fpext float %9 to double, !dbg !379
  %15 = tail call double @Gammln(double %14) #6, !dbg !380
  %16 = fadd double %lnp.01, %15, !dbg !381
  %17 = fptrunc double %16 to float, !dbg !381
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !129, metadata !184), !dbg !364
  %18 = load float* %5, align 4, !dbg !382, !tbaa !333
  %19 = fpext float %18 to double, !dbg !382
  %20 = fadd double %19, 1.000000e+00, !dbg !383
  %21 = tail call double @Gammln(double %20) #6, !dbg !384
  %22 = fpext float %17 to double, !dbg !385
  %23 = fsub double %22, %21, !dbg !385
  %24 = fptrunc double %23 to float, !dbg !385
  tail call void @llvm.dbg.value(metadata float %24, i64 0, metadata !129, metadata !184), !dbg !364
  %25 = load float* %7, align 4, !dbg !386, !tbaa !333
  %26 = fpext float %25 to double, !dbg !386
  %27 = tail call double @Gammln(double %26) #6, !dbg !387
  %28 = fpext float %24 to double, !dbg !388
  %29 = fsub double %28, %27, !dbg !388
  %30 = fptrunc double %29 to float, !dbg !388
  tail call void @llvm.dbg.value(metadata float %30, i64 0, metadata !129, metadata !184), !dbg !364
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !372
  %phitmp = fpext float %30 to double, !dbg !389
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !372
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !372
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !372

._crit_edge:                                      ; preds = %3
  %31 = fpext <2 x float> %12 to <2 x double>, !dbg !372
  %phitmp11 = fpext float %13 to double, !dbg !372
  %phitmp12 = fadd double %phitmp11, 1.000000e+00, !dbg !372
  br label %32, !dbg !372

; <label>:32                                      ; preds = %._crit_edge, %0
  %sum3.0.lcssa = phi double [ %phitmp12, %._crit_edge ], [ 1.000000e+00, %0 ]
  %lnp.0.lcssa = phi double [ %phitmp, %._crit_edge ], [ 0.000000e+00, %0 ]
  %33 = phi <2 x double> [ %31, %._crit_edge ], [ zeroinitializer, %0 ]
  %34 = extractelement <2 x double> %33, i32 1, !dbg !390
  %35 = tail call double @Gammln(double %34) #6, !dbg !390
  %36 = fsub double %lnp.0.lcssa, %35, !dbg !391
  %37 = fptrunc double %36 to float, !dbg !391
  tail call void @llvm.dbg.value(metadata float %37, i64 0, metadata !129, metadata !184), !dbg !364
  %38 = extractelement <2 x double> %33, i32 0, !dbg !392
  %39 = tail call double @Gammln(double %38) #6, !dbg !392
  %40 = fpext float %37 to double, !dbg !393
  %41 = fadd double %39, %40, !dbg !393
  %42 = fptrunc double %41 to float, !dbg !393
  tail call void @llvm.dbg.value(metadata float %42, i64 0, metadata !129, metadata !184), !dbg !364
  %43 = tail call double @Gammln(double %sum3.0.lcssa) #6, !dbg !394
  %44 = fpext float %42 to double, !dbg !395
  %45 = fadd double %43, %44, !dbg !395
  %46 = fptrunc double %45 to float, !dbg !395
  tail call void @llvm.dbg.value(metadata float %46, i64 0, metadata !129, metadata !184), !dbg !364
  ret float %46, !dbg !396
}

; Function Attrs: optsize
declare double @Gammln(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SampleDirichlet(float* nocapture readonly %alpha, i32 %n, float* %p) #2 {
  tail call void @llvm.dbg.value(metadata float* %alpha, i64 0, metadata !138, metadata !184), !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !139, metadata !184), !dbg !398
  tail call void @llvm.dbg.value(metadata float* %p, i64 0, metadata !140, metadata !184), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !141, metadata !184), !dbg !400
  %1 = icmp sgt i32 %n, 0, !dbg !401
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !404

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !404
  br label %3, !dbg !404

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %alpha, i64 %indvars.iv, !dbg !405
  %5 = load float* %4, align 4, !dbg !405, !tbaa !333
  %6 = tail call float @SampleGamma(float %5) #7, !dbg !406
  %7 = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !407
  store float %6, float* %7, align 4, !dbg !408, !tbaa !333
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !404
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !404
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !404
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !404

._crit_edge:                                      ; preds = %3, %0
  tail call void @FNorm(float* %p, i32 %n) #6, !dbg !409
  ret void, !dbg !410
}

; Function Attrs: nounwind optsize ssp uwtable
define float @SampleGamma(float %alpha) #2 {
  tail call void @llvm.dbg.value(metadata float %alpha, i64 0, metadata !146, metadata !184), !dbg !411
  %1 = fpext float %alpha to double, !dbg !412
  %2 = fcmp ult float %alpha, 1.000000e+00, !dbg !414
  br i1 %2, label %34, label %.preheader1, !dbg !415

.preheader1:                                      ; preds = %0
  %3 = fmul double %1, 2.000000e+00, !dbg !416
  %4 = fadd double %3, -1.000000e+00, !dbg !419
  %5 = tail call double @sqrt(double %4) #5, !dbg !420
  %6 = fptrunc double %5 to float, !dbg !420
  %7 = fdiv float 1.000000e+00, %6, !dbg !421
  %8 = fpext float %7 to double, !dbg !422
  %9 = fdiv float %alpha, %6, !dbg !423
  %10 = fpext float %9 to double, !dbg !424
  %11 = fadd double %10, 1.000000e+00, !dbg !425
  br label %12, !dbg !416

; <label>:12                                      ; preds = %.preheader1, %12
  tail call void @llvm.dbg.value(metadata float %6, i64 0, metadata !151, metadata !184), !dbg !426
  %13 = tail call double @sre_random() #6, !dbg !427
  %14 = fptrunc double %13 to float, !dbg !427
  tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !147, metadata !184), !dbg !428
  %15 = fsub float 1.000000e+00, %14, !dbg !429
  %16 = fdiv float %14, %15, !dbg !430
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !148, metadata !184), !dbg !431
  %17 = fpext float %16 to double, !dbg !432
  %18 = tail call double @llvm.pow.f64(double %17, double %8), !dbg !433
  %19 = fmul double %1, %18, !dbg !434
  %20 = fptrunc double %19 to float, !dbg !435
  tail call void @llvm.dbg.value(metadata float %20, i64 0, metadata !149, metadata !184), !dbg !436
  %21 = fsub float %alpha, %20, !dbg !437
  %22 = fpext float %21 to double, !dbg !438
  %23 = tail call double @exp(double %22) #5, !dbg !439
  %24 = fmul double %23, 2.500000e-01, !dbg !440
  %25 = tail call double @llvm.pow.f64(double %17, double %11), !dbg !441
  %26 = fmul double %24, %25, !dbg !442
  %27 = fdiv double 1.000000e+00, %17, !dbg !443
  %28 = fadd double %27, 1.000000e+00, !dbg !444
  %pow2 = fmul double %28, %28, !dbg !445
  %29 = fmul double %26, %pow2, !dbg !446
  %30 = fptrunc double %29 to float, !dbg !447
  tail call void @llvm.dbg.value(metadata float %30, i64 0, metadata !150, metadata !184), !dbg !448
  %31 = tail call double @sre_random() #6, !dbg !449
  %32 = fpext float %30 to double, !dbg !451
  %33 = fcmp ugt double %31, %32, !dbg !452
  br i1 %33, label %12, label %.loopexit, !dbg !453

; <label>:34                                      ; preds = %0
  %35 = fcmp ogt float %alpha, 0.000000e+00, !dbg !454
  br i1 %35, label %.preheader, label %67, !dbg !456

.preheader:                                       ; preds = %34
  %36 = fdiv double %1, 0x4005BF0A8B145769, !dbg !457
  %37 = fadd double %36, 1.000000e+00, !dbg !460
  %38 = fadd double %1, -1.000000e+00, !dbg !461
  %39 = fdiv double 1.000000e+00, %1, !dbg !465
  br label %.backedge, !dbg !467

.backedge:                                        ; preds = %46, %58, %.preheader
  %40 = tail call double @sre_random() #6, !dbg !467
  %41 = fptrunc double %40 to float, !dbg !467
  tail call void @llvm.dbg.value(metadata float %41, i64 0, metadata !147, metadata !184), !dbg !428
  %42 = fpext float %41 to double, !dbg !468
  %43 = fmul double %42, %37, !dbg !469
  %44 = fptrunc double %43 to float, !dbg !468
  tail call void @llvm.dbg.value(metadata float %44, i64 0, metadata !148, metadata !184), !dbg !431
  %45 = fcmp ogt float %44, 1.000000e+00, !dbg !470
  br i1 %45, label %46, label %58, !dbg !471

; <label>:46                                      ; preds = %.backedge
  %47 = fsub float 1.000000e+00, %44, !dbg !472
  %48 = fpext float %47 to double, !dbg !473
  %49 = fadd double %36, %48, !dbg !474
  %50 = fdiv double %49, %1, !dbg !475
  %51 = tail call double @log(double %50) #5, !dbg !476
  %52 = fptrunc double %51 to float, !dbg !477
  %53 = fsub float -0.000000e+00, %52, !dbg !477
  tail call void @llvm.dbg.value(metadata float %53, i64 0, metadata !149, metadata !184), !dbg !436
  %54 = tail call double @sre_random() #6, !dbg !478
  %55 = fpext float %53 to double, !dbg !479
  %56 = tail call double @llvm.pow.f64(double %55, double %38), !dbg !480
  %57 = fcmp ugt double %54, %56, !dbg !481
  br i1 %57, label %.backedge, label %.loopexit, !dbg !482

; <label>:58                                      ; preds = %.backedge
  %59 = fpext float %44 to double, !dbg !483
  %60 = tail call double @llvm.pow.f64(double %59, double %39), !dbg !484
  %61 = fptrunc double %60 to float, !dbg !484
  tail call void @llvm.dbg.value(metadata float %61, i64 0, metadata !149, metadata !184), !dbg !436
  %62 = tail call double @sre_random() #6, !dbg !485
  %63 = fsub float -0.000000e+00, %61, !dbg !487
  %64 = fpext float %63 to double, !dbg !487
  %65 = tail call double @exp(double %64) #5, !dbg !488
  %66 = fcmp ugt double %62, %65, !dbg !489
  br i1 %66, label %.backedge, label %.loopexit, !dbg !490

; <label>:67                                      ; preds = %34
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0)) #6, !dbg !491
  br label %.loopexit, !dbg !492

.loopexit:                                        ; preds = %12, %58, %46, %67
  %.0 = phi float [ 0.000000e+00, %67 ], [ %53, %46 ], [ %61, %58 ], [ %20, %12 ]
  ret float %.0, !dbg !493
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #3

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #1

; Function Attrs: optsize
declare double @sre_random() #3

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SampleCountvector(float* %p, i32 %n, i32 %c, float* %cvec) #2 {
  tail call void @llvm.dbg.value(metadata float* %p, i64 0, metadata !156, metadata !184), !dbg !494
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !157, metadata !184), !dbg !495
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !158, metadata !184), !dbg !496
  tail call void @llvm.dbg.value(metadata float* %cvec, i64 0, metadata !159, metadata !184), !dbg !497
  tail call void @FSet(float* %cvec, i32 %n, float 0.000000e+00) #6, !dbg !498
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !160, metadata !184), !dbg !499
  %1 = icmp sgt i32 %c, 0, !dbg !500
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !503

.lr.ph:                                           ; preds = %0
  %2 = add i32 %c, -1, !dbg !503
  br label %3, !dbg !503

; <label>:3                                       ; preds = %3, %.lr.ph
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %9, %3 ]
  %4 = tail call i32 @FChoose(float* %p, i32 %n) #6, !dbg !504
  %5 = sext i32 %4 to i64, !dbg !505
  %6 = getelementptr inbounds float* %cvec, i64 %5, !dbg !505
  %7 = load float* %6, align 4, !dbg !506, !tbaa !333
  %8 = fadd float %7, 1.000000e+00, !dbg !506
  store float %8, float* %6, align 4, !dbg !506, !tbaa !333
  %9 = add nuw nsw i32 %i.01, 1, !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !160, metadata !184), !dbg !499
  %exitcond = icmp eq i32 %i.01, %2, !dbg !503
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !503

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !508
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #3

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @P_PvecGivenDirichlet(float* nocapture readonly %p, i32 %n, float* nocapture readonly %alpha) #2 {
  tail call void @llvm.dbg.value(metadata float* %p, i64 0, metadata !163, metadata !184), !dbg !509
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !164, metadata !184), !dbg !510
  tail call void @llvm.dbg.value(metadata float* %alpha, i64 0, metadata !165, metadata !184), !dbg !511
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !167, metadata !184), !dbg !512
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !166, metadata !184), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !168, metadata !184), !dbg !514
  %1 = icmp sgt i32 %n, 0, !dbg !515
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !518

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !518
  br label %3, !dbg !518

; <label>:3                                       ; preds = %24, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %logp.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %logp.1, %24 ]
  %sum.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %sum.1, %24 ]
  %4 = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !519
  %5 = load float* %4, align 4, !dbg !519, !tbaa !333
  %6 = fcmp ogt float %5, 0.000000e+00, !dbg !521
  br i1 %6, label %7, label %24, !dbg !522

; <label>:7                                       ; preds = %3
  %8 = fpext float %5 to double, !dbg !519
  %9 = getelementptr inbounds float* %alpha, i64 %indvars.iv, !dbg !523
  %10 = load float* %9, align 4, !dbg !523, !tbaa !333
  %11 = fpext float %10 to double, !dbg !523
  %12 = fadd double %11, -1.000000e+00, !dbg !525
  %13 = tail call double @log(double %8) #5, !dbg !526
  %14 = fmul double %13, %12, !dbg !527
  %15 = fpext float %logp.02 to double, !dbg !528
  %16 = fadd double %15, %14, !dbg !528
  %17 = fptrunc double %16 to float, !dbg !528
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !167, metadata !184), !dbg !512
  %18 = tail call double @Gammln(double %11) #6, !dbg !529
  %19 = fpext float %17 to double, !dbg !530
  %20 = fsub double %19, %18, !dbg !530
  %21 = fptrunc double %20 to float, !dbg !530
  tail call void @llvm.dbg.value(metadata float %21, i64 0, metadata !167, metadata !184), !dbg !512
  %22 = load float* %9, align 4, !dbg !531, !tbaa !333
  %23 = fadd float %sum.01, %22, !dbg !532
  tail call void @llvm.dbg.value(metadata float %23, i64 0, metadata !166, metadata !184), !dbg !513
  br label %24, !dbg !533

; <label>:24                                      ; preds = %3, %7
  %sum.1 = phi float [ %23, %7 ], [ %sum.01, %3 ]
  %logp.1 = phi float [ %21, %7 ], [ %logp.02, %3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !518
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !518
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !518
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !518

._crit_edge:                                      ; preds = %24, %0
  %logp.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %logp.1, %24 ]
  %sum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %sum.1, %24 ]
  %25 = fpext float %sum.0.lcssa to double, !dbg !534
  %26 = tail call double @Gammln(double %25) #6, !dbg !535
  %27 = fpext float %logp.0.lcssa to double, !dbg !536
  %28 = fadd double %27, %26, !dbg !536
  %29 = fptrunc double %28 to float, !dbg !536
  tail call void @llvm.dbg.value(metadata float %29, i64 0, metadata !167, metadata !184), !dbg !512
  ret float %29, !dbg !537
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!180, !181, !182}
!llvm.ident = !{!183}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !174, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/mathsupport.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !14, !20, !25, !100, !106, !113, !122, !134, !142, !152, !161, !169}
!8 = !DISubprogram(name: "Prob2Score", scope: !1, file: !1, line: 44, type: !9, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float, float)* @Prob2Score, variables: !11)
!9 = !DISubroutineType(types: !10)
!10 = !{!4, !5, !5}
!11 = !{!12, !13}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !8, file: !1, line: 44, type: !5)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "null", arg: 2, scope: !8, file: !1, line: 44, type: !5)
!14 = !DISubprogram(name: "Score2Prob", scope: !1, file: !1, line: 56, type: !15, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, float)* @Score2Prob, variables: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !4, !5}
!17 = !{!18, !19}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sc", arg: 1, scope: !14, file: !1, line: 56, type: !4)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "null", arg: 2, scope: !14, file: !1, line: 56, type: !5)
!20 = !DISubprogram(name: "Scorify", scope: !1, file: !1, line: 69, type: !21, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: float (i32)* @Scorify, variables: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!5, !4}
!23 = !{!24}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sc", arg: 1, scope: !20, file: !1, line: 69, type: !4)
!25 = !DISubprogram(name: "PValue", scope: !1, file: !1, line: 89, type: !26, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct.plan7_s*, float)* @PValue, variables: !95)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29, !5}
!28 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !31, line: 101, size: 3712, align: 64, elements: !32)
!31 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!32 = !{!33, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !60, !61, !62, !63, !68, !69, !70, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !31, line: 113, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !30, file: !31, line: 114, baseType: !34, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !30, file: !31, line: 115, baseType: !34, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !30, file: !31, line: 116, baseType: !34, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !30, file: !31, line: 117, baseType: !34, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !30, file: !31, line: 118, baseType: !34, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !30, file: !31, line: 119, baseType: !34, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !30, file: !31, line: 120, baseType: !4, size: 32, align: 32, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !30, file: !31, line: 121, baseType: !34, size: 64, align: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !30, file: !31, line: 122, baseType: !45, size: 64, align: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !30, file: !31, line: 123, baseType: !4, size: 32, align: 32, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !30, file: !31, line: 134, baseType: !45, size: 64, align: 64, offset: 704)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !30, file: !31, line: 135, baseType: !45, size: 64, align: 64, offset: 768)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !30, file: !31, line: 136, baseType: !45, size: 64, align: 64, offset: 832)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !30, file: !31, line: 144, baseType: !5, size: 32, align: 32, offset: 896)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !30, file: !31, line: 144, baseType: !5, size: 32, align: 32, offset: 928)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !30, file: !31, line: 145, baseType: !5, size: 32, align: 32, offset: 960)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !30, file: !31, line: 145, baseType: !5, size: 32, align: 32, offset: 992)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !30, file: !31, line: 146, baseType: !5, size: 32, align: 32, offset: 1024)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !30, file: !31, line: 146, baseType: !5, size: 32, align: 32, offset: 1056)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !30, file: !31, line: 155, baseType: !4, size: 32, align: 32, offset: 1088)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !30, file: !31, line: 156, baseType: !58, size: 64, align: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !30, file: !31, line: 157, baseType: !58, size: 64, align: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !30, file: !31, line: 158, baseType: !58, size: 64, align: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !30, file: !31, line: 159, baseType: !5, size: 32, align: 32, offset: 1344)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !30, file: !31, line: 168, baseType: !64, size: 256, align: 32, offset: 1376)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, align: 32, elements: !65)
!65 = !{!66, !67}
!66 = !DISubrange(count: 4)
!67 = !DISubrange(count: 2)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !30, file: !31, line: 169, baseType: !59, size: 64, align: 64, offset: 1664)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !30, file: !31, line: 170, baseType: !59, size: 64, align: 64, offset: 1728)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !30, file: !31, line: 174, baseType: !71, size: 640, align: 32, offset: 1792)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 640, align: 32, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 20)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !30, file: !31, line: 175, baseType: !5, size: 32, align: 32, offset: 2432)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !30, file: !31, line: 197, baseType: !76, size: 64, align: 64, offset: 2496)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !30, file: !31, line: 198, baseType: !76, size: 64, align: 64, offset: 2560)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !30, file: !31, line: 199, baseType: !76, size: 64, align: 64, offset: 2624)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !30, file: !31, line: 200, baseType: !80, size: 256, align: 32, offset: 2688)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 32, elements: !65)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !30, file: !31, line: 201, baseType: !45, size: 64, align: 64, offset: 2944)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !30, file: !31, line: 202, baseType: !45, size: 64, align: 64, offset: 3008)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !30, file: !31, line: 203, baseType: !45, size: 64, align: 64, offset: 3072)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !30, file: !31, line: 203, baseType: !45, size: 64, align: 64, offset: 3136)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !30, file: !31, line: 203, baseType: !45, size: 64, align: 64, offset: 3200)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !30, file: !31, line: 203, baseType: !45, size: 64, align: 64, offset: 3264)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !30, file: !31, line: 203, baseType: !45, size: 64, align: 64, offset: 3328)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !30, file: !31, line: 214, baseType: !76, size: 64, align: 64, offset: 3392)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !30, file: !31, line: 215, baseType: !76, size: 64, align: 64, offset: 3456)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !30, file: !31, line: 216, baseType: !4, size: 32, align: 32, offset: 3520)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !30, file: !31, line: 217, baseType: !4, size: 32, align: 32, offset: 3552)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !30, file: !31, line: 222, baseType: !5, size: 32, align: 32, offset: 3584)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !30, file: !31, line: 223, baseType: !5, size: 32, align: 32, offset: 3616)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 225, baseType: !4, size: 32, align: 32, offset: 3648)
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !25, file: !1, line: 89, type: !29)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sc", arg: 2, scope: !25, file: !1, line: 89, type: !5)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pval", scope: !25, file: !1, line: 91, type: !28)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pval2", scope: !25, file: !1, line: 92, type: !28)
!100 = !DISubprogram(name: "LogSum", scope: !1, file: !1, line: 115, type: !101, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: float (float, float)* @LogSum, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!5, !5, !5}
!103 = !{!104, !105}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p1", arg: 1, scope: !100, file: !1, line: 115, type: !5)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p2", arg: 2, scope: !100, file: !1, line: 115, type: !5)
!106 = !DISubprogram(name: "ILogsum", scope: !1, file: !1, line: 157, type: !107, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @ILogsum, variables: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!4, !4, !4}
!109 = !{!110, !111, !112}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p1", arg: 1, scope: !106, file: !1, line: 157, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p2", arg: 2, scope: !106, file: !1, line: 157, type: !4)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !106, file: !1, line: 159, type: !4)
!113 = !DISubprogram(name: "LogNorm", scope: !1, file: !1, line: 185, type: !114, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32)* @LogNorm, variables: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !59, !4}
!116 = !{!117, !118, !119, !120, !121}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !113, file: !1, line: 185, type: !59)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !113, file: !1, line: 185, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !113, file: !1, line: 187, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !113, file: !1, line: 188, type: !5)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denom", scope: !113, file: !1, line: 189, type: !5)
!122 = !DISubprogram(name: "Logp_cvec", scope: !1, file: !1, line: 217, type: !123, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, i32, float*)* @Logp_cvec, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!5, !59, !4, !59}
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cvec", arg: 1, scope: !122, file: !1, line: 217, type: !59)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !122, file: !1, line: 217, type: !4)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 3, scope: !122, file: !1, line: 217, type: !59)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lnp", scope: !122, file: !1, line: 219, type: !5)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum1", scope: !122, file: !1, line: 220, type: !5)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum2", scope: !122, file: !1, line: 220, type: !5)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum3", scope: !122, file: !1, line: 220, type: !5)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !122, file: !1, line: 221, type: !4)
!134 = !DISubprogram(name: "SampleDirichlet", scope: !1, file: !1, line: 257, type: !135, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32, float*)* @SampleDirichlet, variables: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !59, !4, !59}
!137 = !{!138, !139, !140, !141}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 1, scope: !134, file: !1, line: 257, type: !59)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !134, file: !1, line: 257, type: !4)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 3, scope: !134, file: !1, line: 257, type: !59)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !134, file: !1, line: 259, type: !4)
!142 = !DISubprogram(name: "SampleGamma", scope: !1, file: !1, line: 281, type: !143, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: float (float)* @SampleGamma, variables: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!5, !5}
!145 = !{!146, !147, !148, !149, !150, !151}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 1, scope: !142, file: !1, line: 281, type: !5)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "U", scope: !142, file: !1, line: 283, type: !5)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "V", scope: !142, file: !1, line: 283, type: !5)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "X", scope: !142, file: !1, line: 283, type: !5)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "W", scope: !142, file: !1, line: 283, type: !5)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lambda", scope: !142, file: !1, line: 283, type: !5)
!152 = !DISubprogram(name: "SampleCountvector", scope: !1, file: !1, line: 330, type: !153, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32, i32, float*)* @SampleCountvector, variables: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !59, !4, !4, !59}
!155 = !{!156, !157, !158, !159, !160}
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !152, file: !1, line: 330, type: !59)
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !152, file: !1, line: 330, type: !4)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !152, file: !1, line: 330, type: !4)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cvec", arg: 4, scope: !152, file: !1, line: 330, type: !59)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !152, file: !1, line: 332, type: !4)
!161 = !DISubprogram(name: "P_PvecGivenDirichlet", scope: !1, file: !1, line: 350, type: !123, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, i32, float*)* @P_PvecGivenDirichlet, variables: !162)
!162 = !{!163, !164, !165, !166, !167, !168}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !161, file: !1, line: 350, type: !59)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !161, file: !1, line: 350, type: !4)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 3, scope: !161, file: !1, line: 350, type: !59)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !161, file: !1, line: 352, type: !5)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "logp", scope: !161, file: !1, line: 353, type: !5)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !161, file: !1, line: 354, type: !4)
!169 = !DISubprogram(name: "init_ilogsum", scope: !1, file: !1, line: 149, type: !170, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, variables: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{null}
!172 = !{!173}
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !169, file: !1, line: 151, type: !4)
!174 = !{!175, !176}
!175 = !DIGlobalVariable(name: "firsttime", scope: !106, file: !1, line: 164, type: !4, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariable(name: "ilogsum_lookup", scope: !0, file: !1, line: 147, type: !177, isLocal: true, isDefinition: true, variable: [20000 x i32]* @ilogsum_lookup)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640000, align: 32, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 20000)
!180 = !{i32 2, !"Dwarf Version", i32 2}
!181 = !{i32 2, !"Debug Info Version", i32 700000003}
!182 = !{i32 1, !"PIC Level", i32 2}
!183 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!184 = !DIExpression()
!185 = !DILocation(line: 44, column: 18, scope: !8)
!186 = !DILocation(line: 44, column: 27, scope: !8)
!187 = !DILocation(line: 46, column: 11, scope: !188)
!188 = distinct !DILexicalBlock(scope: !8, file: !1, line: 46, column: 9)
!189 = !DILocation(line: 46, column: 9, scope: !8)
!190 = !DILocation(line: 47, column: 55, scope: !188)
!191 = !DILocation(line: 47, column: 32, scope: !188)
!192 = !DILocation(line: 47, column: 26, scope: !188)
!193 = !DILocation(line: 47, column: 19, scope: !188)
!194 = !DILocation(line: 48, column: 1, scope: !8)
!195 = !DILocation(line: 56, column: 16, scope: !14)
!196 = !DILocation(line: 56, column: 26, scope: !14)
!197 = !DILocation(line: 58, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !14, file: !1, line: 58, column: 7)
!199 = !DILocation(line: 58, column: 7, scope: !14)
!200 = !DILocation(line: 59, column: 29, scope: !198)
!201 = !DILocation(line: 59, column: 36, scope: !198)
!202 = !DILocation(line: 59, column: 34, scope: !198)
!203 = !DILocation(line: 59, column: 28, scope: !198)
!204 = !DILocation(line: 59, column: 21, scope: !198)
!205 = !DILocation(line: 60, column: 1, scope: !14)
!206 = !DILocation(line: 69, column: 13, scope: !20)
!207 = !DILocation(line: 71, column: 11, scope: !20)
!208 = !DILocation(line: 71, column: 10, scope: !20)
!209 = !DILocation(line: 71, column: 3, scope: !20)
!210 = !DILocation(line: 89, column: 24, scope: !25)
!211 = !DILocation(line: 89, column: 35, scope: !25)
!212 = !DILocation(line: 95, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !25, file: !1, line: 95, column: 12)
!214 = !DILocation(line: 95, column: 15, scope: !213)
!215 = !DILocation(line: 95, column: 12, scope: !25)
!216 = !DILocation(line: 96, column: 15, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 96, column: 12)
!218 = !DILocation(line: 96, column: 12, scope: !213)
!219 = !DILocation(line: 97, column: 47, scope: !217)
!220 = !DILocation(line: 97, column: 46, scope: !217)
!221 = !DILocation(line: 97, column: 41, scope: !217)
!222 = !DILocation(line: 91, column: 10, scope: !25)
!223 = !DILocation(line: 100, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !25, file: !1, line: 100, column: 7)
!225 = !DILocation(line: 100, column: 19, scope: !224)
!226 = !DILocation(line: 100, column: 28, scope: !224)
!227 = !{!228, !232, i64 456}
!228 = !{!"plan7_s", !229, i64 0, !229, i64 8, !229, i64 16, !229, i64 24, !229, i64 32, !229, i64 40, !229, i64 48, !232, i64 56, !229, i64 64, !229, i64 72, !232, i64 80, !229, i64 88, !229, i64 96, !229, i64 104, !233, i64 112, !233, i64 116, !233, i64 120, !233, i64 124, !233, i64 128, !233, i64 132, !232, i64 136, !229, i64 144, !229, i64 152, !229, i64 160, !233, i64 168, !230, i64 172, !229, i64 208, !229, i64 216, !230, i64 224, !233, i64 304, !229, i64 312, !229, i64 320, !229, i64 328, !230, i64 336, !229, i64 368, !229, i64 376, !229, i64 384, !229, i64 392, !229, i64 400, !229, i64 408, !229, i64 416, !229, i64 424, !229, i64 432, !232, i64 440, !232, i64 444, !233, i64 448, !233, i64 452, !232, i64 456}
!229 = !{!"any pointer", !230, i64 0}
!230 = !{!"omnipotent char", !231, i64 0}
!231 = !{!"Simple C/C++ TBAA"}
!232 = !{!"int", !230, i64 0}
!233 = !{!"float", !230, i64 0}
!234 = !DILocation(line: 100, column: 34, scope: !224)
!235 = !DILocation(line: 100, column: 7, scope: !25)
!236 = !DILocation(line: 102, column: 38, scope: !237)
!237 = distinct !DILexicalBlock(scope: !224, file: !1, line: 101, column: 5)
!238 = !{!228, !233, i64 448}
!239 = !DILocation(line: 102, column: 47, scope: !237)
!240 = !{!228, !233, i64 452}
!241 = !DILocation(line: 102, column: 15, scope: !237)
!242 = !DILocation(line: 92, column: 10, scope: !25)
!243 = !DILocation(line: 103, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !1, line: 103, column: 11)
!245 = !DILocation(line: 103, column: 11, scope: !237)
!246 = !DILocation(line: 103, column: 25, scope: !244)
!247 = !DILocation(line: 105, column: 3, scope: !25)
!248 = !DILocation(line: 115, column: 14, scope: !100)
!249 = !DILocation(line: 115, column: 24, scope: !100)
!250 = !DILocation(line: 117, column: 10, scope: !251)
!251 = distinct !DILexicalBlock(scope: !100, file: !1, line: 117, column: 7)
!252 = !DILocation(line: 117, column: 7, scope: !100)
!253 = !DILocation(line: 118, column: 15, scope: !251)
!254 = !DILocation(line: 118, column: 19, scope: !251)
!255 = !DILocation(line: 118, column: 28, scope: !251)
!256 = !DILocation(line: 118, column: 12, scope: !251)
!257 = !DILocation(line: 118, column: 53, scope: !251)
!258 = !DILocation(line: 118, column: 51, scope: !251)
!259 = !DILocation(line: 118, column: 47, scope: !251)
!260 = !DILocation(line: 118, column: 45, scope: !251)
!261 = !DILocation(line: 118, column: 38, scope: !251)
!262 = !DILocation(line: 118, column: 36, scope: !251)
!263 = !DILocation(line: 120, column: 15, scope: !251)
!264 = !DILocation(line: 120, column: 19, scope: !251)
!265 = !DILocation(line: 120, column: 28, scope: !251)
!266 = !DILocation(line: 120, column: 12, scope: !251)
!267 = !DILocation(line: 120, column: 53, scope: !251)
!268 = !DILocation(line: 120, column: 51, scope: !251)
!269 = !DILocation(line: 120, column: 47, scope: !251)
!270 = !DILocation(line: 120, column: 45, scope: !251)
!271 = !DILocation(line: 120, column: 38, scope: !251)
!272 = !DILocation(line: 120, column: 36, scope: !251)
!273 = !DILocation(line: 121, column: 1, scope: !100)
!274 = !DILocation(line: 157, column: 13, scope: !106)
!275 = !DILocation(line: 157, column: 21, scope: !106)
!276 = !DILocation(line: 165, column: 7, scope: !106)
!277 = !DILocation(line: 165, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 165, column: 18)
!279 = distinct !DILexicalBlock(scope: !106, file: !1, line: 165, column: 7)
!280 = !DILocation(line: 154, column: 38, scope: !281, inlinedAt: !283)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 152, column: 3)
!282 = distinct !DILexicalBlock(scope: !169, file: !1, line: 152, column: 3)
!283 = distinct !DILocation(line: 165, column: 20, scope: !278)
!284 = !DILocation(line: 154, column: 30, scope: !281, inlinedAt: !283)
!285 = !DILocation(line: 154, column: 28, scope: !281, inlinedAt: !283)
!286 = !DILocation(line: 154, column: 40, scope: !281, inlinedAt: !283)
!287 = !DILocation(line: 154, column: 13, scope: !281, inlinedAt: !283)
!288 = !DILocation(line: 154, column: 12, scope: !281, inlinedAt: !283)
!289 = !DILocation(line: 154, column: 6, scope: !281, inlinedAt: !283)
!290 = !DILocation(line: 153, column: 54, scope: !281, inlinedAt: !283)
!291 = !DILocation(line: 153, column: 25, scope: !281, inlinedAt: !283)
!292 = !DILocation(line: 153, column: 5, scope: !281, inlinedAt: !283)
!293 = !DILocation(line: 153, column: 23, scope: !281, inlinedAt: !283)
!294 = !{!232, !232, i64 0}
!295 = !DILocation(line: 152, column: 3, scope: !282, inlinedAt: !283)
!296 = !DILocation(line: 165, column: 51, scope: !278)
!297 = !DILocation(line: 168, column: 12, scope: !106)
!298 = !DILocation(line: 159, column: 10, scope: !106)
!299 = !DILocation(line: 169, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !106, file: !1, line: 169, column: 12)
!301 = !DILocation(line: 169, column: 12, scope: !106)
!302 = !DILocation(line: 170, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 170, column: 12)
!304 = !DILocation(line: 170, column: 12, scope: !300)
!305 = !DILocation(line: 171, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 171, column: 12)
!307 = !DILocation(line: 171, column: 12, scope: !303)
!308 = !DILocation(line: 171, column: 45, scope: !306)
!309 = !DILocation(line: 171, column: 43, scope: !306)
!310 = !DILocation(line: 171, column: 33, scope: !306)
!311 = !DILocation(line: 172, column: 60, scope: !306)
!312 = !DILocation(line: 172, column: 45, scope: !306)
!313 = !DILocation(line: 172, column: 43, scope: !306)
!314 = !DILocation(line: 172, column: 33, scope: !306)
!315 = !DILocation(line: 173, column: 1, scope: !106)
!316 = !DILocation(line: 185, column: 16, scope: !113)
!317 = !DILocation(line: 185, column: 25, scope: !113)
!318 = !DILocation(line: 188, column: 9, scope: !113)
!319 = !DILocation(line: 189, column: 9, scope: !113)
!320 = !DILocation(line: 187, column: 9, scope: !113)
!321 = !DILocation(line: 191, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 191, column: 3)
!323 = distinct !DILexicalBlock(scope: !113, file: !1, line: 191, column: 3)
!324 = !DILocation(line: 191, column: 3, scope: !323)
!325 = !DILocation(line: 193, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !113, file: !1, line: 193, column: 3)
!327 = !DILocation(line: 194, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 194, column: 9)
!329 = distinct !DILexicalBlock(scope: !326, file: !1, line: 193, column: 3)
!330 = !DILocation(line: 194, column: 22, scope: !328)
!331 = !DILocation(line: 192, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !322, file: !1, line: 192, column: 9)
!333 = !{!233, !233, i64 0}
!334 = !DILocation(line: 192, column: 16, scope: !332)
!335 = !DILocation(line: 192, column: 9, scope: !322)
!336 = !DILocation(line: 196, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !113, file: !1, line: 196, column: 3)
!338 = !DILocation(line: 197, column: 18, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 197, column: 9)
!340 = distinct !DILexicalBlock(scope: !337, file: !1, line: 196, column: 3)
!341 = !DILocation(line: 197, column: 22, scope: !339)
!342 = !DILocation(line: 198, column: 36, scope: !339)
!343 = !DILocation(line: 194, column: 9, scope: !328)
!344 = !DILocation(line: 194, column: 16, scope: !328)
!345 = !DILocation(line: 194, column: 9, scope: !329)
!346 = !DILocation(line: 195, column: 27, scope: !328)
!347 = !DILocation(line: 195, column: 20, scope: !328)
!348 = !DILocation(line: 195, column: 16, scope: !328)
!349 = !DILocation(line: 195, column: 13, scope: !328)
!350 = !DILocation(line: 195, column: 7, scope: !328)
!351 = !DILocation(line: 197, column: 9, scope: !339)
!352 = !DILocation(line: 197, column: 16, scope: !339)
!353 = !DILocation(line: 197, column: 9, scope: !340)
!354 = !DILocation(line: 198, column: 27, scope: !339)
!355 = !DILocation(line: 198, column: 20, scope: !339)
!356 = !DILocation(line: 198, column: 16, scope: !339)
!357 = !DILocation(line: 198, column: 34, scope: !339)
!358 = !DILocation(line: 198, column: 7, scope: !339)
!359 = !DILocation(line: 198, column: 14, scope: !339)
!360 = !DILocation(line: 201, column: 1, scope: !113)
!361 = !DILocation(line: 217, column: 18, scope: !122)
!362 = !DILocation(line: 217, column: 28, scope: !122)
!363 = !DILocation(line: 217, column: 38, scope: !122)
!364 = !DILocation(line: 219, column: 9, scope: !122)
!365 = !DILocation(line: 220, column: 21, scope: !122)
!366 = !DILocation(line: 220, column: 15, scope: !122)
!367 = !DILocation(line: 220, column: 9, scope: !122)
!368 = !DILocation(line: 221, column: 9, scope: !122)
!369 = !DILocation(line: 224, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 224, column: 3)
!371 = distinct !DILexicalBlock(scope: !122, file: !1, line: 224, column: 3)
!372 = !DILocation(line: 224, column: 3, scope: !371)
!373 = !DILocation(line: 226, column: 15, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !1, line: 225, column: 5)
!375 = !DILocation(line: 226, column: 25, scope: !374)
!376 = !DILocation(line: 226, column: 23, scope: !374)
!377 = !DILocation(line: 227, column: 12, scope: !374)
!378 = !DILocation(line: 228, column: 12, scope: !374)
!379 = !DILocation(line: 229, column: 22, scope: !374)
!380 = !DILocation(line: 229, column: 15, scope: !374)
!381 = !DILocation(line: 229, column: 12, scope: !374)
!382 = !DILocation(line: 230, column: 22, scope: !374)
!383 = !DILocation(line: 230, column: 30, scope: !374)
!384 = !DILocation(line: 230, column: 15, scope: !374)
!385 = !DILocation(line: 230, column: 12, scope: !374)
!386 = !DILocation(line: 231, column: 22, scope: !374)
!387 = !DILocation(line: 231, column: 15, scope: !374)
!388 = !DILocation(line: 231, column: 12, scope: !374)
!389 = !DILocation(line: 224, column: 3, scope: !370)
!390 = !DILocation(line: 233, column: 10, scope: !122)
!391 = !DILocation(line: 233, column: 7, scope: !122)
!392 = !DILocation(line: 234, column: 10, scope: !122)
!393 = !DILocation(line: 234, column: 7, scope: !122)
!394 = !DILocation(line: 235, column: 10, scope: !122)
!395 = !DILocation(line: 235, column: 7, scope: !122)
!396 = !DILocation(line: 236, column: 3, scope: !122)
!397 = !DILocation(line: 257, column: 24, scope: !134)
!398 = !DILocation(line: 257, column: 35, scope: !134)
!399 = !DILocation(line: 257, column: 45, scope: !134)
!400 = !DILocation(line: 259, column: 10, scope: !134)
!401 = !DILocation(line: 261, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 261, column: 3)
!403 = distinct !DILexicalBlock(scope: !134, file: !1, line: 261, column: 3)
!404 = !DILocation(line: 261, column: 3, scope: !403)
!405 = !DILocation(line: 262, column: 24, scope: !402)
!406 = !DILocation(line: 262, column: 12, scope: !402)
!407 = !DILocation(line: 262, column: 5, scope: !402)
!408 = !DILocation(line: 262, column: 10, scope: !402)
!409 = !DILocation(line: 263, column: 3, scope: !134)
!410 = !DILocation(line: 264, column: 1, scope: !134)
!411 = !DILocation(line: 281, column: 19, scope: !142)
!412 = !DILocation(line: 285, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !142, file: !1, line: 285, column: 7)
!414 = !DILocation(line: 285, column: 13, scope: !413)
!415 = !DILocation(line: 285, column: 7, scope: !142)
!416 = !DILocation(line: 289, column: 21, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 288, column: 2)
!418 = distinct !DILexicalBlock(scope: !413, file: !1, line: 286, column: 5)
!419 = !DILocation(line: 289, column: 28, scope: !417)
!420 = !DILocation(line: 289, column: 13, scope: !417)
!421 = !DILocation(line: 292, column: 24, scope: !417)
!422 = !DILocation(line: 292, column: 23, scope: !417)
!423 = !DILocation(line: 293, column: 41, scope: !417)
!424 = !DILocation(line: 293, column: 36, scope: !417)
!425 = !DILocation(line: 293, column: 35, scope: !417)
!426 = !DILocation(line: 283, column: 17, scope: !142)
!427 = !DILocation(line: 290, column: 8, scope: !417)
!428 = !DILocation(line: 283, column: 9, scope: !142)
!429 = !DILocation(line: 291, column: 12, scope: !417)
!430 = !DILocation(line: 291, column: 9, scope: !417)
!431 = !DILocation(line: 283, column: 11, scope: !142)
!432 = !DILocation(line: 292, column: 20, scope: !417)
!433 = !DILocation(line: 292, column: 16, scope: !417)
!434 = !DILocation(line: 292, column: 14, scope: !417)
!435 = !DILocation(line: 292, column: 8, scope: !417)
!436 = !DILocation(line: 283, column: 13, scope: !142)
!437 = !DILocation(line: 293, column: 18, scope: !417)
!438 = !DILocation(line: 293, column: 16, scope: !417)
!439 = !DILocation(line: 293, column: 12, scope: !417)
!440 = !DILocation(line: 293, column: 11, scope: !417)
!441 = !DILocation(line: 293, column: 26, scope: !417)
!442 = !DILocation(line: 293, column: 25, scope: !417)
!443 = !DILocation(line: 293, column: 61, scope: !417)
!444 = !DILocation(line: 293, column: 57, scope: !417)
!445 = !DILocation(line: 293, column: 50, scope: !417)
!446 = !DILocation(line: 293, column: 49, scope: !417)
!447 = !DILocation(line: 293, column: 8, scope: !417)
!448 = !DILocation(line: 283, column: 15, scope: !142)
!449 = !DILocation(line: 294, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !417, file: !1, line: 294, column: 8)
!451 = !DILocation(line: 294, column: 24, scope: !450)
!452 = !DILocation(line: 294, column: 21, scope: !450)
!453 = !DILocation(line: 294, column: 8, scope: !417)
!454 = !DILocation(line: 298, column: 18, scope: !455)
!455 = distinct !DILexicalBlock(scope: !413, file: !1, line: 298, column: 12)
!456 = !DILocation(line: 298, column: 12, scope: !413)
!457 = !DILocation(line: 303, column: 19, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 301, column: 2)
!459 = distinct !DILexicalBlock(scope: !455, file: !1, line: 299, column: 5)
!460 = !DILocation(line: 303, column: 12, scope: !458)
!461 = !DILocation(line: 307, column: 40, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 307, column: 12)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 305, column: 6)
!464 = distinct !DILexicalBlock(scope: !458, file: !1, line: 304, column: 8)
!465 = !DILocation(line: 312, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !1, line: 311, column: 6)
!467 = !DILocation(line: 302, column: 8, scope: !458)
!468 = !DILocation(line: 303, column: 8, scope: !458)
!469 = !DILocation(line: 303, column: 9, scope: !458)
!470 = !DILocation(line: 304, column: 10, scope: !464)
!471 = !DILocation(line: 304, column: 8, scope: !458)
!472 = !DILocation(line: 306, column: 20, scope: !463)
!473 = !DILocation(line: 306, column: 19, scope: !463)
!474 = !DILocation(line: 306, column: 22, scope: !463)
!475 = !DILocation(line: 306, column: 38, scope: !463)
!476 = !DILocation(line: 306, column: 13, scope: !463)
!477 = !DILocation(line: 306, column: 12, scope: !463)
!478 = !DILocation(line: 307, column: 12, scope: !462)
!479 = !DILocation(line: 307, column: 32, scope: !462)
!480 = !DILocation(line: 307, column: 28, scope: !462)
!481 = !DILocation(line: 307, column: 25, scope: !462)
!482 = !DILocation(line: 307, column: 12, scope: !463)
!483 = !DILocation(line: 304, column: 8, scope: !464)
!484 = !DILocation(line: 312, column: 12, scope: !466)
!485 = !DILocation(line: 313, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !466, file: !1, line: 313, column: 12)
!487 = !DILocation(line: 313, column: 32, scope: !486)
!488 = !DILocation(line: 313, column: 28, scope: !486)
!489 = !DILocation(line: 313, column: 25, scope: !486)
!490 = !DILocation(line: 313, column: 12, scope: !466)
!491 = !DILocation(line: 318, column: 3, scope: !142)
!492 = !DILocation(line: 320, column: 3, scope: !142)
!493 = !DILocation(line: 321, column: 1, scope: !142)
!494 = !DILocation(line: 330, column: 26, scope: !152)
!495 = !DILocation(line: 330, column: 33, scope: !152)
!496 = !DILocation(line: 330, column: 40, scope: !152)
!497 = !DILocation(line: 330, column: 50, scope: !152)
!498 = !DILocation(line: 334, column: 3, scope: !152)
!499 = !DILocation(line: 332, column: 7, scope: !152)
!500 = !DILocation(line: 335, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 335, column: 3)
!502 = distinct !DILexicalBlock(scope: !152, file: !1, line: 335, column: 3)
!503 = !DILocation(line: 335, column: 3, scope: !502)
!504 = !DILocation(line: 336, column: 10, scope: !501)
!505 = !DILocation(line: 336, column: 5, scope: !501)
!506 = !DILocation(line: 336, column: 24, scope: !501)
!507 = !DILocation(line: 335, column: 23, scope: !501)
!508 = !DILocation(line: 337, column: 1, scope: !152)
!509 = !DILocation(line: 350, column: 29, scope: !161)
!510 = !DILocation(line: 350, column: 36, scope: !161)
!511 = !DILocation(line: 350, column: 46, scope: !161)
!512 = !DILocation(line: 353, column: 9, scope: !161)
!513 = !DILocation(line: 352, column: 9, scope: !161)
!514 = !DILocation(line: 354, column: 7, scope: !161)
!515 = !DILocation(line: 357, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 357, column: 3)
!517 = distinct !DILexicalBlock(scope: !161, file: !1, line: 357, column: 3)
!518 = !DILocation(line: 357, column: 3, scope: !517)
!519 = !DILocation(line: 358, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 358, column: 9)
!521 = !DILocation(line: 358, column: 14, scope: !520)
!522 = !DILocation(line: 358, column: 9, scope: !516)
!523 = !DILocation(line: 360, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !1, line: 359, column: 7)
!525 = !DILocation(line: 360, column: 19, scope: !524)
!526 = !DILocation(line: 360, column: 27, scope: !524)
!527 = !DILocation(line: 360, column: 25, scope: !524)
!528 = !DILocation(line: 360, column: 7, scope: !524)
!529 = !DILocation(line: 361, column: 10, scope: !524)
!530 = !DILocation(line: 361, column: 7, scope: !524)
!531 = !DILocation(line: 362, column: 10, scope: !524)
!532 = !DILocation(line: 362, column: 7, scope: !524)
!533 = !DILocation(line: 363, column: 7, scope: !524)
!534 = !DILocation(line: 364, column: 18, scope: !161)
!535 = !DILocation(line: 364, column: 11, scope: !161)
!536 = !DILocation(line: 364, column: 8, scope: !161)
!537 = !DILocation(line: 365, column: 3, scope: !161)
