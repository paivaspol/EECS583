; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/vectorops.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @DSet(double* nocapture %vec, i32 %n, double %value) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !13, metadata !206), !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !14, metadata !206), !dbg !208
  tail call void @llvm.dbg.value(metadata double %value, i64 0, metadata !15, metadata !206), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !16, metadata !206), !dbg !210
  %1 = icmp sgt i32 %n, 0, !dbg !211
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !214

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !214
  br label %3, !dbg !214

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !215
  store double %value, double* %4, align 8, !dbg !216, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !214
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !214
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !214
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !214

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !221
}

; Function Attrs: nounwind optsize ssp uwtable
define void @FSet(float* nocapture %vec, i32 %n, float %value) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !22, metadata !206), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !23, metadata !206), !dbg !223
  tail call void @llvm.dbg.value(metadata float %value, i64 0, metadata !24, metadata !206), !dbg !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !206), !dbg !225
  %1 = icmp sgt i32 %n, 0, !dbg !226
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !229

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !229
  br label %3, !dbg !229

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !230
  store float %value, float* %4, align 4, !dbg !231, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !229
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !229
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !229
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !229

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !234
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DScale(double* nocapture %vec, i32 %n, double %scale) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !28, metadata !206), !dbg !235
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !29, metadata !206), !dbg !236
  tail call void @llvm.dbg.value(metadata double %scale, i64 0, metadata !30, metadata !206), !dbg !237
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !206), !dbg !238
  %1 = icmp sgt i32 %n, 0, !dbg !239
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !242

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !242
  br label %3, !dbg !242

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !243
  %5 = load double* %4, align 8, !dbg !244, !tbaa !217
  %6 = fmul double %5, %scale, !dbg !244
  store double %6, double* %4, align 8, !dbg !244, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !242
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !242
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !242
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !242

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !245
}

; Function Attrs: nounwind optsize ssp uwtable
define void @FScale(float* nocapture %vec, i32 %n, float %scale) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !34, metadata !206), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !35, metadata !206), !dbg !247
  tail call void @llvm.dbg.value(metadata float %scale, i64 0, metadata !36, metadata !206), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !206), !dbg !249
  %1 = icmp sgt i32 %n, 0, !dbg !250
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !253

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !253
  br label %3, !dbg !253

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !254
  %5 = load float* %4, align 4, !dbg !255, !tbaa !232
  %6 = fmul float %5, %scale, !dbg !255
  store float %6, float* %4, align 4, !dbg !255, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !253
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !253
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !253
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !253

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !256
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @DSum(double* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !42, metadata !206), !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !43, metadata !206), !dbg !258
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !44, metadata !206), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !206), !dbg !260
  %1 = icmp sgt i32 %n, 0, !dbg !261
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !264

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !264
  br label %3, !dbg !264

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %sum.01 = phi double [ 0.000000e+00, %.lr.ph ], [ %6, %3 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !265
  %5 = load double* %4, align 8, !dbg !265, !tbaa !217
  %6 = fadd double %sum.01, %5, !dbg !266
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !44, metadata !206), !dbg !259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !264
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !264
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !264
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !264

._crit_edge:                                      ; preds = %3, %0
  %sum.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %6, %3 ]
  ret double %sum.0.lcssa, !dbg !267
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @FSum(float* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !50, metadata !206), !dbg !268
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !51, metadata !206), !dbg !269
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !52, metadata !206), !dbg !270
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !206), !dbg !271
  %1 = icmp sgt i32 %n, 0, !dbg !272
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !275

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !275
  br label %3, !dbg !275

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %sum.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %6, %3 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !276
  %5 = load float* %4, align 4, !dbg !276, !tbaa !232
  %6 = fadd float %sum.01, %5, !dbg !277
  tail call void @llvm.dbg.value(metadata float %6, i64 0, metadata !52, metadata !206), !dbg !270
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !275
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !275
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !275
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !275

._crit_edge:                                      ; preds = %3, %0
  %sum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %6, %3 ]
  ret float %sum.0.lcssa, !dbg !278
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DAdd(double* nocapture %vec1, double* nocapture readonly %vec2, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec1, i64 0, metadata !58, metadata !206), !dbg !279
  tail call void @llvm.dbg.value(metadata double* %vec2, i64 0, metadata !59, metadata !206), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !60, metadata !206), !dbg !281
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !206), !dbg !282
  %1 = icmp sgt i32 %n, 0, !dbg !283
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !286

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !286
  br label %3, !dbg !286

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %vec2, i64 %indvars.iv, !dbg !287
  %5 = load double* %4, align 8, !dbg !287, !tbaa !217
  %6 = getelementptr inbounds double* %vec1, i64 %indvars.iv, !dbg !288
  %7 = load double* %6, align 8, !dbg !289, !tbaa !217
  %8 = fadd double %5, %7, !dbg !289
  store double %8, double* %6, align 8, !dbg !289, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !286
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !286
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !286
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !286

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !290
}

; Function Attrs: nounwind optsize ssp uwtable
define void @FAdd(float* nocapture %vec1, float* nocapture readonly %vec2, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec1, i64 0, metadata !66, metadata !206), !dbg !291
  tail call void @llvm.dbg.value(metadata float* %vec2, i64 0, metadata !67, metadata !206), !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !68, metadata !206), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !206), !dbg !294
  %1 = icmp sgt i32 %n, 0, !dbg !295
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !298

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !298
  br label %3, !dbg !298

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %vec2, i64 %indvars.iv, !dbg !299
  %5 = load float* %4, align 4, !dbg !299, !tbaa !232
  %6 = getelementptr inbounds float* %vec1, i64 %indvars.iv, !dbg !300
  %7 = load float* %6, align 4, !dbg !301, !tbaa !232
  %8 = fadd float %5, %7, !dbg !301
  store float %8, float* %6, align 4, !dbg !301, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !298
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !298
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !298
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !298

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !302
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DCopy(double* nocapture %vec1, double* nocapture readonly %vec2, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec1, i64 0, metadata !72, metadata !206), !dbg !303
  tail call void @llvm.dbg.value(metadata double* %vec2, i64 0, metadata !73, metadata !206), !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !74, metadata !206), !dbg !305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !75, metadata !206), !dbg !306
  %1 = icmp sgt i32 %n, 0, !dbg !307
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !310

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !310
  br label %3, !dbg !310

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %vec2, i64 %indvars.iv, !dbg !311
  %5 = bitcast double* %4 to i64*, !dbg !311
  %6 = load i64* %5, align 8, !dbg !311, !tbaa !217
  %7 = getelementptr inbounds double* %vec1, i64 %indvars.iv, !dbg !312
  %8 = bitcast double* %7 to i64*, !dbg !313
  store i64 %6, i64* %8, align 8, !dbg !313, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !310
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !310
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !310
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !310

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !314
}

; Function Attrs: nounwind optsize ssp uwtable
define void @FCopy(float* nocapture %vec1, float* nocapture readonly %vec2, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec1, i64 0, metadata !78, metadata !206), !dbg !315
  tail call void @llvm.dbg.value(metadata float* %vec2, i64 0, metadata !79, metadata !206), !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !80, metadata !206), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !206), !dbg !318
  %1 = icmp sgt i32 %n, 0, !dbg !319
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !322

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !322
  br label %3, !dbg !322

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %vec2, i64 %indvars.iv, !dbg !323
  %5 = bitcast float* %4 to i32*, !dbg !323
  %6 = load i32* %5, align 4, !dbg !323, !tbaa !232
  %7 = getelementptr inbounds float* %vec1, i64 %indvars.iv, !dbg !324
  %8 = bitcast float* %7 to i32*, !dbg !325
  store i32 %6, i32* %8, align 4, !dbg !325, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !322
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !322
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !322
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !322

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !326
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @DDot(double* nocapture readonly %vec1, double* nocapture readonly %vec2, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec1, i64 0, metadata !86, metadata !206), !dbg !327
  tail call void @llvm.dbg.value(metadata double* %vec2, i64 0, metadata !87, metadata !206), !dbg !328
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !88, metadata !206), !dbg !329
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !89, metadata !206), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !90, metadata !206), !dbg !331
  %1 = icmp sgt i32 %n, 0, !dbg !332
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !335

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !335
  br label %3, !dbg !335

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %result.01 = phi double [ 0.000000e+00, %.lr.ph ], [ %9, %3 ]
  %4 = getelementptr inbounds double* %vec1, i64 %indvars.iv, !dbg !336
  %5 = load double* %4, align 8, !dbg !336, !tbaa !217
  %6 = getelementptr inbounds double* %vec2, i64 %indvars.iv, !dbg !337
  %7 = load double* %6, align 8, !dbg !337, !tbaa !217
  %8 = fmul double %5, %7, !dbg !338
  %9 = fadd double %result.01, %8, !dbg !339
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !89, metadata !206), !dbg !330
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !335
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !335
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !335
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !335

._crit_edge:                                      ; preds = %3, %0
  %result.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %9, %3 ]
  ret double %result.0.lcssa, !dbg !340
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @FDot(float* nocapture readonly %vec1, float* nocapture readonly %vec2, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec1, i64 0, metadata !95, metadata !206), !dbg !341
  tail call void @llvm.dbg.value(metadata float* %vec2, i64 0, metadata !96, metadata !206), !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !97, metadata !206), !dbg !343
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !98, metadata !206), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !99, metadata !206), !dbg !345
  %1 = icmp sgt i32 %n, 0, !dbg !346
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !349

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !349
  br label %3, !dbg !349

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %result.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %9, %3 ]
  %4 = getelementptr inbounds float* %vec1, i64 %indvars.iv, !dbg !350
  %5 = load float* %4, align 4, !dbg !350, !tbaa !232
  %6 = getelementptr inbounds float* %vec2, i64 %indvars.iv, !dbg !351
  %7 = load float* %6, align 4, !dbg !351, !tbaa !232
  %8 = fmul float %5, %7, !dbg !352
  %9 = fadd float %result.01, %8, !dbg !353
  tail call void @llvm.dbg.value(metadata float %9, i64 0, metadata !98, metadata !206), !dbg !344
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !349
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !349
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !349
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !349

._crit_edge:                                      ; preds = %3, %0
  %result.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %9, %3 ]
  ret float %result.0.lcssa, !dbg !354
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @DMax(double* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !102, metadata !206), !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !103, metadata !206), !dbg !356
  %1 = load double* %vec, align 8, !dbg !357, !tbaa !217
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !105, metadata !206), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !104, metadata !206), !dbg !359
  %2 = icmp sgt i32 %n, 1, !dbg !360
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !363

.lr.ph:                                           ; preds = %0
  %3 = add i32 %n, -1, !dbg !363
  br label %4, !dbg !363

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %best.02 = phi double [ %1, %.lr.ph ], [ %best.1, %4 ]
  %5 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !364
  %6 = load double* %5, align 8, !dbg !364, !tbaa !217
  %7 = fcmp ogt double %6, %best.02, !dbg !366
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !105, metadata !206), !dbg !358
  %best.1 = select i1 %7, double %6, double %best.02, !dbg !367
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !363
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !363
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !363
  br i1 %exitcond, label %._crit_edge, label %4, !dbg !363

._crit_edge:                                      ; preds = %4, %0
  %best.0.lcssa = phi double [ %1, %0 ], [ %best.1, %4 ]
  ret double %best.0.lcssa, !dbg !368
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @FMax(float* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !108, metadata !206), !dbg !369
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !109, metadata !206), !dbg !370
  %1 = load float* %vec, align 4, !dbg !371, !tbaa !232
  tail call void @llvm.dbg.value(metadata float %1, i64 0, metadata !111, metadata !206), !dbg !372
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !110, metadata !206), !dbg !373
  %2 = icmp sgt i32 %n, 1, !dbg !374
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !377

.lr.ph:                                           ; preds = %0
  %3 = add i32 %n, -1, !dbg !377
  br label %4, !dbg !377

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %best.02 = phi float [ %1, %.lr.ph ], [ %best.1, %4 ]
  %5 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !378
  %6 = load float* %5, align 4, !dbg !378, !tbaa !232
  %7 = fcmp ogt float %6, %best.02, !dbg !380
  tail call void @llvm.dbg.value(metadata float %6, i64 0, metadata !111, metadata !206), !dbg !372
  %best.1 = select i1 %7, float %6, float %best.02, !dbg !381
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !377
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !377
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !377
  br i1 %exitcond, label %._crit_edge, label %4, !dbg !377

._crit_edge:                                      ; preds = %4, %0
  %best.0.lcssa = phi float [ %1, %0 ], [ %best.1, %4 ]
  ret float %best.0.lcssa, !dbg !382
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @DMin(double* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !114, metadata !206), !dbg !383
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !115, metadata !206), !dbg !384
  %1 = load double* %vec, align 8, !dbg !385, !tbaa !217
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !117, metadata !206), !dbg !386
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !116, metadata !206), !dbg !387
  %2 = icmp sgt i32 %n, 1, !dbg !388
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !391

.lr.ph:                                           ; preds = %0
  %3 = add i32 %n, -1, !dbg !391
  br label %4, !dbg !391

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %best.02 = phi double [ %1, %.lr.ph ], [ %best.1, %4 ]
  %5 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !392
  %6 = load double* %5, align 8, !dbg !392, !tbaa !217
  %7 = fcmp olt double %6, %best.02, !dbg !394
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !117, metadata !206), !dbg !386
  %best.1 = select i1 %7, double %6, double %best.02, !dbg !395
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !391
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !391
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !391
  br i1 %exitcond, label %._crit_edge, label %4, !dbg !391

._crit_edge:                                      ; preds = %4, %0
  %best.0.lcssa = phi double [ %1, %0 ], [ %best.1, %4 ]
  ret double %best.0.lcssa, !dbg !396
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @FMin(float* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !120, metadata !206), !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !121, metadata !206), !dbg !398
  %1 = load float* %vec, align 4, !dbg !399, !tbaa !232
  tail call void @llvm.dbg.value(metadata float %1, i64 0, metadata !123, metadata !206), !dbg !400
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !122, metadata !206), !dbg !401
  %2 = icmp sgt i32 %n, 1, !dbg !402
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !405

.lr.ph:                                           ; preds = %0
  %3 = add i32 %n, -1, !dbg !405
  br label %4, !dbg !405

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %best.02 = phi float [ %1, %.lr.ph ], [ %best.1, %4 ]
  %5 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !406
  %6 = load float* %5, align 4, !dbg !406, !tbaa !232
  %7 = fcmp olt float %6, %best.02, !dbg !408
  tail call void @llvm.dbg.value(metadata float %6, i64 0, metadata !123, metadata !206), !dbg !400
  %best.1 = select i1 %7, float %6, float %best.02, !dbg !409
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !405
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !405
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !405
  br i1 %exitcond, label %._crit_edge, label %4, !dbg !405

._crit_edge:                                      ; preds = %4, %0
  %best.0.lcssa = phi float [ %1, %0 ], [ %best.1, %4 ]
  ret float %best.0.lcssa, !dbg !410
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @DArgMax(double* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !128, metadata !206), !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !129, metadata !206), !dbg !412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !131, metadata !206), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !130, metadata !206), !dbg !414
  %1 = icmp sgt i32 %n, 1, !dbg !415
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !418

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !418
  br label %3, !dbg !418

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %best.02 = phi i32 [ 0, %.lr.ph ], [ %best.1, %3 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !419
  %5 = load double* %4, align 8, !dbg !419, !tbaa !217
  %6 = sext i32 %best.02 to i64, !dbg !421
  %7 = getelementptr inbounds double* %vec, i64 %6, !dbg !421
  %8 = load double* %7, align 8, !dbg !421, !tbaa !217
  %9 = fcmp ogt double %5, %8, !dbg !422
  %10 = trunc i64 %indvars.iv to i32, !dbg !423
  %best.1 = select i1 %9, i32 %10, i32 %best.02, !dbg !423
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !418
  %exitcond = icmp eq i32 %10, %2, !dbg !418
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !418

._crit_edge:                                      ; preds = %3, %0
  %best.0.lcssa = phi i32 [ 0, %0 ], [ %best.1, %3 ]
  ret i32 %best.0.lcssa, !dbg !424
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @FArgMax(float* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !136, metadata !206), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !137, metadata !206), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !139, metadata !206), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !138, metadata !206), !dbg !428
  %1 = icmp sgt i32 %n, 1, !dbg !429
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !432

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !432
  br label %3, !dbg !432

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %best.02 = phi i32 [ 0, %.lr.ph ], [ %best.1, %3 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !433
  %5 = load float* %4, align 4, !dbg !433, !tbaa !232
  %6 = sext i32 %best.02 to i64, !dbg !435
  %7 = getelementptr inbounds float* %vec, i64 %6, !dbg !435
  %8 = load float* %7, align 4, !dbg !435, !tbaa !232
  %9 = fcmp ogt float %5, %8, !dbg !436
  %10 = trunc i64 %indvars.iv to i32, !dbg !437
  %best.1 = select i1 %9, i32 %10, i32 %best.02, !dbg !437
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !432
  %exitcond = icmp eq i32 %10, %2, !dbg !432
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !432

._crit_edge:                                      ; preds = %3, %0
  %best.0.lcssa = phi i32 [ 0, %0 ], [ %best.1, %3 ]
  ret i32 %best.0.lcssa, !dbg !438
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @DArgMin(double* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !142, metadata !206), !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !143, metadata !206), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !145, metadata !206), !dbg !441
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !144, metadata !206), !dbg !442
  %1 = icmp sgt i32 %n, 1, !dbg !443
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !446

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !446
  br label %3, !dbg !446

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %best.02 = phi i32 [ 0, %.lr.ph ], [ %best.1, %3 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !447
  %5 = load double* %4, align 8, !dbg !447, !tbaa !217
  %6 = sext i32 %best.02 to i64, !dbg !449
  %7 = getelementptr inbounds double* %vec, i64 %6, !dbg !449
  %8 = load double* %7, align 8, !dbg !449, !tbaa !217
  %9 = fcmp olt double %5, %8, !dbg !450
  %10 = trunc i64 %indvars.iv to i32, !dbg !451
  %best.1 = select i1 %9, i32 %10, i32 %best.02, !dbg !451
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !446
  %exitcond = icmp eq i32 %10, %2, !dbg !446
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !446

._crit_edge:                                      ; preds = %3, %0
  %best.0.lcssa = phi i32 [ 0, %0 ], [ %best.1, %3 ]
  ret i32 %best.0.lcssa, !dbg !452
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @FArgMin(float* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !148, metadata !206), !dbg !453
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !149, metadata !206), !dbg !454
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !151, metadata !206), !dbg !455
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !150, metadata !206), !dbg !456
  %1 = icmp sgt i32 %n, 1, !dbg !457
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !460

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !460
  br label %3, !dbg !460

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %best.02 = phi i32 [ 0, %.lr.ph ], [ %best.1, %3 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !461
  %5 = load float* %4, align 4, !dbg !461, !tbaa !232
  %6 = sext i32 %best.02 to i64, !dbg !463
  %7 = getelementptr inbounds float* %vec, i64 %6, !dbg !463
  %8 = load float* %7, align 4, !dbg !463, !tbaa !232
  %9 = fcmp olt float %5, %8, !dbg !464
  %10 = trunc i64 %indvars.iv to i32, !dbg !465
  %best.1 = select i1 %9, i32 %10, i32 %best.02, !dbg !465
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !460
  %exitcond = icmp eq i32 %10, %2, !dbg !460
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !460

._crit_edge:                                      ; preds = %3, %0
  %best.0.lcssa = phi i32 [ 0, %0 ], [ %best.1, %3 ]
  ret i32 %best.0.lcssa, !dbg !466
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DNorm(double* nocapture %vec, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !156, metadata !206), !dbg !467
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !157, metadata !206), !dbg !468
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !42, metadata !206), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !43, metadata !206), !dbg !471
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !44, metadata !206), !dbg !472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !206), !dbg !473
  %1 = icmp sgt i32 %n, 0, !dbg !474
  br i1 %1, label %.lr.ph.i, label %.loopexit, !dbg !475

DSum.exit.thread.preheader:                       ; preds = %DSum.exit
  br i1 %1, label %.lr.ph4, label %.loopexit, !dbg !476

.lr.ph4:                                          ; preds = %DSum.exit.thread.preheader
  %2 = sitofp i32 %n to double, !dbg !479
  %3 = fdiv double 1.000000e+00, %2, !dbg !481
  %4 = add i32 %n, -1, !dbg !476
  br label %DSum.exit.thread, !dbg !476

.lr.ph.i:                                         ; preds = %0
  %5 = add i32 %n, -1, !dbg !475
  br label %6, !dbg !475

; <label>:6                                       ; preds = %6, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %6 ], !dbg !482
  %sum.01.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %9, %6 ], !dbg !482
  %7 = getelementptr inbounds double* %vec, i64 %indvars.iv.i, !dbg !483
  %8 = load double* %7, align 8, !dbg !483, !tbaa !217
  %9 = fadd double %sum.01.i, %8, !dbg !484
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !44, metadata !206), !dbg !472
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !475
  %lftr.wideiv9 = trunc i64 %indvars.iv.i to i32, !dbg !475
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %5, !dbg !475
  br i1 %exitcond10, label %DSum.exit, label %6, !dbg !475

DSum.exit:                                        ; preds = %6
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !159, metadata !206), !dbg !485
  %10 = fcmp une double %9, 0.000000e+00, !dbg !486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !158, metadata !206), !dbg !487
  br i1 %10, label %.lr.ph, label %DSum.exit.thread.preheader, !dbg !488

.lr.ph:                                           ; preds = %DSum.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %DSum.exit ]
  %11 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !489
  %12 = load double* %11, align 8, !dbg !492, !tbaa !217
  %13 = fdiv double %12, %9, !dbg !492
  store double %13, double* %11, align 8, !dbg !492, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !493
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !493
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !493
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !dbg !493

DSum.exit.thread:                                 ; preds = %DSum.exit.thread, %.lr.ph4
  %indvars.iv5 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next6, %DSum.exit.thread ]
  %14 = getelementptr inbounds double* %vec, i64 %indvars.iv5, !dbg !494
  store double %3, double* %14, align 8, !dbg !495, !tbaa !217
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !476
  %lftr.wideiv7 = trunc i64 %indvars.iv5 to i32, !dbg !476
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %4, !dbg !476
  br i1 %exitcond8, label %.loopexit, label %DSum.exit.thread, !dbg !476

.loopexit:                                        ; preds = %DSum.exit.thread, %.lr.ph, %0, %DSum.exit.thread.preheader
  ret void, !dbg !496
}

; Function Attrs: nounwind optsize ssp uwtable
define void @FNorm(float* nocapture %vec, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !164, metadata !206), !dbg !497
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !165, metadata !206), !dbg !498
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !50, metadata !206), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !51, metadata !206), !dbg !501
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !52, metadata !206), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !206), !dbg !503
  %1 = icmp sgt i32 %n, 0, !dbg !504
  br i1 %1, label %.lr.ph.i, label %.loopexit, !dbg !505

FSum.exit.thread.preheader:                       ; preds = %FSum.exit
  br i1 %1, label %.lr.ph4, label %.loopexit, !dbg !506

.lr.ph4:                                          ; preds = %FSum.exit.thread.preheader
  %2 = sitofp i32 %n to float, !dbg !509
  %3 = fdiv float 1.000000e+00, %2, !dbg !511
  %4 = add i32 %n, -1, !dbg !506
  br label %FSum.exit.thread, !dbg !506

.lr.ph.i:                                         ; preds = %0
  %5 = add i32 %n, -1, !dbg !505
  br label %6, !dbg !505

; <label>:6                                       ; preds = %6, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %6 ], !dbg !512
  %sum.01.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %9, %6 ], !dbg !512
  %7 = getelementptr inbounds float* %vec, i64 %indvars.iv.i, !dbg !513
  %8 = load float* %7, align 4, !dbg !513, !tbaa !232
  %9 = fadd float %sum.01.i, %8, !dbg !514
  tail call void @llvm.dbg.value(metadata float %9, i64 0, metadata !52, metadata !206), !dbg !502
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !505
  %lftr.wideiv9 = trunc i64 %indvars.iv.i to i32, !dbg !505
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %5, !dbg !505
  br i1 %exitcond10, label %FSum.exit, label %6, !dbg !505

FSum.exit:                                        ; preds = %6
  tail call void @llvm.dbg.value(metadata float %9, i64 0, metadata !167, metadata !206), !dbg !515
  %10 = fcmp une float %9, 0.000000e+00, !dbg !516
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !166, metadata !206), !dbg !517
  br i1 %10, label %.lr.ph, label %FSum.exit.thread.preheader, !dbg !518

.lr.ph:                                           ; preds = %FSum.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %FSum.exit ]
  %11 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !519
  %12 = load float* %11, align 4, !dbg !522, !tbaa !232
  %13 = fdiv float %12, %9, !dbg !522
  store float %13, float* %11, align 4, !dbg !522, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !523
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !523
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !523
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !dbg !523

FSum.exit.thread:                                 ; preds = %FSum.exit.thread, %.lr.ph4
  %indvars.iv5 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next6, %FSum.exit.thread ]
  %14 = getelementptr inbounds float* %vec, i64 %indvars.iv5, !dbg !524
  store float %3, float* %14, align 4, !dbg !525, !tbaa !232
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !506
  %lftr.wideiv7 = trunc i64 %indvars.iv5 to i32, !dbg !506
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %4, !dbg !506
  br i1 %exitcond8, label %.loopexit, label %FSum.exit.thread, !dbg !506

.loopexit:                                        ; preds = %FSum.exit.thread, %.lr.ph, %0, %FSum.exit.thread.preheader
  ret void, !dbg !526
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DLog(double* nocapture %vec, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !170, metadata !206), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !171, metadata !206), !dbg !528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !172, metadata !206), !dbg !529
  %1 = icmp sgt i32 %n, 0, !dbg !530
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !533

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !533
  br label %3, !dbg !533

; <label>:3                                       ; preds = %9, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !534
  %5 = load double* %4, align 8, !dbg !534, !tbaa !217
  %6 = fcmp ogt double %5, 0.000000e+00, !dbg !536
  br i1 %6, label %7, label %9, !dbg !537

; <label>:7                                       ; preds = %3
  %8 = tail call double @log(double %5) #4, !dbg !538
  br label %9, !dbg !539

; <label>:9                                       ; preds = %3, %7
  %storemerge = phi double [ %8, %7 ], [ 0xFFEFFFFFFFFFFFFF, %3 ]
  store double %storemerge, double* %4, align 8, !dbg !540, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !533
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !533
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !533
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !533

._crit_edge:                                      ; preds = %9, %0
  ret void, !dbg !541
}

; Function Attrs: nounwind optsize readnone
declare double @log(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @FLog(float* nocapture %vec, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !175, metadata !206), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !176, metadata !206), !dbg !543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !177, metadata !206), !dbg !544
  %1 = icmp sgt i32 %n, 0, !dbg !545
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !548

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !548
  br label %3, !dbg !548

; <label>:3                                       ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !549
  %5 = load float* %4, align 4, !dbg !549, !tbaa !232
  %6 = fcmp ogt float %5, 0.000000e+00, !dbg !551
  br i1 %6, label %7, label %11, !dbg !552

; <label>:7                                       ; preds = %3
  %8 = fpext float %5 to double, !dbg !549
  %9 = tail call double @log(double %8) #4, !dbg !553
  %10 = fptrunc double %9 to float, !dbg !553
  br label %11, !dbg !554

; <label>:11                                      ; preds = %3, %7
  %storemerge = phi float [ %10, %7 ], [ 0xC7EFFFFFE0000000, %3 ]
  store float %storemerge, float* %4, align 4, !dbg !555, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !548
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !548
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !548
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !548

._crit_edge:                                      ; preds = %11, %0
  ret void, !dbg !556
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DExp(double* nocapture %vec, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !180, metadata !206), !dbg !557
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !181, metadata !206), !dbg !558
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !182, metadata !206), !dbg !559
  %1 = icmp sgt i32 %n, 0, !dbg !560
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !563

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !563
  br label %3, !dbg !563

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !564
  %5 = load double* %4, align 8, !dbg !564, !tbaa !217
  %6 = tail call double @exp(double %5) #4, !dbg !565
  store double %6, double* %4, align 8, !dbg !566, !tbaa !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !563
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !563
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !563
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !563

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !567
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @FExp(float* nocapture %vec, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !185, metadata !206), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !186, metadata !206), !dbg !569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !187, metadata !206), !dbg !570
  %1 = icmp sgt i32 %n, 0, !dbg !571
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !574

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !574
  br label %3, !dbg !574

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !575
  %5 = load float* %4, align 4, !dbg !575, !tbaa !232
  %6 = fpext float %5 to double, !dbg !575
  %7 = tail call double @exp(double %6) #4, !dbg !576
  %8 = fptrunc double %7 to float, !dbg !576
  store float %8, float* %4, align 4, !dbg !577, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !574
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !574
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !574
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !574

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !578
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @DLogSum(double* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !190, metadata !206), !dbg !579
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !191, metadata !206), !dbg !580
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !102, metadata !206), !dbg !581
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !103, metadata !206), !dbg !583
  %1 = load double* %vec, align 8, !dbg !584, !tbaa !217
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !105, metadata !206), !dbg !585
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !104, metadata !206), !dbg !586
  %2 = icmp sgt i32 %n, 1, !dbg !587
  br i1 %2, label %.lr.ph.i, label %DMax.exit, !dbg !588

.lr.ph.i:                                         ; preds = %0
  %3 = add i32 %n, -1, !dbg !588
  br label %4, !dbg !588

; <label>:4                                       ; preds = %4, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %4 ], !dbg !589
  %best.02.i = phi double [ %1, %.lr.ph.i ], [ %best.1.i, %4 ], !dbg !589
  %5 = getelementptr inbounds double* %vec, i64 %indvars.iv.i, !dbg !590
  %6 = load double* %5, align 8, !dbg !590, !tbaa !217
  %7 = fcmp ogt double %6, %best.02.i, !dbg !591
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !105, metadata !206), !dbg !585
  %best.1.i = select i1 %7, double %6, double %best.02.i, !dbg !592
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !588
  %lftr.wideiv3 = trunc i64 %indvars.iv.i to i32, !dbg !588
  %exitcond4 = icmp eq i32 %lftr.wideiv3, %3, !dbg !588
  br i1 %exitcond4, label %DMax.exit, label %4, !dbg !588

DMax.exit:                                        ; preds = %4, %0
  %best.0.lcssa.i = phi double [ %1, %0 ], [ %best.1.i, %4 ], !dbg !589
  tail call void @llvm.dbg.value(metadata double %best.0.lcssa.i, i64 0, metadata !193, metadata !206), !dbg !593
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !194, metadata !206), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !192, metadata !206), !dbg !595
  %8 = icmp sgt i32 %n, 0, !dbg !596
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !599

.lr.ph:                                           ; preds = %DMax.exit
  %9 = fadd double %best.0.lcssa.i, -5.000000e+01, !dbg !600
  %10 = add i32 %n, -1, !dbg !599
  br label %11, !dbg !599

; <label>:11                                      ; preds = %._crit_edge5, %.lr.ph
  %12 = phi double [ %1, %.lr.ph ], [ %.pre, %._crit_edge5 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge5 ]
  %sum.02 = phi double [ 0.000000e+00, %.lr.ph ], [ %sum.1, %._crit_edge5 ]
  %13 = fcmp ogt double %12, %9, !dbg !602
  br i1 %13, label %14, label %18, !dbg !603

; <label>:14                                      ; preds = %11
  %15 = fsub double %12, %best.0.lcssa.i, !dbg !604
  %16 = tail call double @exp(double %15) #4, !dbg !605
  %17 = fadd double %sum.02, %16, !dbg !606
  tail call void @llvm.dbg.value(metadata double %17, i64 0, metadata !194, metadata !206), !dbg !594
  br label %18, !dbg !607

; <label>:18                                      ; preds = %11, %14
  %sum.1 = phi double [ %17, %14 ], [ %sum.02, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !599
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !599
  %exitcond = icmp eq i32 %lftr.wideiv, %10, !dbg !599
  br i1 %exitcond, label %._crit_edge, label %._crit_edge5, !dbg !599

._crit_edge5:                                     ; preds = %18
  %.phi.trans.insert = getelementptr inbounds double* %vec, i64 %indvars.iv.next
  %.pre = load double* %.phi.trans.insert, align 8, !dbg !608, !tbaa !217
  br label %11, !dbg !599

._crit_edge:                                      ; preds = %18, %DMax.exit
  %sum.0.lcssa = phi double [ 0.000000e+00, %DMax.exit ], [ %sum.1, %18 ]
  %19 = tail call double @log(double %sum.0.lcssa) #4, !dbg !609
  %20 = fadd double %best.0.lcssa.i, %19, !dbg !610
  tail call void @llvm.dbg.value(metadata double %20, i64 0, metadata !194, metadata !206), !dbg !594
  ret double %20, !dbg !611
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @FLogSum(float* nocapture readonly %vec, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !197, metadata !206), !dbg !612
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !198, metadata !206), !dbg !613
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !108, metadata !206), !dbg !614
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !109, metadata !206), !dbg !616
  %1 = load float* %vec, align 4, !dbg !617, !tbaa !232
  tail call void @llvm.dbg.value(metadata float %1, i64 0, metadata !111, metadata !206), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !110, metadata !206), !dbg !619
  %2 = icmp sgt i32 %n, 1, !dbg !620
  br i1 %2, label %.lr.ph.i, label %FMax.exit, !dbg !621

.lr.ph.i:                                         ; preds = %0
  %3 = add i32 %n, -1, !dbg !621
  br label %4, !dbg !621

; <label>:4                                       ; preds = %4, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %4 ], !dbg !622
  %best.02.i = phi float [ %1, %.lr.ph.i ], [ %best.1.i, %4 ], !dbg !622
  %5 = getelementptr inbounds float* %vec, i64 %indvars.iv.i, !dbg !623
  %6 = load float* %5, align 4, !dbg !623, !tbaa !232
  %7 = fcmp ogt float %6, %best.02.i, !dbg !624
  tail call void @llvm.dbg.value(metadata float %6, i64 0, metadata !111, metadata !206), !dbg !618
  %best.1.i = select i1 %7, float %6, float %best.02.i, !dbg !625
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !621
  %lftr.wideiv3 = trunc i64 %indvars.iv.i to i32, !dbg !621
  %exitcond4 = icmp eq i32 %lftr.wideiv3, %3, !dbg !621
  br i1 %exitcond4, label %FMax.exit, label %4, !dbg !621

FMax.exit:                                        ; preds = %4, %0
  %best.0.lcssa.i = phi float [ %1, %0 ], [ %best.1.i, %4 ], !dbg !622
  tail call void @llvm.dbg.value(metadata float %best.0.lcssa.i, i64 0, metadata !200, metadata !206), !dbg !626
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !201, metadata !206), !dbg !627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !199, metadata !206), !dbg !628
  %8 = icmp sgt i32 %n, 0, !dbg !629
  %9 = fpext float %best.0.lcssa.i to double, !dbg !632
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !634

.lr.ph:                                           ; preds = %FMax.exit
  %10 = fadd double %9, -5.000000e+01, !dbg !635
  %11 = add i32 %n, -1, !dbg !634
  br label %12, !dbg !634

; <label>:12                                      ; preds = %._crit_edge5, %.lr.ph
  %13 = phi float [ %1, %.lr.ph ], [ %.pre, %._crit_edge5 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge5 ]
  %sum.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %sum.1, %._crit_edge5 ]
  %14 = fpext float %13 to double, !dbg !636
  %15 = fcmp ogt double %14, %10, !dbg !637
  br i1 %15, label %16, label %23, !dbg !638

; <label>:16                                      ; preds = %12
  %17 = fsub float %13, %best.0.lcssa.i, !dbg !639
  %18 = fpext float %17 to double, !dbg !640
  %19 = tail call double @exp(double %18) #4, !dbg !641
  %20 = fpext float %sum.02 to double, !dbg !642
  %21 = fadd double %20, %19, !dbg !642
  %22 = fptrunc double %21 to float, !dbg !642
  tail call void @llvm.dbg.value(metadata float %22, i64 0, metadata !201, metadata !206), !dbg !627
  br label %23, !dbg !643

; <label>:23                                      ; preds = %12, %16
  %sum.1 = phi float [ %22, %16 ], [ %sum.02, %12 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !634
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !634
  %exitcond = icmp eq i32 %lftr.wideiv, %11, !dbg !634
  br i1 %exitcond, label %._crit_edge, label %._crit_edge5, !dbg !634

._crit_edge5:                                     ; preds = %23
  %.phi.trans.insert = getelementptr inbounds float* %vec, i64 %indvars.iv.next
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !636, !tbaa !232
  br label %12, !dbg !634

._crit_edge:                                      ; preds = %23, %FMax.exit
  %sum.0.lcssa = phi float [ 0.000000e+00, %FMax.exit ], [ %sum.1, %23 ]
  %24 = fpext float %sum.0.lcssa to double, !dbg !644
  %25 = tail call double @log(double %24) #4, !dbg !645
  %26 = fadd double %9, %25, !dbg !646
  %27 = fptrunc double %26 to float, !dbg !645
  tail call void @llvm.dbg.value(metadata float %27, i64 0, metadata !201, metadata !206), !dbg !627
  ret float %27, !dbg !647
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!202, !203, !204}
!llvm.ident = !{!205}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/vectorops.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!6 = !{!7, !17, !26, !32, !38, !46, !54, !62, !70, !76, !82, !91, !100, !106, !112, !118, !124, !132, !140, !146, !152, !160, !168, !173, !178, !183, !188, !195}
!7 = !DISubprogram(name: "DSet", scope: !1, file: !1, line: 32, type: !8, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, i32, double)* @DSet, variables: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11, !4}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15, !16}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !7, file: !1, line: 32, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !7, file: !1, line: 32, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !7, file: !1, line: 32, type: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !7, file: !1, line: 34, type: !11)
!17 = !DISubprogram(name: "FSet", scope: !1, file: !1, line: 39, type: !18, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32, float)* @FSet, variables: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !11, !5}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !17, file: !1, line: 39, type: !20)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !17, file: !1, line: 39, type: !11)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !17, file: !1, line: 39, type: !5)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !17, file: !1, line: 41, type: !11)
!26 = !DISubprogram(name: "DScale", scope: !1, file: !1, line: 46, type: !8, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, i32, double)* @DScale, variables: !27)
!27 = !{!28, !29, !30, !31}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !26, file: !1, line: 46, type: !10)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !26, file: !1, line: 46, type: !11)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "scale", arg: 3, scope: !26, file: !1, line: 46, type: !4)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !26, file: !1, line: 48, type: !11)
!32 = !DISubprogram(name: "FScale", scope: !1, file: !1, line: 53, type: !18, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32, float)* @FScale, variables: !33)
!33 = !{!34, !35, !36, !37}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !32, file: !1, line: 53, type: !20)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !32, file: !1, line: 53, type: !11)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "scale", arg: 3, scope: !32, file: !1, line: 53, type: !5)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !32, file: !1, line: 55, type: !11)
!38 = !DISubprogram(name: "DSum", scope: !1, file: !1, line: 60, type: !39, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: double (double*, i32)* @DSum, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!4, !10, !11}
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !38, file: !1, line: 60, type: !10)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !38, file: !1, line: 60, type: !11)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !38, file: !1, line: 62, type: !4)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !38, file: !1, line: 63, type: !11)
!46 = !DISubprogram(name: "FSum", scope: !1, file: !1, line: 69, type: !47, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, i32)* @FSum, variables: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!5, !20, !11}
!49 = !{!50, !51, !52, !53}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !46, file: !1, line: 69, type: !20)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !46, file: !1, line: 69, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !46, file: !1, line: 71, type: !5)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !46, file: !1, line: 72, type: !11)
!54 = !DISubprogram(name: "DAdd", scope: !1, file: !1, line: 78, type: !55, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, double*, i32)* @DAdd, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !10, !10, !11}
!57 = !{!58, !59, !60, !61}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec1", arg: 1, scope: !54, file: !1, line: 78, type: !10)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec2", arg: 2, scope: !54, file: !1, line: 78, type: !10)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !54, file: !1, line: 78, type: !11)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !54, file: !1, line: 80, type: !11)
!62 = !DISubprogram(name: "FAdd", scope: !1, file: !1, line: 85, type: !63, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, float*, i32)* @FAdd, variables: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !20, !20, !11}
!65 = !{!66, !67, !68, !69}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec1", arg: 1, scope: !62, file: !1, line: 85, type: !20)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec2", arg: 2, scope: !62, file: !1, line: 85, type: !20)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !62, file: !1, line: 85, type: !11)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !62, file: !1, line: 87, type: !11)
!70 = !DISubprogram(name: "DCopy", scope: !1, file: !1, line: 92, type: !55, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, double*, i32)* @DCopy, variables: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec1", arg: 1, scope: !70, file: !1, line: 92, type: !10)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec2", arg: 2, scope: !70, file: !1, line: 92, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !70, file: !1, line: 92, type: !11)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !70, file: !1, line: 94, type: !11)
!76 = !DISubprogram(name: "FCopy", scope: !1, file: !1, line: 99, type: !63, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, float*, i32)* @FCopy, variables: !77)
!77 = !{!78, !79, !80, !81}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec1", arg: 1, scope: !76, file: !1, line: 99, type: !20)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec2", arg: 2, scope: !76, file: !1, line: 99, type: !20)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !76, file: !1, line: 99, type: !11)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !76, file: !1, line: 101, type: !11)
!82 = !DISubprogram(name: "DDot", scope: !1, file: !1, line: 106, type: !83, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: double (double*, double*, i32)* @DDot, variables: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!4, !10, !10, !11}
!85 = !{!86, !87, !88, !89, !90}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec1", arg: 1, scope: !82, file: !1, line: 106, type: !10)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec2", arg: 2, scope: !82, file: !1, line: 106, type: !10)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !82, file: !1, line: 106, type: !11)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !82, file: !1, line: 108, type: !4)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !82, file: !1, line: 109, type: !11)
!91 = !DISubprogram(name: "FDot", scope: !1, file: !1, line: 115, type: !92, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, float*, i32)* @FDot, variables: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!5, !20, !20, !11}
!94 = !{!95, !96, !97, !98, !99}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec1", arg: 1, scope: !91, file: !1, line: 115, type: !20)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec2", arg: 2, scope: !91, file: !1, line: 115, type: !20)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !91, file: !1, line: 115, type: !11)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !91, file: !1, line: 117, type: !5)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !91, file: !1, line: 118, type: !11)
!100 = !DISubprogram(name: "DMax", scope: !1, file: !1, line: 124, type: !39, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: double (double*, i32)* @DMax, variables: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !100, file: !1, line: 124, type: !10)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !100, file: !1, line: 124, type: !11)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !100, file: !1, line: 126, type: !11)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !100, file: !1, line: 127, type: !4)
!106 = !DISubprogram(name: "FMax", scope: !1, file: !1, line: 136, type: !47, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, i32)* @FMax, variables: !107)
!107 = !{!108, !109, !110, !111}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !106, file: !1, line: 136, type: !20)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !106, file: !1, line: 136, type: !11)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !106, file: !1, line: 138, type: !11)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !106, file: !1, line: 139, type: !5)
!112 = !DISubprogram(name: "DMin", scope: !1, file: !1, line: 148, type: !39, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: double (double*, i32)* @DMin, variables: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !112, file: !1, line: 148, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !112, file: !1, line: 148, type: !11)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !112, file: !1, line: 150, type: !11)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !112, file: !1, line: 151, type: !4)
!118 = !DISubprogram(name: "FMin", scope: !1, file: !1, line: 160, type: !47, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, i32)* @FMin, variables: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !118, file: !1, line: 160, type: !20)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !118, file: !1, line: 160, type: !11)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !118, file: !1, line: 162, type: !11)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !118, file: !1, line: 163, type: !5)
!124 = !DISubprogram(name: "DArgMax", scope: !1, file: !1, line: 172, type: !125, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double*, i32)* @DArgMax, variables: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{!11, !10, !11}
!127 = !{!128, !129, !130, !131}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !124, file: !1, line: 172, type: !10)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !124, file: !1, line: 172, type: !11)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !124, file: !1, line: 174, type: !11)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !124, file: !1, line: 175, type: !11)
!132 = !DISubprogram(name: "FArgMax", scope: !1, file: !1, line: 183, type: !133, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float*, i32)* @FArgMax, variables: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{!11, !20, !11}
!135 = !{!136, !137, !138, !139}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !132, file: !1, line: 183, type: !20)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !132, file: !1, line: 183, type: !11)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !132, file: !1, line: 185, type: !11)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !132, file: !1, line: 186, type: !11)
!140 = !DISubprogram(name: "DArgMin", scope: !1, file: !1, line: 194, type: !125, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double*, i32)* @DArgMin, variables: !141)
!141 = !{!142, !143, !144, !145}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !140, file: !1, line: 194, type: !10)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !140, file: !1, line: 194, type: !11)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !140, file: !1, line: 196, type: !11)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !140, file: !1, line: 197, type: !11)
!146 = !DISubprogram(name: "FArgMin", scope: !1, file: !1, line: 204, type: !133, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float*, i32)* @FArgMin, variables: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !146, file: !1, line: 204, type: !20)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !146, file: !1, line: 204, type: !11)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !146, file: !1, line: 206, type: !11)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !146, file: !1, line: 207, type: !11)
!152 = !DISubprogram(name: "DNorm", scope: !1, file: !1, line: 215, type: !153, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, i32)* @DNorm, variables: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !10, !11}
!155 = !{!156, !157, !158, !159}
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !152, file: !1, line: 215, type: !10)
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !152, file: !1, line: 215, type: !11)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !152, file: !1, line: 217, type: !11)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !152, file: !1, line: 218, type: !4)
!160 = !DISubprogram(name: "FNorm", scope: !1, file: !1, line: 226, type: !161, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32)* @FNorm, variables: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !20, !11}
!163 = !{!164, !165, !166, !167}
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !160, file: !1, line: 226, type: !20)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !160, file: !1, line: 226, type: !11)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !160, file: !1, line: 228, type: !11)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !160, file: !1, line: 229, type: !5)
!168 = !DISubprogram(name: "DLog", scope: !1, file: !1, line: 237, type: !153, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, i32)* @DLog, variables: !169)
!169 = !{!170, !171, !172}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !168, file: !1, line: 237, type: !10)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !168, file: !1, line: 237, type: !11)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !168, file: !1, line: 239, type: !11)
!173 = !DISubprogram(name: "FLog", scope: !1, file: !1, line: 246, type: !161, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32)* @FLog, variables: !174)
!174 = !{!175, !176, !177}
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !173, file: !1, line: 246, type: !20)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !173, file: !1, line: 246, type: !11)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !173, file: !1, line: 248, type: !11)
!178 = !DISubprogram(name: "DExp", scope: !1, file: !1, line: 255, type: !153, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, i32)* @DExp, variables: !179)
!179 = !{!180, !181, !182}
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !178, file: !1, line: 255, type: !10)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !178, file: !1, line: 255, type: !11)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !178, file: !1, line: 257, type: !11)
!183 = !DISubprogram(name: "FExp", scope: !1, file: !1, line: 262, type: !161, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32)* @FExp, variables: !184)
!184 = !{!185, !186, !187}
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !183, file: !1, line: 262, type: !20)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !183, file: !1, line: 262, type: !11)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !183, file: !1, line: 264, type: !11)
!188 = !DISubprogram(name: "DLogSum", scope: !1, file: !1, line: 269, type: !39, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: double (double*, i32)* @DLogSum, variables: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !188, file: !1, line: 269, type: !10)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !188, file: !1, line: 269, type: !11)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !188, file: !1, line: 271, type: !11)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !188, file: !1, line: 272, type: !4)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !188, file: !1, line: 272, type: !4)
!195 = !DISubprogram(name: "FLogSum", scope: !1, file: !1, line: 284, type: !47, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: float (float*, i32)* @FLogSum, variables: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !195, file: !1, line: 284, type: !20)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !195, file: !1, line: 284, type: !11)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !195, file: !1, line: 286, type: !11)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !195, file: !1, line: 287, type: !5)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !195, file: !1, line: 287, type: !5)
!202 = !{i32 2, !"Dwarf Version", i32 2}
!203 = !{i32 2, !"Debug Info Version", i32 700000003}
!204 = !{i32 1, !"PIC Level", i32 2}
!205 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!206 = !DIExpression()
!207 = !DILocation(line: 32, column: 14, scope: !7)
!208 = !DILocation(line: 32, column: 23, scope: !7)
!209 = !DILocation(line: 32, column: 33, scope: !7)
!210 = !DILocation(line: 34, column: 7, scope: !7)
!211 = !DILocation(line: 35, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 35, column: 3)
!213 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!214 = !DILocation(line: 35, column: 3, scope: !213)
!215 = !DILocation(line: 35, column: 27, scope: !212)
!216 = !DILocation(line: 35, column: 34, scope: !212)
!217 = !{!218, !218, i64 0}
!218 = !{!"double", !219, i64 0}
!219 = !{!"omnipotent char", !220, i64 0}
!220 = !{!"Simple C/C++ TBAA"}
!221 = !DILocation(line: 36, column: 1, scope: !7)
!222 = !DILocation(line: 39, column: 13, scope: !17)
!223 = !DILocation(line: 39, column: 22, scope: !17)
!224 = !DILocation(line: 39, column: 31, scope: !17)
!225 = !DILocation(line: 41, column: 7, scope: !17)
!226 = !DILocation(line: 42, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 42, column: 3)
!228 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 3)
!229 = !DILocation(line: 42, column: 3, scope: !228)
!230 = !DILocation(line: 42, column: 27, scope: !227)
!231 = !DILocation(line: 42, column: 34, scope: !227)
!232 = !{!233, !233, i64 0}
!233 = !{!"float", !219, i64 0}
!234 = !DILocation(line: 43, column: 1, scope: !17)
!235 = !DILocation(line: 46, column: 16, scope: !26)
!236 = !DILocation(line: 46, column: 25, scope: !26)
!237 = !DILocation(line: 46, column: 35, scope: !26)
!238 = !DILocation(line: 48, column: 7, scope: !26)
!239 = !DILocation(line: 49, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 49, column: 3)
!241 = distinct !DILexicalBlock(scope: !26, file: !1, line: 49, column: 3)
!242 = !DILocation(line: 49, column: 3, scope: !241)
!243 = !DILocation(line: 49, column: 27, scope: !240)
!244 = !DILocation(line: 49, column: 34, scope: !240)
!245 = !DILocation(line: 50, column: 1, scope: !26)
!246 = !DILocation(line: 53, column: 15, scope: !32)
!247 = !DILocation(line: 53, column: 24, scope: !32)
!248 = !DILocation(line: 53, column: 33, scope: !32)
!249 = !DILocation(line: 55, column: 7, scope: !32)
!250 = !DILocation(line: 56, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 56, column: 3)
!252 = distinct !DILexicalBlock(scope: !32, file: !1, line: 56, column: 3)
!253 = !DILocation(line: 56, column: 3, scope: !252)
!254 = !DILocation(line: 56, column: 27, scope: !251)
!255 = !DILocation(line: 56, column: 34, scope: !251)
!256 = !DILocation(line: 57, column: 1, scope: !32)
!257 = !DILocation(line: 60, column: 14, scope: !38)
!258 = !DILocation(line: 60, column: 23, scope: !38)
!259 = !DILocation(line: 62, column: 10, scope: !38)
!260 = !DILocation(line: 63, column: 10, scope: !38)
!261 = !DILocation(line: 64, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 64, column: 3)
!263 = distinct !DILexicalBlock(scope: !38, file: !1, line: 64, column: 3)
!264 = !DILocation(line: 64, column: 3, scope: !263)
!265 = !DILocation(line: 64, column: 34, scope: !262)
!266 = !DILocation(line: 64, column: 31, scope: !262)
!267 = !DILocation(line: 65, column: 3, scope: !38)
!268 = !DILocation(line: 69, column: 13, scope: !46)
!269 = !DILocation(line: 69, column: 22, scope: !46)
!270 = !DILocation(line: 71, column: 9, scope: !46)
!271 = !DILocation(line: 72, column: 9, scope: !46)
!272 = !DILocation(line: 73, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 73, column: 3)
!274 = distinct !DILexicalBlock(scope: !46, file: !1, line: 73, column: 3)
!275 = !DILocation(line: 73, column: 3, scope: !274)
!276 = !DILocation(line: 73, column: 34, scope: !273)
!277 = !DILocation(line: 73, column: 31, scope: !273)
!278 = !DILocation(line: 74, column: 3, scope: !46)
!279 = !DILocation(line: 78, column: 14, scope: !54)
!280 = !DILocation(line: 78, column: 28, scope: !54)
!281 = !DILocation(line: 78, column: 38, scope: !54)
!282 = !DILocation(line: 80, column: 7, scope: !54)
!283 = !DILocation(line: 81, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 81, column: 3)
!285 = distinct !DILexicalBlock(scope: !54, file: !1, line: 81, column: 3)
!286 = !DILocation(line: 81, column: 3, scope: !285)
!287 = !DILocation(line: 81, column: 38, scope: !284)
!288 = !DILocation(line: 81, column: 27, scope: !284)
!289 = !DILocation(line: 81, column: 35, scope: !284)
!290 = !DILocation(line: 82, column: 1, scope: !54)
!291 = !DILocation(line: 85, column: 13, scope: !62)
!292 = !DILocation(line: 85, column: 26, scope: !62)
!293 = !DILocation(line: 85, column: 36, scope: !62)
!294 = !DILocation(line: 87, column: 7, scope: !62)
!295 = !DILocation(line: 88, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 88, column: 3)
!297 = distinct !DILexicalBlock(scope: !62, file: !1, line: 88, column: 3)
!298 = !DILocation(line: 88, column: 3, scope: !297)
!299 = !DILocation(line: 88, column: 38, scope: !296)
!300 = !DILocation(line: 88, column: 27, scope: !296)
!301 = !DILocation(line: 88, column: 35, scope: !296)
!302 = !DILocation(line: 89, column: 1, scope: !62)
!303 = !DILocation(line: 92, column: 15, scope: !70)
!304 = !DILocation(line: 92, column: 29, scope: !70)
!305 = !DILocation(line: 92, column: 39, scope: !70)
!306 = !DILocation(line: 94, column: 7, scope: !70)
!307 = !DILocation(line: 95, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 95, column: 3)
!309 = distinct !DILexicalBlock(scope: !70, file: !1, line: 95, column: 3)
!310 = !DILocation(line: 95, column: 3, scope: !309)
!311 = !DILocation(line: 95, column: 37, scope: !308)
!312 = !DILocation(line: 95, column: 27, scope: !308)
!313 = !DILocation(line: 95, column: 35, scope: !308)
!314 = !DILocation(line: 96, column: 1, scope: !70)
!315 = !DILocation(line: 99, column: 14, scope: !76)
!316 = !DILocation(line: 99, column: 27, scope: !76)
!317 = !DILocation(line: 99, column: 37, scope: !76)
!318 = !DILocation(line: 101, column: 7, scope: !76)
!319 = !DILocation(line: 102, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 102, column: 3)
!321 = distinct !DILexicalBlock(scope: !76, file: !1, line: 102, column: 3)
!322 = !DILocation(line: 102, column: 3, scope: !321)
!323 = !DILocation(line: 102, column: 37, scope: !320)
!324 = !DILocation(line: 102, column: 27, scope: !320)
!325 = !DILocation(line: 102, column: 35, scope: !320)
!326 = !DILocation(line: 103, column: 1, scope: !76)
!327 = !DILocation(line: 106, column: 14, scope: !82)
!328 = !DILocation(line: 106, column: 28, scope: !82)
!329 = !DILocation(line: 106, column: 38, scope: !82)
!330 = !DILocation(line: 108, column: 10, scope: !82)
!331 = !DILocation(line: 109, column: 7, scope: !82)
!332 = !DILocation(line: 110, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 110, column: 3)
!334 = distinct !DILexicalBlock(scope: !82, file: !1, line: 110, column: 3)
!335 = !DILocation(line: 110, column: 3, scope: !334)
!336 = !DILocation(line: 110, column: 37, scope: !333)
!337 = !DILocation(line: 110, column: 47, scope: !333)
!338 = !DILocation(line: 110, column: 45, scope: !333)
!339 = !DILocation(line: 110, column: 34, scope: !333)
!340 = !DILocation(line: 111, column: 3, scope: !82)
!341 = !DILocation(line: 115, column: 13, scope: !91)
!342 = !DILocation(line: 115, column: 26, scope: !91)
!343 = !DILocation(line: 115, column: 36, scope: !91)
!344 = !DILocation(line: 117, column: 9, scope: !91)
!345 = !DILocation(line: 118, column: 7, scope: !91)
!346 = !DILocation(line: 119, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 119, column: 3)
!348 = distinct !DILexicalBlock(scope: !91, file: !1, line: 119, column: 3)
!349 = !DILocation(line: 119, column: 3, scope: !348)
!350 = !DILocation(line: 119, column: 37, scope: !347)
!351 = !DILocation(line: 119, column: 47, scope: !347)
!352 = !DILocation(line: 119, column: 45, scope: !347)
!353 = !DILocation(line: 119, column: 34, scope: !347)
!354 = !DILocation(line: 120, column: 3, scope: !91)
!355 = !DILocation(line: 124, column: 14, scope: !100)
!356 = !DILocation(line: 124, column: 23, scope: !100)
!357 = !DILocation(line: 129, column: 10, scope: !100)
!358 = !DILocation(line: 127, column: 10, scope: !100)
!359 = !DILocation(line: 126, column: 7, scope: !100)
!360 = !DILocation(line: 130, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 130, column: 3)
!362 = distinct !DILexicalBlock(scope: !100, file: !1, line: 130, column: 3)
!363 = !DILocation(line: 130, column: 3, scope: !362)
!364 = !DILocation(line: 131, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !1, line: 131, column: 9)
!366 = !DILocation(line: 131, column: 16, scope: !365)
!367 = !DILocation(line: 131, column: 9, scope: !361)
!368 = !DILocation(line: 132, column: 3, scope: !100)
!369 = !DILocation(line: 136, column: 13, scope: !106)
!370 = !DILocation(line: 136, column: 22, scope: !106)
!371 = !DILocation(line: 141, column: 10, scope: !106)
!372 = !DILocation(line: 139, column: 9, scope: !106)
!373 = !DILocation(line: 138, column: 9, scope: !106)
!374 = !DILocation(line: 142, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 142, column: 3)
!376 = distinct !DILexicalBlock(scope: !106, file: !1, line: 142, column: 3)
!377 = !DILocation(line: 142, column: 3, scope: !376)
!378 = !DILocation(line: 143, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 143, column: 9)
!380 = !DILocation(line: 143, column: 16, scope: !379)
!381 = !DILocation(line: 143, column: 9, scope: !375)
!382 = !DILocation(line: 144, column: 3, scope: !106)
!383 = !DILocation(line: 148, column: 14, scope: !112)
!384 = !DILocation(line: 148, column: 23, scope: !112)
!385 = !DILocation(line: 153, column: 10, scope: !112)
!386 = !DILocation(line: 151, column: 10, scope: !112)
!387 = !DILocation(line: 150, column: 7, scope: !112)
!388 = !DILocation(line: 154, column: 17, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 154, column: 3)
!390 = distinct !DILexicalBlock(scope: !112, file: !1, line: 154, column: 3)
!391 = !DILocation(line: 154, column: 3, scope: !390)
!392 = !DILocation(line: 155, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !1, line: 155, column: 9)
!394 = !DILocation(line: 155, column: 16, scope: !393)
!395 = !DILocation(line: 155, column: 9, scope: !389)
!396 = !DILocation(line: 156, column: 3, scope: !112)
!397 = !DILocation(line: 160, column: 13, scope: !118)
!398 = !DILocation(line: 160, column: 22, scope: !118)
!399 = !DILocation(line: 165, column: 10, scope: !118)
!400 = !DILocation(line: 163, column: 9, scope: !118)
!401 = !DILocation(line: 162, column: 9, scope: !118)
!402 = !DILocation(line: 166, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 166, column: 3)
!404 = distinct !DILexicalBlock(scope: !118, file: !1, line: 166, column: 3)
!405 = !DILocation(line: 166, column: 3, scope: !404)
!406 = !DILocation(line: 167, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !1, line: 167, column: 9)
!408 = !DILocation(line: 167, column: 16, scope: !407)
!409 = !DILocation(line: 167, column: 9, scope: !403)
!410 = !DILocation(line: 168, column: 3, scope: !118)
!411 = !DILocation(line: 172, column: 17, scope: !124)
!412 = !DILocation(line: 172, column: 26, scope: !124)
!413 = !DILocation(line: 175, column: 7, scope: !124)
!414 = !DILocation(line: 174, column: 7, scope: !124)
!415 = !DILocation(line: 177, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 177, column: 3)
!417 = distinct !DILexicalBlock(scope: !124, file: !1, line: 177, column: 3)
!418 = !DILocation(line: 177, column: 3, scope: !417)
!419 = !DILocation(line: 178, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !1, line: 178, column: 9)
!421 = !DILocation(line: 178, column: 18, scope: !420)
!422 = !DILocation(line: 178, column: 16, scope: !420)
!423 = !DILocation(line: 178, column: 9, scope: !416)
!424 = !DILocation(line: 179, column: 3, scope: !124)
!425 = !DILocation(line: 183, column: 16, scope: !132)
!426 = !DILocation(line: 183, column: 25, scope: !132)
!427 = !DILocation(line: 186, column: 7, scope: !132)
!428 = !DILocation(line: 185, column: 7, scope: !132)
!429 = !DILocation(line: 188, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 188, column: 3)
!431 = distinct !DILexicalBlock(scope: !132, file: !1, line: 188, column: 3)
!432 = !DILocation(line: 188, column: 3, scope: !431)
!433 = !DILocation(line: 189, column: 9, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 189, column: 9)
!435 = !DILocation(line: 189, column: 18, scope: !434)
!436 = !DILocation(line: 189, column: 16, scope: !434)
!437 = !DILocation(line: 189, column: 9, scope: !430)
!438 = !DILocation(line: 190, column: 3, scope: !132)
!439 = !DILocation(line: 194, column: 17, scope: !140)
!440 = !DILocation(line: 194, column: 26, scope: !140)
!441 = !DILocation(line: 197, column: 7, scope: !140)
!442 = !DILocation(line: 196, column: 7, scope: !140)
!443 = !DILocation(line: 198, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 198, column: 3)
!445 = distinct !DILexicalBlock(scope: !140, file: !1, line: 198, column: 3)
!446 = !DILocation(line: 198, column: 3, scope: !445)
!447 = !DILocation(line: 199, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !1, line: 199, column: 9)
!449 = !DILocation(line: 199, column: 18, scope: !448)
!450 = !DILocation(line: 199, column: 16, scope: !448)
!451 = !DILocation(line: 199, column: 9, scope: !444)
!452 = !DILocation(line: 200, column: 3, scope: !140)
!453 = !DILocation(line: 204, column: 16, scope: !146)
!454 = !DILocation(line: 204, column: 25, scope: !146)
!455 = !DILocation(line: 207, column: 9, scope: !146)
!456 = !DILocation(line: 206, column: 9, scope: !146)
!457 = !DILocation(line: 209, column: 17, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 209, column: 3)
!459 = distinct !DILexicalBlock(scope: !146, file: !1, line: 209, column: 3)
!460 = !DILocation(line: 209, column: 3, scope: !459)
!461 = !DILocation(line: 210, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 210, column: 9)
!463 = !DILocation(line: 210, column: 18, scope: !462)
!464 = !DILocation(line: 210, column: 16, scope: !462)
!465 = !DILocation(line: 210, column: 9, scope: !458)
!466 = !DILocation(line: 211, column: 3, scope: !146)
!467 = !DILocation(line: 215, column: 15, scope: !152)
!468 = !DILocation(line: 215, column: 24, scope: !152)
!469 = !DILocation(line: 60, column: 14, scope: !38, inlinedAt: !470)
!470 = distinct !DILocation(line: 220, column: 9, scope: !152)
!471 = !DILocation(line: 60, column: 23, scope: !38, inlinedAt: !470)
!472 = !DILocation(line: 62, column: 10, scope: !38, inlinedAt: !470)
!473 = !DILocation(line: 63, column: 10, scope: !38, inlinedAt: !470)
!474 = !DILocation(line: 64, column: 17, scope: !262, inlinedAt: !470)
!475 = !DILocation(line: 64, column: 3, scope: !263, inlinedAt: !470)
!476 = !DILocation(line: 222, column: 19, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 222, column: 19)
!478 = distinct !DILexicalBlock(scope: !152, file: !1, line: 221, column: 7)
!479 = !DILocation(line: 222, column: 57, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !1, line: 222, column: 19)
!481 = !DILocation(line: 222, column: 55, scope: !480)
!482 = !DILocation(line: 220, column: 9, scope: !152)
!483 = !DILocation(line: 64, column: 34, scope: !262, inlinedAt: !470)
!484 = !DILocation(line: 64, column: 31, scope: !262, inlinedAt: !470)
!485 = !DILocation(line: 218, column: 10, scope: !152)
!486 = !DILocation(line: 221, column: 11, scope: !478)
!487 = !DILocation(line: 217, column: 10, scope: !152)
!488 = !DILocation(line: 221, column: 7, scope: !152)
!489 = !DILocation(line: 221, column: 43, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 221, column: 19)
!491 = distinct !DILexicalBlock(scope: !478, file: !1, line: 221, column: 19)
!492 = !DILocation(line: 221, column: 50, scope: !490)
!493 = !DILocation(line: 221, column: 19, scope: !491)
!494 = !DILocation(line: 222, column: 43, scope: !480)
!495 = !DILocation(line: 222, column: 50, scope: !480)
!496 = !DILocation(line: 223, column: 1, scope: !152)
!497 = !DILocation(line: 226, column: 14, scope: !160)
!498 = !DILocation(line: 226, column: 23, scope: !160)
!499 = !DILocation(line: 69, column: 13, scope: !46, inlinedAt: !500)
!500 = distinct !DILocation(line: 231, column: 9, scope: !160)
!501 = !DILocation(line: 69, column: 22, scope: !46, inlinedAt: !500)
!502 = !DILocation(line: 71, column: 9, scope: !46, inlinedAt: !500)
!503 = !DILocation(line: 72, column: 9, scope: !46, inlinedAt: !500)
!504 = !DILocation(line: 73, column: 17, scope: !273, inlinedAt: !500)
!505 = !DILocation(line: 73, column: 3, scope: !274, inlinedAt: !500)
!506 = !DILocation(line: 233, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 233, column: 19)
!508 = distinct !DILexicalBlock(scope: !160, file: !1, line: 232, column: 7)
!509 = !DILocation(line: 233, column: 57, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !1, line: 233, column: 19)
!511 = !DILocation(line: 233, column: 52, scope: !510)
!512 = !DILocation(line: 231, column: 9, scope: !160)
!513 = !DILocation(line: 73, column: 34, scope: !273, inlinedAt: !500)
!514 = !DILocation(line: 73, column: 31, scope: !273, inlinedAt: !500)
!515 = !DILocation(line: 229, column: 10, scope: !160)
!516 = !DILocation(line: 232, column: 11, scope: !508)
!517 = !DILocation(line: 228, column: 10, scope: !160)
!518 = !DILocation(line: 232, column: 7, scope: !160)
!519 = !DILocation(line: 232, column: 43, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 232, column: 19)
!521 = distinct !DILexicalBlock(scope: !508, file: !1, line: 232, column: 19)
!522 = !DILocation(line: 232, column: 50, scope: !520)
!523 = !DILocation(line: 232, column: 19, scope: !521)
!524 = !DILocation(line: 233, column: 43, scope: !510)
!525 = !DILocation(line: 233, column: 50, scope: !510)
!526 = !DILocation(line: 234, column: 1, scope: !160)
!527 = !DILocation(line: 237, column: 14, scope: !168)
!528 = !DILocation(line: 237, column: 23, scope: !168)
!529 = !DILocation(line: 239, column: 7, scope: !168)
!530 = !DILocation(line: 240, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 240, column: 3)
!532 = distinct !DILexicalBlock(scope: !168, file: !1, line: 240, column: 3)
!533 = !DILocation(line: 240, column: 3, scope: !532)
!534 = !DILocation(line: 241, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 241, column: 9)
!536 = !DILocation(line: 241, column: 16, scope: !535)
!537 = !DILocation(line: 241, column: 9, scope: !531)
!538 = !DILocation(line: 241, column: 31, scope: !535)
!539 = !DILocation(line: 241, column: 22, scope: !535)
!540 = !DILocation(line: 241, column: 29, scope: !535)
!541 = !DILocation(line: 243, column: 1, scope: !168)
!542 = !DILocation(line: 246, column: 13, scope: !173)
!543 = !DILocation(line: 246, column: 22, scope: !173)
!544 = !DILocation(line: 248, column: 7, scope: !173)
!545 = !DILocation(line: 249, column: 17, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 249, column: 3)
!547 = distinct !DILexicalBlock(scope: !173, file: !1, line: 249, column: 3)
!548 = !DILocation(line: 249, column: 3, scope: !547)
!549 = !DILocation(line: 250, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 250, column: 9)
!551 = !DILocation(line: 250, column: 16, scope: !550)
!552 = !DILocation(line: 250, column: 9, scope: !546)
!553 = !DILocation(line: 250, column: 31, scope: !550)
!554 = !DILocation(line: 250, column: 22, scope: !550)
!555 = !DILocation(line: 250, column: 29, scope: !550)
!556 = !DILocation(line: 252, column: 1, scope: !173)
!557 = !DILocation(line: 255, column: 14, scope: !178)
!558 = !DILocation(line: 255, column: 23, scope: !178)
!559 = !DILocation(line: 257, column: 7, scope: !178)
!560 = !DILocation(line: 258, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 258, column: 3)
!562 = distinct !DILexicalBlock(scope: !178, file: !1, line: 258, column: 3)
!563 = !DILocation(line: 258, column: 3, scope: !562)
!564 = !DILocation(line: 258, column: 40, scope: !561)
!565 = !DILocation(line: 258, column: 36, scope: !561)
!566 = !DILocation(line: 258, column: 34, scope: !561)
!567 = !DILocation(line: 259, column: 1, scope: !178)
!568 = !DILocation(line: 262, column: 13, scope: !183)
!569 = !DILocation(line: 262, column: 22, scope: !183)
!570 = !DILocation(line: 264, column: 7, scope: !183)
!571 = !DILocation(line: 265, column: 17, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 265, column: 3)
!573 = distinct !DILexicalBlock(scope: !183, file: !1, line: 265, column: 3)
!574 = !DILocation(line: 265, column: 3, scope: !573)
!575 = !DILocation(line: 265, column: 40, scope: !572)
!576 = !DILocation(line: 265, column: 36, scope: !572)
!577 = !DILocation(line: 265, column: 34, scope: !572)
!578 = !DILocation(line: 266, column: 1, scope: !183)
!579 = !DILocation(line: 269, column: 17, scope: !188)
!580 = !DILocation(line: 269, column: 26, scope: !188)
!581 = !DILocation(line: 124, column: 14, scope: !100, inlinedAt: !582)
!582 = distinct !DILocation(line: 274, column: 9, scope: !188)
!583 = !DILocation(line: 124, column: 23, scope: !100, inlinedAt: !582)
!584 = !DILocation(line: 129, column: 10, scope: !100, inlinedAt: !582)
!585 = !DILocation(line: 127, column: 10, scope: !100, inlinedAt: !582)
!586 = !DILocation(line: 126, column: 7, scope: !100, inlinedAt: !582)
!587 = !DILocation(line: 130, column: 17, scope: !361, inlinedAt: !582)
!588 = !DILocation(line: 130, column: 3, scope: !362, inlinedAt: !582)
!589 = !DILocation(line: 274, column: 9, scope: !188)
!590 = !DILocation(line: 131, column: 9, scope: !365, inlinedAt: !582)
!591 = !DILocation(line: 131, column: 16, scope: !365, inlinedAt: !582)
!592 = !DILocation(line: 131, column: 9, scope: !361, inlinedAt: !582)
!593 = !DILocation(line: 272, column: 10, scope: !188)
!594 = !DILocation(line: 272, column: 15, scope: !188)
!595 = !DILocation(line: 271, column: 7, scope: !188)
!596 = !DILocation(line: 276, column: 17, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 276, column: 3)
!598 = distinct !DILexicalBlock(scope: !188, file: !1, line: 276, column: 3)
!599 = !DILocation(line: 276, column: 3, scope: !598)
!600 = !DILocation(line: 277, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !1, line: 277, column: 9)
!602 = !DILocation(line: 277, column: 16, scope: !601)
!603 = !DILocation(line: 277, column: 9, scope: !597)
!604 = !DILocation(line: 278, column: 25, scope: !601)
!605 = !DILocation(line: 278, column: 14, scope: !601)
!606 = !DILocation(line: 278, column: 11, scope: !601)
!607 = !DILocation(line: 278, column: 7, scope: !601)
!608 = !DILocation(line: 277, column: 9, scope: !601)
!609 = !DILocation(line: 279, column: 9, scope: !188)
!610 = !DILocation(line: 279, column: 18, scope: !188)
!611 = !DILocation(line: 280, column: 3, scope: !188)
!612 = !DILocation(line: 284, column: 16, scope: !195)
!613 = !DILocation(line: 284, column: 25, scope: !195)
!614 = !DILocation(line: 136, column: 13, scope: !106, inlinedAt: !615)
!615 = distinct !DILocation(line: 289, column: 9, scope: !195)
!616 = !DILocation(line: 136, column: 22, scope: !106, inlinedAt: !615)
!617 = !DILocation(line: 141, column: 10, scope: !106, inlinedAt: !615)
!618 = !DILocation(line: 139, column: 9, scope: !106, inlinedAt: !615)
!619 = !DILocation(line: 138, column: 9, scope: !106, inlinedAt: !615)
!620 = !DILocation(line: 142, column: 17, scope: !375, inlinedAt: !615)
!621 = !DILocation(line: 142, column: 3, scope: !376, inlinedAt: !615)
!622 = !DILocation(line: 289, column: 9, scope: !195)
!623 = !DILocation(line: 143, column: 9, scope: !379, inlinedAt: !615)
!624 = !DILocation(line: 143, column: 16, scope: !379, inlinedAt: !615)
!625 = !DILocation(line: 143, column: 9, scope: !375, inlinedAt: !615)
!626 = !DILocation(line: 287, column: 9, scope: !195)
!627 = !DILocation(line: 287, column: 14, scope: !195)
!628 = !DILocation(line: 286, column: 7, scope: !195)
!629 = !DILocation(line: 291, column: 17, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 291, column: 3)
!631 = distinct !DILexicalBlock(scope: !195, file: !1, line: 291, column: 3)
!632 = !DILocation(line: 292, column: 18, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !1, line: 292, column: 9)
!634 = !DILocation(line: 291, column: 3, scope: !631)
!635 = !DILocation(line: 292, column: 22, scope: !633)
!636 = !DILocation(line: 292, column: 9, scope: !633)
!637 = !DILocation(line: 292, column: 16, scope: !633)
!638 = !DILocation(line: 292, column: 9, scope: !630)
!639 = !DILocation(line: 293, column: 25, scope: !633)
!640 = !DILocation(line: 293, column: 18, scope: !633)
!641 = !DILocation(line: 293, column: 14, scope: !633)
!642 = !DILocation(line: 293, column: 11, scope: !633)
!643 = !DILocation(line: 293, column: 7, scope: !633)
!644 = !DILocation(line: 294, column: 13, scope: !195)
!645 = !DILocation(line: 294, column: 9, scope: !195)
!646 = !DILocation(line: 294, column: 18, scope: !195)
!647 = !DILocation(line: 295, column: 3, scope: !195)
