; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX8 = type { float, float }
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [65 x i8] c"$Id: DatatypeConversion.c,v 1.7 2001/12/03 22:10:04 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c() #0 {
  ret i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), !dbg !158
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %src_type, i32 %dst_type) #0 {
  tail call void @llvm.dbg.value(metadata i32 %src_type, i64 0, metadata !63, metadata !159), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %dst_type, i64 0, metadata !64, metadata !159), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %src_type, i64 0, metadata !151, metadata !159), !dbg !162
  switch i32 %src_type, label %2 [
    i32 2, label %PUGHSlabi_PrecisionVarType.exit
    i32 6, label %1
  ], !dbg !164

; <label>:1                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !151, metadata !159), !dbg !162
  br label %PUGHSlabi_PrecisionVarType.exit, !dbg !165

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32 %src_type, 10, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 12, i64 0, metadata !151, metadata !159), !dbg !162
  %.type.i = select i1 %3, i32 12, i32 %src_type, !dbg !171
  br label %PUGHSlabi_PrecisionVarType.exit, !dbg !171

PUGHSlabi_PrecisionVarType.exit:                  ; preds = %0, %1, %2
  %4 = phi i32 [ %.type.i, %2 ], [ 8, %1 ], [ 4, %0 ]
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !63, metadata !159), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %dst_type, i64 0, metadata !151, metadata !159), !dbg !172
  switch i32 %dst_type, label %PUGHSlabi_PrecisionVarType.exit20 [
    i32 2, label %.thread
    i32 6, label %5
  ], !dbg !174

; <label>:5                                       ; preds = %PUGHSlabi_PrecisionVarType.exit
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !151, metadata !159), !dbg !172
  br label %.thread, !dbg !175

.thread:                                          ; preds = %PUGHSlabi_PrecisionVarType.exit, %5
  %.ph = phi i32 [ 4, %PUGHSlabi_PrecisionVarType.exit ], [ 8, %5 ]
  tail call void @llvm.dbg.value(metadata i32 %.type.i18, i64 0, metadata !64, metadata !159), !dbg !161
  %6 = icmp eq i32 %4, 5, !dbg !176
  br label %12, !dbg !180

PUGHSlabi_PrecisionVarType.exit20:                ; preds = %PUGHSlabi_PrecisionVarType.exit
  %7 = icmp eq i32 %dst_type, 10, !dbg !181
  tail call void @llvm.dbg.value(metadata i32 12, i64 0, metadata !151, metadata !159), !dbg !172
  %.type.i18 = select i1 %7, i32 12, i32 %dst_type, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %.type.i18, i64 0, metadata !64, metadata !159), !dbg !161
  %8 = icmp eq i32 %4, 4, !dbg !183
  %9 = icmp eq i32 %.type.i18, 3, !dbg !184
  %or.cond = and i1 %9, %8, !dbg !185
  br i1 %or.cond, label %30, label %10, !dbg !185

; <label>:10                                      ; preds = %PUGHSlabi_PrecisionVarType.exit20
  %11 = icmp eq i32 %4, 5, !dbg !176
  %or.cond3 = and i1 %9, %11, !dbg !180
  br i1 %or.cond3, label %30, label %12, !dbg !180

; <label>:12                                      ; preds = %.thread, %10
  %13 = phi i1 [ %6, %.thread ], [ %11, %10 ]
  %14 = phi i32 [ %.ph, %.thread ], [ %.type.i18, %10 ]
  %15 = icmp eq i32 %14, 4, !dbg !186
  %or.cond5 = and i1 %13, %15, !dbg !188
  br i1 %or.cond5, label %30, label %16, !dbg !188

; <label>:16                                      ; preds = %12
  %17 = icmp eq i32 %4, 8, !dbg !189
  %18 = icmp eq i32 %14, 7, !dbg !191
  %or.cond7 = and i1 %17, %18, !dbg !192
  br i1 %or.cond7, label %30, label %19, !dbg !192

; <label>:19                                      ; preds = %16
  %20 = icmp eq i32 %4, 9, !dbg !193
  %or.cond9 = and i1 %20, %18, !dbg !195
  br i1 %or.cond9, label %30, label %21, !dbg !195

; <label>:21                                      ; preds = %19
  %22 = icmp eq i32 %14, 8, !dbg !196
  %or.cond11 = and i1 %20, %22, !dbg !198
  br i1 %or.cond11, label %30, label %23, !dbg !198

; <label>:23                                      ; preds = %21
  %24 = icmp eq i32 %4, 12, !dbg !199
  %25 = icmp eq i32 %14, 11, !dbg !201
  %or.cond13 = and i1 %24, %25, !dbg !202
  br i1 %or.cond13, label %30, label %26, !dbg !202

; <label>:26                                      ; preds = %23
  %27 = icmp eq i32 %4, 13, !dbg !203
  %or.cond15 = and i1 %27, %25, !dbg !205
  br i1 %or.cond15, label %30, label %28, !dbg !205

; <label>:28                                      ; preds = %26
  %29 = icmp eq i32 %14, 12, !dbg !206
  %or.cond17 = and i1 %27, %29, !dbg !208
  %Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16. = select i1 %or.cond17, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16, void (i8*, i8*, i32, i32, i32)* null, !dbg !209
  br label %30, !dbg !209

; <label>:30                                      ; preds = %28, %26, %23, %21, %19, %16, %12, %10, %PUGHSlabi_PrecisionVarType.exit20
  %retval.0 = phi void (i8*, i8*, i32, i32, i32)* [ @Convert_CCTK_INT4_to_CCTK_INT2, %PUGHSlabi_PrecisionVarType.exit20 ], [ @Convert_CCTK_INT8_to_CCTK_INT2, %10 ], [ @Convert_CCTK_INT8_to_CCTK_INT4, %12 ], [ @Convert_CCTK_REAL8_to_CCTK_REAL4, %16 ], [ @Convert_CCTK_REAL16_to_CCTK_REAL4, %19 ], [ @Convert_CCTK_REAL16_to_CCTK_REAL8, %21 ], [ @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8, %23 ], [ @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8, %26 ], [ %Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16., %28 ]
  ret void (i8*, i8*, i32, i32, i32)* %retval.0, !dbg !211
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_INT4_to_CCTK_INT2(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !68, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !69, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !70, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !71, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !72, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i16* %3, i64 0, metadata !73, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !74, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !70, metadata !159), !dbg !212
  %1 = icmp eq i32 %nelems, 0, !dbg !212
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !212

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to i32*, !dbg !212
  %3 = bitcast i8* %dst to i16*, !dbg !212
  %4 = sext i32 %src_stride to i64, !dbg !213
  %5 = sext i32 %dst_stride to i64, !dbg !213
  br label %6, !dbg !212

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi i32* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi i16* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !212
  %8 = load i32* %_src.03, align 4, !dbg !213, !tbaa !215
  %9 = trunc i32 %8 to i16, !dbg !213
  store i16 %9, i16* %_dst.02, align 2, !dbg !213, !tbaa !219
  %10 = getelementptr inbounds i32* %_src.03, i64 %4, !dbg !213
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !74, metadata !159), !dbg !212
  %11 = getelementptr inbounds i16* %_dst.02, i64 %5, !dbg !213
  tail call void @llvm.dbg.value(metadata i16* %11, i64 0, metadata !73, metadata !159), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !70, metadata !159), !dbg !212
  %12 = icmp eq i32 %7, 0, !dbg !212
  br i1 %12, label %._crit_edge, label %6, !dbg !212

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !212
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_INT8_to_CCTK_INT2(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !77, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !78, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !79, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !80, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !81, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i16* %3, i64 0, metadata !82, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !83, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !79, metadata !159), !dbg !221
  %1 = icmp eq i32 %nelems, 0, !dbg !221
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !221

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to i64*, !dbg !221
  %3 = bitcast i8* %dst to i16*, !dbg !221
  %4 = sext i32 %src_stride to i64, !dbg !222
  %5 = sext i32 %dst_stride to i64, !dbg !222
  br label %6, !dbg !221

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi i64* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi i16* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !221
  %8 = load i64* %_src.03, align 8, !dbg !222, !tbaa !224
  %9 = trunc i64 %8 to i16, !dbg !222
  store i16 %9, i16* %_dst.02, align 2, !dbg !222, !tbaa !219
  %10 = getelementptr inbounds i64* %_src.03, i64 %4, !dbg !222
  tail call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !83, metadata !159), !dbg !221
  %11 = getelementptr inbounds i16* %_dst.02, i64 %5, !dbg !222
  tail call void @llvm.dbg.value(metadata i16* %11, i64 0, metadata !82, metadata !159), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !79, metadata !159), !dbg !221
  %12 = icmp eq i32 %7, 0, !dbg !221
  br i1 %12, label %._crit_edge, label %6, !dbg !221

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !221
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_INT8_to_CCTK_INT4(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !86, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !87, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !88, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !89, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !90, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !91, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !92, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !88, metadata !159), !dbg !226
  %1 = icmp eq i32 %nelems, 0, !dbg !226
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !226

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to i64*, !dbg !226
  %3 = bitcast i8* %dst to i32*, !dbg !226
  %4 = sext i32 %src_stride to i64, !dbg !227
  %5 = sext i32 %dst_stride to i64, !dbg !227
  br label %6, !dbg !226

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi i64* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi i32* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !226
  %8 = load i64* %_src.03, align 8, !dbg !227, !tbaa !224
  %9 = trunc i64 %8 to i32, !dbg !227
  store i32 %9, i32* %_dst.02, align 4, !dbg !227, !tbaa !215
  %10 = getelementptr inbounds i64* %_src.03, i64 %4, !dbg !227
  tail call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !92, metadata !159), !dbg !226
  %11 = getelementptr inbounds i32* %_dst.02, i64 %5, !dbg !227
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !91, metadata !159), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !88, metadata !159), !dbg !226
  %12 = icmp eq i32 %7, 0, !dbg !226
  br i1 %12, label %._crit_edge, label %6, !dbg !226

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !226
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_REAL8_to_CCTK_REAL4(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !95, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !96, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !97, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !98, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !99, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !100, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !101, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !97, metadata !159), !dbg !229
  %1 = icmp eq i32 %nelems, 0, !dbg !229
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !229

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to double*, !dbg !229
  %3 = bitcast i8* %dst to float*, !dbg !229
  %4 = sext i32 %src_stride to i64, !dbg !230
  %5 = sext i32 %dst_stride to i64, !dbg !230
  br label %6, !dbg !229

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi double* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi float* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !229
  %8 = load double* %_src.03, align 8, !dbg !230, !tbaa !232
  %9 = fptrunc double %8 to float, !dbg !230
  store float %9, float* %_dst.02, align 4, !dbg !230, !tbaa !234
  %10 = getelementptr inbounds double* %_src.03, i64 %4, !dbg !230
  tail call void @llvm.dbg.value(metadata double* %10, i64 0, metadata !101, metadata !159), !dbg !229
  %11 = getelementptr inbounds float* %_dst.02, i64 %5, !dbg !230
  tail call void @llvm.dbg.value(metadata float* %11, i64 0, metadata !100, metadata !159), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !97, metadata !159), !dbg !229
  %12 = icmp eq i32 %7, 0, !dbg !229
  br i1 %12, label %._crit_edge, label %6, !dbg !229

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !229
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_REAL16_to_CCTK_REAL4(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !104, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !105, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !106, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !107, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !108, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !109, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata x86_fp80* %2, i64 0, metadata !110, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !106, metadata !159), !dbg !236
  %1 = icmp eq i32 %nelems, 0, !dbg !236
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !236

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to x86_fp80*, !dbg !236
  %3 = bitcast i8* %dst to float*, !dbg !236
  %4 = sext i32 %src_stride to i64, !dbg !237
  %5 = sext i32 %dst_stride to i64, !dbg !237
  br label %6, !dbg !236

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi x86_fp80* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi float* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !236
  %8 = load x86_fp80* %_src.03, align 16, !dbg !237, !tbaa !239
  %9 = fptrunc x86_fp80 %8 to float, !dbg !237
  store float %9, float* %_dst.02, align 4, !dbg !237, !tbaa !234
  %10 = getelementptr inbounds x86_fp80* %_src.03, i64 %4, !dbg !237
  tail call void @llvm.dbg.value(metadata x86_fp80* %10, i64 0, metadata !110, metadata !159), !dbg !236
  %11 = getelementptr inbounds float* %_dst.02, i64 %5, !dbg !237
  tail call void @llvm.dbg.value(metadata float* %11, i64 0, metadata !109, metadata !159), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !106, metadata !159), !dbg !236
  %12 = icmp eq i32 %7, 0, !dbg !236
  br i1 %12, label %._crit_edge, label %6, !dbg !236

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !236
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_REAL16_to_CCTK_REAL8(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !113, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !114, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !115, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !116, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !117, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !118, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata x86_fp80* %2, i64 0, metadata !119, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !115, metadata !159), !dbg !241
  %1 = icmp eq i32 %nelems, 0, !dbg !241
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !241

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to x86_fp80*, !dbg !241
  %3 = bitcast i8* %dst to double*, !dbg !241
  %4 = sext i32 %src_stride to i64, !dbg !242
  %5 = sext i32 %dst_stride to i64, !dbg !242
  br label %6, !dbg !241

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi x86_fp80* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi double* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !241
  %8 = load x86_fp80* %_src.03, align 16, !dbg !242, !tbaa !239
  %9 = fptrunc x86_fp80 %8 to double, !dbg !242
  store double %9, double* %_dst.02, align 8, !dbg !242, !tbaa !232
  %10 = getelementptr inbounds x86_fp80* %_src.03, i64 %4, !dbg !242
  tail call void @llvm.dbg.value(metadata x86_fp80* %10, i64 0, metadata !119, metadata !159), !dbg !241
  %11 = getelementptr inbounds double* %_dst.02, i64 %5, !dbg !242
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !118, metadata !159), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !115, metadata !159), !dbg !241
  %12 = icmp eq i32 %7, 0, !dbg !241
  br i1 %12, label %._crit_edge, label %6, !dbg !241

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !241
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !122, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !123, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !124, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !125, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !126, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX8* %3, i64 0, metadata !127, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX16* %2, i64 0, metadata !128, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !124, metadata !159), !dbg !244
  %1 = icmp eq i32 %nelems, 0, !dbg !244
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !244

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to %struct.CCTK_COMPLEX16*, !dbg !244
  %3 = bitcast i8* %dst to %struct.CCTK_COMPLEX8*, !dbg !244
  %4 = sext i32 %src_stride to i64, !dbg !245
  %5 = sext i32 %dst_stride to i64, !dbg !245
  br label %6, !dbg !244

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi %struct.CCTK_COMPLEX16* [ %2, %.lr.ph ], [ %16, %6 ]
  %_dst.02 = phi %struct.CCTK_COMPLEX8* [ %3, %.lr.ph ], [ %17, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !244
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.03, i64 0, i32 0, !dbg !245
  %9 = load double* %8, align 8, !dbg !245, !tbaa !247
  %10 = fptrunc double %9 to float, !dbg !245
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 0, !dbg !245
  store float %10, float* %11, align 4, !dbg !245, !tbaa !249
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.03, i64 0, i32 1, !dbg !245
  %13 = load double* %12, align 8, !dbg !245, !tbaa !251
  %14 = fptrunc double %13 to float, !dbg !245
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 1, !dbg !245
  store float %14, float* %15, align 4, !dbg !245, !tbaa !252
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.03, i64 %4, !dbg !245
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX16* %16, i64 0, metadata !128, metadata !159), !dbg !244
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 %5, !dbg !245
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX8* %17, i64 0, metadata !127, metadata !159), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !124, metadata !159), !dbg !244
  %18 = icmp eq i32 %7, 0, !dbg !244
  br i1 %18, label %._crit_edge, label %6, !dbg !244

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !244
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !131, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !132, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !133, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !134, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !135, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX8* %3, i64 0, metadata !136, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX32* %2, i64 0, metadata !137, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !133, metadata !159), !dbg !253
  %1 = icmp eq i32 %nelems, 0, !dbg !253
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !253

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to %struct.CCTK_COMPLEX32*, !dbg !253
  %3 = bitcast i8* %dst to %struct.CCTK_COMPLEX8*, !dbg !253
  %4 = sext i32 %src_stride to i64, !dbg !254
  %5 = sext i32 %dst_stride to i64, !dbg !254
  br label %6, !dbg !253

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi %struct.CCTK_COMPLEX32* [ %2, %.lr.ph ], [ %16, %6 ]
  %_dst.02 = phi %struct.CCTK_COMPLEX8* [ %3, %.lr.ph ], [ %17, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !253
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 0, !dbg !254
  %9 = load x86_fp80* %8, align 16, !dbg !254, !tbaa !256
  %10 = fptrunc x86_fp80 %9 to float, !dbg !254
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 0, !dbg !254
  store float %10, float* %11, align 4, !dbg !254, !tbaa !249
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 1, !dbg !254
  %13 = load x86_fp80* %12, align 16, !dbg !254, !tbaa !258
  %14 = fptrunc x86_fp80 %13 to float, !dbg !254
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 1, !dbg !254
  store float %14, float* %15, align 4, !dbg !254, !tbaa !252
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 %4, !dbg !254
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX32* %16, i64 0, metadata !137, metadata !159), !dbg !253
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 %5, !dbg !254
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX8* %17, i64 0, metadata !136, metadata !159), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !133, metadata !159), !dbg !253
  %18 = icmp eq i32 %7, 0, !dbg !253
  br i1 %18, label %._crit_edge, label %6, !dbg !253

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !253
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !140, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata i8* %dst, i64 0, metadata !141, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %nelems, i64 0, metadata !142, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %src_stride, i64 0, metadata !143, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %dst_stride, i64 0, metadata !144, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX16* %3, i64 0, metadata !145, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX32* %2, i64 0, metadata !146, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !142, metadata !159), !dbg !259
  %1 = icmp eq i32 %nelems, 0, !dbg !259
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !259

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to %struct.CCTK_COMPLEX32*, !dbg !259
  %3 = bitcast i8* %dst to %struct.CCTK_COMPLEX16*, !dbg !259
  %4 = sext i32 %src_stride to i64, !dbg !260
  %5 = sext i32 %dst_stride to i64, !dbg !260
  br label %6, !dbg !259

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi %struct.CCTK_COMPLEX32* [ %2, %.lr.ph ], [ %16, %6 ]
  %_dst.02 = phi %struct.CCTK_COMPLEX16* [ %3, %.lr.ph ], [ %17, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1, !dbg !259
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 0, !dbg !260
  %9 = load x86_fp80* %8, align 16, !dbg !260, !tbaa !256
  %10 = fptrunc x86_fp80 %9 to double, !dbg !260
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.02, i64 0, i32 0, !dbg !260
  store double %10, double* %11, align 8, !dbg !260, !tbaa !247
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 1, !dbg !260
  %13 = load x86_fp80* %12, align 16, !dbg !260, !tbaa !258
  %14 = fptrunc x86_fp80 %13 to double, !dbg !260
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.02, i64 0, i32 1, !dbg !260
  store double %14, double* %15, align 8, !dbg !260, !tbaa !251
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 %4, !dbg !260
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX32* %16, i64 0, metadata !146, metadata !159), !dbg !259
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.02, i64 %5, !dbg !260
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX16* %17, i64 0, metadata !145, metadata !159), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !142, metadata !159), !dbg !259
  %18 = icmp eq i32 %7, 0, !dbg !259
  br i1 %18, label %._crit_edge, label %6, !dbg !259

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !259
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!154, !155, !156}
!llvm.ident = !{!157}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !44, globals: !152, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !5, !9, !12, !8, !13, !15, !14, !18, !21, !17, !22, !29, !36, !43}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX8", file: !24, line: 52, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 48, size: 64, align: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !25, file: !24, line: 50, baseType: !14, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !25, file: !24, line: 51, baseType: !14, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX16", file: !24, line: 44, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 40, size: 128, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !32, file: !24, line: 42, baseType: !17, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !32, file: !24, line: 43, baseType: !17, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX32", file: !24, line: 36, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 32, size: 256, align: 128, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !39, file: !24, line: 34, baseType: !20, size: 128, align: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !39, file: !24, line: 35, baseType: !20, size: 128, align: 128, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!44 = !{!45, !51, !66, !75, !84, !93, !102, !111, !120, !129, !138, !147}
!45 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c", scope: !1, file: !1, line: 21, type: !46, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c, variables: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!51 = !DISubprogram(name: "PUGHSlabi_GetDatatypeConversionFn", scope: !1, file: !1, line: 126, type: !52, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* (i32, i32)* @PUGHSlabi_GetDatatypeConversionFn, variables: !62)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !8, !8}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hslabConversionFn", file: !55, line: 21, baseType: !56)
!55 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/PUGHSlab.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !61, !8, !8, !8}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_type", arg: 1, scope: !51, file: !1, line: 126, type: !8)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_type", arg: 2, scope: !51, file: !1, line: 127, type: !8)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !51, file: !1, line: 129, type: !54)
!66 = !DISubprogram(name: "Convert_CCTK_INT4_to_CCTK_INT2", scope: !1, file: !1, line: 58, type: !57, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_INT4_to_CCTK_INT2, variables: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !66, file: !1, line: 58, type: !59)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !66, file: !1, line: 58, type: !61)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !66, file: !1, line: 58, type: !8)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !66, file: !1, line: 58, type: !8)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !66, file: !1, line: 58, type: !8)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !66, file: !1, line: 58, type: !4)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !66, file: !1, line: 58, type: !6)
!75 = !DISubprogram(name: "Convert_CCTK_INT8_to_CCTK_INT2", scope: !1, file: !1, line: 61, type: !57, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_INT8_to_CCTK_INT2, variables: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !75, file: !1, line: 61, type: !59)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !75, file: !1, line: 61, type: !61)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !75, file: !1, line: 61, type: !8)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !75, file: !1, line: 61, type: !8)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !75, file: !1, line: 61, type: !8)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !75, file: !1, line: 61, type: !4)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !75, file: !1, line: 61, type: !9)
!84 = !DISubprogram(name: "Convert_CCTK_INT8_to_CCTK_INT4", scope: !1, file: !1, line: 64, type: !57, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_INT8_to_CCTK_INT4, variables: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !84, file: !1, line: 64, type: !59)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !84, file: !1, line: 64, type: !61)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !84, file: !1, line: 64, type: !8)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !84, file: !1, line: 64, type: !8)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !84, file: !1, line: 64, type: !8)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !84, file: !1, line: 64, type: !12)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !84, file: !1, line: 64, type: !9)
!93 = !DISubprogram(name: "Convert_CCTK_REAL8_to_CCTK_REAL4", scope: !1, file: !1, line: 69, type: !57, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_REAL8_to_CCTK_REAL4, variables: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !93, file: !1, line: 69, type: !59)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !93, file: !1, line: 69, type: !61)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !93, file: !1, line: 69, type: !8)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !93, file: !1, line: 69, type: !8)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !93, file: !1, line: 69, type: !8)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !93, file: !1, line: 69, type: !13)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !93, file: !1, line: 69, type: !15)
!102 = !DISubprogram(name: "Convert_CCTK_REAL16_to_CCTK_REAL4", scope: !1, file: !1, line: 72, type: !57, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_REAL16_to_CCTK_REAL4, variables: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !102, file: !1, line: 72, type: !59)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !102, file: !1, line: 72, type: !61)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !102, file: !1, line: 72, type: !8)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !102, file: !1, line: 72, type: !8)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !102, file: !1, line: 72, type: !8)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !102, file: !1, line: 72, type: !13)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !102, file: !1, line: 72, type: !18)
!111 = !DISubprogram(name: "Convert_CCTK_REAL16_to_CCTK_REAL8", scope: !1, file: !1, line: 75, type: !57, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_REAL16_to_CCTK_REAL8, variables: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !111, file: !1, line: 75, type: !59)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !111, file: !1, line: 75, type: !61)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !111, file: !1, line: 75, type: !8)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !111, file: !1, line: 75, type: !8)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !111, file: !1, line: 75, type: !8)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !111, file: !1, line: 75, type: !21)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !111, file: !1, line: 75, type: !18)
!120 = !DISubprogram(name: "Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8", scope: !1, file: !1, line: 85, type: !57, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8, variables: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !120, file: !1, line: 85, type: !59)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !120, file: !1, line: 85, type: !61)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !120, file: !1, line: 85, type: !8)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !120, file: !1, line: 85, type: !8)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !120, file: !1, line: 85, type: !8)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !120, file: !1, line: 85, type: !22)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !120, file: !1, line: 85, type: !29)
!129 = !DISubprogram(name: "Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8", scope: !1, file: !1, line: 91, type: !57, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8, variables: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !129, file: !1, line: 91, type: !59)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !129, file: !1, line: 91, type: !61)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !129, file: !1, line: 91, type: !8)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !129, file: !1, line: 91, type: !8)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !129, file: !1, line: 91, type: !8)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !129, file: !1, line: 91, type: !22)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !129, file: !1, line: 91, type: !36)
!138 = !DISubprogram(name: "Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16", scope: !1, file: !1, line: 88, type: !57, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16, variables: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !138, file: !1, line: 88, type: !59)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 2, scope: !138, file: !1, line: 88, type: !61)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelems", arg: 3, scope: !138, file: !1, line: 88, type: !8)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_stride", arg: 4, scope: !138, file: !1, line: 88, type: !8)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst_stride", arg: 5, scope: !138, file: !1, line: 88, type: !8)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dst", scope: !138, file: !1, line: 88, type: !43)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_src", scope: !138, file: !1, line: 88, type: !36)
!147 = !DISubprogram(name: "PUGHSlabi_PrecisionVarType", scope: !1, file: !1, line: 208, type: !148, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, variables: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{!8, !8}
!150 = !{!151}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !147, file: !1, line: 208, type: !8)
!152 = !{!153}
!153 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !48, isLocal: true, isDefinition: true)
!154 = !{i32 2, !"Dwarf Version", i32 2}
!155 = !{i32 2, !"Debug Info Version", i32 700000003}
!156 = !{i32 1, !"PIC Level", i32 2}
!157 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!158 = !DILocation(line: 21, column: 1, scope: !45)
!159 = !DIExpression()
!160 = !DILocation(line: 126, column: 60, scope: !51)
!161 = !DILocation(line: 127, column: 60, scope: !51)
!162 = !DILocation(line: 208, column: 44, scope: !147, inlinedAt: !163)
!163 = distinct !DILocation(line: 133, column: 14, scope: !51)
!164 = !DILocation(line: 210, column: 7, scope: !147, inlinedAt: !163)
!165 = !DILocation(line: 229, column: 3, scope: !166, inlinedAt: !163)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 221, column: 3)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 220, column: 12)
!168 = distinct !DILexicalBlock(scope: !147, file: !1, line: 210, column: 7)
!169 = !DILocation(line: 230, column: 17, scope: !170, inlinedAt: !163)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 230, column: 12)
!171 = !DILocation(line: 230, column: 12, scope: !167, inlinedAt: !163)
!172 = !DILocation(line: 208, column: 44, scope: !147, inlinedAt: !173)
!173 = distinct !DILocation(line: 134, column: 14, scope: !51)
!174 = !DILocation(line: 210, column: 7, scope: !147, inlinedAt: !173)
!175 = !DILocation(line: 229, column: 3, scope: !166, inlinedAt: !173)
!176 = !DILocation(line: 148, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 148, column: 12)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 142, column: 12)
!179 = distinct !DILexicalBlock(scope: !51, file: !1, line: 137, column: 7)
!180 = !DILocation(line: 148, column: 43, scope: !177)
!181 = !DILocation(line: 230, column: 17, scope: !170, inlinedAt: !173)
!182 = !DILocation(line: 230, column: 12, scope: !167, inlinedAt: !173)
!183 = !DILocation(line: 142, column: 21, scope: !178)
!184 = !DILocation(line: 142, column: 55, scope: !178)
!185 = !DILocation(line: 142, column: 43, scope: !178)
!186 = !DILocation(line: 154, column: 55, scope: !187)
!187 = distinct !DILexicalBlock(scope: !177, file: !1, line: 154, column: 12)
!188 = !DILocation(line: 154, column: 43, scope: !187)
!189 = !DILocation(line: 160, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 160, column: 12)
!191 = !DILocation(line: 160, column: 56, scope: !190)
!192 = !DILocation(line: 160, column: 44, scope: !190)
!193 = !DILocation(line: 166, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 166, column: 12)
!195 = !DILocation(line: 166, column: 45, scope: !194)
!196 = !DILocation(line: 172, column: 57, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 172, column: 12)
!198 = !DILocation(line: 172, column: 45, scope: !197)
!199 = !DILocation(line: 178, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 178, column: 12)
!201 = !DILocation(line: 178, column: 60, scope: !200)
!202 = !DILocation(line: 178, column: 48, scope: !200)
!203 = !DILocation(line: 184, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 184, column: 12)
!205 = !DILocation(line: 184, column: 48, scope: !204)
!206 = !DILocation(line: 190, column: 60, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 190, column: 12)
!208 = !DILocation(line: 190, column: 48, scope: !207)
!209 = !DILocation(line: 193, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 191, column: 3)
!211 = !DILocation(line: 200, column: 3, scope: !51)
!212 = !DILocation(line: 58, column: 1, scope: !66)
!213 = !DILocation(line: 58, column: 1, scope: !214)
!214 = distinct !DILexicalBlock(scope: !66, file: !1, line: 58, column: 1)
!215 = !{!216, !216, i64 0}
!216 = !{!"int", !217, i64 0}
!217 = !{!"omnipotent char", !218, i64 0}
!218 = !{!"Simple C/C++ TBAA"}
!219 = !{!220, !220, i64 0}
!220 = !{!"short", !217, i64 0}
!221 = !DILocation(line: 61, column: 1, scope: !75)
!222 = !DILocation(line: 61, column: 1, scope: !223)
!223 = distinct !DILexicalBlock(scope: !75, file: !1, line: 61, column: 1)
!224 = !{!225, !225, i64 0}
!225 = !{!"long", !217, i64 0}
!226 = !DILocation(line: 64, column: 1, scope: !84)
!227 = !DILocation(line: 64, column: 1, scope: !228)
!228 = distinct !DILexicalBlock(scope: !84, file: !1, line: 64, column: 1)
!229 = !DILocation(line: 69, column: 1, scope: !93)
!230 = !DILocation(line: 69, column: 1, scope: !231)
!231 = distinct !DILexicalBlock(scope: !93, file: !1, line: 69, column: 1)
!232 = !{!233, !233, i64 0}
!233 = !{!"double", !217, i64 0}
!234 = !{!235, !235, i64 0}
!235 = !{!"float", !217, i64 0}
!236 = !DILocation(line: 72, column: 1, scope: !102)
!237 = !DILocation(line: 72, column: 1, scope: !238)
!238 = distinct !DILexicalBlock(scope: !102, file: !1, line: 72, column: 1)
!239 = !{!240, !240, i64 0}
!240 = !{!"long double", !217, i64 0}
!241 = !DILocation(line: 75, column: 1, scope: !111)
!242 = !DILocation(line: 75, column: 1, scope: !243)
!243 = distinct !DILexicalBlock(scope: !111, file: !1, line: 75, column: 1)
!244 = !DILocation(line: 85, column: 1, scope: !120)
!245 = !DILocation(line: 85, column: 1, scope: !246)
!246 = distinct !DILexicalBlock(scope: !120, file: !1, line: 85, column: 1)
!247 = !{!248, !233, i64 0}
!248 = !{!"", !233, i64 0, !233, i64 8}
!249 = !{!250, !235, i64 0}
!250 = !{!"", !235, i64 0, !235, i64 4}
!251 = !{!248, !233, i64 8}
!252 = !{!250, !235, i64 4}
!253 = !DILocation(line: 91, column: 1, scope: !129)
!254 = !DILocation(line: 91, column: 1, scope: !255)
!255 = distinct !DILexicalBlock(scope: !129, file: !1, line: 91, column: 1)
!256 = !{!257, !240, i64 0}
!257 = !{!"", !240, i64 0, !240, i64 16}
!258 = !{!257, !240, i64 16}
!259 = !DILocation(line: 88, column: 1, scope: !138)
!260 = !DILocation(line: 88, column: 1, scope: !261)
!261 = distinct !DILexicalBlock(scope: !138, file: !1, line: 88, column: 1)
