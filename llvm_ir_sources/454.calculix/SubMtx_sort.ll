; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [94 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad type = %d\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtx_sortColumnsUp(%p)\0A bad type = %d\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_sortRowsUp(%struct._SubMtx* %mtx) #0 {
  %a2 = alloca %struct._A2, align 8
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %rowind = alloca i32*, align 8
  %entries1 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow2 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %rowind3 = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !36, metadata !103), !dbg !104
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !105
  br i1 %1, label %2, label %5, !dbg !107

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !108, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !115
  unreachable, !dbg !115

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !116
  %7 = load i32* %6, align 4, !dbg !116, !tbaa !118
  %.off = add i32 %7, -1, !dbg !122
  %switch = icmp ult i32 %.off, 2, !dbg !122
  br i1 %switch, label %11, label %8, !dbg !122

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !123, !tbaa !110
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([94 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %7) #5, !dbg !125
  tail call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !127
  %13 = load i32* %12, align 4, !dbg !127, !tbaa !128
  switch i32 %13, label %128 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %24
  ], !dbg !129

; <label>:14                                      ; preds = %11, %11
  tail call void @llvm.dbg.value(metadata double** %entries, i64 0, metadata !51, metadata !103), !dbg !130
  tail call void @llvm.dbg.value(metadata i32* %inc1, i64 0, metadata !52, metadata !103), !dbg !131
  tail call void @llvm.dbg.value(metadata i32* %inc2, i64 0, metadata !53, metadata !103), !dbg !132
  tail call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !54, metadata !103), !dbg !133
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !55, metadata !103), !dbg !134
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !135
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !37, metadata !103), !dbg !136
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !137
  %15 = load i32* %6, align 4, !dbg !138, !tbaa !118
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !55, metadata !103), !dbg !134
  %16 = load i32* %nrow, align 4, !dbg !139, !tbaa !140
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !54, metadata !103), !dbg !133
  %17 = load i32* %ncol, align 4, !dbg !141, !tbaa !140
  call void @llvm.dbg.value(metadata i32* %inc1, i64 0, metadata !52, metadata !103), !dbg !131
  %18 = load i32* %inc1, align 4, !dbg !142, !tbaa !140
  call void @llvm.dbg.value(metadata i32* %inc2, i64 0, metadata !53, metadata !103), !dbg !132
  %19 = load i32* %inc2, align 4, !dbg !143, !tbaa !140
  call void @llvm.dbg.value(metadata double** %entries, i64 0, metadata !51, metadata !103), !dbg !130
  %20 = load double** %entries, align 8, !dbg !144, !tbaa !110
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !37, metadata !103), !dbg !136
  call void @A2_init(%struct._A2* %a2, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, double* %20) #5, !dbg !145
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !55, metadata !103), !dbg !134
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !56, metadata !103), !dbg !146
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5, !dbg !147
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !55, metadata !103), !dbg !134
  %21 = load i32* %nrow, align 4, !dbg !148, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !56, metadata !103), !dbg !146
  %22 = load i32** %rowind, align 8, !dbg !149, !tbaa !110
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !37, metadata !103), !dbg !136
  %23 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %21, i32* %22) #5, !dbg !150
  br label %131, !dbg !151

; <label>:24                                      ; preds = %11
  tail call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  tail call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !64, metadata !103), !dbg !153
  tail call void @llvm.dbg.value(metadata i32* %nrow2, i64 0, metadata !65, metadata !103), !dbg !154
  tail call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  tail call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !72, metadata !103), !dbg !156
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow2, i32* %nent, i32** %sizes, i32** %indices, double** %entries1) #5, !dbg !157
  call void @llvm.dbg.value(metadata i32* %nrow2, i64 0, metadata !65, metadata !103), !dbg !154
  call void @llvm.dbg.value(metadata i32** %rowind3, i64 0, metadata !71, metadata !103), !dbg !158
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow2, i32** %rowind3) #5, !dbg !159
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !64, metadata !103), !dbg !153
  %25 = load i32* %nent, align 4, !dbg !160, !tbaa !140
  %26 = call i32* @IVinit(i32 %25, i32 -1) #5, !dbg !161
  call void @llvm.dbg.value(metadata i32* %26, i64 0, metadata !70, metadata !103), !dbg !162
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !103), !dbg !163
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !103), !dbg !164
  call void @llvm.dbg.value(metadata i32* %nrow2, i64 0, metadata !65, metadata !103), !dbg !154
  %27 = load i32* %nrow2, align 4, !dbg !165, !tbaa !140
  %28 = icmp sgt i32 %27, 0, !dbg !168
  br i1 %28, label %.lr.ph22, label %._crit_edge36, !dbg !169

._crit_edge36:                                    ; preds = %24
  %.pre37 = load i32** %sizes, align 8, !dbg !170, !tbaa !110
  br label %._crit_edge23, !dbg !169

.lr.ph22:                                         ; preds = %24
  %29 = load i32** %rowind3, align 8, !dbg !171, !tbaa !110
  %30 = load i32** %sizes, align 8, !dbg !173, !tbaa !110
  br label %31, !dbg !169

; <label>:31                                      ; preds = %.lr.ph22, %44
  %32 = phi i32 [ %27, %.lr.ph22 ], [ %45, %44 ]
  %indvars.iv34 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next35, %44 ]
  %kk.020 = phi i32 [ 0, %.lr.ph22 ], [ %kk.1.lcssa, %44 ]
  call void @llvm.dbg.value(metadata i32** %rowind3, i64 0, metadata !71, metadata !103), !dbg !158
  %33 = getelementptr inbounds i32* %29, i64 %indvars.iv34, !dbg !171
  %34 = load i32* %33, align 4, !dbg !171, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !67, metadata !103), !dbg !174
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !72, metadata !103), !dbg !156
  %35 = getelementptr inbounds i32* %30, i64 %indvars.iv34, !dbg !173
  %36 = load i32* %35, align 4, !dbg !173, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !68, metadata !103), !dbg !175
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !103), !dbg !176
  %37 = icmp sgt i32 %36, 0, !dbg !177
  br i1 %37, label %.lr.ph17, label %44, !dbg !180

.lr.ph17:                                         ; preds = %31
  %38 = sext i32 %kk.020 to i64
  %39 = add i32 %36, -1, !dbg !180
  br label %40, !dbg !180

; <label>:40                                      ; preds = %40, %.lr.ph17
  %indvars.iv32 = phi i64 [ %38, %.lr.ph17 ], [ %indvars.iv.next33, %40 ]
  %ii.016 = phi i32 [ 0, %.lr.ph17 ], [ %42, %40 ]
  %41 = getelementptr inbounds i32* %26, i64 %indvars.iv32, !dbg !181
  store i32 %34, i32* %41, align 4, !dbg !183, !tbaa !140
  %42 = add nuw nsw i32 %ii.016, 1, !dbg !184
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !60, metadata !103), !dbg !176
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1, !dbg !180
  %exitcond = icmp eq i32 %ii.016, %39, !dbg !180
  br i1 %exitcond, label %._crit_edge, label %40, !dbg !180

._crit_edge:                                      ; preds = %40
  %43 = add i32 %kk.020, %36, !dbg !180
  %.pre = load i32* %nrow2, align 4, !dbg !165, !tbaa !140
  br label %44, !dbg !180

; <label>:44                                      ; preds = %._crit_edge, %31
  %45 = phi i32 [ %.pre, %._crit_edge ], [ %32, %31 ], !dbg !169
  %kk.1.lcssa = phi i32 [ %43, %._crit_edge ], [ %kk.020, %31 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !169
  call void @llvm.dbg.value(metadata i32* %nrow2, i64 0, metadata !65, metadata !103), !dbg !154
  %46 = sext i32 %45 to i64, !dbg !168
  %47 = icmp slt i64 %indvars.iv.next35, %46, !dbg !168
  br i1 %47, label %31, label %._crit_edge23, !dbg !169

._crit_edge23:                                    ; preds = %44, %._crit_edge36
  %48 = phi i32* [ %.pre37, %._crit_edge36 ], [ %30, %44 ]
  %.lcssa6 = phi i32 [ %27, %._crit_edge36 ], [ %45, %44 ]
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !72, metadata !103), !dbg !156
  call void @IVzero(i32 %.lcssa6, i32* %48) #5, !dbg !185
  %49 = load i32* %6, align 4, !dbg !186, !tbaa !118
  switch i32 %49, label %58 [
    i32 1, label %50
    i32 2, label %54
  ], !dbg !188

; <label>:50                                      ; preds = %._crit_edge23
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !64, metadata !103), !dbg !153
  %51 = load i32* %nent, align 4, !dbg !189, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  %52 = load i32** %indices, align 8, !dbg !191, !tbaa !110
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  %53 = load double** %entries1, align 8, !dbg !192, !tbaa !110
  call void @IV2DVqsortUp(i32 %51, i32* %26, i32* %52, double* %53) #5, !dbg !193
  br label %58, !dbg !194

; <label>:54                                      ; preds = %._crit_edge23
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !64, metadata !103), !dbg !153
  %55 = load i32* %nent, align 4, !dbg !195, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  %56 = load i32** %indices, align 8, !dbg !198, !tbaa !110
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  %57 = load double** %entries1, align 8, !dbg !199, !tbaa !110
  call void @IV2ZVqsortUp(i32 %55, i32* %26, i32* %56, double* %57) #5, !dbg !200
  br label %58, !dbg !201

; <label>:58                                      ; preds = %._crit_edge23, %54, %50
  call void @llvm.dbg.value(metadata i32* %nrow2, i64 0, metadata !65, metadata !103), !dbg !154
  %59 = load i32* %nrow2, align 4, !dbg !202, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %rowind3, i64 0, metadata !71, metadata !103), !dbg !158
  %60 = load i32** %rowind3, align 8, !dbg !203, !tbaa !110
  call void @IVqsortUp(i32 %59, i32* %60) #5, !dbg !204
  %61 = load i32* %26, align 4, !dbg !205, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !67, metadata !103), !dbg !174
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !103), !dbg !206
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !103), !dbg !207
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !68, metadata !103), !dbg !175
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !63, metadata !103), !dbg !163
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !64, metadata !103), !dbg !153
  %62 = load i32* %nent, align 4, !dbg !208, !tbaa !140
  %63 = icmp sgt i32 %62, 1, !dbg !209
  br i1 %63, label %.lr.ph, label %.preheader, !dbg !210

.preheader:                                       ; preds = %101, %58
  %size.0.lcssa = phi i32 [ 1, %58 ], [ %size.1, %101 ]
  %rowid.0.lcssa = phi i32 [ %61, %58 ], [ %rowid.1, %101 ]
  %offset.0.lcssa = phi i32 [ 0, %58 ], [ %offset.1, %101 ]
  %jrow.0.lcssa = phi i32 [ 0, %58 ], [ %jrow.2, %101 ]
  %64 = load i32** %rowind3, align 8, !dbg !211, !tbaa !110
  %65 = sext i32 %jrow.0.lcssa to i64
  br label %105, !dbg !211

.lr.ph:                                           ; preds = %58, %101
  %66 = phi i32 [ %102, %101 ], [ %62, %58 ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %101 ], [ 1, %58 ]
  %size.011 = phi i32 [ %size.1, %101 ], [ 1, %58 ]
  %rowid.010 = phi i32 [ %rowid.1, %101 ], [ %61, %58 ]
  %offset.09 = phi i32 [ %offset.1, %101 ], [ 0, %58 ]
  %jrow.07 = phi i32 [ %jrow.2, %101 ], [ 0, %58 ]
  %67 = getelementptr inbounds i32* %26, i64 %indvars.iv30, !dbg !212
  %68 = load i32* %67, align 4, !dbg !212, !tbaa !140
  %69 = icmp eq i32 %68, %rowid.010, !dbg !215
  br i1 %69, label %72, label %.preheader4, !dbg !216

.preheader4:                                      ; preds = %.lr.ph
  %70 = load i32** %rowind3, align 8, !dbg !217, !tbaa !110
  %71 = sext i32 %jrow.07 to i64
  br label %74, !dbg !217

; <label>:72                                      ; preds = %.lr.ph
  %73 = add nsw i32 %size.011, 1, !dbg !219
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !68, metadata !103), !dbg !175
  br label %101, !dbg !221

; <label>:74                                      ; preds = %74, %.preheader4
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %74 ], [ %71, %.preheader4 ]
  call void @llvm.dbg.value(metadata i32** %rowind3, i64 0, metadata !71, metadata !103), !dbg !158
  %75 = getelementptr inbounds i32* %70, i64 %indvars.iv28, !dbg !217
  %76 = load i32* %75, align 4, !dbg !217, !tbaa !140
  %77 = icmp eq i32 %rowid.010, %76, !dbg !222
  %indvars.iv.next29 = add i64 %indvars.iv28, 1, !dbg !223
  br i1 %77, label %78, label %74, !dbg !223

; <label>:78                                      ; preds = %74
  %79 = trunc i64 %indvars.iv28 to i32, !dbg !156
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !72, metadata !103), !dbg !156
  %80 = load i32** %sizes, align 8, !dbg !224, !tbaa !110
  %81 = getelementptr inbounds i32* %80, i64 %indvars.iv28, !dbg !224
  store i32 %size.011, i32* %81, align 4, !dbg !225, !tbaa !140
  %82 = load i32* %6, align 4, !dbg !226, !tbaa !118
  switch i32 %82, label %97 [
    i32 1, label %83
    i32 2, label %89
  ], !dbg !228

; <label>:83                                      ; preds = %78
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  %84 = load i32** %indices, align 8, !dbg !229, !tbaa !110
  %85 = sext i32 %offset.09 to i64, !dbg !231
  %86 = getelementptr inbounds i32* %84, i64 %85, !dbg !231
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  %87 = load double** %entries1, align 8, !dbg !232, !tbaa !110
  %88 = getelementptr inbounds double* %87, i64 %85, !dbg !233
  call void @IVDVqsortUp(i32 %size.011, i32* %86, double* %88) #5, !dbg !234
  br label %97, !dbg !235

; <label>:89                                      ; preds = %78
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  %90 = load i32** %indices, align 8, !dbg !236, !tbaa !110
  %91 = sext i32 %offset.09 to i64, !dbg !239
  %92 = getelementptr inbounds i32* %90, i64 %91, !dbg !239
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  %93 = load double** %entries1, align 8, !dbg !240, !tbaa !110
  %94 = shl nsw i32 %offset.09, 1, !dbg !241
  %95 = sext i32 %94 to i64, !dbg !242
  %96 = getelementptr inbounds double* %93, i64 %95, !dbg !242
  call void @IVZVqsortUp(i32 %size.011, i32* %92, double* %96) #5, !dbg !243
  br label %97, !dbg !244

; <label>:97                                      ; preds = %78, %89, %83
  %98 = load i32* %67, align 4, !dbg !245, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !67, metadata !103), !dbg !174
  %99 = add nsw i32 %79, 1, !dbg !246
  call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !62, metadata !103), !dbg !207
  %100 = add nsw i32 %size.011, %offset.09, !dbg !247
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !66, metadata !103), !dbg !206
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !68, metadata !103), !dbg !175
  %.pre38 = load i32* %nent, align 4, !dbg !208, !tbaa !140
  br label %101

; <label>:101                                     ; preds = %97, %72
  %102 = phi i32 [ %66, %72 ], [ %.pre38, %97 ], !dbg !210
  %jrow.2 = phi i32 [ %jrow.07, %72 ], [ %99, %97 ]
  %offset.1 = phi i32 [ %offset.09, %72 ], [ %100, %97 ]
  %rowid.1 = phi i32 [ %rowid.010, %72 ], [ %98, %97 ]
  %size.1 = phi i32 [ %73, %72 ], [ 1, %97 ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !64, metadata !103), !dbg !153
  %103 = sext i32 %102 to i64, !dbg !209
  %104 = icmp slt i64 %indvars.iv.next31, %103, !dbg !209
  br i1 %104, label %.lr.ph, label %.preheader, !dbg !210

; <label>:105                                     ; preds = %105, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %105 ], [ %65, %.preheader ]
  call void @llvm.dbg.value(metadata i32** %rowind3, i64 0, metadata !71, metadata !103), !dbg !158
  %106 = getelementptr inbounds i32* %64, i64 %indvars.iv, !dbg !211
  %107 = load i32* %106, align 4, !dbg !211, !tbaa !140
  %108 = icmp eq i32 %rowid.0.lcssa, %107, !dbg !248
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !249
  br i1 %108, label %109, label %105, !dbg !249

; <label>:109                                     ; preds = %105
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !72, metadata !103), !dbg !156
  %110 = load i32** %sizes, align 8, !dbg !250, !tbaa !110
  %111 = getelementptr inbounds i32* %110, i64 %indvars.iv, !dbg !250
  store i32 %size.0.lcssa, i32* %111, align 4, !dbg !251, !tbaa !140
  %112 = load i32* %6, align 4, !dbg !252, !tbaa !118
  switch i32 %112, label %127 [
    i32 1, label %113
    i32 2, label %119
  ], !dbg !254

; <label>:113                                     ; preds = %109
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  %114 = load i32** %indices, align 8, !dbg !255, !tbaa !110
  %115 = sext i32 %offset.0.lcssa to i64, !dbg !257
  %116 = getelementptr inbounds i32* %114, i64 %115, !dbg !257
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  %117 = load double** %entries1, align 8, !dbg !258, !tbaa !110
  %118 = getelementptr inbounds double* %117, i64 %115, !dbg !259
  call void @IVDVqsortUp(i32 %size.0.lcssa, i32* %116, double* %118) #5, !dbg !260
  br label %127, !dbg !261

; <label>:119                                     ; preds = %109
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !69, metadata !103), !dbg !155
  %120 = load i32** %indices, align 8, !dbg !262, !tbaa !110
  %121 = sext i32 %offset.0.lcssa to i64, !dbg !265
  %122 = getelementptr inbounds i32* %120, i64 %121, !dbg !265
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !58, metadata !103), !dbg !152
  %123 = load double** %entries1, align 8, !dbg !266, !tbaa !110
  %124 = shl nsw i32 %offset.0.lcssa, 1, !dbg !267
  %125 = sext i32 %124 to i64, !dbg !268
  %126 = getelementptr inbounds double* %123, i64 %125, !dbg !268
  call void @IVZVqsortUp(i32 %size.0.lcssa, i32* %122, double* %126) #5, !dbg !269
  br label %127, !dbg !270

; <label>:127                                     ; preds = %109, %119, %113
  call void @IVfree(i32* %26) #5, !dbg !271
  br label %131, !dbg !272

; <label>:128                                     ; preds = %11
  %129 = load %struct.__sFILE** @__stderrp, align 8, !dbg !273, !tbaa !110
  %130 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %129, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %7) #5, !dbg !274
  tail call void @exit(i32 -1) #6, !dbg !275
  unreachable, !dbg !275

; <label>:131                                     ; preds = %127, %14
  ret void, !dbg !276
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVzero(i32, i32*) #3

; Function Attrs: optsize
declare void @IV2DVqsortUp(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @IV2ZVqsortUp(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVDVqsortUp(i32, i32*, double*) #3

; Function Attrs: optsize
declare void @IVZVqsortUp(i32, i32*, double*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_sortColumnsUp(%struct._SubMtx* %mtx) #0 {
  %a2 = alloca %struct._A2, align 8
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %entries1 = alloca double*, align 8
  %ncol2 = alloca i32, align 4
  %nent = alloca i32, align 4
  %colind3 = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !75, metadata !103), !dbg !277
  %1 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !278
  %2 = load i32* %1, align 4, !dbg !278, !tbaa !128
  switch i32 %2, label %119 [
    i32 0, label %3
    i32 1, label %3
    i32 3, label %14
  ], !dbg !279

; <label>:3                                       ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !76, metadata !103), !dbg !280
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !281
  call void @llvm.dbg.value(metadata double** %entries, i64 0, metadata !79, metadata !103), !dbg !282
  call void @llvm.dbg.value(metadata i32* %inc1, i64 0, metadata !80, metadata !103), !dbg !283
  call void @llvm.dbg.value(metadata i32* %inc2, i64 0, metadata !81, metadata !103), !dbg !284
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !82, metadata !103), !dbg !285
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !83, metadata !103), !dbg !286
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !287
  %4 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !288
  %5 = load i32* %4, align 4, !dbg !288, !tbaa !118
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !83, metadata !103), !dbg !286
  %6 = load i32* %nrow, align 4, !dbg !289, !tbaa !140
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !82, metadata !103), !dbg !285
  %7 = load i32* %ncol, align 4, !dbg !290, !tbaa !140
  call void @llvm.dbg.value(metadata i32* %inc1, i64 0, metadata !80, metadata !103), !dbg !283
  %8 = load i32* %inc1, align 4, !dbg !291, !tbaa !140
  call void @llvm.dbg.value(metadata i32* %inc2, i64 0, metadata !81, metadata !103), !dbg !284
  %9 = load i32* %inc2, align 4, !dbg !292, !tbaa !140
  call void @llvm.dbg.value(metadata double** %entries, i64 0, metadata !79, metadata !103), !dbg !282
  %10 = load double** %entries, align 8, !dbg !293, !tbaa !110
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !76, metadata !103), !dbg !280
  call void @A2_init(%struct._A2* %a2, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, double* %10) #5, !dbg !294
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !82, metadata !103), !dbg !285
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !84, metadata !103), !dbg !295
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5, !dbg !296
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !82, metadata !103), !dbg !285
  %11 = load i32* %ncol, align 4, !dbg !297, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !84, metadata !103), !dbg !295
  %12 = load i32** %colind, align 8, !dbg !298, !tbaa !110
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !76, metadata !103), !dbg !280
  %13 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %11, i32* %12) #5, !dbg !299
  br label %126, !dbg !300

; <label>:14                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  tail call void @llvm.dbg.value(metadata i32* %ncol2, i64 0, metadata !91, metadata !103), !dbg !302
  tail call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !92, metadata !103), !dbg !303
  tail call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  tail call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !98, metadata !103), !dbg !305
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol2, i32* %nent, i32** %sizes, i32** %indices, double** %entries1) #5, !dbg !306
  call void @llvm.dbg.value(metadata i32* %ncol2, i64 0, metadata !91, metadata !103), !dbg !302
  call void @llvm.dbg.value(metadata i32** %colind3, i64 0, metadata !95, metadata !103), !dbg !307
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol2, i32** %colind3) #5, !dbg !308
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !92, metadata !103), !dbg !303
  %15 = load i32* %nent, align 4, !dbg !309, !tbaa !140
  %16 = call i32* @IVinit(i32 %15, i32 -1) #5, !dbg !310
  call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !97, metadata !103), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !90, metadata !103), !dbg !312
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !89, metadata !103), !dbg !313
  call void @llvm.dbg.value(metadata i32* %ncol2, i64 0, metadata !91, metadata !103), !dbg !302
  %17 = load i32* %ncol2, align 4, !dbg !314, !tbaa !140
  %18 = icmp sgt i32 %17, 0, !dbg !317
  br i1 %18, label %.lr.ph22, label %._crit_edge36, !dbg !318

._crit_edge36:                                    ; preds = %14
  %.pre37 = load i32** %sizes, align 8, !dbg !319, !tbaa !110
  br label %._crit_edge23, !dbg !318

.lr.ph22:                                         ; preds = %14
  %19 = load i32** %colind3, align 8, !dbg !320, !tbaa !110
  %20 = load i32** %sizes, align 8, !dbg !322, !tbaa !110
  br label %21, !dbg !318

; <label>:21                                      ; preds = %.lr.ph22, %34
  %22 = phi i32 [ %17, %.lr.ph22 ], [ %35, %34 ]
  %indvars.iv34 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next35, %34 ]
  %kk.020 = phi i32 [ 0, %.lr.ph22 ], [ %kk.1.lcssa, %34 ]
  call void @llvm.dbg.value(metadata i32** %colind3, i64 0, metadata !95, metadata !103), !dbg !307
  %23 = getelementptr inbounds i32* %19, i64 %indvars.iv34, !dbg !320
  %24 = load i32* %23, align 4, !dbg !320, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !87, metadata !103), !dbg !323
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !98, metadata !103), !dbg !305
  %25 = getelementptr inbounds i32* %20, i64 %indvars.iv34, !dbg !322
  %26 = load i32* %25, align 4, !dbg !322, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !94, metadata !103), !dbg !324
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !103), !dbg !325
  %27 = icmp sgt i32 %26, 0, !dbg !326
  br i1 %27, label %.lr.ph17, label %34, !dbg !329

.lr.ph17:                                         ; preds = %21
  %28 = sext i32 %kk.020 to i64
  %29 = add i32 %26, -1, !dbg !329
  br label %30, !dbg !329

; <label>:30                                      ; preds = %30, %.lr.ph17
  %indvars.iv32 = phi i64 [ %28, %.lr.ph17 ], [ %indvars.iv.next33, %30 ]
  %ii.015 = phi i32 [ 0, %.lr.ph17 ], [ %32, %30 ]
  %31 = getelementptr inbounds i32* %16, i64 %indvars.iv32, !dbg !330
  store i32 %24, i32* %31, align 4, !dbg !332, !tbaa !140
  %32 = add nuw nsw i32 %ii.015, 1, !dbg !333
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !88, metadata !103), !dbg !325
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1, !dbg !329
  %exitcond = icmp eq i32 %ii.015, %29, !dbg !329
  br i1 %exitcond, label %._crit_edge, label %30, !dbg !329

._crit_edge:                                      ; preds = %30
  %33 = add i32 %kk.020, %26, !dbg !329
  %.pre = load i32* %ncol2, align 4, !dbg !314, !tbaa !140
  br label %34, !dbg !329

; <label>:34                                      ; preds = %._crit_edge, %21
  %35 = phi i32 [ %.pre, %._crit_edge ], [ %22, %21 ], !dbg !318
  %kk.1.lcssa = phi i32 [ %33, %._crit_edge ], [ %kk.020, %21 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !318
  call void @llvm.dbg.value(metadata i32* %ncol2, i64 0, metadata !91, metadata !103), !dbg !302
  %36 = sext i32 %35 to i64, !dbg !317
  %37 = icmp slt i64 %indvars.iv.next35, %36, !dbg !317
  br i1 %37, label %21, label %._crit_edge23, !dbg !318

._crit_edge23:                                    ; preds = %34, %._crit_edge36
  %38 = phi i32* [ %.pre37, %._crit_edge36 ], [ %20, %34 ]
  %.lcssa6 = phi i32 [ %17, %._crit_edge36 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !98, metadata !103), !dbg !305
  call void @IVzero(i32 %.lcssa6, i32* %38) #5, !dbg !334
  %39 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !335
  %40 = load i32* %39, align 4, !dbg !335, !tbaa !118
  switch i32 %40, label %49 [
    i32 1, label %41
    i32 2, label %45
  ], !dbg !337

; <label>:41                                      ; preds = %._crit_edge23
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !92, metadata !103), !dbg !303
  %42 = load i32* %nent, align 4, !dbg !338, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  %43 = load i32** %indices, align 8, !dbg !340, !tbaa !110
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  %44 = load double** %entries1, align 8, !dbg !341, !tbaa !110
  call void @IV2DVqsortUp(i32 %42, i32* %16, i32* %43, double* %44) #5, !dbg !342
  br label %49, !dbg !343

; <label>:45                                      ; preds = %._crit_edge23
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !92, metadata !103), !dbg !303
  %46 = load i32* %nent, align 4, !dbg !344, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  %47 = load i32** %indices, align 8, !dbg !347, !tbaa !110
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  %48 = load double** %entries1, align 8, !dbg !348, !tbaa !110
  call void @IV2ZVqsortUp(i32 %46, i32* %16, i32* %47, double* %48) #5, !dbg !349
  br label %49, !dbg !350

; <label>:49                                      ; preds = %._crit_edge23, %45, %41
  call void @llvm.dbg.value(metadata i32* %ncol2, i64 0, metadata !91, metadata !103), !dbg !302
  %50 = load i32* %ncol2, align 4, !dbg !351, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %colind3, i64 0, metadata !95, metadata !103), !dbg !307
  %51 = load i32** %colind3, align 8, !dbg !352, !tbaa !110
  call void @IVqsortUp(i32 %50, i32* %51) #5, !dbg !353
  %52 = load i32* %16, align 4, !dbg !354, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !87, metadata !103), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !103), !dbg !355
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !89, metadata !103), !dbg !313
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !94, metadata !103), !dbg !324
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !90, metadata !103), !dbg !312
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !92, metadata !103), !dbg !303
  %53 = load i32* %nent, align 4, !dbg !356, !tbaa !140
  %54 = icmp sgt i32 %53, 1, !dbg !357
  br i1 %54, label %.lr.ph, label %.preheader, !dbg !358

.preheader:                                       ; preds = %92, %49
  %colid.0.lcssa = phi i32 [ %52, %49 ], [ %colid.1, %92 ]
  %size.0.lcssa = phi i32 [ 1, %49 ], [ %size.1, %92 ]
  %offset.0.lcssa = phi i32 [ 0, %49 ], [ %offset.1, %92 ]
  %jcol.1.lcssa = phi i32 [ 0, %49 ], [ %jcol.3, %92 ]
  %55 = load i32** %colind3, align 8, !dbg !359, !tbaa !110
  %56 = sext i32 %jcol.1.lcssa to i64
  br label %96, !dbg !359

.lr.ph:                                           ; preds = %49, %92
  %57 = phi i32 [ %93, %92 ], [ %53, %49 ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %92 ], [ 1, %49 ]
  %colid.011 = phi i32 [ %colid.1, %92 ], [ %52, %49 ]
  %size.010 = phi i32 [ %size.1, %92 ], [ 1, %49 ]
  %offset.09 = phi i32 [ %offset.1, %92 ], [ 0, %49 ]
  %jcol.17 = phi i32 [ %jcol.3, %92 ], [ 0, %49 ]
  %58 = getelementptr inbounds i32* %16, i64 %indvars.iv30, !dbg !360
  %59 = load i32* %58, align 4, !dbg !360, !tbaa !140
  %60 = icmp eq i32 %59, %colid.011, !dbg !363
  br i1 %60, label %63, label %.preheader4, !dbg !364

.preheader4:                                      ; preds = %.lr.ph
  %61 = load i32** %colind3, align 8, !dbg !365, !tbaa !110
  %62 = sext i32 %jcol.17 to i64
  br label %65, !dbg !365

; <label>:63                                      ; preds = %.lr.ph
  %64 = add nsw i32 %size.010, 1, !dbg !367
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !94, metadata !103), !dbg !324
  br label %92, !dbg !369

; <label>:65                                      ; preds = %65, %.preheader4
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %65 ], [ %62, %.preheader4 ]
  call void @llvm.dbg.value(metadata i32** %colind3, i64 0, metadata !95, metadata !103), !dbg !307
  %66 = getelementptr inbounds i32* %61, i64 %indvars.iv28, !dbg !365
  %67 = load i32* %66, align 4, !dbg !365, !tbaa !140
  %68 = icmp eq i32 %colid.011, %67, !dbg !370
  %indvars.iv.next29 = add i64 %indvars.iv28, 1, !dbg !371
  br i1 %68, label %69, label %65, !dbg !371

; <label>:69                                      ; preds = %65
  %70 = trunc i64 %indvars.iv28 to i32, !dbg !305
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !98, metadata !103), !dbg !305
  %71 = load i32** %sizes, align 8, !dbg !372, !tbaa !110
  %72 = getelementptr inbounds i32* %71, i64 %indvars.iv28, !dbg !372
  store i32 %size.010, i32* %72, align 4, !dbg !373, !tbaa !140
  %73 = load i32* %39, align 4, !dbg !374, !tbaa !118
  switch i32 %73, label %88 [
    i32 1, label %74
    i32 2, label %80
  ], !dbg !376

; <label>:74                                      ; preds = %69
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  %75 = load i32** %indices, align 8, !dbg !377, !tbaa !110
  %76 = sext i32 %offset.09 to i64, !dbg !379
  %77 = getelementptr inbounds i32* %75, i64 %76, !dbg !379
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  %78 = load double** %entries1, align 8, !dbg !380, !tbaa !110
  %79 = getelementptr inbounds double* %78, i64 %76, !dbg !381
  call void @IVDVqsortUp(i32 %size.010, i32* %77, double* %79) #5, !dbg !382
  br label %88, !dbg !383

; <label>:80                                      ; preds = %69
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  %81 = load i32** %indices, align 8, !dbg !384, !tbaa !110
  %82 = sext i32 %offset.09 to i64, !dbg !387
  %83 = getelementptr inbounds i32* %81, i64 %82, !dbg !387
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  %84 = load double** %entries1, align 8, !dbg !388, !tbaa !110
  %85 = shl nsw i32 %offset.09, 1, !dbg !389
  %86 = sext i32 %85 to i64, !dbg !390
  %87 = getelementptr inbounds double* %84, i64 %86, !dbg !390
  call void @IVZVqsortUp(i32 %size.010, i32* %83, double* %87) #5, !dbg !391
  br label %88, !dbg !392

; <label>:88                                      ; preds = %69, %80, %74
  %89 = load i32* %58, align 4, !dbg !393, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !87, metadata !103), !dbg !323
  %90 = add nsw i32 %70, 1, !dbg !394
  call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !89, metadata !103), !dbg !313
  %91 = add nsw i32 %size.010, %offset.09, !dbg !395
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !93, metadata !103), !dbg !355
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !94, metadata !103), !dbg !324
  %.pre38 = load i32* %nent, align 4, !dbg !356, !tbaa !140
  br label %92

; <label>:92                                      ; preds = %88, %63
  %93 = phi i32 [ %57, %63 ], [ %.pre38, %88 ], !dbg !358
  %jcol.3 = phi i32 [ %jcol.17, %63 ], [ %90, %88 ]
  %offset.1 = phi i32 [ %offset.09, %63 ], [ %91, %88 ]
  %size.1 = phi i32 [ %64, %63 ], [ 1, %88 ]
  %colid.1 = phi i32 [ %colid.011, %63 ], [ %89, %88 ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !358
  call void @llvm.dbg.value(metadata i32* %nent, i64 0, metadata !92, metadata !103), !dbg !303
  %94 = sext i32 %93 to i64, !dbg !357
  %95 = icmp slt i64 %indvars.iv.next31, %94, !dbg !357
  br i1 %95, label %.lr.ph, label %.preheader, !dbg !358

; <label>:96                                      ; preds = %96, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %96 ], [ %56, %.preheader ]
  call void @llvm.dbg.value(metadata i32** %colind3, i64 0, metadata !95, metadata !103), !dbg !307
  %97 = getelementptr inbounds i32* %55, i64 %indvars.iv, !dbg !359
  %98 = load i32* %97, align 4, !dbg !359, !tbaa !140
  %99 = icmp eq i32 %colid.0.lcssa, %98, !dbg !396
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !397
  br i1 %99, label %100, label %96, !dbg !397

; <label>:100                                     ; preds = %96
  call void @llvm.dbg.value(metadata i32** %sizes, i64 0, metadata !98, metadata !103), !dbg !305
  %101 = load i32** %sizes, align 8, !dbg !398, !tbaa !110
  %102 = getelementptr inbounds i32* %101, i64 %indvars.iv, !dbg !398
  store i32 %size.0.lcssa, i32* %102, align 4, !dbg !399, !tbaa !140
  %103 = load i32* %39, align 4, !dbg !400, !tbaa !118
  switch i32 %103, label %118 [
    i32 1, label %104
    i32 2, label %110
  ], !dbg !402

; <label>:104                                     ; preds = %100
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  %105 = load i32** %indices, align 8, !dbg !403, !tbaa !110
  %106 = sext i32 %offset.0.lcssa to i64, !dbg !405
  %107 = getelementptr inbounds i32* %105, i64 %106, !dbg !405
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  %108 = load double** %entries1, align 8, !dbg !406, !tbaa !110
  %109 = getelementptr inbounds double* %108, i64 %106, !dbg !407
  call void @IVDVqsortUp(i32 %size.0.lcssa, i32* %107, double* %109) #5, !dbg !408
  br label %118, !dbg !409

; <label>:110                                     ; preds = %100
  call void @llvm.dbg.value(metadata i32** %indices, i64 0, metadata !96, metadata !103), !dbg !304
  %111 = load i32** %indices, align 8, !dbg !410, !tbaa !110
  %112 = sext i32 %offset.0.lcssa to i64, !dbg !413
  %113 = getelementptr inbounds i32* %111, i64 %112, !dbg !413
  call void @llvm.dbg.value(metadata double** %entries1, i64 0, metadata !85, metadata !103), !dbg !301
  %114 = load double** %entries1, align 8, !dbg !414, !tbaa !110
  %115 = shl nsw i32 %offset.0.lcssa, 1, !dbg !415
  %116 = sext i32 %115 to i64, !dbg !416
  %117 = getelementptr inbounds double* %114, i64 %116, !dbg !416
  call void @IVZVqsortUp(i32 %size.0.lcssa, i32* %113, double* %117) #5, !dbg !417
  br label %118, !dbg !418

; <label>:118                                     ; preds = %100, %110, %104
  call void @IVfree(i32* %16) #5, !dbg !419
  br label %126, !dbg !420

; <label>:119                                     ; preds = %0
  %120 = load %struct.__sFILE** @__stderrp, align 8, !dbg !421, !tbaa !110
  %121 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !422
  %122 = load i32* %121, align 4, !dbg !422, !tbaa !118
  %123 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %120, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %122) #5, !dbg !423
  %124 = load %struct.__sFILE** @__stderrp, align 8, !dbg !424, !tbaa !110
  %125 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct.__sFILE* %124) #5, !dbg !425
  tail call void @exit(i32 -1) #6, !dbg !426
  unreachable, !dbg !426

; <label>:126                                     ; preds = %118, %3
  ret void, !dbg !427
}

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct.__sFILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !73}
!6 = !DISubprogram(name: "SubMtx_sortRowsUp", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*)* @SubMtx_sortRowsUp, variables: !35)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !11, line: 43, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtx", file: !11, line: 44, size: 576, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !25, !34}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 45, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !12, file: !11, line: 46, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !12, file: !11, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !12, file: !11, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !12, file: !11, line: 49, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !12, file: !11, line: 50, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !12, file: !11, line: 51, baseType: !15, size: 32, align: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 52, baseType: !23, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 53, baseType: !26, size: 192, align: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !27, line: 20, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !27, line: 21, size: 192, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !27, line: 22, baseType: !15, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !28, file: !27, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !28, file: !27, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !28, file: !27, line: 25, baseType: !23, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 54, baseType: !9, size: 64, align: 64, offset: 512)
!35 = !{!36, !37, !51, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 17, type: !9)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !38, file: !1, line: 38, type: !40)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 37, column: 29)
!39 = distinct !DILexicalBlock(scope: !6, file: !1, line: 35, column: 22)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !41, line: 49, baseType: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../A2/A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !41, line: 41, size: 256, align: 64, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !41, line: 42, baseType: !15, size: 32, align: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !42, file: !41, line: 43, baseType: !15, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !42, file: !41, line: 44, baseType: !15, size: 32, align: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !42, file: !41, line: 45, baseType: !15, size: 32, align: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !42, file: !41, line: 46, baseType: !15, size: 32, align: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !42, file: !41, line: 47, baseType: !15, size: 32, align: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !42, file: !41, line: 48, baseType: !23, size: 64, align: 64, offset: 192)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !38, file: !1, line: 39, type: !23)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc1", scope: !38, file: !1, line: 40, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2", scope: !38, file: !1, line: 40, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !38, file: !1, line: 40, type: !15)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !38, file: !1, line: 40, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !38, file: !1, line: 41, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !59, file: !1, line: 50, type: !23)
!59 = distinct !DILexicalBlock(scope: !39, file: !1, line: 49, column: 27)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !59, file: !1, line: 51, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !59, file: !1, line: 51, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jrow", scope: !59, file: !1, line: 51, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !59, file: !1, line: 51, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !59, file: !1, line: 51, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !59, file: !1, line: 51, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !59, file: !1, line: 51, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowid", scope: !59, file: !1, line: 51, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !59, file: !1, line: 51, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indices", scope: !59, file: !1, line: 52, type: !57)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivtemp", scope: !59, file: !1, line: 52, type: !57)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !59, file: !1, line: 52, type: !57)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizes", scope: !59, file: !1, line: 52, type: !57)
!73 = !DISubprogram(name: "SubMtx_sortColumnsUp", scope: !1, file: !1, line: 166, type: !7, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*)* @SubMtx_sortColumnsUp, variables: !74)
!74 = !{!75, !76, !79, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !73, file: !1, line: 167, type: !9)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !77, file: !1, line: 172, type: !40)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 171, column: 29)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 169, column: 22)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !77, file: !1, line: 173, type: !23)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc1", scope: !77, file: !1, line: 174, type: !15)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2", scope: !77, file: !1, line: 174, type: !15)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !77, file: !1, line: 174, type: !15)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !77, file: !1, line: 174, type: !15)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !77, file: !1, line: 175, type: !57)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !86, file: !1, line: 184, type: !23)
!86 = distinct !DILexicalBlock(scope: !78, file: !1, line: 183, column: 30)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colid", scope: !86, file: !1, line: 185, type: !15)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !86, file: !1, line: 185, type: !15)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !86, file: !1, line: 185, type: !15)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !86, file: !1, line: 185, type: !15)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !86, file: !1, line: 185, type: !15)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !86, file: !1, line: 185, type: !15)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !86, file: !1, line: 185, type: !15)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !86, file: !1, line: 185, type: !15)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !86, file: !1, line: 186, type: !57)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indices", scope: !86, file: !1, line: 186, type: !57)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivtemp", scope: !86, file: !1, line: 186, type: !57)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizes", scope: !86, file: !1, line: 186, type: !57)
!99 = !{i32 2, !"Dwarf Version", i32 2}
!100 = !{i32 2, !"Debug Info Version", i32 700000003}
!101 = !{i32 1, !"PIC Level", i32 2}
!102 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!103 = !DIExpression()
!104 = !DILocation(line: 17, column: 14, scope: !6)
!105 = !DILocation(line: 24, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 6)
!107 = !DILocation(line: 24, column: 6, scope: !6)
!108 = !DILocation(line: 25, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 24, column: 20)
!110 = !{!111, !111, i64 0}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !DILocation(line: 25, column: 4, scope: !109)
!115 = !DILocation(line: 27, column: 4, scope: !109)
!116 = !DILocation(line: 29, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 6)
!118 = !{!119, !120, i64 0}
!119 = !{!"_SubMtx", !120, i64 0, !120, i64 4, !120, i64 8, !120, i64 12, !120, i64 16, !120, i64 20, !120, i64 24, !111, i64 32, !121, i64 40, !111, i64 64}
!120 = !{!"int", !112, i64 0}
!121 = !{!"_DV", !120, i64 0, !120, i64 4, !120, i64 8, !111, i64 16}
!122 = !DILocation(line: 29, column: 29, scope: !117)
!123 = !DILocation(line: 30, column: 12, scope: !124)
!124 = distinct !DILexicalBlock(scope: !117, file: !1, line: 29, column: 58)
!125 = !DILocation(line: 30, column: 4, scope: !124)
!126 = !DILocation(line: 33, column: 4, scope: !124)
!127 = !DILocation(line: 35, column: 15, scope: !6)
!128 = !{!119, !120, i64 4}
!129 = !DILocation(line: 35, column: 1, scope: !6)
!130 = !DILocation(line: 39, column: 14, scope: !38)
!131 = !DILocation(line: 40, column: 13, scope: !38)
!132 = !DILocation(line: 40, column: 19, scope: !38)
!133 = !DILocation(line: 40, column: 25, scope: !38)
!134 = !DILocation(line: 40, column: 31, scope: !38)
!135 = !DILocation(line: 43, column: 4, scope: !38)
!136 = !DILocation(line: 38, column: 13, scope: !38)
!137 = !DILocation(line: 44, column: 4, scope: !38)
!138 = !DILocation(line: 45, column: 22, scope: !38)
!139 = !DILocation(line: 45, column: 28, scope: !38)
!140 = !{!120, !120, i64 0}
!141 = !DILocation(line: 45, column: 34, scope: !38)
!142 = !DILocation(line: 45, column: 40, scope: !38)
!143 = !DILocation(line: 45, column: 46, scope: !38)
!144 = !DILocation(line: 45, column: 52, scope: !38)
!145 = !DILocation(line: 45, column: 4, scope: !38)
!146 = !DILocation(line: 41, column: 14, scope: !38)
!147 = !DILocation(line: 46, column: 4, scope: !38)
!148 = !DILocation(line: 47, column: 23, scope: !38)
!149 = !DILocation(line: 47, column: 29, scope: !38)
!150 = !DILocation(line: 47, column: 4, scope: !38)
!151 = !DILocation(line: 48, column: 6, scope: !39)
!152 = !DILocation(line: 50, column: 14, scope: !59)
!153 = !DILocation(line: 51, column: 33, scope: !59)
!154 = !DILocation(line: 51, column: 39, scope: !59)
!155 = !DILocation(line: 52, column: 14, scope: !59)
!156 = !DILocation(line: 52, column: 42, scope: !59)
!157 = !DILocation(line: 54, column: 4, scope: !59)
!158 = !DILocation(line: 52, column: 33, scope: !59)
!159 = !DILocation(line: 55, column: 4, scope: !59)
!160 = !DILocation(line: 61, column: 20, scope: !59)
!161 = !DILocation(line: 61, column: 13, scope: !59)
!162 = !DILocation(line: 52, column: 24, scope: !59)
!163 = !DILocation(line: 51, column: 29, scope: !59)
!164 = !DILocation(line: 51, column: 17, scope: !59)
!165 = !DILocation(line: 62, column: 33, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 62, column: 4)
!167 = distinct !DILexicalBlock(scope: !59, file: !1, line: 62, column: 4)
!168 = !DILocation(line: 62, column: 31, scope: !166)
!169 = !DILocation(line: 62, column: 4, scope: !167)
!170 = !DILocation(line: 84, column: 17, scope: !59)
!171 = !DILocation(line: 63, column: 15, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !1, line: 62, column: 49)
!173 = !DILocation(line: 64, column: 15, scope: !172)
!174 = !DILocation(line: 51, column: 53, scope: !59)
!175 = !DILocation(line: 51, column: 60, scope: !59)
!176 = !DILocation(line: 51, column: 13, scope: !59)
!177 = !DILocation(line: 69, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 69, column: 7)
!179 = distinct !DILexicalBlock(scope: !172, file: !1, line: 69, column: 7)
!180 = !DILocation(line: 69, column: 7, scope: !179)
!181 = !DILocation(line: 70, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 69, column: 47)
!183 = !DILocation(line: 70, column: 21, scope: !182)
!184 = !DILocation(line: 69, column: 36, scope: !178)
!185 = !DILocation(line: 84, column: 4, scope: !59)
!186 = !DILocation(line: 85, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !59, file: !1, line: 85, column: 9)
!188 = !DILocation(line: 85, column: 9, scope: !59)
!189 = !DILocation(line: 86, column: 20, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 85, column: 31)
!191 = !DILocation(line: 86, column: 34, scope: !190)
!192 = !DILocation(line: 86, column: 43, scope: !190)
!193 = !DILocation(line: 86, column: 7, scope: !190)
!194 = !DILocation(line: 87, column: 4, scope: !190)
!195 = !DILocation(line: 88, column: 20, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 87, column: 41)
!197 = distinct !DILexicalBlock(scope: !187, file: !1, line: 87, column: 16)
!198 = !DILocation(line: 88, column: 34, scope: !196)
!199 = !DILocation(line: 88, column: 43, scope: !196)
!200 = !DILocation(line: 88, column: 7, scope: !196)
!201 = !DILocation(line: 89, column: 4, scope: !196)
!202 = !DILocation(line: 95, column: 14, scope: !59)
!203 = !DILocation(line: 95, column: 20, scope: !59)
!204 = !DILocation(line: 95, column: 4, scope: !59)
!205 = !DILocation(line: 106, column: 12, scope: !59)
!206 = !DILocation(line: 51, column: 45, scope: !59)
!207 = !DILocation(line: 51, column: 23, scope: !59)
!208 = !DILocation(line: 109, column: 17, scope: !59)
!209 = !DILocation(line: 109, column: 15, scope: !59)
!210 = !DILocation(line: 109, column: 4, scope: !59)
!211 = !DILocation(line: 134, column: 21, scope: !59)
!212 = !DILocation(line: 110, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 110, column: 12)
!214 = distinct !DILexicalBlock(scope: !59, file: !1, line: 109, column: 24)
!215 = !DILocation(line: 110, column: 23, scope: !213)
!216 = !DILocation(line: 110, column: 12, scope: !214)
!217 = !DILocation(line: 113, column: 27, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 112, column: 14)
!219 = !DILocation(line: 111, column: 14, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !1, line: 110, column: 34)
!221 = !DILocation(line: 112, column: 7, scope: !220)
!222 = !DILocation(line: 113, column: 24, scope: !218)
!223 = !DILocation(line: 113, column: 10, scope: !218)
!224 = !DILocation(line: 121, column: 10, scope: !218)
!225 = !DILocation(line: 121, column: 22, scope: !218)
!226 = !DILocation(line: 122, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !218, file: !1, line: 122, column: 15)
!228 = !DILocation(line: 122, column: 15, scope: !218)
!229 = !DILocation(line: 123, column: 31, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 122, column: 37)
!231 = !DILocation(line: 123, column: 39, scope: !230)
!232 = !DILocation(line: 123, column: 49, scope: !230)
!233 = !DILocation(line: 123, column: 57, scope: !230)
!234 = !DILocation(line: 123, column: 13, scope: !230)
!235 = !DILocation(line: 124, column: 10, scope: !230)
!236 = !DILocation(line: 125, column: 31, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 124, column: 47)
!238 = distinct !DILexicalBlock(scope: !227, file: !1, line: 124, column: 22)
!239 = !DILocation(line: 125, column: 39, scope: !237)
!240 = !DILocation(line: 125, column: 49, scope: !237)
!241 = !DILocation(line: 125, column: 60, scope: !237)
!242 = !DILocation(line: 125, column: 57, scope: !237)
!243 = !DILocation(line: 125, column: 13, scope: !237)
!244 = !DILocation(line: 126, column: 10, scope: !237)
!245 = !DILocation(line: 127, column: 18, scope: !218)
!246 = !DILocation(line: 128, column: 14, scope: !218)
!247 = !DILocation(line: 129, column: 17, scope: !218)
!248 = !DILocation(line: 134, column: 18, scope: !59)
!249 = !DILocation(line: 134, column: 4, scope: !59)
!250 = !DILocation(line: 142, column: 4, scope: !59)
!251 = !DILocation(line: 142, column: 16, scope: !59)
!252 = !DILocation(line: 143, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !59, file: !1, line: 143, column: 9)
!254 = !DILocation(line: 143, column: 9, scope: !59)
!255 = !DILocation(line: 144, column: 25, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 143, column: 31)
!257 = !DILocation(line: 144, column: 33, scope: !256)
!258 = !DILocation(line: 144, column: 43, scope: !256)
!259 = !DILocation(line: 144, column: 51, scope: !256)
!260 = !DILocation(line: 144, column: 7, scope: !256)
!261 = !DILocation(line: 145, column: 4, scope: !256)
!262 = !DILocation(line: 146, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 145, column: 41)
!264 = distinct !DILexicalBlock(scope: !253, file: !1, line: 145, column: 16)
!265 = !DILocation(line: 146, column: 33, scope: !263)
!266 = !DILocation(line: 146, column: 43, scope: !263)
!267 = !DILocation(line: 146, column: 54, scope: !263)
!268 = !DILocation(line: 146, column: 51, scope: !263)
!269 = !DILocation(line: 146, column: 7, scope: !263)
!270 = !DILocation(line: 147, column: 4, scope: !263)
!271 = !DILocation(line: 148, column: 4, scope: !59)
!272 = !DILocation(line: 149, column: 6, scope: !39)
!273 = !DILocation(line: 151, column: 12, scope: !39)
!274 = !DILocation(line: 151, column: 4, scope: !39)
!275 = !DILocation(line: 153, column: 4, scope: !39)
!276 = !DILocation(line: 155, column: 1, scope: !6)
!277 = !DILocation(line: 167, column: 14, scope: !73)
!278 = !DILocation(line: 169, column: 15, scope: !73)
!279 = !DILocation(line: 169, column: 1, scope: !73)
!280 = !DILocation(line: 172, column: 13, scope: !77)
!281 = !DILocation(line: 177, column: 4, scope: !77)
!282 = !DILocation(line: 173, column: 14, scope: !77)
!283 = !DILocation(line: 174, column: 13, scope: !77)
!284 = !DILocation(line: 174, column: 19, scope: !77)
!285 = !DILocation(line: 174, column: 25, scope: !77)
!286 = !DILocation(line: 174, column: 31, scope: !77)
!287 = !DILocation(line: 178, column: 4, scope: !77)
!288 = !DILocation(line: 179, column: 22, scope: !77)
!289 = !DILocation(line: 179, column: 28, scope: !77)
!290 = !DILocation(line: 179, column: 34, scope: !77)
!291 = !DILocation(line: 179, column: 40, scope: !77)
!292 = !DILocation(line: 179, column: 46, scope: !77)
!293 = !DILocation(line: 179, column: 52, scope: !77)
!294 = !DILocation(line: 179, column: 4, scope: !77)
!295 = !DILocation(line: 175, column: 14, scope: !77)
!296 = !DILocation(line: 180, column: 4, scope: !77)
!297 = !DILocation(line: 181, column: 26, scope: !77)
!298 = !DILocation(line: 181, column: 32, scope: !77)
!299 = !DILocation(line: 181, column: 4, scope: !77)
!300 = !DILocation(line: 182, column: 6, scope: !78)
!301 = !DILocation(line: 184, column: 14, scope: !86)
!302 = !DILocation(line: 185, column: 34, scope: !86)
!303 = !DILocation(line: 185, column: 40, scope: !86)
!304 = !DILocation(line: 186, column: 23, scope: !86)
!305 = !DILocation(line: 186, column: 42, scope: !86)
!306 = !DILocation(line: 188, column: 4, scope: !86)
!307 = !DILocation(line: 186, column: 14, scope: !86)
!308 = !DILocation(line: 190, column: 4, scope: !86)
!309 = !DILocation(line: 196, column: 20, scope: !86)
!310 = !DILocation(line: 196, column: 13, scope: !86)
!311 = !DILocation(line: 186, column: 33, scope: !86)
!312 = !DILocation(line: 185, column: 30, scope: !86)
!313 = !DILocation(line: 185, column: 24, scope: !86)
!314 = !DILocation(line: 197, column: 33, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 197, column: 4)
!316 = distinct !DILexicalBlock(scope: !86, file: !1, line: 197, column: 4)
!317 = !DILocation(line: 197, column: 31, scope: !315)
!318 = !DILocation(line: 197, column: 4, scope: !316)
!319 = !DILocation(line: 215, column: 17, scope: !86)
!320 = !DILocation(line: 198, column: 15, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !1, line: 197, column: 49)
!322 = !DILocation(line: 199, column: 15, scope: !321)
!323 = !DILocation(line: 185, column: 13, scope: !86)
!324 = !DILocation(line: 185, column: 54, scope: !86)
!325 = !DILocation(line: 185, column: 20, scope: !86)
!326 = !DILocation(line: 200, column: 25, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 200, column: 7)
!328 = distinct !DILexicalBlock(scope: !321, file: !1, line: 200, column: 7)
!329 = !DILocation(line: 200, column: 7, scope: !328)
!330 = !DILocation(line: 201, column: 10, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 200, column: 47)
!332 = !DILocation(line: 201, column: 21, scope: !331)
!333 = !DILocation(line: 200, column: 36, scope: !327)
!334 = !DILocation(line: 215, column: 4, scope: !86)
!335 = !DILocation(line: 216, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !86, file: !1, line: 216, column: 9)
!337 = !DILocation(line: 216, column: 9, scope: !86)
!338 = !DILocation(line: 217, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !1, line: 216, column: 31)
!340 = !DILocation(line: 217, column: 34, scope: !339)
!341 = !DILocation(line: 217, column: 43, scope: !339)
!342 = !DILocation(line: 217, column: 7, scope: !339)
!343 = !DILocation(line: 218, column: 4, scope: !339)
!344 = !DILocation(line: 219, column: 20, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 218, column: 41)
!346 = distinct !DILexicalBlock(scope: !336, file: !1, line: 218, column: 16)
!347 = !DILocation(line: 219, column: 34, scope: !345)
!348 = !DILocation(line: 219, column: 43, scope: !345)
!349 = !DILocation(line: 219, column: 7, scope: !345)
!350 = !DILocation(line: 220, column: 4, scope: !345)
!351 = !DILocation(line: 226, column: 14, scope: !86)
!352 = !DILocation(line: 226, column: 20, scope: !86)
!353 = !DILocation(line: 226, column: 4, scope: !86)
!354 = !DILocation(line: 237, column: 12, scope: !86)
!355 = !DILocation(line: 185, column: 46, scope: !86)
!356 = !DILocation(line: 240, column: 17, scope: !86)
!357 = !DILocation(line: 240, column: 15, scope: !86)
!358 = !DILocation(line: 240, column: 4, scope: !86)
!359 = !DILocation(line: 265, column: 21, scope: !86)
!360 = !DILocation(line: 241, column: 12, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 241, column: 12)
!362 = distinct !DILexicalBlock(scope: !86, file: !1, line: 240, column: 24)
!363 = !DILocation(line: 241, column: 23, scope: !361)
!364 = !DILocation(line: 241, column: 12, scope: !362)
!365 = !DILocation(line: 244, column: 27, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !1, line: 243, column: 14)
!367 = !DILocation(line: 242, column: 14, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !1, line: 241, column: 34)
!369 = !DILocation(line: 243, column: 7, scope: !368)
!370 = !DILocation(line: 244, column: 24, scope: !366)
!371 = !DILocation(line: 244, column: 10, scope: !366)
!372 = !DILocation(line: 252, column: 10, scope: !366)
!373 = !DILocation(line: 252, column: 22, scope: !366)
!374 = !DILocation(line: 253, column: 15, scope: !375)
!375 = distinct !DILexicalBlock(scope: !366, file: !1, line: 253, column: 15)
!376 = !DILocation(line: 253, column: 15, scope: !366)
!377 = !DILocation(line: 254, column: 31, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !1, line: 253, column: 37)
!379 = !DILocation(line: 254, column: 39, scope: !378)
!380 = !DILocation(line: 254, column: 49, scope: !378)
!381 = !DILocation(line: 254, column: 57, scope: !378)
!382 = !DILocation(line: 254, column: 13, scope: !378)
!383 = !DILocation(line: 255, column: 10, scope: !378)
!384 = !DILocation(line: 256, column: 31, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 255, column: 47)
!386 = distinct !DILexicalBlock(scope: !375, file: !1, line: 255, column: 22)
!387 = !DILocation(line: 256, column: 39, scope: !385)
!388 = !DILocation(line: 256, column: 49, scope: !385)
!389 = !DILocation(line: 256, column: 60, scope: !385)
!390 = !DILocation(line: 256, column: 57, scope: !385)
!391 = !DILocation(line: 256, column: 13, scope: !385)
!392 = !DILocation(line: 257, column: 10, scope: !385)
!393 = !DILocation(line: 258, column: 18, scope: !366)
!394 = !DILocation(line: 259, column: 14, scope: !366)
!395 = !DILocation(line: 260, column: 17, scope: !366)
!396 = !DILocation(line: 265, column: 18, scope: !86)
!397 = !DILocation(line: 265, column: 4, scope: !86)
!398 = !DILocation(line: 273, column: 4, scope: !86)
!399 = !DILocation(line: 273, column: 16, scope: !86)
!400 = !DILocation(line: 274, column: 9, scope: !401)
!401 = distinct !DILexicalBlock(scope: !86, file: !1, line: 274, column: 9)
!402 = !DILocation(line: 274, column: 9, scope: !86)
!403 = !DILocation(line: 275, column: 25, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !1, line: 274, column: 31)
!405 = !DILocation(line: 275, column: 33, scope: !404)
!406 = !DILocation(line: 275, column: 43, scope: !404)
!407 = !DILocation(line: 275, column: 51, scope: !404)
!408 = !DILocation(line: 275, column: 7, scope: !404)
!409 = !DILocation(line: 276, column: 4, scope: !404)
!410 = !DILocation(line: 277, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 276, column: 41)
!412 = distinct !DILexicalBlock(scope: !401, file: !1, line: 276, column: 16)
!413 = !DILocation(line: 277, column: 33, scope: !411)
!414 = !DILocation(line: 277, column: 43, scope: !411)
!415 = !DILocation(line: 277, column: 54, scope: !411)
!416 = !DILocation(line: 277, column: 51, scope: !411)
!417 = !DILocation(line: 277, column: 7, scope: !411)
!418 = !DILocation(line: 278, column: 4, scope: !411)
!419 = !DILocation(line: 279, column: 4, scope: !86)
!420 = !DILocation(line: 280, column: 6, scope: !78)
!421 = !DILocation(line: 282, column: 12, scope: !78)
!422 = !DILocation(line: 283, column: 42, scope: !78)
!423 = !DILocation(line: 282, column: 4, scope: !78)
!424 = !DILocation(line: 284, column: 33, scope: !78)
!425 = !DILocation(line: 284, column: 4, scope: !78)
!426 = !DILocation(line: 285, column: 4, scope: !78)
!427 = !DILocation(line: 287, column: 1, scope: !73)
