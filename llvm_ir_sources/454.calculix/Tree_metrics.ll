; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in Tree_setSubtreeImetric(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Tree_setDepthImetric(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Tree_setDepthDmetric(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setHeightImetric(%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setHeightDmetric(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Tree_setSubtreeImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !31, metadata !102), !dbg !103
  tail call void @llvm.dbg.value(metadata %struct._IV* %vmetricIV, i64 0, metadata !32, metadata !102), !dbg !104
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !105
  br i1 %1, label %13, label %2, !dbg !107

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !108
  %4 = load i32* %3, align 4, !dbg !108, !tbaa !109
  %5 = icmp slt i32 %4, 1, !dbg !115
  %6 = icmp eq %struct._IV* %vmetricIV, null, !dbg !116
  %or.cond = or i1 %6, %5, !dbg !117
  br i1 %or.cond, label %13, label %7, !dbg !117

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @IV_size(%struct._IV* %vmetricIV) #5, !dbg !118
  %9 = icmp eq i32 %4, %8, !dbg !119
  br i1 %9, label %10, label %13, !dbg !120

; <label>:10                                      ; preds = %7
  %11 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #5, !dbg !121
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !36, metadata !102), !dbg !122
  %12 = icmp eq i32* %11, null, !dbg !123
  br i1 %12, label %13, label %16, !dbg !124

; <label>:13                                      ; preds = %7, %10, %2, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !125, !tbaa !127
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !128
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

; <label>:16                                      ; preds = %10
  %17 = tail call %struct._IV* @IV_new() #5, !dbg !130
  tail call void @llvm.dbg.value(metadata %struct._IV* %17, i64 0, metadata !37, metadata !102), !dbg !131
  %18 = load i32* %3, align 4, !dbg !132, !tbaa !109
  tail call void @IV_init(%struct._IV* %17, i32 %18, i32* null) #5, !dbg !133
  %19 = tail call i32* @IV_entries(%struct._IV* %17) #5, !dbg !134
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !35, metadata !102), !dbg !135
  %20 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !34, metadata !102), !dbg !138
  %21 = icmp eq i32 %20, -1, !dbg !139
  br i1 %21, label %._crit_edge7, label %.lr.ph6, !dbg !141

.lr.ph6:                                          ; preds = %16
  %22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !142
  %23 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !145
  br label %24, !dbg !141

; <label>:24                                      ; preds = %.lr.ph6, %._crit_edge
  %v.04 = phi i32 [ %20, %.lr.ph6 ], [ %40, %._crit_edge ]
  %25 = sext i32 %v.04 to i64, !dbg !147
  %26 = getelementptr inbounds i32* %11, i64 %25, !dbg !147
  %27 = load i32* %26, align 4, !dbg !147, !tbaa !148
  %28 = getelementptr inbounds i32* %19, i64 %25, !dbg !149
  store i32 %27, i32* %28, align 4, !dbg !150, !tbaa !148
  %29 = load i32** %22, align 8, !dbg !142, !tbaa !151
  %30 = getelementptr inbounds i32* %29, i64 %25, !dbg !152
  %u.02 = load i32* %30, align 4, !dbg !152
  %31 = icmp eq i32 %u.02, -1, !dbg !153
  br i1 %31, label %._crit_edge, label %.lr.ph, !dbg !154

.lr.ph:                                           ; preds = %24
  %.pre = load i32** %23, align 8, !dbg !145, !tbaa !155
  br label %32, !dbg !154

; <label>:32                                      ; preds = %.lr.ph, %32
  %33 = phi i32 [ %27, %.lr.ph ], [ %37, %32 ], !dbg !156
  %u.03 = phi i32 [ %u.02, %.lr.ph ], [ %u.0, %32 ]
  %34 = sext i32 %u.03 to i64, !dbg !156
  %35 = getelementptr inbounds i32* %19, i64 %34, !dbg !156
  %36 = load i32* %35, align 4, !dbg !156, !tbaa !148
  %37 = add nsw i32 %33, %36, !dbg !158
  store i32 %37, i32* %28, align 4, !dbg !158, !tbaa !148
  %38 = getelementptr inbounds i32* %.pre, i64 %34, !dbg !159
  %u.0 = load i32* %38, align 4, !dbg !152
  %39 = icmp eq i32 %u.0, -1, !dbg !153
  br i1 %39, label %._crit_edge, label %32, !dbg !154

._crit_edge:                                      ; preds = %32, %24
  %40 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.04) #5, !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !34, metadata !102), !dbg !138
  %41 = icmp eq i32 %40, -1, !dbg !139
  br i1 %41, label %._crit_edge7, label %24, !dbg !141

._crit_edge7:                                     ; preds = %._crit_edge, %16
  ret %struct._IV* %17, !dbg !161
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #1

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !53, metadata !102), !dbg !162
  tail call void @llvm.dbg.value(metadata %struct._DV* %vmetricDV, i64 0, metadata !54, metadata !102), !dbg !163
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !164
  br i1 %1, label %13, label %2, !dbg !166

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !167
  %4 = load i32* %3, align 4, !dbg !167, !tbaa !109
  %5 = icmp slt i32 %4, 1, !dbg !168
  %6 = icmp eq %struct._DV* %vmetricDV, null, !dbg !169
  %or.cond = or i1 %6, %5, !dbg !170
  br i1 %or.cond, label %13, label %7, !dbg !170

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @DV_size(%struct._DV* %vmetricDV) #5, !dbg !171
  %9 = icmp eq i32 %4, %8, !dbg !172
  br i1 %9, label %10, label %13, !dbg !173

; <label>:10                                      ; preds = %7
  %11 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #5, !dbg !174
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !58, metadata !102), !dbg !175
  %12 = icmp eq double* %11, null, !dbg !176
  br i1 %12, label %13, label %16, !dbg !177

; <label>:13                                      ; preds = %7, %10, %2, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !178, !tbaa !127
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #5, !dbg !180
  tail call void @exit(i32 -1) #6, !dbg !181
  unreachable, !dbg !181

; <label>:16                                      ; preds = %10
  %17 = tail call %struct._DV* @DV_new() #5, !dbg !182
  tail call void @llvm.dbg.value(metadata %struct._DV* %17, i64 0, metadata !59, metadata !102), !dbg !183
  %18 = load i32* %3, align 4, !dbg !184, !tbaa !109
  tail call void @DV_init(%struct._DV* %17, i32 %18, double* null) #5, !dbg !185
  %19 = tail call double* @DV_entries(%struct._DV* %17) #5, !dbg !186
  tail call void @llvm.dbg.value(metadata double* %19, i64 0, metadata !57, metadata !102), !dbg !187
  %20 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !56, metadata !102), !dbg !190
  %21 = icmp eq i32 %20, -1, !dbg !191
  br i1 %21, label %._crit_edge7, label %.lr.ph6, !dbg !193

.lr.ph6:                                          ; preds = %16
  %22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !194
  %23 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !197
  br label %24, !dbg !193

; <label>:24                                      ; preds = %.lr.ph6, %._crit_edge
  %v.04 = phi i32 [ %20, %.lr.ph6 ], [ %43, %._crit_edge ]
  %25 = sext i32 %v.04 to i64, !dbg !199
  %26 = getelementptr inbounds double* %11, i64 %25, !dbg !199
  %27 = bitcast double* %26 to i64*, !dbg !199
  %28 = load i64* %27, align 8, !dbg !199, !tbaa !200
  %29 = getelementptr inbounds double* %19, i64 %25, !dbg !202
  %30 = bitcast double* %29 to i64*, !dbg !203
  store i64 %28, i64* %30, align 8, !dbg !203, !tbaa !200
  %31 = load i32** %22, align 8, !dbg !194, !tbaa !151
  %32 = getelementptr inbounds i32* %31, i64 %25, !dbg !204
  %u.02 = load i32* %32, align 4, !dbg !204
  %33 = icmp eq i32 %u.02, -1, !dbg !205
  br i1 %33, label %._crit_edge, label %.lr.ph, !dbg !206

.lr.ph:                                           ; preds = %24
  %34 = bitcast i64 %28 to double
  %.pre = load i32** %23, align 8, !dbg !197, !tbaa !155
  br label %35, !dbg !206

; <label>:35                                      ; preds = %.lr.ph, %35
  %36 = phi double [ %34, %.lr.ph ], [ %40, %35 ], !dbg !207
  %u.03 = phi i32 [ %u.02, %.lr.ph ], [ %u.0, %35 ]
  %37 = sext i32 %u.03 to i64, !dbg !207
  %38 = getelementptr inbounds double* %19, i64 %37, !dbg !207
  %39 = load double* %38, align 8, !dbg !207, !tbaa !200
  %40 = fadd double %39, %36, !dbg !209
  store double %40, double* %29, align 8, !dbg !209, !tbaa !200
  %41 = getelementptr inbounds i32* %.pre, i64 %37, !dbg !210
  %u.0 = load i32* %41, align 4, !dbg !204
  %42 = icmp eq i32 %u.0, -1, !dbg !205
  br i1 %42, label %._crit_edge, label %35, !dbg !206

._crit_edge:                                      ; preds = %35, %24
  %43 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.04) #5, !dbg !211
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !56, metadata !102), !dbg !190
  %44 = icmp eq i32 %43, -1, !dbg !191
  br i1 %44, label %._crit_edge7, label %24, !dbg !193

._crit_edge7:                                     ; preds = %._crit_edge, %16
  ret %struct._DV* %17, !dbg !212
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #1

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #1

; Function Attrs: optsize
declare %struct._DV* @DV_new() #1

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Tree_setDepthImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !62, metadata !102), !dbg !213
  tail call void @llvm.dbg.value(metadata %struct._IV* %vmetricIV, i64 0, metadata !63, metadata !102), !dbg !214
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !215
  br i1 %1, label %13, label %2, !dbg !217

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !218
  %4 = load i32* %3, align 4, !dbg !218, !tbaa !109
  %5 = icmp slt i32 %4, 1, !dbg !219
  %6 = icmp eq %struct._IV* %vmetricIV, null, !dbg !220
  %or.cond = or i1 %6, %5, !dbg !221
  br i1 %or.cond, label %13, label %7, !dbg !221

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @IV_size(%struct._IV* %vmetricIV) #5, !dbg !222
  %9 = icmp eq i32 %4, %8, !dbg !223
  br i1 %9, label %10, label %13, !dbg !224

; <label>:10                                      ; preds = %7
  %11 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #5, !dbg !225
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !67, metadata !102), !dbg !226
  %12 = icmp eq i32* %11, null, !dbg !227
  br i1 %12, label %13, label %16, !dbg !228

; <label>:13                                      ; preds = %7, %10, %2, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !229, !tbaa !127
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !231
  tail call void @exit(i32 -1) #6, !dbg !232
  unreachable, !dbg !232

; <label>:16                                      ; preds = %10
  %17 = tail call %struct._IV* @IV_new() #5, !dbg !233
  tail call void @llvm.dbg.value(metadata %struct._IV* %17, i64 0, metadata !68, metadata !102), !dbg !234
  %18 = load i32* %3, align 4, !dbg !235, !tbaa !109
  tail call void @IV_init(%struct._IV* %17, i32 %18, i32* null) #5, !dbg !236
  %19 = tail call i32* @IV_entries(%struct._IV* %17) #5, !dbg !237
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !66, metadata !102), !dbg !238
  %20 = tail call i32 @Tree_preOTfirst(%struct._Tree* %tree) #5, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !64, metadata !102), !dbg !241
  %21 = icmp eq i32 %20, -1, !dbg !242
  br i1 %21, label %._crit_edge, label %.lr.ph, !dbg !244

.lr.ph:                                           ; preds = %16
  %22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !245
  br label %23, !dbg !244

; <label>:23                                      ; preds = %.lr.ph, %37
  %u.02 = phi i32 [ %20, %.lr.ph ], [ %38, %37 ]
  %24 = sext i32 %u.02 to i64, !dbg !248
  %25 = getelementptr inbounds i32* %11, i64 %24, !dbg !248
  %26 = load i32* %25, align 4, !dbg !248, !tbaa !148
  %27 = getelementptr inbounds i32* %19, i64 %24, !dbg !249
  store i32 %26, i32* %27, align 4, !dbg !250, !tbaa !148
  %28 = load i32** %22, align 8, !dbg !245, !tbaa !251
  %29 = getelementptr inbounds i32* %28, i64 %24, !dbg !252
  %30 = load i32* %29, align 4, !dbg !252, !tbaa !148
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !65, metadata !102), !dbg !253
  %31 = icmp eq i32 %30, -1, !dbg !254
  br i1 %31, label %37, label %32, !dbg !255

; <label>:32                                      ; preds = %23
  %33 = sext i32 %30 to i64, !dbg !256
  %34 = getelementptr inbounds i32* %19, i64 %33, !dbg !256
  %35 = load i32* %34, align 4, !dbg !256, !tbaa !148
  %36 = add nsw i32 %35, %26, !dbg !258
  store i32 %36, i32* %27, align 4, !dbg !258, !tbaa !148
  br label %37, !dbg !259

; <label>:37                                      ; preds = %23, %32
  %38 = tail call i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %u.02) #5, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !64, metadata !102), !dbg !241
  %39 = icmp eq i32 %38, -1, !dbg !242
  br i1 %39, label %._crit_edge, label %23, !dbg !244

._crit_edge:                                      ; preds = %37, %16
  ret %struct._IV* %17, !dbg !261
}

; Function Attrs: optsize
declare i32 @Tree_preOTfirst(%struct._Tree*) #1

; Function Attrs: optsize
declare i32 @Tree_preOTnext(%struct._Tree*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._DV* @Tree_setDepthDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !71, metadata !102), !dbg !262
  tail call void @llvm.dbg.value(metadata %struct._DV* %vmetricDV, i64 0, metadata !72, metadata !102), !dbg !263
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !264
  br i1 %1, label %13, label %2, !dbg !266

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !267
  %4 = load i32* %3, align 4, !dbg !267, !tbaa !109
  %5 = icmp slt i32 %4, 1, !dbg !268
  %6 = icmp eq %struct._DV* %vmetricDV, null, !dbg !269
  %or.cond = or i1 %6, %5, !dbg !270
  br i1 %or.cond, label %13, label %7, !dbg !270

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @DV_size(%struct._DV* %vmetricDV) #5, !dbg !271
  %9 = icmp eq i32 %4, %8, !dbg !272
  br i1 %9, label %10, label %13, !dbg !273

; <label>:10                                      ; preds = %7
  %11 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #5, !dbg !274
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !76, metadata !102), !dbg !275
  %12 = icmp eq double* %11, null, !dbg !276
  br i1 %12, label %13, label %16, !dbg !277

; <label>:13                                      ; preds = %7, %10, %2, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !278, !tbaa !127
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #5, !dbg !280
  tail call void @exit(i32 -1) #6, !dbg !281
  unreachable, !dbg !281

; <label>:16                                      ; preds = %10
  %17 = tail call %struct._DV* @DV_new() #5, !dbg !282
  tail call void @llvm.dbg.value(metadata %struct._DV* %17, i64 0, metadata !77, metadata !102), !dbg !283
  %18 = load i32* %3, align 4, !dbg !284, !tbaa !109
  tail call void @DV_init(%struct._DV* %17, i32 %18, double* null) #5, !dbg !285
  %19 = tail call double* @DV_entries(%struct._DV* %17) #5, !dbg !286
  tail call void @llvm.dbg.value(metadata double* %19, i64 0, metadata !75, metadata !102), !dbg !287
  %20 = tail call i32 @Tree_preOTfirst(%struct._Tree* %tree) #5, !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !73, metadata !102), !dbg !290
  %21 = icmp eq i32 %20, -1, !dbg !291
  br i1 %21, label %._crit_edge, label %.lr.ph, !dbg !293

.lr.ph:                                           ; preds = %16
  %22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !294
  br label %23, !dbg !293

; <label>:23                                      ; preds = %.lr.ph, %37
  %u.02 = phi i32 [ %20, %.lr.ph ], [ %38, %37 ]
  %24 = sext i32 %u.02 to i64, !dbg !297
  %25 = getelementptr inbounds double* %11, i64 %24, !dbg !297
  %26 = load double* %25, align 8, !dbg !297, !tbaa !200
  %27 = getelementptr inbounds double* %19, i64 %24, !dbg !298
  store double %26, double* %27, align 8, !dbg !299, !tbaa !200
  %28 = load i32** %22, align 8, !dbg !294, !tbaa !251
  %29 = getelementptr inbounds i32* %28, i64 %24, !dbg !300
  %30 = load i32* %29, align 4, !dbg !300, !tbaa !148
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !74, metadata !102), !dbg !301
  %31 = icmp eq i32 %30, -1, !dbg !302
  br i1 %31, label %37, label %32, !dbg !303

; <label>:32                                      ; preds = %23
  %33 = sext i32 %30 to i64, !dbg !304
  %34 = getelementptr inbounds double* %19, i64 %33, !dbg !304
  %35 = load double* %34, align 8, !dbg !304, !tbaa !200
  %36 = fadd double %26, %35, !dbg !306
  store double %36, double* %27, align 8, !dbg !306, !tbaa !200
  br label %37, !dbg !307

; <label>:37                                      ; preds = %23, %32
  %38 = tail call i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %u.02) #5, !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !73, metadata !102), !dbg !290
  %39 = icmp eq i32 %38, -1, !dbg !291
  br i1 %39, label %._crit_edge, label %23, !dbg !293

._crit_edge:                                      ; preds = %37, %16
  ret %struct._DV* %17, !dbg !309
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Tree_setHeightImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !80, metadata !102), !dbg !310
  tail call void @llvm.dbg.value(metadata %struct._IV* %vmetricIV, i64 0, metadata !81, metadata !102), !dbg !311
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !312
  br i1 %1, label %13, label %2, !dbg !314

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !315
  %4 = load i32* %3, align 4, !dbg !315, !tbaa !109
  %5 = icmp slt i32 %4, 1, !dbg !316
  %6 = icmp eq %struct._IV* %vmetricIV, null, !dbg !317
  %or.cond = or i1 %6, %5, !dbg !318
  br i1 %or.cond, label %16, label %7, !dbg !318

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @IV_size(%struct._IV* %vmetricIV) #5, !dbg !319
  %9 = icmp eq i32 %4, %8, !dbg !320
  br i1 %9, label %10, label %16, !dbg !321

; <label>:10                                      ; preds = %7
  %11 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #5, !dbg !322
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !86, metadata !102), !dbg !323
  %12 = icmp eq i32* %11, null, !dbg !324
  br i1 %12, label %16, label %27, !dbg !325

; <label>:13                                      ; preds = %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !326, !tbaa !127
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null, %struct._IV* %vmetricIV) #5, !dbg !328
  br label %21

; <label>:16                                      ; preds = %7, %10, %2
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !326, !tbaa !127
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !328
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !329, !tbaa !127
  %20 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct.__sFILE* %19) #5, !dbg !332
  br label %21, !dbg !333

; <label>:21                                      ; preds = %13, %16
  %22 = icmp eq %struct._IV* %vmetricIV, null, !dbg !334
  br i1 %22, label %26, label %23, !dbg !336

; <label>:23                                      ; preds = %21
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !337, !tbaa !127
  %25 = tail call i32 @IV_writeForHumanEye(%struct._IV* %vmetricIV, %struct.__sFILE* %24) #5, !dbg !339
  br label %26, !dbg !340

; <label>:26                                      ; preds = %21, %23
  tail call void @exit(i32 -1) #6, !dbg !341
  unreachable, !dbg !341

; <label>:27                                      ; preds = %10
  %28 = tail call %struct._IV* @IV_new() #5, !dbg !342
  tail call void @llvm.dbg.value(metadata %struct._IV* %28, i64 0, metadata !87, metadata !102), !dbg !343
  %29 = load i32* %3, align 4, !dbg !344, !tbaa !109
  tail call void @IV_init(%struct._IV* %28, i32 %29, i32* null) #5, !dbg !345
  %30 = tail call i32* @IV_entries(%struct._IV* %28) #5, !dbg !346
  tail call void @llvm.dbg.value(metadata i32* %30, i64 0, metadata !85, metadata !102), !dbg !347
  %31 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !83, metadata !102), !dbg !350
  %32 = icmp eq i32 %31, -1, !dbg !351
  br i1 %32, label %._crit_edge8, label %.lr.ph7, !dbg !353

.lr.ph7:                                          ; preds = %27
  %33 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !354
  %34 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !357
  br label %35, !dbg !353

; <label>:35                                      ; preds = %.lr.ph7, %._crit_edge
  %v.05 = phi i32 [ %31, %.lr.ph7 ], [ %52, %._crit_edge ]
  %36 = sext i32 %v.05 to i64, !dbg !359
  %37 = load i32** %33, align 8, !dbg !354, !tbaa !151
  %38 = getelementptr inbounds i32* %37, i64 %36, !dbg !359
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !102), !dbg !360
  %u.02 = load i32* %38, align 4, !dbg !359
  %39 = icmp eq i32 %u.02, -1, !dbg !361
  br i1 %39, label %._crit_edge, label %.lr.ph, !dbg !362

.lr.ph:                                           ; preds = %35
  %40 = load i32** %34, align 8, !dbg !357, !tbaa !155
  br label %41, !dbg !362

; <label>:41                                      ; preds = %.lr.ph, %41
  %u.04 = phi i32 [ %u.02, %.lr.ph ], [ %u.0, %41 ]
  %val.03 = phi i32 [ 0, %.lr.ph ], [ %.val.0, %41 ]
  %42 = sext i32 %u.04 to i64, !dbg !363
  %43 = getelementptr inbounds i32* %30, i64 %42, !dbg !363
  %44 = load i32* %43, align 4, !dbg !363, !tbaa !148
  %45 = icmp slt i32 %val.03, %44, !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !84, metadata !102), !dbg !360
  %.val.0 = select i1 %45, i32 %44, i32 %val.03, !dbg !367
  %46 = getelementptr inbounds i32* %40, i64 %42, !dbg !368
  %u.0 = load i32* %46, align 4, !dbg !359
  %47 = icmp eq i32 %u.0, -1, !dbg !361
  br i1 %47, label %._crit_edge, label %41, !dbg !362

._crit_edge:                                      ; preds = %41, %35
  %val.0.lcssa = phi i32 [ 0, %35 ], [ %.val.0, %41 ]
  %48 = getelementptr inbounds i32* %11, i64 %36, !dbg !369
  %49 = load i32* %48, align 4, !dbg !369, !tbaa !148
  %50 = add nsw i32 %49, %val.0.lcssa, !dbg !370
  %51 = getelementptr inbounds i32* %30, i64 %36, !dbg !371
  store i32 %50, i32* %51, align 4, !dbg !372, !tbaa !148
  %52 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.05) #5, !dbg !373
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !83, metadata !102), !dbg !350
  %53 = icmp eq i32 %52, -1, !dbg !351
  br i1 %53, label %._crit_edge8, label %35, !dbg !353

._crit_edge8:                                     ; preds = %._crit_edge, %27
  ret %struct._IV* %28, !dbg !374
}

; Function Attrs: optsize
declare i32 @Tree_writeForHumanEye(%struct._Tree*, %struct.__sFILE*) #1

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._DV* @Tree_setHeightDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !90, metadata !102), !dbg !375
  tail call void @llvm.dbg.value(metadata %struct._DV* %vmetricDV, i64 0, metadata !91, metadata !102), !dbg !376
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !377
  br i1 %1, label %13, label %2, !dbg !379

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !380
  %4 = load i32* %3, align 4, !dbg !380, !tbaa !109
  %5 = icmp slt i32 %4, 1, !dbg !381
  %6 = icmp eq %struct._DV* %vmetricDV, null, !dbg !382
  %or.cond = or i1 %6, %5, !dbg !383
  br i1 %or.cond, label %13, label %7, !dbg !383

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @DV_size(%struct._DV* %vmetricDV) #5, !dbg !384
  %9 = icmp eq i32 %4, %8, !dbg !385
  br i1 %9, label %10, label %13, !dbg !386

; <label>:10                                      ; preds = %7
  %11 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #5, !dbg !387
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !96, metadata !102), !dbg !388
  %12 = icmp eq double* %11, null, !dbg !389
  br i1 %12, label %13, label %16, !dbg !390

; <label>:13                                      ; preds = %7, %10, %2, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !391, !tbaa !127
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #5, !dbg !393
  tail call void @exit(i32 -1) #6, !dbg !394
  unreachable, !dbg !394

; <label>:16                                      ; preds = %10
  %17 = tail call %struct._DV* @DV_new() #5, !dbg !395
  tail call void @llvm.dbg.value(metadata %struct._DV* %17, i64 0, metadata !97, metadata !102), !dbg !396
  %18 = load i32* %3, align 4, !dbg !397, !tbaa !109
  tail call void @DV_init(%struct._DV* %17, i32 %18, double* null) #5, !dbg !398
  %19 = tail call double* @DV_entries(%struct._DV* %17) #5, !dbg !399
  tail call void @llvm.dbg.value(metadata double* %19, i64 0, metadata !95, metadata !102), !dbg !400
  %20 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !93, metadata !102), !dbg !403
  %21 = icmp eq i32 %20, -1, !dbg !404
  br i1 %21, label %._crit_edge8, label %.lr.ph7, !dbg !406

.lr.ph7:                                          ; preds = %16
  %22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !407
  %23 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !410
  br label %24, !dbg !406

; <label>:24                                      ; preds = %.lr.ph7, %._crit_edge
  %v.05 = phi i32 [ %20, %.lr.ph7 ], [ %46, %._crit_edge ]
  %25 = sext i32 %v.05 to i64, !dbg !412
  %26 = load i32** %22, align 8, !dbg !407, !tbaa !151
  %27 = getelementptr inbounds i32* %26, i64 %25, !dbg !412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !102), !dbg !413
  %u.02 = load i32* %27, align 4, !dbg !412
  %28 = icmp eq i32 %u.02, -1, !dbg !414
  br i1 %28, label %._crit_edge, label %.lr.ph, !dbg !415

.lr.ph:                                           ; preds = %24
  %29 = load i32** %23, align 8, !dbg !410, !tbaa !155
  br label %30, !dbg !415

; <label>:30                                      ; preds = %.lr.ph, %38
  %31 = phi double [ 0.000000e+00, %.lr.ph ], [ %41, %38 ]
  %u.04 = phi i32 [ %u.02, %.lr.ph ], [ %u.0, %38 ]
  %val.03 = phi i32 [ 0, %.lr.ph ], [ %val.1, %38 ]
  %32 = sext i32 %u.04 to i64, !dbg !416
  %33 = getelementptr inbounds double* %19, i64 %32, !dbg !416
  %34 = load double* %33, align 8, !dbg !416, !tbaa !200
  %35 = fcmp olt double %31, %34, !dbg !419
  br i1 %35, label %36, label %38, !dbg !420

; <label>:36                                      ; preds = %30
  %37 = fptosi double %34 to i32, !dbg !421
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !94, metadata !102), !dbg !413
  br label %38, !dbg !423

; <label>:38                                      ; preds = %30, %36
  %val.1 = phi i32 [ %37, %36 ], [ %val.03, %30 ]
  %39 = getelementptr inbounds i32* %29, i64 %32, !dbg !424
  %u.0 = load i32* %39, align 4, !dbg !412
  %40 = icmp eq i32 %u.0, -1, !dbg !414
  %41 = sitofp i32 %val.1 to double, !dbg !425
  br i1 %40, label %._crit_edge, label %30, !dbg !415

._crit_edge:                                      ; preds = %38, %24
  %.lcssa = phi double [ 0.000000e+00, %24 ], [ %41, %38 ]
  %42 = getelementptr inbounds double* %11, i64 %25, !dbg !426
  %43 = load double* %42, align 8, !dbg !426, !tbaa !200
  %44 = fadd double %.lcssa, %43, !dbg !427
  %45 = getelementptr inbounds double* %19, i64 %25, !dbg !428
  store double %44, double* %45, align 8, !dbg !429, !tbaa !200
  %46 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.05) #5, !dbg !430
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !93, metadata !102), !dbg !403
  %47 = icmp eq i32 %46, -1, !dbg !404
  br i1 %47, label %._crit_edge8, label %24, !dbg !406

._crit_edge8:                                     ; preds = %._crit_edge, %16
  ret %struct._DV* %17, !dbg !431
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !38, !60, !69, !78, !88}
!6 = !DISubprogram(name: "Tree_setSubtreeImetric", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Tree*, %struct._IV*)* @Tree_setSubtreeImetric, variables: !30)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !20, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !22, line: 15, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !22, line: 16, size: 256, align: 64, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !23, file: !22, line: 17, baseType: !15, size: 32, align: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !23, file: !22, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !23, file: !22, line: 19, baseType: !19, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !23, file: !22, line: 20, baseType: !19, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !23, file: !22, line: 21, baseType: !19, size: 64, align: 64, offset: 192)
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !6, file: !1, line: 17, type: !20)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vmetricIV", arg: 2, scope: !6, file: !1, line: 18, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !6, file: !1, line: 20, type: !15)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 20, type: !15)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmetric", scope: !6, file: !1, line: 21, type: !19)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetric", scope: !6, file: !1, line: 21, type: !19)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmetricIV", scope: !6, file: !1, line: 22, type: !9)
!38 = !DISubprogram(name: "Tree_setSubtreeDmetric", scope: !1, file: !1, line: 60, type: !39, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: %struct._DV* (%struct._Tree*, %struct._DV*)* @Tree_setSubtreeDmetric, variables: !52)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !20, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !43, line: 20, baseType: !44)
!43 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !43, line: 21, size: 192, align: 64, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !43, line: 22, baseType: !15, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !44, file: !43, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !44, file: !43, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !44, file: !43, line: 25, baseType: !50, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !38, file: !1, line: 61, type: !20)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vmetricDV", arg: 2, scope: !38, file: !1, line: 62, type: !41)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !38, file: !1, line: 64, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !38, file: !1, line: 64, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmetric", scope: !38, file: !1, line: 65, type: !50)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetric", scope: !38, file: !1, line: 65, type: !50)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmetricDV", scope: !38, file: !1, line: 66, type: !41)
!60 = !DISubprogram(name: "Tree_setDepthImetric", scope: !1, file: !1, line: 107, type: !7, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Tree*, %struct._IV*)* @Tree_setDepthImetric, variables: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !60, file: !1, line: 108, type: !20)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vmetricIV", arg: 2, scope: !60, file: !1, line: 109, type: !9)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !60, file: !1, line: 111, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !60, file: !1, line: 111, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmetric", scope: !60, file: !1, line: 112, type: !19)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetric", scope: !60, file: !1, line: 112, type: !19)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmetricIV", scope: !60, file: !1, line: 113, type: !9)
!69 = !DISubprogram(name: "Tree_setDepthDmetric", scope: !1, file: !1, line: 154, type: !39, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: %struct._DV* (%struct._Tree*, %struct._DV*)* @Tree_setDepthDmetric, variables: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !69, file: !1, line: 155, type: !20)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vmetricDV", arg: 2, scope: !69, file: !1, line: 156, type: !41)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !69, file: !1, line: 158, type: !15)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !69, file: !1, line: 158, type: !15)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmetric", scope: !69, file: !1, line: 159, type: !50)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetric", scope: !69, file: !1, line: 159, type: !50)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmetricDV", scope: !69, file: !1, line: 160, type: !41)
!78 = !DISubprogram(name: "Tree_setHeightImetric", scope: !1, file: !1, line: 201, type: !7, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Tree*, %struct._IV*)* @Tree_setHeightImetric, variables: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !78, file: !1, line: 202, type: !20)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vmetricIV", arg: 2, scope: !78, file: !1, line: 203, type: !9)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !78, file: !1, line: 205, type: !15)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !78, file: !1, line: 205, type: !15)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !78, file: !1, line: 205, type: !15)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetric", scope: !78, file: !1, line: 206, type: !19)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetric", scope: !78, file: !1, line: 206, type: !19)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetricIV", scope: !78, file: !1, line: 207, type: !9)
!88 = !DISubprogram(name: "Tree_setHeightDmetric", scope: !1, file: !1, line: 256, type: !39, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: %struct._DV* (%struct._Tree*, %struct._DV*)* @Tree_setHeightDmetric, variables: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !88, file: !1, line: 257, type: !20)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vmetricDV", arg: 2, scope: !88, file: !1, line: 258, type: !41)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !88, file: !1, line: 260, type: !15)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !88, file: !1, line: 260, type: !15)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !88, file: !1, line: 260, type: !15)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetric", scope: !88, file: !1, line: 261, type: !50)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetric", scope: !88, file: !1, line: 261, type: !50)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetricDV", scope: !88, file: !1, line: 262, type: !41)
!98 = !{i32 2, !"Dwarf Version", i32 2}
!99 = !{i32 2, !"Debug Info Version", i32 700000003}
!100 = !{i32 1, !"PIC Level", i32 2}
!101 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!102 = !DIExpression()
!103 = !DILocation(line: 17, column: 12, scope: !6)
!104 = !DILocation(line: 18, column: 12, scope: !6)
!105 = !DILocation(line: 28, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 7)
!107 = !DILocation(line: 28, column: 20, scope: !106)
!108 = !DILocation(line: 28, column: 29, scope: !106)
!109 = !{!110, !111, i64 0}
!110 = !{!"_Tree", !111, i64 0, !111, i64 4, !114, i64 8, !114, i64 16, !114, i64 24}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!"any pointer", !112, i64 0}
!115 = !DILocation(line: 28, column: 31, scope: !106)
!116 = !DILocation(line: 29, column: 17, scope: !106)
!117 = !DILocation(line: 29, column: 4, scope: !106)
!118 = !DILocation(line: 30, column: 18, scope: !106)
!119 = !DILocation(line: 30, column: 15, scope: !106)
!120 = !DILocation(line: 31, column: 4, scope: !106)
!121 = !DILocation(line: 31, column: 18, scope: !106)
!122 = !DILocation(line: 21, column: 18, scope: !6)
!123 = !DILocation(line: 31, column: 41, scope: !106)
!124 = !DILocation(line: 28, column: 7, scope: !6)
!125 = !DILocation(line: 32, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !106, file: !1, line: 31, column: 51)
!127 = !{!114, !114, i64 0}
!128 = !DILocation(line: 32, column: 4, scope: !126)
!129 = !DILocation(line: 34, column: 4, scope: !126)
!130 = !DILocation(line: 36, column: 13, scope: !6)
!131 = !DILocation(line: 22, column: 8, scope: !6)
!132 = !DILocation(line: 37, column: 26, scope: !6)
!133 = !DILocation(line: 37, column: 1, scope: !6)
!134 = !DILocation(line: 38, column: 11, scope: !6)
!135 = !DILocation(line: 21, column: 8, scope: !6)
!136 = !DILocation(line: 39, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !6, file: !1, line: 39, column: 1)
!138 = !DILocation(line: 20, column: 10, scope: !6)
!139 = !DILocation(line: 40, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !1, line: 39, column: 1)
!141 = !DILocation(line: 39, column: 1, scope: !137)
!142 = !DILocation(line: 43, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 43, column: 4)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 41, column: 38)
!145 = !DILocation(line: 43, column: 49, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 43, column: 4)
!147 = !DILocation(line: 42, column: 17, scope: !144)
!148 = !{!111, !111, i64 0}
!149 = !DILocation(line: 42, column: 4, scope: !144)
!150 = !DILocation(line: 42, column: 15, scope: !144)
!151 = !{!110, !114, i64 16}
!152 = !DILocation(line: 43, column: 14, scope: !143)
!153 = !DILocation(line: 43, column: 31, scope: !146)
!154 = !DILocation(line: 43, column: 4, scope: !143)
!155 = !{!110, !114, i64 24}
!156 = !DILocation(line: 44, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !146, file: !1, line: 43, column: 58)
!158 = !DILocation(line: 44, column: 18, scope: !157)
!159 = !DILocation(line: 43, column: 43, scope: !146)
!160 = !DILocation(line: 41, column: 11, scope: !140)
!161 = !DILocation(line: 47, column: 1, scope: !6)
!162 = !DILocation(line: 61, column: 12, scope: !38)
!163 = !DILocation(line: 62, column: 12, scope: !38)
!164 = !DILocation(line: 72, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !38, file: !1, line: 72, column: 7)
!166 = !DILocation(line: 72, column: 20, scope: !165)
!167 = !DILocation(line: 72, column: 29, scope: !165)
!168 = !DILocation(line: 72, column: 31, scope: !165)
!169 = !DILocation(line: 73, column: 17, scope: !165)
!170 = !DILocation(line: 73, column: 4, scope: !165)
!171 = !DILocation(line: 74, column: 18, scope: !165)
!172 = !DILocation(line: 74, column: 15, scope: !165)
!173 = !DILocation(line: 75, column: 4, scope: !165)
!174 = !DILocation(line: 75, column: 18, scope: !165)
!175 = !DILocation(line: 65, column: 21, scope: !38)
!176 = !DILocation(line: 75, column: 41, scope: !165)
!177 = !DILocation(line: 72, column: 7, scope: !38)
!178 = !DILocation(line: 76, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !165, file: !1, line: 75, column: 51)
!180 = !DILocation(line: 76, column: 4, scope: !179)
!181 = !DILocation(line: 78, column: 4, scope: !179)
!182 = !DILocation(line: 80, column: 13, scope: !38)
!183 = !DILocation(line: 66, column: 8, scope: !38)
!184 = !DILocation(line: 81, column: 26, scope: !38)
!185 = !DILocation(line: 81, column: 1, scope: !38)
!186 = !DILocation(line: 82, column: 11, scope: !38)
!187 = !DILocation(line: 65, column: 11, scope: !38)
!188 = !DILocation(line: 83, column: 11, scope: !189)
!189 = distinct !DILexicalBlock(scope: !38, file: !1, line: 83, column: 1)
!190 = !DILocation(line: 64, column: 13, scope: !38)
!191 = !DILocation(line: 84, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 83, column: 1)
!193 = !DILocation(line: 83, column: 1, scope: !189)
!194 = !DILocation(line: 87, column: 20, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 87, column: 4)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 85, column: 38)
!197 = !DILocation(line: 87, column: 49, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 87, column: 4)
!199 = !DILocation(line: 86, column: 17, scope: !196)
!200 = !{!201, !201, i64 0}
!201 = !{!"double", !112, i64 0}
!202 = !DILocation(line: 86, column: 4, scope: !196)
!203 = !DILocation(line: 86, column: 15, scope: !196)
!204 = !DILocation(line: 87, column: 14, scope: !195)
!205 = !DILocation(line: 87, column: 31, scope: !198)
!206 = !DILocation(line: 87, column: 4, scope: !195)
!207 = !DILocation(line: 88, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !198, file: !1, line: 87, column: 58)
!209 = !DILocation(line: 88, column: 18, scope: !208)
!210 = !DILocation(line: 87, column: 43, scope: !198)
!211 = !DILocation(line: 85, column: 11, scope: !192)
!212 = !DILocation(line: 91, column: 1, scope: !38)
!213 = !DILocation(line: 108, column: 12, scope: !60)
!214 = !DILocation(line: 109, column: 12, scope: !60)
!215 = !DILocation(line: 119, column: 12, scope: !216)
!216 = distinct !DILexicalBlock(scope: !60, file: !1, line: 119, column: 7)
!217 = !DILocation(line: 119, column: 20, scope: !216)
!218 = !DILocation(line: 119, column: 29, scope: !216)
!219 = !DILocation(line: 119, column: 31, scope: !216)
!220 = !DILocation(line: 120, column: 17, scope: !216)
!221 = !DILocation(line: 120, column: 4, scope: !216)
!222 = !DILocation(line: 121, column: 18, scope: !216)
!223 = !DILocation(line: 121, column: 15, scope: !216)
!224 = !DILocation(line: 122, column: 4, scope: !216)
!225 = !DILocation(line: 122, column: 18, scope: !216)
!226 = !DILocation(line: 112, column: 18, scope: !60)
!227 = !DILocation(line: 122, column: 41, scope: !216)
!228 = !DILocation(line: 119, column: 7, scope: !60)
!229 = !DILocation(line: 123, column: 12, scope: !230)
!230 = distinct !DILexicalBlock(scope: !216, file: !1, line: 122, column: 51)
!231 = !DILocation(line: 123, column: 4, scope: !230)
!232 = !DILocation(line: 125, column: 4, scope: !230)
!233 = !DILocation(line: 127, column: 13, scope: !60)
!234 = !DILocation(line: 113, column: 8, scope: !60)
!235 = !DILocation(line: 128, column: 26, scope: !60)
!236 = !DILocation(line: 128, column: 1, scope: !60)
!237 = !DILocation(line: 129, column: 11, scope: !60)
!238 = !DILocation(line: 112, column: 8, scope: !60)
!239 = !DILocation(line: 130, column: 11, scope: !240)
!240 = distinct !DILexicalBlock(scope: !60, file: !1, line: 130, column: 1)
!241 = !DILocation(line: 111, column: 7, scope: !60)
!242 = !DILocation(line: 131, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !1, line: 130, column: 1)
!244 = !DILocation(line: 130, column: 1, scope: !240)
!245 = !DILocation(line: 134, column: 20, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 134, column: 9)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 132, column: 37)
!248 = !DILocation(line: 133, column: 17, scope: !247)
!249 = !DILocation(line: 133, column: 4, scope: !247)
!250 = !DILocation(line: 133, column: 15, scope: !247)
!251 = !{!110, !114, i64 8}
!252 = !DILocation(line: 134, column: 14, scope: !246)
!253 = !DILocation(line: 111, column: 10, scope: !60)
!254 = !DILocation(line: 134, column: 28, scope: !246)
!255 = !DILocation(line: 134, column: 9, scope: !247)
!256 = !DILocation(line: 135, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !246, file: !1, line: 134, column: 36)
!258 = !DILocation(line: 135, column: 18, scope: !257)
!259 = !DILocation(line: 136, column: 4, scope: !257)
!260 = !DILocation(line: 132, column: 11, scope: !243)
!261 = !DILocation(line: 138, column: 1, scope: !60)
!262 = !DILocation(line: 155, column: 12, scope: !69)
!263 = !DILocation(line: 156, column: 12, scope: !69)
!264 = !DILocation(line: 166, column: 12, scope: !265)
!265 = distinct !DILexicalBlock(scope: !69, file: !1, line: 166, column: 7)
!266 = !DILocation(line: 166, column: 20, scope: !265)
!267 = !DILocation(line: 166, column: 29, scope: !265)
!268 = !DILocation(line: 166, column: 31, scope: !265)
!269 = !DILocation(line: 167, column: 17, scope: !265)
!270 = !DILocation(line: 167, column: 4, scope: !265)
!271 = !DILocation(line: 168, column: 18, scope: !265)
!272 = !DILocation(line: 168, column: 15, scope: !265)
!273 = !DILocation(line: 169, column: 4, scope: !265)
!274 = !DILocation(line: 169, column: 18, scope: !265)
!275 = !DILocation(line: 159, column: 21, scope: !69)
!276 = !DILocation(line: 169, column: 41, scope: !265)
!277 = !DILocation(line: 166, column: 7, scope: !69)
!278 = !DILocation(line: 170, column: 12, scope: !279)
!279 = distinct !DILexicalBlock(scope: !265, file: !1, line: 169, column: 51)
!280 = !DILocation(line: 170, column: 4, scope: !279)
!281 = !DILocation(line: 172, column: 4, scope: !279)
!282 = !DILocation(line: 174, column: 13, scope: !69)
!283 = !DILocation(line: 160, column: 11, scope: !69)
!284 = !DILocation(line: 175, column: 26, scope: !69)
!285 = !DILocation(line: 175, column: 1, scope: !69)
!286 = !DILocation(line: 176, column: 11, scope: !69)
!287 = !DILocation(line: 159, column: 11, scope: !69)
!288 = !DILocation(line: 177, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !69, file: !1, line: 177, column: 1)
!290 = !DILocation(line: 158, column: 10, scope: !69)
!291 = !DILocation(line: 178, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 177, column: 1)
!293 = !DILocation(line: 177, column: 1, scope: !289)
!294 = !DILocation(line: 181, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 181, column: 9)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 179, column: 37)
!297 = !DILocation(line: 180, column: 17, scope: !296)
!298 = !DILocation(line: 180, column: 4, scope: !296)
!299 = !DILocation(line: 180, column: 15, scope: !296)
!300 = !DILocation(line: 181, column: 14, scope: !295)
!301 = !DILocation(line: 158, column: 13, scope: !69)
!302 = !DILocation(line: 181, column: 28, scope: !295)
!303 = !DILocation(line: 181, column: 9, scope: !296)
!304 = !DILocation(line: 182, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !295, file: !1, line: 181, column: 36)
!306 = !DILocation(line: 182, column: 18, scope: !305)
!307 = !DILocation(line: 183, column: 4, scope: !305)
!308 = !DILocation(line: 179, column: 11, scope: !292)
!309 = !DILocation(line: 185, column: 1, scope: !69)
!310 = !DILocation(line: 202, column: 12, scope: !78)
!311 = !DILocation(line: 203, column: 12, scope: !78)
!312 = !DILocation(line: 213, column: 12, scope: !313)
!313 = distinct !DILexicalBlock(scope: !78, file: !1, line: 213, column: 7)
!314 = !DILocation(line: 213, column: 20, scope: !313)
!315 = !DILocation(line: 213, column: 29, scope: !313)
!316 = !DILocation(line: 213, column: 31, scope: !313)
!317 = !DILocation(line: 214, column: 17, scope: !313)
!318 = !DILocation(line: 214, column: 4, scope: !313)
!319 = !DILocation(line: 215, column: 18, scope: !313)
!320 = !DILocation(line: 215, column: 15, scope: !313)
!321 = !DILocation(line: 216, column: 4, scope: !313)
!322 = !DILocation(line: 216, column: 18, scope: !313)
!323 = !DILocation(line: 206, column: 18, scope: !78)
!324 = !DILocation(line: 216, column: 41, scope: !313)
!325 = !DILocation(line: 213, column: 7, scope: !78)
!326 = !DILocation(line: 217, column: 12, scope: !327)
!327 = distinct !DILexicalBlock(scope: !313, file: !1, line: 216, column: 51)
!328 = !DILocation(line: 217, column: 4, scope: !327)
!329 = !DILocation(line: 220, column: 35, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 219, column: 24)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 219, column: 9)
!332 = !DILocation(line: 220, column: 7, scope: !330)
!333 = !DILocation(line: 221, column: 4, scope: !330)
!334 = !DILocation(line: 222, column: 19, scope: !335)
!335 = distinct !DILexicalBlock(scope: !327, file: !1, line: 222, column: 9)
!336 = !DILocation(line: 222, column: 9, scope: !327)
!337 = !DILocation(line: 223, column: 38, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 222, column: 29)
!339 = !DILocation(line: 223, column: 7, scope: !338)
!340 = !DILocation(line: 224, column: 4, scope: !338)
!341 = !DILocation(line: 225, column: 4, scope: !327)
!342 = !DILocation(line: 227, column: 13, scope: !78)
!343 = !DILocation(line: 207, column: 8, scope: !78)
!344 = !DILocation(line: 228, column: 26, scope: !78)
!345 = !DILocation(line: 228, column: 1, scope: !78)
!346 = !DILocation(line: 229, column: 11, scope: !78)
!347 = !DILocation(line: 206, column: 8, scope: !78)
!348 = !DILocation(line: 230, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !78, file: !1, line: 230, column: 1)
!350 = !DILocation(line: 205, column: 10, scope: !78)
!351 = !DILocation(line: 231, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !1, line: 230, column: 1)
!353 = !DILocation(line: 230, column: 1, scope: !349)
!354 = !DILocation(line: 233, column: 20, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 233, column: 4)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 232, column: 38)
!357 = !DILocation(line: 233, column: 58, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !1, line: 233, column: 4)
!359 = !DILocation(line: 233, column: 14, scope: !355)
!360 = !DILocation(line: 205, column: 13, scope: !78)
!361 = !DILocation(line: 233, column: 40, scope: !358)
!362 = !DILocation(line: 233, column: 4, scope: !355)
!363 = !DILocation(line: 234, column: 18, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 234, column: 12)
!365 = distinct !DILexicalBlock(scope: !358, file: !1, line: 233, column: 67)
!366 = !DILocation(line: 234, column: 16, scope: !364)
!367 = !DILocation(line: 234, column: 12, scope: !365)
!368 = !DILocation(line: 233, column: 52, scope: !358)
!369 = !DILocation(line: 238, column: 23, scope: !356)
!370 = !DILocation(line: 238, column: 21, scope: !356)
!371 = !DILocation(line: 238, column: 4, scope: !356)
!372 = !DILocation(line: 238, column: 15, scope: !356)
!373 = !DILocation(line: 232, column: 11, scope: !352)
!374 = !DILocation(line: 240, column: 1, scope: !78)
!375 = !DILocation(line: 257, column: 12, scope: !88)
!376 = !DILocation(line: 258, column: 12, scope: !88)
!377 = !DILocation(line: 268, column: 12, scope: !378)
!378 = distinct !DILexicalBlock(scope: !88, file: !1, line: 268, column: 7)
!379 = !DILocation(line: 268, column: 20, scope: !378)
!380 = !DILocation(line: 268, column: 29, scope: !378)
!381 = !DILocation(line: 268, column: 31, scope: !378)
!382 = !DILocation(line: 269, column: 17, scope: !378)
!383 = !DILocation(line: 269, column: 4, scope: !378)
!384 = !DILocation(line: 270, column: 18, scope: !378)
!385 = !DILocation(line: 270, column: 15, scope: !378)
!386 = !DILocation(line: 271, column: 4, scope: !378)
!387 = !DILocation(line: 271, column: 18, scope: !378)
!388 = !DILocation(line: 261, column: 21, scope: !88)
!389 = !DILocation(line: 271, column: 41, scope: !378)
!390 = !DILocation(line: 268, column: 7, scope: !88)
!391 = !DILocation(line: 272, column: 12, scope: !392)
!392 = distinct !DILexicalBlock(scope: !378, file: !1, line: 271, column: 51)
!393 = !DILocation(line: 272, column: 4, scope: !392)
!394 = !DILocation(line: 274, column: 4, scope: !392)
!395 = !DILocation(line: 276, column: 13, scope: !88)
!396 = !DILocation(line: 262, column: 11, scope: !88)
!397 = !DILocation(line: 277, column: 26, scope: !88)
!398 = !DILocation(line: 277, column: 1, scope: !88)
!399 = !DILocation(line: 278, column: 11, scope: !88)
!400 = !DILocation(line: 261, column: 11, scope: !88)
!401 = !DILocation(line: 279, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !88, file: !1, line: 279, column: 1)
!403 = !DILocation(line: 260, column: 13, scope: !88)
!404 = !DILocation(line: 280, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 279, column: 1)
!406 = !DILocation(line: 279, column: 1, scope: !402)
!407 = !DILocation(line: 282, column: 20, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 282, column: 4)
!409 = distinct !DILexicalBlock(scope: !405, file: !1, line: 281, column: 38)
!410 = !DILocation(line: 282, column: 58, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !1, line: 282, column: 4)
!412 = !DILocation(line: 282, column: 14, scope: !408)
!413 = !DILocation(line: 260, column: 16, scope: !88)
!414 = !DILocation(line: 282, column: 40, scope: !411)
!415 = !DILocation(line: 282, column: 4, scope: !408)
!416 = !DILocation(line: 283, column: 18, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 283, column: 12)
!418 = distinct !DILexicalBlock(scope: !411, file: !1, line: 282, column: 67)
!419 = !DILocation(line: 283, column: 16, scope: !417)
!420 = !DILocation(line: 283, column: 12, scope: !418)
!421 = !DILocation(line: 284, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !1, line: 283, column: 31)
!423 = !DILocation(line: 285, column: 7, scope: !422)
!424 = !DILocation(line: 282, column: 52, scope: !411)
!425 = !DILocation(line: 283, column: 12, scope: !417)
!426 = !DILocation(line: 287, column: 23, scope: !409)
!427 = !DILocation(line: 287, column: 21, scope: !409)
!428 = !DILocation(line: 287, column: 4, scope: !409)
!429 = !DILocation(line: 287, column: 15, scope: !409)
!430 = !DILocation(line: 281, column: 11, scope: !405)
!431 = !DILocation(line: 289, column: 1, scope: !88)
