; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in DenseMtx_rowid(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [48 x i8] c"\0A fatal error in DenseMtx_colid(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_dimensions(%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_rowIncrement(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_columnIncrement(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_rowIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_columnIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DenseMtx_entries(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_workspace(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx or pValue is NULL\0A\00", align 1
@.str10 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx type must be SPOOLES_REAL\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str12 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str13 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str14 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtxm pReal or pImag is NULL\0A\00", align 1
@.str15 = private unnamed_addr constant [76 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtx type must be SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str18 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx is NULL\0A\00", align 1
@.str20 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx type must be SPOOLES_REAL\0A\00", align 1
@.str21 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str22 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str23 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str24 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx is NULL\0A\00", align 1
@.str25 = private unnamed_addr constant [79 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx type must be SPOOLES_COMPLEX\0A\00", align 1
@.str26 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str28 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str29 = private unnamed_addr constant [40 x i8] c"\0A error in DenseMtx_row()\0A mtx is NULL\0A\00", align 1
@.str30 = private unnamed_addr constant [44 x i8] c"\0A error in DenseMtx_row()\0A invalid type %d\0A\00", align 1
@.str31 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_row()\0A %d rows, irow = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [44 x i8] c"\0A error in DenseMtx_row()\0A prowent is NULL\0A\00", align 1
@.str33 = private unnamed_addr constant [43 x i8] c"\0A error in DenseMtx_column()\0A mtx is NULL\0A\00", align 1
@.str34 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_column()\0A invalid type %d\0A\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"\0A error in DenseMtx_column()\0A %d columns, jcol = %d\0A\00", align 1
@.str36 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_column()\0A pcolent is NULL\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_rowid(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !39, metadata !132), !dbg !133
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !134
  br i1 %1, label %2, label %5, !dbg !136

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !137, !tbaa !139
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !143
  tail call void @exit(i32 -1) #7, !dbg !144
  unreachable, !dbg !144

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !145
  %7 = load i32* %6, align 4, !dbg !145, !tbaa !146
  ret i32 %7, !dbg !150
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_colid(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !42, metadata !132), !dbg !151
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !152
  br i1 %1, label %2, label %5, !dbg !154

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !155, !tbaa !139
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !157
  tail call void @exit(i32 -1) #7, !dbg !158
  unreachable, !dbg !158

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !159
  %7 = load i32* %6, align 4, !dbg !159, !tbaa !160
  ret i32 %7, !dbg !161
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_dimensions(%struct._DenseMtx* %mtx, i32* %pnrow, i32* %pncol) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !47, metadata !132), !dbg !162
  tail call void @llvm.dbg.value(metadata i32* %pnrow, i64 0, metadata !48, metadata !132), !dbg !163
  tail call void @llvm.dbg.value(metadata i32* %pncol, i64 0, metadata !49, metadata !132), !dbg !164
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !165
  %2 = icmp eq i32* %pnrow, null, !dbg !167
  %or.cond = or i1 %1, %2, !dbg !168
  %3 = icmp eq i32* %pncol, null, !dbg !169
  %or.cond3 = or i1 %or.cond, %3, !dbg !168
  br i1 %or.cond3, label %4, label %7, !dbg !168

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !170, !tbaa !139
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pnrow, i32* %pncol) #6, !dbg !172
  tail call void @exit(i32 -1) #7, !dbg !173
  unreachable, !dbg !173

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !174
  %9 = load i32* %8, align 4, !dbg !174, !tbaa !175
  store i32 %9, i32* %pnrow, align 4, !dbg !176, !tbaa !177
  %10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !178
  %11 = load i32* %10, align 4, !dbg !178, !tbaa !179
  store i32 %11, i32* %pncol, align 4, !dbg !180, !tbaa !177
  ret void, !dbg !181
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !52, metadata !132), !dbg !182
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !183
  br i1 %1, label %2, label %5, !dbg !185

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !186, !tbaa !139
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !188
  tail call void @exit(i32 -1) #7, !dbg !189
  unreachable, !dbg !189

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !190
  %7 = load i32* %6, align 4, !dbg !190, !tbaa !191
  ret i32 %7, !dbg !192
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !55, metadata !132), !dbg !193
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !194
  br i1 %1, label %2, label %5, !dbg !196

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !197, !tbaa !139
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !199
  tail call void @exit(i32 -1) #7, !dbg !200
  unreachable, !dbg !200

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !201
  %7 = load i32* %6, align 4, !dbg !201, !tbaa !202
  ret i32 %7, !dbg !203
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %pnrow, i32** %prowind) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !61, metadata !132), !dbg !204
  tail call void @llvm.dbg.value(metadata i32* %pnrow, i64 0, metadata !62, metadata !132), !dbg !205
  tail call void @llvm.dbg.value(metadata i32** %prowind, i64 0, metadata !63, metadata !132), !dbg !206
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !207
  %2 = icmp eq i32* %pnrow, null, !dbg !209
  %or.cond = or i1 %1, %2, !dbg !210
  %3 = icmp eq i32** %prowind, null, !dbg !211
  %or.cond3 = or i1 %or.cond, %3, !dbg !210
  br i1 %or.cond3, label %4, label %7, !dbg !210

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !212, !tbaa !139
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pnrow, i32** %prowind) #6, !dbg !214
  tail call void @exit(i32 -1) #7, !dbg !215
  unreachable, !dbg !215

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !216
  %9 = load i32* %8, align 4, !dbg !216, !tbaa !175
  store i32 %9, i32* %pnrow, align 4, !dbg !217, !tbaa !177
  %10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !218
  %11 = bitcast i32** %10 to i64*, !dbg !218
  %12 = load i64* %11, align 8, !dbg !218, !tbaa !219
  %13 = bitcast i32** %prowind to i64*, !dbg !220
  store i64 %12, i64* %13, align 8, !dbg !220, !tbaa !139
  ret void, !dbg !221
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %pncol, i32** %pcolind) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !66, metadata !132), !dbg !222
  tail call void @llvm.dbg.value(metadata i32* %pncol, i64 0, metadata !67, metadata !132), !dbg !223
  tail call void @llvm.dbg.value(metadata i32** %pcolind, i64 0, metadata !68, metadata !132), !dbg !224
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !225
  %2 = icmp eq i32* %pncol, null, !dbg !227
  %or.cond = or i1 %1, %2, !dbg !228
  %3 = icmp eq i32** %pcolind, null, !dbg !229
  %or.cond3 = or i1 %or.cond, %3, !dbg !228
  br i1 %or.cond3, label %4, label %7, !dbg !228

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !230, !tbaa !139
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([62 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pncol, i32** %pcolind) #6, !dbg !232
  tail call void @exit(i32 -1) #7, !dbg !233
  unreachable, !dbg !233

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !234
  %9 = load i32* %8, align 4, !dbg !234, !tbaa !179
  store i32 %9, i32* %pncol, align 4, !dbg !235, !tbaa !177
  %10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !236
  %11 = bitcast i32** %10 to i64*, !dbg !236
  %12 = load i64* %11, align 8, !dbg !236, !tbaa !237
  %13 = bitcast i32** %pcolind to i64*, !dbg !238
  store i64 %12, i64* %13, align 8, !dbg !238, !tbaa !139
  ret void, !dbg !239
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !73, metadata !132), !dbg !240
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !241
  br i1 %1, label %2, label %5, !dbg !243

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !244, !tbaa !139
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !246
  tail call void @exit(i32 -1) #7, !dbg !247
  unreachable, !dbg !247

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !248
  %7 = load double** %6, align 8, !dbg !248, !tbaa !249
  ret double* %7, !dbg !250
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @DenseMtx_workspace(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !78, metadata !132), !dbg !251
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !252
  br i1 %1, label %2, label %5, !dbg !254

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !255, !tbaa !139
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !257
  tail call void @exit(i32 -1) #7, !dbg !258
  unreachable, !dbg !258

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !259
  %7 = tail call double* @DV_entries(%struct._DV* %6) #6, !dbg !260
  %8 = bitcast double* %7 to i8*, !dbg !261
  ret i8* %8, !dbg !262
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_realEntry(%struct._DenseMtx* readonly %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !83, metadata !132), !dbg !263
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !84, metadata !132), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !85, metadata !132), !dbg !265
  tail call void @llvm.dbg.value(metadata double* %pValue, i64 0, metadata !86, metadata !132), !dbg !266
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !267
  %2 = icmp eq double* %pValue, null, !dbg !269
  %or.cond = or i1 %1, %2, !dbg !270
  br i1 %or.cond, label %3, label %6, !dbg !270

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !271, !tbaa !139
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), i64 61, i64 1, %struct.__sFILE* %4), !dbg !273
  tail call void @exit(i32 -1) #7, !dbg !274
  unreachable, !dbg !274

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !275
  %8 = load i32* %7, align 4, !dbg !275, !tbaa !277
  %9 = icmp eq i32 %8, 1, !dbg !278
  br i1 %9, label %13, label %10, !dbg !279

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !280, !tbaa !139
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([70 x i8]* @.str10, i64 0, i64 0), i64 69, i64 1, %struct.__sFILE* %11), !dbg !282
  tail call void @exit(i32 -1) #7, !dbg !283
  unreachable, !dbg !283

; <label>:13                                      ; preds = %6
  %14 = icmp sgt i32 %irow, -1, !dbg !284
  %.phi.trans.insert3 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre4 = load i32* %.phi.trans.insert3, align 4, !dbg !286, !tbaa !175
  %15 = icmp sgt i32 %.pre4, %irow, !dbg !288
  %or.cond6 = and i1 %14, %15, !dbg !289
  br i1 %or.cond6, label %18, label %._crit_edge2, !dbg !289

._crit_edge2:                                     ; preds = %13
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !290, !tbaa !139
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), i32 %irow, i32 %.pre4) #6, !dbg !291
  tail call void @exit(i32 -1) #7, !dbg !292
  unreachable, !dbg !292

; <label>:18                                      ; preds = %13
  %19 = icmp sgt i32 %jcol, -1, !dbg !293
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !295, !tbaa !179
  %20 = icmp sgt i32 %.pre, %jcol, !dbg !297
  %or.cond7 = and i1 %19, %20, !dbg !298
  br i1 %or.cond7, label %23, label %._crit_edge, !dbg !298

._crit_edge:                                      ; preds = %18
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !299, !tbaa !139
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), i32 %jcol, i32 %.pre) #6, !dbg !300
  tail call void @exit(i32 -1) #7, !dbg !301
  unreachable, !dbg !301

; <label>:23                                      ; preds = %18
  %24 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !302
  %25 = load double** %24, align 8, !dbg !302, !tbaa !249
  %26 = icmp eq double* %25, null, !dbg !304
  br i1 %26, label %27, label %30, !dbg !305

; <label>:27                                      ; preds = %23
  %28 = load %struct.__sFILE** @__stderrp, align 8, !dbg !306, !tbaa !139
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str13, i64 0, i64 0), i64 61, i64 1, %struct.__sFILE* %28), !dbg !308
  tail call void @exit(i32 -1) #7, !dbg !309
  unreachable, !dbg !309

; <label>:30                                      ; preds = %23
  %31 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !310
  %32 = load i32* %31, align 4, !dbg !310, !tbaa !191
  %33 = mul nsw i32 %32, %irow, !dbg !311
  %34 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !312
  %35 = load i32* %34, align 4, !dbg !312, !tbaa !202
  %36 = mul nsw i32 %35, %jcol, !dbg !313
  %37 = add nsw i32 %36, %33, !dbg !314
  %38 = sext i32 %37 to i64, !dbg !315
  %39 = getelementptr inbounds double* %25, i64 %38, !dbg !315
  %40 = bitcast double* %39 to i64*, !dbg !315
  %41 = load i64* %40, align 8, !dbg !315, !tbaa !316
  %42 = bitcast double* %pValue to i64*, !dbg !318
  store i64 %41, i64* %42, align 8, !dbg !318, !tbaa !316
  ret void, !dbg !319
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_complexEntry(%struct._DenseMtx* readonly %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !91, metadata !132), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !92, metadata !132), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !93, metadata !132), !dbg !322
  tail call void @llvm.dbg.value(metadata double* %pReal, i64 0, metadata !94, metadata !132), !dbg !323
  tail call void @llvm.dbg.value(metadata double* %pImag, i64 0, metadata !95, metadata !132), !dbg !324
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !325
  %2 = icmp eq double* %pReal, null, !dbg !327
  %or.cond = or i1 %1, %2, !dbg !328
  %3 = icmp eq double* %pImag, null, !dbg !329
  %or.cond3 = or i1 %or.cond, %3, !dbg !328
  br i1 %or.cond3, label %4, label %7, !dbg !328

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !330, !tbaa !139
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str14, i64 0, i64 0), i64 70, i64 1, %struct.__sFILE* %5), !dbg !332
  tail call void @exit(i32 -1) #7, !dbg !333
  unreachable, !dbg !333

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !334
  %9 = load i32* %8, align 4, !dbg !334, !tbaa !277
  %10 = icmp eq i32 %9, 2, !dbg !336
  br i1 %10, label %14, label %11, !dbg !337

; <label>:11                                      ; preds = %7
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !338, !tbaa !139
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str15, i64 0, i64 0), i64 75, i64 1, %struct.__sFILE* %12), !dbg !340
  tail call void @exit(i32 -1) #7, !dbg !341
  unreachable, !dbg !341

; <label>:14                                      ; preds = %7
  %15 = icmp sgt i32 %irow, -1, !dbg !342
  %.phi.trans.insert5 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre6 = load i32* %.phi.trans.insert5, align 4, !dbg !344, !tbaa !175
  %16 = icmp sgt i32 %.pre6, %irow, !dbg !346
  %or.cond8 = and i1 %15, %16, !dbg !347
  br i1 %or.cond8, label %19, label %._crit_edge4, !dbg !347

._crit_edge4:                                     ; preds = %14
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !348, !tbaa !139
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([75 x i8]* @.str16, i64 0, i64 0), i32 %irow, i32 %.pre6) #6, !dbg !349
  tail call void @exit(i32 -1) #7, !dbg !350
  unreachable, !dbg !350

; <label>:19                                      ; preds = %14
  %20 = icmp sgt i32 %jcol, -1, !dbg !351
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !353, !tbaa !179
  %21 = icmp sgt i32 %.pre, %jcol, !dbg !355
  %or.cond9 = and i1 %20, %21, !dbg !356
  br i1 %or.cond9, label %24, label %._crit_edge, !dbg !356

._crit_edge:                                      ; preds = %19
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !357, !tbaa !139
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), i32 %jcol, i32 %.pre) #6, !dbg !358
  tail call void @exit(i32 -1) #7, !dbg !359
  unreachable, !dbg !359

; <label>:24                                      ; preds = %19
  %25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !360
  %26 = load double** %25, align 8, !dbg !360, !tbaa !249
  %27 = icmp eq double* %26, null, !dbg !362
  br i1 %27, label %28, label %31, !dbg !363

; <label>:28                                      ; preds = %24
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !364, !tbaa !139
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i64 64, i64 1, %struct.__sFILE* %29), !dbg !366
  tail call void @exit(i32 -1) #7, !dbg !367
  unreachable, !dbg !367

; <label>:31                                      ; preds = %24
  %32 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !368
  %33 = load i32* %32, align 4, !dbg !368, !tbaa !191
  %34 = mul nsw i32 %33, %irow, !dbg !369
  %35 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !370
  %36 = load i32* %35, align 4, !dbg !370, !tbaa !202
  %37 = mul nsw i32 %36, %jcol, !dbg !371
  %38 = add nsw i32 %37, %34, !dbg !372
  %39 = shl nsw i32 %38, 1, !dbg !373
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !96, metadata !132), !dbg !374
  %40 = sext i32 %39 to i64, !dbg !375
  %41 = getelementptr inbounds double* %26, i64 %40, !dbg !375
  %42 = bitcast double* %41 to i64*, !dbg !375
  %43 = load i64* %42, align 8, !dbg !375, !tbaa !316
  %44 = bitcast double* %pReal to i64*, !dbg !376
  store i64 %43, i64* %44, align 8, !dbg !376, !tbaa !316
  %45 = or i32 %39, 1, !dbg !377
  %46 = sext i32 %45 to i64, !dbg !378
  %47 = getelementptr inbounds double* %26, i64 %46, !dbg !378
  %48 = bitcast double* %47 to i64*, !dbg !378
  %49 = load i64* %48, align 8, !dbg !378, !tbaa !316
  %50 = bitcast double* %pImag to i64*, !dbg !379
  store i64 %49, i64* %50, align 8, !dbg !379, !tbaa !316
  ret void, !dbg !380
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_setRealEntry(%struct._DenseMtx* readonly %mtx, i32 %irow, i32 %jcol, double %value) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !101, metadata !132), !dbg !381
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !102, metadata !132), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !103, metadata !132), !dbg !383
  tail call void @llvm.dbg.value(metadata double %value, i64 0, metadata !104, metadata !132), !dbg !384
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !385
  br i1 %1, label %2, label %5, !dbg !387

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !388, !tbaa !139
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %3), !dbg !390
  tail call void @exit(i32 -1) #7, !dbg !391
  unreachable, !dbg !391

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !392
  %7 = load i32* %6, align 4, !dbg !392, !tbaa !277
  %8 = icmp eq i32 %7, 1, !dbg !394
  br i1 %8, label %12, label %9, !dbg !395

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !396, !tbaa !139
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str20, i64 0, i64 0), i64 72, i64 1, %struct.__sFILE* %10), !dbg !398
  tail call void @exit(i32 -1) #7, !dbg !399
  unreachable, !dbg !399

; <label>:12                                      ; preds = %5
  %13 = icmp sgt i32 %irow, -1, !dbg !400
  %.phi.trans.insert2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre3 = load i32* %.phi.trans.insert2, align 4, !dbg !402, !tbaa !175
  %14 = icmp sgt i32 %.pre3, %irow, !dbg !404
  %or.cond = and i1 %13, %14, !dbg !405
  br i1 %or.cond, label %17, label %._crit_edge1, !dbg !405

._crit_edge1:                                     ; preds = %12
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !406, !tbaa !139
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([75 x i8]* @.str21, i64 0, i64 0), i32 %irow, i32 %.pre3) #6, !dbg !407
  tail call void @exit(i32 -1) #7, !dbg !408
  unreachable, !dbg !408

; <label>:17                                      ; preds = %12
  %18 = icmp sgt i32 %jcol, -1, !dbg !409
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !411, !tbaa !179
  %19 = icmp sgt i32 %.pre, %jcol, !dbg !413
  %or.cond5 = and i1 %18, %19, !dbg !414
  br i1 %or.cond5, label %22, label %._crit_edge, !dbg !414

._crit_edge:                                      ; preds = %17
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !415, !tbaa !139
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([75 x i8]* @.str22, i64 0, i64 0), i32 %jcol, i32 %.pre) #6, !dbg !416
  tail call void @exit(i32 -1) #7, !dbg !417
  unreachable, !dbg !417

; <label>:22                                      ; preds = %17
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !418
  %24 = load double** %23, align 8, !dbg !418, !tbaa !249
  %25 = icmp eq double* %24, null, !dbg !420
  br i1 %25, label %26, label %29, !dbg !421

; <label>:26                                      ; preds = %22
  %27 = load %struct.__sFILE** @__stderrp, align 8, !dbg !422, !tbaa !139
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str23, i64 0, i64 0), i64 64, i64 1, %struct.__sFILE* %27), !dbg !424
  tail call void @exit(i32 -1) #7, !dbg !425
  unreachable, !dbg !425

; <label>:29                                      ; preds = %22
  %30 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !426
  %31 = load i32* %30, align 4, !dbg !426, !tbaa !191
  %32 = mul nsw i32 %31, %irow, !dbg !427
  %33 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !428
  %34 = load i32* %33, align 4, !dbg !428, !tbaa !202
  %35 = mul nsw i32 %34, %jcol, !dbg !429
  %36 = add nsw i32 %35, %32, !dbg !430
  %37 = sext i32 %36 to i64, !dbg !431
  %38 = getelementptr inbounds double* %24, i64 %37, !dbg !431
  store double %value, double* %38, align 8, !dbg !432, !tbaa !316
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_setComplexEntry(%struct._DenseMtx* readonly %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !109, metadata !132), !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !110, metadata !132), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !111, metadata !132), !dbg !436
  tail call void @llvm.dbg.value(metadata double %real, i64 0, metadata !112, metadata !132), !dbg !437
  tail call void @llvm.dbg.value(metadata double %imag, i64 0, metadata !113, metadata !132), !dbg !438
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !439
  br i1 %1, label %2, label %5, !dbg !441

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !442, !tbaa !139
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str24, i64 0, i64 0), i64 57, i64 1, %struct.__sFILE* %3), !dbg !444
  tail call void @exit(i32 -1) #7, !dbg !445
  unreachable, !dbg !445

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !446
  %7 = load i32* %6, align 4, !dbg !446, !tbaa !277
  %8 = icmp eq i32 %7, 2, !dbg !448
  br i1 %8, label %12, label %9, !dbg !449

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !450, !tbaa !139
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str25, i64 0, i64 0), i64 78, i64 1, %struct.__sFILE* %10), !dbg !452
  tail call void @exit(i32 -1) #7, !dbg !453
  unreachable, !dbg !453

; <label>:12                                      ; preds = %5
  %13 = icmp sgt i32 %irow, -1, !dbg !454
  %.phi.trans.insert2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre3 = load i32* %.phi.trans.insert2, align 4, !dbg !456, !tbaa !175
  %14 = icmp sgt i32 %.pre3, %irow, !dbg !458
  %or.cond = and i1 %13, %14, !dbg !459
  br i1 %or.cond, label %17, label %._crit_edge1, !dbg !459

._crit_edge1:                                     ; preds = %12
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !460, !tbaa !139
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([78 x i8]* @.str26, i64 0, i64 0), i32 %irow, i32 %.pre3) #6, !dbg !461
  tail call void @exit(i32 -1) #7, !dbg !462
  unreachable, !dbg !462

; <label>:17                                      ; preds = %12
  %18 = icmp sgt i32 %jcol, -1, !dbg !463
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !465, !tbaa !179
  %19 = icmp sgt i32 %.pre, %jcol, !dbg !467
  %or.cond5 = and i1 %18, %19, !dbg !468
  br i1 %or.cond5, label %22, label %._crit_edge, !dbg !468

._crit_edge:                                      ; preds = %17
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !469, !tbaa !139
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([78 x i8]* @.str27, i64 0, i64 0), i32 %jcol, i32 %.pre) #6, !dbg !470
  tail call void @exit(i32 -1) #7, !dbg !471
  unreachable, !dbg !471

; <label>:22                                      ; preds = %17
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !472
  %24 = load double** %23, align 8, !dbg !472, !tbaa !249
  %25 = icmp eq double* %24, null, !dbg !474
  br i1 %25, label %26, label %29, !dbg !475

; <label>:26                                      ; preds = %22
  %27 = load %struct.__sFILE** @__stderrp, align 8, !dbg !476, !tbaa !139
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str28, i64 0, i64 0), i64 67, i64 1, %struct.__sFILE* %27), !dbg !478
  tail call void @exit(i32 -1) #7, !dbg !479
  unreachable, !dbg !479

; <label>:29                                      ; preds = %22
  %30 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !480
  %31 = load i32* %30, align 4, !dbg !480, !tbaa !191
  %32 = mul nsw i32 %31, %irow, !dbg !481
  %33 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !482
  %34 = load i32* %33, align 4, !dbg !482, !tbaa !202
  %35 = mul nsw i32 %34, %jcol, !dbg !483
  %36 = add nsw i32 %35, %32, !dbg !484
  %37 = shl nsw i32 %36, 1, !dbg !485
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !114, metadata !132), !dbg !486
  %38 = sext i32 %37 to i64, !dbg !487
  %39 = getelementptr inbounds double* %24, i64 %38, !dbg !487
  store double %real, double* %39, align 8, !dbg !488, !tbaa !316
  %40 = or i32 %37, 1, !dbg !489
  %41 = sext i32 %40 to i64, !dbg !490
  %42 = getelementptr inbounds double* %24, i64 %41, !dbg !490
  store double %imag, double* %42, align 8, !dbg !491, !tbaa !316
  ret void, !dbg !492
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_row(%struct._DenseMtx* readonly %mtx, i32 %irow, double** %prowent) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !120, metadata !132), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !121, metadata !132), !dbg !494
  tail call void @llvm.dbg.value(metadata double** %prowent, i64 0, metadata !122, metadata !132), !dbg !495
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !496
  br i1 %1, label %2, label %5, !dbg !498

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !499, !tbaa !139
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str29, i64 0, i64 0), i64 39, i64 1, %struct.__sFILE* %3), !dbg !501
  br label %33, !dbg !502

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !503
  %7 = load i32* %6, align 4, !dbg !503, !tbaa !277
  %.off = add i32 %7, -1, !dbg !505
  %switch = icmp ult i32 %.off, 2, !dbg !505
  br i1 %switch, label %11, label %8, !dbg !505

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !506, !tbaa !139
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([44 x i8]* @.str30, i64 0, i64 0), i32 %7) #6, !dbg !508
  br label %33, !dbg !509

; <label>:11                                      ; preds = %5
  %12 = icmp sgt i32 %irow, -1, !dbg !510
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !512, !tbaa !175
  %13 = icmp sgt i32 %.pre, %irow, !dbg !514
  %or.cond = and i1 %12, %13, !dbg !515
  br i1 %or.cond, label %16, label %._crit_edge, !dbg !515

._crit_edge:                                      ; preds = %11
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !516, !tbaa !139
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0), i32 %.pre, i32 %irow) #6, !dbg !517
  br label %33, !dbg !518

; <label>:16                                      ; preds = %11
  %17 = icmp eq double** %prowent, null, !dbg !519
  br i1 %17, label %18, label %21, !dbg !521

; <label>:18                                      ; preds = %16
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !522, !tbaa !139
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i64 43, i64 1, %struct.__sFILE* %19), !dbg !524
  br label %33, !dbg !525

; <label>:21                                      ; preds = %16
  %22 = icmp eq i32 %7, 1, !dbg !526
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !528
  %24 = load double** %23, align 8, !dbg !528, !tbaa !249
  %25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %26 = load i32* %25, align 4
  br i1 %22, label %27, label %29, !dbg !530

; <label>:27                                      ; preds = %21
  %28 = mul nsw i32 %26, %irow, !dbg !531
  br label %32, !dbg !532

; <label>:29                                      ; preds = %21
  %30 = shl i32 %irow, 1, !dbg !533
  %31 = mul nsw i32 %30, %26, !dbg !535
  br label %32

; <label>:32                                      ; preds = %29, %27
  %.pn.in = phi i32 [ %31, %29 ], [ %28, %27 ]
  %.pn = sext i32 %.pn.in to i64, !dbg !536
  %storemerge = getelementptr inbounds double* %24, i64 %.pn, !dbg !536
  store double* %storemerge, double** %prowent, align 8, !dbg !537, !tbaa !139
  br label %33, !dbg !538

; <label>:33                                      ; preds = %32, %18, %._crit_edge, %8, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %8 ], [ -3, %._crit_edge ], [ -4, %18 ], [ 1, %32 ]
  ret i32 %.0, !dbg !539
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_column(%struct._DenseMtx* readonly %mtx, i32 %jcol, double** %pcolent) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !125, metadata !132), !dbg !540
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !126, metadata !132), !dbg !541
  tail call void @llvm.dbg.value(metadata double** %pcolent, i64 0, metadata !127, metadata !132), !dbg !542
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !543
  br i1 %1, label %2, label %5, !dbg !545

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !546, !tbaa !139
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str33, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %3), !dbg !548
  br label %33, !dbg !549

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !550
  %7 = load i32* %6, align 4, !dbg !550, !tbaa !277
  %.off = add i32 %7, -1, !dbg !552
  %switch = icmp ult i32 %.off, 2, !dbg !552
  br i1 %switch, label %11, label %8, !dbg !552

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !553, !tbaa !139
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([47 x i8]* @.str34, i64 0, i64 0), i32 %7) #6, !dbg !555
  br label %33, !dbg !556

; <label>:11                                      ; preds = %5
  %12 = icmp sgt i32 %jcol, -1, !dbg !557
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !559, !tbaa !179
  %13 = icmp sgt i32 %.pre, %jcol, !dbg !561
  %or.cond = and i1 %12, %13, !dbg !562
  br i1 %or.cond, label %16, label %._crit_edge, !dbg !562

._crit_edge:                                      ; preds = %11
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !563, !tbaa !139
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([53 x i8]* @.str35, i64 0, i64 0), i32 %.pre, i32 %jcol) #6, !dbg !564
  br label %33, !dbg !565

; <label>:16                                      ; preds = %11
  %17 = icmp eq double** %pcolent, null, !dbg !566
  br i1 %17, label %18, label %21, !dbg !568

; <label>:18                                      ; preds = %16
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !569, !tbaa !139
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0), i64 46, i64 1, %struct.__sFILE* %19), !dbg !571
  br label %33, !dbg !572

; <label>:21                                      ; preds = %16
  %22 = icmp eq i32 %7, 1, !dbg !573
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !575
  %24 = load double** %23, align 8, !dbg !575, !tbaa !249
  %25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %26 = load i32* %25, align 4
  br i1 %22, label %27, label %29, !dbg !577

; <label>:27                                      ; preds = %21
  %28 = mul nsw i32 %26, %jcol, !dbg !578
  br label %32, !dbg !579

; <label>:29                                      ; preds = %21
  %30 = shl i32 %jcol, 1, !dbg !580
  %31 = mul nsw i32 %30, %26, !dbg !582
  br label %32

; <label>:32                                      ; preds = %29, %27
  %.pn.in = phi i32 [ %31, %29 ], [ %28, %27 ]
  %.pn = sext i32 %.pn.in to i64, !dbg !583
  %storemerge = getelementptr inbounds double* %24, i64 %.pn, !dbg !583
  store double* %storemerge, double** %pcolent, align 8, !dbg !584, !tbaa !139
  br label %33, !dbg !585

; <label>:33                                      ; preds = %32, %18, %._crit_edge, %8, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %8 ], [ -3, %._crit_edge ], [ -4, %18 ], [ 1, %32 ]
  ret i32 %.0, !dbg !586
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!128, !129, !130}
!llvm.ident = !{!131}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !40, !43, !50, !53, !56, !64, !69, !74, !79, !87, !97, !105, !115, !123}
!6 = !DISubprogram(name: "DenseMtx_rowid", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*)* @DenseMtx_rowid, variables: !38)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DenseMtx", file: !12, line: 28, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DenseMtx", file: !12, line: 29, size: 704, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !28, !37}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 30, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !13, file: !12, line: 31, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !13, file: !12, line: 32, baseType: !9, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !13, file: !12, line: 33, baseType: !9, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !13, file: !12, line: 34, baseType: !9, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !13, file: !12, line: 35, baseType: !9, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !13, file: !12, line: 36, baseType: !9, size: 32, align: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !13, file: !12, line: 37, baseType: !23, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !13, file: !12, line: 38, baseType: !23, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !13, file: !12, line: 39, baseType: !26, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !13, file: !12, line: 40, baseType: !29, size: 192, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !30, line: 20, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !30, line: 21, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !30, line: 22, baseType: !9, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !31, file: !30, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !31, file: !30, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !30, line: 25, baseType: !26, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !12, line: 41, baseType: !10, size: 64, align: 64, offset: 640)
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 15, type: !10)
!40 = !DISubprogram(name: "DenseMtx_colid", scope: !1, file: !1, line: 38, type: !7, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*)* @DenseMtx_colid, variables: !41)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !40, file: !1, line: 39, type: !10)
!43 = !DISubprogram(name: "DenseMtx_dimensions", scope: !1, file: !1, line: 62, type: !44, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32*, i32*)* @DenseMtx_dimensions, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !10, !23, !23}
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !43, file: !1, line: 63, type: !10)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pnrow", arg: 2, scope: !43, file: !1, line: 64, type: !23)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pncol", arg: 3, scope: !43, file: !1, line: 65, type: !23)
!50 = !DISubprogram(name: "DenseMtx_rowIncrement", scope: !1, file: !1, line: 91, type: !7, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*)* @DenseMtx_rowIncrement, variables: !51)
!51 = !{!52}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !50, file: !1, line: 92, type: !10)
!53 = !DISubprogram(name: "DenseMtx_columnIncrement", scope: !1, file: !1, line: 115, type: !7, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*)* @DenseMtx_columnIncrement, variables: !54)
!54 = !{!55}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !53, file: !1, line: 116, type: !10)
!56 = !DISubprogram(name: "DenseMtx_rowIndices", scope: !1, file: !1, line: 139, type: !57, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32*, i32**)* @DenseMtx_rowIndices, variables: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !10, !23, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !56, file: !1, line: 140, type: !10)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pnrow", arg: 2, scope: !56, file: !1, line: 141, type: !23)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prowind", arg: 3, scope: !56, file: !1, line: 142, type: !59)
!64 = !DISubprogram(name: "DenseMtx_columnIndices", scope: !1, file: !1, line: 168, type: !57, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32*, i32**)* @DenseMtx_columnIndices, variables: !65)
!65 = !{!66, !67, !68}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !64, file: !1, line: 169, type: !10)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pncol", arg: 2, scope: !64, file: !1, line: 170, type: !23)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pcolind", arg: 3, scope: !64, file: !1, line: 171, type: !59)
!69 = !DISubprogram(name: "DenseMtx_entries", scope: !1, file: !1, line: 197, type: !70, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._DenseMtx*)* @DenseMtx_entries, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!26, !10}
!72 = !{!73}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !69, file: !1, line: 198, type: !10)
!74 = !DISubprogram(name: "DenseMtx_workspace", scope: !1, file: !1, line: 221, type: !75, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._DenseMtx*)* @DenseMtx_workspace, variables: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{!4, !10}
!77 = !{!78}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !74, file: !1, line: 222, type: !10)
!79 = !DISubprogram(name: "DenseMtx_realEntry", scope: !1, file: !1, line: 245, type: !80, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, double*)* @DenseMtx_realEntry, variables: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !10, !9, !9, !26}
!82 = !{!83, !84, !85, !86}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !79, file: !1, line: 246, type: !10)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !79, file: !1, line: 247, type: !9)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !79, file: !1, line: 248, type: !9)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pValue", arg: 4, scope: !79, file: !1, line: 249, type: !26)
!87 = !DISubprogram(name: "DenseMtx_complexEntry", scope: !1, file: !1, line: 294, type: !88, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, double*, double*)* @DenseMtx_complexEntry, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !10, !9, !9, !26, !26}
!90 = !{!91, !92, !93, !94, !95, !96}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !87, file: !1, line: 295, type: !10)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !87, file: !1, line: 296, type: !9)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !87, file: !1, line: 297, type: !9)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pReal", arg: 4, scope: !87, file: !1, line: 298, type: !26)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pImag", arg: 5, scope: !87, file: !1, line: 299, type: !26)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !87, file: !1, line: 301, type: !9)
!97 = !DISubprogram(name: "DenseMtx_setRealEntry", scope: !1, file: !1, line: 347, type: !98, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, double)* @DenseMtx_setRealEntry, variables: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !10, !9, !9, !27}
!100 = !{!101, !102, !103, !104}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !97, file: !1, line: 348, type: !10)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !97, file: !1, line: 349, type: !9)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !97, file: !1, line: 350, type: !9)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 4, scope: !97, file: !1, line: 351, type: !27)
!105 = !DISubprogram(name: "DenseMtx_setComplexEntry", scope: !1, file: !1, line: 396, type: !106, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, i32, double, double)* @DenseMtx_setComplexEntry, variables: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !10, !9, !9, !27, !27}
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !105, file: !1, line: 397, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !105, file: !1, line: 398, type: !9)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !105, file: !1, line: 399, type: !9)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 4, scope: !105, file: !1, line: 400, type: !27)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 5, scope: !105, file: !1, line: 401, type: !27)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !105, file: !1, line: 403, type: !9)
!115 = !DISubprogram(name: "DenseMtx_row", scope: !1, file: !1, line: 456, type: !116, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, i32, double**)* @DenseMtx_row, variables: !119)
!116 = !DISubroutineType(types: !117)
!117 = !{!9, !10, !9, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!119 = !{!120, !121, !122}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !115, file: !1, line: 457, type: !10)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !115, file: !1, line: 458, type: !9)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prowent", arg: 3, scope: !115, file: !1, line: 459, type: !118)
!123 = !DISubprogram(name: "DenseMtx_column", scope: !1, file: !1, line: 509, type: !116, isLocal: false, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, i32, double**)* @DenseMtx_column, variables: !124)
!124 = !{!125, !126, !127}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !123, file: !1, line: 510, type: !10)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 2, scope: !123, file: !1, line: 511, type: !9)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pcolent", arg: 3, scope: !123, file: !1, line: 512, type: !118)
!128 = !{i32 2, !"Dwarf Version", i32 2}
!129 = !{i32 2, !"Debug Info Version", i32 700000003}
!130 = !{i32 1, !"PIC Level", i32 2}
!131 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!132 = !DIExpression()
!133 = !DILocation(line: 15, column: 16, scope: !6)
!134 = !DILocation(line: 22, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !6, file: !1, line: 22, column: 6)
!136 = !DILocation(line: 22, column: 6, scope: !6)
!137 = !DILocation(line: 23, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 22, column: 20)
!139 = !{!140, !140, i64 0}
!140 = !{!"any pointer", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C/C++ TBAA"}
!143 = !DILocation(line: 23, column: 4, scope: !138)
!144 = !DILocation(line: 25, column: 4, scope: !138)
!145 = !DILocation(line: 27, column: 13, scope: !6)
!146 = !{!147, !148, i64 4}
!147 = !{!"_DenseMtx", !148, i64 0, !148, i64 4, !148, i64 8, !148, i64 12, !148, i64 16, !148, i64 20, !148, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !149, i64 56, !140, i64 80}
!148 = !{!"int", !141, i64 0}
!149 = !{!"_DV", !148, i64 0, !148, i64 4, !148, i64 8, !140, i64 16}
!150 = !DILocation(line: 27, column: 1, scope: !6)
!151 = !DILocation(line: 39, column: 16, scope: !40)
!152 = !DILocation(line: 46, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !40, file: !1, line: 46, column: 6)
!154 = !DILocation(line: 46, column: 6, scope: !40)
!155 = !DILocation(line: 47, column: 12, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 46, column: 20)
!157 = !DILocation(line: 47, column: 4, scope: !156)
!158 = !DILocation(line: 49, column: 4, scope: !156)
!159 = !DILocation(line: 51, column: 13, scope: !40)
!160 = !{!147, !148, i64 8}
!161 = !DILocation(line: 51, column: 1, scope: !40)
!162 = !DILocation(line: 63, column: 16, scope: !43)
!163 = !DILocation(line: 64, column: 17, scope: !43)
!164 = !DILocation(line: 65, column: 17, scope: !43)
!165 = !DILocation(line: 72, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !43, file: !1, line: 72, column: 6)
!167 = !DILocation(line: 72, column: 27, scope: !166)
!168 = !DILocation(line: 72, column: 18, scope: !166)
!169 = !DILocation(line: 72, column: 44, scope: !166)
!170 = !DILocation(line: 73, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 72, column: 54)
!172 = !DILocation(line: 73, column: 4, scope: !171)
!173 = !DILocation(line: 75, column: 4, scope: !171)
!174 = !DILocation(line: 77, column: 15, scope: !43)
!175 = !{!147, !148, i64 12}
!176 = !DILocation(line: 77, column: 8, scope: !43)
!177 = !{!148, !148, i64 0}
!178 = !DILocation(line: 78, column: 15, scope: !43)
!179 = !{!147, !148, i64 16}
!180 = !DILocation(line: 78, column: 8, scope: !43)
!181 = !DILocation(line: 80, column: 1, scope: !43)
!182 = !DILocation(line: 92, column: 16, scope: !50)
!183 = !DILocation(line: 99, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !50, file: !1, line: 99, column: 6)
!185 = !DILocation(line: 99, column: 6, scope: !50)
!186 = !DILocation(line: 100, column: 12, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 99, column: 20)
!188 = !DILocation(line: 100, column: 4, scope: !187)
!189 = !DILocation(line: 102, column: 4, scope: !187)
!190 = !DILocation(line: 104, column: 13, scope: !50)
!191 = !{!147, !148, i64 20}
!192 = !DILocation(line: 104, column: 1, scope: !50)
!193 = !DILocation(line: 116, column: 16, scope: !53)
!194 = !DILocation(line: 123, column: 10, scope: !195)
!195 = distinct !DILexicalBlock(scope: !53, file: !1, line: 123, column: 6)
!196 = !DILocation(line: 123, column: 6, scope: !53)
!197 = !DILocation(line: 124, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 123, column: 20)
!199 = !DILocation(line: 124, column: 4, scope: !198)
!200 = !DILocation(line: 126, column: 4, scope: !198)
!201 = !DILocation(line: 128, column: 13, scope: !53)
!202 = !{!147, !148, i64 24}
!203 = !DILocation(line: 128, column: 1, scope: !53)
!204 = !DILocation(line: 140, column: 16, scope: !56)
!205 = !DILocation(line: 141, column: 17, scope: !56)
!206 = !DILocation(line: 142, column: 18, scope: !56)
!207 = !DILocation(line: 149, column: 10, scope: !208)
!208 = distinct !DILexicalBlock(scope: !56, file: !1, line: 149, column: 6)
!209 = !DILocation(line: 149, column: 27, scope: !208)
!210 = !DILocation(line: 149, column: 18, scope: !208)
!211 = !DILocation(line: 149, column: 46, scope: !208)
!212 = !DILocation(line: 150, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !1, line: 149, column: 56)
!214 = !DILocation(line: 150, column: 4, scope: !213)
!215 = !DILocation(line: 152, column: 4, scope: !213)
!216 = !DILocation(line: 154, column: 17, scope: !56)
!217 = !DILocation(line: 154, column: 10, scope: !56)
!218 = !DILocation(line: 155, column: 17, scope: !56)
!219 = !{!147, !140, i64 32}
!220 = !DILocation(line: 155, column: 10, scope: !56)
!221 = !DILocation(line: 157, column: 1, scope: !56)
!222 = !DILocation(line: 169, column: 16, scope: !64)
!223 = !DILocation(line: 170, column: 17, scope: !64)
!224 = !DILocation(line: 171, column: 18, scope: !64)
!225 = !DILocation(line: 178, column: 10, scope: !226)
!226 = distinct !DILexicalBlock(scope: !64, file: !1, line: 178, column: 6)
!227 = !DILocation(line: 178, column: 27, scope: !226)
!228 = !DILocation(line: 178, column: 18, scope: !226)
!229 = !DILocation(line: 178, column: 46, scope: !226)
!230 = !DILocation(line: 179, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 178, column: 56)
!232 = !DILocation(line: 179, column: 4, scope: !231)
!233 = !DILocation(line: 181, column: 4, scope: !231)
!234 = !DILocation(line: 183, column: 17, scope: !64)
!235 = !DILocation(line: 183, column: 10, scope: !64)
!236 = !DILocation(line: 184, column: 17, scope: !64)
!237 = !{!147, !140, i64 40}
!238 = !DILocation(line: 184, column: 10, scope: !64)
!239 = !DILocation(line: 186, column: 1, scope: !64)
!240 = !DILocation(line: 198, column: 16, scope: !69)
!241 = !DILocation(line: 205, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !69, file: !1, line: 205, column: 7)
!243 = !DILocation(line: 205, column: 7, scope: !69)
!244 = !DILocation(line: 206, column: 12, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !1, line: 205, column: 21)
!246 = !DILocation(line: 206, column: 4, scope: !245)
!247 = !DILocation(line: 208, column: 4, scope: !245)
!248 = !DILocation(line: 210, column: 13, scope: !69)
!249 = !{!147, !140, i64 48}
!250 = !DILocation(line: 210, column: 1, scope: !69)
!251 = !DILocation(line: 222, column: 16, scope: !74)
!252 = !DILocation(line: 229, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !74, file: !1, line: 229, column: 7)
!254 = !DILocation(line: 229, column: 7, scope: !74)
!255 = !DILocation(line: 230, column: 12, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 229, column: 21)
!257 = !DILocation(line: 230, column: 4, scope: !256)
!258 = !DILocation(line: 232, column: 4, scope: !256)
!259 = !DILocation(line: 234, column: 25, scope: !74)
!260 = !DILocation(line: 234, column: 8, scope: !74)
!261 = !DILocation(line: 234, column: 7, scope: !74)
!262 = !DILocation(line: 234, column: 1, scope: !74)
!263 = !DILocation(line: 246, column: 16, scope: !79)
!264 = !DILocation(line: 247, column: 15, scope: !79)
!265 = !DILocation(line: 248, column: 15, scope: !79)
!266 = !DILocation(line: 249, column: 16, scope: !79)
!267 = !DILocation(line: 256, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !79, file: !1, line: 256, column: 6)
!269 = !DILocation(line: 256, column: 28, scope: !268)
!270 = !DILocation(line: 256, column: 18, scope: !268)
!271 = !DILocation(line: 257, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 256, column: 38)
!273 = !DILocation(line: 257, column: 4, scope: !272)
!274 = !DILocation(line: 259, column: 4, scope: !272)
!275 = !DILocation(line: 261, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !79, file: !1, line: 261, column: 6)
!277 = !{!147, !148, i64 0}
!278 = !DILocation(line: 261, column: 16, scope: !276)
!279 = !DILocation(line: 261, column: 6, scope: !79)
!280 = !DILocation(line: 262, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 261, column: 34)
!282 = !DILocation(line: 262, column: 4, scope: !281)
!283 = !DILocation(line: 264, column: 4, scope: !281)
!284 = !DILocation(line: 266, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !79, file: !1, line: 266, column: 6)
!286 = !DILocation(line: 268, column: 63, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !1, line: 266, column: 38)
!288 = !DILocation(line: 266, column: 23, scope: !285)
!289 = !DILocation(line: 266, column: 15, scope: !285)
!290 = !DILocation(line: 267, column: 12, scope: !287)
!291 = !DILocation(line: 267, column: 4, scope: !287)
!292 = !DILocation(line: 269, column: 4, scope: !287)
!293 = !DILocation(line: 271, column: 11, scope: !294)
!294 = distinct !DILexicalBlock(scope: !79, file: !1, line: 271, column: 6)
!295 = !DILocation(line: 273, column: 63, scope: !296)
!296 = distinct !DILexicalBlock(scope: !294, file: !1, line: 271, column: 38)
!297 = !DILocation(line: 271, column: 23, scope: !294)
!298 = !DILocation(line: 271, column: 15, scope: !294)
!299 = !DILocation(line: 272, column: 12, scope: !296)
!300 = !DILocation(line: 272, column: 4, scope: !296)
!301 = !DILocation(line: 274, column: 4, scope: !296)
!302 = !DILocation(line: 276, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !79, file: !1, line: 276, column: 6)
!304 = !DILocation(line: 276, column: 19, scope: !303)
!305 = !DILocation(line: 276, column: 6, scope: !79)
!306 = !DILocation(line: 277, column: 12, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 276, column: 29)
!308 = !DILocation(line: 277, column: 4, scope: !307)
!309 = !DILocation(line: 279, column: 4, scope: !307)
!310 = !DILocation(line: 281, column: 34, scope: !79)
!311 = !DILocation(line: 281, column: 28, scope: !79)
!312 = !DILocation(line: 281, column: 51, scope: !79)
!313 = !DILocation(line: 281, column: 45, scope: !79)
!314 = !DILocation(line: 281, column: 39, scope: !79)
!315 = !DILocation(line: 281, column: 11, scope: !79)
!316 = !{!317, !317, i64 0}
!317 = !{!"double", !141, i64 0}
!318 = !DILocation(line: 281, column: 9, scope: !79)
!319 = !DILocation(line: 283, column: 1, scope: !79)
!320 = !DILocation(line: 295, column: 16, scope: !87)
!321 = !DILocation(line: 296, column: 15, scope: !87)
!322 = !DILocation(line: 297, column: 15, scope: !87)
!323 = !DILocation(line: 298, column: 16, scope: !87)
!324 = !DILocation(line: 299, column: 16, scope: !87)
!325 = !DILocation(line: 307, column: 10, scope: !326)
!326 = distinct !DILexicalBlock(scope: !87, file: !1, line: 307, column: 6)
!327 = !DILocation(line: 307, column: 27, scope: !326)
!328 = !DILocation(line: 307, column: 18, scope: !326)
!329 = !DILocation(line: 307, column: 44, scope: !326)
!330 = !DILocation(line: 308, column: 12, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !1, line: 307, column: 54)
!332 = !DILocation(line: 308, column: 4, scope: !331)
!333 = !DILocation(line: 310, column: 4, scope: !331)
!334 = !DILocation(line: 312, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !87, file: !1, line: 312, column: 6)
!336 = !DILocation(line: 312, column: 16, scope: !335)
!337 = !DILocation(line: 312, column: 6, scope: !87)
!338 = !DILocation(line: 313, column: 12, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 312, column: 37)
!340 = !DILocation(line: 313, column: 4, scope: !339)
!341 = !DILocation(line: 315, column: 4, scope: !339)
!342 = !DILocation(line: 317, column: 11, scope: !343)
!343 = distinct !DILexicalBlock(scope: !87, file: !1, line: 317, column: 6)
!344 = !DILocation(line: 319, column: 63, scope: !345)
!345 = distinct !DILexicalBlock(scope: !343, file: !1, line: 317, column: 38)
!346 = !DILocation(line: 317, column: 23, scope: !343)
!347 = !DILocation(line: 317, column: 15, scope: !343)
!348 = !DILocation(line: 318, column: 12, scope: !345)
!349 = !DILocation(line: 318, column: 4, scope: !345)
!350 = !DILocation(line: 320, column: 4, scope: !345)
!351 = !DILocation(line: 322, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !87, file: !1, line: 322, column: 6)
!353 = !DILocation(line: 324, column: 63, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !1, line: 322, column: 38)
!355 = !DILocation(line: 322, column: 23, scope: !352)
!356 = !DILocation(line: 322, column: 15, scope: !352)
!357 = !DILocation(line: 323, column: 12, scope: !354)
!358 = !DILocation(line: 323, column: 4, scope: !354)
!359 = !DILocation(line: 325, column: 4, scope: !354)
!360 = !DILocation(line: 327, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !87, file: !1, line: 327, column: 6)
!362 = !DILocation(line: 327, column: 19, scope: !361)
!363 = !DILocation(line: 327, column: 6, scope: !87)
!364 = !DILocation(line: 328, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !1, line: 327, column: 29)
!366 = !DILocation(line: 328, column: 4, scope: !365)
!367 = !DILocation(line: 330, column: 4, scope: !365)
!368 = !DILocation(line: 332, column: 20, scope: !87)
!369 = !DILocation(line: 332, column: 14, scope: !87)
!370 = !DILocation(line: 332, column: 37, scope: !87)
!371 = !DILocation(line: 332, column: 31, scope: !87)
!372 = !DILocation(line: 332, column: 25, scope: !87)
!373 = !DILocation(line: 332, column: 8, scope: !87)
!374 = !DILocation(line: 301, column: 7, scope: !87)
!375 = !DILocation(line: 333, column: 10, scope: !87)
!376 = !DILocation(line: 333, column: 8, scope: !87)
!377 = !DILocation(line: 334, column: 26, scope: !87)
!378 = !DILocation(line: 334, column: 10, scope: !87)
!379 = !DILocation(line: 334, column: 8, scope: !87)
!380 = !DILocation(line: 336, column: 1, scope: !87)
!381 = !DILocation(line: 348, column: 16, scope: !97)
!382 = !DILocation(line: 349, column: 15, scope: !97)
!383 = !DILocation(line: 350, column: 15, scope: !97)
!384 = !DILocation(line: 351, column: 15, scope: !97)
!385 = !DILocation(line: 358, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !97, file: !1, line: 358, column: 6)
!387 = !DILocation(line: 358, column: 6, scope: !97)
!388 = !DILocation(line: 359, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !1, line: 358, column: 20)
!390 = !DILocation(line: 359, column: 4, scope: !389)
!391 = !DILocation(line: 361, column: 4, scope: !389)
!392 = !DILocation(line: 363, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !97, file: !1, line: 363, column: 6)
!394 = !DILocation(line: 363, column: 16, scope: !393)
!395 = !DILocation(line: 363, column: 6, scope: !97)
!396 = !DILocation(line: 364, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 363, column: 34)
!398 = !DILocation(line: 364, column: 4, scope: !397)
!399 = !DILocation(line: 366, column: 4, scope: !397)
!400 = !DILocation(line: 368, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !97, file: !1, line: 368, column: 6)
!402 = !DILocation(line: 370, column: 63, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !1, line: 368, column: 38)
!404 = !DILocation(line: 368, column: 23, scope: !401)
!405 = !DILocation(line: 368, column: 15, scope: !401)
!406 = !DILocation(line: 369, column: 12, scope: !403)
!407 = !DILocation(line: 369, column: 4, scope: !403)
!408 = !DILocation(line: 371, column: 4, scope: !403)
!409 = !DILocation(line: 373, column: 11, scope: !410)
!410 = distinct !DILexicalBlock(scope: !97, file: !1, line: 373, column: 6)
!411 = !DILocation(line: 375, column: 63, scope: !412)
!412 = distinct !DILexicalBlock(scope: !410, file: !1, line: 373, column: 38)
!413 = !DILocation(line: 373, column: 23, scope: !410)
!414 = !DILocation(line: 373, column: 15, scope: !410)
!415 = !DILocation(line: 374, column: 12, scope: !412)
!416 = !DILocation(line: 374, column: 4, scope: !412)
!417 = !DILocation(line: 376, column: 4, scope: !412)
!418 = !DILocation(line: 378, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !97, file: !1, line: 378, column: 6)
!420 = !DILocation(line: 378, column: 19, scope: !419)
!421 = !DILocation(line: 378, column: 6, scope: !97)
!422 = !DILocation(line: 379, column: 12, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 378, column: 29)
!424 = !DILocation(line: 379, column: 4, scope: !423)
!425 = !DILocation(line: 381, column: 4, scope: !423)
!426 = !DILocation(line: 383, column: 24, scope: !97)
!427 = !DILocation(line: 383, column: 18, scope: !97)
!428 = !DILocation(line: 383, column: 41, scope: !97)
!429 = !DILocation(line: 383, column: 35, scope: !97)
!430 = !DILocation(line: 383, column: 29, scope: !97)
!431 = !DILocation(line: 383, column: 1, scope: !97)
!432 = !DILocation(line: 383, column: 47, scope: !97)
!433 = !DILocation(line: 385, column: 1, scope: !97)
!434 = !DILocation(line: 397, column: 16, scope: !105)
!435 = !DILocation(line: 398, column: 15, scope: !105)
!436 = !DILocation(line: 399, column: 15, scope: !105)
!437 = !DILocation(line: 400, column: 15, scope: !105)
!438 = !DILocation(line: 401, column: 15, scope: !105)
!439 = !DILocation(line: 409, column: 10, scope: !440)
!440 = distinct !DILexicalBlock(scope: !105, file: !1, line: 409, column: 6)
!441 = !DILocation(line: 409, column: 6, scope: !105)
!442 = !DILocation(line: 410, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 409, column: 20)
!444 = !DILocation(line: 410, column: 4, scope: !443)
!445 = !DILocation(line: 412, column: 4, scope: !443)
!446 = !DILocation(line: 414, column: 11, scope: !447)
!447 = distinct !DILexicalBlock(scope: !105, file: !1, line: 414, column: 6)
!448 = !DILocation(line: 414, column: 16, scope: !447)
!449 = !DILocation(line: 414, column: 6, scope: !105)
!450 = !DILocation(line: 415, column: 12, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !1, line: 414, column: 37)
!452 = !DILocation(line: 415, column: 4, scope: !451)
!453 = !DILocation(line: 417, column: 4, scope: !451)
!454 = !DILocation(line: 419, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !105, file: !1, line: 419, column: 6)
!456 = !DILocation(line: 421, column: 63, scope: !457)
!457 = distinct !DILexicalBlock(scope: !455, file: !1, line: 419, column: 38)
!458 = !DILocation(line: 419, column: 23, scope: !455)
!459 = !DILocation(line: 419, column: 15, scope: !455)
!460 = !DILocation(line: 420, column: 12, scope: !457)
!461 = !DILocation(line: 420, column: 4, scope: !457)
!462 = !DILocation(line: 422, column: 4, scope: !457)
!463 = !DILocation(line: 424, column: 11, scope: !464)
!464 = distinct !DILexicalBlock(scope: !105, file: !1, line: 424, column: 6)
!465 = !DILocation(line: 426, column: 63, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !1, line: 424, column: 38)
!467 = !DILocation(line: 424, column: 23, scope: !464)
!468 = !DILocation(line: 424, column: 15, scope: !464)
!469 = !DILocation(line: 425, column: 12, scope: !466)
!470 = !DILocation(line: 425, column: 4, scope: !466)
!471 = !DILocation(line: 427, column: 4, scope: !466)
!472 = !DILocation(line: 429, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !105, file: !1, line: 429, column: 6)
!474 = !DILocation(line: 429, column: 19, scope: !473)
!475 = !DILocation(line: 429, column: 6, scope: !105)
!476 = !DILocation(line: 430, column: 12, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !1, line: 429, column: 29)
!478 = !DILocation(line: 430, column: 4, scope: !477)
!479 = !DILocation(line: 432, column: 4, scope: !477)
!480 = !DILocation(line: 434, column: 20, scope: !105)
!481 = !DILocation(line: 434, column: 14, scope: !105)
!482 = !DILocation(line: 434, column: 37, scope: !105)
!483 = !DILocation(line: 434, column: 31, scope: !105)
!484 = !DILocation(line: 434, column: 25, scope: !105)
!485 = !DILocation(line: 434, column: 8, scope: !105)
!486 = !DILocation(line: 403, column: 7, scope: !105)
!487 = !DILocation(line: 435, column: 1, scope: !105)
!488 = !DILocation(line: 435, column: 21, scope: !105)
!489 = !DILocation(line: 436, column: 17, scope: !105)
!490 = !DILocation(line: 436, column: 1, scope: !105)
!491 = !DILocation(line: 436, column: 21, scope: !105)
!492 = !DILocation(line: 438, column: 1, scope: !105)
!493 = !DILocation(line: 457, column: 16, scope: !115)
!494 = !DILocation(line: 458, column: 15, scope: !115)
!495 = !DILocation(line: 459, column: 17, scope: !115)
!496 = !DILocation(line: 466, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !115, file: !1, line: 466, column: 6)
!498 = !DILocation(line: 466, column: 6, scope: !115)
!499 = !DILocation(line: 467, column: 12, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !1, line: 466, column: 20)
!501 = !DILocation(line: 467, column: 4, scope: !500)
!502 = !DILocation(line: 469, column: 4, scope: !500)
!503 = !DILocation(line: 471, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !115, file: !1, line: 471, column: 6)
!505 = !DILocation(line: 471, column: 32, scope: !504)
!506 = !DILocation(line: 472, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !504, file: !1, line: 471, column: 66)
!508 = !DILocation(line: 472, column: 4, scope: !507)
!509 = !DILocation(line: 474, column: 4, scope: !507)
!510 = !DILocation(line: 476, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !115, file: !1, line: 476, column: 6)
!512 = !DILocation(line: 478, column: 44, scope: !513)
!513 = distinct !DILexicalBlock(scope: !511, file: !1, line: 476, column: 38)
!514 = !DILocation(line: 476, column: 23, scope: !511)
!515 = !DILocation(line: 476, column: 15, scope: !511)
!516 = !DILocation(line: 477, column: 12, scope: !513)
!517 = !DILocation(line: 477, column: 4, scope: !513)
!518 = !DILocation(line: 479, column: 4, scope: !513)
!519 = !DILocation(line: 481, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !115, file: !1, line: 481, column: 6)
!521 = !DILocation(line: 481, column: 6, scope: !115)
!522 = !DILocation(line: 482, column: 12, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !1, line: 481, column: 24)
!524 = !DILocation(line: 482, column: 4, scope: !523)
!525 = !DILocation(line: 484, column: 4, scope: !523)
!526 = !DILocation(line: 486, column: 16, scope: !527)
!527 = distinct !DILexicalBlock(scope: !115, file: !1, line: 486, column: 6)
!528 = !DILocation(line: 487, column: 20, scope: !529)
!529 = distinct !DILexicalBlock(scope: !527, file: !1, line: 486, column: 34)
!530 = !DILocation(line: 486, column: 6, scope: !115)
!531 = !DILocation(line: 487, column: 34, scope: !529)
!532 = !DILocation(line: 488, column: 1, scope: !529)
!533 = !DILocation(line: 489, column: 31, scope: !534)
!534 = distinct !DILexicalBlock(scope: !527, file: !1, line: 488, column: 8)
!535 = !DILocation(line: 489, column: 36, scope: !534)
!536 = !DILocation(line: 489, column: 28, scope: !534)
!537 = !DILocation(line: 487, column: 13, scope: !529)
!538 = !DILocation(line: 491, column: 1, scope: !115)
!539 = !DILocation(line: 491, column: 13, scope: !115)
!540 = !DILocation(line: 510, column: 16, scope: !123)
!541 = !DILocation(line: 511, column: 15, scope: !123)
!542 = !DILocation(line: 512, column: 17, scope: !123)
!543 = !DILocation(line: 519, column: 10, scope: !544)
!544 = distinct !DILexicalBlock(scope: !123, file: !1, line: 519, column: 6)
!545 = !DILocation(line: 519, column: 6, scope: !123)
!546 = !DILocation(line: 520, column: 12, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !1, line: 519, column: 20)
!548 = !DILocation(line: 520, column: 4, scope: !547)
!549 = !DILocation(line: 522, column: 4, scope: !547)
!550 = !DILocation(line: 524, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !123, file: !1, line: 524, column: 6)
!552 = !DILocation(line: 524, column: 32, scope: !551)
!553 = !DILocation(line: 525, column: 12, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !1, line: 524, column: 66)
!555 = !DILocation(line: 525, column: 4, scope: !554)
!556 = !DILocation(line: 527, column: 4, scope: !554)
!557 = !DILocation(line: 529, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !123, file: !1, line: 529, column: 6)
!559 = !DILocation(line: 531, column: 47, scope: !560)
!560 = distinct !DILexicalBlock(scope: !558, file: !1, line: 529, column: 38)
!561 = !DILocation(line: 529, column: 23, scope: !558)
!562 = !DILocation(line: 529, column: 15, scope: !558)
!563 = !DILocation(line: 530, column: 12, scope: !560)
!564 = !DILocation(line: 530, column: 4, scope: !560)
!565 = !DILocation(line: 532, column: 4, scope: !560)
!566 = !DILocation(line: 534, column: 14, scope: !567)
!567 = distinct !DILexicalBlock(scope: !123, file: !1, line: 534, column: 6)
!568 = !DILocation(line: 534, column: 6, scope: !123)
!569 = !DILocation(line: 535, column: 12, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !1, line: 534, column: 24)
!571 = !DILocation(line: 535, column: 4, scope: !570)
!572 = !DILocation(line: 537, column: 4, scope: !570)
!573 = !DILocation(line: 539, column: 16, scope: !574)
!574 = distinct !DILexicalBlock(scope: !123, file: !1, line: 539, column: 6)
!575 = !DILocation(line: 540, column: 20, scope: !576)
!576 = distinct !DILexicalBlock(scope: !574, file: !1, line: 539, column: 34)
!577 = !DILocation(line: 539, column: 6, scope: !123)
!578 = !DILocation(line: 540, column: 34, scope: !576)
!579 = !DILocation(line: 541, column: 1, scope: !576)
!580 = !DILocation(line: 542, column: 31, scope: !581)
!581 = distinct !DILexicalBlock(scope: !574, file: !1, line: 541, column: 8)
!582 = !DILocation(line: 542, column: 36, scope: !581)
!583 = !DILocation(line: 542, column: 28, scope: !581)
!584 = !DILocation(line: 540, column: 13, scope: !576)
!585 = !DILocation(line: 544, column: 1, scope: !123)
!586 = !DILocation(line: 544, column: 13, scope: !123)
