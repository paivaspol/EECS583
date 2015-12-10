; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in DSTree_NDstages(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DSTree_NDstages(%p)\0A bad mapIV object\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_ND2stages(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DSTree_ND2stages(%p)\0A bad mapIV object\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_MS2stages(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DSTree_MS2stages(%p)\0A bad mapIV object\0A\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_MS3stages(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DSTree_MS3stages(%p)\0A bad mapIV object\0A\00", align 1
@.str8 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DSTree_stagesViaDomainWeight(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DSTree_stagesViaDomainWeight(%p,%p,%p)\0A bad mapIV object\0A\00", align 1
@.str10 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DSTree_stagesViaDomainWeight(%p,%p,%p)\0A bad cutoffDV object\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @DSTree_NDstages(%struct._DSTree* %dstree) #0 {
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !38, metadata !135), !dbg !136
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !137
  br i1 %1, label %14, label %2, !dbg !139

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !140
  %4 = load %struct._Tree** %3, align 8, !dbg !140, !tbaa !141
  tail call void @llvm.dbg.value(metadata %struct._Tree* %4, i64 0, metadata !49, metadata !135), !dbg !146
  %5 = icmp eq %struct._Tree* %4, null, !dbg !147
  br i1 %5, label %14, label %6, !dbg !148

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 0, !dbg !149
  %8 = load i32* %7, align 4, !dbg !149, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !39, metadata !135), !dbg !153
  %9 = icmp slt i32 %8, 1, !dbg !154
  br i1 %9, label %14, label %10, !dbg !155

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !156
  %12 = load %struct._IV** %11, align 8, !dbg !156, !tbaa !157
  tail call void @llvm.dbg.value(metadata %struct._IV* %12, i64 0, metadata !46, metadata !135), !dbg !158
  %13 = icmp eq %struct._IV* %12, null, !dbg !159
  br i1 %13, label %14, label %17, !dbg !160

; <label>:14                                      ; preds = %10, %6, %2, %0
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !161, !tbaa !163
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !164
  tail call void @exit(i32 -1) #6, !dbg !165
  unreachable, !dbg !165

; <label>:17                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !40, metadata !135), !dbg !166
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !43, metadata !135), !dbg !167
  call void @IV_sizeAndEntries(%struct._IV* %12, i32* %nvtx, i32** %map) #5, !dbg !168
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !43, metadata !135), !dbg !167
  %18 = load i32** %map, align 8, !dbg !169, !tbaa !163
  %19 = icmp eq i32* %18, null, !dbg !171
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !40, metadata !135), !dbg !166
  %20 = load i32* %nvtx, align 4
  %21 = icmp slt i32 %20, 1, !dbg !172
  %or.cond = or i1 %19, %21, !dbg !173
  br i1 %or.cond, label %22, label %25, !dbg !173

; <label>:22                                      ; preds = %17
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !174, !tbaa !163
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !176
  call void @exit(i32 -1) #6, !dbg !177
  unreachable, !dbg !177

; <label>:25                                      ; preds = %17
  %26 = call %struct._IV* @IV_new() #5, !dbg !178
  call void @llvm.dbg.value(metadata %struct._IV* %26, i64 0, metadata !48, metadata !135), !dbg !179
  call void @IV_init(%struct._IV* %26, i32 %8, i32* null) #5, !dbg !180
  call void @IV_fill(%struct._IV* %26, i32 1) #5, !dbg !181
  %27 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %4, %struct._IV* %26) #5, !dbg !182
  call void @llvm.dbg.value(metadata %struct._IV* %27, i64 0, metadata !45, metadata !135), !dbg !183
  %28 = call i32* @IV_entries(%struct._IV* %27) #5, !dbg !184
  call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !42, metadata !135), !dbg !185
  %29 = call %struct._IV* @IV_new() #5, !dbg !186
  call void @llvm.dbg.value(metadata %struct._IV* %29, i64 0, metadata !47, metadata !135), !dbg !187
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !40, metadata !135), !dbg !166
  %30 = load i32* %nvtx, align 4, !dbg !188, !tbaa !189
  call void @IV_init(%struct._IV* %29, i32 %30, i32* null) #5, !dbg !190
  %31 = call i32* @IV_entries(%struct._IV* %29) #5, !dbg !191
  call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !44, metadata !135), !dbg !192
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !41, metadata !135), !dbg !193
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !40, metadata !135), !dbg !166
  %32 = load i32* %nvtx, align 4, !dbg !194, !tbaa !189
  %33 = icmp sgt i32 %32, 0, !dbg !197
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !198

.lr.ph:                                           ; preds = %25
  %34 = load i32** %map, align 8, !dbg !199, !tbaa !163
  br label %35, !dbg !198

; <label>:35                                      ; preds = %.lr.ph, %35
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %35 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !43, metadata !135), !dbg !167
  %36 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !199
  %37 = load i32* %36, align 4, !dbg !199, !tbaa !189
  %38 = sext i32 %37 to i64, !dbg !201
  %39 = getelementptr inbounds i32* %28, i64 %38, !dbg !201
  %40 = load i32* %39, align 4, !dbg !201, !tbaa !189
  %41 = add nsw i32 %40, -1, !dbg !202
  %42 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !203
  store i32 %41, i32* %42, align 4, !dbg !204, !tbaa !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !198
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !40, metadata !135), !dbg !166
  %43 = load i32* %nvtx, align 4, !dbg !194, !tbaa !189
  %44 = sext i32 %43 to i64, !dbg !197
  %45 = icmp slt i64 %indvars.iv.next, %44, !dbg !197
  br i1 %45, label %35, label %._crit_edge, !dbg !198

._crit_edge:                                      ; preds = %35, %25
  call void @IV_free(%struct._IV* %26) #5, !dbg !205
  call void @IV_free(%struct._IV* %27) #5, !dbg !206
  ret %struct._IV* %29, !dbg !207
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare %struct._IV* @Tree_setHeightImetric(%struct._Tree*, %struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @DSTree_ND2stages(%struct._DSTree* %dstree) #0 {
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !52, metadata !135), !dbg !208
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !209
  br i1 %1, label %14, label %2, !dbg !211

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !212
  %4 = load %struct._Tree** %3, align 8, !dbg !212, !tbaa !141
  tail call void @llvm.dbg.value(metadata %struct._Tree* %4, i64 0, metadata !63, metadata !135), !dbg !213
  %5 = icmp eq %struct._Tree* %4, null, !dbg !214
  br i1 %5, label %14, label %6, !dbg !215

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 0, !dbg !216
  %8 = load i32* %7, align 4, !dbg !216, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !53, metadata !135), !dbg !217
  %9 = icmp slt i32 %8, 1, !dbg !218
  br i1 %9, label %14, label %10, !dbg !219

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !220
  %12 = load %struct._IV** %11, align 8, !dbg !220, !tbaa !157
  tail call void @llvm.dbg.value(metadata %struct._IV* %12, i64 0, metadata !60, metadata !135), !dbg !221
  %13 = icmp eq %struct._IV* %12, null, !dbg !222
  br i1 %13, label %14, label %17, !dbg !223

; <label>:14                                      ; preds = %10, %6, %2, %0
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !224, !tbaa !163
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !226
  tail call void @exit(i32 -1) #6, !dbg !227
  unreachable, !dbg !227

; <label>:17                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !54, metadata !135), !dbg !228
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !57, metadata !135), !dbg !229
  call void @IV_sizeAndEntries(%struct._IV* %12, i32* %nvtx, i32** %map) #5, !dbg !230
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !57, metadata !135), !dbg !229
  %18 = load i32** %map, align 8, !dbg !231, !tbaa !163
  %19 = icmp eq i32* %18, null, !dbg !233
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !54, metadata !135), !dbg !228
  %20 = load i32* %nvtx, align 4
  %21 = icmp slt i32 %20, 1, !dbg !234
  %or.cond = or i1 %19, %21, !dbg !235
  br i1 %or.cond, label %22, label %25, !dbg !235

; <label>:22                                      ; preds = %17
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !236, !tbaa !163
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !238
  call void @exit(i32 -1) #6, !dbg !239
  unreachable, !dbg !239

; <label>:25                                      ; preds = %17
  %26 = call %struct._IV* @IV_new() #5, !dbg !240
  call void @llvm.dbg.value(metadata %struct._IV* %26, i64 0, metadata !62, metadata !135), !dbg !241
  call void @IV_init(%struct._IV* %26, i32 %8, i32* null) #5, !dbg !242
  call void @IV_fill(%struct._IV* %26, i32 1) #5, !dbg !243
  %27 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %4, %struct._IV* %26) #5, !dbg !244
  call void @llvm.dbg.value(metadata %struct._IV* %27, i64 0, metadata !59, metadata !135), !dbg !245
  %28 = call i32* @IV_entries(%struct._IV* %27) #5, !dbg !246
  call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !56, metadata !135), !dbg !247
  %29 = call %struct._IV* @IV_new() #5, !dbg !248
  call void @llvm.dbg.value(metadata %struct._IV* %29, i64 0, metadata !61, metadata !135), !dbg !249
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !54, metadata !135), !dbg !228
  %30 = load i32* %nvtx, align 4, !dbg !250, !tbaa !189
  call void @IV_init(%struct._IV* %29, i32 %30, i32* null) #5, !dbg !251
  %31 = call i32* @IV_entries(%struct._IV* %29) #5, !dbg !252
  call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !58, metadata !135), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !55, metadata !135), !dbg !254
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !54, metadata !135), !dbg !228
  %32 = load i32* %nvtx, align 4, !dbg !255, !tbaa !189
  %33 = icmp sgt i32 %32, 0, !dbg !258
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !259

.lr.ph:                                           ; preds = %25
  %34 = load i32** %map, align 8, !dbg !260, !tbaa !163
  br label %35, !dbg !259

; <label>:35                                      ; preds = %.lr.ph, %46
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %46 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !57, metadata !135), !dbg !229
  %36 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !260
  %37 = load i32* %36, align 4, !dbg !260, !tbaa !189
  %38 = sext i32 %37 to i64, !dbg !262
  %39 = getelementptr inbounds i32* %28, i64 %38, !dbg !262
  %40 = load i32* %39, align 4, !dbg !262, !tbaa !189
  %41 = add nsw i32 %40, -1, !dbg !263
  %42 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !264
  %43 = icmp sgt i32 %40, 1, !dbg !265
  br i1 %43, label %44, label %46, !dbg !267

; <label>:44                                      ; preds = %35
  %45 = sdiv i32 %40, 2, !dbg !268
  br label %46, !dbg !270

; <label>:46                                      ; preds = %35, %44
  %storemerge = phi i32 [ %45, %44 ], [ %41, %35 ]
  store i32 %storemerge, i32* %42, align 4, !dbg !271, !tbaa !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !259
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !54, metadata !135), !dbg !228
  %47 = load i32* %nvtx, align 4, !dbg !255, !tbaa !189
  %48 = sext i32 %47 to i64, !dbg !258
  %49 = icmp slt i64 %indvars.iv.next, %48, !dbg !258
  br i1 %49, label %35, label %._crit_edge, !dbg !259

._crit_edge:                                      ; preds = %46, %25
  call void @IV_free(%struct._IV* %26) #5, !dbg !272
  call void @IV_free(%struct._IV* %27) #5, !dbg !273
  ret %struct._IV* %29, !dbg !274
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @DSTree_MS2stages(%struct._DSTree* %dstree) #0 {
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !66, metadata !135), !dbg !275
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !276
  br i1 %1, label %14, label %2, !dbg !278

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !279
  %4 = load %struct._Tree** %3, align 8, !dbg !279, !tbaa !141
  tail call void @llvm.dbg.value(metadata %struct._Tree* %4, i64 0, metadata !77, metadata !135), !dbg !280
  %5 = icmp eq %struct._Tree* %4, null, !dbg !281
  br i1 %5, label %14, label %6, !dbg !282

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 0, !dbg !283
  %8 = load i32* %7, align 4, !dbg !283, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !67, metadata !135), !dbg !284
  %9 = icmp slt i32 %8, 1, !dbg !285
  br i1 %9, label %14, label %10, !dbg !286

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !287
  %12 = load %struct._IV** %11, align 8, !dbg !287, !tbaa !157
  tail call void @llvm.dbg.value(metadata %struct._IV* %12, i64 0, metadata !74, metadata !135), !dbg !288
  %13 = icmp eq %struct._IV* %12, null, !dbg !289
  br i1 %13, label %14, label %17, !dbg !290

; <label>:14                                      ; preds = %10, %6, %2, %0
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !291, !tbaa !163
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !293
  tail call void @exit(i32 -1) #6, !dbg !294
  unreachable, !dbg !294

; <label>:17                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !68, metadata !135), !dbg !295
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !71, metadata !135), !dbg !296
  call void @IV_sizeAndEntries(%struct._IV* %12, i32* %nvtx, i32** %map) #5, !dbg !297
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !71, metadata !135), !dbg !296
  %18 = load i32** %map, align 8, !dbg !298, !tbaa !163
  %19 = icmp eq i32* %18, null, !dbg !300
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !68, metadata !135), !dbg !295
  %20 = load i32* %nvtx, align 4
  %21 = icmp slt i32 %20, 1, !dbg !301
  %or.cond = or i1 %19, %21, !dbg !302
  br i1 %or.cond, label %22, label %25, !dbg !302

; <label>:22                                      ; preds = %17
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !303, !tbaa !163
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !305
  call void @exit(i32 -1) #6, !dbg !306
  unreachable, !dbg !306

; <label>:25                                      ; preds = %17
  %26 = call %struct._IV* @IV_new() #5, !dbg !307
  call void @llvm.dbg.value(metadata %struct._IV* %26, i64 0, metadata !76, metadata !135), !dbg !308
  call void @IV_init(%struct._IV* %26, i32 %8, i32* null) #5, !dbg !309
  call void @IV_fill(%struct._IV* %26, i32 1) #5, !dbg !310
  %27 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %4, %struct._IV* %26) #5, !dbg !311
  call void @llvm.dbg.value(metadata %struct._IV* %27, i64 0, metadata !73, metadata !135), !dbg !312
  %28 = call i32* @IV_entries(%struct._IV* %27) #5, !dbg !313
  call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !70, metadata !135), !dbg !314
  %29 = call %struct._IV* @IV_new() #5, !dbg !315
  call void @llvm.dbg.value(metadata %struct._IV* %29, i64 0, metadata !75, metadata !135), !dbg !316
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !68, metadata !135), !dbg !295
  %30 = load i32* %nvtx, align 4, !dbg !317, !tbaa !189
  call void @IV_init(%struct._IV* %29, i32 %30, i32* null) #5, !dbg !318
  %31 = call i32* @IV_entries(%struct._IV* %29) #5, !dbg !319
  call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !72, metadata !135), !dbg !320
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !135), !dbg !321
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !68, metadata !135), !dbg !295
  %32 = load i32* %nvtx, align 4, !dbg !322, !tbaa !189
  %33 = icmp sgt i32 %32, 0, !dbg !325
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !326

.lr.ph:                                           ; preds = %25
  %34 = load i32** %map, align 8, !dbg !327, !tbaa !163
  br label %35, !dbg !326

; <label>:35                                      ; preds = %.lr.ph, %35
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %35 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !71, metadata !135), !dbg !296
  %36 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !327
  %37 = load i32* %36, align 4, !dbg !327, !tbaa !189
  %38 = sext i32 %37 to i64, !dbg !329
  %39 = getelementptr inbounds i32* %28, i64 %38, !dbg !329
  %40 = load i32* %39, align 4, !dbg !329, !tbaa !189
  %41 = add nsw i32 %40, -1, !dbg !330
  %42 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !331
  %43 = icmp sgt i32 %40, 1, !dbg !332
  %. = select i1 %43, i32 1, i32 %41, !dbg !334
  store i32 %., i32* %42, align 4, !dbg !335, !tbaa !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !326
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !68, metadata !135), !dbg !295
  %44 = load i32* %nvtx, align 4, !dbg !322, !tbaa !189
  %45 = sext i32 %44 to i64, !dbg !325
  %46 = icmp slt i64 %indvars.iv.next, %45, !dbg !325
  br i1 %46, label %35, label %._crit_edge, !dbg !326

._crit_edge:                                      ; preds = %35, %25
  call void @IV_free(%struct._IV* %26) #5, !dbg !336
  call void @IV_free(%struct._IV* %27) #5, !dbg !337
  ret %struct._IV* %29, !dbg !338
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @DSTree_MS3stages(%struct._DSTree* %dstree) #0 {
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !80, metadata !135), !dbg !339
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !340
  br i1 %1, label %14, label %2, !dbg !342

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !343
  %4 = load %struct._Tree** %3, align 8, !dbg !343, !tbaa !141
  tail call void @llvm.dbg.value(metadata %struct._Tree* %4, i64 0, metadata !92, metadata !135), !dbg !344
  %5 = icmp eq %struct._Tree* %4, null, !dbg !345
  br i1 %5, label %14, label %6, !dbg !346

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 0, !dbg !347
  %8 = load i32* %7, align 4, !dbg !347, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !81, metadata !135), !dbg !348
  %9 = icmp slt i32 %8, 1, !dbg !349
  br i1 %9, label %14, label %10, !dbg !350

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !351
  %12 = load %struct._IV** %11, align 8, !dbg !351, !tbaa !157
  tail call void @llvm.dbg.value(metadata %struct._IV* %12, i64 0, metadata !89, metadata !135), !dbg !352
  %13 = icmp eq %struct._IV* %12, null, !dbg !353
  br i1 %13, label %14, label %17, !dbg !354

; <label>:14                                      ; preds = %10, %6, %2, %0
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !355, !tbaa !163
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !357
  tail call void @exit(i32 -1) #6, !dbg !358
  unreachable, !dbg !358

; <label>:17                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !83, metadata !135), !dbg !359
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !86, metadata !135), !dbg !360
  call void @IV_sizeAndEntries(%struct._IV* %12, i32* %nvtx, i32** %map) #5, !dbg !361
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !86, metadata !135), !dbg !360
  %18 = load i32** %map, align 8, !dbg !362, !tbaa !163
  %19 = icmp eq i32* %18, null, !dbg !364
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !83, metadata !135), !dbg !359
  %20 = load i32* %nvtx, align 4
  %21 = icmp slt i32 %20, 1, !dbg !365
  %or.cond = or i1 %19, %21, !dbg !366
  br i1 %or.cond, label %22, label %25, !dbg !366

; <label>:22                                      ; preds = %17
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !367, !tbaa !163
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !369
  call void @exit(i32 -1) #6, !dbg !370
  unreachable, !dbg !370

; <label>:25                                      ; preds = %17
  %26 = call %struct._IV* @IV_new() #5, !dbg !371
  call void @llvm.dbg.value(metadata %struct._IV* %26, i64 0, metadata !91, metadata !135), !dbg !372
  call void @IV_init(%struct._IV* %26, i32 %8, i32* null) #5, !dbg !373
  call void @IV_fill(%struct._IV* %26, i32 1) #5, !dbg !374
  %27 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %4, %struct._IV* %26) #5, !dbg !375
  call void @llvm.dbg.value(metadata %struct._IV* %27, i64 0, metadata !88, metadata !135), !dbg !376
  %28 = call i32* @IV_entries(%struct._IV* %27) #5, !dbg !377
  call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !85, metadata !135), !dbg !378
  %29 = call i32 @IV_max(%struct._IV* %27) #5, !dbg !379
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !82, metadata !135), !dbg !380
  %30 = call %struct._IV* @IV_new() #5, !dbg !381
  call void @llvm.dbg.value(metadata %struct._IV* %30, i64 0, metadata !90, metadata !135), !dbg !382
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !83, metadata !135), !dbg !359
  %31 = load i32* %nvtx, align 4, !dbg !383, !tbaa !189
  call void @IV_init(%struct._IV* %30, i32 %31, i32* null) #5, !dbg !384
  %32 = call i32* @IV_entries(%struct._IV* %30) #5, !dbg !385
  call void @llvm.dbg.value(metadata i32* %32, i64 0, metadata !87, metadata !135), !dbg !386
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !135), !dbg !387
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !83, metadata !135), !dbg !359
  %33 = load i32* %nvtx, align 4, !dbg !388, !tbaa !189
  %34 = icmp sgt i32 %33, 0, !dbg !391
  br i1 %34, label %.lr.ph, label %._crit_edge, !dbg !392

.lr.ph:                                           ; preds = %25
  %35 = load i32** %map, align 8, !dbg !393, !tbaa !163
  br label %36, !dbg !392

; <label>:36                                      ; preds = %.lr.ph, %50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %50 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !86, metadata !135), !dbg !360
  %37 = getelementptr inbounds i32* %35, i64 %indvars.iv, !dbg !393
  %38 = load i32* %37, align 4, !dbg !393, !tbaa !189
  %39 = sext i32 %38 to i64, !dbg !395
  %40 = getelementptr inbounds i32* %28, i64 %39, !dbg !395
  %41 = load i32* %40, align 4, !dbg !395, !tbaa !189
  %42 = add nsw i32 %41, -1, !dbg !396
  %43 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !397
  store i32 %42, i32* %43, align 4, !dbg !398, !tbaa !189
  %44 = icmp sgt i32 %41, 1, !dbg !399
  br i1 %44, label %45, label %50, !dbg !401

; <label>:45                                      ; preds = %36
  %46 = shl nsw i32 %42, 1, !dbg !402
  %47 = icmp sgt i32 %46, %29, !dbg !405
  br i1 %47, label %48, label %49, !dbg !406

; <label>:48                                      ; preds = %45
  store i32 2, i32* %43, align 4, !dbg !407, !tbaa !189
  br label %50, !dbg !409

; <label>:49                                      ; preds = %45
  store i32 1, i32* %43, align 4, !dbg !410, !tbaa !189
  br label %50

; <label>:50                                      ; preds = %36, %49, %48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !392
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !83, metadata !135), !dbg !359
  %51 = load i32* %nvtx, align 4, !dbg !388, !tbaa !189
  %52 = sext i32 %51 to i64, !dbg !391
  %53 = icmp slt i64 %indvars.iv.next, %52, !dbg !391
  br i1 %53, label %36, label %._crit_edge, !dbg !392

._crit_edge:                                      ; preds = %50, %25
  call void @IV_free(%struct._IV* %26) #5, !dbg !412
  call void @IV_free(%struct._IV* %27) #5, !dbg !413
  ret %struct._IV* %30, !dbg !414
}

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @DSTree_stagesViaDomainWeight(%struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #0 {
  %cutoffs = alloca double*, align 8
  %nstage = alloca i32, align 4
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !108, metadata !135), !dbg !415
  tail call void @llvm.dbg.value(metadata i32* %vwghts, i64 0, metadata !109, metadata !135), !dbg !416
  tail call void @llvm.dbg.value(metadata %struct._DV* %cutoffDV, i64 0, metadata !110, metadata !135), !dbg !417
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !418
  br i1 %1, label %15, label %2, !dbg !420

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !421
  %4 = load %struct._Tree** %3, align 8, !dbg !421, !tbaa !141
  tail call void @llvm.dbg.value(metadata %struct._Tree* %4, i64 0, metadata !130, metadata !135), !dbg !422
  %5 = icmp eq %struct._Tree* %4, null, !dbg !423
  br i1 %5, label %15, label %6, !dbg !424

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 0, !dbg !425
  %8 = load i32* %7, align 4, !dbg !425, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !120, metadata !135), !dbg !426
  %9 = icmp slt i32 %8, 1, !dbg !427
  br i1 %9, label %15, label %10, !dbg !428

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !429
  %12 = load %struct._IV** %11, align 8, !dbg !429, !tbaa !157
  tail call void @llvm.dbg.value(metadata %struct._IV* %12, i64 0, metadata !128, metadata !135), !dbg !430
  %13 = icmp eq %struct._IV* %12, null, !dbg !431
  %14 = icmp eq %struct._DV* %cutoffDV, null, !dbg !432
  %or.cond = or i1 %14, %13, !dbg !433
  br i1 %or.cond, label %15, label %18, !dbg !433

; <label>:15                                      ; preds = %10, %6, %2, %0
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !434, !tbaa !163
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([68 x i8]* @.str8, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #5, !dbg !436
  tail call void @exit(i32 -1) #6, !dbg !437
  unreachable, !dbg !437

; <label>:18                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !124, metadata !135), !dbg !439
  call void @IV_sizeAndEntries(%struct._IV* %12, i32* %nvtx, i32** %map) #5, !dbg !440
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !124, metadata !135), !dbg !439
  %19 = load i32** %map, align 8, !dbg !441, !tbaa !163
  %20 = icmp eq i32* %19, null, !dbg !443
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %21 = load i32* %nvtx, align 4
  %22 = icmp slt i32 %21, 1, !dbg !444
  %or.cond3 = or i1 %20, %22, !dbg !445
  br i1 %or.cond3, label %23, label %26, !dbg !445

; <label>:23                                      ; preds = %18
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !446, !tbaa !163
  %25 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([75 x i8]* @.str9, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #5, !dbg !448
  call void @exit(i32 -1) #6, !dbg !449
  unreachable, !dbg !449

; <label>:26                                      ; preds = %18
  call void @llvm.dbg.value(metadata double** %cutoffs, i64 0, metadata !112, metadata !135), !dbg !450
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  call void @DV_sizeAndEntries(%struct._DV* %cutoffDV, i32* %nstage, double** %cutoffs) #5, !dbg !452
  call void @llvm.dbg.value(metadata double** %cutoffs, i64 0, metadata !112, metadata !135), !dbg !450
  %27 = load double** %cutoffs, align 8, !dbg !453, !tbaa !163
  %28 = icmp eq double* %27, null, !dbg !455
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %29 = load i32* %nstage, align 4
  %30 = icmp slt i32 %29, 1, !dbg !456
  %or.cond5 = or i1 %28, %30, !dbg !457
  br i1 %or.cond5, label %31, label %34, !dbg !457

; <label>:31                                      ; preds = %26
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !458, !tbaa !163
  %33 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([78 x i8]* @.str10, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #5, !dbg !460
  call void @exit(i32 -1) #6, !dbg !461
  unreachable, !dbg !461

; <label>:34                                      ; preds = %26
  %35 = call %struct._DV* @DV_new() #5, !dbg !462
  call void @llvm.dbg.value(metadata %struct._DV* %35, i64 0, metadata !115, metadata !135), !dbg !463
  call void @DV_init(%struct._DV* %35, i32 %8, double* null) #5, !dbg !464
  call void @DV_fill(%struct._DV* %35, double 0.000000e+00) #5, !dbg !465
  %36 = call double* @DV_entries(%struct._DV* %35) #5, !dbg !466
  call void @llvm.dbg.value(metadata double* %36, i64 0, metadata !113, metadata !135), !dbg !467
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !111, metadata !135), !dbg !468
  %37 = icmp eq i32* %vwghts, null, !dbg !469
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !123, metadata !135), !dbg !471
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %38 = load i32* %nvtx, align 4, !dbg !472, !tbaa !189
  %39 = icmp sgt i32 %38, 0, !dbg !476
  br i1 %37, label %.preheader9, label %.preheader10, !dbg !477

.preheader10:                                     ; preds = %34
  br i1 %39, label %.lr.ph42, label %.loopexit11, !dbg !478

.lr.ph42:                                         ; preds = %.preheader10
  %40 = load i32** %map, align 8, !dbg !481, !tbaa !163
  %41 = sext i32 %38 to i64, !dbg !478
  br label %53, !dbg !478

.preheader9:                                      ; preds = %34
  br i1 %39, label %.lr.ph37, label %._crit_edge38, !dbg !484

.lr.ph37:                                         ; preds = %.preheader9
  %42 = load i32** %map, align 8, !dbg !485, !tbaa !163
  %43 = sext i32 %38 to i64, !dbg !484
  br label %44, !dbg !484

; <label>:44                                      ; preds = %.lr.ph37, %44
  %indvars.iv66 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next67, %44 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !124, metadata !135), !dbg !439
  %45 = getelementptr inbounds i32* %42, i64 %indvars.iv66, !dbg !485
  %46 = load i32* %45, align 4, !dbg !485, !tbaa !189
  %47 = sext i32 %46 to i64, !dbg !487
  %48 = getelementptr inbounds double* %36, i64 %47, !dbg !487
  %49 = load double* %48, align 8, !dbg !488, !tbaa !489
  %50 = fadd double %49, 1.000000e+00, !dbg !488
  store double %50, double* %48, align 8, !dbg !488, !tbaa !489
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1, !dbg !484
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %51 = icmp slt i64 %indvars.iv.next67, %43, !dbg !476
  br i1 %51, label %44, label %._crit_edge38, !dbg !484

._crit_edge38:                                    ; preds = %44, %.preheader9
  %52 = sitofp i32 %38 to double, !dbg !491
  call void @llvm.dbg.value(metadata double %52, i64 0, metadata !111, metadata !135), !dbg !468
  br label %.loopexit11, !dbg !492

; <label>:53                                      ; preds = %.lr.ph42, %53
  %indvars.iv68 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next69, %53 ]
  %totvwght.041 = phi double [ 0.000000e+00, %.lr.ph42 ], [ %63, %53 ]
  %54 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv68, !dbg !493
  %55 = load i32* %54, align 4, !dbg !493, !tbaa !189
  %56 = sitofp i32 %55 to double, !dbg !493
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !124, metadata !135), !dbg !439
  %57 = getelementptr inbounds i32* %40, i64 %indvars.iv68, !dbg !481
  %58 = load i32* %57, align 4, !dbg !481, !tbaa !189
  %59 = sext i32 %58 to i64, !dbg !494
  %60 = getelementptr inbounds double* %36, i64 %59, !dbg !494
  %61 = load double* %60, align 8, !dbg !495, !tbaa !489
  %62 = fadd double %56, %61, !dbg !495
  store double %62, double* %60, align 8, !dbg !495, !tbaa !489
  %63 = fadd double %totvwght.041, %56, !dbg !496
  call void @llvm.dbg.value(metadata double %63, i64 0, metadata !111, metadata !135), !dbg !468
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1, !dbg !478
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %64 = icmp slt i64 %indvars.iv.next69, %41, !dbg !497
  br i1 %64, label %53, label %.loopexit11, !dbg !478

.loopexit11:                                      ; preds = %53, %.preheader10, %._crit_edge38
  %totvwght.1 = phi double [ %52, %._crit_edge38 ], [ 0.000000e+00, %.preheader10 ], [ %63, %53 ]
  %65 = call %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree* %4, %struct._DV* %35) #5, !dbg !498
  call void @llvm.dbg.value(metadata %struct._DV* %65, i64 0, metadata !116, metadata !135), !dbg !499
  %66 = call double* @DV_entries(%struct._DV* %65) #5, !dbg !500
  call void @llvm.dbg.value(metadata double* %66, i64 0, metadata !114, metadata !135), !dbg !501
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !135), !dbg !502
  %67 = icmp sgt i32 %8, 0, !dbg !503
  br i1 %67, label %.lr.ph34, label %._crit_edge35.thread, !dbg !506

._crit_edge35.thread:                             ; preds = %.loopexit11
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %68 = load i32* %nstage, align 4, !dbg !507, !tbaa !189
  %69 = call i32* @IVinit(i32 %68, i32 -1) #5, !dbg !508
  call void @llvm.dbg.value(metadata i32* %76, i64 0, metadata !125, metadata !135), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !135), !dbg !502
  br label %.preheader6, !dbg !510

.lr.ph34:                                         ; preds = %.loopexit11
  %70 = add i32 %8, -1, !dbg !506
  br label %71, !dbg !506

; <label>:71                                      ; preds = %71, %.lr.ph34
  %indvars.iv62 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next63, %71 ]
  %72 = getelementptr inbounds double* %66, i64 %indvars.iv62, !dbg !512
  %73 = load double* %72, align 8, !dbg !514, !tbaa !489
  %74 = fdiv double %73, %totvwght.1, !dbg !514
  store double %74, double* %72, align 8, !dbg !514, !tbaa !489
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1, !dbg !506
  %lftr.wideiv64 = trunc i64 %indvars.iv62 to i32, !dbg !506
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %70, !dbg !506
  br i1 %exitcond65, label %._crit_edge35, label %71, !dbg !506

._crit_edge35:                                    ; preds = %71
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %75 = load i32* %nstage, align 4, !dbg !507, !tbaa !189
  %76 = call i32* @IVinit(i32 %75, i32 -1) #5, !dbg !508
  call void @llvm.dbg.value(metadata i32* %76, i64 0, metadata !125, metadata !135), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !135), !dbg !502
  br i1 %67, label %.preheader7.lr.ph, label %.preheader6, !dbg !510

.preheader7.lr.ph:                                ; preds = %._crit_edge35
  %77 = load double** %cutoffs, align 8, !dbg !515, !tbaa !163
  %78 = add i32 %8, -1, !dbg !510
  br label %.preheader7, !dbg !510

.preheader7:                                      ; preds = %109, %.preheader7.lr.ph
  %indvars.iv58 = phi i64 [ 0, %.preheader7.lr.ph ], [ %indvars.iv.next59, %109 ]
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %79 = load i32* %nstage, align 4, !dbg !522, !tbaa !189
  %80 = icmp sgt i32 %79, 1, !dbg !523
  br i1 %80, label %.lr.ph29, label %.loopexit8, !dbg !524

.lr.ph29:                                         ; preds = %.preheader7
  %81 = getelementptr inbounds double* %66, i64 %indvars.iv58, !dbg !525
  %82 = load double* %81, align 8, !dbg !525, !tbaa !489
  %83 = add nsw i32 %79, -1, !dbg !526
  %84 = sext i32 %83 to i64, !dbg !524
  br label %90, !dbg !524

.preheader6:                                      ; preds = %109, %._crit_edge35.thread, %._crit_edge35
  %85 = phi i32* [ %69, %._crit_edge35.thread ], [ %76, %._crit_edge35 ], [ %76, %109 ]
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %86 = load i32* %nstage, align 4, !dbg !527, !tbaa !189
  %87 = icmp sgt i32 %86, 0, !dbg !530
  br i1 %87, label %.lr.ph25, label %._crit_edge26, !dbg !531

.lr.ph25:                                         ; preds = %.preheader6
  %88 = load double** %cutoffs, align 8, !dbg !532, !tbaa !163
  %89 = sext i32 %86 to i64, !dbg !531
  br label %110, !dbg !531

; <label>:90                                      ; preds = %.lr.ph29, %._crit_edge72
  %indvars.iv56 = phi i64 [ 0, %.lr.ph29 ], [ %.pre73, %._crit_edge72 ]
  call void @llvm.dbg.value(metadata double** %cutoffs, i64 0, metadata !112, metadata !135), !dbg !450
  %91 = getelementptr inbounds double* %77, i64 %indvars.iv56, !dbg !515
  %92 = load double* %91, align 8, !dbg !515, !tbaa !489
  %93 = fcmp ugt double %92, %82, !dbg !536
  %.pre73 = add nuw nsw i64 %indvars.iv56, 1, !dbg !524
  br i1 %93, label %._crit_edge72, label %94, !dbg !537

; <label>:94                                      ; preds = %90
  %95 = getelementptr inbounds double* %77, i64 %.pre73, !dbg !538
  %96 = load double* %95, align 8, !dbg !538, !tbaa !489
  %97 = fcmp olt double %82, %96, !dbg !539
  br i1 %97, label %98, label %._crit_edge72, !dbg !540

; <label>:98                                      ; preds = %94
  %99 = trunc i64 %indvars.iv56 to i32, !dbg !541
  %100 = getelementptr inbounds i32* %76, i64 %indvars.iv56, !dbg !541
  store i32 1, i32* %100, align 4, !dbg !543, !tbaa !189
  %.pre = load i32* %nstage, align 4, !dbg !544, !tbaa !189
  br label %.loopexit8, !dbg !546

._crit_edge72:                                    ; preds = %90, %94
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %101 = icmp slt i64 %.pre73, %84, !dbg !523
  br i1 %101, label %90, label %..loopexit8_crit_edge, !dbg !524

..loopexit8_crit_edge:                            ; preds = %._crit_edge72
  %102 = trunc i64 %.pre73 to i32, !dbg !524
  br label %.loopexit8, !dbg !524

.loopexit8:                                       ; preds = %.preheader7, %..loopexit8_crit_edge, %98
  %103 = phi i32 [ %.pre, %98 ], [ %79, %..loopexit8_crit_edge ], [ %79, %.preheader7 ]
  %istage.015 = phi i32 [ %99, %98 ], [ %102, %..loopexit8_crit_edge ], [ 0, %.preheader7 ]
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %104 = add nsw i32 %103, -1, !dbg !547
  %105 = icmp eq i32 %istage.015, %104, !dbg !548
  br i1 %105, label %106, label %109, !dbg !549

; <label>:106                                     ; preds = %.loopexit8
  %107 = sext i32 %istage.015 to i64, !dbg !550
  %108 = getelementptr inbounds i32* %76, i64 %107, !dbg !550
  store i32 1, i32* %108, align 4, !dbg !552, !tbaa !189
  br label %109, !dbg !553

; <label>:109                                     ; preds = %.loopexit8, %106
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !510
  %lftr.wideiv60 = trunc i64 %indvars.iv58 to i32, !dbg !510
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %78, !dbg !510
  br i1 %exitcond61, label %.preheader6, label %.preheader7, !dbg !510

; <label>:110                                     ; preds = %.lr.ph25, %122
  %indvars.iv54 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next55, %122 ]
  %jstage.023 = phi i32 [ 0, %.lr.ph25 ], [ %jstage.1, %122 ]
  %111 = getelementptr inbounds i32* %85, i64 %indvars.iv54, !dbg !554
  %112 = load i32* %111, align 4, !dbg !554, !tbaa !189
  %113 = icmp eq i32 %112, 1, !dbg !555
  br i1 %113, label %114, label %122, !dbg !556

; <label>:114                                     ; preds = %110
  call void @llvm.dbg.value(metadata double** %cutoffs, i64 0, metadata !112, metadata !135), !dbg !450
  %115 = getelementptr inbounds double* %88, i64 %indvars.iv54, !dbg !532
  %116 = bitcast double* %115 to i64*, !dbg !532
  %117 = load i64* %116, align 8, !dbg !532, !tbaa !489
  %118 = add nsw i32 %jstage.023, 1, !dbg !557
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !119, metadata !135), !dbg !558
  %119 = sext i32 %jstage.023 to i64, !dbg !559
  %120 = getelementptr inbounds double* %88, i64 %119, !dbg !559
  %121 = bitcast double* %120 to i64*, !dbg !560
  store i64 %117, i64* %121, align 8, !dbg !560, !tbaa !489
  br label %122, !dbg !561

; <label>:122                                     ; preds = %110, %114
  %jstage.1 = phi i32 [ %118, %114 ], [ %jstage.023, %110 ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !531
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %123 = icmp slt i64 %indvars.iv.next55, %89, !dbg !530
  br i1 %123, label %110, label %._crit_edge26, !dbg !531

._crit_edge26:                                    ; preds = %122, %.preheader6
  %jstage.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %jstage.1, %122 ]
  call void @llvm.dbg.value(metadata i32 %jstage.1, i64 0, metadata !121, metadata !135), !dbg !451
  store i32 %jstage.0.lcssa, i32* %nstage, align 4, !dbg !562, !tbaa !189
  %124 = call i32* @IVinit(i32 %8, i32 -1) #5, !dbg !563
  call void @llvm.dbg.value(metadata i32* %124, i64 0, metadata !126, metadata !135), !dbg !564
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !135), !dbg !502
  br i1 %67, label %.preheader.lr.ph, label %._crit_edge22, !dbg !565

.preheader.lr.ph:                                 ; preds = %._crit_edge26
  %125 = load double** %cutoffs, align 8, !dbg !567, !tbaa !163
  %126 = add i32 %8, -1, !dbg !565
  br label %.preheader, !dbg !565

.preheader:                                       ; preds = %151, %.preheader.lr.ph
  %indvars.iv52 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next53, %151 ]
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %127 = load i32* %nstage, align 4, !dbg !574, !tbaa !189
  %128 = icmp sgt i32 %127, 1, !dbg !575
  br i1 %128, label %.lr.ph20, label %.loopexit, !dbg !576

.lr.ph20:                                         ; preds = %.preheader
  %129 = getelementptr inbounds double* %66, i64 %indvars.iv52, !dbg !577
  %130 = load double* %129, align 8, !dbg !577, !tbaa !489
  %131 = add nsw i32 %127, -1, !dbg !578
  %132 = sext i32 %131 to i64, !dbg !576
  br label %133, !dbg !576

; <label>:133                                     ; preds = %.lr.ph20, %._crit_edge71
  %indvars.iv50 = phi i64 [ 0, %.lr.ph20 ], [ %.pre74, %._crit_edge71 ]
  call void @llvm.dbg.value(metadata double** %cutoffs, i64 0, metadata !112, metadata !135), !dbg !450
  %134 = getelementptr inbounds double* %125, i64 %indvars.iv50, !dbg !567
  %135 = load double* %134, align 8, !dbg !567, !tbaa !489
  %136 = fcmp ugt double %135, %130, !dbg !579
  %.pre74 = add nuw nsw i64 %indvars.iv50, 1, !dbg !576
  br i1 %136, label %._crit_edge71, label %137, !dbg !580

; <label>:137                                     ; preds = %133
  %138 = getelementptr inbounds double* %125, i64 %.pre74, !dbg !581
  %139 = load double* %138, align 8, !dbg !581, !tbaa !489
  %140 = fcmp olt double %130, %139, !dbg !582
  br i1 %140, label %141, label %._crit_edge71, !dbg !583

; <label>:141                                     ; preds = %137
  %142 = trunc i64 %indvars.iv50 to i32, !dbg !584
  %143 = getelementptr inbounds i32* %124, i64 %indvars.iv52, !dbg !584
  store i32 %142, i32* %143, align 4, !dbg !586, !tbaa !189
  %.pre70 = load i32* %nstage, align 4, !dbg !587, !tbaa !189
  br label %.loopexit, !dbg !589

._crit_edge71:                                    ; preds = %133, %137
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %144 = icmp slt i64 %.pre74, %132, !dbg !575
  br i1 %144, label %133, label %..loopexit_crit_edge, !dbg !576

..loopexit_crit_edge:                             ; preds = %._crit_edge71
  %145 = trunc i64 %.pre74 to i32, !dbg !576
  br label %.loopexit, !dbg !576

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %141
  %146 = phi i32 [ %.pre70, %141 ], [ %127, %..loopexit_crit_edge ], [ %127, %.preheader ]
  %istage.213 = phi i32 [ %142, %141 ], [ %145, %..loopexit_crit_edge ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i32* %nstage, i64 0, metadata !121, metadata !135), !dbg !451
  %147 = add nsw i32 %146, -1, !dbg !590
  %148 = icmp eq i32 %istage.213, %147, !dbg !591
  br i1 %148, label %149, label %151, !dbg !592

; <label>:149                                     ; preds = %.loopexit
  %150 = getelementptr inbounds i32* %124, i64 %indvars.iv52, !dbg !593
  store i32 %istage.213, i32* %150, align 4, !dbg !595, !tbaa !189
  br label %151, !dbg !596

; <label>:151                                     ; preds = %.loopexit, %149
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !dbg !565
  %lftr.wideiv = trunc i64 %indvars.iv52 to i32, !dbg !565
  %exitcond = icmp eq i32 %lftr.wideiv, %126, !dbg !565
  br i1 %exitcond, label %._crit_edge22, label %.preheader, !dbg !565

._crit_edge22:                                    ; preds = %151, %._crit_edge26
  %152 = call %struct._IV* @IV_new() #5, !dbg !597
  call void @llvm.dbg.value(metadata %struct._IV* %152, i64 0, metadata !129, metadata !135), !dbg !598
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %153 = load i32* %nvtx, align 4, !dbg !599, !tbaa !189
  call void @IV_init(%struct._IV* %152, i32 %153, i32* null) #5, !dbg !600
  %154 = call i32* @IV_entries(%struct._IV* %152) #5, !dbg !601
  call void @llvm.dbg.value(metadata i32* %154, i64 0, metadata !127, metadata !135), !dbg !602
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !123, metadata !135), !dbg !471
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %155 = load i32* %nvtx, align 4, !dbg !603, !tbaa !189
  %156 = icmp sgt i32 %155, 0, !dbg !606
  br i1 %156, label %.lr.ph, label %._crit_edge, !dbg !607

.lr.ph:                                           ; preds = %._crit_edge22
  %157 = load i32** %map, align 8, !dbg !608, !tbaa !163
  br label %158, !dbg !607

; <label>:158                                     ; preds = %.lr.ph, %158
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %158 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !124, metadata !135), !dbg !439
  %159 = getelementptr inbounds i32* %157, i64 %indvars.iv, !dbg !608
  %160 = load i32* %159, align 4, !dbg !608, !tbaa !189
  %161 = sext i32 %160 to i64, !dbg !610
  %162 = getelementptr inbounds i32* %124, i64 %161, !dbg !610
  %163 = load i32* %162, align 4, !dbg !610, !tbaa !189
  %164 = getelementptr inbounds i32* %154, i64 %indvars.iv, !dbg !611
  store i32 %163, i32* %164, align 4, !dbg !612, !tbaa !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !607
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !122, metadata !135), !dbg !438
  %165 = load i32* %nvtx, align 4, !dbg !603, !tbaa !189
  %166 = sext i32 %165 to i64, !dbg !606
  %167 = icmp slt i64 %indvars.iv.next, %166, !dbg !606
  br i1 %167, label %158, label %._crit_edge, !dbg !607

._crit_edge:                                      ; preds = %158, %._crit_edge22
  call void @DV_free(%struct._DV* %35) #5, !dbg !613
  call void @DV_free(%struct._DV* %65) #5, !dbg !614
  call void @IVfree(i32* %124) #5, !dbg !615
  call void @IVfree(i32* %85) #5, !dbg !616
  ret %struct._IV* %152, !dbg !617
}

; Function Attrs: optsize
declare void @DV_sizeAndEntries(%struct._DV*, i32*, double**) #3

; Function Attrs: optsize
declare %struct._DV* @DV_new() #3

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #3

; Function Attrs: optsize
declare void @DV_fill(%struct._DV*, double) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree*, %struct._DV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @DV_free(%struct._DV*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

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
!llvm.module.flags = !{!131, !132, !133}
!llvm.ident = !{!134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !50, !64, !78, !93}
!6 = !DISubprogram(name: "DSTree_NDstages", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._DSTree*)* @DSTree_NDstages, variables: !37)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !20}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSTree", file: !22, line: 22, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DSTree", file: !22, line: 23, size: 128, align: 64, elements: !24)
!24 = !{!25, !36}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !23, file: !22, line: 24, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !28, line: 15, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !28, line: 16, size: 256, align: 64, elements: !30)
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !29, file: !28, line: 17, baseType: !15, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !29, file: !28, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !29, file: !28, line: 19, baseType: !19, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !29, file: !28, line: 20, baseType: !19, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !29, file: !28, line: 21, baseType: !19, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mapIV", scope: !23, file: !22, line: 25, baseType: !9, size: 64, align: 64, offset: 64)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !6, file: !1, line: 17, type: !20)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndomsep", scope: !6, file: !1, line: 19, type: !15)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !6, file: !1, line: 19, type: !15)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 19, type: !15)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetric", scope: !6, file: !1, line: 20, type: !19)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !6, file: !1, line: 20, type: !19)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stages", scope: !6, file: !1, line: 20, type: !19)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetricIV", scope: !6, file: !1, line: 21, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !6, file: !1, line: 21, type: !9)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagesIV", scope: !6, file: !1, line: 21, type: !9)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetricIV", scope: !6, file: !1, line: 21, type: !9)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !6, file: !1, line: 22, type: !26)
!50 = !DISubprogram(name: "DSTree_ND2stages", scope: !1, file: !1, line: 82, type: !7, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._DSTree*)* @DSTree_ND2stages, variables: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !50, file: !1, line: 83, type: !20)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndomsep", scope: !50, file: !1, line: 85, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !50, file: !1, line: 85, type: !15)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !50, file: !1, line: 85, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetric", scope: !50, file: !1, line: 86, type: !19)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !50, file: !1, line: 86, type: !19)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stages", scope: !50, file: !1, line: 86, type: !19)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetricIV", scope: !50, file: !1, line: 87, type: !9)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !50, file: !1, line: 87, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagesIV", scope: !50, file: !1, line: 87, type: !9)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetricIV", scope: !50, file: !1, line: 87, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !50, file: !1, line: 88, type: !26)
!64 = !DISubprogram(name: "DSTree_MS2stages", scope: !1, file: !1, line: 151, type: !7, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._DSTree*)* @DSTree_MS2stages, variables: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !64, file: !1, line: 152, type: !20)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndomsep", scope: !64, file: !1, line: 154, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !64, file: !1, line: 154, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !64, file: !1, line: 154, type: !15)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetric", scope: !64, file: !1, line: 155, type: !19)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !64, file: !1, line: 155, type: !19)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stages", scope: !64, file: !1, line: 155, type: !19)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetricIV", scope: !64, file: !1, line: 156, type: !9)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !64, file: !1, line: 156, type: !9)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagesIV", scope: !64, file: !1, line: 156, type: !9)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetricIV", scope: !64, file: !1, line: 156, type: !9)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !64, file: !1, line: 157, type: !26)
!78 = !DISubprogram(name: "DSTree_MS3stages", scope: !1, file: !1, line: 220, type: !7, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._DSTree*)* @DSTree_MS3stages, variables: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !78, file: !1, line: 221, type: !20)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndomsep", scope: !78, file: !1, line: 223, type: !15)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstage", scope: !78, file: !1, line: 223, type: !15)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !78, file: !1, line: 223, type: !15)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !78, file: !1, line: 223, type: !15)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetric", scope: !78, file: !1, line: 224, type: !19)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !78, file: !1, line: 224, type: !19)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stages", scope: !78, file: !1, line: 224, type: !19)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmetricIV", scope: !78, file: !1, line: 225, type: !9)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !78, file: !1, line: 225, type: !9)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagesIV", scope: !78, file: !1, line: 225, type: !9)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vmetricIV", scope: !78, file: !1, line: 225, type: !9)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !78, file: !1, line: 226, type: !26)
!93 = !DISubprogram(name: "DSTree_stagesViaDomainWeight", scope: !1, file: !1, line: 294, type: !94, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._DSTree*, i32*, %struct._DV*)* @DSTree_stagesViaDomainWeight, variables: !107)
!94 = !DISubroutineType(types: !95)
!95 = !{!9, !20, !19, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !98, line: 20, baseType: !99)
!98 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !98, line: 21, size: 192, align: 64, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !99, file: !98, line: 22, baseType: !15, size: 32, align: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !99, file: !98, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !99, file: !98, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !99, file: !98, line: 25, baseType: !105, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !93, file: !1, line: 295, type: !20)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vwghts", arg: 2, scope: !93, file: !1, line: 296, type: !19)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cutoffDV", arg: 3, scope: !93, file: !1, line: 297, type: !96)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totvwght", scope: !93, file: !1, line: 299, type: !106)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cutoffs", scope: !93, file: !1, line: 300, type: !105)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodewghts", scope: !93, file: !1, line: 300, type: !105)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subtreewghts", scope: !93, file: !1, line: 300, type: !105)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodewghtDV", scope: !93, file: !1, line: 301, type: !96)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subtreeDV", scope: !93, file: !1, line: 301, type: !96)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ireg", scope: !93, file: !1, line: 302, type: !15)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istage", scope: !93, file: !1, line: 302, type: !15)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jstage", scope: !93, file: !1, line: 302, type: !15)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndomsep", scope: !93, file: !1, line: 302, type: !15)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstage", scope: !93, file: !1, line: 302, type: !15)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !93, file: !1, line: 302, type: !15)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !93, file: !1, line: 302, type: !15)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !93, file: !1, line: 303, type: !19)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mark", scope: !93, file: !1, line: 303, type: !19)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "regmap", scope: !93, file: !1, line: 303, type: !19)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stages", scope: !93, file: !1, line: 303, type: !19)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !93, file: !1, line: 304, type: !9)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagesIV", scope: !93, file: !1, line: 304, type: !9)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !93, file: !1, line: 305, type: !26)
!131 = !{i32 2, !"Dwarf Version", i32 2}
!132 = !{i32 2, !"Debug Info Version", i32 700000003}
!133 = !{i32 1, !"PIC Level", i32 2}
!134 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!135 = !DIExpression()
!136 = !DILocation(line: 17, column: 14, scope: !6)
!137 = !DILocation(line: 28, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 7)
!139 = !DILocation(line: 29, column: 4, scope: !138)
!140 = !DILocation(line: 29, column: 23, scope: !138)
!141 = !{!142, !143, i64 0}
!142 = !{!"_DSTree", !143, i64 0, !143, i64 8}
!143 = !{!"any pointer", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C/C++ TBAA"}
!146 = !DILocation(line: 22, column: 9, scope: !6)
!147 = !DILocation(line: 29, column: 29, scope: !138)
!148 = !DILocation(line: 30, column: 4, scope: !138)
!149 = !DILocation(line: 30, column: 24, scope: !138)
!150 = !{!151, !152, i64 0}
!151 = !{!"_Tree", !152, i64 0, !152, i64 4, !143, i64 8, !143, i64 16, !143, i64 24}
!152 = !{!"int", !144, i64 0}
!153 = !DILocation(line: 19, column: 8, scope: !6)
!154 = !DILocation(line: 30, column: 27, scope: !138)
!155 = !DILocation(line: 31, column: 4, scope: !138)
!156 = !DILocation(line: 31, column: 24, scope: !138)
!157 = !{!142, !143, i64 8}
!158 = !DILocation(line: 21, column: 21, scope: !6)
!159 = !DILocation(line: 31, column: 31, scope: !138)
!160 = !DILocation(line: 28, column: 7, scope: !6)
!161 = !DILocation(line: 32, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !138, file: !1, line: 31, column: 41)
!163 = !{!143, !143, i64 0}
!164 = !DILocation(line: 32, column: 4, scope: !162)
!165 = !DILocation(line: 34, column: 4, scope: !162)
!166 = !DILocation(line: 19, column: 17, scope: !6)
!167 = !DILocation(line: 20, column: 19, scope: !6)
!168 = !DILocation(line: 36, column: 1, scope: !6)
!169 = !DILocation(line: 37, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !6, file: !1, line: 37, column: 6)
!171 = !DILocation(line: 37, column: 10, scope: !170)
!172 = !DILocation(line: 37, column: 26, scope: !170)
!173 = !DILocation(line: 37, column: 18, scope: !170)
!174 = !DILocation(line: 38, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 37, column: 32)
!176 = !DILocation(line: 38, column: 4, scope: !175)
!177 = !DILocation(line: 40, column: 4, scope: !175)
!178 = !DILocation(line: 47, column: 13, scope: !6)
!179 = !DILocation(line: 21, column: 40, scope: !6)
!180 = !DILocation(line: 48, column: 1, scope: !6)
!181 = !DILocation(line: 49, column: 1, scope: !6)
!182 = !DILocation(line: 50, column: 13, scope: !6)
!183 = !DILocation(line: 21, column: 9, scope: !6)
!184 = !DILocation(line: 51, column: 11, scope: !6)
!185 = !DILocation(line: 20, column: 9, scope: !6)
!186 = !DILocation(line: 57, column: 12, scope: !6)
!187 = !DILocation(line: 21, column: 29, scope: !6)
!188 = !DILocation(line: 58, column: 19, scope: !6)
!189 = !{!152, !152, i64 0}
!190 = !DILocation(line: 58, column: 1, scope: !6)
!191 = !DILocation(line: 59, column: 10, scope: !6)
!192 = !DILocation(line: 20, column: 25, scope: !6)
!193 = !DILocation(line: 19, column: 23, scope: !6)
!194 = !DILocation(line: 60, column: 19, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 60, column: 1)
!196 = distinct !DILexicalBlock(scope: !6, file: !1, line: 60, column: 1)
!197 = !DILocation(line: 60, column: 17, scope: !195)
!198 = !DILocation(line: 60, column: 1, scope: !196)
!199 = !DILocation(line: 61, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !1, line: 60, column: 32)
!201 = !DILocation(line: 61, column: 16, scope: !200)
!202 = !DILocation(line: 61, column: 32, scope: !200)
!203 = !DILocation(line: 61, column: 4, scope: !200)
!204 = !DILocation(line: 61, column: 14, scope: !200)
!205 = !DILocation(line: 68, column: 1, scope: !6)
!206 = !DILocation(line: 69, column: 1, scope: !6)
!207 = !DILocation(line: 71, column: 1, scope: !6)
!208 = !DILocation(line: 83, column: 14, scope: !50)
!209 = !DILocation(line: 94, column: 14, scope: !210)
!210 = distinct !DILexicalBlock(scope: !50, file: !1, line: 94, column: 7)
!211 = !DILocation(line: 95, column: 4, scope: !210)
!212 = !DILocation(line: 95, column: 23, scope: !210)
!213 = !DILocation(line: 88, column: 9, scope: !50)
!214 = !DILocation(line: 95, column: 29, scope: !210)
!215 = !DILocation(line: 96, column: 4, scope: !210)
!216 = !DILocation(line: 96, column: 24, scope: !210)
!217 = !DILocation(line: 85, column: 8, scope: !50)
!218 = !DILocation(line: 96, column: 27, scope: !210)
!219 = !DILocation(line: 97, column: 4, scope: !210)
!220 = !DILocation(line: 97, column: 24, scope: !210)
!221 = !DILocation(line: 87, column: 21, scope: !50)
!222 = !DILocation(line: 97, column: 31, scope: !210)
!223 = !DILocation(line: 94, column: 7, scope: !50)
!224 = !DILocation(line: 98, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !210, file: !1, line: 97, column: 41)
!226 = !DILocation(line: 98, column: 4, scope: !225)
!227 = !DILocation(line: 100, column: 4, scope: !225)
!228 = !DILocation(line: 85, column: 17, scope: !50)
!229 = !DILocation(line: 86, column: 19, scope: !50)
!230 = !DILocation(line: 102, column: 1, scope: !50)
!231 = !DILocation(line: 103, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !50, file: !1, line: 103, column: 6)
!233 = !DILocation(line: 103, column: 10, scope: !232)
!234 = !DILocation(line: 103, column: 26, scope: !232)
!235 = !DILocation(line: 103, column: 18, scope: !232)
!236 = !DILocation(line: 104, column: 12, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 103, column: 32)
!238 = !DILocation(line: 104, column: 4, scope: !237)
!239 = !DILocation(line: 106, column: 4, scope: !237)
!240 = !DILocation(line: 113, column: 13, scope: !50)
!241 = !DILocation(line: 87, column: 40, scope: !50)
!242 = !DILocation(line: 114, column: 1, scope: !50)
!243 = !DILocation(line: 115, column: 1, scope: !50)
!244 = !DILocation(line: 116, column: 13, scope: !50)
!245 = !DILocation(line: 87, column: 9, scope: !50)
!246 = !DILocation(line: 117, column: 11, scope: !50)
!247 = !DILocation(line: 86, column: 9, scope: !50)
!248 = !DILocation(line: 123, column: 12, scope: !50)
!249 = !DILocation(line: 87, column: 29, scope: !50)
!250 = !DILocation(line: 124, column: 19, scope: !50)
!251 = !DILocation(line: 124, column: 1, scope: !50)
!252 = !DILocation(line: 125, column: 10, scope: !50)
!253 = !DILocation(line: 86, column: 25, scope: !50)
!254 = !DILocation(line: 85, column: 23, scope: !50)
!255 = !DILocation(line: 126, column: 19, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 126, column: 1)
!257 = distinct !DILexicalBlock(scope: !50, file: !1, line: 126, column: 1)
!258 = !DILocation(line: 126, column: 17, scope: !256)
!259 = !DILocation(line: 126, column: 1, scope: !257)
!260 = !DILocation(line: 127, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 126, column: 32)
!262 = !DILocation(line: 127, column: 16, scope: !261)
!263 = !DILocation(line: 127, column: 32, scope: !261)
!264 = !DILocation(line: 127, column: 4, scope: !261)
!265 = !DILocation(line: 128, column: 19, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !1, line: 128, column: 9)
!267 = !DILocation(line: 128, column: 9, scope: !261)
!268 = !DILocation(line: 129, column: 34, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !1, line: 128, column: 25)
!270 = !DILocation(line: 130, column: 4, scope: !269)
!271 = !DILocation(line: 127, column: 14, scope: !261)
!272 = !DILocation(line: 137, column: 1, scope: !50)
!273 = !DILocation(line: 138, column: 1, scope: !50)
!274 = !DILocation(line: 140, column: 1, scope: !50)
!275 = !DILocation(line: 152, column: 14, scope: !64)
!276 = !DILocation(line: 163, column: 14, scope: !277)
!277 = distinct !DILexicalBlock(scope: !64, file: !1, line: 163, column: 7)
!278 = !DILocation(line: 164, column: 4, scope: !277)
!279 = !DILocation(line: 164, column: 23, scope: !277)
!280 = !DILocation(line: 157, column: 9, scope: !64)
!281 = !DILocation(line: 164, column: 29, scope: !277)
!282 = !DILocation(line: 165, column: 4, scope: !277)
!283 = !DILocation(line: 165, column: 24, scope: !277)
!284 = !DILocation(line: 154, column: 8, scope: !64)
!285 = !DILocation(line: 165, column: 27, scope: !277)
!286 = !DILocation(line: 166, column: 4, scope: !277)
!287 = !DILocation(line: 166, column: 24, scope: !277)
!288 = !DILocation(line: 156, column: 21, scope: !64)
!289 = !DILocation(line: 166, column: 31, scope: !277)
!290 = !DILocation(line: 163, column: 7, scope: !64)
!291 = !DILocation(line: 167, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !277, file: !1, line: 166, column: 41)
!293 = !DILocation(line: 167, column: 4, scope: !292)
!294 = !DILocation(line: 169, column: 4, scope: !292)
!295 = !DILocation(line: 154, column: 17, scope: !64)
!296 = !DILocation(line: 155, column: 19, scope: !64)
!297 = !DILocation(line: 171, column: 1, scope: !64)
!298 = !DILocation(line: 172, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !64, file: !1, line: 172, column: 6)
!300 = !DILocation(line: 172, column: 10, scope: !299)
!301 = !DILocation(line: 172, column: 26, scope: !299)
!302 = !DILocation(line: 172, column: 18, scope: !299)
!303 = !DILocation(line: 173, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 172, column: 32)
!305 = !DILocation(line: 173, column: 4, scope: !304)
!306 = !DILocation(line: 175, column: 4, scope: !304)
!307 = !DILocation(line: 182, column: 13, scope: !64)
!308 = !DILocation(line: 156, column: 40, scope: !64)
!309 = !DILocation(line: 183, column: 1, scope: !64)
!310 = !DILocation(line: 184, column: 1, scope: !64)
!311 = !DILocation(line: 185, column: 13, scope: !64)
!312 = !DILocation(line: 156, column: 9, scope: !64)
!313 = !DILocation(line: 186, column: 11, scope: !64)
!314 = !DILocation(line: 155, column: 9, scope: !64)
!315 = !DILocation(line: 192, column: 12, scope: !64)
!316 = !DILocation(line: 156, column: 29, scope: !64)
!317 = !DILocation(line: 193, column: 19, scope: !64)
!318 = !DILocation(line: 193, column: 1, scope: !64)
!319 = !DILocation(line: 194, column: 10, scope: !64)
!320 = !DILocation(line: 155, column: 25, scope: !64)
!321 = !DILocation(line: 154, column: 23, scope: !64)
!322 = !DILocation(line: 195, column: 19, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 195, column: 1)
!324 = distinct !DILexicalBlock(scope: !64, file: !1, line: 195, column: 1)
!325 = !DILocation(line: 195, column: 17, scope: !323)
!326 = !DILocation(line: 195, column: 1, scope: !324)
!327 = !DILocation(line: 196, column: 24, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 195, column: 32)
!329 = !DILocation(line: 196, column: 16, scope: !328)
!330 = !DILocation(line: 196, column: 32, scope: !328)
!331 = !DILocation(line: 196, column: 4, scope: !328)
!332 = !DILocation(line: 197, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 197, column: 9)
!334 = !DILocation(line: 197, column: 9, scope: !328)
!335 = !DILocation(line: 196, column: 14, scope: !328)
!336 = !DILocation(line: 206, column: 1, scope: !64)
!337 = !DILocation(line: 207, column: 1, scope: !64)
!338 = !DILocation(line: 209, column: 1, scope: !64)
!339 = !DILocation(line: 221, column: 14, scope: !78)
!340 = !DILocation(line: 232, column: 14, scope: !341)
!341 = distinct !DILexicalBlock(scope: !78, file: !1, line: 232, column: 7)
!342 = !DILocation(line: 233, column: 4, scope: !341)
!343 = !DILocation(line: 233, column: 23, scope: !341)
!344 = !DILocation(line: 226, column: 9, scope: !78)
!345 = !DILocation(line: 233, column: 29, scope: !341)
!346 = !DILocation(line: 234, column: 4, scope: !341)
!347 = !DILocation(line: 234, column: 24, scope: !341)
!348 = !DILocation(line: 223, column: 8, scope: !78)
!349 = !DILocation(line: 234, column: 27, scope: !341)
!350 = !DILocation(line: 235, column: 4, scope: !341)
!351 = !DILocation(line: 235, column: 24, scope: !341)
!352 = !DILocation(line: 225, column: 21, scope: !78)
!353 = !DILocation(line: 235, column: 31, scope: !341)
!354 = !DILocation(line: 232, column: 7, scope: !78)
!355 = !DILocation(line: 236, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !341, file: !1, line: 235, column: 41)
!357 = !DILocation(line: 236, column: 4, scope: !356)
!358 = !DILocation(line: 238, column: 4, scope: !356)
!359 = !DILocation(line: 223, column: 25, scope: !78)
!360 = !DILocation(line: 224, column: 19, scope: !78)
!361 = !DILocation(line: 240, column: 1, scope: !78)
!362 = !DILocation(line: 241, column: 6, scope: !363)
!363 = distinct !DILexicalBlock(scope: !78, file: !1, line: 241, column: 6)
!364 = !DILocation(line: 241, column: 10, scope: !363)
!365 = !DILocation(line: 241, column: 26, scope: !363)
!366 = !DILocation(line: 241, column: 18, scope: !363)
!367 = !DILocation(line: 242, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !363, file: !1, line: 241, column: 32)
!369 = !DILocation(line: 242, column: 4, scope: !368)
!370 = !DILocation(line: 244, column: 4, scope: !368)
!371 = !DILocation(line: 251, column: 13, scope: !78)
!372 = !DILocation(line: 225, column: 40, scope: !78)
!373 = !DILocation(line: 252, column: 1, scope: !78)
!374 = !DILocation(line: 253, column: 1, scope: !78)
!375 = !DILocation(line: 254, column: 13, scope: !78)
!376 = !DILocation(line: 225, column: 9, scope: !78)
!377 = !DILocation(line: 255, column: 11, scope: !78)
!378 = !DILocation(line: 224, column: 9, scope: !78)
!379 = !DILocation(line: 256, column: 10, scope: !78)
!380 = !DILocation(line: 223, column: 17, scope: !78)
!381 = !DILocation(line: 262, column: 12, scope: !78)
!382 = !DILocation(line: 225, column: 29, scope: !78)
!383 = !DILocation(line: 263, column: 19, scope: !78)
!384 = !DILocation(line: 263, column: 1, scope: !78)
!385 = !DILocation(line: 264, column: 10, scope: !78)
!386 = !DILocation(line: 224, column: 25, scope: !78)
!387 = !DILocation(line: 223, column: 31, scope: !78)
!388 = !DILocation(line: 265, column: 19, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 265, column: 1)
!390 = distinct !DILexicalBlock(scope: !78, file: !1, line: 265, column: 1)
!391 = !DILocation(line: 265, column: 17, scope: !389)
!392 = !DILocation(line: 265, column: 1, scope: !390)
!393 = !DILocation(line: 266, column: 24, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !1, line: 265, column: 32)
!395 = !DILocation(line: 266, column: 16, scope: !394)
!396 = !DILocation(line: 266, column: 32, scope: !394)
!397 = !DILocation(line: 266, column: 4, scope: !394)
!398 = !DILocation(line: 266, column: 14, scope: !394)
!399 = !DILocation(line: 267, column: 19, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !1, line: 267, column: 9)
!401 = !DILocation(line: 267, column: 9, scope: !394)
!402 = !DILocation(line: 268, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 268, column: 12)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 267, column: 25)
!405 = !DILocation(line: 268, column: 24, scope: !403)
!406 = !DILocation(line: 268, column: 12, scope: !404)
!407 = !DILocation(line: 269, column: 20, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 268, column: 35)
!409 = !DILocation(line: 270, column: 7, scope: !408)
!410 = !DILocation(line: 271, column: 20, scope: !411)
!411 = distinct !DILexicalBlock(scope: !403, file: !1, line: 270, column: 14)
!412 = !DILocation(line: 280, column: 1, scope: !78)
!413 = !DILocation(line: 281, column: 1, scope: !78)
!414 = !DILocation(line: 283, column: 1, scope: !78)
!415 = !DILocation(line: 295, column: 14, scope: !93)
!416 = !DILocation(line: 296, column: 14, scope: !93)
!417 = !DILocation(line: 297, column: 14, scope: !93)
!418 = !DILocation(line: 311, column: 14, scope: !419)
!419 = distinct !DILexicalBlock(scope: !93, file: !1, line: 311, column: 7)
!420 = !DILocation(line: 312, column: 4, scope: !419)
!421 = !DILocation(line: 312, column: 23, scope: !419)
!422 = !DILocation(line: 305, column: 11, scope: !93)
!423 = !DILocation(line: 312, column: 29, scope: !419)
!424 = !DILocation(line: 313, column: 4, scope: !419)
!425 = !DILocation(line: 313, column: 24, scope: !419)
!426 = !DILocation(line: 302, column: 32, scope: !93)
!427 = !DILocation(line: 313, column: 27, scope: !419)
!428 = !DILocation(line: 314, column: 4, scope: !419)
!429 = !DILocation(line: 314, column: 24, scope: !419)
!430 = !DILocation(line: 304, column: 11, scope: !93)
!431 = !DILocation(line: 314, column: 31, scope: !419)
!432 = !DILocation(line: 315, column: 16, scope: !419)
!433 = !DILocation(line: 315, column: 4, scope: !419)
!434 = !DILocation(line: 316, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !419, file: !1, line: 315, column: 26)
!436 = !DILocation(line: 316, column: 4, scope: !435)
!437 = !DILocation(line: 319, column: 4, scope: !435)
!438 = !DILocation(line: 302, column: 49, scope: !93)
!439 = !DILocation(line: 303, column: 11, scope: !93)
!440 = !DILocation(line: 321, column: 1, scope: !93)
!441 = !DILocation(line: 322, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !93, file: !1, line: 322, column: 6)
!443 = !DILocation(line: 322, column: 10, scope: !442)
!444 = !DILocation(line: 322, column: 26, scope: !442)
!445 = !DILocation(line: 322, column: 18, scope: !442)
!446 = !DILocation(line: 323, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 322, column: 32)
!448 = !DILocation(line: 323, column: 4, scope: !447)
!449 = !DILocation(line: 326, column: 4, scope: !447)
!450 = !DILocation(line: 300, column: 11, scope: !93)
!451 = !DILocation(line: 302, column: 41, scope: !93)
!452 = !DILocation(line: 328, column: 1, scope: !93)
!453 = !DILocation(line: 329, column: 6, scope: !454)
!454 = distinct !DILexicalBlock(scope: !93, file: !1, line: 329, column: 6)
!455 = !DILocation(line: 329, column: 14, scope: !454)
!456 = !DILocation(line: 329, column: 32, scope: !454)
!457 = !DILocation(line: 329, column: 22, scope: !454)
!458 = !DILocation(line: 330, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 329, column: 38)
!460 = !DILocation(line: 330, column: 4, scope: !459)
!461 = !DILocation(line: 333, column: 4, scope: !459)
!462 = !DILocation(line: 344, column: 14, scope: !93)
!463 = !DILocation(line: 301, column: 11, scope: !93)
!464 = !DILocation(line: 345, column: 1, scope: !93)
!465 = !DILocation(line: 346, column: 1, scope: !93)
!466 = !DILocation(line: 347, column: 13, scope: !93)
!467 = !DILocation(line: 300, column: 21, scope: !93)
!468 = !DILocation(line: 299, column: 10, scope: !93)
!469 = !DILocation(line: 349, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !93, file: !1, line: 349, column: 6)
!471 = !DILocation(line: 302, column: 55, scope: !93)
!472 = !DILocation(line: 350, column: 22, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 350, column: 4)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 350, column: 4)
!475 = distinct !DILexicalBlock(scope: !470, file: !1, line: 349, column: 23)
!476 = !DILocation(line: 350, column: 20, scope: !473)
!477 = !DILocation(line: 349, column: 6, scope: !93)
!478 = !DILocation(line: 355, column: 4, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 355, column: 4)
!480 = distinct !DILexicalBlock(scope: !470, file: !1, line: 354, column: 8)
!481 = !DILocation(line: 356, column: 17, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 355, column: 35)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 355, column: 4)
!484 = !DILocation(line: 350, column: 4, scope: !474)
!485 = !DILocation(line: 351, column: 17, scope: !486)
!486 = distinct !DILexicalBlock(scope: !473, file: !1, line: 350, column: 35)
!487 = !DILocation(line: 351, column: 7, scope: !486)
!488 = !DILocation(line: 351, column: 24, scope: !486)
!489 = !{!490, !490, i64 0}
!490 = !{!"double", !144, i64 0}
!491 = !DILocation(line: 353, column: 15, scope: !475)
!492 = !DILocation(line: 354, column: 1, scope: !475)
!493 = !DILocation(line: 356, column: 28, scope: !482)
!494 = !DILocation(line: 356, column: 7, scope: !482)
!495 = !DILocation(line: 356, column: 25, scope: !482)
!496 = !DILocation(line: 357, column: 16, scope: !482)
!497 = !DILocation(line: 355, column: 20, scope: !483)
!498 = !DILocation(line: 369, column: 13, scope: !93)
!499 = !DILocation(line: 301, column: 24, scope: !93)
!500 = !DILocation(line: 370, column: 16, scope: !93)
!501 = !DILocation(line: 300, column: 33, scope: !93)
!502 = !DILocation(line: 302, column: 10, scope: !93)
!503 = !DILocation(line: 375, column: 23, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 375, column: 1)
!505 = distinct !DILexicalBlock(scope: !93, file: !1, line: 375, column: 1)
!506 = !DILocation(line: 375, column: 1, scope: !505)
!507 = !DILocation(line: 387, column: 15, scope: !93)
!508 = !DILocation(line: 387, column: 8, scope: !93)
!509 = !DILocation(line: 303, column: 17, scope: !93)
!510 = !DILocation(line: 388, column: 1, scope: !511)
!511 = distinct !DILexicalBlock(scope: !93, file: !1, line: 388, column: 1)
!512 = !DILocation(line: 376, column: 4, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !1, line: 375, column: 44)
!514 = !DILocation(line: 376, column: 23, scope: !513)
!515 = !DILocation(line: 395, column: 13, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 395, column: 13)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 394, column: 56)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 394, column: 4)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 394, column: 4)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 388, column: 44)
!521 = distinct !DILexicalBlock(scope: !511, file: !1, line: 388, column: 1)
!522 = !DILocation(line: 394, column: 32, scope: !518)
!523 = !DILocation(line: 394, column: 30, scope: !518)
!524 = !DILocation(line: 394, column: 4, scope: !519)
!525 = !DILocation(line: 395, column: 32, scope: !516)
!526 = !DILocation(line: 394, column: 39, scope: !518)
!527 = !DILocation(line: 414, column: 38, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 414, column: 1)
!529 = distinct !DILexicalBlock(scope: !93, file: !1, line: 414, column: 1)
!530 = !DILocation(line: 414, column: 36, scope: !528)
!531 = !DILocation(line: 414, column: 1, scope: !529)
!532 = !DILocation(line: 420, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 415, column: 29)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 415, column: 9)
!535 = distinct !DILexicalBlock(scope: !528, file: !1, line: 414, column: 58)
!536 = !DILocation(line: 395, column: 29, scope: !516)
!537 = !DILocation(line: 396, column: 10, scope: !516)
!538 = !DILocation(line: 396, column: 34, scope: !516)
!539 = !DILocation(line: 396, column: 32, scope: !516)
!540 = !DILocation(line: 395, column: 13, scope: !517)
!541 = !DILocation(line: 397, column: 10, scope: !542)
!542 = distinct !DILexicalBlock(scope: !516, file: !1, line: 396, column: 54)
!543 = !DILocation(line: 397, column: 23, scope: !542)
!544 = !DILocation(line: 405, column: 19, scope: !545)
!545 = distinct !DILexicalBlock(scope: !520, file: !1, line: 405, column: 9)
!546 = !DILocation(line: 402, column: 10, scope: !542)
!547 = !DILocation(line: 405, column: 26, scope: !545)
!548 = !DILocation(line: 405, column: 16, scope: !545)
!549 = !DILocation(line: 405, column: 9, scope: !520)
!550 = !DILocation(line: 406, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !545, file: !1, line: 405, column: 32)
!552 = !DILocation(line: 406, column: 24, scope: !551)
!553 = !DILocation(line: 407, column: 4, scope: !551)
!554 = !DILocation(line: 415, column: 9, scope: !534)
!555 = !DILocation(line: 415, column: 22, scope: !534)
!556 = !DILocation(line: 415, column: 9, scope: !535)
!557 = !DILocation(line: 420, column: 21, scope: !533)
!558 = !DILocation(line: 302, column: 24, scope: !93)
!559 = !DILocation(line: 420, column: 7, scope: !533)
!560 = !DILocation(line: 420, column: 25, scope: !533)
!561 = !DILocation(line: 421, column: 4, scope: !533)
!562 = !DILocation(line: 423, column: 8, scope: !93)
!563 = !DILocation(line: 429, column: 10, scope: !93)
!564 = !DILocation(line: 303, column: 24, scope: !93)
!565 = !DILocation(line: 430, column: 1, scope: !566)
!566 = distinct !DILexicalBlock(scope: !93, file: !1, line: 430, column: 1)
!567 = !DILocation(line: 437, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 437, column: 13)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 436, column: 56)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 436, column: 4)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 436, column: 4)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 430, column: 44)
!573 = distinct !DILexicalBlock(scope: !566, file: !1, line: 430, column: 1)
!574 = !DILocation(line: 436, column: 32, scope: !570)
!575 = !DILocation(line: 436, column: 30, scope: !570)
!576 = !DILocation(line: 436, column: 4, scope: !571)
!577 = !DILocation(line: 437, column: 32, scope: !568)
!578 = !DILocation(line: 436, column: 39, scope: !570)
!579 = !DILocation(line: 437, column: 29, scope: !568)
!580 = !DILocation(line: 438, column: 10, scope: !568)
!581 = !DILocation(line: 438, column: 34, scope: !568)
!582 = !DILocation(line: 438, column: 32, scope: !568)
!583 = !DILocation(line: 437, column: 13, scope: !569)
!584 = !DILocation(line: 443, column: 10, scope: !585)
!585 = distinct !DILexicalBlock(scope: !568, file: !1, line: 438, column: 54)
!586 = !DILocation(line: 443, column: 23, scope: !585)
!587 = !DILocation(line: 447, column: 19, scope: !588)
!588 = distinct !DILexicalBlock(scope: !572, file: !1, line: 447, column: 9)
!589 = !DILocation(line: 444, column: 10, scope: !585)
!590 = !DILocation(line: 447, column: 26, scope: !588)
!591 = !DILocation(line: 447, column: 16, scope: !588)
!592 = !DILocation(line: 447, column: 9, scope: !572)
!593 = !DILocation(line: 448, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !588, file: !1, line: 447, column: 32)
!595 = !DILocation(line: 448, column: 20, scope: !594)
!596 = !DILocation(line: 453, column: 4, scope: !594)
!597 = !DILocation(line: 464, column: 12, scope: !93)
!598 = !DILocation(line: 304, column: 19, scope: !93)
!599 = !DILocation(line: 465, column: 19, scope: !93)
!600 = !DILocation(line: 465, column: 1, scope: !93)
!601 = !DILocation(line: 466, column: 10, scope: !93)
!602 = !DILocation(line: 303, column: 33, scope: !93)
!603 = !DILocation(line: 467, column: 19, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 467, column: 1)
!605 = distinct !DILexicalBlock(scope: !93, file: !1, line: 467, column: 1)
!606 = !DILocation(line: 467, column: 17, scope: !604)
!607 = !DILocation(line: 467, column: 1, scope: !605)
!608 = !DILocation(line: 468, column: 23, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !1, line: 467, column: 32)
!610 = !DILocation(line: 468, column: 16, scope: !609)
!611 = !DILocation(line: 468, column: 4, scope: !609)
!612 = !DILocation(line: 468, column: 14, scope: !609)
!613 = !DILocation(line: 496, column: 1, scope: !93)
!614 = !DILocation(line: 497, column: 1, scope: !93)
!615 = !DILocation(line: 498, column: 1, scope: !93)
!616 = !DILocation(line: 499, column: 1, scope: !93)
!617 = !DILocation(line: 501, column: 1, scope: !93)
