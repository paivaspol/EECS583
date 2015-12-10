; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A bad input, nD = %d, nL = %d, nU = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [131 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A type = SPOOLES_REAL, invalid symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [154 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A type = SPOOLES_COMPLEX, invalid symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [97 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A invalid type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Chv_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Chv_setNbytesInWorkspace(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [74 x i8] c"\0A fatal error in Chv_setFields()\0A bad input, chv %p, nD %d, nL %d, nU %d\0A\00", align 1
@.str7 = private unnamed_addr constant [120 x i8] c"\0A fatal error in Chv_setFields()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str8 = private unnamed_addr constant [143 x i8] c"\0A fatal error in Chv_setFields()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str9 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_setFields()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [69 x i8] c"\0A fatal error in Chv_init()\0A bad input, chv %p, nD %d, nL %d, nU %d\0A\00", align 1
@.str11 = private unnamed_addr constant [115 x i8] c"\0A fatal error in Chv_init()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str12 = private unnamed_addr constant [138 x i8] c"\0A fatal error in Chv_init()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str13 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_init()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Chv_initWithPointers() \0A chv = %p, nD = %d, nL = %d, nU = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_init()\0A entries = %p, colind = %p, rowind = %p, symflag = %d\0A\00", align 1
@.str16 = private unnamed_addr constant [127 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str17 = private unnamed_addr constant [150 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str18 = private unnamed_addr constant [93 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str19 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Chv_initFromBuffer(%p) \0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Chv_nbytesNeeded(i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
  tail call void @llvm.dbg.value(metadata i32 %nD, i64 0, metadata !12, metadata !105), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %nL, i64 0, metadata !13, metadata !105), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %nU, i64 0, metadata !14, metadata !105), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !15, metadata !105), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %symflag, i64 0, metadata !16, metadata !105), !dbg !110
  %1 = or i32 %nL, %nD, !dbg !111
  %2 = or i32 %1, %nU, !dbg !111
  %3 = icmp slt i32 %2, 0, !dbg !111
  br i1 %3, label %4, label %7, !dbg !111

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !115
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i32 %nD, i32 %nL, i32 %nU) #5, !dbg !119
  tail call void @exit(i32 -1) #6, !dbg !120
  unreachable, !dbg !120

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !105), !dbg !121
  switch i32 %type, label %55 [
    i32 1, label %8
    i32 2, label %31
  ], !dbg !122

; <label>:8                                       ; preds = %7
  switch i32 %symflag, label %23 [
    i32 0, label %9
    i32 2, label %16
  ], !dbg !123

; <label>:9                                       ; preds = %8
  %10 = add nsw i32 %nD, 6, !dbg !125
  %11 = add nsw i32 %nD, 1, !dbg !127
  %12 = mul nsw i32 %11, %nD, !dbg !128
  %13 = sdiv i32 %12, 2, !dbg !129
  %14 = mul nsw i32 %nU, %nD, !dbg !130
  %15 = add nsw i32 %13, %14, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !18, metadata !105), !dbg !132
  br label %26, !dbg !133

; <label>:16                                      ; preds = %8
  %17 = shl i32 %nD, 1, !dbg !134
  %18 = add nsw i32 %17, 6, !dbg !135
  %19 = add nsw i32 %18, %nL, !dbg !136
  %20 = add nsw i32 %nL, %nD, !dbg !137
  %21 = add nsw i32 %20, %nU, !dbg !138
  %22 = mul nsw i32 %21, %nD, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !18, metadata !105), !dbg !132
  br label %26, !dbg !140

; <label>:23                                      ; preds = %8
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !141, !tbaa !115
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([131 x i8]* @.str1, i64 0, i64 0), i32 %symflag) #5, !dbg !142
  tail call void @exit(i32 -1) #6, !dbg !143
  unreachable, !dbg !143

; <label>:26                                      ; preds = %16, %9
  %nent.0 = phi i32 [ %22, %16 ], [ %15, %9 ]
  %.pn4 = phi i32 [ %19, %16 ], [ %10, %9 ]
  %nint.0 = add i32 %nU, 1, !dbg !144
  %27 = add i32 %nint.0, %.pn4, !dbg !145
  %28 = sdiv i32 %27, 2, !dbg !148
  %29 = add nsw i32 %28, %nent.0, !dbg !149
  %30 = shl i32 %29, 3, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !17, metadata !105), !dbg !121
  br label %58, !dbg !151

; <label>:31                                      ; preds = %7
  switch i32 %symflag, label %46 [
    i32 0, label %32
    i32 1, label %32
    i32 2, label %39
  ], !dbg !152

; <label>:32                                      ; preds = %31, %31
  %33 = add nsw i32 %nD, 6, !dbg !153
  %34 = add nsw i32 %nD, 1, !dbg !155
  %35 = mul nsw i32 %34, %nD, !dbg !156
  %36 = sdiv i32 %35, 2, !dbg !157
  %37 = mul nsw i32 %nU, %nD, !dbg !158
  %38 = add nsw i32 %36, %37, !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !18, metadata !105), !dbg !132
  br label %49, !dbg !160

; <label>:39                                      ; preds = %31
  %40 = shl i32 %nD, 1, !dbg !161
  %41 = add nsw i32 %40, 6, !dbg !162
  %42 = add nsw i32 %41, %nL, !dbg !163
  %43 = add nsw i32 %nL, %nD, !dbg !164
  %44 = add nsw i32 %43, %nU, !dbg !165
  %45 = mul nsw i32 %44, %nD, !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !18, metadata !105), !dbg !132
  br label %49, !dbg !167

; <label>:46                                      ; preds = %31
  %47 = load %struct.__sFILE** @__stderrp, align 8, !dbg !168, !tbaa !115
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %47, i8* getelementptr inbounds ([154 x i8]* @.str2, i64 0, i64 0), i32 %symflag) #5, !dbg !169
  tail call void @exit(i32 -1) #6, !dbg !170
  unreachable, !dbg !170

; <label>:49                                      ; preds = %39, %32
  %nent.1 = phi i32 [ %45, %39 ], [ %38, %32 ]
  %.pn = phi i32 [ %42, %39 ], [ %33, %32 ]
  %nint.1 = add i32 %nU, 1, !dbg !171
  %50 = add i32 %nint.1, %.pn, !dbg !172
  %51 = sdiv i32 %50, 2, !dbg !175
  %52 = shl i32 %nent.1, 1, !dbg !176
  %53 = add nsw i32 %51, %52, !dbg !177
  %54 = shl i32 %53, 3, !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !17, metadata !105), !dbg !121
  br label %58, !dbg !179

; <label>:55                                      ; preds = %7
  %56 = load %struct.__sFILE** @__stderrp, align 8, !dbg !180, !tbaa !115
  %57 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([97 x i8]* @.str3, i64 0, i64 0), i32 %type) #5, !dbg !181
  br label %58, !dbg !182

; <label>:58                                      ; preds = %55, %49, %26
  %nbytes.0 = phi i32 [ 0, %55 ], [ %54, %49 ], [ %30, %26 ]
  ret i32 %nbytes.0, !dbg !183
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !50, metadata !105), !dbg !184
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !185
  br i1 %1, label %2, label %5, !dbg !187

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !188, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._Chv* null) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !191
  unreachable, !dbg !191

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !192
  %7 = tail call i32 @DV_maxsize(%struct._DV* %6) #5, !dbg !193
  %8 = shl i32 %7, 3, !dbg !194
  ret i32 %8, !dbg !195
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_setNbytesInWorkspace(%struct._Chv* %chv, i32 %nbytes) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !55, metadata !105), !dbg !196
  tail call void @llvm.dbg.value(metadata i32 %nbytes, i64 0, metadata !56, metadata !105), !dbg !197
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !198
  br i1 %1, label %2, label %5, !dbg !200

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !201, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._Chv* null, i32 %nbytes) #5, !dbg !203
  tail call void @exit(i32 -1) #6, !dbg !204
  unreachable, !dbg !204

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !205
  %7 = sext i32 %nbytes to i64, !dbg !206
  %8 = lshr i64 %7, 3, !dbg !207
  %9 = trunc i64 %8 to i32, !dbg !206
  tail call void @DV_setSize(%struct._DV* %6, i32 %9) #5, !dbg !208
  ret void, !dbg !209
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_setFields(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !61, metadata !105), !dbg !210
  tail call void @llvm.dbg.value(metadata i32 %id, i64 0, metadata !62, metadata !105), !dbg !211
  tail call void @llvm.dbg.value(metadata i32 %nD, i64 0, metadata !63, metadata !105), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %nL, i64 0, metadata !64, metadata !105), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %nU, i64 0, metadata !65, metadata !105), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !66, metadata !105), !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %symflag, i64 0, metadata !67, metadata !105), !dbg !216
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !217
  %2 = icmp slt i32 %nD, 1, !dbg !219
  %or.cond = or i1 %1, %2, !dbg !220
  %3 = or i32 %nU, %nL, !dbg !220
  %4 = icmp slt i32 %3, 0, !dbg !220
  %5 = or i1 %or.cond, %4, !dbg !220
  br i1 %5, label %6, label %9, !dbg !220

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !221, !tbaa !115
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([74 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #5, !dbg !223
  tail call void @exit(i32 -1) #6, !dbg !224
  unreachable, !dbg !224

; <label>:9                                       ; preds = %0
  switch i32 %type, label %18 [
    i32 1, label %10
    i32 2, label %14
  ], !dbg !225

; <label>:10                                      ; preds = %9
  switch i32 %symflag, label %11 [
    i32 0, label %21
    i32 2, label %21
  ], !dbg !226

; <label>:11                                      ; preds = %10
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !228, !tbaa !115
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([120 x i8]* @.str7, i64 0, i64 0), i32 %symflag) #5, !dbg !230
  tail call void @exit(i32 -1) #6, !dbg !231
  unreachable, !dbg !231

; <label>:14                                      ; preds = %9
  %switch = icmp ult i32 %symflag, 3, !dbg !232
  br i1 %switch, label %21, label %15, !dbg !232

; <label>:15                                      ; preds = %14
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !233, !tbaa !115
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([143 x i8]* @.str8, i64 0, i64 0), i32 %symflag) #5, !dbg !235
  tail call void @exit(i32 -1) #6, !dbg !236
  unreachable, !dbg !236

; <label>:18                                      ; preds = %9
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !237, !tbaa !115
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([86 x i8]* @.str9, i64 0, i64 0), i32 %type) #5, !dbg !238
  tail call void @exit(i32 -1) #6, !dbg !239
  unreachable, !dbg !239

; <label>:21                                      ; preds = %14, %10, %10
  %22 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !240
  %23 = tail call double* @DV_entries(%struct._DV* %22) #5, !dbg !241
  tail call void @llvm.dbg.value(metadata double* %23, i64 0, metadata !68, metadata !105), !dbg !242
  %24 = bitcast double* %23 to i32*, !dbg !243
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !70, metadata !105), !dbg !244
  store i32 %id, i32* %24, align 4, !dbg !245, !tbaa !246
  %25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !248
  store i32 %id, i32* %25, align 4, !dbg !249, !tbaa !250
  %26 = getelementptr inbounds i32* %24, i64 1, !dbg !253
  store i32 %nD, i32* %26, align 4, !dbg !254, !tbaa !246
  %27 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !255
  store i32 %nD, i32* %27, align 4, !dbg !256, !tbaa !257
  %28 = getelementptr inbounds double* %23, i64 1, !dbg !258
  %29 = bitcast double* %28 to i32*, !dbg !258
  store i32 %nL, i32* %29, align 4, !dbg !259, !tbaa !246
  %30 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !260
  store i32 %nL, i32* %30, align 4, !dbg !261, !tbaa !262
  %31 = getelementptr inbounds i32* %24, i64 3, !dbg !263
  store i32 %nU, i32* %31, align 4, !dbg !264, !tbaa !246
  %32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !265
  store i32 %nU, i32* %32, align 4, !dbg !266, !tbaa !267
  %33 = getelementptr inbounds double* %23, i64 2, !dbg !268
  %34 = bitcast double* %33 to i32*, !dbg !268
  store i32 %type, i32* %34, align 4, !dbg !269, !tbaa !246
  %35 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !270
  store i32 %type, i32* %35, align 4, !dbg !271, !tbaa !272
  %36 = getelementptr inbounds i32* %24, i64 5, !dbg !273
  store i32 %symflag, i32* %36, align 4, !dbg !274, !tbaa !246
  %37 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !275
  store i32 %symflag, i32* %37, align 4, !dbg !276, !tbaa !277
  %38 = getelementptr inbounds double* %23, i64 3, !dbg !278
  %39 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !279
  %40 = bitcast i32** %39 to double**, !dbg !280
  store double* %38, double** %40, align 8, !dbg !280, !tbaa !281
  %41 = add nsw i32 %nD, 6, !dbg !282
  %42 = add nsw i32 %41, %nU, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !69, metadata !105), !dbg !284
  %43 = icmp eq i32 %symflag, 2, !dbg !285
  br i1 %43, label %44, label %51, !dbg !287

; <label>:44                                      ; preds = %21
  %45 = bitcast double* %38 to i32*, !dbg !278
  %46 = sext i32 %nD to i64, !dbg !288
  %47 = sext i32 %nU to i64, !dbg !290
  %.sum = add nsw i64 %47, %46, !dbg !290
  %48 = getelementptr inbounds i32* %45, i64 %.sum, !dbg !290
  %49 = add nsw i32 %nL, %nD, !dbg !291
  %50 = add nsw i32 %49, %42, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !69, metadata !105), !dbg !284
  br label %51, !dbg !293

; <label>:51                                      ; preds = %21, %44
  %.sink = phi i32* [ %48, %44 ], [ null, %21 ]
  %nint.0 = phi i32 [ %50, %44 ], [ %42, %21 ]
  %52 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !294
  store i32* %.sink, i32** %52, align 8
  %53 = add nsw i32 %nint.0, 1, !dbg !296
  %54 = sdiv i32 %53, 2, !dbg !300
  %55 = sext i32 %54 to i64, !dbg !301
  %56 = getelementptr inbounds double* %23, i64 %55, !dbg !301
  %57 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !302
  store double* %56, double** %57, align 8, !dbg !303, !tbaa !304
  ret void, !dbg !305
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_init(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !73, metadata !105), !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %id, i64 0, metadata !74, metadata !105), !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %nD, i64 0, metadata !75, metadata !105), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %nL, i64 0, metadata !76, metadata !105), !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %nU, i64 0, metadata !77, metadata !105), !dbg !310
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !78, metadata !105), !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %symflag, i64 0, metadata !79, metadata !105), !dbg !312
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !313
  %2 = icmp slt i32 %nD, 1, !dbg !315
  %or.cond = or i1 %1, %2, !dbg !316
  %3 = or i32 %nU, %nL, !dbg !316
  %4 = icmp slt i32 %3, 0, !dbg !316
  %5 = or i1 %or.cond, %4, !dbg !316
  br i1 %5, label %6, label %9, !dbg !316

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !317, !tbaa !115
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([69 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #5, !dbg !319
  tail call void @exit(i32 -1) #6, !dbg !320
  unreachable, !dbg !320

; <label>:9                                       ; preds = %0
  switch i32 %type, label %18 [
    i32 1, label %10
    i32 2, label %14
  ], !dbg !321

; <label>:10                                      ; preds = %9
  switch i32 %symflag, label %11 [
    i32 0, label %21
    i32 2, label %21
  ], !dbg !322

; <label>:11                                      ; preds = %10
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !324, !tbaa !115
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([115 x i8]* @.str11, i64 0, i64 0), i32 %symflag) #5, !dbg !326
  tail call void @exit(i32 -1) #6, !dbg !327
  unreachable, !dbg !327

; <label>:14                                      ; preds = %9
  %switch = icmp ult i32 %symflag, 3, !dbg !328
  br i1 %switch, label %21, label %15, !dbg !328

; <label>:15                                      ; preds = %14
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !329, !tbaa !115
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([138 x i8]* @.str12, i64 0, i64 0), i32 %symflag) #5, !dbg !331
  tail call void @exit(i32 -1) #6, !dbg !332
  unreachable, !dbg !332

; <label>:18                                      ; preds = %9
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !333, !tbaa !115
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([81 x i8]* @.str13, i64 0, i64 0), i32 %type) #5, !dbg !334
  tail call void @exit(i32 -1) #6, !dbg !335
  unreachable, !dbg !335

; <label>:21                                      ; preds = %14, %10, %10
  %22 = tail call i32 @Chv_nbytesNeeded(i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #7, !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !80, metadata !105), !dbg !337
  tail call void @Chv_setNbytesInWorkspace(%struct._Chv* %chv, i32 %22) #7, !dbg !338
  tail call void @Chv_setFields(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #7, !dbg !339
  ret void, !dbg !340
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_initWithPointers(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag, i32* %rowind, i32* %colind, double* %entries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !85, metadata !105), !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %id, i64 0, metadata !86, metadata !105), !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %nD, i64 0, metadata !87, metadata !105), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %nL, i64 0, metadata !88, metadata !105), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 %nU, i64 0, metadata !89, metadata !105), !dbg !345
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !90, metadata !105), !dbg !346
  tail call void @llvm.dbg.value(metadata i32 %symflag, i64 0, metadata !91, metadata !105), !dbg !347
  tail call void @llvm.dbg.value(metadata i32* %rowind, i64 0, metadata !92, metadata !105), !dbg !348
  tail call void @llvm.dbg.value(metadata i32* %colind, i64 0, metadata !93, metadata !105), !dbg !349
  tail call void @llvm.dbg.value(metadata double* %entries, i64 0, metadata !94, metadata !105), !dbg !350
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !351
  %2 = icmp slt i32 %nD, 1, !dbg !353
  %or.cond = or i1 %1, %2, !dbg !354
  %3 = or i32 %nU, %nL, !dbg !354
  %4 = icmp slt i32 %3, 0, !dbg !354
  %5 = or i1 %or.cond, %4, !dbg !354
  br i1 %5, label %6, label %9, !dbg !354

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !355, !tbaa !115
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #5, !dbg !357
  tail call void @exit(i32 -1) #6, !dbg !358
  unreachable, !dbg !358

; <label>:9                                       ; preds = %0
  %10 = icmp eq double* %entries, null, !dbg !359
  %11 = icmp eq i32* %colind, null, !dbg !361
  %or.cond7 = or i1 %11, %10, !dbg !362
  br i1 %or.cond7, label %15, label %12, !dbg !362

; <label>:12                                      ; preds = %9
  %13 = icmp eq i32 %symflag, 2, !dbg !363
  %14 = icmp eq i32* %rowind, null, !dbg !364
  %or.cond9 = and i1 %13, %14, !dbg !365
  br i1 %or.cond9, label %15, label %18, !dbg !365

; <label>:15                                      ; preds = %12, %9
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !366, !tbaa !115
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), double* %entries, i32* %colind, i32* %rowind, i32 %symflag) #5, !dbg !368
  tail call void @exit(i32 -1) #6, !dbg !369
  unreachable, !dbg !369

; <label>:18                                      ; preds = %12
  switch i32 %type, label %27 [
    i32 1, label %19
    i32 2, label %23
  ], !dbg !370

; <label>:19                                      ; preds = %18
  switch i32 %symflag, label %20 [
    i32 0, label %30
    i32 2, label %30
  ], !dbg !371

; <label>:20                                      ; preds = %19
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !373, !tbaa !115
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([127 x i8]* @.str16, i64 0, i64 0), i32 %symflag) #5, !dbg !375
  tail call void @exit(i32 -1) #6, !dbg !376
  unreachable, !dbg !376

; <label>:23                                      ; preds = %18
  %switch = icmp ult i32 %symflag, 3, !dbg !377
  br i1 %switch, label %30, label %24, !dbg !377

; <label>:24                                      ; preds = %23
  %25 = load %struct.__sFILE** @__stderrp, align 8, !dbg !378, !tbaa !115
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([150 x i8]* @.str17, i64 0, i64 0), i32 %symflag) #5, !dbg !380
  tail call void @exit(i32 -1) #6, !dbg !381
  unreachable, !dbg !381

; <label>:27                                      ; preds = %18
  %28 = load %struct.__sFILE** @__stderrp, align 8, !dbg !382, !tbaa !115
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([93 x i8]* @.str18, i64 0, i64 0), i32 %type) #5, !dbg !383
  tail call void @exit(i32 -1) #6, !dbg !384
  unreachable, !dbg !384

; <label>:30                                      ; preds = %23, %19, %19
  %31 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !385
  store i32 %id, i32* %31, align 4, !dbg !386, !tbaa !250
  %32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !387
  store i32 %nD, i32* %32, align 4, !dbg !388, !tbaa !257
  %33 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !389
  store i32 %nL, i32* %33, align 4, !dbg !390, !tbaa !262
  %34 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !391
  store i32 %nU, i32* %34, align 4, !dbg !392, !tbaa !267
  %35 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !393
  store i32 %type, i32* %35, align 4, !dbg !394, !tbaa !272
  %36 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !395
  store i32 %symflag, i32* %36, align 4, !dbg !396, !tbaa !277
  %37 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !397
  store double* %entries, double** %37, align 8, !dbg !398, !tbaa !304
  %38 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !399
  store i32* %colind, i32** %38, align 8, !dbg !400, !tbaa !281
  %39 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !401
  %rowind. = select i1 %13, i32* %rowind, i32* null, !dbg !404
  store i32* %rowind., i32** %39, align 8, !dbg !405, !tbaa !406
  ret void, !dbg !407
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_initFromBuffer(%struct._Chv* %chv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !99, metadata !105), !dbg !408
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !409
  br i1 %1, label %2, label %5, !dbg !411

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !412, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str19, i64 0, i64 0), %struct._Chv* null) #5, !dbg !414
  tail call void @exit(i32 -1) #6, !dbg !415
  unreachable, !dbg !415

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !416
  %7 = tail call double* @DV_entries(%struct._DV* %6) #5, !dbg !417
  %8 = bitcast double* %7 to i32*, !dbg !418
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !100, metadata !105), !dbg !419
  %9 = load i32* %8, align 4, !dbg !420, !tbaa !246
  %10 = getelementptr inbounds i32* %8, i64 1, !dbg !421
  %11 = load i32* %10, align 4, !dbg !421, !tbaa !246
  %12 = getelementptr inbounds double* %7, i64 1, !dbg !422
  %13 = bitcast double* %12 to i32*, !dbg !422
  %14 = load i32* %13, align 4, !dbg !422, !tbaa !246
  %15 = getelementptr inbounds i32* %8, i64 3, !dbg !423
  %16 = load i32* %15, align 4, !dbg !423, !tbaa !246
  %17 = getelementptr inbounds double* %7, i64 2, !dbg !424
  %18 = bitcast double* %17 to i32*, !dbg !424
  %19 = load i32* %18, align 4, !dbg !424, !tbaa !246
  %20 = getelementptr inbounds i32* %8, i64 5, !dbg !425
  %21 = load i32* %20, align 4, !dbg !425, !tbaa !246
  tail call void @Chv_setFields(%struct._Chv* %chv, i32 %9, i32 %11, i32 %14, i32 %16, i32 %19, i32 %21) #7, !dbg !426
  ret void, !dbg !427
}

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
!llvm.module.flags = !{!101, !102, !103}
!llvm.ident = !{!104}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8, !20, !51, !57, !71, !81, !95}
!8 = !DISubprogram(name: "Chv_nbytesNeeded", scope: !1, file: !1, line: 16, type: !9, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32, i32, i32)* @Chv_nbytesNeeded, variables: !11)
!9 = !DISubroutineType(types: !10)
!10 = !{!6, !6, !6, !6, !6, !6}
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nD", arg: 1, scope: !8, file: !1, line: 17, type: !6)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nL", arg: 2, scope: !8, file: !1, line: 18, type: !6)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nU", arg: 3, scope: !8, file: !1, line: 19, type: !6)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 4, scope: !8, file: !1, line: 20, type: !6)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symflag", arg: 5, scope: !8, file: !1, line: 21, type: !6)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !8, file: !1, line: 23, type: !6)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !8, file: !1, line: 23, type: !6)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nint", scope: !8, file: !1, line: 23, type: !6)
!20 = !DISubprogram(name: "Chv_nbytesInWorkspace", scope: !1, file: !1, line: 125, type: !21, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Chv*)* @Chv_nbytesInWorkspace, variables: !49)
!21 = !DISubroutineType(types: !22)
!22 = !{!6, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !25, line: 30, baseType: !26)
!25 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !25, line: 31, size: 640, align: 64, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !48}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !26, file: !25, line: 32, baseType: !6, size: 32, align: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !26, file: !25, line: 33, baseType: !6, size: 32, align: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !26, file: !25, line: 34, baseType: !6, size: 32, align: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !26, file: !25, line: 35, baseType: !6, size: 32, align: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 36, baseType: !6, size: 32, align: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !26, file: !25, line: 37, baseType: !6, size: 32, align: 32, offset: 160)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !26, file: !25, line: 38, baseType: !5, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !26, file: !25, line: 39, baseType: !5, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !26, file: !25, line: 40, baseType: !37, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !26, file: !25, line: 41, baseType: !40, size: 192, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !41, line: 20, baseType: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !41, line: 21, size: 192, align: 64, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !42, file: !41, line: 22, baseType: !6, size: 32, align: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !42, file: !41, line: 23, baseType: !6, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !42, file: !41, line: 24, baseType: !6, size: 32, align: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !42, file: !41, line: 25, baseType: !37, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !25, line: 42, baseType: !23, size: 64, align: 64, offset: 576)
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !20, file: !1, line: 126, type: !23)
!51 = !DISubprogram(name: "Chv_setNbytesInWorkspace", scope: !1, file: !1, line: 144, type: !52, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*, i32)* @Chv_setNbytesInWorkspace, variables: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !23, !6}
!54 = !{!55, !56}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !51, file: !1, line: 145, type: !23)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 2, scope: !51, file: !1, line: 146, type: !6)
!57 = !DISubprogram(name: "Chv_setFields", scope: !1, file: !1, line: 166, type: !58, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*, i32, i32, i32, i32, i32, i32)* @Chv_setFields, variables: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !23, !6, !6, !6, !6, !6, !6}
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !57, file: !1, line: 167, type: !23)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "id", arg: 2, scope: !57, file: !1, line: 168, type: !6)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nD", arg: 3, scope: !57, file: !1, line: 169, type: !6)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nL", arg: 4, scope: !57, file: !1, line: 170, type: !6)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nU", arg: 5, scope: !57, file: !1, line: 171, type: !6)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 6, scope: !57, file: !1, line: 172, type: !6)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symflag", arg: 7, scope: !57, file: !1, line: 173, type: !6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dbuffer", scope: !57, file: !1, line: 175, type: !37)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nint", scope: !57, file: !1, line: 176, type: !6)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuffer", scope: !57, file: !1, line: 177, type: !5)
!71 = !DISubprogram(name: "Chv_init", scope: !1, file: !1, line: 270, type: !58, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*, i32, i32, i32, i32, i32, i32)* @Chv_init, variables: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !71, file: !1, line: 271, type: !23)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "id", arg: 2, scope: !71, file: !1, line: 272, type: !6)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nD", arg: 3, scope: !71, file: !1, line: 273, type: !6)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nL", arg: 4, scope: !71, file: !1, line: 274, type: !6)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nU", arg: 5, scope: !71, file: !1, line: 275, type: !6)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 6, scope: !71, file: !1, line: 276, type: !6)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symflag", arg: 7, scope: !71, file: !1, line: 277, type: !6)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !71, file: !1, line: 279, type: !6)
!81 = !DISubprogram(name: "Chv_initWithPointers", scope: !1, file: !1, line: 356, type: !82, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*, i32, i32, i32, i32, i32, i32, i32*, i32*, double*)* @Chv_initWithPointers, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !23, !6, !6, !6, !6, !6, !6, !5, !5, !37}
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !81, file: !1, line: 357, type: !23)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "id", arg: 2, scope: !81, file: !1, line: 358, type: !6)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nD", arg: 3, scope: !81, file: !1, line: 359, type: !6)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nL", arg: 4, scope: !81, file: !1, line: 360, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nU", arg: 5, scope: !81, file: !1, line: 361, type: !6)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 6, scope: !81, file: !1, line: 362, type: !6)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symflag", arg: 7, scope: !81, file: !1, line: 363, type: !6)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowind", arg: 8, scope: !81, file: !1, line: 364, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colind", arg: 9, scope: !81, file: !1, line: 365, type: !5)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entries", arg: 10, scope: !81, file: !1, line: 366, type: !37)
!95 = !DISubprogram(name: "Chv_initFromBuffer", scope: !1, file: !1, line: 462, type: !96, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*)* @Chv_initFromBuffer, variables: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !23}
!98 = !{!99, !100}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !95, file: !1, line: 463, type: !23)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuffer", scope: !95, file: !1, line: 465, type: !5)
!101 = !{i32 2, !"Dwarf Version", i32 2}
!102 = !{i32 2, !"Debug Info Version", i32 700000003}
!103 = !{i32 1, !"PIC Level", i32 2}
!104 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!105 = !DIExpression()
!106 = !DILocation(line: 17, column: 10, scope: !8)
!107 = !DILocation(line: 18, column: 10, scope: !8)
!108 = !DILocation(line: 19, column: 10, scope: !8)
!109 = !DILocation(line: 20, column: 10, scope: !8)
!110 = !DILocation(line: 21, column: 10, scope: !8)
!111 = !DILocation(line: 29, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !8, file: !1, line: 29, column: 6)
!113 = !DILocation(line: 30, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !112, file: !1, line: 29, column: 35)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !DILocation(line: 30, column: 4, scope: !114)
!120 = !DILocation(line: 32, column: 4, scope: !114)
!121 = !DILocation(line: 23, column: 7, scope: !8)
!122 = !DILocation(line: 35, column: 1, scope: !8)
!123 = !DILocation(line: 37, column: 4, scope: !124)
!124 = distinct !DILexicalBlock(scope: !8, file: !1, line: 35, column: 17)
!125 = !DILocation(line: 39, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !1, line: 37, column: 23)
!127 = !DILocation(line: 40, column: 21, scope: !126)
!128 = !DILocation(line: 40, column: 17, scope: !126)
!129 = !DILocation(line: 40, column: 25, scope: !126)
!130 = !DILocation(line: 40, column: 32, scope: !126)
!131 = !DILocation(line: 40, column: 28, scope: !126)
!132 = !DILocation(line: 23, column: 15, scope: !8)
!133 = !DILocation(line: 41, column: 7, scope: !126)
!134 = !DILocation(line: 43, column: 19, scope: !126)
!135 = !DILocation(line: 43, column: 16, scope: !126)
!136 = !DILocation(line: 43, column: 23, scope: !126)
!137 = !DILocation(line: 44, column: 21, scope: !126)
!138 = !DILocation(line: 44, column: 26, scope: !126)
!139 = !DILocation(line: 44, column: 16, scope: !126)
!140 = !DILocation(line: 45, column: 7, scope: !126)
!141 = !DILocation(line: 47, column: 15, scope: !126)
!142 = !DILocation(line: 47, column: 7, scope: !126)
!143 = !DILocation(line: 52, column: 7, scope: !126)
!144 = !DILocation(line: 43, column: 28, scope: !126)
!145 = !DILocation(line: 55, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 54, column: 43)
!147 = distinct !DILexicalBlock(scope: !124, file: !1, line: 54, column: 9)
!148 = !DILocation(line: 55, column: 27, scope: !146)
!149 = !DILocation(line: 55, column: 30, scope: !146)
!150 = !DILocation(line: 55, column: 37, scope: !146)
!151 = !DILocation(line: 69, column: 4, scope: !124)
!152 = !DILocation(line: 71, column: 4, scope: !124)
!153 = !DILocation(line: 74, column: 16, scope: !154)
!154 = distinct !DILexicalBlock(scope: !124, file: !1, line: 71, column: 23)
!155 = !DILocation(line: 75, column: 21, scope: !154)
!156 = !DILocation(line: 75, column: 17, scope: !154)
!157 = !DILocation(line: 75, column: 25, scope: !154)
!158 = !DILocation(line: 75, column: 32, scope: !154)
!159 = !DILocation(line: 75, column: 28, scope: !154)
!160 = !DILocation(line: 76, column: 7, scope: !154)
!161 = !DILocation(line: 78, column: 19, scope: !154)
!162 = !DILocation(line: 78, column: 16, scope: !154)
!163 = !DILocation(line: 78, column: 23, scope: !154)
!164 = !DILocation(line: 79, column: 21, scope: !154)
!165 = !DILocation(line: 79, column: 26, scope: !154)
!166 = !DILocation(line: 79, column: 16, scope: !154)
!167 = !DILocation(line: 80, column: 7, scope: !154)
!168 = !DILocation(line: 82, column: 15, scope: !154)
!169 = !DILocation(line: 82, column: 7, scope: !154)
!170 = !DILocation(line: 88, column: 7, scope: !154)
!171 = !DILocation(line: 78, column: 28, scope: !154)
!172 = !DILocation(line: 91, column: 23, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 90, column: 43)
!174 = distinct !DILexicalBlock(scope: !124, file: !1, line: 90, column: 9)
!175 = !DILocation(line: 91, column: 27, scope: !173)
!176 = !DILocation(line: 91, column: 33, scope: !173)
!177 = !DILocation(line: 91, column: 30, scope: !173)
!178 = !DILocation(line: 91, column: 39, scope: !173)
!179 = !DILocation(line: 105, column: 4, scope: !124)
!180 = !DILocation(line: 107, column: 12, scope: !124)
!181 = !DILocation(line: 107, column: 4, scope: !124)
!182 = !DILocation(line: 112, column: 4, scope: !124)
!183 = !DILocation(line: 114, column: 1, scope: !8)
!184 = !DILocation(line: 126, column: 11, scope: !20)
!185 = !DILocation(line: 128, column: 10, scope: !186)
!186 = distinct !DILexicalBlock(scope: !20, file: !1, line: 128, column: 6)
!187 = !DILocation(line: 128, column: 6, scope: !20)
!188 = !DILocation(line: 129, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 128, column: 20)
!190 = !DILocation(line: 129, column: 4, scope: !189)
!191 = !DILocation(line: 131, column: 4, scope: !189)
!192 = !DILocation(line: 133, column: 40, scope: !20)
!193 = !DILocation(line: 133, column: 23, scope: !20)
!194 = !DILocation(line: 133, column: 22, scope: !20)
!195 = !DILocation(line: 133, column: 1, scope: !20)
!196 = !DILocation(line: 145, column: 11, scope: !51)
!197 = !DILocation(line: 146, column: 11, scope: !51)
!198 = !DILocation(line: 148, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !51, file: !1, line: 148, column: 6)
!200 = !DILocation(line: 148, column: 6, scope: !51)
!201 = !DILocation(line: 149, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 148, column: 20)
!203 = !DILocation(line: 149, column: 4, scope: !202)
!204 = !DILocation(line: 151, column: 4, scope: !202)
!205 = !DILocation(line: 153, column: 18, scope: !51)
!206 = !DILocation(line: 153, column: 25, scope: !51)
!207 = !DILocation(line: 153, column: 31, scope: !51)
!208 = !DILocation(line: 153, column: 1, scope: !51)
!209 = !DILocation(line: 155, column: 1, scope: !51)
!210 = !DILocation(line: 167, column: 13, scope: !57)
!211 = !DILocation(line: 168, column: 13, scope: !57)
!212 = !DILocation(line: 169, column: 13, scope: !57)
!213 = !DILocation(line: 170, column: 13, scope: !57)
!214 = !DILocation(line: 171, column: 13, scope: !57)
!215 = !DILocation(line: 172, column: 13, scope: !57)
!216 = !DILocation(line: 173, column: 13, scope: !57)
!217 = !DILocation(line: 183, column: 11, scope: !218)
!218 = distinct !DILexicalBlock(scope: !57, file: !1, line: 183, column: 7)
!219 = !DILocation(line: 183, column: 25, scope: !218)
!220 = !DILocation(line: 183, column: 19, scope: !218)
!221 = !DILocation(line: 184, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 183, column: 52)
!223 = !DILocation(line: 184, column: 4, scope: !222)
!224 = !DILocation(line: 187, column: 4, scope: !222)
!225 = !DILocation(line: 189, column: 1, scope: !57)
!226 = !DILocation(line: 191, column: 4, scope: !227)
!227 = distinct !DILexicalBlock(scope: !57, file: !1, line: 189, column: 17)
!228 = !DILocation(line: 196, column: 15, scope: !229)
!229 = distinct !DILexicalBlock(scope: !227, file: !1, line: 191, column: 23)
!230 = !DILocation(line: 196, column: 7, scope: !229)
!231 = !DILocation(line: 201, column: 7, scope: !229)
!232 = !DILocation(line: 205, column: 4, scope: !227)
!233 = !DILocation(line: 211, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !227, file: !1, line: 205, column: 23)
!235 = !DILocation(line: 211, column: 7, scope: !234)
!236 = !DILocation(line: 217, column: 7, scope: !234)
!237 = !DILocation(line: 221, column: 12, scope: !227)
!238 = !DILocation(line: 221, column: 4, scope: !227)
!239 = !DILocation(line: 226, column: 4, scope: !227)
!240 = !DILocation(line: 228, column: 28, scope: !57)
!241 = !DILocation(line: 228, column: 11, scope: !57)
!242 = !DILocation(line: 175, column: 11, scope: !57)
!243 = !DILocation(line: 229, column: 11, scope: !57)
!244 = !DILocation(line: 177, column: 11, scope: !57)
!245 = !DILocation(line: 235, column: 27, scope: !57)
!246 = !{!247, !247, i64 0}
!247 = !{!"int", !117, i64 0}
!248 = !DILocation(line: 235, column: 6, scope: !57)
!249 = !DILocation(line: 235, column: 14, scope: !57)
!250 = !{!251, !247, i64 0}
!251 = !{!"_Chv", !247, i64 0, !247, i64 4, !247, i64 8, !247, i64 12, !247, i64 16, !247, i64 20, !116, i64 24, !116, i64 32, !116, i64 40, !252, i64 48, !116, i64 72}
!252 = !{!"_DV", !247, i64 0, !247, i64 4, !247, i64 8, !116, i64 16}
!253 = !DILocation(line: 236, column: 16, scope: !57)
!254 = !DILocation(line: 236, column: 27, scope: !57)
!255 = !DILocation(line: 236, column: 6, scope: !57)
!256 = !DILocation(line: 236, column: 14, scope: !57)
!257 = !{!251, !247, i64 4}
!258 = !DILocation(line: 237, column: 16, scope: !57)
!259 = !DILocation(line: 237, column: 27, scope: !57)
!260 = !DILocation(line: 237, column: 6, scope: !57)
!261 = !DILocation(line: 237, column: 14, scope: !57)
!262 = !{!251, !247, i64 8}
!263 = !DILocation(line: 238, column: 16, scope: !57)
!264 = !DILocation(line: 238, column: 27, scope: !57)
!265 = !DILocation(line: 238, column: 6, scope: !57)
!266 = !DILocation(line: 238, column: 14, scope: !57)
!267 = !{!251, !247, i64 12}
!268 = !DILocation(line: 239, column: 16, scope: !57)
!269 = !DILocation(line: 239, column: 27, scope: !57)
!270 = !DILocation(line: 239, column: 6, scope: !57)
!271 = !DILocation(line: 239, column: 14, scope: !57)
!272 = !{!251, !247, i64 16}
!273 = !DILocation(line: 240, column: 16, scope: !57)
!274 = !DILocation(line: 240, column: 27, scope: !57)
!275 = !DILocation(line: 240, column: 6, scope: !57)
!276 = !DILocation(line: 240, column: 14, scope: !57)
!277 = !{!251, !247, i64 20}
!278 = !DILocation(line: 246, column: 23, scope: !57)
!279 = !DILocation(line: 246, column: 6, scope: !57)
!280 = !DILocation(line: 246, column: 13, scope: !57)
!281 = !{!251, !116, i64 32}
!282 = !DILocation(line: 247, column: 10, scope: !57)
!283 = !DILocation(line: 247, column: 15, scope: !57)
!284 = !DILocation(line: 176, column: 10, scope: !57)
!285 = !DILocation(line: 248, column: 14, scope: !286)
!286 = distinct !DILexicalBlock(scope: !57, file: !1, line: 248, column: 6)
!287 = !DILocation(line: 248, column: 6, scope: !57)
!288 = !DILocation(line: 249, column: 30, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !1, line: 248, column: 40)
!290 = !DILocation(line: 249, column: 35, scope: !289)
!291 = !DILocation(line: 250, column: 15, scope: !289)
!292 = !DILocation(line: 250, column: 9, scope: !289)
!293 = !DILocation(line: 251, column: 1, scope: !289)
!294 = !DILocation(line: 252, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !286, file: !1, line: 251, column: 8)
!296 = !DILocation(line: 257, column: 35, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 256, column: 47)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 256, column: 13)
!299 = distinct !DILexicalBlock(scope: !57, file: !1, line: 254, column: 6)
!300 = !DILocation(line: 257, column: 39, scope: !297)
!301 = !DILocation(line: 257, column: 27, scope: !297)
!302 = !DILocation(line: 257, column: 9, scope: !297)
!303 = !DILocation(line: 257, column: 17, scope: !297)
!304 = !{!251, !116, i64 40}
!305 = !DILocation(line: 259, column: 1, scope: !57)
!306 = !DILocation(line: 271, column: 13, scope: !71)
!307 = !DILocation(line: 272, column: 13, scope: !71)
!308 = !DILocation(line: 273, column: 13, scope: !71)
!309 = !DILocation(line: 274, column: 13, scope: !71)
!310 = !DILocation(line: 275, column: 13, scope: !71)
!311 = !DILocation(line: 276, column: 13, scope: !71)
!312 = !DILocation(line: 277, column: 13, scope: !71)
!313 = !DILocation(line: 285, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !71, file: !1, line: 285, column: 7)
!315 = !DILocation(line: 285, column: 25, scope: !314)
!316 = !DILocation(line: 285, column: 19, scope: !314)
!317 = !DILocation(line: 286, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 285, column: 52)
!319 = !DILocation(line: 286, column: 4, scope: !318)
!320 = !DILocation(line: 290, column: 4, scope: !318)
!321 = !DILocation(line: 292, column: 1, scope: !71)
!322 = !DILocation(line: 294, column: 4, scope: !323)
!323 = distinct !DILexicalBlock(scope: !71, file: !1, line: 292, column: 17)
!324 = !DILocation(line: 299, column: 15, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !1, line: 294, column: 23)
!326 = !DILocation(line: 299, column: 7, scope: !325)
!327 = !DILocation(line: 304, column: 7, scope: !325)
!328 = !DILocation(line: 308, column: 4, scope: !323)
!329 = !DILocation(line: 314, column: 15, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !1, line: 308, column: 23)
!331 = !DILocation(line: 314, column: 7, scope: !330)
!332 = !DILocation(line: 320, column: 7, scope: !330)
!333 = !DILocation(line: 324, column: 12, scope: !323)
!334 = !DILocation(line: 324, column: 4, scope: !323)
!335 = !DILocation(line: 329, column: 4, scope: !323)
!336 = !DILocation(line: 336, column: 10, scope: !71)
!337 = !DILocation(line: 279, column: 10, scope: !71)
!338 = !DILocation(line: 337, column: 1, scope: !71)
!339 = !DILocation(line: 343, column: 1, scope: !71)
!340 = !DILocation(line: 345, column: 1, scope: !71)
!341 = !DILocation(line: 357, column: 14, scope: !81)
!342 = !DILocation(line: 358, column: 13, scope: !81)
!343 = !DILocation(line: 359, column: 13, scope: !81)
!344 = !DILocation(line: 360, column: 13, scope: !81)
!345 = !DILocation(line: 361, column: 13, scope: !81)
!346 = !DILocation(line: 362, column: 13, scope: !81)
!347 = !DILocation(line: 363, column: 13, scope: !81)
!348 = !DILocation(line: 364, column: 14, scope: !81)
!349 = !DILocation(line: 365, column: 14, scope: !81)
!350 = !DILocation(line: 366, column: 14, scope: !81)
!351 = !DILocation(line: 373, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !81, file: !1, line: 373, column: 7)
!353 = !DILocation(line: 373, column: 25, scope: !352)
!354 = !DILocation(line: 373, column: 19, scope: !352)
!355 = !DILocation(line: 374, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 373, column: 52)
!357 = !DILocation(line: 374, column: 4, scope: !356)
!358 = !DILocation(line: 378, column: 4, scope: !356)
!359 = !DILocation(line: 380, column: 15, scope: !360)
!360 = distinct !DILexicalBlock(scope: !81, file: !1, line: 380, column: 7)
!361 = !DILocation(line: 380, column: 33, scope: !360)
!362 = !DILocation(line: 380, column: 23, scope: !360)
!363 = !DILocation(line: 381, column: 16, scope: !360)
!364 = !DILocation(line: 381, column: 50, scope: !360)
!365 = !DILocation(line: 381, column: 40, scope: !360)
!366 = !DILocation(line: 382, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !1, line: 381, column: 61)
!368 = !DILocation(line: 382, column: 4, scope: !367)
!369 = !DILocation(line: 386, column: 4, scope: !367)
!370 = !DILocation(line: 388, column: 1, scope: !81)
!371 = !DILocation(line: 390, column: 4, scope: !372)
!372 = distinct !DILexicalBlock(scope: !81, file: !1, line: 388, column: 17)
!373 = !DILocation(line: 395, column: 15, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !1, line: 390, column: 23)
!375 = !DILocation(line: 395, column: 7, scope: !374)
!376 = !DILocation(line: 400, column: 7, scope: !374)
!377 = !DILocation(line: 404, column: 4, scope: !372)
!378 = !DILocation(line: 410, column: 15, scope: !379)
!379 = distinct !DILexicalBlock(scope: !372, file: !1, line: 404, column: 23)
!380 = !DILocation(line: 410, column: 7, scope: !379)
!381 = !DILocation(line: 416, column: 7, scope: !379)
!382 = !DILocation(line: 420, column: 12, scope: !372)
!383 = !DILocation(line: 420, column: 4, scope: !372)
!384 = !DILocation(line: 425, column: 4, scope: !372)
!385 = !DILocation(line: 432, column: 6, scope: !81)
!386 = !DILocation(line: 432, column: 14, scope: !81)
!387 = !DILocation(line: 433, column: 6, scope: !81)
!388 = !DILocation(line: 433, column: 14, scope: !81)
!389 = !DILocation(line: 434, column: 6, scope: !81)
!390 = !DILocation(line: 434, column: 14, scope: !81)
!391 = !DILocation(line: 435, column: 6, scope: !81)
!392 = !DILocation(line: 435, column: 14, scope: !81)
!393 = !DILocation(line: 436, column: 6, scope: !81)
!394 = !DILocation(line: 436, column: 14, scope: !81)
!395 = !DILocation(line: 437, column: 6, scope: !81)
!396 = !DILocation(line: 437, column: 14, scope: !81)
!397 = !DILocation(line: 443, column: 6, scope: !81)
!398 = !DILocation(line: 443, column: 14, scope: !81)
!399 = !DILocation(line: 444, column: 6, scope: !81)
!400 = !DILocation(line: 444, column: 14, scope: !81)
!401 = !DILocation(line: 446, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 445, column: 40)
!403 = distinct !DILexicalBlock(scope: !81, file: !1, line: 445, column: 6)
!404 = !DILocation(line: 447, column: 1, scope: !402)
!405 = !DILocation(line: 446, column: 16, scope: !402)
!406 = !{!251, !116, i64 24}
!407 = !DILocation(line: 450, column: 1, scope: !81)
!408 = !DILocation(line: 463, column: 11, scope: !95)
!409 = !DILocation(line: 471, column: 11, scope: !410)
!410 = distinct !DILexicalBlock(scope: !95, file: !1, line: 471, column: 7)
!411 = !DILocation(line: 471, column: 7, scope: !95)
!412 = !DILocation(line: 472, column: 12, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !1, line: 471, column: 21)
!414 = !DILocation(line: 472, column: 4, scope: !413)
!415 = !DILocation(line: 474, column: 4, scope: !413)
!416 = !DILocation(line: 476, column: 36, scope: !95)
!417 = !DILocation(line: 476, column: 19, scope: !95)
!418 = !DILocation(line: 476, column: 11, scope: !95)
!419 = !DILocation(line: 465, column: 11, scope: !95)
!420 = !DILocation(line: 477, column: 20, scope: !95)
!421 = !DILocation(line: 477, column: 32, scope: !95)
!422 = !DILocation(line: 477, column: 44, scope: !95)
!423 = !DILocation(line: 478, column: 16, scope: !95)
!424 = !DILocation(line: 478, column: 28, scope: !95)
!425 = !DILocation(line: 478, column: 40, scope: !95)
!426 = !DILocation(line: 477, column: 1, scope: !95)
!427 = !DILocation(line: 480, column: 1, scope: !95)
