; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_nbytesNeeded(%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_nbytesNeeded(%d,%d,%d)\0A bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DenseMtx_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_setNbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_setFields(%p,%d,%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_init(%p,%d,%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_init(%p,%d,%d,%d,%d,%d,%d,%d)\0A bad type %d\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_initFromBuffer(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [176 x i8] c"\0A fatal error in DenseMtx_initWithPointers()\0A mtx = %p, rowid = %d, colid = %d\0A nrow = %d, ncol = %d, inc1 = %d, inc2 = %d\0A rowind = %p, colind = %p, entries = %p \0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_initWithPointers()\0A bad type %d\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_setZA2(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_nbytesNeeded(i32 %type, i32 %nrow, i32 %ncol) #0 {
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !12, metadata !124), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !13, metadata !124), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !14, metadata !124), !dbg !127
  %1 = or i32 %ncol, %nrow, !dbg !128
  %2 = icmp slt i32 %1, 0, !dbg !128
  br i1 %2, label %3, label %6, !dbg !128

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !130, !tbaa !132
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 %type, i32 %nrow, i32 %ncol) #5, !dbg !136
  tail call void @exit(i32 -1) #6, !dbg !137
  unreachable, !dbg !137

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !17, metadata !124), !dbg !138
  switch i32 %type, label %9 [
    i32 1, label %12
    i32 2, label %7
  ], !dbg !139

; <label>:7                                       ; preds = %6
  %8 = shl nsw i32 %nrow, 1, !dbg !140
  br label %12

; <label>:9                                       ; preds = %6
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !144, !tbaa !132
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 %type, i32 %nrow, i32 %ncol, i32 %type) #5, !dbg !146
  tail call void @exit(i32 -1) #6, !dbg !147
  unreachable, !dbg !147

; <label>:12                                      ; preds = %6, %7
  %nrow.pn = phi i32 [ %8, %7 ], [ %nrow, %6 ]
  %ndouble.0 = mul nsw i32 %nrow.pn, %ncol, !dbg !148
  %13 = add i32 %nrow, 8, !dbg !150
  %14 = add i32 %13, %ncol, !dbg !151
  %15 = sdiv i32 %14, 2, !dbg !155
  %16 = add nsw i32 %15, %ndouble.0, !dbg !156
  %17 = shl i32 %16, 3, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !15, metadata !124), !dbg !158
  ret i32 %17, !dbg !159
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_nbytesInWorkspace(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !49, metadata !124), !dbg !160
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !161
  br i1 %1, label %2, label %5, !dbg !163

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !164, !tbaa !132
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* null) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !167
  unreachable, !dbg !167

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !168
  %7 = tail call i32 @DV_maxsize(%struct._DV* %6) #5, !dbg !169
  %8 = shl i32 %7, 3, !dbg !170
  ret i32 %8, !dbg !171
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_setNbytesInWorkspace(%struct._DenseMtx* %mtx, i32 %nbytes) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !54, metadata !124), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %nbytes, i64 0, metadata !55, metadata !124), !dbg !173
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !174
  br i1 %1, label %2, label %5, !dbg !176

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !177, !tbaa !132
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #5, !dbg !179
  tail call void @exit(i32 -1) #6, !dbg !180
  unreachable, !dbg !180

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !181
  %7 = sext i32 %nbytes to i64, !dbg !182
  %8 = lshr i64 %7, 3, !dbg !183
  %9 = trunc i64 %8 to i32, !dbg !182
  tail call void @DV_setSize(%struct._DV* %6, i32 %9) #5, !dbg !184
  ret void, !dbg !185
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !60, metadata !124), !dbg !186
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !61, metadata !124), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %rowid, i64 0, metadata !62, metadata !124), !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %colid, i64 0, metadata !63, metadata !124), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !64, metadata !124), !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !65, metadata !124), !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %inc1, i64 0, metadata !66, metadata !124), !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %inc2, i64 0, metadata !67, metadata !124), !dbg !193
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !194
  %2 = or i32 %ncol, %nrow, !dbg !196
  %3 = icmp slt i32 %2, 0, !dbg !196
  %4 = or i1 %1, %3, !dbg !196
  br i1 %4, label %11, label %5, !dbg !196

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %inc1, %ncol, !dbg !197
  %7 = icmp eq i32 %inc2, 1, !dbg !198
  %or.cond5 = and i1 %6, %7, !dbg !199
  br i1 %or.cond5, label %14, label %8, !dbg !199

; <label>:8                                       ; preds = %5
  %9 = icmp eq i32 %inc1, 1, !dbg !200
  %10 = icmp eq i32 %inc2, %nrow, !dbg !201
  %or.cond = and i1 %9, %10, !dbg !202
  br i1 %or.cond, label %14, label %11, !dbg !202

; <label>:11                                      ; preds = %8, %0
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !203, !tbaa !132
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([70 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #5, !dbg !205
  tail call void @exit(i32 -1) #6, !dbg !206
  unreachable, !dbg !206

; <label>:14                                      ; preds = %8, %5
  %15 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !207
  %16 = tail call double* @DV_entries(%struct._DV* %15) #5, !dbg !208
  tail call void @llvm.dbg.value(metadata double* %16, i64 0, metadata !68, metadata !124), !dbg !209
  %17 = bitcast double* %16 to i32*, !dbg !210
  tail call void @llvm.dbg.value(metadata i32* %17, i64 0, metadata !69, metadata !124), !dbg !211
  store i32 %type, i32* %17, align 4, !dbg !212, !tbaa !213
  %18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !215
  store i32 %type, i32* %18, align 4, !dbg !216, !tbaa !217
  %19 = getelementptr inbounds i32* %17, i64 1, !dbg !220
  store i32 %rowid, i32* %19, align 4, !dbg !221, !tbaa !213
  %20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !222
  store i32 %rowid, i32* %20, align 4, !dbg !223, !tbaa !224
  %21 = getelementptr inbounds double* %16, i64 1, !dbg !225
  %22 = bitcast double* %21 to i32*, !dbg !225
  store i32 %colid, i32* %22, align 4, !dbg !226, !tbaa !213
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !227
  store i32 %colid, i32* %23, align 4, !dbg !228, !tbaa !229
  %24 = getelementptr inbounds i32* %17, i64 3, !dbg !230
  store i32 %nrow, i32* %24, align 4, !dbg !231, !tbaa !213
  %25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !232
  store i32 %nrow, i32* %25, align 4, !dbg !233, !tbaa !234
  %26 = getelementptr inbounds double* %16, i64 2, !dbg !235
  %27 = bitcast double* %26 to i32*, !dbg !235
  store i32 %ncol, i32* %27, align 4, !dbg !236, !tbaa !213
  %28 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !237
  store i32 %ncol, i32* %28, align 4, !dbg !238, !tbaa !239
  %29 = getelementptr inbounds i32* %17, i64 5, !dbg !240
  store i32 %inc1, i32* %29, align 4, !dbg !241, !tbaa !213
  %30 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !242
  store i32 %inc1, i32* %30, align 4, !dbg !243, !tbaa !244
  %31 = getelementptr inbounds double* %16, i64 3, !dbg !245
  %32 = bitcast double* %31 to i32*, !dbg !245
  store i32 %inc2, i32* %32, align 4, !dbg !246, !tbaa !213
  %33 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !247
  store i32 %inc2, i32* %33, align 4, !dbg !248, !tbaa !249
  %34 = getelementptr inbounds i32* %17, i64 7, !dbg !250
  %35 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !251
  store i32* %34, i32** %35, align 8, !dbg !252, !tbaa !253
  %36 = sext i32 %nrow to i64, !dbg !254
  %.sum = add nsw i64 %36, 7, !dbg !254
  %37 = getelementptr inbounds i32* %17, i64 %.sum, !dbg !254
  %38 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !255
  store i32* %37, i32** %38, align 8, !dbg !256, !tbaa !257
  %39 = add nsw i32 %nrow, 8, !dbg !258
  %40 = add nsw i32 %39, %ncol, !dbg !262
  %41 = sdiv i32 %40, 2, !dbg !263
  %42 = sext i32 %41 to i64, !dbg !264
  %43 = getelementptr inbounds double* %16, i64 %42, !dbg !264
  %44 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !265
  store double* %43, double** %44, align 8, !dbg !266, !tbaa !267
  ret void, !dbg !268
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !72, metadata !124), !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !73, metadata !124), !dbg !270
  tail call void @llvm.dbg.value(metadata i32 %rowid, i64 0, metadata !74, metadata !124), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %colid, i64 0, metadata !75, metadata !124), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !76, metadata !124), !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !77, metadata !124), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %inc1, i64 0, metadata !78, metadata !124), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %inc2, i64 0, metadata !79, metadata !124), !dbg !276
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !277
  %2 = or i32 %ncol, %nrow, !dbg !279
  %3 = icmp slt i32 %2, 0, !dbg !279
  %4 = or i1 %1, %3, !dbg !279
  br i1 %4, label %11, label %5, !dbg !279

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %inc1, %ncol, !dbg !280
  %7 = icmp eq i32 %inc2, 1, !dbg !281
  %or.cond5 = and i1 %6, %7, !dbg !282
  br i1 %or.cond5, label %14, label %8, !dbg !282

; <label>:8                                       ; preds = %5
  %9 = icmp eq i32 %inc1, 1, !dbg !283
  %10 = icmp eq i32 %inc2, %nrow, !dbg !284
  %or.cond = and i1 %9, %10, !dbg !285
  br i1 %or.cond, label %14, label %11, !dbg !285

; <label>:11                                      ; preds = %8, %0
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !286, !tbaa !132
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #5, !dbg !288
  tail call void @exit(i32 -1) #6, !dbg !289
  unreachable, !dbg !289

; <label>:14                                      ; preds = %8, %5
  %.off = add i32 %type, -1, !dbg !290
  %switch = icmp ult i32 %.off, 2, !dbg !290
  br i1 %switch, label %18, label %15, !dbg !290

; <label>:15                                      ; preds = %14
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !291, !tbaa !132
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([70 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32 %type) #5, !dbg !293
  tail call void @exit(i32 -1) #6, !dbg !294
  unreachable, !dbg !294

; <label>:18                                      ; preds = %14
  %19 = tail call i32 @DenseMtx_nbytesNeeded(i32 %type, i32 %nrow, i32 %ncol) #7, !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !80, metadata !124), !dbg !296
  tail call void @DenseMtx_setNbytesInWorkspace(%struct._DenseMtx* %mtx, i32 %19) #7, !dbg !297
  tail call void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #7, !dbg !298
  %20 = icmp sgt i32 %nrow, 0, !dbg !299
  br i1 %20, label %21, label %24, !dbg !301

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !302
  %23 = load i32** %22, align 8, !dbg !302, !tbaa !253
  tail call void @IVramp(i32 %nrow, i32* %23, i32 0, i32 1) #5, !dbg !304
  br label %24, !dbg !305

; <label>:24                                      ; preds = %21, %18
  %25 = icmp sgt i32 %ncol, 0, !dbg !306
  br i1 %25, label %26, label %29, !dbg !308

; <label>:26                                      ; preds = %24
  %27 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !309
  %28 = load i32** %27, align 8, !dbg !309, !tbaa !257
  tail call void @IVramp(i32 %ncol, i32* %28, i32 0, i32 1) #5, !dbg !311
  br label %29, !dbg !312

; <label>:29                                      ; preds = %26, %24
  ret void, !dbg !313
}

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_initFromBuffer(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !85, metadata !124), !dbg !314
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !315
  br i1 %1, label %2, label %5, !dbg !317

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !318, !tbaa !132
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* null) #5, !dbg !320
  tail call void @exit(i32 -1) #6, !dbg !321
  unreachable, !dbg !321

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !322
  %7 = tail call double* @DV_entries(%struct._DV* %6) #5, !dbg !323
  %8 = bitcast double* %7 to i32*, !dbg !324
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !86, metadata !124), !dbg !325
  %9 = load i32* %8, align 4, !dbg !326, !tbaa !213
  %10 = getelementptr inbounds i32* %8, i64 1, !dbg !327
  %11 = load i32* %10, align 4, !dbg !327, !tbaa !213
  %12 = getelementptr inbounds double* %7, i64 1, !dbg !328
  %13 = bitcast double* %12 to i32*, !dbg !328
  %14 = load i32* %13, align 4, !dbg !328, !tbaa !213
  %15 = getelementptr inbounds i32* %8, i64 3, !dbg !329
  %16 = load i32* %15, align 4, !dbg !329, !tbaa !213
  %17 = getelementptr inbounds double* %7, i64 2, !dbg !330
  %18 = bitcast double* %17 to i32*, !dbg !330
  %19 = load i32* %18, align 4, !dbg !330, !tbaa !213
  %20 = getelementptr inbounds i32* %8, i64 5, !dbg !331
  %21 = load i32* %20, align 4, !dbg !331, !tbaa !213
  %22 = getelementptr inbounds double* %7, i64 3, !dbg !332
  %23 = bitcast double* %22 to i32*, !dbg !332
  %24 = load i32* %23, align 4, !dbg !332, !tbaa !213
  tail call void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %9, i32 %11, i32 %14, i32 %16, i32 %19, i32 %21, i32 %24) #7, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_initWithPointers(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32* %rowind, i32* %colind, double* %entries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !91, metadata !124), !dbg !335
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !92, metadata !124), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %rowid, i64 0, metadata !93, metadata !124), !dbg !337
  tail call void @llvm.dbg.value(metadata i32 %colid, i64 0, metadata !94, metadata !124), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !95, metadata !124), !dbg !339
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !96, metadata !124), !dbg !340
  tail call void @llvm.dbg.value(metadata i32 %inc1, i64 0, metadata !97, metadata !124), !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %inc2, i64 0, metadata !98, metadata !124), !dbg !342
  tail call void @llvm.dbg.value(metadata i32* %rowind, i64 0, metadata !99, metadata !124), !dbg !343
  tail call void @llvm.dbg.value(metadata i32* %colind, i64 0, metadata !100, metadata !124), !dbg !344
  tail call void @llvm.dbg.value(metadata double* %entries, i64 0, metadata !101, metadata !124), !dbg !345
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !346
  %2 = icmp slt i32 %nrow, 1, !dbg !348
  %or.cond = or i1 %1, %2, !dbg !349
  %3 = icmp slt i32 %ncol, 1, !dbg !350
  %or.cond3 = or i1 %or.cond, %3, !dbg !349
  %4 = or i32 %inc2, %inc1, !dbg !349
  %5 = icmp slt i32 %4, 0, !dbg !349
  %6 = or i1 %or.cond3, %5, !dbg !349
  br i1 %6, label %13, label %7, !dbg !349

; <label>:7                                       ; preds = %0
  %8 = icmp ne i32 %inc1, 1, !dbg !351
  %9 = icmp ne i32 %inc2, 1, !dbg !352
  %or.cond9 = and i1 %8, %9, !dbg !353
  %10 = icmp eq double* %entries, null, !dbg !354
  %or.cond11 = or i1 %or.cond9, %10, !dbg !353
  %11 = icmp eq i32* %colind, null, !dbg !355
  %or.cond13 = or i1 %11, %or.cond11, !dbg !353
  %12 = icmp eq i32* %rowind, null, !dbg !356
  %or.cond15 = or i1 %12, %or.cond13, !dbg !353
  br i1 %or.cond15, label %13, label %16, !dbg !353

; <label>:13                                      ; preds = %7, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !357, !tbaa !132
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([176 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32* %rowind, i32* %colind, double* %entries) #5, !dbg !359
  tail call void @exit(i32 -1) #6, !dbg !360
  unreachable, !dbg !360

; <label>:16                                      ; preds = %7
  %.off = add i32 %type, -1, !dbg !361
  %switch = icmp ult i32 %.off, 2, !dbg !361
  br i1 %switch, label %20, label %17, !dbg !361

; <label>:17                                      ; preds = %16
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !362, !tbaa !132
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 %type) #5, !dbg !364
  br label %20, !dbg !365

; <label>:20                                      ; preds = %16, %17
  %21 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !366
  store i32 %type, i32* %21, align 4, !dbg !367, !tbaa !217
  %22 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !368
  store i32 %rowid, i32* %22, align 4, !dbg !369, !tbaa !224
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !370
  store i32 %colid, i32* %23, align 4, !dbg !371, !tbaa !229
  %24 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !372
  store i32 %nrow, i32* %24, align 4, !dbg !373, !tbaa !234
  %25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !374
  store i32 %ncol, i32* %25, align 4, !dbg !375, !tbaa !239
  %26 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !376
  store i32 %inc1, i32* %26, align 4, !dbg !377, !tbaa !244
  %27 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !378
  store i32 %inc2, i32* %27, align 4, !dbg !379, !tbaa !249
  %28 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !380
  store i32* %rowind, i32** %28, align 8, !dbg !381, !tbaa !253
  %29 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !382
  store i32* %colind, i32** %29, align 8, !dbg !383, !tbaa !257
  %30 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !384
  store double* %entries, double** %30, align 8, !dbg !385, !tbaa !267
  ret void, !dbg !386
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !118, metadata !124), !dbg !387
  tail call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !119, metadata !124), !dbg !388
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !389
  %2 = icmp eq %struct._A2* %a2, null, !dbg !391
  %or.cond = or i1 %1, %2, !dbg !392
  br i1 %or.cond, label %3, label %6, !dbg !392

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !393, !tbaa !132
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !395
  tail call void @exit(i32 -1) #6, !dbg !396
  unreachable, !dbg !396

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !397
  %8 = load i32* %7, align 4, !dbg !397, !tbaa !217
  %9 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !398
  %10 = load i32* %9, align 4, !dbg !398, !tbaa !234
  %11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !399
  %12 = load i32* %11, align 4, !dbg !399, !tbaa !239
  %13 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !400
  %14 = load i32* %13, align 4, !dbg !400, !tbaa !244
  %15 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !401
  %16 = load i32* %15, align 4, !dbg !401, !tbaa !249
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !402
  %18 = load double** %17, align 8, !dbg !402, !tbaa !267
  tail call void @A2_init(%struct._A2* %a2, i32 %8, i32 %10, i32 %12, i32 %14, i32 %16, double* %18) #5, !dbg !403
  ret void, !dbg !404
}

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!120, !121, !122}
!llvm.ident = !{!123}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8, !18, !50, !56, !70, !81, !87, !102}
!8 = !DISubprogram(name: "DenseMtx_nbytesNeeded", scope: !1, file: !1, line: 16, type: !9, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32)* @DenseMtx_nbytesNeeded, variables: !11)
!9 = !DISubroutineType(types: !10)
!10 = !{!6, !6, !6, !6}
!11 = !{!12, !13, !14, !15, !16, !17}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !8, file: !1, line: 17, type: !6)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 2, scope: !8, file: !1, line: 18, type: !6)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 3, scope: !8, file: !1, line: 19, type: !6)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !8, file: !1, line: 21, type: !6)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndouble", scope: !8, file: !1, line: 21, type: !6)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nint", scope: !8, file: !1, line: 21, type: !6)
!18 = !DISubprogram(name: "DenseMtx_nbytesInWorkspace", scope: !1, file: !1, line: 69, type: !19, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*)* @DenseMtx_nbytesInWorkspace, variables: !48)
!19 = !DISubroutineType(types: !20)
!20 = !{!6, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "DenseMtx", file: !23, line: 28, baseType: !24)
!23 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DenseMtx", file: !23, line: 29, size: 704, align: 64, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !47}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !23, line: 30, baseType: !6, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !24, file: !23, line: 31, baseType: !6, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !24, file: !23, line: 32, baseType: !6, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !24, file: !23, line: 33, baseType: !6, size: 32, align: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !24, file: !23, line: 34, baseType: !6, size: 32, align: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !24, file: !23, line: 35, baseType: !6, size: 32, align: 32, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !24, file: !23, line: 36, baseType: !6, size: 32, align: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !24, file: !23, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !24, file: !23, line: 38, baseType: !5, size: 64, align: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !24, file: !23, line: 39, baseType: !36, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !24, file: !23, line: 40, baseType: !39, size: 192, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !40, line: 20, baseType: !41)
!40 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !40, line: 21, size: 192, align: 64, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !41, file: !40, line: 22, baseType: !6, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !41, file: !40, line: 23, baseType: !6, size: 32, align: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !41, file: !40, line: 24, baseType: !6, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !41, file: !40, line: 25, baseType: !36, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !23, line: 41, baseType: !21, size: 64, align: 64, offset: 640)
!48 = !{!49}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !18, file: !1, line: 70, type: !21)
!50 = !DISubprogram(name: "DenseMtx_setNbytesInWorkspace", scope: !1, file: !1, line: 88, type: !51, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32)* @DenseMtx_setNbytesInWorkspace, variables: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !21, !6}
!53 = !{!54, !55}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !50, file: !1, line: 89, type: !21)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 2, scope: !50, file: !1, line: 90, type: !6)
!56 = !DISubprogram(name: "DenseMtx_setFields", scope: !1, file: !1, line: 111, type: !57, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32)* @DenseMtx_setFields, variables: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !21, !6, !6, !6, !6, !6, !6, !6}
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !56, file: !1, line: 112, type: !21)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !56, file: !1, line: 113, type: !6)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowid", arg: 3, scope: !56, file: !1, line: 114, type: !6)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colid", arg: 4, scope: !56, file: !1, line: 115, type: !6)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 5, scope: !56, file: !1, line: 116, type: !6)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 6, scope: !56, file: !1, line: 117, type: !6)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc1", arg: 7, scope: !56, file: !1, line: 118, type: !6)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc2", arg: 8, scope: !56, file: !1, line: 119, type: !6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dbuffer", scope: !56, file: !1, line: 121, type: !36)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuffer", scope: !56, file: !1, line: 122, type: !5)
!70 = !DISubprogram(name: "DenseMtx_init", scope: !1, file: !1, line: 183, type: !57, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32)* @DenseMtx_init, variables: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !70, file: !1, line: 184, type: !21)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !70, file: !1, line: 185, type: !6)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowid", arg: 3, scope: !70, file: !1, line: 186, type: !6)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colid", arg: 4, scope: !70, file: !1, line: 187, type: !6)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 5, scope: !70, file: !1, line: 188, type: !6)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 6, scope: !70, file: !1, line: 189, type: !6)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc1", arg: 7, scope: !70, file: !1, line: 190, type: !6)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc2", arg: 8, scope: !70, file: !1, line: 191, type: !6)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !70, file: !1, line: 193, type: !6)
!81 = !DISubprogram(name: "DenseMtx_initFromBuffer", scope: !1, file: !1, line: 250, type: !82, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*)* @DenseMtx_initFromBuffer, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !21}
!84 = !{!85, !86}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !81, file: !1, line: 251, type: !21)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuffer", scope: !81, file: !1, line: 253, type: !5)
!87 = !DISubprogram(name: "DenseMtx_initWithPointers", scope: !1, file: !1, line: 279, type: !88, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*)* @DenseMtx_initWithPointers, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !21, !6, !6, !6, !6, !6, !6, !6, !5, !5, !36}
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !87, file: !1, line: 280, type: !21)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !87, file: !1, line: 281, type: !6)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowid", arg: 3, scope: !87, file: !1, line: 282, type: !6)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colid", arg: 4, scope: !87, file: !1, line: 283, type: !6)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 5, scope: !87, file: !1, line: 284, type: !6)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 6, scope: !87, file: !1, line: 285, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc1", arg: 7, scope: !87, file: !1, line: 286, type: !6)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc2", arg: 8, scope: !87, file: !1, line: 287, type: !6)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowind", arg: 9, scope: !87, file: !1, line: 288, type: !5)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colind", arg: 10, scope: !87, file: !1, line: 289, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entries", arg: 11, scope: !87, file: !1, line: 290, type: !36)
!102 = !DISubprogram(name: "DenseMtx_setA2", scope: !1, file: !1, line: 353, type: !103, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, %struct._A2*)* @DenseMtx_setA2, variables: !117)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !21, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !107, line: 49, baseType: !108)
!107 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !107, line: 41, size: 256, align: 64, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !107, line: 42, baseType: !6, size: 32, align: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !108, file: !107, line: 43, baseType: !6, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !108, file: !107, line: 44, baseType: !6, size: 32, align: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !108, file: !107, line: 45, baseType: !6, size: 32, align: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !108, file: !107, line: 46, baseType: !6, size: 32, align: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !108, file: !107, line: 47, baseType: !6, size: 32, align: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !108, file: !107, line: 48, baseType: !36, size: 64, align: 64, offset: 192)
!117 = !{!118, !119}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !102, file: !1, line: 354, type: !21)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a2", arg: 2, scope: !102, file: !1, line: 355, type: !105)
!120 = !{i32 2, !"Dwarf Version", i32 2}
!121 = !{i32 2, !"Debug Info Version", i32 700000003}
!122 = !{i32 1, !"PIC Level", i32 2}
!123 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!124 = !DIExpression()
!125 = !DILocation(line: 17, column: 10, scope: !8)
!126 = !DILocation(line: 18, column: 10, scope: !8)
!127 = !DILocation(line: 19, column: 10, scope: !8)
!128 = !DILocation(line: 27, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !8, file: !1, line: 27, column: 7)
!130 = !DILocation(line: 28, column: 12, scope: !131)
!131 = distinct !DILexicalBlock(scope: !129, file: !1, line: 27, column: 30)
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 28, column: 4, scope: !131)
!137 = !DILocation(line: 31, column: 4, scope: !131)
!138 = !DILocation(line: 21, column: 24, scope: !8)
!139 = !DILocation(line: 34, column: 6, scope: !8)
!140 = !DILocation(line: 37, column: 15, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 36, column: 39)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 36, column: 13)
!143 = distinct !DILexicalBlock(scope: !8, file: !1, line: 34, column: 6)
!144 = !DILocation(line: 39, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 38, column: 8)
!146 = !DILocation(line: 39, column: 4, scope: !145)
!147 = !DILocation(line: 42, column: 4, scope: !145)
!148 = !DILocation(line: 35, column: 18, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 34, column: 29)
!150 = !DILocation(line: 33, column: 17, scope: !8)
!151 = !DILocation(line: 47, column: 20, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 46, column: 47)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 46, column: 13)
!154 = distinct !DILexicalBlock(scope: !8, file: !1, line: 44, column: 6)
!155 = !DILocation(line: 47, column: 24, scope: !152)
!156 = !DILocation(line: 47, column: 27, scope: !152)
!157 = !DILocation(line: 47, column: 37, scope: !152)
!158 = !DILocation(line: 21, column: 7, scope: !8)
!159 = !DILocation(line: 58, column: 1, scope: !8)
!160 = !DILocation(line: 70, column: 16, scope: !18)
!161 = !DILocation(line: 72, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !18, file: !1, line: 72, column: 6)
!163 = !DILocation(line: 72, column: 6, scope: !18)
!164 = !DILocation(line: 73, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 72, column: 20)
!166 = !DILocation(line: 73, column: 4, scope: !165)
!167 = !DILocation(line: 75, column: 4, scope: !165)
!168 = !DILocation(line: 77, column: 40, scope: !18)
!169 = !DILocation(line: 77, column: 23, scope: !18)
!170 = !DILocation(line: 77, column: 22, scope: !18)
!171 = !DILocation(line: 77, column: 1, scope: !18)
!172 = !DILocation(line: 89, column: 16, scope: !50)
!173 = !DILocation(line: 90, column: 15, scope: !50)
!174 = !DILocation(line: 92, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !50, file: !1, line: 92, column: 6)
!176 = !DILocation(line: 92, column: 6, scope: !50)
!177 = !DILocation(line: 93, column: 12, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 92, column: 20)
!179 = !DILocation(line: 93, column: 4, scope: !178)
!180 = !DILocation(line: 96, column: 4, scope: !178)
!181 = !DILocation(line: 98, column: 18, scope: !50)
!182 = !DILocation(line: 98, column: 25, scope: !50)
!183 = !DILocation(line: 98, column: 31, scope: !50)
!184 = !DILocation(line: 98, column: 1, scope: !50)
!185 = !DILocation(line: 100, column: 1, scope: !50)
!186 = !DILocation(line: 112, column: 16, scope: !56)
!187 = !DILocation(line: 113, column: 16, scope: !56)
!188 = !DILocation(line: 114, column: 16, scope: !56)
!189 = !DILocation(line: 115, column: 16, scope: !56)
!190 = !DILocation(line: 116, column: 16, scope: !56)
!191 = !DILocation(line: 117, column: 16, scope: !56)
!192 = !DILocation(line: 118, column: 16, scope: !56)
!193 = !DILocation(line: 119, column: 16, scope: !56)
!194 = !DILocation(line: 128, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !56, file: !1, line: 128, column: 7)
!196 = !DILocation(line: 128, column: 19, scope: !195)
!197 = !DILocation(line: 129, column: 15, scope: !195)
!198 = !DILocation(line: 129, column: 31, scope: !195)
!199 = !DILocation(line: 129, column: 23, scope: !195)
!200 = !DILocation(line: 129, column: 46, scope: !195)
!201 = !DILocation(line: 129, column: 59, scope: !195)
!202 = !DILocation(line: 129, column: 51, scope: !195)
!203 = !DILocation(line: 130, column: 12, scope: !204)
!204 = distinct !DILexicalBlock(scope: !195, file: !1, line: 129, column: 71)
!205 = !DILocation(line: 130, column: 4, scope: !204)
!206 = !DILocation(line: 134, column: 4, scope: !204)
!207 = !DILocation(line: 136, column: 28, scope: !56)
!208 = !DILocation(line: 136, column: 11, scope: !56)
!209 = !DILocation(line: 121, column: 11, scope: !56)
!210 = !DILocation(line: 137, column: 11, scope: !56)
!211 = !DILocation(line: 122, column: 11, scope: !56)
!212 = !DILocation(line: 143, column: 25, scope: !56)
!213 = !{!214, !214, i64 0}
!214 = !{!"int", !134, i64 0}
!215 = !DILocation(line: 143, column: 6, scope: !56)
!216 = !DILocation(line: 143, column: 12, scope: !56)
!217 = !{!218, !214, i64 0}
!218 = !{!"_DenseMtx", !214, i64 0, !214, i64 4, !214, i64 8, !214, i64 12, !214, i64 16, !214, i64 20, !214, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !219, i64 56, !133, i64 80}
!219 = !{!"_DV", !214, i64 0, !214, i64 4, !214, i64 8, !133, i64 16}
!220 = !DILocation(line: 144, column: 14, scope: !56)
!221 = !DILocation(line: 144, column: 25, scope: !56)
!222 = !DILocation(line: 144, column: 6, scope: !56)
!223 = !DILocation(line: 144, column: 12, scope: !56)
!224 = !{!218, !214, i64 4}
!225 = !DILocation(line: 145, column: 14, scope: !56)
!226 = !DILocation(line: 145, column: 25, scope: !56)
!227 = !DILocation(line: 145, column: 6, scope: !56)
!228 = !DILocation(line: 145, column: 12, scope: !56)
!229 = !{!218, !214, i64 8}
!230 = !DILocation(line: 146, column: 14, scope: !56)
!231 = !DILocation(line: 146, column: 25, scope: !56)
!232 = !DILocation(line: 146, column: 6, scope: !56)
!233 = !DILocation(line: 146, column: 12, scope: !56)
!234 = !{!218, !214, i64 12}
!235 = !DILocation(line: 147, column: 14, scope: !56)
!236 = !DILocation(line: 147, column: 25, scope: !56)
!237 = !DILocation(line: 147, column: 6, scope: !56)
!238 = !DILocation(line: 147, column: 12, scope: !56)
!239 = !{!218, !214, i64 16}
!240 = !DILocation(line: 148, column: 14, scope: !56)
!241 = !DILocation(line: 148, column: 25, scope: !56)
!242 = !DILocation(line: 148, column: 6, scope: !56)
!243 = !DILocation(line: 148, column: 12, scope: !56)
!244 = !{!218, !214, i64 20}
!245 = !DILocation(line: 149, column: 14, scope: !56)
!246 = !DILocation(line: 149, column: 25, scope: !56)
!247 = !DILocation(line: 149, column: 6, scope: !56)
!248 = !DILocation(line: 149, column: 12, scope: !56)
!249 = !{!218, !214, i64 24}
!250 = !DILocation(line: 155, column: 23, scope: !56)
!251 = !DILocation(line: 155, column: 6, scope: !56)
!252 = !DILocation(line: 155, column: 13, scope: !56)
!253 = !{!218, !133, i64 32}
!254 = !DILocation(line: 156, column: 27, scope: !56)
!255 = !DILocation(line: 156, column: 6, scope: !56)
!256 = !DILocation(line: 156, column: 13, scope: !56)
!257 = !{!218, !133, i64 40}
!258 = !DILocation(line: 160, column: 32, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 159, column: 47)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 159, column: 13)
!261 = distinct !DILexicalBlock(scope: !56, file: !1, line: 157, column: 6)
!262 = !DILocation(line: 160, column: 39, scope: !259)
!263 = !DILocation(line: 160, column: 46, scope: !259)
!264 = !DILocation(line: 160, column: 27, scope: !259)
!265 = !DILocation(line: 160, column: 9, scope: !259)
!266 = !DILocation(line: 160, column: 17, scope: !259)
!267 = !{!218, !133, i64 48}
!268 = !DILocation(line: 172, column: 1, scope: !56)
!269 = !DILocation(line: 184, column: 16, scope: !70)
!270 = !DILocation(line: 185, column: 15, scope: !70)
!271 = !DILocation(line: 186, column: 15, scope: !70)
!272 = !DILocation(line: 187, column: 15, scope: !70)
!273 = !DILocation(line: 188, column: 15, scope: !70)
!274 = !DILocation(line: 189, column: 15, scope: !70)
!275 = !DILocation(line: 190, column: 15, scope: !70)
!276 = !DILocation(line: 191, column: 15, scope: !70)
!277 = !DILocation(line: 199, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !70, file: !1, line: 199, column: 7)
!279 = !DILocation(line: 199, column: 19, scope: !278)
!280 = !DILocation(line: 200, column: 15, scope: !278)
!281 = !DILocation(line: 200, column: 31, scope: !278)
!282 = !DILocation(line: 200, column: 23, scope: !278)
!283 = !DILocation(line: 200, column: 46, scope: !278)
!284 = !DILocation(line: 200, column: 59, scope: !278)
!285 = !DILocation(line: 200, column: 51, scope: !278)
!286 = !DILocation(line: 201, column: 12, scope: !287)
!287 = distinct !DILexicalBlock(scope: !278, file: !1, line: 200, column: 71)
!288 = !DILocation(line: 201, column: 4, scope: !287)
!289 = !DILocation(line: 205, column: 4, scope: !287)
!290 = !DILocation(line: 207, column: 1, scope: !70)
!291 = !DILocation(line: 212, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !70, file: !1, line: 207, column: 17)
!293 = !DILocation(line: 212, column: 4, scope: !292)
!294 = !DILocation(line: 216, column: 4, scope: !292)
!295 = !DILocation(line: 224, column: 10, scope: !70)
!296 = !DILocation(line: 193, column: 7, scope: !70)
!297 = !DILocation(line: 225, column: 1, scope: !70)
!298 = !DILocation(line: 231, column: 1, scope: !70)
!299 = !DILocation(line: 232, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !70, file: !1, line: 232, column: 6)
!301 = !DILocation(line: 232, column: 6, scope: !70)
!302 = !DILocation(line: 233, column: 22, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 232, column: 17)
!304 = !DILocation(line: 233, column: 4, scope: !303)
!305 = !DILocation(line: 234, column: 1, scope: !303)
!306 = !DILocation(line: 235, column: 11, scope: !307)
!307 = distinct !DILexicalBlock(scope: !70, file: !1, line: 235, column: 6)
!308 = !DILocation(line: 235, column: 6, scope: !70)
!309 = !DILocation(line: 236, column: 22, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !1, line: 235, column: 17)
!311 = !DILocation(line: 236, column: 4, scope: !310)
!312 = !DILocation(line: 237, column: 1, scope: !310)
!313 = !DILocation(line: 238, column: 1, scope: !70)
!314 = !DILocation(line: 251, column: 16, scope: !81)
!315 = !DILocation(line: 259, column: 11, scope: !316)
!316 = distinct !DILexicalBlock(scope: !81, file: !1, line: 259, column: 7)
!317 = !DILocation(line: 259, column: 7, scope: !81)
!318 = !DILocation(line: 260, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !1, line: 259, column: 21)
!320 = !DILocation(line: 260, column: 4, scope: !319)
!321 = !DILocation(line: 262, column: 4, scope: !319)
!322 = !DILocation(line: 264, column: 38, scope: !81)
!323 = !DILocation(line: 264, column: 21, scope: !81)
!324 = !DILocation(line: 264, column: 13, scope: !81)
!325 = !DILocation(line: 253, column: 8, scope: !81)
!326 = !DILocation(line: 265, column: 25, scope: !81)
!327 = !DILocation(line: 265, column: 37, scope: !81)
!328 = !DILocation(line: 265, column: 49, scope: !81)
!329 = !DILocation(line: 266, column: 20, scope: !81)
!330 = !DILocation(line: 266, column: 32, scope: !81)
!331 = !DILocation(line: 266, column: 44, scope: !81)
!332 = !DILocation(line: 266, column: 56, scope: !81)
!333 = !DILocation(line: 265, column: 1, scope: !81)
!334 = !DILocation(line: 268, column: 1, scope: !81)
!335 = !DILocation(line: 280, column: 16, scope: !87)
!336 = !DILocation(line: 281, column: 16, scope: !87)
!337 = !DILocation(line: 282, column: 16, scope: !87)
!338 = !DILocation(line: 283, column: 16, scope: !87)
!339 = !DILocation(line: 284, column: 16, scope: !87)
!340 = !DILocation(line: 285, column: 16, scope: !87)
!341 = !DILocation(line: 286, column: 16, scope: !87)
!342 = !DILocation(line: 287, column: 16, scope: !87)
!343 = !DILocation(line: 288, column: 17, scope: !87)
!344 = !DILocation(line: 289, column: 17, scope: !87)
!345 = !DILocation(line: 290, column: 17, scope: !87)
!346 = !DILocation(line: 297, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !87, file: !1, line: 297, column: 7)
!348 = !DILocation(line: 297, column: 27, scope: !347)
!349 = !DILocation(line: 297, column: 19, scope: !347)
!350 = !DILocation(line: 297, column: 40, scope: !347)
!351 = !DILocation(line: 298, column: 13, scope: !347)
!352 = !DILocation(line: 298, column: 26, scope: !347)
!353 = !DILocation(line: 298, column: 18, scope: !347)
!354 = !DILocation(line: 299, column: 15, scope: !347)
!355 = !DILocation(line: 299, column: 33, scope: !347)
!356 = !DILocation(line: 299, column: 51, scope: !347)
!357 = !DILocation(line: 300, column: 12, scope: !358)
!358 = distinct !DILexicalBlock(scope: !347, file: !1, line: 299, column: 61)
!359 = !DILocation(line: 300, column: 4, scope: !358)
!360 = !DILocation(line: 308, column: 4, scope: !358)
!361 = !DILocation(line: 310, column: 1, scope: !87)
!362 = !DILocation(line: 315, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !87, file: !1, line: 310, column: 17)
!364 = !DILocation(line: 315, column: 4, scope: !363)
!365 = !DILocation(line: 317, column: 4, scope: !363)
!366 = !DILocation(line: 325, column: 6, scope: !87)
!367 = !DILocation(line: 325, column: 12, scope: !87)
!368 = !DILocation(line: 326, column: 6, scope: !87)
!369 = !DILocation(line: 326, column: 12, scope: !87)
!370 = !DILocation(line: 327, column: 6, scope: !87)
!371 = !DILocation(line: 327, column: 12, scope: !87)
!372 = !DILocation(line: 328, column: 6, scope: !87)
!373 = !DILocation(line: 328, column: 12, scope: !87)
!374 = !DILocation(line: 329, column: 6, scope: !87)
!375 = !DILocation(line: 329, column: 12, scope: !87)
!376 = !DILocation(line: 330, column: 6, scope: !87)
!377 = !DILocation(line: 330, column: 12, scope: !87)
!378 = !DILocation(line: 331, column: 6, scope: !87)
!379 = !DILocation(line: 331, column: 12, scope: !87)
!380 = !DILocation(line: 337, column: 6, scope: !87)
!381 = !DILocation(line: 337, column: 14, scope: !87)
!382 = !DILocation(line: 338, column: 6, scope: !87)
!383 = !DILocation(line: 338, column: 14, scope: !87)
!384 = !DILocation(line: 339, column: 6, scope: !87)
!385 = !DILocation(line: 339, column: 14, scope: !87)
!386 = !DILocation(line: 341, column: 1, scope: !87)
!387 = !DILocation(line: 354, column: 16, scope: !102)
!388 = !DILocation(line: 355, column: 16, scope: !102)
!389 = !DILocation(line: 362, column: 11, scope: !390)
!390 = distinct !DILexicalBlock(scope: !102, file: !1, line: 362, column: 7)
!391 = !DILocation(line: 362, column: 25, scope: !390)
!392 = !DILocation(line: 362, column: 19, scope: !390)
!393 = !DILocation(line: 363, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 362, column: 35)
!395 = !DILocation(line: 363, column: 4, scope: !394)
!396 = !DILocation(line: 365, column: 4, scope: !394)
!397 = !DILocation(line: 376, column: 18, scope: !102)
!398 = !DILocation(line: 376, column: 29, scope: !102)
!399 = !DILocation(line: 376, column: 40, scope: !102)
!400 = !DILocation(line: 377, column: 14, scope: !102)
!401 = !DILocation(line: 377, column: 25, scope: !102)
!402 = !DILocation(line: 377, column: 36, scope: !102)
!403 = !DILocation(line: 376, column: 1, scope: !102)
!404 = !DILocation(line: 378, column: 1, scope: !102)
