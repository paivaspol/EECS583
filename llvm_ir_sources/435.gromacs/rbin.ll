; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_bin = type { i32, i32, double* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"b->rbuf\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !171), !dbg !172
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !171), !dbg !173
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !174
  %2 = load i32* %1, align 4, !dbg !176, !tbaa !177
  %3 = add nsw i32 %2, -1, !dbg !176
  store i32 %3, i32* %1, align 4, !dbg !176, !tbaa !177
  %4 = icmp sgt i32 %2, 0, !dbg !186
  br i1 %4, label %._crit_edge, label %5, !dbg !187

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !188
  br label %10, !dbg !187

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !189
  %7 = load i32* %6, align 4, !dbg !189, !tbaa !190
  %8 = icmp sle i32 %2, %7, !dbg !191
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !192
  %or.cond = or i1 %9, %8, !dbg !193
  br i1 %or.cond, label %15, label %10, !dbg !193

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !188
  %11 = trunc i32 %_c to i8, !dbg !194
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !195
  %13 = load i8** %12, align 8, !dbg !196, !tbaa !197
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !196
  store i8* %14, i8** %12, align 8, !dbg !196, !tbaa !197
  store i8 %11, i8* %13, align 1, !dbg !198, !tbaa !199
  br label %17, !dbg !200

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !201
  br label %17, !dbg !202

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !203
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !171), !dbg !204
  %1 = icmp sgt i32 %__signo, 32, !dbg !205
  br i1 %1, label %5, label %2, !dbg !206

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !207
  %4 = shl i32 1, %3, !dbg !208
  br label %5, !dbg !206

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !206
  ret i32 %6, !dbg !209
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_bin* @mk_bin() #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 43, i32 1, i32 16) #6, !dbg !210
  %2 = bitcast i8* %1 to %struct.t_bin*, !dbg !210
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %2, i64 0, metadata !95, metadata !171), !dbg !211
  ret %struct.t_bin* %2, !dbg !212
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_bin(%struct.t_bin* nocapture %b) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %b, i64 0, metadata !100, metadata !171), !dbg !213
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !214
  store i32 0, i32* %1, align 4, !dbg !215, !tbaa !216
  ret void, !dbg !218
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @add_binr(%struct.__sFILE* nocapture readnone %log, %struct.t_bin* nocapture %b, i32 %nr, float* nocapture readonly %r) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !109, metadata !171), !dbg !219
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %b, i64 0, metadata !110, metadata !171), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !111, metadata !171), !dbg !221
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !112, metadata !171), !dbg !222
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !223
  %2 = load i32* %1, align 4, !dbg !223, !tbaa !216
  %3 = add nsw i32 %2, %nr, !dbg !225
  %4 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1, !dbg !226
  %5 = load i32* %4, align 4, !dbg !226, !tbaa !227
  %6 = icmp sgt i32 %3, %5, !dbg !228
  br i1 %6, label %7, label %._crit_edge2, !dbg !229

._crit_edge2:                                     ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre = load double** %.phi.trans.insert, align 8, !dbg !230, !tbaa !231
  br label %20, !dbg !229

; <label>:7                                       ; preds = %0
  %8 = srem i32 %3, 4, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !114, metadata !171), !dbg !234
  %9 = icmp eq i32 %8, 0, !dbg !235
  br i1 %9, label %13, label %10, !dbg !237

; <label>:10                                      ; preds = %7
  %11 = add i32 %3, 4, !dbg !238
  %12 = sub i32 %11, %8, !dbg !239
  br label %13, !dbg !240

; <label>:13                                      ; preds = %7, %10
  %storemerge = phi i32 [ %12, %10 ], [ %3, %7 ]
  store i32 %storemerge, i32* %4, align 4, !dbg !241, !tbaa !227
  %14 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !242
  %15 = bitcast double** %14 to i8**, !dbg !242
  %16 = load i8** %15, align 8, !dbg !242, !tbaa !231
  %17 = shl i32 %storemerge, 3, !dbg !242
  %18 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %16, i32 %17) #6, !dbg !242
  store i8* %18, i8** %15, align 8, !dbg !242, !tbaa !231
  %19 = bitcast i8* %18 to double*
  %.pre3 = load i32* %1, align 4, !dbg !243, !tbaa !216
  br label %20, !dbg !244

; <label>:20                                      ; preds = %._crit_edge2, %13
  %21 = phi i32 [ %2, %._crit_edge2 ], [ %.pre3, %13 ]
  %22 = phi double* [ %.pre, %._crit_edge2 ], [ %19, %13 ]
  %23 = sext i32 %21 to i64, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !171), !dbg !246
  %24 = icmp sgt i32 %nr, 0, !dbg !247
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !250

.lr.ph:                                           ; preds = %20
  %25 = add i32 %nr, -1, !dbg !250
  br label %26, !dbg !250

; <label>:26                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds float* %r, i64 %indvars.iv, !dbg !251
  %28 = load float* %27, align 4, !dbg !251, !tbaa !252
  %29 = fpext float %28 to double, !dbg !251
  %.sum = add nsw i64 %indvars.iv, %23, !dbg !254
  %30 = getelementptr inbounds double* %22, i64 %.sum, !dbg !254
  store double %29, double* %30, align 8, !dbg !255, !tbaa !256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !250
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !250
  %exitcond = icmp eq i32 %lftr.wideiv, %25, !dbg !250
  br i1 %exitcond, label %._crit_edge, label %26, !dbg !250

._crit_edge:                                      ; preds = %26, %20
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !115, metadata !171), !dbg !258
  %31 = add nsw i32 %21, %nr, !dbg !259
  store i32 %31, i32* %1, align 4, !dbg !259, !tbaa !216
  ret i32 %21, !dbg !260
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @add_bind(%struct.__sFILE* nocapture readnone %log, %struct.t_bin* nocapture %b, i32 %nr, double* nocapture readonly %r) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !121, metadata !171), !dbg !261
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %b, i64 0, metadata !122, metadata !171), !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !123, metadata !171), !dbg !263
  tail call void @llvm.dbg.value(metadata double* %r, i64 0, metadata !124, metadata !171), !dbg !264
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !265
  %2 = load i32* %1, align 4, !dbg !265, !tbaa !216
  %3 = add nsw i32 %2, %nr, !dbg !267
  %4 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1, !dbg !268
  %5 = load i32* %4, align 4, !dbg !268, !tbaa !227
  %6 = icmp sgt i32 %3, %5, !dbg !269
  br i1 %6, label %7, label %._crit_edge3, !dbg !270

._crit_edge3:                                     ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre = load double** %.phi.trans.insert, align 8, !dbg !271, !tbaa !231
  br label %20, !dbg !270

; <label>:7                                       ; preds = %0
  %8 = srem i32 %3, 4, !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !126, metadata !171), !dbg !274
  %9 = icmp eq i32 %8, 0, !dbg !275
  br i1 %9, label %13, label %10, !dbg !277

; <label>:10                                      ; preds = %7
  %11 = add i32 %3, 4, !dbg !278
  %12 = sub i32 %11, %8, !dbg !279
  br label %13, !dbg !280

; <label>:13                                      ; preds = %7, %10
  %storemerge = phi i32 [ %12, %10 ], [ %3, %7 ]
  store i32 %storemerge, i32* %4, align 4, !dbg !281, !tbaa !227
  %14 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !282
  %15 = bitcast double** %14 to i8**, !dbg !282
  %16 = load i8** %15, align 8, !dbg !282, !tbaa !231
  %17 = shl i32 %storemerge, 3, !dbg !282
  %18 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %16, i32 %17) #6, !dbg !282
  store i8* %18, i8** %15, align 8, !dbg !282, !tbaa !231
  %19 = bitcast i8* %18 to double*
  %.pre4 = load i32* %1, align 4, !dbg !283, !tbaa !216
  br label %20, !dbg !284

; <label>:20                                      ; preds = %._crit_edge3, %13
  %21 = phi i32 [ %2, %._crit_edge3 ], [ %.pre4, %13 ]
  %22 = phi double* [ %.pre, %._crit_edge3 ], [ %19, %13 ]
  %23 = sext i32 %21 to i64, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !125, metadata !171), !dbg !286
  %24 = icmp sgt i32 %nr, 0, !dbg !287
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !290

.lr.ph:                                           ; preds = %20
  %25 = add i32 %nr, -1, !dbg !290
  br label %26, !dbg !290

; <label>:26                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds double* %r, i64 %indvars.iv, !dbg !291
  %28 = bitcast double* %27 to i64*, !dbg !291
  %29 = load i64* %28, align 8, !dbg !291, !tbaa !256
  %.sum = add nsw i64 %indvars.iv, %23, !dbg !292
  %30 = getelementptr inbounds double* %22, i64 %.sum, !dbg !292
  %31 = bitcast double* %30 to i64*, !dbg !293
  store i64 %29, i64* %31, align 8, !dbg !293, !tbaa !256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !290
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !290
  %exitcond = icmp eq i32 %lftr.wideiv, %25, !dbg !290
  br i1 %exitcond, label %._crit_edge, label %26, !dbg !290

._crit_edge:                                      ; preds = %26, %20
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !127, metadata !171), !dbg !294
  %32 = add nsw i32 %21, %nr, !dbg !295
  store i32 %32, i32* %1, align 4, !dbg !295, !tbaa !216
  ret i32 %21, !dbg !296
}

; Function Attrs: nounwind optsize ssp uwtable
define void @sum_bin(%struct.t_bin* nocapture readonly %b, %struct.t_commrec* %cr) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %b, i64 0, metadata !144, metadata !171), !dbg !297
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !145, metadata !171), !dbg !298
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !299
  %2 = load i32* %1, align 4, !dbg !299, !tbaa !216
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !146, metadata !171), !dbg !301
  %3 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1, !dbg !302
  %4 = load i32* %3, align 4, !dbg !302, !tbaa !227
  %5 = icmp slt i32 %2, %4, !dbg !304
  %6 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !305
  br i1 %5, label %.lr.ph, label %._crit_edge, !dbg !306

.lr.ph:                                           ; preds = %0
  %7 = load double** %6, align 8, !dbg !305, !tbaa !231
  %8 = sext i32 %2 to i64
  %scevgep = getelementptr double* %7, i64 %8
  %scevgep2 = bitcast double* %scevgep to i8*
  %9 = add i32 %2, 1, !dbg !306
  %10 = icmp sgt i32 %4, %9
  %smax = select i1 %10, i32 %4, i32 %9
  %11 = add i32 %smax, -1, !dbg !306
  %12 = sub i32 %11, %2, !dbg !306
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3, !dbg !306
  %15 = add nuw nsw i64 %14, 8, !dbg !306
  call void @llvm.memset.p0i8.i64(i8* %scevgep2, i8 0, i64 %15, i32 8, i1 false), !dbg !307
  br label %._crit_edge, !dbg !306

._crit_edge:                                      ; preds = %0, %.lr.ph
  %16 = load double** %6, align 8, !dbg !308, !tbaa !231
  tail call void @gmx_sumd(i32 %4, double* %16, %struct.t_commrec* %cr) #6, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @extract_binr(%struct.t_bin* nocapture readonly %b, i32 %index, i32 %nr, float* nocapture %r) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %b, i64 0, metadata !151, metadata !171), !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !152, metadata !171), !dbg !312
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !153, metadata !171), !dbg !313
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !154, metadata !171), !dbg !314
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !315
  %2 = load double** %1, align 8, !dbg !315, !tbaa !231
  %3 = sext i32 %index to i64, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !155, metadata !171), !dbg !317
  %4 = icmp sgt i32 %nr, 0, !dbg !318
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !321

.lr.ph:                                           ; preds = %0
  %5 = add i32 %nr, -1, !dbg !321
  br label %6, !dbg !321

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %.sum = add nsw i64 %indvars.iv, %3, !dbg !322
  %7 = getelementptr inbounds double* %2, i64 %.sum, !dbg !322
  %8 = load double* %7, align 8, !dbg !322, !tbaa !256
  %9 = fptrunc double %8 to float, !dbg !322
  %10 = getelementptr inbounds float* %r, i64 %indvars.iv, !dbg !323
  store float %9, float* %10, align 4, !dbg !324, !tbaa !252
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !321
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !321
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !321
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !321

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !325
}

; Function Attrs: nounwind optsize ssp uwtable
define void @extract_bind(%struct.t_bin* nocapture readonly %b, i32 %index, i32 %nr, double* nocapture %r) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_bin* %b, i64 0, metadata !161, metadata !171), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !162, metadata !171), !dbg !327
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !163, metadata !171), !dbg !328
  tail call void @llvm.dbg.value(metadata double* %r, i64 0, metadata !164, metadata !171), !dbg !329
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !330
  %2 = load double** %1, align 8, !dbg !330, !tbaa !231
  %3 = sext i32 %index to i64, !dbg !331
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !165, metadata !171), !dbg !332
  %4 = icmp sgt i32 %nr, 0, !dbg !333
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !336

.lr.ph:                                           ; preds = %0
  %5 = add i32 %nr, -1, !dbg !336
  br label %6, !dbg !336

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %.sum = add nsw i64 %indvars.iv, %3, !dbg !337
  %7 = getelementptr inbounds double* %2, i64 %.sum, !dbg !337
  %8 = bitcast double* %7 to i64*, !dbg !337
  %9 = load i64* %8, align 8, !dbg !337, !tbaa !256
  %10 = getelementptr inbounds double* %r, i64 %indvars.iv, !dbg !338
  %11 = bitcast double* %10 to i64*, !dbg !339
  store i64 %9, i64* %11, align 8, !dbg !339, !tbaa !256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !336
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !336
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !336
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !336

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !340
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!167, !168, !169}
!llvm.ident = !{!170}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !96, !101, !117, !129, !147, !157}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "mk_bin", scope: !1, file: !1, line: 39, type: !82, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_bin* ()* @mk_bin, variables: !94)
!82 = !DISubroutineType(types: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_bin", file: !86, line: 49, baseType: !87)
!86 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 45, size: 128, align: 64, elements: !88)
!88 = !{!89, !90, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nreal", scope: !87, file: !86, line: 46, baseType: !10, size: 32, align: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "maxreal", scope: !87, file: !86, line: 47, baseType: !10, size: 32, align: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !87, file: !86, line: 48, baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!94 = !{!95}
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !81, file: !1, line: 41, type: !84)
!96 = !DISubprogram(name: "reset_bin", scope: !1, file: !1, line: 48, type: !97, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_bin*)* @reset_bin, variables: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !84}
!99 = !{!100}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !96, file: !1, line: 48, type: !84)
!101 = !DISubprogram(name: "add_binr", scope: !1, file: !1, line: 53, type: !102, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_bin*, i32, float*)* @add_binr, variables: !108)
!102 = !DISubroutineType(types: !103)
!103 = !{!10, !11, !84, !10, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !106, line: 87, baseType: !107)
!106 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!107 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !101, file: !1, line: 53, type: !11)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !101, file: !1, line: 53, type: !84)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 3, scope: !101, file: !1, line: 53, type: !10)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 4, scope: !101, file: !1, line: 53, type: !104)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !101, file: !1, line: 56, type: !10)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rest", scope: !101, file: !1, line: 56, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !101, file: !1, line: 56, type: !10)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbuf", scope: !101, file: !1, line: 57, type: !92)
!117 = !DISubprogram(name: "add_bind", scope: !1, file: !1, line: 85, type: !118, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_bin*, i32, double*)* @add_bind, variables: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!10, !11, !84, !10, !92}
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !117, file: !1, line: 85, type: !11)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !117, file: !1, line: 85, type: !84)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 3, scope: !117, file: !1, line: 85, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 4, scope: !117, file: !1, line: 85, type: !92)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !117, file: !1, line: 88, type: !10)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rest", scope: !117, file: !1, line: 88, type: !10)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !117, file: !1, line: 88, type: !10)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbuf", scope: !117, file: !1, line: 89, type: !92)
!129 = !DISubprogram(name: "sum_bin", scope: !1, file: !1, line: 117, type: !130, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_bin*, %struct.t_commrec*)* @sum_bin, variables: !143)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !84, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !134, line: 40, baseType: !135)
!134 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!135 = !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 36, size: 192, align: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !135, file: !134, line: 37, baseType: !10, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !135, file: !134, line: 37, baseType: !10, size: 32, align: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !135, file: !134, line: 38, baseType: !10, size: 32, align: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !135, file: !134, line: 38, baseType: !10, size: 32, align: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !135, file: !134, line: 39, baseType: !10, size: 32, align: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !135, file: !134, line: 39, baseType: !10, size: 32, align: 32, offset: 160)
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !129, file: !1, line: 117, type: !84)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 2, scope: !129, file: !1, line: 117, type: !132)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !129, file: !1, line: 119, type: !10)
!147 = !DISubprogram(name: "extract_binr", scope: !1, file: !1, line: 126, type: !148, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_bin*, i32, i32, float*)* @extract_binr, variables: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !84, !10, !10, !104}
!150 = !{!151, !152, !153, !154, !155, !156}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !147, file: !1, line: 126, type: !84)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !147, file: !1, line: 126, type: !10)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 3, scope: !147, file: !1, line: 126, type: !10)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 4, scope: !147, file: !1, line: 126, type: !104)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !147, file: !1, line: 128, type: !10)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbuf", scope: !147, file: !1, line: 129, type: !92)
!157 = !DISubprogram(name: "extract_bind", scope: !1, file: !1, line: 136, type: !158, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_bin*, i32, i32, double*)* @extract_bind, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !84, !10, !10, !92}
!160 = !{!161, !162, !163, !164, !165, !166}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !157, file: !1, line: 136, type: !84)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !157, file: !1, line: 136, type: !10)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 3, scope: !157, file: !1, line: 136, type: !10)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 4, scope: !157, file: !1, line: 136, type: !92)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !157, file: !1, line: 138, type: !10)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbuf", scope: !157, file: !1, line: 139, type: !92)
!167 = !{i32 2, !"Dwarf Version", i32 2}
!168 = !{i32 2, !"Debug Info Version", i32 700000003}
!169 = !{i32 1, !"PIC Level", i32 2}
!170 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!171 = !DIExpression()
!172 = !DILocation(line: 348, column: 40, scope: !6)
!173 = !DILocation(line: 348, column: 50, scope: !6)
!174 = !DILocation(line: 349, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!176 = !DILocation(line: 349, column: 6, scope: !175)
!177 = !{!178, !182, i64 12}
!178 = !{!"__sFILE", !179, i64 0, !182, i64 8, !182, i64 12, !183, i64 16, !183, i64 18, !184, i64 24, !182, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72, !179, i64 80, !184, i64 88, !179, i64 104, !182, i64 112, !180, i64 116, !180, i64 119, !184, i64 120, !182, i64 136, !185, i64 144}
!179 = !{!"any pointer", !180, i64 0}
!180 = !{!"omnipotent char", !181, i64 0}
!181 = !{!"Simple C/C++ TBAA"}
!182 = !{!"int", !180, i64 0}
!183 = !{!"short", !180, i64 0}
!184 = !{!"__sbuf", !179, i64 0, !182, i64 8}
!185 = !{!"long long", !180, i64 0}
!186 = !DILocation(line: 349, column: 15, scope: !175)
!187 = !DILocation(line: 349, column: 20, scope: !175)
!188 = !DILocation(line: 350, column: 10, scope: !175)
!189 = !DILocation(line: 349, column: 38, scope: !175)
!190 = !{!178, !182, i64 40}
!191 = !DILocation(line: 349, column: 31, scope: !175)
!192 = !DILocation(line: 349, column: 59, scope: !175)
!193 = !DILocation(line: 349, column: 47, scope: !175)
!194 = !DILocation(line: 350, column: 23, scope: !175)
!195 = !DILocation(line: 350, column: 16, scope: !175)
!196 = !DILocation(line: 350, column: 18, scope: !175)
!197 = !{!178, !179, i64 0}
!198 = !DILocation(line: 350, column: 21, scope: !175)
!199 = !{!180, !180, i64 0}
!200 = !DILocation(line: 350, column: 3, scope: !175)
!201 = !DILocation(line: 352, column: 11, scope: !175)
!202 = !DILocation(line: 352, column: 3, scope: !175)
!203 = !DILocation(line: 353, column: 1, scope: !6)
!204 = !DILocation(line: 114, column: 15, scope: !75)
!205 = !DILocation(line: 116, column: 20, scope: !75)
!206 = !DILocation(line: 116, column: 12, scope: !75)
!207 = !DILocation(line: 116, column: 57, scope: !75)
!208 = !DILocation(line: 116, column: 45, scope: !75)
!209 = !DILocation(line: 116, column: 5, scope: !75)
!210 = !DILocation(line: 43, column: 3, scope: !81)
!211 = !DILocation(line: 41, column: 10, scope: !81)
!212 = !DILocation(line: 45, column: 3, scope: !81)
!213 = !DILocation(line: 48, column: 23, scope: !96)
!214 = !DILocation(line: 50, column: 6, scope: !96)
!215 = !DILocation(line: 50, column: 12, scope: !96)
!216 = !{!217, !182, i64 0}
!217 = !{!"", !182, i64 0, !182, i64 4, !179, i64 8}
!218 = !DILocation(line: 51, column: 1, scope: !96)
!219 = !DILocation(line: 53, column: 20, scope: !101)
!220 = !DILocation(line: 53, column: 31, scope: !101)
!221 = !DILocation(line: 53, column: 37, scope: !101)
!222 = !DILocation(line: 53, column: 45, scope: !101)
!223 = !DILocation(line: 59, column: 10, scope: !224)
!224 = distinct !DILexicalBlock(scope: !101, file: !1, line: 59, column: 7)
!225 = !DILocation(line: 59, column: 15, scope: !224)
!226 = !DILocation(line: 59, column: 24, scope: !224)
!227 = !{!217, !182, i64 4}
!228 = !DILocation(line: 59, column: 19, scope: !224)
!229 = !DILocation(line: 59, column: 7, scope: !101)
!230 = !DILocation(line: 75, column: 11, scope: !101)
!231 = !{!217, !179, i64 8}
!232 = !DILocation(line: 65, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !224, file: !1, line: 59, column: 33)
!234 = !DILocation(line: 56, column: 12, scope: !101)
!235 = !DILocation(line: 66, column: 14, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 66, column: 9)
!237 = !DILocation(line: 66, column: 9, scope: !233)
!238 = !DILocation(line: 67, column: 23, scope: !236)
!239 = !DILocation(line: 67, column: 17, scope: !236)
!240 = !DILocation(line: 67, column: 7, scope: !236)
!241 = !DILocation(line: 64, column: 15, scope: !233)
!242 = !DILocation(line: 68, column: 5, scope: !233)
!243 = !DILocation(line: 75, column: 19, scope: !101)
!244 = !DILocation(line: 73, column: 3, scope: !233)
!245 = !DILocation(line: 75, column: 15, scope: !101)
!246 = !DILocation(line: 56, column: 10, scope: !101)
!247 = !DILocation(line: 76, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 76, column: 3)
!249 = distinct !DILexicalBlock(scope: !101, file: !1, line: 76, column: 3)
!250 = !DILocation(line: 76, column: 3, scope: !249)
!251 = !DILocation(line: 77, column: 13, scope: !248)
!252 = !{!253, !253, i64 0}
!253 = !{!"float", !180, i64 0}
!254 = !DILocation(line: 77, column: 5, scope: !248)
!255 = !DILocation(line: 77, column: 12, scope: !248)
!256 = !{!257, !257, i64 0}
!257 = !{!"double", !180, i64 0}
!258 = !DILocation(line: 56, column: 17, scope: !101)
!259 = !DILocation(line: 80, column: 11, scope: !101)
!260 = !DILocation(line: 82, column: 3, scope: !101)
!261 = !DILocation(line: 85, column: 20, scope: !117)
!262 = !DILocation(line: 85, column: 31, scope: !117)
!263 = !DILocation(line: 85, column: 37, scope: !117)
!264 = !DILocation(line: 85, column: 47, scope: !117)
!265 = !DILocation(line: 91, column: 10, scope: !266)
!266 = distinct !DILexicalBlock(scope: !117, file: !1, line: 91, column: 7)
!267 = !DILocation(line: 91, column: 15, scope: !266)
!268 = !DILocation(line: 91, column: 24, scope: !266)
!269 = !DILocation(line: 91, column: 19, scope: !266)
!270 = !DILocation(line: 91, column: 7, scope: !117)
!271 = !DILocation(line: 107, column: 11, scope: !117)
!272 = !DILocation(line: 97, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !266, file: !1, line: 91, column: 33)
!274 = !DILocation(line: 88, column: 12, scope: !117)
!275 = !DILocation(line: 98, column: 14, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 98, column: 9)
!277 = !DILocation(line: 98, column: 9, scope: !273)
!278 = !DILocation(line: 99, column: 23, scope: !276)
!279 = !DILocation(line: 99, column: 17, scope: !276)
!280 = !DILocation(line: 99, column: 7, scope: !276)
!281 = !DILocation(line: 96, column: 15, scope: !273)
!282 = !DILocation(line: 100, column: 5, scope: !273)
!283 = !DILocation(line: 107, column: 19, scope: !117)
!284 = !DILocation(line: 105, column: 3, scope: !273)
!285 = !DILocation(line: 107, column: 15, scope: !117)
!286 = !DILocation(line: 88, column: 10, scope: !117)
!287 = !DILocation(line: 108, column: 14, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 108, column: 3)
!289 = distinct !DILexicalBlock(scope: !117, file: !1, line: 108, column: 3)
!290 = !DILocation(line: 108, column: 3, scope: !289)
!291 = !DILocation(line: 109, column: 13, scope: !288)
!292 = !DILocation(line: 109, column: 5, scope: !288)
!293 = !DILocation(line: 109, column: 12, scope: !288)
!294 = !DILocation(line: 88, column: 17, scope: !117)
!295 = !DILocation(line: 112, column: 11, scope: !117)
!296 = !DILocation(line: 114, column: 3, scope: !117)
!297 = !DILocation(line: 117, column: 21, scope: !129)
!298 = !DILocation(line: 117, column: 34, scope: !129)
!299 = !DILocation(line: 121, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !129, file: !1, line: 121, column: 3)
!301 = !DILocation(line: 119, column: 7, scope: !129)
!302 = !DILocation(line: 121, column: 25, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 121, column: 3)
!304 = !DILocation(line: 121, column: 21, scope: !303)
!305 = !DILocation(line: 122, column: 8, scope: !303)
!306 = !DILocation(line: 121, column: 3, scope: !300)
!307 = !DILocation(line: 122, column: 15, scope: !303)
!308 = !DILocation(line: 123, column: 26, scope: !129)
!309 = !DILocation(line: 123, column: 3, scope: !129)
!310 = !DILocation(line: 124, column: 1, scope: !129)
!311 = !DILocation(line: 126, column: 26, scope: !147)
!312 = !DILocation(line: 126, column: 32, scope: !147)
!313 = !DILocation(line: 126, column: 42, scope: !147)
!314 = !DILocation(line: 126, column: 50, scope: !147)
!315 = !DILocation(line: 131, column: 13, scope: !147)
!316 = !DILocation(line: 131, column: 17, scope: !147)
!317 = !DILocation(line: 128, column: 10, scope: !147)
!318 = !DILocation(line: 132, column: 14, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 132, column: 3)
!320 = distinct !DILexicalBlock(scope: !147, file: !1, line: 132, column: 3)
!321 = !DILocation(line: 132, column: 3, scope: !320)
!322 = !DILocation(line: 133, column: 10, scope: !319)
!323 = !DILocation(line: 133, column: 5, scope: !319)
!324 = !DILocation(line: 133, column: 9, scope: !319)
!325 = !DILocation(line: 134, column: 1, scope: !147)
!326 = !DILocation(line: 136, column: 26, scope: !157)
!327 = !DILocation(line: 136, column: 32, scope: !157)
!328 = !DILocation(line: 136, column: 42, scope: !157)
!329 = !DILocation(line: 136, column: 52, scope: !157)
!330 = !DILocation(line: 141, column: 13, scope: !157)
!331 = !DILocation(line: 141, column: 17, scope: !157)
!332 = !DILocation(line: 138, column: 10, scope: !157)
!333 = !DILocation(line: 142, column: 14, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 142, column: 3)
!335 = distinct !DILexicalBlock(scope: !157, file: !1, line: 142, column: 3)
!336 = !DILocation(line: 142, column: 3, scope: !335)
!337 = !DILocation(line: 143, column: 10, scope: !334)
!338 = !DILocation(line: 143, column: 5, scope: !334)
!339 = !DILocation(line: 143, column: 9, scope: !334)
!340 = !DILocation(line: 144, column: 1, scope: !157)
