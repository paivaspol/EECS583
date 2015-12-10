; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad type\0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad mode\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_nbytesInUse(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_workspace(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A fatal error in SubMtx_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_setNbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_setFields()\0A mtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A nrow = %d <= 0\0A\00", align 1
@.str9 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A ncol = %d <= 0\0A\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A invalid type %d\00", align 1
@.str12 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A invalid mode %d\00", align 1
@.str13 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_init()\0A mtx is NULL\0A\00", align 1
@.str14 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A nrow = %d <= 0\0A\00", align 1
@.str15 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A ncol = %d <= 0\0A\00", align 1
@.str17 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A invalid type %d\00", align 1
@.str18 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A invalid mode %d\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtx_initFromBuffer(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SubMtx_nbytesNeeded(i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #0 {
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !14, metadata !102), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !15, metadata !102), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !16, metadata !102), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !17, metadata !102), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %nent, i64 0, metadata !18, metadata !102), !dbg !107
  %1 = icmp slt i32 %nrow, 1, !dbg !108
  %2 = icmp slt i32 %ncol, 1, !dbg !110
  %or.cond = or i1 %1, %2, !dbg !111
  %3 = icmp slt i32 %nent, 0, !dbg !112
  %or.cond3 = or i1 %or.cond, %3, !dbg !111
  br i1 %or.cond3, label %4, label %7, !dbg !111

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !115
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #6, !dbg !119
  tail call void @exit(i32 -1) #7, !dbg !120
  unreachable, !dbg !120

; <label>:7                                       ; preds = %0
  %.off = add i32 %type, -1, !dbg !121
  %switch = icmp ult i32 %.off, 2, !dbg !121
  br i1 %switch, label %11, label %8, !dbg !121

; <label>:8                                       ; preds = %7
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !122, !tbaa !115
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #6, !dbg !124
  tail call void @exit(i32 -1) #7, !dbg !125
  unreachable, !dbg !125

; <label>:11                                      ; preds = %7
  %switch4 = icmp ult i32 %mode, 10, !dbg !126
  br i1 %switch4, label %15, label %12, !dbg !126

; <label>:12                                      ; preds = %11
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !127, !tbaa !115
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #6, !dbg !129
  tail call void @exit(i32 -1) #7, !dbg !130
  unreachable, !dbg !130

; <label>:15                                      ; preds = %11
  %16 = add nsw i32 %nrow, 7, !dbg !131
  %17 = add nsw i32 %16, %ncol, !dbg !132
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !21, metadata !102), !dbg !133
  %not. = icmp ne i32 %type, 1, !dbg !134
  %18 = zext i1 %not. to i32, !dbg !134
  %nent. = shl nsw i32 %nent, %18, !dbg !134
  switch i32 %mode, label %36 [
    i32 2, label %19
    i32 3, label %22
    i32 4, label %25
    i32 5, label %28
    i32 6, label %31
    i32 9, label %34
    i32 8, label %34
  ], !dbg !135

; <label>:19                                      ; preds = %15
  %20 = add nsw i32 %nent, %nrow, !dbg !136
  %21 = add nsw i32 %20, %17, !dbg !138
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !21, metadata !102), !dbg !133
  br label %36, !dbg !139

; <label>:22                                      ; preds = %15
  %23 = add nsw i32 %nent, %ncol, !dbg !140
  %24 = add nsw i32 %23, %17, !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !21, metadata !102), !dbg !133
  br label %36, !dbg !142

; <label>:25                                      ; preds = %15
  %26 = shl i32 %nent, 1, !dbg !143
  %27 = add nsw i32 %26, %17, !dbg !144
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !21, metadata !102), !dbg !133
  br label %36, !dbg !145

; <label>:28                                      ; preds = %15
  %29 = shl i32 %nrow, 1, !dbg !146
  %30 = add nsw i32 %17, %29, !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !21, metadata !102), !dbg !133
  br label %36, !dbg !148

; <label>:31                                      ; preds = %15
  %32 = shl i32 %ncol, 1, !dbg !149
  %33 = add nsw i32 %17, %32, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !21, metadata !102), !dbg !133
  br label %36, !dbg !151

; <label>:34                                      ; preds = %15, %15
  %35 = add nsw i32 %17, %ncol, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !21, metadata !102), !dbg !133
  br label %36, !dbg !153

; <label>:36                                      ; preds = %15, %34, %31, %28, %25, %22, %19
  %nint.0 = phi i32 [ %17, %15 ], [ %35, %34 ], [ %33, %31 ], [ %30, %28 ], [ %27, %25 ], [ %24, %22 ], [ %21, %19 ]
  %37 = add nsw i32 %nint.0, 1, !dbg !154
  %38 = sdiv i32 %37, 2, !dbg !158
  %39 = add nsw i32 %38, %nent., !dbg !159
  %40 = shl i32 %39, 3, !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !19, metadata !102), !dbg !161
  ret i32 %40, !dbg !162
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SubMtx_nbytesInUse(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !49, metadata !102), !dbg !163
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !164
  br i1 %1, label %2, label %5, !dbg !166

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !167, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !169
  tail call void @exit(i32 -1) #7, !dbg !170
  unreachable, !dbg !170

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !171
  %7 = tail call i32 @DV_size(%struct._DV* %6) #6, !dbg !172
  %8 = shl i32 %7, 3, !dbg !173
  ret i32 %8, !dbg !174
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !54, metadata !102), !dbg !175
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !176
  br i1 %1, label %2, label %5, !dbg !178

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !179, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !181
  tail call void @exit(i32 -1) #7, !dbg !182
  unreachable, !dbg !182

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !183
  %7 = tail call double* @DV_entries(%struct._DV* %6) #6, !dbg !184
  %8 = bitcast double* %7 to i8*, !dbg !185
  ret i8* %8, !dbg !186
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !57, metadata !102), !dbg !187
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !188
  br i1 %1, label %2, label %5, !dbg !190

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !191, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !193
  tail call void @exit(i32 -1) #7, !dbg !194
  unreachable, !dbg !194

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !195
  %7 = tail call i32 @DV_maxsize(%struct._DV* %6) #6, !dbg !196
  %8 = shl i32 %7, 3, !dbg !197
  ret i32 %8, !dbg !198
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_setNbytesInWorkspace(%struct._SubMtx* %mtx, i32 %nbytes) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !62, metadata !102), !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %nbytes, i64 0, metadata !63, metadata !102), !dbg !200
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !201
  br i1 %1, label %2, label %5, !dbg !203

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !204, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !206
  tail call void @exit(i32 -1) #7, !dbg !207
  unreachable, !dbg !207

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !208
  %7 = sext i32 %nbytes to i64, !dbg !209
  %8 = lshr i64 %7, 3, !dbg !210
  %9 = trunc i64 %8 to i32, !dbg !209
  tail call void @DV_setSize(%struct._DV* %6, i32 %9) #6, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !68, metadata !102), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !69, metadata !102), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !70, metadata !102), !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %rowid, i64 0, metadata !71, metadata !102), !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %colid, i64 0, metadata !72, metadata !102), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !73, metadata !102), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !74, metadata !102), !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %nent, i64 0, metadata !75, metadata !102), !dbg !220
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !221
  br i1 %1, label %2, label %5, !dbg !223

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !224, !tbaa !115
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), i64 49, i64 1, %struct.__sFILE* %3), !dbg !226
  tail call void @exit(i32 -1) #7, !dbg !227
  unreachable, !dbg !227

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %nrow, 1, !dbg !228
  br i1 %6, label %7, label %10, !dbg !230

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !231, !tbaa !115
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([53 x i8]* @.str8, i64 0, i64 0), i32 %nrow) #6, !dbg !233
  tail call void @exit(i32 -1) #7, !dbg !234
  unreachable, !dbg !234

; <label>:10                                      ; preds = %5
  %11 = icmp slt i32 %ncol, 1, !dbg !235
  br i1 %11, label %12, label %15, !dbg !237

; <label>:12                                      ; preds = %10
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !238, !tbaa !115
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([53 x i8]* @.str9, i64 0, i64 0), i32 %ncol) #6, !dbg !240
  tail call void @exit(i32 -1) #7, !dbg !241
  unreachable, !dbg !241

; <label>:15                                      ; preds = %10
  %.off = add i32 %type, -1, !dbg !242
  %switch = icmp ult i32 %.off, 2, !dbg !242
  br i1 %switch, label %19, label %16, !dbg !242

; <label>:16                                      ; preds = %15
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !243, !tbaa !115
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), i32 %type) #6, !dbg !245
  tail call void @exit(i32 -1) #7, !dbg !246
  unreachable, !dbg !246

; <label>:19                                      ; preds = %15
  %switch1 = icmp ult i32 %mode, 10, !dbg !247
  br i1 %switch1, label %23, label %20, !dbg !247

; <label>:20                                      ; preds = %19
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !248, !tbaa !115
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 %mode) #6, !dbg !250
  tail call void @exit(i32 -1) #7, !dbg !251
  unreachable, !dbg !251

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !252
  %25 = tail call double* @DV_entries(%struct._DV* %24) #6, !dbg !253
  tail call void @llvm.dbg.value(metadata double* %25, i64 0, metadata !76, metadata !102), !dbg !254
  %26 = bitcast double* %25 to i32*, !dbg !255
  tail call void @llvm.dbg.value(metadata i32* %26, i64 0, metadata !78, metadata !102), !dbg !256
  store i32 %type, i32* %26, align 4, !dbg !257, !tbaa !258
  %27 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !260
  store i32 %type, i32* %27, align 4, !dbg !261, !tbaa !262
  %28 = getelementptr inbounds i32* %26, i64 1, !dbg !265
  store i32 %mode, i32* %28, align 4, !dbg !266, !tbaa !258
  %29 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !267
  store i32 %mode, i32* %29, align 4, !dbg !268, !tbaa !269
  %30 = getelementptr inbounds double* %25, i64 1, !dbg !270
  %31 = bitcast double* %30 to i32*, !dbg !270
  store i32 %rowid, i32* %31, align 4, !dbg !271, !tbaa !258
  %32 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !272
  store i32 %rowid, i32* %32, align 4, !dbg !273, !tbaa !274
  %33 = getelementptr inbounds i32* %26, i64 3, !dbg !275
  store i32 %colid, i32* %33, align 4, !dbg !276, !tbaa !258
  %34 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !277
  store i32 %colid, i32* %34, align 4, !dbg !278, !tbaa !279
  %35 = getelementptr inbounds double* %25, i64 2, !dbg !280
  %36 = bitcast double* %35 to i32*, !dbg !280
  store i32 %nrow, i32* %36, align 4, !dbg !281, !tbaa !258
  %37 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !282
  store i32 %nrow, i32* %37, align 4, !dbg !283, !tbaa !284
  %38 = getelementptr inbounds i32* %26, i64 5, !dbg !285
  store i32 %ncol, i32* %38, align 4, !dbg !286, !tbaa !258
  %39 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !287
  store i32 %ncol, i32* %39, align 4, !dbg !288, !tbaa !289
  %40 = getelementptr inbounds double* %25, i64 3, !dbg !290
  %41 = bitcast double* %40 to i32*, !dbg !290
  store i32 %nent, i32* %41, align 4, !dbg !291, !tbaa !258
  %42 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !292
  store i32 %nent, i32* %42, align 4, !dbg !293, !tbaa !294
  switch i32 %mode, label %81 [
    i32 0, label %43
    i32 1, label %43
    i32 7, label %43
    i32 2, label %48
    i32 3, label %54
    i32 4, label %60
    i32 5, label %66
    i32 6, label %71
    i32 8, label %76
    i32 9, label %76
  ], !dbg !295

; <label>:43                                      ; preds = %23, %23, %23
  %44 = load i32* %37, align 4, !dbg !296, !tbaa !284
  %45 = add nsw i32 %44, 7, !dbg !298
  %46 = load i32* %39, align 4, !dbg !299, !tbaa !289
  %47 = add nsw i32 %45, %46, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !302

; <label>:48                                      ; preds = %23
  %49 = load i32* %37, align 4, !dbg !303, !tbaa !284
  %50 = load i32* %39, align 4, !dbg !304, !tbaa !289
  %factor = shl i32 %49, 1
  %51 = add i32 %nent, 7, !dbg !305
  %52 = add i32 %51, %50, !dbg !306
  %53 = add i32 %52, %factor, !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !308

; <label>:54                                      ; preds = %23
  %55 = load i32* %37, align 4, !dbg !309, !tbaa !284
  %56 = load i32* %39, align 4, !dbg !310, !tbaa !289
  %factor2 = shl i32 %56, 1
  %57 = add i32 %nent, 7, !dbg !311
  %58 = add i32 %57, %55, !dbg !312
  %59 = add i32 %58, %factor2, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !314

; <label>:60                                      ; preds = %23
  %61 = load i32* %37, align 4, !dbg !315, !tbaa !284
  %62 = load i32* %39, align 4, !dbg !316, !tbaa !289
  %factor3 = shl i32 %nent, 1
  %63 = add i32 %61, 7, !dbg !317
  %64 = add i32 %63, %62, !dbg !318
  %65 = add i32 %64, %factor3, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !320

; <label>:66                                      ; preds = %23
  %67 = load i32* %37, align 4, !dbg !321, !tbaa !284
  %68 = load i32* %39, align 4, !dbg !322, !tbaa !289
  %factor4 = mul i32 %67, 3
  %69 = add i32 %68, 7, !dbg !323
  %70 = add i32 %69, %factor4, !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !325

; <label>:71                                      ; preds = %23
  %72 = load i32* %37, align 4, !dbg !326, !tbaa !284
  %73 = load i32* %39, align 4, !dbg !327, !tbaa !289
  %factor5 = mul i32 %73, 3
  %74 = add i32 %72, 7, !dbg !328
  %75 = add i32 %74, %factor5, !dbg !329
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !330

; <label>:76                                      ; preds = %23, %23
  %77 = load i32* %37, align 4, !dbg !331, !tbaa !284
  %78 = load i32* %39, align 4, !dbg !332, !tbaa !289
  %factor6 = shl i32 %77, 1
  %79 = add i32 %78, 7, !dbg !333
  %80 = add i32 %79, %factor6, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !77, metadata !102), !dbg !301
  br label %81, !dbg !335

; <label>:81                                      ; preds = %23, %76, %71, %66, %60, %54, %48, %43
  %nint.0 = phi i32 [ undef, %23 ], [ %80, %76 ], [ %75, %71 ], [ %70, %66 ], [ %65, %60 ], [ %59, %54 ], [ %53, %48 ], [ %47, %43 ]
  %82 = add nsw i32 %nint.0, 1, !dbg !336
  %83 = sdiv i32 %82, 2, !dbg !340
  %84 = sext i32 %83 to i64, !dbg !341
  %85 = getelementptr inbounds double* %25, i64 %84, !dbg !341
  %86 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7, !dbg !342
  store double* %85, double** %86, align 8, !dbg !343, !tbaa !344
  ret void, !dbg !345
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_init(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !81, metadata !102), !dbg !346
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !82, metadata !102), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !83, metadata !102), !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %rowid, i64 0, metadata !84, metadata !102), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %colid, i64 0, metadata !85, metadata !102), !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !86, metadata !102), !dbg !351
  store i32 %nrow, i32* %1, align 4, !tbaa !258
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !87, metadata !102), !dbg !352
  store i32 %ncol, i32* %2, align 4, !tbaa !258
  tail call void @llvm.dbg.value(metadata i32 %nent, i64 0, metadata !88, metadata !102), !dbg !353
  %3 = icmp eq %struct._SubMtx* %mtx, null, !dbg !354
  br i1 %3, label %4, label %7, !dbg !356

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !357, !tbaa !115
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str13, i64 0, i64 0), i64 44, i64 1, %struct.__sFILE* %5), !dbg !359
  tail call void @exit(i32 -1) #7, !dbg !360
  unreachable, !dbg !360

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !86, metadata !102), !dbg !351
  %8 = icmp slt i32 %nrow, 1, !dbg !361
  br i1 %8, label %9, label %12, !dbg !363

; <label>:9                                       ; preds = %7
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !364, !tbaa !115
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([48 x i8]* @.str14, i64 0, i64 0), i32 %nrow) #6, !dbg !366
  tail call void @exit(i32 -1) #7, !dbg !367
  unreachable, !dbg !367

; <label>:12                                      ; preds = %7
  %13 = icmp slt i32 %ncol, 1, !dbg !368
  br i1 %13, label %14, label %17, !dbg !370

; <label>:14                                      ; preds = %12
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !371, !tbaa !115
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i32 %ncol) #6, !dbg !373
  tail call void @exit(i32 -1) #7, !dbg !374
  unreachable, !dbg !374

; <label>:17                                      ; preds = %12
  %.off = add i32 %type, -1, !dbg !375
  %switch = icmp ult i32 %.off, 2, !dbg !375
  br i1 %switch, label %21, label %18, !dbg !375

; <label>:18                                      ; preds = %17
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !376, !tbaa !115
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([48 x i8]* @.str17, i64 0, i64 0), i32 %type) #6, !dbg !378
  tail call void @exit(i32 -1) #7, !dbg !379
  unreachable, !dbg !379

; <label>:21                                      ; preds = %17
  %switch1 = icmp ult i32 %mode, 10, !dbg !380
  br i1 %switch1, label %25, label %22, !dbg !380

; <label>:22                                      ; preds = %21
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !381, !tbaa !115
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), i32 %mode) #6, !dbg !383
  tail call void @exit(i32 -1) #7, !dbg !384
  unreachable, !dbg !384

; <label>:25                                      ; preds = %21
  %26 = tail call i32 @SubMtx_nbytesNeeded(i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #8, !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !89, metadata !102), !dbg !386
  tail call void @SubMtx_setNbytesInWorkspace(%struct._SubMtx* %mtx, i32 %26) #8, !dbg !387
  %27 = sext i32 %26 to i64, !dbg !388
  %28 = lshr i64 %27, 3, !dbg !389
  %29 = trunc i64 %28 to i32, !dbg !388
  %30 = tail call i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #8, !dbg !390
  %31 = bitcast i8* %30 to double*, !dbg !391
  tail call void @DVzero(i32 %29, double* %31) #6, !dbg !392
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !86, metadata !102), !dbg !351
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !87, metadata !102), !dbg !352
  tail call void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #8, !dbg !393
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !86, metadata !102), !dbg !351
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !91, metadata !102), !dbg !394
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %1, i32** %rowind) #6, !dbg !395
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !86, metadata !102), !dbg !351
  %32 = load i32* %1, align 4, !dbg !396, !tbaa !258
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !91, metadata !102), !dbg !394
  %33 = load i32** %rowind, align 8, !dbg !397, !tbaa !115
  call void @IVramp(i32 %32, i32* %33, i32 0, i32 1) #6, !dbg !398
  call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !87, metadata !102), !dbg !352
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !90, metadata !102), !dbg !399
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %2, i32** %colind) #6, !dbg !400
  call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !87, metadata !102), !dbg !352
  %34 = load i32* %2, align 4, !dbg !401, !tbaa !258
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !90, metadata !102), !dbg !399
  %35 = load i32** %colind, align 8, !dbg !402, !tbaa !115
  call void @IVramp(i32 %34, i32* %35, i32 0, i32 1) #6, !dbg !403
  ret void, !dbg !404
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_initFromBuffer(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !96, metadata !102), !dbg !405
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !406
  br i1 %1, label %2, label %5, !dbg !408

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !409, !tbaa !115
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !411
  tail call void @exit(i32 -1) #7, !dbg !412
  unreachable, !dbg !412

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !413
  %7 = tail call double* @DV_entries(%struct._DV* %6) #6, !dbg !414
  %8 = bitcast double* %7 to i32*, !dbg !415
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !97, metadata !102), !dbg !416
  %9 = load i32* %8, align 4, !dbg !417, !tbaa !258
  %10 = getelementptr inbounds i32* %8, i64 1, !dbg !418
  %11 = load i32* %10, align 4, !dbg !418, !tbaa !258
  %12 = getelementptr inbounds double* %7, i64 1, !dbg !419
  %13 = bitcast double* %12 to i32*, !dbg !419
  %14 = load i32* %13, align 4, !dbg !419, !tbaa !258
  %15 = getelementptr inbounds i32* %8, i64 3, !dbg !420
  %16 = load i32* %15, align 4, !dbg !420, !tbaa !258
  %17 = getelementptr inbounds double* %7, i64 2, !dbg !421
  %18 = bitcast double* %17 to i32*, !dbg !421
  %19 = load i32* %18, align 4, !dbg !421, !tbaa !258
  %20 = getelementptr inbounds i32* %8, i64 5, !dbg !422
  %21 = load i32* %20, align 4, !dbg !422, !tbaa !258
  %22 = getelementptr inbounds double* %7, i64 3, !dbg !423
  %23 = bitcast double* %22 to i32*, !dbg !423
  %24 = load i32* %23, align 4, !dbg !423, !tbaa !258
  tail call void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %9, i32 %11, i32 %14, i32 %16, i32 %19, i32 %21, i32 %24) #8, !dbg !424
  ret void, !dbg !425
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
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!9 = !{!10, !22, !50, !55, !58, !64, !79, !92}
!10 = !DISubprogram(name: "SubMtx_nbytesNeeded", scope: !1, file: !1, line: 16, type: !11, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32, i32, i32)* @SubMtx_nbytesNeeded, variables: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{!6, !6, !6, !6, !6, !6}
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !10, file: !1, line: 17, type: !6)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !10, file: !1, line: 18, type: !6)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 3, scope: !10, file: !1, line: 19, type: !6)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 4, scope: !10, file: !1, line: 20, type: !6)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nent", arg: 5, scope: !10, file: !1, line: 21, type: !6)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !10, file: !1, line: 23, type: !6)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndouble", scope: !10, file: !1, line: 23, type: !6)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nint", scope: !10, file: !1, line: 23, type: !6)
!22 = !DISubprogram(name: "SubMtx_nbytesInUse", scope: !1, file: !1, line: 130, type: !23, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._SubMtx*)* @SubMtx_nbytesInUse, variables: !48)
!23 = !DISubroutineType(types: !24)
!24 = !{!6, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !27, line: 43, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtx", file: !27, line: 44, size: 576, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !47}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !27, line: 45, baseType: !6, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !28, file: !27, line: 46, baseType: !6, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !28, file: !27, line: 47, baseType: !6, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !28, file: !27, line: 48, baseType: !6, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !28, file: !27, line: 49, baseType: !6, size: 32, align: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !28, file: !27, line: 50, baseType: !6, size: 32, align: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !28, file: !27, line: 51, baseType: !6, size: 32, align: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !28, file: !27, line: 52, baseType: !7, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !28, file: !27, line: 53, baseType: !39, size: 192, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !40, line: 20, baseType: !41)
!40 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !40, line: 21, size: 192, align: 64, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !41, file: !40, line: 22, baseType: !6, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !41, file: !40, line: 23, baseType: !6, size: 32, align: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !41, file: !40, line: 24, baseType: !6, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !41, file: !40, line: 25, baseType: !7, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !27, line: 54, baseType: !25, size: 64, align: 64, offset: 512)
!48 = !{!49}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !22, file: !1, line: 131, type: !25)
!50 = !DISubprogram(name: "SubMtx_workspace", scope: !1, file: !1, line: 149, type: !51, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._SubMtx*)* @SubMtx_workspace, variables: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!4, !25}
!53 = !{!54}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !50, file: !1, line: 150, type: !25)
!55 = !DISubprogram(name: "SubMtx_nbytesInWorkspace", scope: !1, file: !1, line: 168, type: !23, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._SubMtx*)* @SubMtx_nbytesInWorkspace, variables: !56)
!56 = !{!57}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !55, file: !1, line: 169, type: !25)
!58 = !DISubprogram(name: "SubMtx_setNbytesInWorkspace", scope: !1, file: !1, line: 187, type: !59, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*, i32)* @SubMtx_setNbytesInWorkspace, variables: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !25, !6}
!61 = !{!62, !63}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !58, file: !1, line: 188, type: !25)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 2, scope: !58, file: !1, line: 189, type: !6)
!64 = !DISubprogram(name: "SubMtx_setFields", scope: !1, file: !1, line: 210, type: !65, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32)* @SubMtx_setFields, variables: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !25, !6, !6, !6, !6, !6, !6, !6}
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !64, file: !1, line: 211, type: !25)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !64, file: !1, line: 212, type: !6)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !64, file: !1, line: 213, type: !6)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowid", arg: 4, scope: !64, file: !1, line: 214, type: !6)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colid", arg: 5, scope: !64, file: !1, line: 215, type: !6)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 6, scope: !64, file: !1, line: 216, type: !6)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 7, scope: !64, file: !1, line: 217, type: !6)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nent", arg: 8, scope: !64, file: !1, line: 218, type: !6)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dbuffer", scope: !64, file: !1, line: 220, type: !7)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nint", scope: !64, file: !1, line: 221, type: !6)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuffer", scope: !64, file: !1, line: 222, type: !5)
!79 = !DISubprogram(name: "SubMtx_init", scope: !1, file: !1, line: 330, type: !65, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32)* @SubMtx_init, variables: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !79, file: !1, line: 331, type: !25)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !79, file: !1, line: 332, type: !6)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !79, file: !1, line: 333, type: !6)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowid", arg: 4, scope: !79, file: !1, line: 334, type: !6)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colid", arg: 5, scope: !79, file: !1, line: 335, type: !6)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 6, scope: !79, file: !1, line: 336, type: !6)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 7, scope: !79, file: !1, line: 337, type: !6)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nent", arg: 8, scope: !79, file: !1, line: 338, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !79, file: !1, line: 340, type: !6)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !79, file: !1, line: 341, type: !5)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !79, file: !1, line: 341, type: !5)
!92 = !DISubprogram(name: "SubMtx_initFromBuffer", scope: !1, file: !1, line: 424, type: !93, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*)* @SubMtx_initFromBuffer, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !25}
!95 = !{!96, !97}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !92, file: !1, line: 425, type: !25)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuffer", scope: !92, file: !1, line: 427, type: !5)
!98 = !{i32 2, !"Dwarf Version", i32 2}
!99 = !{i32 2, !"Debug Info Version", i32 700000003}
!100 = !{i32 1, !"PIC Level", i32 2}
!101 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!102 = !DIExpression()
!103 = !DILocation(line: 17, column: 10, scope: !10)
!104 = !DILocation(line: 18, column: 10, scope: !10)
!105 = !DILocation(line: 19, column: 10, scope: !10)
!106 = !DILocation(line: 20, column: 10, scope: !10)
!107 = !DILocation(line: 21, column: 10, scope: !10)
!108 = !DILocation(line: 29, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !10, file: !1, line: 29, column: 7)
!110 = !DILocation(line: 29, column: 25, scope: !109)
!111 = !DILocation(line: 29, column: 17, scope: !109)
!112 = !DILocation(line: 29, column: 38, scope: !109)
!113 = !DILocation(line: 30, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 29, column: 44)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !DILocation(line: 30, column: 4, scope: !114)
!120 = !DILocation(line: 33, column: 4, scope: !114)
!121 = !DILocation(line: 35, column: 1, scope: !10)
!122 = !DILocation(line: 40, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !10, file: !1, line: 35, column: 17)
!124 = !DILocation(line: 40, column: 4, scope: !123)
!125 = !DILocation(line: 43, column: 4, scope: !123)
!126 = !DILocation(line: 45, column: 1, scope: !10)
!127 = !DILocation(line: 58, column: 12, scope: !128)
!128 = distinct !DILexicalBlock(scope: !10, file: !1, line: 45, column: 17)
!129 = !DILocation(line: 58, column: 4, scope: !128)
!130 = !DILocation(line: 61, column: 4, scope: !128)
!131 = !DILocation(line: 68, column: 13, scope: !10)
!132 = !DILocation(line: 68, column: 20, scope: !10)
!133 = !DILocation(line: 23, column: 24, scope: !10)
!134 = !DILocation(line: 69, column: 6, scope: !10)
!135 = !DILocation(line: 74, column: 1, scope: !10)
!136 = !DILocation(line: 76, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !10, file: !1, line: 74, column: 17)
!138 = !DILocation(line: 76, column: 9, scope: !137)
!139 = !DILocation(line: 77, column: 4, scope: !137)
!140 = !DILocation(line: 79, column: 17, scope: !137)
!141 = !DILocation(line: 79, column: 9, scope: !137)
!142 = !DILocation(line: 80, column: 4, scope: !137)
!143 = !DILocation(line: 82, column: 13, scope: !137)
!144 = !DILocation(line: 82, column: 9, scope: !137)
!145 = !DILocation(line: 83, column: 4, scope: !137)
!146 = !DILocation(line: 85, column: 13, scope: !137)
!147 = !DILocation(line: 85, column: 9, scope: !137)
!148 = !DILocation(line: 86, column: 4, scope: !137)
!149 = !DILocation(line: 88, column: 13, scope: !137)
!150 = !DILocation(line: 88, column: 9, scope: !137)
!151 = !DILocation(line: 89, column: 4, scope: !137)
!152 = !DILocation(line: 94, column: 9, scope: !137)
!153 = !DILocation(line: 95, column: 4, scope: !137)
!154 = !DILocation(line: 107, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 106, column: 47)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 106, column: 13)
!157 = distinct !DILexicalBlock(scope: !10, file: !1, line: 104, column: 6)
!158 = !DILocation(line: 107, column: 24, scope: !155)
!159 = !DILocation(line: 107, column: 27, scope: !155)
!160 = !DILocation(line: 107, column: 37, scope: !155)
!161 = !DILocation(line: 23, column: 7, scope: !10)
!162 = !DILocation(line: 118, column: 1, scope: !10)
!163 = !DILocation(line: 131, column: 14, scope: !22)
!164 = !DILocation(line: 133, column: 10, scope: !165)
!165 = distinct !DILexicalBlock(scope: !22, file: !1, line: 133, column: 6)
!166 = !DILocation(line: 133, column: 6, scope: !22)
!167 = !DILocation(line: 134, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 133, column: 20)
!169 = !DILocation(line: 134, column: 4, scope: !168)
!170 = !DILocation(line: 136, column: 4, scope: !168)
!171 = !DILocation(line: 138, column: 37, scope: !22)
!172 = !DILocation(line: 138, column: 23, scope: !22)
!173 = !DILocation(line: 138, column: 22, scope: !22)
!174 = !DILocation(line: 138, column: 1, scope: !22)
!175 = !DILocation(line: 150, column: 14, scope: !50)
!176 = !DILocation(line: 152, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !50, file: !1, line: 152, column: 6)
!178 = !DILocation(line: 152, column: 6, scope: !50)
!179 = !DILocation(line: 153, column: 12, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 152, column: 20)
!181 = !DILocation(line: 153, column: 4, scope: !180)
!182 = !DILocation(line: 155, column: 4, scope: !180)
!183 = !DILocation(line: 157, column: 33, scope: !50)
!184 = !DILocation(line: 157, column: 16, scope: !50)
!185 = !DILocation(line: 157, column: 8, scope: !50)
!186 = !DILocation(line: 157, column: 1, scope: !50)
!187 = !DILocation(line: 169, column: 14, scope: !55)
!188 = !DILocation(line: 171, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !55, file: !1, line: 171, column: 6)
!190 = !DILocation(line: 171, column: 6, scope: !55)
!191 = !DILocation(line: 172, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 171, column: 20)
!193 = !DILocation(line: 172, column: 4, scope: !192)
!194 = !DILocation(line: 174, column: 4, scope: !192)
!195 = !DILocation(line: 176, column: 40, scope: !55)
!196 = !DILocation(line: 176, column: 23, scope: !55)
!197 = !DILocation(line: 176, column: 22, scope: !55)
!198 = !DILocation(line: 176, column: 1, scope: !55)
!199 = !DILocation(line: 188, column: 14, scope: !58)
!200 = !DILocation(line: 189, column: 11, scope: !58)
!201 = !DILocation(line: 191, column: 10, scope: !202)
!202 = distinct !DILexicalBlock(scope: !58, file: !1, line: 191, column: 6)
!203 = !DILocation(line: 191, column: 6, scope: !58)
!204 = !DILocation(line: 192, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 191, column: 20)
!206 = !DILocation(line: 192, column: 4, scope: !205)
!207 = !DILocation(line: 195, column: 4, scope: !205)
!208 = !DILocation(line: 197, column: 18, scope: !58)
!209 = !DILocation(line: 197, column: 25, scope: !58)
!210 = !DILocation(line: 197, column: 31, scope: !58)
!211 = !DILocation(line: 197, column: 1, scope: !58)
!212 = !DILocation(line: 199, column: 1, scope: !58)
!213 = !DILocation(line: 211, column: 14, scope: !64)
!214 = !DILocation(line: 212, column: 13, scope: !64)
!215 = !DILocation(line: 213, column: 13, scope: !64)
!216 = !DILocation(line: 214, column: 13, scope: !64)
!217 = !DILocation(line: 215, column: 13, scope: !64)
!218 = !DILocation(line: 216, column: 13, scope: !64)
!219 = !DILocation(line: 217, column: 13, scope: !64)
!220 = !DILocation(line: 218, column: 13, scope: !64)
!221 = !DILocation(line: 228, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !64, file: !1, line: 228, column: 7)
!223 = !DILocation(line: 228, column: 7, scope: !64)
!224 = !DILocation(line: 229, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 228, column: 21)
!226 = !DILocation(line: 229, column: 4, scope: !225)
!227 = !DILocation(line: 231, column: 4, scope: !225)
!228 = !DILocation(line: 233, column: 12, scope: !229)
!229 = distinct !DILexicalBlock(scope: !64, file: !1, line: 233, column: 7)
!230 = !DILocation(line: 233, column: 7, scope: !64)
!231 = !DILocation(line: 234, column: 12, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 233, column: 19)
!233 = !DILocation(line: 234, column: 4, scope: !232)
!234 = !DILocation(line: 236, column: 4, scope: !232)
!235 = !DILocation(line: 238, column: 12, scope: !236)
!236 = distinct !DILexicalBlock(scope: !64, file: !1, line: 238, column: 7)
!237 = !DILocation(line: 238, column: 7, scope: !64)
!238 = !DILocation(line: 239, column: 12, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !1, line: 238, column: 19)
!240 = !DILocation(line: 239, column: 4, scope: !239)
!241 = !DILocation(line: 241, column: 4, scope: !239)
!242 = !DILocation(line: 248, column: 1, scope: !64)
!243 = !DILocation(line: 253, column: 12, scope: !244)
!244 = distinct !DILexicalBlock(scope: !64, file: !1, line: 248, column: 17)
!245 = !DILocation(line: 253, column: 4, scope: !244)
!246 = !DILocation(line: 255, column: 4, scope: !244)
!247 = !DILocation(line: 257, column: 1, scope: !64)
!248 = !DILocation(line: 270, column: 12, scope: !249)
!249 = distinct !DILexicalBlock(scope: !64, file: !1, line: 257, column: 17)
!250 = !DILocation(line: 270, column: 4, scope: !249)
!251 = !DILocation(line: 272, column: 4, scope: !249)
!252 = !DILocation(line: 274, column: 28, scope: !64)
!253 = !DILocation(line: 274, column: 11, scope: !64)
!254 = !DILocation(line: 220, column: 11, scope: !64)
!255 = !DILocation(line: 275, column: 11, scope: !64)
!256 = !DILocation(line: 222, column: 11, scope: !64)
!257 = !DILocation(line: 281, column: 25, scope: !64)
!258 = !{!259, !259, i64 0}
!259 = !{!"int", !117, i64 0}
!260 = !DILocation(line: 281, column: 6, scope: !64)
!261 = !DILocation(line: 281, column: 12, scope: !64)
!262 = !{!263, !259, i64 0}
!263 = !{!"_SubMtx", !259, i64 0, !259, i64 4, !259, i64 8, !259, i64 12, !259, i64 16, !259, i64 20, !259, i64 24, !116, i64 32, !264, i64 40, !116, i64 64}
!264 = !{!"_DV", !259, i64 0, !259, i64 4, !259, i64 8, !116, i64 16}
!265 = !DILocation(line: 282, column: 14, scope: !64)
!266 = !DILocation(line: 282, column: 25, scope: !64)
!267 = !DILocation(line: 282, column: 6, scope: !64)
!268 = !DILocation(line: 282, column: 12, scope: !64)
!269 = !{!263, !259, i64 4}
!270 = !DILocation(line: 283, column: 14, scope: !64)
!271 = !DILocation(line: 283, column: 25, scope: !64)
!272 = !DILocation(line: 283, column: 6, scope: !64)
!273 = !DILocation(line: 283, column: 12, scope: !64)
!274 = !{!263, !259, i64 8}
!275 = !DILocation(line: 284, column: 14, scope: !64)
!276 = !DILocation(line: 284, column: 25, scope: !64)
!277 = !DILocation(line: 284, column: 6, scope: !64)
!278 = !DILocation(line: 284, column: 12, scope: !64)
!279 = !{!263, !259, i64 12}
!280 = !DILocation(line: 285, column: 14, scope: !64)
!281 = !DILocation(line: 285, column: 25, scope: !64)
!282 = !DILocation(line: 285, column: 6, scope: !64)
!283 = !DILocation(line: 285, column: 12, scope: !64)
!284 = !{!263, !259, i64 16}
!285 = !DILocation(line: 286, column: 14, scope: !64)
!286 = !DILocation(line: 286, column: 25, scope: !64)
!287 = !DILocation(line: 286, column: 6, scope: !64)
!288 = !DILocation(line: 286, column: 12, scope: !64)
!289 = !{!263, !259, i64 20}
!290 = !DILocation(line: 287, column: 14, scope: !64)
!291 = !DILocation(line: 287, column: 25, scope: !64)
!292 = !DILocation(line: 287, column: 6, scope: !64)
!293 = !DILocation(line: 287, column: 12, scope: !64)
!294 = !{!263, !259, i64 24}
!295 = !DILocation(line: 288, column: 1, scope: !64)
!296 = !DILocation(line: 292, column: 20, scope: !297)
!297 = distinct !DILexicalBlock(scope: !64, file: !1, line: 288, column: 17)
!298 = !DILocation(line: 292, column: 13, scope: !297)
!299 = !DILocation(line: 292, column: 32, scope: !297)
!300 = !DILocation(line: 292, column: 25, scope: !297)
!301 = !DILocation(line: 221, column: 10, scope: !64)
!302 = !DILocation(line: 293, column: 4, scope: !297)
!303 = !DILocation(line: 295, column: 20, scope: !297)
!304 = !DILocation(line: 295, column: 32, scope: !297)
!305 = !DILocation(line: 295, column: 25, scope: !297)
!306 = !DILocation(line: 295, column: 37, scope: !297)
!307 = !DILocation(line: 295, column: 49, scope: !297)
!308 = !DILocation(line: 296, column: 4, scope: !297)
!309 = !DILocation(line: 298, column: 20, scope: !297)
!310 = !DILocation(line: 298, column: 32, scope: !297)
!311 = !DILocation(line: 298, column: 25, scope: !297)
!312 = !DILocation(line: 298, column: 37, scope: !297)
!313 = !DILocation(line: 298, column: 49, scope: !297)
!314 = !DILocation(line: 299, column: 4, scope: !297)
!315 = !DILocation(line: 301, column: 20, scope: !297)
!316 = !DILocation(line: 301, column: 32, scope: !297)
!317 = !DILocation(line: 301, column: 25, scope: !297)
!318 = !DILocation(line: 301, column: 37, scope: !297)
!319 = !DILocation(line: 301, column: 49, scope: !297)
!320 = !DILocation(line: 302, column: 4, scope: !297)
!321 = !DILocation(line: 304, column: 20, scope: !297)
!322 = !DILocation(line: 304, column: 32, scope: !297)
!323 = !DILocation(line: 304, column: 37, scope: !297)
!324 = !DILocation(line: 304, column: 49, scope: !297)
!325 = !DILocation(line: 305, column: 4, scope: !297)
!326 = !DILocation(line: 307, column: 20, scope: !297)
!327 = !DILocation(line: 307, column: 32, scope: !297)
!328 = !DILocation(line: 307, column: 37, scope: !297)
!329 = !DILocation(line: 307, column: 49, scope: !297)
!330 = !DILocation(line: 308, column: 4, scope: !297)
!331 = !DILocation(line: 311, column: 20, scope: !297)
!332 = !DILocation(line: 311, column: 32, scope: !297)
!333 = !DILocation(line: 311, column: 25, scope: !297)
!334 = !DILocation(line: 311, column: 37, scope: !297)
!335 = !DILocation(line: 312, column: 4, scope: !297)
!336 = !DILocation(line: 317, column: 34, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 316, column: 47)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 316, column: 13)
!339 = distinct !DILexicalBlock(scope: !64, file: !1, line: 314, column: 6)
!340 = !DILocation(line: 317, column: 37, scope: !337)
!341 = !DILocation(line: 317, column: 27, scope: !337)
!342 = !DILocation(line: 317, column: 9, scope: !337)
!343 = !DILocation(line: 317, column: 17, scope: !337)
!344 = !{!263, !116, i64 32}
!345 = !DILocation(line: 319, column: 1, scope: !64)
!346 = !DILocation(line: 331, column: 14, scope: !79)
!347 = !DILocation(line: 332, column: 13, scope: !79)
!348 = !DILocation(line: 333, column: 13, scope: !79)
!349 = !DILocation(line: 334, column: 13, scope: !79)
!350 = !DILocation(line: 335, column: 13, scope: !79)
!351 = !DILocation(line: 336, column: 13, scope: !79)
!352 = !DILocation(line: 337, column: 13, scope: !79)
!353 = !DILocation(line: 338, column: 13, scope: !79)
!354 = !DILocation(line: 347, column: 11, scope: !355)
!355 = distinct !DILexicalBlock(scope: !79, file: !1, line: 347, column: 7)
!356 = !DILocation(line: 347, column: 7, scope: !79)
!357 = !DILocation(line: 348, column: 12, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !1, line: 347, column: 21)
!359 = !DILocation(line: 348, column: 4, scope: !358)
!360 = !DILocation(line: 350, column: 4, scope: !358)
!361 = !DILocation(line: 352, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !79, file: !1, line: 352, column: 7)
!363 = !DILocation(line: 352, column: 7, scope: !79)
!364 = !DILocation(line: 353, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !1, line: 352, column: 19)
!366 = !DILocation(line: 353, column: 4, scope: !365)
!367 = !DILocation(line: 355, column: 4, scope: !365)
!368 = !DILocation(line: 357, column: 12, scope: !369)
!369 = distinct !DILexicalBlock(scope: !79, file: !1, line: 357, column: 7)
!370 = !DILocation(line: 357, column: 7, scope: !79)
!371 = !DILocation(line: 358, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !1, line: 357, column: 19)
!373 = !DILocation(line: 358, column: 4, scope: !372)
!374 = !DILocation(line: 360, column: 4, scope: !372)
!375 = !DILocation(line: 367, column: 1, scope: !79)
!376 = !DILocation(line: 372, column: 12, scope: !377)
!377 = distinct !DILexicalBlock(scope: !79, file: !1, line: 367, column: 17)
!378 = !DILocation(line: 372, column: 4, scope: !377)
!379 = !DILocation(line: 374, column: 4, scope: !377)
!380 = !DILocation(line: 376, column: 1, scope: !79)
!381 = !DILocation(line: 389, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !79, file: !1, line: 376, column: 17)
!383 = !DILocation(line: 389, column: 4, scope: !382)
!384 = !DILocation(line: 391, column: 4, scope: !382)
!385 = !DILocation(line: 398, column: 10, scope: !79)
!386 = !DILocation(line: 340, column: 7, scope: !79)
!387 = !DILocation(line: 399, column: 1, scope: !79)
!388 = !DILocation(line: 400, column: 8, scope: !79)
!389 = !DILocation(line: 400, column: 14, scope: !79)
!390 = !DILocation(line: 400, column: 42, scope: !79)
!391 = !DILocation(line: 400, column: 31, scope: !79)
!392 = !DILocation(line: 400, column: 1, scope: !79)
!393 = !DILocation(line: 406, column: 1, scope: !79)
!394 = !DILocation(line: 341, column: 17, scope: !79)
!395 = !DILocation(line: 407, column: 1, scope: !79)
!396 = !DILocation(line: 408, column: 8, scope: !79)
!397 = !DILocation(line: 408, column: 14, scope: !79)
!398 = !DILocation(line: 408, column: 1, scope: !79)
!399 = !DILocation(line: 341, column: 8, scope: !79)
!400 = !DILocation(line: 409, column: 1, scope: !79)
!401 = !DILocation(line: 410, column: 8, scope: !79)
!402 = !DILocation(line: 410, column: 14, scope: !79)
!403 = !DILocation(line: 410, column: 1, scope: !79)
!404 = !DILocation(line: 412, column: 1, scope: !79)
!405 = !DILocation(line: 425, column: 14, scope: !92)
!406 = !DILocation(line: 433, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !92, file: !1, line: 433, column: 7)
!408 = !DILocation(line: 433, column: 7, scope: !92)
!409 = !DILocation(line: 434, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !1, line: 433, column: 21)
!411 = !DILocation(line: 434, column: 4, scope: !410)
!412 = !DILocation(line: 436, column: 4, scope: !410)
!413 = !DILocation(line: 438, column: 38, scope: !92)
!414 = !DILocation(line: 438, column: 21, scope: !92)
!415 = !DILocation(line: 438, column: 13, scope: !92)
!416 = !DILocation(line: 427, column: 8, scope: !92)
!417 = !DILocation(line: 439, column: 23, scope: !92)
!418 = !DILocation(line: 439, column: 35, scope: !92)
!419 = !DILocation(line: 439, column: 47, scope: !92)
!420 = !DILocation(line: 440, column: 18, scope: !92)
!421 = !DILocation(line: 440, column: 30, scope: !92)
!422 = !DILocation(line: 440, column: 42, scope: !92)
!423 = !DILocation(line: 440, column: 54, scope: !92)
!424 = !DILocation(line: 439, column: 1, scope: !92)
!425 = !DILocation(line: 442, column: 1, scope: !92)
