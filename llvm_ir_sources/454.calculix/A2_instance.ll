; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_nrow(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_ncol(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_inc1(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_inc2(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in A2_entries(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad structure, entries is NULL\0A\00", align 1
@.str7 = private unnamed_addr constant [63 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [67 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad structure, entries is NULL\0A\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_col(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str15 = private unnamed_addr constant [76 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str16 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [88 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str20 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str21 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str22 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str23 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str25 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad structure, entries is NULL\0A\00", align 1
@.str26 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str28 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str30 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad structure, entries is NULL\0A\00", align 1
@.str31 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str33 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str34 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str35 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str36 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str38 = private unnamed_addr constant [70 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str39 = private unnamed_addr constant [97 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str40 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str41 = private unnamed_addr constant [90 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str42 = private unnamed_addr constant [90 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_nrow(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !25, metadata !114), !dbg !115
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !116
  br i1 %1, label %2, label %5, !dbg !118

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !119, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), %struct._A2* null) #4, !dbg !125
  tail call void @exit(i32 -1) #5, !dbg !126
  unreachable, !dbg !126

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !127
  %7 = load i32* %6, align 4, !dbg !127, !tbaa !128
  ret i32 %7, !dbg !131
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_ncol(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !28, metadata !114), !dbg !132
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !133
  br i1 %1, label %2, label %5, !dbg !135

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !136, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._A2* null) #4, !dbg !138
  tail call void @exit(i32 -1) #5, !dbg !139
  unreachable, !dbg !139

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !140
  %7 = load i32* %6, align 4, !dbg !140, !tbaa !141
  ret i32 %7, !dbg !142
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_inc1(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !31, metadata !114), !dbg !143
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !144
  br i1 %1, label %2, label %5, !dbg !146

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !147, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #4, !dbg !149
  tail call void @exit(i32 -1) #5, !dbg !150
  unreachable, !dbg !150

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !151
  %7 = load i32* %6, align 4, !dbg !151, !tbaa !152
  ret i32 %7, !dbg !153
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_inc2(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !34, metadata !114), !dbg !154
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !155
  br i1 %1, label %2, label %5, !dbg !157

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !158, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), %struct._A2* null) #4, !dbg !160
  tail call void @exit(i32 -1) #5, !dbg !161
  unreachable, !dbg !161

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !162
  %7 = load i32* %6, align 4, !dbg !162, !tbaa !163
  ret i32 %7, !dbg !164
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @A2_entries(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !39, metadata !114), !dbg !165
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !166
  br i1 %1, label %2, label %5, !dbg !168

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !169, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #4, !dbg !171
  tail call void @exit(i32 -1) #5, !dbg !172
  unreachable, !dbg !172

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !173
  %7 = load double** %6, align 8, !dbg !173, !tbaa !174
  ret double* %7, !dbg !175
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @A2_row(%struct._A2* %mtx, i32 %irow) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !44, metadata !114), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !45, metadata !114), !dbg !177
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !178
  br i1 %1, label %2, label %5, !dbg !180

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !181, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), %struct._A2* null, i32 %irow) #4, !dbg !183
  tail call void @exit(i32 -1) #5, !dbg !184
  unreachable, !dbg !184

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !185
  %7 = load double** %6, align 8, !dbg !185, !tbaa !174
  %8 = icmp eq double* %7, null, !dbg !187
  br i1 %8, label %9, label %12, !dbg !188

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !189, !tbaa !121
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #4, !dbg !191
  tail call void @exit(i32 -1) #5, !dbg !192
  unreachable, !dbg !192

; <label>:12                                      ; preds = %5
  %13 = icmp sgt i32 %irow, -1, !dbg !193
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !195, !tbaa !128
  %14 = icmp sgt i32 %.pre, %irow, !dbg !197
  %or.cond = and i1 %13, %14, !dbg !198
  br i1 %or.cond, label %17, label %._crit_edge, !dbg !198

._crit_edge:                                      ; preds = %12
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !199, !tbaa !121
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([63 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %irow, i32 %.pre) #4, !dbg !200
  tail call void @exit(i32 -1) #5, !dbg !201
  unreachable, !dbg !201

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !202
  %19 = load i32* %18, align 4, !dbg !202, !tbaa !204
  switch i32 %19, label %29 [
    i32 1, label %20
    i32 2, label %24
  ], !dbg !205

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !206
  %22 = load i32* %21, align 4, !dbg !206, !tbaa !152
  %23 = mul nsw i32 %22, %irow, !dbg !208
  br label %32, !dbg !209

; <label>:24                                      ; preds = %17
  %25 = shl i32 %irow, 1, !dbg !210
  %26 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !213
  %27 = load i32* %26, align 4, !dbg !213, !tbaa !152
  %28 = mul nsw i32 %25, %27, !dbg !214
  br label %32

; <label>:29                                      ; preds = %17
  %30 = load %struct.__sFILE** @__stderrp, align 8, !dbg !215, !tbaa !121
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([85 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %19) #4, !dbg !217
  tail call void @exit(i32 -1) #5, !dbg !218
  unreachable, !dbg !218

; <label>:32                                      ; preds = %24, %20
  %.pn.in = phi i32 [ %23, %20 ], [ %28, %24 ]
  %.pn = sext i32 %.pn.in to i64, !dbg !219
  %row.0 = getelementptr inbounds double* %7, i64 %.pn, !dbg !219
  ret double* %row.0, !dbg !220
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @A2_column(%struct._A2* %mtx, i32 %jcol) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !49, metadata !114), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !50, metadata !114), !dbg !222
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !223
  br i1 %1, label %2, label %5, !dbg !225

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !226, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), %struct._A2* null, i32 %jcol) #4, !dbg !228
  tail call void @exit(i32 -1) #5, !dbg !229
  unreachable, !dbg !229

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !230
  %7 = load double** %6, align 8, !dbg !230, !tbaa !174
  %8 = icmp eq double* %7, null, !dbg !232
  br i1 %8, label %9, label %12, !dbg !233

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !234, !tbaa !121
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #4, !dbg !236
  tail call void @exit(i32 -1) #5, !dbg !237
  unreachable, !dbg !237

; <label>:12                                      ; preds = %5
  %13 = icmp sgt i32 %jcol, -1, !dbg !238
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !240, !tbaa !141
  %14 = icmp sgt i32 %.pre, %jcol, !dbg !242
  %or.cond = and i1 %13, %14, !dbg !243
  br i1 %or.cond, label %17, label %._crit_edge, !dbg !243

._crit_edge:                                      ; preds = %12
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !244, !tbaa !121
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %jcol, i32 %.pre) #4, !dbg !245
  tail call void @exit(i32 -1) #5, !dbg !246
  unreachable, !dbg !246

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !247
  %19 = load i32* %18, align 4, !dbg !247, !tbaa !204
  switch i32 %19, label %29 [
    i32 1, label %20
    i32 2, label %24
  ], !dbg !249

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !250
  %22 = load i32* %21, align 4, !dbg !250, !tbaa !163
  %23 = mul nsw i32 %22, %jcol, !dbg !252
  br label %32, !dbg !253

; <label>:24                                      ; preds = %17
  %25 = shl i32 %jcol, 1, !dbg !254
  %26 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !257
  %27 = load i32* %26, align 4, !dbg !257, !tbaa !163
  %28 = mul nsw i32 %25, %27, !dbg !258
  br label %32

; <label>:29                                      ; preds = %17
  %30 = load %struct.__sFILE** @__stderrp, align 8, !dbg !259, !tbaa !121
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %19) #4, !dbg !261
  tail call void @exit(i32 -1) #5, !dbg !262
  unreachable, !dbg !262

; <label>:32                                      ; preds = %24, %20
  %.pn.in = phi i32 [ %23, %20 ], [ %28, %24 ]
  %.pn = sext i32 %.pn.in to i64, !dbg !263
  %col.0 = getelementptr inbounds double* %7, i64 %.pn, !dbg !263
  ret double* %col.0, !dbg !264
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_realEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !56, metadata !114), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !57, metadata !114), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !58, metadata !114), !dbg !267
  tail call void @llvm.dbg.value(metadata double* %pValue, i64 0, metadata !59, metadata !114), !dbg !268
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !269
  %2 = icmp eq double* %pValue, null, !dbg !271
  %or.cond = or i1 %1, %2, !dbg !272
  br i1 %or.cond, label %3, label %6, !dbg !272

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !273, !tbaa !121
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #4, !dbg !275
  tail call void @exit(i32 -1) #5, !dbg !276
  unreachable, !dbg !276

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !277
  %8 = load i32* %7, align 4, !dbg !277, !tbaa !204
  %9 = icmp eq i32 %8, 1, !dbg !277
  br i1 %9, label %13, label %10, !dbg !279

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !280, !tbaa !121
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %8) #4, !dbg !282
  tail call void @exit(i32 -1) #5, !dbg !283
  unreachable, !dbg !283

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !284
  %15 = load double** %14, align 8, !dbg !284, !tbaa !174
  %16 = icmp eq double* %15, null, !dbg !286
  br i1 %16, label %17, label %20, !dbg !287

; <label>:17                                      ; preds = %13
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !288, !tbaa !121
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([76 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #4, !dbg !290
  tail call void @exit(i32 -1) #5, !dbg !291
  unreachable, !dbg !291

; <label>:20                                      ; preds = %13
  %21 = icmp sgt i32 %irow, -1, !dbg !292
  %.phi.trans.insert3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre4 = load i32* %.phi.trans.insert3, align 4, !dbg !294, !tbaa !128
  %22 = icmp sgt i32 %.pre4, %irow, !dbg !296
  %or.cond6 = and i1 %21, %22, !dbg !297
  br i1 %or.cond6, label %25, label %._crit_edge2, !dbg !297

._crit_edge2:                                     ; preds = %20
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !298, !tbaa !121
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([75 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %irow, i32 %.pre4) #4, !dbg !299
  tail call void @exit(i32 -1) #5, !dbg !300
  unreachable, !dbg !300

; <label>:25                                      ; preds = %20
  %26 = icmp sgt i32 %jcol, -1, !dbg !301
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !303, !tbaa !141
  %27 = icmp sgt i32 %.pre, %jcol, !dbg !305
  %or.cond7 = and i1 %26, %27, !dbg !306
  br i1 %or.cond7, label %30, label %._crit_edge, !dbg !306

._crit_edge:                                      ; preds = %25
  %28 = load %struct.__sFILE** @__stderrp, align 8, !dbg !307, !tbaa !121
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %jcol, i32 %.pre) #4, !dbg !308
  tail call void @exit(i32 -1) #5, !dbg !309
  unreachable, !dbg !309

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !310
  %32 = load i32* %31, align 4, !dbg !310, !tbaa !152
  %33 = mul nsw i32 %32, %irow, !dbg !311
  %34 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !312
  %35 = load i32* %34, align 4, !dbg !312, !tbaa !163
  %36 = mul nsw i32 %35, %jcol, !dbg !313
  %37 = add nsw i32 %36, %33, !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !60, metadata !114), !dbg !315
  %38 = sext i32 %37 to i64, !dbg !316
  %39 = getelementptr inbounds double* %15, i64 %38, !dbg !316
  %40 = bitcast double* %39 to i64*, !dbg !316
  %41 = load i64* %40, align 8, !dbg !316, !tbaa !317
  %42 = bitcast double* %pValue to i64*, !dbg !319
  store i64 %41, i64* %42, align 8, !dbg !319, !tbaa !317
  ret void, !dbg !320
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_complexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !65, metadata !114), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !66, metadata !114), !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !67, metadata !114), !dbg !323
  tail call void @llvm.dbg.value(metadata double* %pReal, i64 0, metadata !68, metadata !114), !dbg !324
  tail call void @llvm.dbg.value(metadata double* %pImag, i64 0, metadata !69, metadata !114), !dbg !325
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !326
  %2 = icmp eq double* %pReal, null, !dbg !328
  %or.cond = or i1 %1, %2, !dbg !329
  %3 = icmp eq double* %pImag, null, !dbg !330
  %or.cond3 = or i1 %or.cond, %3, !dbg !329
  br i1 %or.cond3, label %4, label %7, !dbg !329

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !331, !tbaa !121
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #4, !dbg !333
  tail call void @exit(i32 -1) #5, !dbg !334
  unreachable, !dbg !334

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !335
  %9 = load i32* %8, align 4, !dbg !335, !tbaa !204
  %10 = icmp eq i32 %9, 2, !dbg !335
  br i1 %10, label %14, label %11, !dbg !337

; <label>:11                                      ; preds = %7
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !338, !tbaa !121
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %9) #4, !dbg !340
  tail call void @exit(i32 -1) #5, !dbg !341
  unreachable, !dbg !341

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !342
  %16 = load double** %15, align 8, !dbg !342, !tbaa !174
  %17 = icmp eq double* %16, null, !dbg !344
  br i1 %17, label %18, label %21, !dbg !345

; <label>:18                                      ; preds = %14
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !346, !tbaa !121
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([82 x i8]* @.str20, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #4, !dbg !348
  tail call void @exit(i32 -1) #5, !dbg !349
  unreachable, !dbg !349

; <label>:21                                      ; preds = %14
  %22 = icmp sgt i32 %irow, -1, !dbg !350
  %.phi.trans.insert5 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre6 = load i32* %.phi.trans.insert5, align 4, !dbg !352, !tbaa !128
  %23 = icmp sgt i32 %.pre6, %irow, !dbg !354
  %or.cond8 = and i1 %22, %23, !dbg !355
  br i1 %or.cond8, label %26, label %._crit_edge4, !dbg !355

._crit_edge4:                                     ; preds = %21
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !356, !tbaa !121
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([81 x i8]* @.str21, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %irow, i32 %.pre6) #4, !dbg !357
  tail call void @exit(i32 -1) #5, !dbg !358
  unreachable, !dbg !358

; <label>:26                                      ; preds = %21
  %27 = icmp sgt i32 %jcol, -1, !dbg !359
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !361, !tbaa !141
  %28 = icmp sgt i32 %.pre, %jcol, !dbg !363
  %or.cond9 = and i1 %27, %28, !dbg !364
  br i1 %or.cond9, label %31, label %._crit_edge, !dbg !364

._crit_edge:                                      ; preds = %26
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !365, !tbaa !121
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([81 x i8]* @.str22, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %jcol, i32 %.pre) #4, !dbg !366
  tail call void @exit(i32 -1) #5, !dbg !367
  unreachable, !dbg !367

; <label>:31                                      ; preds = %26
  %32 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !368
  %33 = load i32* %32, align 4, !dbg !368, !tbaa !152
  %34 = mul nsw i32 %33, %irow, !dbg !369
  %35 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !370
  %36 = load i32* %35, align 4, !dbg !370, !tbaa !163
  %37 = mul nsw i32 %36, %jcol, !dbg !371
  %38 = add nsw i32 %37, %34, !dbg !372
  %39 = shl nsw i32 %38, 1, !dbg !373
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !70, metadata !114), !dbg !374
  %40 = sext i32 %39 to i64, !dbg !375
  %41 = getelementptr inbounds double* %16, i64 %40, !dbg !375
  %42 = bitcast double* %41 to i64*, !dbg !375
  %43 = load i64* %42, align 8, !dbg !375, !tbaa !317
  %44 = bitcast double* %pReal to i64*, !dbg !376
  store i64 %43, i64* %44, align 8, !dbg !376, !tbaa !317
  %45 = or i32 %39, 1, !dbg !377
  %46 = sext i32 %45 to i64, !dbg !378
  %47 = getelementptr inbounds double* %16, i64 %46, !dbg !378
  %48 = bitcast double* %47 to i64*, !dbg !378
  %49 = load i64* %48, align 8, !dbg !378, !tbaa !317
  %50 = bitcast double* %pImag to i64*, !dbg !379
  store i64 %49, i64* %50, align 8, !dbg !379, !tbaa !317
  ret void, !dbg !380
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_setRealEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double %value) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !75, metadata !114), !dbg !381
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !76, metadata !114), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !77, metadata !114), !dbg !383
  tail call void @llvm.dbg.value(metadata double %value, i64 0, metadata !78, metadata !114), !dbg !384
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !385
  br i1 %1, label %2, label %5, !dbg !387

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !388, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str23, i64 0, i64 0), %struct._A2* null, i32 %irow, i32 %jcol, double %value) #4, !dbg !390
  tail call void @exit(i32 -1) #5, !dbg !391
  unreachable, !dbg !391

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !392
  %7 = load i32* %6, align 4, !dbg !392, !tbaa !204
  %8 = icmp eq i32 %7, 1, !dbg !392
  br i1 %8, label %12, label %9, !dbg !394

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !395, !tbaa !121
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([82 x i8]* @.str24, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %7) #4, !dbg !397
  tail call void @exit(i32 -1) #5, !dbg !398
  unreachable, !dbg !398

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !399
  %14 = load double** %13, align 8, !dbg !399, !tbaa !174
  %15 = icmp eq double* %14, null, !dbg !401
  br i1 %15, label %16, label %19, !dbg !402

; <label>:16                                      ; preds = %12
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !403, !tbaa !121
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([79 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value) #4, !dbg !405
  tail call void @exit(i32 -1) #5, !dbg !406
  unreachable, !dbg !406

; <label>:19                                      ; preds = %12
  %20 = icmp sgt i32 %irow, -1, !dbg !407
  %.phi.trans.insert2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre3 = load i32* %.phi.trans.insert2, align 4, !dbg !409, !tbaa !128
  %21 = icmp sgt i32 %.pre3, %irow, !dbg !411
  %or.cond = and i1 %20, %21, !dbg !412
  br i1 %or.cond, label %24, label %._crit_edge1, !dbg !412

._crit_edge1:                                     ; preds = %19
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !413, !tbaa !121
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([78 x i8]* @.str26, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %irow, i32 %.pre3) #4, !dbg !414
  tail call void @exit(i32 -1) #5, !dbg !415
  unreachable, !dbg !415

; <label>:24                                      ; preds = %19
  %25 = icmp sgt i32 %jcol, -1, !dbg !416
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !418, !tbaa !141
  %26 = icmp sgt i32 %.pre, %jcol, !dbg !420
  %or.cond5 = and i1 %25, %26, !dbg !421
  br i1 %or.cond5, label %29, label %._crit_edge, !dbg !421

._crit_edge:                                      ; preds = %24
  %27 = load %struct.__sFILE** @__stderrp, align 8, !dbg !422, !tbaa !121
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([78 x i8]* @.str27, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %jcol, i32 %.pre) #4, !dbg !423
  tail call void @exit(i32 -1) #5, !dbg !424
  unreachable, !dbg !424

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !425
  %31 = load i32* %30, align 4, !dbg !425, !tbaa !152
  %32 = mul nsw i32 %31, %irow, !dbg !426
  %33 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !427
  %34 = load i32* %33, align 4, !dbg !427, !tbaa !163
  %35 = mul nsw i32 %34, %jcol, !dbg !428
  %36 = add nsw i32 %35, %32, !dbg !429
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !79, metadata !114), !dbg !430
  %37 = sext i32 %36 to i64, !dbg !431
  %38 = getelementptr inbounds double* %14, i64 %37, !dbg !431
  store double %value, double* %38, align 8, !dbg !432, !tbaa !317
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_setComplexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !84, metadata !114), !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !85, metadata !114), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !86, metadata !114), !dbg !436
  tail call void @llvm.dbg.value(metadata double %real, i64 0, metadata !87, metadata !114), !dbg !437
  tail call void @llvm.dbg.value(metadata double %imag, i64 0, metadata !88, metadata !114), !dbg !438
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !439
  br i1 %1, label %2, label %5, !dbg !441

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !442, !tbaa !121
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([64 x i8]* @.str28, i64 0, i64 0), %struct._A2* null, i32 %irow, i32 %jcol, double %real, double %imag) #4, !dbg !444
  tail call void @exit(i32 -1) #5, !dbg !445
  unreachable, !dbg !445

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !446
  %7 = load i32* %6, align 4, !dbg !446, !tbaa !204
  %8 = icmp eq i32 %7, 2, !dbg !446
  br i1 %8, label %12, label %9, !dbg !448

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !449, !tbaa !121
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([91 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %7) #4, !dbg !451
  tail call void @exit(i32 -1) #5, !dbg !452
  unreachable, !dbg !452

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !453
  %14 = load double** %13, align 8, !dbg !453, !tbaa !174
  %15 = icmp eq double* %14, null, !dbg !455
  br i1 %15, label %16, label %19, !dbg !456

; <label>:16                                      ; preds = %12
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !457, !tbaa !121
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([85 x i8]* @.str30, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #4, !dbg !459
  tail call void @exit(i32 -1) #5, !dbg !460
  unreachable, !dbg !460

; <label>:19                                      ; preds = %12
  %20 = icmp sgt i32 %irow, -1, !dbg !461
  %.phi.trans.insert2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre3 = load i32* %.phi.trans.insert2, align 4, !dbg !463, !tbaa !128
  %21 = icmp sgt i32 %.pre3, %irow, !dbg !465
  %or.cond = and i1 %20, %21, !dbg !466
  br i1 %or.cond, label %24, label %._crit_edge1, !dbg !466

._crit_edge1:                                     ; preds = %19
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !467, !tbaa !121
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([84 x i8]* @.str31, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %irow, i32 %.pre3) #4, !dbg !468
  tail call void @exit(i32 -1) #5, !dbg !469
  unreachable, !dbg !469

; <label>:24                                      ; preds = %19
  %25 = icmp sgt i32 %jcol, -1, !dbg !470
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !472, !tbaa !141
  %26 = icmp sgt i32 %.pre, %jcol, !dbg !474
  %or.cond5 = and i1 %25, %26, !dbg !475
  br i1 %or.cond5, label %29, label %._crit_edge, !dbg !475

._crit_edge:                                      ; preds = %24
  %27 = load %struct.__sFILE** @__stderrp, align 8, !dbg !476, !tbaa !121
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([84 x i8]* @.str32, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %jcol, i32 %.pre) #4, !dbg !477
  tail call void @exit(i32 -1) #5, !dbg !478
  unreachable, !dbg !478

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !479
  %31 = load i32* %30, align 4, !dbg !479, !tbaa !152
  %32 = mul nsw i32 %31, %irow, !dbg !480
  %33 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !481
  %34 = load i32* %33, align 4, !dbg !481, !tbaa !163
  %35 = mul nsw i32 %34, %jcol, !dbg !482
  %36 = add nsw i32 %35, %32, !dbg !483
  %37 = shl nsw i32 %36, 1, !dbg !484
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !89, metadata !114), !dbg !485
  %38 = sext i32 %37 to i64, !dbg !486
  %39 = getelementptr inbounds double* %14, i64 %38, !dbg !486
  store double %real, double* %39, align 8, !dbg !487, !tbaa !317
  %40 = or i32 %37, 1, !dbg !488
  %41 = sext i32 %40 to i64, !dbg !489
  %42 = getelementptr inbounds double* %14, i64 %41, !dbg !489
  store double %imag, double* %42, align 8, !dbg !490, !tbaa !317
  ret void, !dbg !491
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_pointerToRealEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !95, metadata !114), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !96, metadata !114), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !97, metadata !114), !dbg !494
  tail call void @llvm.dbg.value(metadata double** %ppValue, i64 0, metadata !98, metadata !114), !dbg !495
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !496
  %2 = icmp eq double** %ppValue, null, !dbg !498
  %or.cond = or i1 %1, %2, !dbg !499
  br i1 %or.cond, label %3, label %6, !dbg !499

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !500, !tbaa !121
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([64 x i8]* @.str33, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #4, !dbg !502
  tail call void @exit(i32 -1) #5, !dbg !503
  unreachable, !dbg !503

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !504
  %8 = load i32* %7, align 4, !dbg !504, !tbaa !204
  %9 = icmp eq i32 %8, 2, !dbg !504
  br i1 %9, label %13, label %10, !dbg !506

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !507, !tbaa !121
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([91 x i8]* @.str34, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %8) #4, !dbg !509
  tail call void @exit(i32 -1) #5, !dbg !510
  unreachable, !dbg !510

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !511
  %15 = load double** %14, align 8, !dbg !511, !tbaa !174
  %16 = icmp eq double* %15, null, !dbg !513
  br i1 %16, label %17, label %20, !dbg !514

; <label>:17                                      ; preds = %13
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !515, !tbaa !121
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([85 x i8]* @.str35, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #4, !dbg !517
  tail call void @exit(i32 -1) #5, !dbg !518
  unreachable, !dbg !518

; <label>:20                                      ; preds = %13
  %21 = icmp sgt i32 %irow, -1, !dbg !519
  %.phi.trans.insert3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre4 = load i32* %.phi.trans.insert3, align 4, !dbg !521, !tbaa !128
  %22 = icmp sgt i32 %.pre4, %irow, !dbg !523
  %or.cond6 = and i1 %21, %22, !dbg !524
  br i1 %or.cond6, label %25, label %._crit_edge2, !dbg !524

._crit_edge2:                                     ; preds = %20
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !525, !tbaa !121
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([84 x i8]* @.str36, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %irow, i32 %.pre4) #4, !dbg !526
  tail call void @exit(i32 -1) #5, !dbg !527
  unreachable, !dbg !527

; <label>:25                                      ; preds = %20
  %26 = icmp sgt i32 %jcol, -1, !dbg !528
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !530, !tbaa !141
  %27 = icmp sgt i32 %.pre, %jcol, !dbg !532
  %or.cond7 = and i1 %26, %27, !dbg !533
  br i1 %or.cond7, label %30, label %._crit_edge, !dbg !533

._crit_edge:                                      ; preds = %25
  %28 = load %struct.__sFILE** @__stderrp, align 8, !dbg !534, !tbaa !121
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([84 x i8]* @.str37, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %jcol, i32 %.pre) #4, !dbg !535
  tail call void @exit(i32 -1) #5, !dbg !536
  unreachable, !dbg !536

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !537
  %32 = load i32* %31, align 4, !dbg !537, !tbaa !152
  %33 = mul nsw i32 %32, %irow, !dbg !538
  %34 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !539
  %35 = load i32* %34, align 4, !dbg !539, !tbaa !163
  %36 = mul nsw i32 %35, %jcol, !dbg !540
  %37 = add nsw i32 %36, %33, !dbg !541
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !99, metadata !114), !dbg !542
  %38 = sext i32 %37 to i64, !dbg !543
  %39 = getelementptr inbounds double* %15, i64 %38, !dbg !543
  store double* %39, double** %ppValue, align 8, !dbg !544, !tbaa !121
  ret void, !dbg !545
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_pointerToComplexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !104, metadata !114), !dbg !546
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !105, metadata !114), !dbg !547
  tail call void @llvm.dbg.value(metadata i32 %jcol, i64 0, metadata !106, metadata !114), !dbg !548
  tail call void @llvm.dbg.value(metadata double** %ppReal, i64 0, metadata !107, metadata !114), !dbg !549
  tail call void @llvm.dbg.value(metadata double** %ppImag, i64 0, metadata !108, metadata !114), !dbg !550
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !551
  %2 = icmp eq double** %ppReal, null, !dbg !553
  %or.cond = or i1 %1, %2, !dbg !554
  %3 = icmp eq double** %ppImag, null, !dbg !555
  %or.cond3 = or i1 %or.cond, %3, !dbg !554
  br i1 %or.cond3, label %4, label %7, !dbg !554

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !556, !tbaa !121
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([70 x i8]* @.str38, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #4, !dbg !558
  tail call void @exit(i32 -1) #5, !dbg !559
  unreachable, !dbg !559

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !560
  %9 = load i32* %8, align 4, !dbg !560, !tbaa !204
  %10 = icmp eq i32 %9, 2, !dbg !560
  br i1 %10, label %14, label %11, !dbg !562

; <label>:11                                      ; preds = %7
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !563, !tbaa !121
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([97 x i8]* @.str39, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %9) #4, !dbg !565
  tail call void @exit(i32 -1) #5, !dbg !566
  unreachable, !dbg !566

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !567
  %16 = load double** %15, align 8, !dbg !567, !tbaa !174
  %17 = icmp eq double* %16, null, !dbg !569
  br i1 %17, label %18, label %21, !dbg !570

; <label>:18                                      ; preds = %14
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !571, !tbaa !121
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([91 x i8]* @.str40, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #4, !dbg !573
  tail call void @exit(i32 -1) #5, !dbg !574
  unreachable, !dbg !574

; <label>:21                                      ; preds = %14
  %22 = icmp sgt i32 %irow, -1, !dbg !575
  %.phi.trans.insert5 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre6 = load i32* %.phi.trans.insert5, align 4, !dbg !577, !tbaa !128
  %23 = icmp sgt i32 %.pre6, %irow, !dbg !579
  %or.cond8 = and i1 %22, %23, !dbg !580
  br i1 %or.cond8, label %26, label %._crit_edge4, !dbg !580

._crit_edge4:                                     ; preds = %21
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !581, !tbaa !121
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([90 x i8]* @.str41, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %irow, i32 %.pre6) #4, !dbg !582
  tail call void @exit(i32 -1) #5, !dbg !583
  unreachable, !dbg !583

; <label>:26                                      ; preds = %21
  %27 = icmp sgt i32 %jcol, -1, !dbg !584
  %.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !586, !tbaa !141
  %28 = icmp sgt i32 %.pre, %jcol, !dbg !588
  %or.cond9 = and i1 %27, %28, !dbg !589
  br i1 %or.cond9, label %31, label %._crit_edge, !dbg !589

._crit_edge:                                      ; preds = %26
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !590, !tbaa !121
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([90 x i8]* @.str42, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %jcol, i32 %.pre) #4, !dbg !591
  tail call void @exit(i32 -1) #5, !dbg !592
  unreachable, !dbg !592

; <label>:31                                      ; preds = %26
  %32 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !593
  %33 = load i32* %32, align 4, !dbg !593, !tbaa !152
  %34 = mul nsw i32 %33, %irow, !dbg !594
  %35 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !595
  %36 = load i32* %35, align 4, !dbg !595, !tbaa !163
  %37 = mul nsw i32 %36, %jcol, !dbg !596
  %38 = add nsw i32 %37, %34, !dbg !597
  %39 = shl nsw i32 %38, 1, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !109, metadata !114), !dbg !599
  %40 = sext i32 %39 to i64, !dbg !600
  %41 = getelementptr inbounds double* %16, i64 %40, !dbg !600
  store double* %41, double** %ppReal, align 8, !dbg !601, !tbaa !121
  %42 = load double** %15, align 8, !dbg !602, !tbaa !174
  %.sum = or i64 %40, 1, !dbg !603
  %43 = getelementptr inbounds double* %42, i64 %.sum, !dbg !603
  store double* %43, double** %ppImag, align 8, !dbg !604, !tbaa !121
  ret void, !dbg !605
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !26, !29, !32, !35, !40, !47, !52, !61, !71, !80, !90, !100}
!6 = !DISubprogram(name: "A2_nrow", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*)* @A2_nrow, variables: !24)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !12, line: 49, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !12, line: 41, size: 256, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 42, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !13, file: !12, line: 43, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !13, file: !12, line: 44, baseType: !9, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !13, file: !12, line: 45, baseType: !9, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !13, file: !12, line: 46, baseType: !9, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !13, file: !12, line: 47, baseType: !9, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !13, file: !12, line: 48, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!24 = !{!25}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 15, type: !10)
!26 = !DISubprogram(name: "A2_ncol", scope: !1, file: !1, line: 38, type: !7, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*)* @A2_ncol, variables: !27)
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !26, file: !1, line: 39, type: !10)
!29 = !DISubprogram(name: "A2_inc1", scope: !1, file: !1, line: 62, type: !7, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*)* @A2_inc1, variables: !30)
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !29, file: !1, line: 63, type: !10)
!32 = !DISubprogram(name: "A2_inc2", scope: !1, file: !1, line: 86, type: !7, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*)* @A2_inc2, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !32, file: !1, line: 87, type: !10)
!35 = !DISubprogram(name: "A2_entries", scope: !1, file: !1, line: 110, type: !36, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._A2*)* @A2_entries, variables: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!22, !10}
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !35, file: !1, line: 111, type: !10)
!40 = !DISubprogram(name: "A2_row", scope: !1, file: !1, line: 134, type: !41, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._A2*, i32)* @A2_row, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!22, !10, !9}
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !40, file: !1, line: 135, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !40, file: !1, line: 136, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !40, file: !1, line: 138, type: !22)
!47 = !DISubprogram(name: "A2_column", scope: !1, file: !1, line: 181, type: !41, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._A2*, i32)* @A2_column, variables: !48)
!48 = !{!49, !50, !51}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !47, file: !1, line: 182, type: !10)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 2, scope: !47, file: !1, line: 183, type: !9)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !47, file: !1, line: 185, type: !22)
!52 = !DISubprogram(name: "A2_realEntry", scope: !1, file: !1, line: 228, type: !53, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, double*)* @A2_realEntry, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !10, !9, !9, !22}
!55 = !{!56, !57, !58, !59, !60}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !52, file: !1, line: 229, type: !10)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !52, file: !1, line: 230, type: !9)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !52, file: !1, line: 231, type: !9)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pValue", arg: 4, scope: !52, file: !1, line: 232, type: !22)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !52, file: !1, line: 234, type: !9)
!61 = !DISubprogram(name: "A2_complexEntry", scope: !1, file: !1, line: 283, type: !62, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, double*, double*)* @A2_complexEntry, variables: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !10, !9, !9, !22, !22}
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !61, file: !1, line: 284, type: !10)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !61, file: !1, line: 285, type: !9)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !61, file: !1, line: 286, type: !9)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pReal", arg: 4, scope: !61, file: !1, line: 287, type: !22)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pImag", arg: 5, scope: !61, file: !1, line: 288, type: !22)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !61, file: !1, line: 290, type: !9)
!71 = !DISubprogram(name: "A2_setRealEntry", scope: !1, file: !1, line: 340, type: !72, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, double)* @A2_setRealEntry, variables: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !10, !9, !9, !23}
!74 = !{!75, !76, !77, !78, !79}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !71, file: !1, line: 341, type: !10)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !71, file: !1, line: 342, type: !9)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !71, file: !1, line: 343, type: !9)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 4, scope: !71, file: !1, line: 344, type: !23)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !71, file: !1, line: 346, type: !9)
!80 = !DISubprogram(name: "A2_setComplexEntry", scope: !1, file: !1, line: 400, type: !81, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, double, double)* @A2_setComplexEntry, variables: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !10, !9, !9, !23, !23}
!83 = !{!84, !85, !86, !87, !88, !89}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !80, file: !1, line: 401, type: !10)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !80, file: !1, line: 402, type: !9)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !80, file: !1, line: 403, type: !9)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 4, scope: !80, file: !1, line: 404, type: !23)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 5, scope: !80, file: !1, line: 405, type: !23)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !80, file: !1, line: 407, type: !9)
!90 = !DISubprogram(name: "A2_pointerToRealEntry", scope: !1, file: !1, line: 463, type: !91, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, double**)* @A2_pointerToRealEntry, variables: !94)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !10, !9, !9, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !90, file: !1, line: 464, type: !10)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !90, file: !1, line: 465, type: !9)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !90, file: !1, line: 466, type: !9)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ppValue", arg: 4, scope: !90, file: !1, line: 467, type: !93)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !90, file: !1, line: 469, type: !9)
!100 = !DISubprogram(name: "A2_pointerToComplexEntry", scope: !1, file: !1, line: 524, type: !101, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, double**, double**)* @A2_pointerToComplexEntry, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !10, !9, !9, !93, !93}
!103 = !{!104, !105, !106, !107, !108, !109}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !100, file: !1, line: 525, type: !10)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !100, file: !1, line: 526, type: !9)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jcol", arg: 3, scope: !100, file: !1, line: 527, type: !9)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ppReal", arg: 4, scope: !100, file: !1, line: 528, type: !93)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ppImag", arg: 5, scope: !100, file: !1, line: 529, type: !93)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !100, file: !1, line: 531, type: !9)
!110 = !{i32 2, !"Dwarf Version", i32 2}
!111 = !{i32 2, !"Debug Info Version", i32 700000003}
!112 = !{i32 1, !"PIC Level", i32 2}
!113 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!114 = !DIExpression()
!115 = !DILocation(line: 15, column: 10, scope: !6)
!116 = !DILocation(line: 22, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !6, file: !1, line: 22, column: 6)
!118 = !DILocation(line: 22, column: 6, scope: !6)
!119 = !DILocation(line: 23, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 22, column: 20)
!121 = !{!122, !122, i64 0}
!122 = !{!"any pointer", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !DILocation(line: 23, column: 4, scope: !120)
!126 = !DILocation(line: 25, column: 4, scope: !120)
!127 = !DILocation(line: 27, column: 13, scope: !6)
!128 = !{!129, !130, i64 4}
!129 = !{!"_A2", !130, i64 0, !130, i64 4, !130, i64 8, !130, i64 12, !130, i64 16, !130, i64 20, !122, i64 24}
!130 = !{!"int", !123, i64 0}
!131 = !DILocation(line: 27, column: 1, scope: !6)
!132 = !DILocation(line: 39, column: 10, scope: !26)
!133 = !DILocation(line: 46, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !26, file: !1, line: 46, column: 6)
!135 = !DILocation(line: 46, column: 6, scope: !26)
!136 = !DILocation(line: 47, column: 12, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 46, column: 20)
!138 = !DILocation(line: 47, column: 4, scope: !137)
!139 = !DILocation(line: 49, column: 4, scope: !137)
!140 = !DILocation(line: 51, column: 13, scope: !26)
!141 = !{!129, !130, i64 8}
!142 = !DILocation(line: 51, column: 1, scope: !26)
!143 = !DILocation(line: 63, column: 9, scope: !29)
!144 = !DILocation(line: 70, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !29, file: !1, line: 70, column: 7)
!146 = !DILocation(line: 70, column: 7, scope: !29)
!147 = !DILocation(line: 71, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 70, column: 21)
!149 = !DILocation(line: 71, column: 4, scope: !148)
!150 = !DILocation(line: 73, column: 4, scope: !148)
!151 = !DILocation(line: 75, column: 13, scope: !29)
!152 = !{!129, !130, i64 12}
!153 = !DILocation(line: 75, column: 1, scope: !29)
!154 = !DILocation(line: 87, column: 9, scope: !32)
!155 = !DILocation(line: 94, column: 11, scope: !156)
!156 = distinct !DILexicalBlock(scope: !32, file: !1, line: 94, column: 7)
!157 = !DILocation(line: 94, column: 7, scope: !32)
!158 = !DILocation(line: 95, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !1, line: 94, column: 21)
!160 = !DILocation(line: 95, column: 4, scope: !159)
!161 = !DILocation(line: 97, column: 4, scope: !159)
!162 = !DILocation(line: 99, column: 13, scope: !32)
!163 = !{!129, !130, i64 16}
!164 = !DILocation(line: 99, column: 1, scope: !32)
!165 = !DILocation(line: 111, column: 13, scope: !35)
!166 = !DILocation(line: 118, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !35, file: !1, line: 118, column: 7)
!168 = !DILocation(line: 118, column: 7, scope: !35)
!169 = !DILocation(line: 119, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 118, column: 21)
!171 = !DILocation(line: 119, column: 4, scope: !170)
!172 = !DILocation(line: 121, column: 4, scope: !170)
!173 = !DILocation(line: 123, column: 13, scope: !35)
!174 = !{!129, !122, i64 24}
!175 = !DILocation(line: 123, column: 1, scope: !35)
!176 = !DILocation(line: 135, column: 10, scope: !40)
!177 = !DILocation(line: 136, column: 10, scope: !40)
!178 = !DILocation(line: 144, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !40, file: !1, line: 144, column: 6)
!180 = !DILocation(line: 144, column: 6, scope: !40)
!181 = !DILocation(line: 145, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 144, column: 20)
!183 = !DILocation(line: 145, column: 4, scope: !182)
!184 = !DILocation(line: 147, column: 4, scope: !182)
!185 = !DILocation(line: 149, column: 11, scope: !186)
!186 = distinct !DILexicalBlock(scope: !40, file: !1, line: 149, column: 6)
!187 = !DILocation(line: 149, column: 19, scope: !186)
!188 = !DILocation(line: 149, column: 6, scope: !40)
!189 = !DILocation(line: 150, column: 12, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 149, column: 29)
!191 = !DILocation(line: 150, column: 4, scope: !190)
!192 = !DILocation(line: 152, column: 4, scope: !190)
!193 = !DILocation(line: 154, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !40, file: !1, line: 154, column: 6)
!195 = !DILocation(line: 157, column: 34, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !1, line: 154, column: 36)
!197 = !DILocation(line: 154, column: 23, scope: !194)
!198 = !DILocation(line: 154, column: 15, scope: !194)
!199 = !DILocation(line: 155, column: 12, scope: !196)
!200 = !DILocation(line: 155, column: 4, scope: !196)
!201 = !DILocation(line: 158, column: 4, scope: !196)
!202 = !DILocation(line: 160, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !40, file: !1, line: 160, column: 6)
!204 = !{!129, !130, i64 0}
!205 = !DILocation(line: 160, column: 6, scope: !40)
!206 = !DILocation(line: 161, column: 35, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 160, column: 24)
!208 = !DILocation(line: 161, column: 29, scope: !207)
!209 = !DILocation(line: 162, column: 1, scope: !207)
!210 = !DILocation(line: 163, column: 26, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 162, column: 34)
!212 = distinct !DILexicalBlock(scope: !203, file: !1, line: 162, column: 13)
!213 = !DILocation(line: 163, column: 37, scope: !211)
!214 = !DILocation(line: 163, column: 31, scope: !211)
!215 = !DILocation(line: 165, column: 12, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 164, column: 8)
!217 = !DILocation(line: 165, column: 4, scope: !216)
!218 = !DILocation(line: 168, column: 4, scope: !216)
!219 = !DILocation(line: 161, column: 23, scope: !207)
!220 = !DILocation(line: 170, column: 1, scope: !40)
!221 = !DILocation(line: 182, column: 10, scope: !47)
!222 = !DILocation(line: 183, column: 10, scope: !47)
!223 = !DILocation(line: 191, column: 10, scope: !224)
!224 = distinct !DILexicalBlock(scope: !47, file: !1, line: 191, column: 6)
!225 = !DILocation(line: 191, column: 6, scope: !47)
!226 = !DILocation(line: 192, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 191, column: 20)
!228 = !DILocation(line: 192, column: 4, scope: !227)
!229 = !DILocation(line: 194, column: 4, scope: !227)
!230 = !DILocation(line: 196, column: 11, scope: !231)
!231 = distinct !DILexicalBlock(scope: !47, file: !1, line: 196, column: 6)
!232 = !DILocation(line: 196, column: 19, scope: !231)
!233 = !DILocation(line: 196, column: 6, scope: !47)
!234 = !DILocation(line: 197, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !1, line: 196, column: 29)
!236 = !DILocation(line: 197, column: 4, scope: !235)
!237 = !DILocation(line: 199, column: 4, scope: !235)
!238 = !DILocation(line: 201, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !47, file: !1, line: 201, column: 6)
!240 = !DILocation(line: 204, column: 34, scope: !241)
!241 = distinct !DILexicalBlock(scope: !239, file: !1, line: 201, column: 36)
!242 = !DILocation(line: 201, column: 23, scope: !239)
!243 = !DILocation(line: 201, column: 15, scope: !239)
!244 = !DILocation(line: 202, column: 12, scope: !241)
!245 = !DILocation(line: 202, column: 4, scope: !241)
!246 = !DILocation(line: 205, column: 4, scope: !241)
!247 = !DILocation(line: 207, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !47, file: !1, line: 207, column: 6)
!249 = !DILocation(line: 207, column: 6, scope: !47)
!250 = !DILocation(line: 208, column: 35, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 207, column: 24)
!252 = !DILocation(line: 208, column: 29, scope: !251)
!253 = !DILocation(line: 209, column: 1, scope: !251)
!254 = !DILocation(line: 210, column: 26, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 209, column: 34)
!256 = distinct !DILexicalBlock(scope: !248, file: !1, line: 209, column: 13)
!257 = !DILocation(line: 210, column: 37, scope: !255)
!258 = !DILocation(line: 210, column: 31, scope: !255)
!259 = !DILocation(line: 212, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 211, column: 8)
!261 = !DILocation(line: 212, column: 4, scope: !260)
!262 = !DILocation(line: 215, column: 4, scope: !260)
!263 = !DILocation(line: 208, column: 23, scope: !251)
!264 = !DILocation(line: 217, column: 1, scope: !47)
!265 = !DILocation(line: 229, column: 14, scope: !52)
!266 = !DILocation(line: 230, column: 13, scope: !52)
!267 = !DILocation(line: 231, column: 13, scope: !52)
!268 = !DILocation(line: 232, column: 14, scope: !52)
!269 = !DILocation(line: 240, column: 10, scope: !270)
!270 = distinct !DILexicalBlock(scope: !52, file: !1, line: 240, column: 6)
!271 = !DILocation(line: 240, column: 28, scope: !270)
!272 = !DILocation(line: 240, column: 18, scope: !270)
!273 = !DILocation(line: 241, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 240, column: 38)
!275 = !DILocation(line: 241, column: 4, scope: !274)
!276 = !DILocation(line: 243, column: 4, scope: !274)
!277 = !DILocation(line: 245, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !52, file: !1, line: 245, column: 6)
!279 = !DILocation(line: 245, column: 6, scope: !52)
!280 = !DILocation(line: 246, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 245, column: 26)
!282 = !DILocation(line: 246, column: 4, scope: !281)
!283 = !DILocation(line: 249, column: 4, scope: !281)
!284 = !DILocation(line: 251, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !52, file: !1, line: 251, column: 6)
!286 = !DILocation(line: 251, column: 19, scope: !285)
!287 = !DILocation(line: 251, column: 6, scope: !52)
!288 = !DILocation(line: 252, column: 12, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !1, line: 251, column: 29)
!290 = !DILocation(line: 252, column: 4, scope: !289)
!291 = !DILocation(line: 255, column: 4, scope: !289)
!292 = !DILocation(line: 257, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !52, file: !1, line: 257, column: 6)
!294 = !DILocation(line: 260, column: 48, scope: !295)
!295 = distinct !DILexicalBlock(scope: !293, file: !1, line: 257, column: 36)
!296 = !DILocation(line: 257, column: 23, scope: !293)
!297 = !DILocation(line: 257, column: 15, scope: !293)
!298 = !DILocation(line: 258, column: 12, scope: !295)
!299 = !DILocation(line: 258, column: 4, scope: !295)
!300 = !DILocation(line: 261, column: 4, scope: !295)
!301 = !DILocation(line: 263, column: 11, scope: !302)
!302 = distinct !DILexicalBlock(scope: !52, file: !1, line: 263, column: 6)
!303 = !DILocation(line: 266, column: 48, scope: !304)
!304 = distinct !DILexicalBlock(scope: !302, file: !1, line: 263, column: 36)
!305 = !DILocation(line: 263, column: 23, scope: !302)
!306 = !DILocation(line: 263, column: 15, scope: !302)
!307 = !DILocation(line: 264, column: 12, scope: !304)
!308 = !DILocation(line: 264, column: 4, scope: !304)
!309 = !DILocation(line: 267, column: 4, scope: !304)
!310 = !DILocation(line: 269, column: 17, scope: !52)
!311 = !DILocation(line: 269, column: 11, scope: !52)
!312 = !DILocation(line: 269, column: 34, scope: !52)
!313 = !DILocation(line: 269, column: 28, scope: !52)
!314 = !DILocation(line: 269, column: 22, scope: !52)
!315 = !DILocation(line: 234, column: 7, scope: !52)
!316 = !DILocation(line: 270, column: 11, scope: !52)
!317 = !{!318, !318, i64 0}
!318 = !{!"double", !123, i64 0}
!319 = !DILocation(line: 270, column: 9, scope: !52)
!320 = !DILocation(line: 272, column: 1, scope: !52)
!321 = !DILocation(line: 284, column: 14, scope: !61)
!322 = !DILocation(line: 285, column: 13, scope: !61)
!323 = !DILocation(line: 286, column: 13, scope: !61)
!324 = !DILocation(line: 287, column: 14, scope: !61)
!325 = !DILocation(line: 288, column: 14, scope: !61)
!326 = !DILocation(line: 296, column: 10, scope: !327)
!327 = distinct !DILexicalBlock(scope: !61, file: !1, line: 296, column: 6)
!328 = !DILocation(line: 296, column: 27, scope: !327)
!329 = !DILocation(line: 296, column: 18, scope: !327)
!330 = !DILocation(line: 296, column: 44, scope: !327)
!331 = !DILocation(line: 297, column: 12, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !1, line: 296, column: 54)
!333 = !DILocation(line: 297, column: 4, scope: !332)
!334 = !DILocation(line: 299, column: 4, scope: !332)
!335 = !DILocation(line: 301, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !61, file: !1, line: 301, column: 6)
!337 = !DILocation(line: 301, column: 6, scope: !61)
!338 = !DILocation(line: 302, column: 12, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !1, line: 301, column: 29)
!340 = !DILocation(line: 302, column: 4, scope: !339)
!341 = !DILocation(line: 305, column: 4, scope: !339)
!342 = !DILocation(line: 307, column: 11, scope: !343)
!343 = distinct !DILexicalBlock(scope: !61, file: !1, line: 307, column: 6)
!344 = !DILocation(line: 307, column: 19, scope: !343)
!345 = !DILocation(line: 307, column: 6, scope: !61)
!346 = !DILocation(line: 308, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !1, line: 307, column: 29)
!348 = !DILocation(line: 308, column: 4, scope: !347)
!349 = !DILocation(line: 311, column: 4, scope: !347)
!350 = !DILocation(line: 313, column: 11, scope: !351)
!351 = distinct !DILexicalBlock(scope: !61, file: !1, line: 313, column: 6)
!352 = !DILocation(line: 316, column: 54, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !1, line: 313, column: 36)
!354 = !DILocation(line: 313, column: 23, scope: !351)
!355 = !DILocation(line: 313, column: 15, scope: !351)
!356 = !DILocation(line: 314, column: 12, scope: !353)
!357 = !DILocation(line: 314, column: 4, scope: !353)
!358 = !DILocation(line: 317, column: 4, scope: !353)
!359 = !DILocation(line: 319, column: 11, scope: !360)
!360 = distinct !DILexicalBlock(scope: !61, file: !1, line: 319, column: 6)
!361 = !DILocation(line: 322, column: 54, scope: !362)
!362 = distinct !DILexicalBlock(scope: !360, file: !1, line: 319, column: 36)
!363 = !DILocation(line: 319, column: 23, scope: !360)
!364 = !DILocation(line: 319, column: 15, scope: !360)
!365 = !DILocation(line: 320, column: 12, scope: !362)
!366 = !DILocation(line: 320, column: 4, scope: !362)
!367 = !DILocation(line: 323, column: 4, scope: !362)
!368 = !DILocation(line: 325, column: 20, scope: !61)
!369 = !DILocation(line: 325, column: 14, scope: !61)
!370 = !DILocation(line: 325, column: 37, scope: !61)
!371 = !DILocation(line: 325, column: 31, scope: !61)
!372 = !DILocation(line: 325, column: 25, scope: !61)
!373 = !DILocation(line: 325, column: 8, scope: !61)
!374 = !DILocation(line: 290, column: 7, scope: !61)
!375 = !DILocation(line: 326, column: 10, scope: !61)
!376 = !DILocation(line: 326, column: 8, scope: !61)
!377 = !DILocation(line: 327, column: 26, scope: !61)
!378 = !DILocation(line: 327, column: 10, scope: !61)
!379 = !DILocation(line: 327, column: 8, scope: !61)
!380 = !DILocation(line: 329, column: 1, scope: !61)
!381 = !DILocation(line: 341, column: 14, scope: !71)
!382 = !DILocation(line: 342, column: 13, scope: !71)
!383 = !DILocation(line: 343, column: 13, scope: !71)
!384 = !DILocation(line: 344, column: 13, scope: !71)
!385 = !DILocation(line: 352, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !71, file: !1, line: 352, column: 6)
!387 = !DILocation(line: 352, column: 6, scope: !71)
!388 = !DILocation(line: 353, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !1, line: 352, column: 20)
!390 = !DILocation(line: 353, column: 4, scope: !389)
!391 = !DILocation(line: 356, column: 4, scope: !389)
!392 = !DILocation(line: 358, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !71, file: !1, line: 358, column: 6)
!394 = !DILocation(line: 358, column: 6, scope: !71)
!395 = !DILocation(line: 359, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !1, line: 358, column: 26)
!397 = !DILocation(line: 359, column: 4, scope: !396)
!398 = !DILocation(line: 363, column: 4, scope: !396)
!399 = !DILocation(line: 365, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !71, file: !1, line: 365, column: 6)
!401 = !DILocation(line: 365, column: 19, scope: !400)
!402 = !DILocation(line: 365, column: 6, scope: !71)
!403 = !DILocation(line: 366, column: 12, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 365, column: 29)
!405 = !DILocation(line: 366, column: 4, scope: !404)
!406 = !DILocation(line: 370, column: 4, scope: !404)
!407 = !DILocation(line: 372, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !71, file: !1, line: 372, column: 6)
!409 = !DILocation(line: 376, column: 47, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !1, line: 372, column: 36)
!411 = !DILocation(line: 372, column: 23, scope: !408)
!412 = !DILocation(line: 372, column: 15, scope: !408)
!413 = !DILocation(line: 373, column: 12, scope: !410)
!414 = !DILocation(line: 373, column: 4, scope: !410)
!415 = !DILocation(line: 377, column: 4, scope: !410)
!416 = !DILocation(line: 379, column: 11, scope: !417)
!417 = distinct !DILexicalBlock(scope: !71, file: !1, line: 379, column: 6)
!418 = !DILocation(line: 383, column: 47, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !1, line: 379, column: 36)
!420 = !DILocation(line: 379, column: 23, scope: !417)
!421 = !DILocation(line: 379, column: 15, scope: !417)
!422 = !DILocation(line: 380, column: 12, scope: !419)
!423 = !DILocation(line: 380, column: 4, scope: !419)
!424 = !DILocation(line: 384, column: 4, scope: !419)
!425 = !DILocation(line: 386, column: 17, scope: !71)
!426 = !DILocation(line: 386, column: 11, scope: !71)
!427 = !DILocation(line: 386, column: 34, scope: !71)
!428 = !DILocation(line: 386, column: 28, scope: !71)
!429 = !DILocation(line: 386, column: 22, scope: !71)
!430 = !DILocation(line: 346, column: 7, scope: !71)
!431 = !DILocation(line: 387, column: 1, scope: !71)
!432 = !DILocation(line: 387, column: 19, scope: !71)
!433 = !DILocation(line: 389, column: 1, scope: !71)
!434 = !DILocation(line: 401, column: 14, scope: !80)
!435 = !DILocation(line: 402, column: 13, scope: !80)
!436 = !DILocation(line: 403, column: 13, scope: !80)
!437 = !DILocation(line: 404, column: 13, scope: !80)
!438 = !DILocation(line: 405, column: 13, scope: !80)
!439 = !DILocation(line: 413, column: 10, scope: !440)
!440 = distinct !DILexicalBlock(scope: !80, file: !1, line: 413, column: 6)
!441 = !DILocation(line: 413, column: 6, scope: !80)
!442 = !DILocation(line: 414, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 413, column: 20)
!444 = !DILocation(line: 414, column: 4, scope: !443)
!445 = !DILocation(line: 417, column: 4, scope: !443)
!446 = !DILocation(line: 419, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !80, file: !1, line: 419, column: 6)
!448 = !DILocation(line: 419, column: 6, scope: !80)
!449 = !DILocation(line: 420, column: 12, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 419, column: 29)
!451 = !DILocation(line: 420, column: 4, scope: !450)
!452 = !DILocation(line: 424, column: 4, scope: !450)
!453 = !DILocation(line: 426, column: 11, scope: !454)
!454 = distinct !DILexicalBlock(scope: !80, file: !1, line: 426, column: 6)
!455 = !DILocation(line: 426, column: 19, scope: !454)
!456 = !DILocation(line: 426, column: 6, scope: !80)
!457 = !DILocation(line: 427, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !1, line: 426, column: 29)
!459 = !DILocation(line: 427, column: 4, scope: !458)
!460 = !DILocation(line: 431, column: 4, scope: !458)
!461 = !DILocation(line: 433, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !80, file: !1, line: 433, column: 6)
!463 = !DILocation(line: 437, column: 52, scope: !464)
!464 = distinct !DILexicalBlock(scope: !462, file: !1, line: 433, column: 36)
!465 = !DILocation(line: 433, column: 23, scope: !462)
!466 = !DILocation(line: 433, column: 15, scope: !462)
!467 = !DILocation(line: 434, column: 12, scope: !464)
!468 = !DILocation(line: 434, column: 4, scope: !464)
!469 = !DILocation(line: 438, column: 4, scope: !464)
!470 = !DILocation(line: 440, column: 11, scope: !471)
!471 = distinct !DILexicalBlock(scope: !80, file: !1, line: 440, column: 6)
!472 = !DILocation(line: 444, column: 52, scope: !473)
!473 = distinct !DILexicalBlock(scope: !471, file: !1, line: 440, column: 36)
!474 = !DILocation(line: 440, column: 23, scope: !471)
!475 = !DILocation(line: 440, column: 15, scope: !471)
!476 = !DILocation(line: 441, column: 12, scope: !473)
!477 = !DILocation(line: 441, column: 4, scope: !473)
!478 = !DILocation(line: 445, column: 4, scope: !473)
!479 = !DILocation(line: 447, column: 20, scope: !80)
!480 = !DILocation(line: 447, column: 14, scope: !80)
!481 = !DILocation(line: 447, column: 37, scope: !80)
!482 = !DILocation(line: 447, column: 31, scope: !80)
!483 = !DILocation(line: 447, column: 25, scope: !80)
!484 = !DILocation(line: 447, column: 8, scope: !80)
!485 = !DILocation(line: 407, column: 7, scope: !80)
!486 = !DILocation(line: 448, column: 1, scope: !80)
!487 = !DILocation(line: 448, column: 21, scope: !80)
!488 = !DILocation(line: 449, column: 17, scope: !80)
!489 = !DILocation(line: 449, column: 1, scope: !80)
!490 = !DILocation(line: 449, column: 21, scope: !80)
!491 = !DILocation(line: 451, column: 1, scope: !80)
!492 = !DILocation(line: 464, column: 14, scope: !90)
!493 = !DILocation(line: 465, column: 13, scope: !90)
!494 = !DILocation(line: 466, column: 13, scope: !90)
!495 = !DILocation(line: 467, column: 15, scope: !90)
!496 = !DILocation(line: 475, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !90, file: !1, line: 475, column: 6)
!498 = !DILocation(line: 475, column: 29, scope: !497)
!499 = !DILocation(line: 475, column: 18, scope: !497)
!500 = !DILocation(line: 476, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !1, line: 475, column: 39)
!502 = !DILocation(line: 476, column: 4, scope: !501)
!503 = !DILocation(line: 479, column: 4, scope: !501)
!504 = !DILocation(line: 481, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !90, file: !1, line: 481, column: 6)
!506 = !DILocation(line: 481, column: 6, scope: !90)
!507 = !DILocation(line: 482, column: 12, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !1, line: 481, column: 29)
!509 = !DILocation(line: 482, column: 4, scope: !508)
!510 = !DILocation(line: 486, column: 4, scope: !508)
!511 = !DILocation(line: 488, column: 11, scope: !512)
!512 = distinct !DILexicalBlock(scope: !90, file: !1, line: 488, column: 6)
!513 = !DILocation(line: 488, column: 19, scope: !512)
!514 = !DILocation(line: 488, column: 6, scope: !90)
!515 = !DILocation(line: 489, column: 12, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 488, column: 29)
!517 = !DILocation(line: 489, column: 4, scope: !516)
!518 = !DILocation(line: 493, column: 4, scope: !516)
!519 = !DILocation(line: 495, column: 11, scope: !520)
!520 = distinct !DILexicalBlock(scope: !90, file: !1, line: 495, column: 6)
!521 = !DILocation(line: 499, column: 49, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !1, line: 495, column: 36)
!523 = !DILocation(line: 495, column: 23, scope: !520)
!524 = !DILocation(line: 495, column: 15, scope: !520)
!525 = !DILocation(line: 496, column: 12, scope: !522)
!526 = !DILocation(line: 496, column: 4, scope: !522)
!527 = !DILocation(line: 500, column: 4, scope: !522)
!528 = !DILocation(line: 502, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !90, file: !1, line: 502, column: 6)
!530 = !DILocation(line: 506, column: 49, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !1, line: 502, column: 36)
!532 = !DILocation(line: 502, column: 23, scope: !529)
!533 = !DILocation(line: 502, column: 15, scope: !529)
!534 = !DILocation(line: 503, column: 12, scope: !531)
!535 = !DILocation(line: 503, column: 4, scope: !531)
!536 = !DILocation(line: 507, column: 4, scope: !531)
!537 = !DILocation(line: 509, column: 17, scope: !90)
!538 = !DILocation(line: 509, column: 11, scope: !90)
!539 = !DILocation(line: 509, column: 34, scope: !90)
!540 = !DILocation(line: 509, column: 28, scope: !90)
!541 = !DILocation(line: 509, column: 22, scope: !90)
!542 = !DILocation(line: 469, column: 7, scope: !90)
!543 = !DILocation(line: 510, column: 25, scope: !90)
!544 = !DILocation(line: 510, column: 10, scope: !90)
!545 = !DILocation(line: 512, column: 1, scope: !90)
!546 = !DILocation(line: 525, column: 14, scope: !100)
!547 = !DILocation(line: 526, column: 13, scope: !100)
!548 = !DILocation(line: 527, column: 13, scope: !100)
!549 = !DILocation(line: 528, column: 15, scope: !100)
!550 = !DILocation(line: 529, column: 15, scope: !100)
!551 = !DILocation(line: 537, column: 10, scope: !552)
!552 = distinct !DILexicalBlock(scope: !100, file: !1, line: 537, column: 6)
!553 = !DILocation(line: 537, column: 28, scope: !552)
!554 = !DILocation(line: 537, column: 18, scope: !552)
!555 = !DILocation(line: 537, column: 46, scope: !552)
!556 = !DILocation(line: 538, column: 12, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !1, line: 537, column: 56)
!558 = !DILocation(line: 538, column: 4, scope: !557)
!559 = !DILocation(line: 541, column: 4, scope: !557)
!560 = !DILocation(line: 543, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !100, file: !1, line: 543, column: 6)
!562 = !DILocation(line: 543, column: 6, scope: !100)
!563 = !DILocation(line: 544, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !1, line: 543, column: 29)
!565 = !DILocation(line: 544, column: 4, scope: !564)
!566 = !DILocation(line: 548, column: 4, scope: !564)
!567 = !DILocation(line: 550, column: 11, scope: !568)
!568 = distinct !DILexicalBlock(scope: !100, file: !1, line: 550, column: 6)
!569 = !DILocation(line: 550, column: 19, scope: !568)
!570 = !DILocation(line: 550, column: 6, scope: !100)
!571 = !DILocation(line: 551, column: 12, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !1, line: 550, column: 29)
!573 = !DILocation(line: 551, column: 4, scope: !572)
!574 = !DILocation(line: 555, column: 4, scope: !572)
!575 = !DILocation(line: 557, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !100, file: !1, line: 557, column: 6)
!577 = !DILocation(line: 561, column: 56, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !1, line: 557, column: 36)
!579 = !DILocation(line: 557, column: 23, scope: !576)
!580 = !DILocation(line: 557, column: 15, scope: !576)
!581 = !DILocation(line: 558, column: 12, scope: !578)
!582 = !DILocation(line: 558, column: 4, scope: !578)
!583 = !DILocation(line: 562, column: 4, scope: !578)
!584 = !DILocation(line: 564, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !100, file: !1, line: 564, column: 6)
!586 = !DILocation(line: 568, column: 56, scope: !587)
!587 = distinct !DILexicalBlock(scope: !585, file: !1, line: 564, column: 36)
!588 = !DILocation(line: 564, column: 23, scope: !585)
!589 = !DILocation(line: 564, column: 15, scope: !585)
!590 = !DILocation(line: 565, column: 12, scope: !587)
!591 = !DILocation(line: 565, column: 4, scope: !587)
!592 = !DILocation(line: 569, column: 4, scope: !587)
!593 = !DILocation(line: 571, column: 20, scope: !100)
!594 = !DILocation(line: 571, column: 14, scope: !100)
!595 = !DILocation(line: 571, column: 37, scope: !100)
!596 = !DILocation(line: 571, column: 31, scope: !100)
!597 = !DILocation(line: 571, column: 25, scope: !100)
!598 = !DILocation(line: 571, column: 8, scope: !100)
!599 = !DILocation(line: 531, column: 7, scope: !100)
!600 = !DILocation(line: 572, column: 24, scope: !100)
!601 = !DILocation(line: 572, column: 9, scope: !100)
!602 = !DILocation(line: 573, column: 16, scope: !100)
!603 = !DILocation(line: 573, column: 30, scope: !100)
!604 = !DILocation(line: 573, column: 9, scope: !100)
!605 = !DILocation(line: 575, column: 1, scope: !100)
