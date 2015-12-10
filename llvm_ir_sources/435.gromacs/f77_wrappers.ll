; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/f77_wrappers.c'
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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !13, metadata !216), !dbg !217
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !218
  br i1 %1, label %2, label %5, !dbg !219

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #6, !dbg !220
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !221
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !219
  ret i32 %7, !dbg !222
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !19, metadata !216), !dbg !223
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !224
  br i1 %1, label %2, label %5, !dbg !225

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #6, !dbg !226
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !227
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !225
  ret i32 %7, !dbg !228
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !25, metadata !216), !dbg !229
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !230
  br i1 %1, label %2, label %5, !dbg !231

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6, !dbg !232
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !233
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !231
  ret i32 %7, !dbg !234
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !28, metadata !216), !dbg !235
  %1 = tail call float @llvm.fabs.f32(float %__x) #6, !dbg !236
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !237
  %3 = zext i1 %2 to i32, !dbg !237
  ret i32 %3, !dbg !238
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !31, metadata !216), !dbg !239
  %1 = tail call double @llvm.fabs.f64(double %__x) #6, !dbg !240
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !241
  %3 = zext i1 %2 to i32, !dbg !241
  ret i32 %3, !dbg !242
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !34, metadata !216), !dbg !243
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6, !dbg !244
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !245
  %3 = zext i1 %2 to i32, !dbg !245
  ret i32 %3, !dbg !246
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !37, metadata !216), !dbg !247
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !248
  %2 = zext i1 %1 to i32, !dbg !248
  ret i32 %2, !dbg !249
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !40, metadata !216), !dbg !250
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !251
  %2 = zext i1 %1 to i32, !dbg !251
  ret i32 %2, !dbg !252
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !43, metadata !216), !dbg !253
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !254
  %2 = zext i1 %1 to i32, !dbg !254
  ret i32 %2, !dbg !255
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !46, metadata !216), !dbg !256
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !47, metadata !216), !dbg !257
  %1 = bitcast float %__x to i32, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !47, metadata !216), !dbg !257
  %2 = lshr i32 %1, 31, !dbg !259
  ret i32 %2, !dbg !260
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !55, metadata !216), !dbg !261
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !56, metadata !216), !dbg !262
  %1 = bitcast double %__x to i64, !dbg !263
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !56, metadata !216), !dbg !262
  %2 = lshr i64 %1, 63, !dbg !264
  %3 = trunc i64 %2 to i32, !dbg !265
  ret i32 %3, !dbg !266
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !64, metadata !216), !dbg !267
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !65, metadata !216), !dbg !268
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !65, metadata !216), !dbg !268
  %1 = bitcast x86_fp80 %__x to i80, !dbg !269
  %2 = lshr i80 %1, 79, !dbg !269
  %3 = trunc i80 %2 to i32, !dbg !270
  ret i32 %3, !dbg !271
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !77, metadata !216), !dbg !272
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !13, metadata !216) #7, !dbg !273
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !275
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !276
  %or.cond = and i1 %1, %3, !dbg !277
  br i1 %or.cond, label %4, label %.critedge, !dbg !277

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !278
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !279
  ret i32 %7, !dbg !280
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !80, metadata !216), !dbg !281
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !19, metadata !216) #7, !dbg !282
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !284
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !285
  %or.cond = and i1 %1, %3, !dbg !286
  br i1 %or.cond, label %4, label %.critedge, !dbg !286

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !287
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !288
  ret i32 %7, !dbg !289
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !83, metadata !216), !dbg !290
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !25, metadata !216) #7, !dbg !291
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !293
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !294
  %or.cond = and i1 %1, %3, !dbg !295
  br i1 %or.cond, label %4, label %.critedge, !dbg !295

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !296
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !297
  ret i32 %7, !dbg !298
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !89, metadata !216), !dbg !299
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !90, metadata !216), !dbg !300
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !91, metadata !216), !dbg !301
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !92, metadata !216), !dbg !302
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8, !dbg !303
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !92, metadata !216), !dbg !302
  %2 = extractelement <2 x float> %1, i32 0, !dbg !304
  store float %2, float* %__sinp, align 4, !dbg !305, !tbaa !306
  %3 = extractelement <2 x float> %1, i32 1, !dbg !310
  store float %3, float* %__cosp, align 4, !dbg !311, !tbaa !306
  ret void, !dbg !312
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !103, metadata !216), !dbg !313
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !104, metadata !216), !dbg !314
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !105, metadata !216), !dbg !315
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !106, metadata !216), !dbg !316
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8, !dbg !317
  %2 = extractvalue { double, double } %1, 0, !dbg !317
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !106, metadata !318), !dbg !316
  %3 = extractvalue { double, double } %1, 1, !dbg !317
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !106, metadata !319), !dbg !316
  store double %2, double* %__sinp, align 8, !dbg !320, !tbaa !321
  store double %3, double* %__cosp, align 8, !dbg !323, !tbaa !321
  ret void, !dbg !324
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !114, metadata !216), !dbg !325
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !115, metadata !216), !dbg !326
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !116, metadata !216), !dbg !327
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !117, metadata !216), !dbg !328
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8, !dbg !329
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !117, metadata !216), !dbg !328
  %2 = extractelement <2 x float> %1, i32 0, !dbg !330
  store float %2, float* %__sinp, align 4, !dbg !331, !tbaa !306
  %3 = extractelement <2 x float> %1, i32 1, !dbg !332
  store float %3, float* %__cosp, align 4, !dbg !333, !tbaa !306
  ret void, !dbg !334
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !120, metadata !216), !dbg !335
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !121, metadata !216), !dbg !336
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !122, metadata !216), !dbg !337
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !123, metadata !216), !dbg !338
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8, !dbg !339
  %2 = extractvalue { double, double } %1, 0, !dbg !339
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !123, metadata !318), !dbg !338
  %3 = extractvalue { double, double } %1, 1, !dbg !339
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !123, metadata !319), !dbg !338
  store double %2, double* %__sinp, align 8, !dbg !340, !tbaa !321
  store double %3, double* %__cosp, align 8, !dbg !341, !tbaa !321
  ret void, !dbg !342
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #2 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !190, metadata !216), !dbg !343
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !191, metadata !216), !dbg !344
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !345
  %2 = load i32* %1, align 4, !dbg !347, !tbaa !348
  %3 = add nsw i32 %2, -1, !dbg !347
  store i32 %3, i32* %1, align 4, !dbg !347, !tbaa !348
  %4 = icmp sgt i32 %2, 0, !dbg !355
  br i1 %4, label %._crit_edge, label %5, !dbg !356

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !357
  br label %10, !dbg !356

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !358
  %7 = load i32* %6, align 4, !dbg !358, !tbaa !359
  %8 = icmp sle i32 %2, %7, !dbg !360
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !361
  %or.cond = or i1 %9, %8, !dbg !362
  br i1 %or.cond, label %15, label %10, !dbg !362

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !357
  %11 = trunc i32 %_c to i8, !dbg !363
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !364
  %13 = load i8** %12, align 8, !dbg !365, !tbaa !366
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !365
  store i8* %14, i8** %12, align 8, !dbg !365, !tbaa !366
  store i8 %11, i8* %13, align 1, !dbg !367, !tbaa !368
  br label %17, !dbg !369

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !370
  br label %17, !dbg !371

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !372
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !197, metadata !216), !dbg !373
  %1 = icmp sgt i32 %__signo, 32, !dbg !374
  br i1 %1, label %5, label %2, !dbg !375

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !376
  %4 = shl i32 1, %3, !dbg !377
  br label %5, !dbg !375

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !375
  ret i32 %6, !dbg !378
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @cerfc_(float* nocapture readonly %x) #4 {
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !205, metadata !216), !dbg !379
  %1 = load float* %x, align 4, !dbg !380, !tbaa !306
  %2 = fpext float %1 to double, !dbg !380
  %3 = tail call double @erfc(double %2) #9, !dbg !381
  %4 = fptrunc double %3 to float, !dbg !381
  ret float %4, !dbg !382
}

; Function Attrs: nounwind optsize readnone
declare double @erfc(double) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @cpow_(float* nocapture readonly %x, float* nocapture readonly %y) #4 {
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !210, metadata !216), !dbg !383
  tail call void @llvm.dbg.value(metadata float* %y, i64 0, metadata !211, metadata !216), !dbg !384
  %1 = load float* %x, align 4, !dbg !385, !tbaa !306
  %2 = fpext float %1 to double, !dbg !385
  %3 = load float* %y, align 4, !dbg !386, !tbaa !306
  %4 = fpext float %3 to double, !dbg !386
  %5 = tail call double @llvm.pow.f64(double %2, double %4), !dbg !387
  %6 = fptrunc double %5 to float, !dbg !387
  ret float %6, !dbg !388
}

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!212, !213, !214}
!llvm.ident = !{!215}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/f77_wrappers.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !14, !20, !26, !29, !32, !35, !38, !41, !44, !53, !62, !75, !78, !81, !84, !98, !112, !118, !124, !192, !198, !206}
!7 = !DISubprogram(name: "__inline_isfinitef", scope: !8, file: !8, line: 204, type: !9, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !12)
!8 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!4, !11}
!11 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!12 = !{!13}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !7, file: !8, line: 204, type: !11)
!14 = !DISubprogram(name: "__inline_isfinited", scope: !8, file: !8, line: 207, type: !15, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!4, !17}
!17 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!18 = !{!19}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !14, file: !8, line: 207, type: !17)
!20 = !DISubprogram(name: "__inline_isfinitel", scope: !8, file: !8, line: 210, type: !21, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!4, !23}
!23 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!24 = !{!25}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !20, file: !8, line: 210, type: !23)
!26 = !DISubprogram(name: "__inline_isinff", scope: !8, file: !8, line: 213, type: !9, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !27)
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !26, file: !8, line: 213, type: !11)
!29 = !DISubprogram(name: "__inline_isinfd", scope: !8, file: !8, line: 216, type: !15, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !30)
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !29, file: !8, line: 216, type: !17)
!32 = !DISubprogram(name: "__inline_isinfl", scope: !8, file: !8, line: 219, type: !21, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !32, file: !8, line: 219, type: !23)
!35 = !DISubprogram(name: "__inline_isnanf", scope: !8, file: !8, line: 222, type: !9, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !35, file: !8, line: 222, type: !11)
!38 = !DISubprogram(name: "__inline_isnand", scope: !8, file: !8, line: 225, type: !15, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !39)
!39 = !{!40}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !38, file: !8, line: 225, type: !17)
!41 = !DISubprogram(name: "__inline_isnanl", scope: !8, file: !8, line: 228, type: !21, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !42)
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !41, file: !8, line: 228, type: !23)
!44 = !DISubprogram(name: "__inline_signbitf", scope: !8, file: !8, line: 231, type: !9, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !45)
!45 = !{!46, !47}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !44, file: !8, line: 231, type: !11)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !44, file: !8, line: 232, type: !48)
!48 = !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !8, line: 232, size: 32, align: 32, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !48, file: !8, line: 232, baseType: !11, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !48, file: !8, line: 232, baseType: !52, size: 32, align: 32)
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !DISubprogram(name: "__inline_signbitd", scope: !8, file: !8, line: 236, type: !15, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !54)
!54 = !{!55, !56}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !53, file: !8, line: 236, type: !17)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !53, file: !8, line: 237, type: !57)
!57 = !DICompositeType(tag: DW_TAG_union_type, scope: !53, file: !8, line: 237, size: 64, align: 64, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !57, file: !8, line: 237, baseType: !17, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !57, file: !8, line: 237, baseType: !61, size: 64, align: 64)
!61 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!62 = !DISubprogram(name: "__inline_signbitl", scope: !8, file: !8, line: 242, type: !21, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !62, file: !8, line: 242, type: !23)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !62, file: !8, line: 246, type: !66)
!66 = !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !8, line: 243, size: 128, align: 128, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !66, file: !8, line: 244, baseType: !23, size: 128, align: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !66, file: !8, line: 245, baseType: !70, size: 128, align: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, scope: !66, file: !8, line: 245, size: 128, align: 64, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !70, file: !8, line: 245, baseType: !61, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !70, file: !8, line: 245, baseType: !74, size: 16, align: 16, offset: 64)
!74 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!75 = !DISubprogram(name: "__inline_isnormalf", scope: !8, file: !8, line: 257, type: !9, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !76)
!76 = !{!77}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !75, file: !8, line: 257, type: !11)
!78 = !DISubprogram(name: "__inline_isnormald", scope: !8, file: !8, line: 260, type: !15, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !79)
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !78, file: !8, line: 260, type: !17)
!81 = !DISubprogram(name: "__inline_isnormall", scope: !8, file: !8, line: 263, type: !21, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !82)
!82 = !{!83}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !81, file: !8, line: 263, type: !23)
!84 = !DISubprogram(name: "__sincosf", scope: !8, file: !8, line: 642, type: !85, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !88)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !11, !87, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !84, file: !8, line: 642, type: !11)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !84, file: !8, line: 642, type: !87)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !84, file: !8, line: 642, type: !87)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !84, file: !8, line: 643, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !8, line: 634, size: 64, align: 32, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !94, file: !8, line: 634, baseType: !11, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !94, file: !8, line: 634, baseType: !11, size: 32, align: 32, offset: 32)
!98 = !DISubprogram(name: "__sincos", scope: !8, file: !8, line: 647, type: !99, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !102)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !17, !101, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!102 = !{!103, !104, !105, !106}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !98, file: !8, line: 647, type: !17)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !98, file: !8, line: 647, type: !101)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !98, file: !8, line: 647, type: !101)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !98, file: !8, line: 648, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !8, line: 635, size: 128, align: 64, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !108, file: !8, line: 635, baseType: !17, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !108, file: !8, line: 635, baseType: !17, size: 64, align: 64, offset: 64)
!112 = !DISubprogram(name: "__sincospif", scope: !8, file: !8, line: 652, type: !85, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !112, file: !8, line: 652, type: !11)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !112, file: !8, line: 652, type: !87)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !112, file: !8, line: 652, type: !87)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !112, file: !8, line: 653, type: !93)
!118 = !DISubprogram(name: "__sincospi", scope: !8, file: !8, line: 657, type: !99, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !118, file: !8, line: 657, type: !17)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !118, file: !8, line: 657, type: !101)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !118, file: !8, line: 657, type: !101)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !118, file: !8, line: 658, type: !107)
!124 = !DISubprogram(name: "__sputc", scope: !125, file: !125, line: 348, type: !126, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !189)
!125 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!126 = !DISubroutineType(types: !127)
!127 = !{!4, !4, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !125, line: 153, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !125, line: 122, size: 1216, align: 64, elements: !131)
!131 = !{!132, !135, !136, !137, !139, !140, !145, !146, !148, !152, !157, !167, !173, !174, !177, !178, !182, !186, !187, !188}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !130, file: !125, line: 123, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !130, file: !125, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !130, file: !125, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !130, file: !125, line: 126, baseType: !138, size: 16, align: 16, offset: 128)
!138 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !130, file: !125, line: 127, baseType: !138, size: 16, align: 16, offset: 144)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !130, file: !125, line: 128, baseType: !141, size: 128, align: 64, offset: 192)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !125, line: 88, size: 128, align: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !141, file: !125, line: 89, baseType: !133, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !141, file: !125, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !130, file: !125, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !130, file: !125, line: 132, baseType: !147, size: 64, align: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !130, file: !125, line: 133, baseType: !149, size: 64, align: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!4, !147}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !130, file: !125, line: 134, baseType: !153, size: 64, align: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!4, !147, !156, !4}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !130, file: !125, line: 135, baseType: !158, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !147, !161, !4}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !125, line: 77, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !163, line: 71, baseType: !164)
!163 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!166 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !130, file: !125, line: 136, baseType: !168, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!4, !147, !171, !4}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !130, file: !125, line: 139, baseType: !141, size: 128, align: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !130, file: !125, line: 140, baseType: !175, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !125, line: 94, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !130, file: !125, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !130, file: !125, line: 144, baseType: !179, size: 24, align: 8, offset: 928)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !130, file: !125, line: 145, baseType: !183, size: 8, align: 8, offset: 952)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !130, file: !125, line: 148, baseType: !141, size: 128, align: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !130, file: !125, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !130, file: !125, line: 152, baseType: !161, size: 64, align: 64, offset: 1152)
!189 = !{!190, !191}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !124, file: !125, line: 348, type: !4)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !124, file: !125, line: 348, type: !128)
!192 = !DISubprogram(name: "__sigbits", scope: !193, file: !193, line: 114, type: !194, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !196)
!193 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!194 = !DISubroutineType(types: !195)
!195 = !{!4, !4}
!196 = !{!197}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !192, file: !193, line: 114, type: !4)
!198 = !DISubprogram(name: "cerfc_", scope: !1, file: !1, line: 46, type: !199, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: float (float*)* @cerfc_, variables: !204)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !203}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !202, line: 87, baseType: !11)
!202 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!204 = !{!205}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !198, file: !1, line: 46, type: !203)
!206 = !DISubprogram(name: "cpow_", scope: !1, file: !1, line: 51, type: !207, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, float*)* @cpow_, variables: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!201, !203, !203}
!209 = !{!210, !211}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !206, file: !1, line: 51, type: !203)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !206, file: !1, line: 51, type: !203)
!212 = !{i32 2, !"Dwarf Version", i32 2}
!213 = !{i32 2, !"Debug Info Version", i32 700000003}
!214 = !{i32 1, !"PIC Level", i32 2}
!215 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!216 = !DIExpression()
!217 = !DILocation(line: 204, column: 53, scope: !7)
!218 = !DILocation(line: 205, column: 16, scope: !7)
!219 = !DILocation(line: 205, column: 23, scope: !7)
!220 = !DILocation(line: 205, column: 26, scope: !7)
!221 = !DILocation(line: 205, column: 47, scope: !7)
!222 = !DILocation(line: 205, column: 5, scope: !7)
!223 = !DILocation(line: 207, column: 54, scope: !14)
!224 = !DILocation(line: 208, column: 16, scope: !14)
!225 = !DILocation(line: 208, column: 23, scope: !14)
!226 = !DILocation(line: 208, column: 26, scope: !14)
!227 = !DILocation(line: 208, column: 46, scope: !14)
!228 = !DILocation(line: 208, column: 5, scope: !14)
!229 = !DILocation(line: 210, column: 59, scope: !20)
!230 = !DILocation(line: 211, column: 16, scope: !20)
!231 = !DILocation(line: 211, column: 23, scope: !20)
!232 = !DILocation(line: 211, column: 26, scope: !20)
!233 = !DILocation(line: 211, column: 47, scope: !20)
!234 = !DILocation(line: 211, column: 5, scope: !20)
!235 = !DILocation(line: 213, column: 50, scope: !26)
!236 = !DILocation(line: 214, column: 12, scope: !26)
!237 = !DILocation(line: 214, column: 33, scope: !26)
!238 = !DILocation(line: 214, column: 5, scope: !26)
!239 = !DILocation(line: 216, column: 51, scope: !29)
!240 = !DILocation(line: 217, column: 12, scope: !29)
!241 = !DILocation(line: 217, column: 32, scope: !29)
!242 = !DILocation(line: 217, column: 5, scope: !29)
!243 = !DILocation(line: 219, column: 56, scope: !32)
!244 = !DILocation(line: 220, column: 12, scope: !32)
!245 = !DILocation(line: 220, column: 33, scope: !32)
!246 = !DILocation(line: 220, column: 5, scope: !32)
!247 = !DILocation(line: 222, column: 50, scope: !35)
!248 = !DILocation(line: 223, column: 16, scope: !35)
!249 = !DILocation(line: 223, column: 5, scope: !35)
!250 = !DILocation(line: 225, column: 51, scope: !38)
!251 = !DILocation(line: 226, column: 16, scope: !38)
!252 = !DILocation(line: 226, column: 5, scope: !38)
!253 = !DILocation(line: 228, column: 56, scope: !41)
!254 = !DILocation(line: 229, column: 16, scope: !41)
!255 = !DILocation(line: 229, column: 5, scope: !41)
!256 = !DILocation(line: 231, column: 52, scope: !44)
!257 = !DILocation(line: 232, column: 44, scope: !44)
!258 = !DILocation(line: 233, column: 13, scope: !44)
!259 = !DILocation(line: 234, column: 26, scope: !44)
!260 = !DILocation(line: 234, column: 5, scope: !44)
!261 = !DILocation(line: 236, column: 53, scope: !53)
!262 = !DILocation(line: 237, column: 51, scope: !53)
!263 = !DILocation(line: 238, column: 13, scope: !53)
!264 = !DILocation(line: 239, column: 26, scope: !53)
!265 = !DILocation(line: 239, column: 12, scope: !53)
!266 = !DILocation(line: 239, column: 5, scope: !53)
!267 = !DILocation(line: 242, column: 58, scope: !62)
!268 = !DILocation(line: 246, column: 7, scope: !62)
!269 = !DILocation(line: 248, column: 26, scope: !62)
!270 = !DILocation(line: 248, column: 33, scope: !62)
!271 = !DILocation(line: 248, column: 5, scope: !62)
!272 = !DILocation(line: 257, column: 53, scope: !75)
!273 = !DILocation(line: 204, column: 53, scope: !7, inlinedAt: !274)
!274 = distinct !DILocation(line: 258, column: 12, scope: !75)
!275 = !DILocation(line: 205, column: 16, scope: !7, inlinedAt: !274)
!276 = !DILocation(line: 205, column: 47, scope: !7, inlinedAt: !274)
!277 = !DILocation(line: 205, column: 23, scope: !7, inlinedAt: !274)
!278 = !DILocation(line: 258, column: 60, scope: !75)
!279 = !DILocation(line: 258, column: 36, scope: !75)
!280 = !DILocation(line: 258, column: 5, scope: !75)
!281 = !DILocation(line: 260, column: 54, scope: !78)
!282 = !DILocation(line: 207, column: 54, scope: !14, inlinedAt: !283)
!283 = distinct !DILocation(line: 261, column: 12, scope: !78)
!284 = !DILocation(line: 208, column: 16, scope: !14, inlinedAt: !283)
!285 = !DILocation(line: 208, column: 46, scope: !14, inlinedAt: !283)
!286 = !DILocation(line: 208, column: 23, scope: !14, inlinedAt: !283)
!287 = !DILocation(line: 261, column: 59, scope: !78)
!288 = !DILocation(line: 261, column: 36, scope: !78)
!289 = !DILocation(line: 261, column: 5, scope: !78)
!290 = !DILocation(line: 263, column: 59, scope: !81)
!291 = !DILocation(line: 210, column: 59, scope: !20, inlinedAt: !292)
!292 = distinct !DILocation(line: 264, column: 12, scope: !81)
!293 = !DILocation(line: 211, column: 16, scope: !20, inlinedAt: !292)
!294 = !DILocation(line: 211, column: 47, scope: !20, inlinedAt: !292)
!295 = !DILocation(line: 211, column: 23, scope: !20, inlinedAt: !292)
!296 = !DILocation(line: 264, column: 60, scope: !81)
!297 = !DILocation(line: 264, column: 36, scope: !81)
!298 = !DILocation(line: 264, column: 5, scope: !81)
!299 = !DILocation(line: 642, column: 45, scope: !84)
!300 = !DILocation(line: 642, column: 57, scope: !84)
!301 = !DILocation(line: 642, column: 72, scope: !84)
!302 = !DILocation(line: 643, column: 27, scope: !84)
!303 = !DILocation(line: 643, column: 37, scope: !84)
!304 = !DILocation(line: 644, column: 23, scope: !84)
!305 = !DILocation(line: 644, column: 13, scope: !84)
!306 = !{!307, !307, i64 0}
!307 = !{!"float", !308, i64 0}
!308 = !{!"omnipotent char", !309, i64 0}
!309 = !{!"Simple C/C++ TBAA"}
!310 = !DILocation(line: 644, column: 51, scope: !84)
!311 = !DILocation(line: 644, column: 41, scope: !84)
!312 = !DILocation(line: 645, column: 1, scope: !84)
!313 = !DILocation(line: 647, column: 45, scope: !98)
!314 = !DILocation(line: 647, column: 58, scope: !98)
!315 = !DILocation(line: 647, column: 74, scope: !98)
!316 = !DILocation(line: 648, column: 28, scope: !98)
!317 = !DILocation(line: 648, column: 38, scope: !98)
!318 = !DIExpression(DW_OP_bit_piece, 0, 64)
!319 = !DIExpression(DW_OP_bit_piece, 64, 64)
!320 = !DILocation(line: 649, column: 13, scope: !98)
!321 = !{!322, !322, i64 0}
!322 = !{!"double", !308, i64 0}
!323 = !DILocation(line: 649, column: 41, scope: !98)
!324 = !DILocation(line: 650, column: 1, scope: !98)
!325 = !DILocation(line: 652, column: 47, scope: !112)
!326 = !DILocation(line: 652, column: 59, scope: !112)
!327 = !DILocation(line: 652, column: 74, scope: !112)
!328 = !DILocation(line: 653, column: 27, scope: !112)
!329 = !DILocation(line: 653, column: 37, scope: !112)
!330 = !DILocation(line: 654, column: 23, scope: !112)
!331 = !DILocation(line: 654, column: 13, scope: !112)
!332 = !DILocation(line: 654, column: 51, scope: !112)
!333 = !DILocation(line: 654, column: 41, scope: !112)
!334 = !DILocation(line: 655, column: 1, scope: !112)
!335 = !DILocation(line: 657, column: 47, scope: !118)
!336 = !DILocation(line: 657, column: 60, scope: !118)
!337 = !DILocation(line: 657, column: 76, scope: !118)
!338 = !DILocation(line: 658, column: 28, scope: !118)
!339 = !DILocation(line: 658, column: 38, scope: !118)
!340 = !DILocation(line: 659, column: 13, scope: !118)
!341 = !DILocation(line: 659, column: 41, scope: !118)
!342 = !DILocation(line: 660, column: 1, scope: !118)
!343 = !DILocation(line: 348, column: 40, scope: !124)
!344 = !DILocation(line: 348, column: 50, scope: !124)
!345 = !DILocation(line: 349, column: 12, scope: !346)
!346 = distinct !DILexicalBlock(scope: !124, file: !125, line: 349, column: 6)
!347 = !DILocation(line: 349, column: 6, scope: !346)
!348 = !{!349, !351, i64 12}
!349 = !{!"__sFILE", !350, i64 0, !351, i64 8, !351, i64 12, !352, i64 16, !352, i64 18, !353, i64 24, !351, i64 40, !350, i64 48, !350, i64 56, !350, i64 64, !350, i64 72, !350, i64 80, !353, i64 88, !350, i64 104, !351, i64 112, !308, i64 116, !308, i64 119, !353, i64 120, !351, i64 136, !354, i64 144}
!350 = !{!"any pointer", !308, i64 0}
!351 = !{!"int", !308, i64 0}
!352 = !{!"short", !308, i64 0}
!353 = !{!"__sbuf", !350, i64 0, !351, i64 8}
!354 = !{!"long long", !308, i64 0}
!355 = !DILocation(line: 349, column: 15, scope: !346)
!356 = !DILocation(line: 349, column: 20, scope: !346)
!357 = !DILocation(line: 350, column: 10, scope: !346)
!358 = !DILocation(line: 349, column: 38, scope: !346)
!359 = !{!349, !351, i64 40}
!360 = !DILocation(line: 349, column: 31, scope: !346)
!361 = !DILocation(line: 349, column: 59, scope: !346)
!362 = !DILocation(line: 349, column: 47, scope: !346)
!363 = !DILocation(line: 350, column: 23, scope: !346)
!364 = !DILocation(line: 350, column: 16, scope: !346)
!365 = !DILocation(line: 350, column: 18, scope: !346)
!366 = !{!349, !350, i64 0}
!367 = !DILocation(line: 350, column: 21, scope: !346)
!368 = !{!308, !308, i64 0}
!369 = !DILocation(line: 350, column: 3, scope: !346)
!370 = !DILocation(line: 352, column: 11, scope: !346)
!371 = !DILocation(line: 352, column: 3, scope: !346)
!372 = !DILocation(line: 353, column: 1, scope: !124)
!373 = !DILocation(line: 114, column: 15, scope: !192)
!374 = !DILocation(line: 116, column: 20, scope: !192)
!375 = !DILocation(line: 116, column: 12, scope: !192)
!376 = !DILocation(line: 116, column: 57, scope: !192)
!377 = !DILocation(line: 116, column: 45, scope: !192)
!378 = !DILocation(line: 116, column: 5, scope: !192)
!379 = !DILocation(line: 46, column: 34, scope: !198)
!380 = !DILocation(line: 48, column: 14, scope: !198)
!381 = !DILocation(line: 48, column: 9, scope: !198)
!382 = !DILocation(line: 48, column: 2, scope: !198)
!383 = !DILocation(line: 51, column: 32, scope: !206)
!384 = !DILocation(line: 51, column: 40, scope: !206)
!385 = !DILocation(line: 53, column: 13, scope: !206)
!386 = !DILocation(line: 53, column: 16, scope: !206)
!387 = !DILocation(line: 53, column: 9, scope: !206)
!388 = !DILocation(line: 53, column: 2, scope: !206)
