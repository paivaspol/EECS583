; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtxMananger_newObjectOfSizeNbytes(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtxManager_releaseObject(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [71 x i8] c"\0A fatal error in SubMtxManager_releaseListOfObjects(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %nbytesNeeded) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !60, metadata !89), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %nbytesNeeded, i64 0, metadata !61, metadata !89), !dbg !91
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !92
  %2 = icmp slt i32 %nbytesNeeded, 1, !dbg !94
  %or.cond = or i1 %1, %2, !dbg !95
  br i1 %or.cond, label %3, label %6, !dbg !95

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !96, !tbaa !98
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), %struct._SubMtxManager* %manager, i32 %nbytesNeeded) #5, !dbg !102
  tail call void @exit(i32 -1) #6, !dbg !103
  unreachable, !dbg !103

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !104
  %8 = load %struct._Lock** %7, align 8, !dbg !104, !tbaa !106
  %9 = icmp eq %struct._Lock* %8, null, !dbg !109
  br i1 %9, label %14, label %10, !dbg !110

; <label>:10                                      ; preds = %6
  tail call void @Lock_lock(%struct._Lock* %8) #5, !dbg !111
  %11 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9, !dbg !113
  %12 = load i32* %11, align 4, !dbg !114, !tbaa !115
  %13 = add nsw i32 %12, 1, !dbg !114
  store i32 %13, i32* %11, align 4, !dbg !114, !tbaa !115
  br label %14, !dbg !116

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !117
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* null, i64 0, metadata !63, metadata !89), !dbg !119
  %mtx.05 = load %struct._SubMtx** %15, align 8, !dbg !117
  %16 = icmp eq %struct._SubMtx* %mtx.05, null, !dbg !120
  br i1 %16, label %._crit_edge, label %.lr.ph, !dbg !122

.lr.ph:                                           ; preds = %14, %19
  %mtx.07 = phi %struct._SubMtx* [ %mtx.0, %19 ], [ %mtx.05, %14 ]
  %prev.06 = phi %struct._SubMtx* [ %mtx.07, %19 ], [ null, %14 ]
  %17 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx.07) #5, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !64, metadata !89), !dbg !125
  %18 = icmp slt i32 %17, %nbytesNeeded, !dbg !126
  br i1 %18, label %19, label %22, !dbg !128

; <label>:19                                      ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx.0, i64 0, metadata !63, metadata !89), !dbg !119
  %20 = getelementptr inbounds %struct._SubMtx* %mtx.07, i64 0, i32 9, !dbg !129
  %mtx.0 = load %struct._SubMtx** %20, align 8, !dbg !117
  %21 = icmp eq %struct._SubMtx* %mtx.0, null, !dbg !120
  br i1 %21, label %._crit_edge, label %.lr.ph, !dbg !122

; <label>:22                                      ; preds = %.lr.ph
  %23 = icmp eq %struct._SubMtx* %prev.06, null, !dbg !130
  %24 = getelementptr inbounds %struct._SubMtx* %mtx.07, i64 0, i32 9, !dbg !134
  %25 = bitcast %struct._SubMtx** %24 to i64*, !dbg !134
  %26 = load i64* %25, align 8, !dbg !134, !tbaa !136
  br i1 %23, label %27, label %29, !dbg !139

; <label>:27                                      ; preds = %22
  %28 = bitcast %struct._SubMtxManager* %manager to i64*, !dbg !140
  store i64 %26, i64* %28, align 8, !dbg !140, !tbaa !141
  br label %.thread, !dbg !142

; <label>:29                                      ; preds = %22
  %30 = getelementptr inbounds %struct._SubMtx* %prev.06, i64 0, i32 9, !dbg !143
  %31 = bitcast %struct._SubMtx** %30 to i64*, !dbg !145
  store i64 %26, i64* %31, align 8, !dbg !145, !tbaa !136
  br label %.thread

._crit_edge:                                      ; preds = %19, %14
  %32 = tail call %struct._SubMtx* @SubMtx_new() #5, !dbg !146
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %32, i64 0, metadata !62, metadata !89), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !65, metadata !89), !dbg !149
  %33 = getelementptr inbounds %struct._SubMtx* %32, i64 0, i32 8, !dbg !150
  %34 = sext i32 %nbytesNeeded to i64, !dbg !151
  %35 = lshr i64 %34, 3, !dbg !152
  %36 = trunc i64 %35 to i32, !dbg !151
  tail call void @DV_setSize(%struct._DV* %33, i32 %36) #5, !dbg !153
  %37 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %32) #5, !dbg !154
  %38 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 6, !dbg !157
  %39 = load i32* %38, align 4, !dbg !158, !tbaa !159
  %40 = add nsw i32 %39, %37, !dbg !158
  store i32 %40, i32* %38, align 4, !dbg !158, !tbaa !159
  br label %.thread, !dbg !160

.thread:                                          ; preds = %27, %29, %._crit_edge
  %mtx.12 = phi %struct._SubMtx* [ %32, %._crit_edge ], [ %mtx.07, %29 ], [ %mtx.07, %27 ]
  %41 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !161
  %42 = load i32* %41, align 4, !dbg !162, !tbaa !163
  %43 = add nsw i32 %42, 1, !dbg !162
  store i32 %43, i32* %41, align 4, !dbg !162, !tbaa !163
  %44 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx.12) #5, !dbg !164
  %45 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !165
  %46 = load i32* %45, align 4, !dbg !166, !tbaa !167
  %47 = add nsw i32 %46, %44, !dbg !166
  store i32 %47, i32* %45, align 4, !dbg !166, !tbaa !167
  %48 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 5, !dbg !168
  %49 = load i32* %48, align 4, !dbg !169, !tbaa !170
  %50 = add nsw i32 %49, %nbytesNeeded, !dbg !169
  store i32 %50, i32* %48, align 4, !dbg !169, !tbaa !170
  %51 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 7, !dbg !171
  %52 = load i32* %51, align 4, !dbg !172, !tbaa !173
  %53 = add nsw i32 %52, 1, !dbg !172
  store i32 %53, i32* %51, align 4, !dbg !172, !tbaa !173
  %54 = load %struct._Lock** %7, align 8, !dbg !174, !tbaa !106
  %55 = icmp eq %struct._Lock* %54, null, !dbg !176
  br i1 %55, label %60, label %56, !dbg !177

; <label>:56                                      ; preds = %.thread
  %57 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10, !dbg !178
  %58 = load i32* %57, align 4, !dbg !180, !tbaa !181
  %59 = add nsw i32 %58, 1, !dbg !180
  store i32 %59, i32* %57, align 4, !dbg !180, !tbaa !181
  tail call void @Lock_unlock(%struct._Lock* %54) #5, !dbg !182
  br label %60, !dbg !183

; <label>:60                                      ; preds = %.thread, %56
  ret %struct._SubMtx* %mtx.12, !dbg !184
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx*) #3

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtx_new() #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxManager_releaseObject(%struct._SubMtxManager* %manager, %struct._SubMtx* %mtx1) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !70, metadata !89), !dbg !185
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx1, i64 0, metadata !71, metadata !89), !dbg !186
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !187
  %2 = icmp eq %struct._SubMtx* %mtx1, null, !dbg !189
  %or.cond = or i1 %1, %2, !dbg !190
  br i1 %or.cond, label %3, label %6, !dbg !190

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !191, !tbaa !98
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), %struct._SubMtxManager* %manager, %struct._SubMtx* %mtx1) #5, !dbg !193
  tail call void @exit(i32 -1) #6, !dbg !194
  unreachable, !dbg !194

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !195
  %8 = load %struct._Lock** %7, align 8, !dbg !195, !tbaa !106
  %9 = icmp eq %struct._Lock* %8, null, !dbg !197
  br i1 %9, label %14, label %10, !dbg !198

; <label>:10                                      ; preds = %6
  tail call void @Lock_lock(%struct._Lock* %8) #5, !dbg !199
  %11 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9, !dbg !201
  %12 = load i32* %11, align 4, !dbg !202, !tbaa !115
  %13 = add nsw i32 %12, 1, !dbg !202
  store i32 %13, i32* %11, align 4, !dbg !202, !tbaa !115
  br label %14, !dbg !203

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8, !dbg !204
  %16 = load i32* %15, align 4, !dbg !205, !tbaa !206
  %17 = add nsw i32 %16, 1, !dbg !205
  store i32 %17, i32* %15, align 4, !dbg !205, !tbaa !206
  %18 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx1) #5, !dbg !207
  %19 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !208
  %20 = load i32* %19, align 4, !dbg !209, !tbaa !167
  %21 = sub nsw i32 %20, %18, !dbg !209
  store i32 %21, i32* %19, align 4, !dbg !209, !tbaa !167
  %22 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !210
  %23 = load i32* %22, align 4, !dbg !211, !tbaa !163
  %24 = add nsw i32 %23, -1, !dbg !211
  store i32 %24, i32* %22, align 4, !dbg !211, !tbaa !163
  %25 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2, !dbg !212
  %26 = load i32* %25, align 4, !dbg !212, !tbaa !214
  %27 = icmp eq i32 %26, 0, !dbg !215
  br i1 %27, label %28, label %29, !dbg !216

; <label>:28                                      ; preds = %14
  tail call void @SubMtx_free(%struct._SubMtx* %mtx1) #5, !dbg !217
  br label %42, !dbg !219

; <label>:29                                      ; preds = %14
  %30 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx1) #5, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !74, metadata !89), !dbg !222
  %31 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !223
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* null, i64 0, metadata !73, metadata !89), !dbg !225
  %mtx2.02 = load %struct._SubMtx** %31, align 8, !dbg !223
  %32 = icmp eq %struct._SubMtx* %mtx2.02, null, !dbg !226
  br i1 %32, label %._crit_edge.thread, label %.lr.ph, !dbg !228

.lr.ph:                                           ; preds = %29, %35
  %mtx2.04 = phi %struct._SubMtx* [ %mtx2.0, %35 ], [ %mtx2.02, %29 ]
  %prev.03 = phi %struct._SubMtx* [ %mtx2.04, %35 ], [ null, %29 ]
  %33 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx2.04) #5, !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !75, metadata !89), !dbg !231
  %34 = icmp slt i32 %33, %30, !dbg !232
  br i1 %34, label %35, label %._crit_edge, !dbg !234

; <label>:35                                      ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx2.0, i64 0, metadata !73, metadata !89), !dbg !225
  %36 = getelementptr inbounds %struct._SubMtx* %mtx2.04, i64 0, i32 9, !dbg !235
  %mtx2.0 = load %struct._SubMtx** %36, align 8, !dbg !223
  %37 = icmp eq %struct._SubMtx* %mtx2.0, null, !dbg !226
  br i1 %37, label %._crit_edge.thread14, label %.lr.ph, !dbg !228

._crit_edge:                                      ; preds = %.lr.ph
  %38 = icmp eq %struct._SubMtx* %prev.03, null, !dbg !236
  br i1 %38, label %._crit_edge.thread, label %._crit_edge.thread14, !dbg !238

._crit_edge.thread:                               ; preds = %29, %._crit_edge
  %mtx2.0.lcssa13 = phi %struct._SubMtx* [ %mtx2.04, %._crit_edge ], [ null, %29 ]
  store %struct._SubMtx* %mtx1, %struct._SubMtx** %31, align 8, !dbg !239, !tbaa !141
  br label %40, !dbg !241

._crit_edge.thread14:                             ; preds = %35, %._crit_edge
  %prev.0.lcssa16 = phi %struct._SubMtx* [ %prev.03, %._crit_edge ], [ %mtx2.04, %35 ]
  %mtx2.0.lcssa15 = phi %struct._SubMtx* [ %mtx2.04, %._crit_edge ], [ null, %35 ]
  %39 = getelementptr inbounds %struct._SubMtx* %prev.0.lcssa16, i64 0, i32 9, !dbg !242
  store %struct._SubMtx* %mtx1, %struct._SubMtx** %39, align 8, !dbg !244, !tbaa !136
  br label %40

; <label>:40                                      ; preds = %._crit_edge.thread14, %._crit_edge.thread
  %mtx2.0.lcssa12 = phi %struct._SubMtx* [ %mtx2.0.lcssa15, %._crit_edge.thread14 ], [ %mtx2.0.lcssa13, %._crit_edge.thread ]
  %41 = getelementptr inbounds %struct._SubMtx* %mtx1, i64 0, i32 9, !dbg !245
  store %struct._SubMtx* %mtx2.0.lcssa12, %struct._SubMtx** %41, align 8, !dbg !246, !tbaa !136
  br label %42

; <label>:42                                      ; preds = %40, %28
  %43 = load %struct._Lock** %7, align 8, !dbg !247, !tbaa !106
  %44 = icmp eq %struct._Lock* %43, null, !dbg !249
  br i1 %44, label %49, label %45, !dbg !250

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10, !dbg !251
  %47 = load i32* %46, align 4, !dbg !253, !tbaa !181
  %48 = add nsw i32 %47, 1, !dbg !253
  store i32 %48, i32* %46, align 4, !dbg !253, !tbaa !181
  tail call void @Lock_unlock(%struct._Lock* %43) #5, !dbg !254
  br label %49, !dbg !255

; <label>:49                                      ; preds = %42, %45
  ret void, !dbg !256
}

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager* %manager, %struct._SubMtx* %head) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !78, metadata !89), !dbg !257
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %head, i64 0, metadata !79, metadata !89), !dbg !258
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !259
  %2 = icmp eq %struct._SubMtx* %head, null, !dbg !261
  %or.cond = or i1 %1, %2, !dbg !262
  br i1 %or.cond, label %3, label %6, !dbg !262

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !263, !tbaa !98
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([71 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxManager* %manager, %struct._SubMtx* %head) #5, !dbg !265
  tail call void @exit(i32 -1) #6, !dbg !266
  unreachable, !dbg !266

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !267
  %8 = load %struct._Lock** %7, align 8, !dbg !267, !tbaa !106
  %9 = icmp eq %struct._Lock* %8, null, !dbg !269
  br i1 %9, label %14, label %10, !dbg !270

; <label>:10                                      ; preds = %6
  tail call void @Lock_lock(%struct._Lock* %8) #5, !dbg !271
  %11 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9, !dbg !273
  %12 = load i32* %11, align 4, !dbg !274, !tbaa !115
  %13 = add nsw i32 %12, 1, !dbg !274
  store i32 %13, i32* %11, align 4, !dbg !274, !tbaa !115
  br label %14, !dbg !275

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2, !dbg !276
  %16 = load i32* %15, align 4, !dbg !276, !tbaa !214
  %17 = icmp eq i32 %16, 0, !dbg !278
  br i1 %17, label %.lr.ph, label %.lr.ph14, !dbg !279

.lr.ph14:                                         ; preds = %14
  %18 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !280
  %19 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !284
  %20 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !285
  %21 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8, !dbg !286
  br label %36, !dbg !287

.lr.ph:                                           ; preds = %14
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %head, i64 0, metadata !80, metadata !89), !dbg !288
  %22 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !289
  %23 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !292
  %24 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8, !dbg !293
  br label %25, !dbg !294

; <label>:25                                      ; preds = %.lr.ph, %25
  %.04 = phi %struct._SubMtx* [ %head, %.lr.ph ], [ %27, %25 ]
  %26 = getelementptr inbounds %struct._SubMtx* %.04, i64 0, i32 9, !dbg !295
  %27 = load %struct._SubMtx** %26, align 8, !dbg !295, !tbaa !136
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %27, i64 0, metadata !79, metadata !89), !dbg !258
  %28 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %.04) #5, !dbg !296
  %29 = load i32* %22, align 4, !dbg !297, !tbaa !167
  %30 = sub nsw i32 %29, %28, !dbg !297
  store i32 %30, i32* %22, align 4, !dbg !297, !tbaa !167
  %31 = load i32* %23, align 4, !dbg !298, !tbaa !163
  %32 = add nsw i32 %31, -1, !dbg !298
  store i32 %32, i32* %23, align 4, !dbg !298, !tbaa !163
  %33 = load i32* %24, align 4, !dbg !299, !tbaa !206
  %34 = add nsw i32 %33, 1, !dbg !299
  store i32 %34, i32* %24, align 4, !dbg !299, !tbaa !206
  tail call void @SubMtx_free(%struct._SubMtx* %.04) #5, !dbg !300
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %27, i64 0, metadata !80, metadata !89), !dbg !288
  %35 = icmp eq %struct._SubMtx* %27, null, !dbg !301
  br i1 %35, label %.loopexit, label %25, !dbg !294

; <label>:36                                      ; preds = %.lr.ph14, %48
  %.113 = phi %struct._SubMtx* [ %head, %.lr.ph14 ], [ %38, %48 ]
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %38, i64 0, metadata !80, metadata !89), !dbg !288
  %37 = getelementptr inbounds %struct._SubMtx* %.113, i64 0, i32 9, !dbg !302
  %38 = load %struct._SubMtx** %37, align 8, !dbg !302, !tbaa !136
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %38, i64 0, metadata !79, metadata !89), !dbg !258
  %39 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %.113) #5, !dbg !303
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !83, metadata !89), !dbg !304
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* null, i64 0, metadata !82, metadata !89), !dbg !305
  %mtx2.05 = load %struct._SubMtx** %18, align 8, !dbg !280
  %40 = icmp eq %struct._SubMtx* %mtx2.05, null, !dbg !306
  br i1 %40, label %._crit_edge.thread, label %.lr.ph8, !dbg !308

.lr.ph8:                                          ; preds = %36, %43
  %mtx2.07 = phi %struct._SubMtx* [ %mtx2.0, %43 ], [ %mtx2.05, %36 ]
  %prev.06 = phi %struct._SubMtx* [ %mtx2.07, %43 ], [ null, %36 ]
  %41 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx2.07) #5, !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !84, metadata !89), !dbg !311
  %42 = icmp slt i32 %41, %39, !dbg !312
  br i1 %42, label %43, label %._crit_edge, !dbg !314

; <label>:43                                      ; preds = %.lr.ph8
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx2.0, i64 0, metadata !82, metadata !89), !dbg !305
  %44 = getelementptr inbounds %struct._SubMtx* %mtx2.07, i64 0, i32 9, !dbg !315
  %mtx2.0 = load %struct._SubMtx** %44, align 8, !dbg !280
  %45 = icmp eq %struct._SubMtx* %mtx2.0, null, !dbg !306
  br i1 %45, label %._crit_edge.thread20, label %.lr.ph8, !dbg !308

._crit_edge:                                      ; preds = %.lr.ph8
  %46 = icmp eq %struct._SubMtx* %prev.06, null, !dbg !316
  br i1 %46, label %._crit_edge.thread, label %._crit_edge.thread20, !dbg !318

._crit_edge.thread:                               ; preds = %36, %._crit_edge
  %mtx2.0.lcssa19 = phi %struct._SubMtx* [ %mtx2.07, %._crit_edge ], [ null, %36 ]
  store %struct._SubMtx* %.113, %struct._SubMtx** %18, align 8, !dbg !319, !tbaa !141
  br label %48, !dbg !321

._crit_edge.thread20:                             ; preds = %43, %._crit_edge
  %prev.0.lcssa22 = phi %struct._SubMtx* [ %prev.06, %._crit_edge ], [ %mtx2.07, %43 ]
  %mtx2.0.lcssa21 = phi %struct._SubMtx* [ %mtx2.07, %._crit_edge ], [ null, %43 ]
  %47 = getelementptr inbounds %struct._SubMtx* %prev.0.lcssa22, i64 0, i32 9, !dbg !322
  store %struct._SubMtx* %.113, %struct._SubMtx** %47, align 8, !dbg !324, !tbaa !136
  br label %48

; <label>:48                                      ; preds = %._crit_edge.thread20, %._crit_edge.thread
  %mtx2.0.lcssa18 = phi %struct._SubMtx* [ %mtx2.0.lcssa21, %._crit_edge.thread20 ], [ %mtx2.0.lcssa19, %._crit_edge.thread ]
  store %struct._SubMtx* %mtx2.0.lcssa18, %struct._SubMtx** %37, align 8, !dbg !325, !tbaa !136
  %49 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %.113) #5, !dbg !326
  %50 = load i32* %19, align 4, !dbg !327, !tbaa !167
  %51 = sub nsw i32 %50, %49, !dbg !327
  store i32 %51, i32* %19, align 4, !dbg !327, !tbaa !167
  %52 = load i32* %20, align 4, !dbg !328, !tbaa !163
  %53 = add nsw i32 %52, -1, !dbg !328
  store i32 %53, i32* %20, align 4, !dbg !328, !tbaa !163
  %54 = load i32* %21, align 4, !dbg !329, !tbaa !206
  %55 = add nsw i32 %54, 1, !dbg !329
  store i32 %55, i32* %21, align 4, !dbg !329, !tbaa !206
  %56 = icmp eq %struct._SubMtx* %38, null, !dbg !330
  br i1 %56, label %.loopexit, label %36, !dbg !287

.loopexit:                                        ; preds = %48, %25
  %57 = load %struct._Lock** %7, align 8, !dbg !331, !tbaa !106
  %58 = icmp eq %struct._Lock* %57, null, !dbg !333
  br i1 %58, label %63, label %59, !dbg !334

; <label>:59                                      ; preds = %.loopexit
  %60 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10, !dbg !335
  %61 = load i32* %60, align 4, !dbg !337, !tbaa !181
  %62 = add nsw i32 %61, 1, !dbg !337
  store i32 %62, i32* %60, align 4, !dbg !337, !tbaa !181
  tail call void @Lock_unlock(%struct._Lock* %57) #5, !dbg !338
  br label %63, !dbg !339

; <label>:63                                      ; preds = %.loopexit, %59
  ret void, !dbg !340
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !66, !76}
!6 = !DISubprogram(name: "SubMtxManager_newObjectOfSizeNbytes", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: %struct._SubMtx* (%struct._SubMtxManager*, i32)* @SubMtxManager_newObjectOfSizeNbytes, variables: !59)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !35, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !11, line: 43, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../SubMtx/SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
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
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !27, line: 21, size: 192, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !27, line: 22, baseType: !15, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !28, file: !27, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !28, file: !27, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !28, file: !27, line: 25, baseType: !23, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 54, baseType: !9, size: 64, align: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtxManager", file: !37, line: 9, baseType: !38)
!37 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../SubMtxManager.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtxManager", file: !37, line: 10, size: 448, align: 64, elements: !39)
!39 = !{!40, !41, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !38, file: !37, line: 11, baseType: !9, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !38, file: !37, line: 12, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !44, line: 36, baseType: !45)
!44 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !44, line: 37, size: 128, align: 64, elements: !46)
!46 = !{!47, !48, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !45, file: !44, line: 45, baseType: !4, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !45, file: !44, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !45, file: !44, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !38, file: !37, line: 13, baseType: !15, size: 32, align: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !38, file: !37, line: 14, baseType: !15, size: 32, align: 32, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesactive", scope: !38, file: !37, line: 15, baseType: !15, size: 32, align: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesrequested", scope: !38, file: !37, line: 16, baseType: !15, size: 32, align: 32, offset: 224)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesalloc", scope: !38, file: !37, line: 17, baseType: !15, size: 32, align: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !38, file: !37, line: 18, baseType: !15, size: 32, align: 32, offset: 288)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nreleases", scope: !38, file: !37, line: 19, baseType: !15, size: 32, align: 32, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !38, file: !37, line: 20, baseType: !15, size: 32, align: 32, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !38, file: !37, line: 21, baseType: !15, size: 32, align: 32, offset: 384)
!59 = !{!60, !61, !62, !63, !64, !65}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !6, file: !1, line: 18, type: !35)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytesNeeded", arg: 2, scope: !6, file: !1, line: 19, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !6, file: !1, line: 21, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !6, file: !1, line: 21, type: !9)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytesAvailable", scope: !6, file: !1, line: 22, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newinstance", scope: !6, file: !1, line: 22, type: !15)
!66 = !DISubprogram(name: "SubMtxManager_releaseObject", scope: !1, file: !1, line: 144, type: !67, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxManager*, %struct._SubMtx*)* @SubMtxManager_releaseObject, variables: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !35, !9}
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !66, file: !1, line: 145, type: !35)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx1", arg: 2, scope: !66, file: !1, line: 146, type: !9)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx2", scope: !66, file: !1, line: 148, type: !9)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !66, file: !1, line: 148, type: !9)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes1", scope: !66, file: !1, line: 149, type: !15)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes2", scope: !66, file: !1, line: 149, type: !15)
!76 = !DISubprogram(name: "SubMtxManager_releaseListOfObjects", scope: !1, file: !1, line: 251, type: !67, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxManager*, %struct._SubMtx*)* @SubMtxManager_releaseListOfObjects, variables: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !76, file: !1, line: 252, type: !35)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 2, scope: !76, file: !1, line: 253, type: !9)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx1", scope: !76, file: !1, line: 255, type: !9)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx2", scope: !76, file: !1, line: 255, type: !9)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !76, file: !1, line: 255, type: !9)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes1", scope: !76, file: !1, line: 256, type: !15)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes2", scope: !76, file: !1, line: 256, type: !15)
!85 = !{i32 2, !"Dwarf Version", i32 2}
!86 = !{i32 2, !"Debug Info Version", i32 700000003}
!87 = !{i32 1, !"PIC Level", i32 2}
!88 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!89 = !DIExpression()
!90 = !DILocation(line: 18, column: 21, scope: !6)
!91 = !DILocation(line: 19, column: 20, scope: !6)
!92 = !DILocation(line: 28, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!94 = !DILocation(line: 28, column: 38, scope: !93)
!95 = !DILocation(line: 28, column: 22, scope: !93)
!96 = !DILocation(line: 29, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 28, column: 45)
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !DILocation(line: 29, column: 4, scope: !97)
!103 = !DILocation(line: 32, column: 4, scope: !97)
!104 = !DILocation(line: 39, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !6, file: !1, line: 39, column: 6)
!106 = !{!107, !99, i64 8}
!107 = !{!"_SubMtxManager", !99, i64 0, !99, i64 8, !108, i64 16, !108, i64 20, !108, i64 24, !108, i64 28, !108, i64 32, !108, i64 36, !108, i64 40, !108, i64 44, !108, i64 48}
!108 = !{!"int", !100, i64 0}
!109 = !DILocation(line: 39, column: 20, scope: !105)
!110 = !DILocation(line: 39, column: 6, scope: !6)
!111 = !DILocation(line: 45, column: 4, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !1, line: 39, column: 30)
!113 = !DILocation(line: 50, column: 13, scope: !112)
!114 = !DILocation(line: 50, column: 19, scope: !112)
!115 = !{!107, !108, i64 44}
!116 = !DILocation(line: 55, column: 1, scope: !112)
!117 = !DILocation(line: 61, column: 22, scope: !118)
!118 = distinct !DILexicalBlock(scope: !6, file: !1, line: 61, column: 1)
!119 = !DILocation(line: 21, column: 17, scope: !6)
!120 = !DILocation(line: 62, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 61, column: 1)
!122 = !DILocation(line: 61, column: 1, scope: !118)
!123 = !DILocation(line: 64, column: 22, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 63, column: 25)
!125 = !DILocation(line: 22, column: 8, scope: !6)
!126 = !DILocation(line: 70, column: 22, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 70, column: 9)
!128 = !DILocation(line: 70, column: 9, scope: !124)
!129 = !DILocation(line: 63, column: 18, scope: !121)
!130 = !DILocation(line: 86, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 86, column: 9)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 75, column: 20)
!133 = distinct !DILexicalBlock(scope: !6, file: !1, line: 75, column: 6)
!134 = !DILocation(line: 87, column: 28, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 86, column: 24)
!136 = !{!137, !99, i64 64}
!137 = !{!"_SubMtx", !108, i64 0, !108, i64 4, !108, i64 8, !108, i64 12, !108, i64 16, !108, i64 20, !108, i64 24, !99, i64 32, !138, i64 40, !99, i64 64}
!138 = !{!"_DV", !108, i64 0, !108, i64 4, !108, i64 8, !99, i64 16}
!139 = !DILocation(line: 86, column: 9, scope: !132)
!140 = !DILocation(line: 87, column: 21, scope: !135)
!141 = !{!107, !99, i64 0}
!142 = !DILocation(line: 88, column: 4, scope: !135)
!143 = !DILocation(line: 89, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !131, file: !1, line: 88, column: 11)
!145 = !DILocation(line: 89, column: 18, scope: !144)
!146 = !DILocation(line: 98, column: 10, scope: !147)
!147 = distinct !DILexicalBlock(scope: !133, file: !1, line: 92, column: 8)
!148 = !DILocation(line: 21, column: 11, scope: !6)
!149 = !DILocation(line: 22, column: 25, scope: !6)
!150 = !DILocation(line: 106, column: 21, scope: !147)
!151 = !DILocation(line: 106, column: 28, scope: !147)
!152 = !DILocation(line: 106, column: 40, scope: !147)
!153 = !DILocation(line: 106, column: 4, scope: !147)
!154 = !DILocation(line: 109, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 108, column: 25)
!156 = distinct !DILexicalBlock(scope: !6, file: !1, line: 108, column: 6)
!157 = !DILocation(line: 109, column: 13, scope: !155)
!158 = !DILocation(line: 109, column: 26, scope: !155)
!159 = !{!107, !108, i64 32}
!160 = !DILocation(line: 110, column: 1, scope: !155)
!161 = !DILocation(line: 111, column: 10, scope: !6)
!162 = !DILocation(line: 111, column: 17, scope: !6)
!163 = !{!107, !108, i64 20}
!164 = !DILocation(line: 112, column: 29, scope: !6)
!165 = !DILocation(line: 112, column: 10, scope: !6)
!166 = !DILocation(line: 112, column: 26, scope: !6)
!167 = !{!107, !108, i64 24}
!168 = !DILocation(line: 113, column: 10, scope: !6)
!169 = !DILocation(line: 113, column: 26, scope: !6)
!170 = !{!107, !108, i64 28}
!171 = !DILocation(line: 118, column: 10, scope: !6)
!172 = !DILocation(line: 118, column: 19, scope: !6)
!173 = !{!107, !108, i64 36}
!174 = !DILocation(line: 119, column: 15, scope: !175)
!175 = distinct !DILexicalBlock(scope: !6, file: !1, line: 119, column: 6)
!176 = !DILocation(line: 119, column: 20, scope: !175)
!177 = !DILocation(line: 119, column: 6, scope: !6)
!178 = !DILocation(line: 125, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 119, column: 30)
!180 = !DILocation(line: 125, column: 21, scope: !179)
!181 = !{!107, !108, i64 48}
!182 = !DILocation(line: 131, column: 4, scope: !179)
!183 = !DILocation(line: 132, column: 1, scope: !179)
!184 = !DILocation(line: 133, column: 1, scope: !6)
!185 = !DILocation(line: 145, column: 21, scope: !66)
!186 = !DILocation(line: 146, column: 21, scope: !66)
!187 = !DILocation(line: 155, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !66, file: !1, line: 155, column: 6)
!189 = !DILocation(line: 155, column: 30, scope: !188)
!190 = !DILocation(line: 155, column: 22, scope: !188)
!191 = !DILocation(line: 156, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 155, column: 40)
!193 = !DILocation(line: 156, column: 4, scope: !192)
!194 = !DILocation(line: 159, column: 4, scope: !192)
!195 = !DILocation(line: 161, column: 15, scope: !196)
!196 = distinct !DILexicalBlock(scope: !66, file: !1, line: 161, column: 6)
!197 = !DILocation(line: 161, column: 20, scope: !196)
!198 = !DILocation(line: 161, column: 6, scope: !66)
!199 = !DILocation(line: 167, column: 4, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 161, column: 30)
!201 = !DILocation(line: 168, column: 13, scope: !200)
!202 = !DILocation(line: 168, column: 19, scope: !200)
!203 = !DILocation(line: 174, column: 1, scope: !200)
!204 = !DILocation(line: 175, column: 10, scope: !66)
!205 = !DILocation(line: 175, column: 19, scope: !66)
!206 = !{!107, !108, i64 40}
!207 = !DILocation(line: 176, column: 26, scope: !66)
!208 = !DILocation(line: 176, column: 10, scope: !66)
!209 = !DILocation(line: 176, column: 23, scope: !66)
!210 = !DILocation(line: 177, column: 10, scope: !66)
!211 = !DILocation(line: 177, column: 17, scope: !66)
!212 = !DILocation(line: 178, column: 15, scope: !213)
!213 = distinct !DILexicalBlock(scope: !66, file: !1, line: 178, column: 6)
!214 = !{!107, !108, i64 16}
!215 = !DILocation(line: 178, column: 20, scope: !213)
!216 = !DILocation(line: 178, column: 6, scope: !66)
!217 = !DILocation(line: 184, column: 4, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 178, column: 27)
!219 = !DILocation(line: 185, column: 1, scope: !218)
!220 = !DILocation(line: 192, column: 14, scope: !221)
!221 = distinct !DILexicalBlock(scope: !213, file: !1, line: 185, column: 8)
!222 = !DILocation(line: 149, column: 8, scope: !66)
!223 = !DILocation(line: 197, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 197, column: 4)
!225 = !DILocation(line: 148, column: 18, scope: !66)
!226 = !DILocation(line: 198, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 197, column: 4)
!228 = !DILocation(line: 197, column: 4, scope: !224)
!229 = !DILocation(line: 200, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 199, column: 30)
!231 = !DILocation(line: 149, column: 17, scope: !66)
!232 = !DILocation(line: 204, column: 20, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 204, column: 12)
!234 = !DILocation(line: 204, column: 12, scope: !230)
!235 = !DILocation(line: 199, column: 23, scope: !227)
!236 = !DILocation(line: 209, column: 14, scope: !237)
!237 = distinct !DILexicalBlock(scope: !221, file: !1, line: 209, column: 9)
!238 = !DILocation(line: 209, column: 9, scope: !221)
!239 = !DILocation(line: 210, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 209, column: 24)
!241 = !DILocation(line: 214, column: 4, scope: !240)
!242 = !DILocation(line: 215, column: 13, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !1, line: 214, column: 11)
!244 = !DILocation(line: 215, column: 18, scope: !243)
!245 = !DILocation(line: 220, column: 10, scope: !221)
!246 = !DILocation(line: 220, column: 15, scope: !221)
!247 = !DILocation(line: 225, column: 15, scope: !248)
!248 = distinct !DILexicalBlock(scope: !66, file: !1, line: 225, column: 6)
!249 = !DILocation(line: 225, column: 20, scope: !248)
!250 = !DILocation(line: 225, column: 6, scope: !66)
!251 = !DILocation(line: 231, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 225, column: 30)
!253 = !DILocation(line: 231, column: 21, scope: !252)
!254 = !DILocation(line: 238, column: 4, scope: !252)
!255 = !DILocation(line: 239, column: 1, scope: !252)
!256 = !DILocation(line: 240, column: 1, scope: !66)
!257 = !DILocation(line: 252, column: 21, scope: !76)
!258 = !DILocation(line: 253, column: 21, scope: !76)
!259 = !DILocation(line: 262, column: 14, scope: !260)
!260 = distinct !DILexicalBlock(scope: !76, file: !1, line: 262, column: 6)
!261 = !DILocation(line: 262, column: 30, scope: !260)
!262 = !DILocation(line: 262, column: 22, scope: !260)
!263 = !DILocation(line: 263, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 262, column: 40)
!265 = !DILocation(line: 263, column: 4, scope: !264)
!266 = !DILocation(line: 266, column: 4, scope: !264)
!267 = !DILocation(line: 268, column: 15, scope: !268)
!268 = distinct !DILexicalBlock(scope: !76, file: !1, line: 268, column: 6)
!269 = !DILocation(line: 268, column: 20, scope: !268)
!270 = !DILocation(line: 268, column: 6, scope: !76)
!271 = !DILocation(line: 274, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 268, column: 30)
!273 = !DILocation(line: 275, column: 13, scope: !272)
!274 = !DILocation(line: 275, column: 19, scope: !272)
!275 = !DILocation(line: 282, column: 1, scope: !272)
!276 = !DILocation(line: 283, column: 15, scope: !277)
!277 = distinct !DILexicalBlock(scope: !76, file: !1, line: 283, column: 6)
!278 = !DILocation(line: 283, column: 20, scope: !277)
!279 = !DILocation(line: 283, column: 6, scope: !76)
!280 = !DILocation(line: 316, column: 29, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 316, column: 7)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 302, column: 27)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 296, column: 8)
!284 = !DILocation(line: 344, column: 16, scope: !282)
!285 = !DILocation(line: 345, column: 16, scope: !282)
!286 = !DILocation(line: 346, column: 16, scope: !282)
!287 = !DILocation(line: 302, column: 4, scope: !283)
!288 = !DILocation(line: 255, column: 11, scope: !76)
!289 = !DILocation(line: 291, column: 16, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 289, column: 36)
!291 = distinct !DILexicalBlock(scope: !277, file: !1, line: 283, column: 27)
!292 = !DILocation(line: 292, column: 16, scope: !290)
!293 = !DILocation(line: 293, column: 16, scope: !290)
!294 = !DILocation(line: 289, column: 4, scope: !291)
!295 = !DILocation(line: 290, column: 20, scope: !290)
!296 = !DILocation(line: 291, column: 32, scope: !290)
!297 = !DILocation(line: 291, column: 29, scope: !290)
!298 = !DILocation(line: 292, column: 23, scope: !290)
!299 = !DILocation(line: 293, column: 25, scope: !290)
!300 = !DILocation(line: 294, column: 7, scope: !290)
!301 = !DILocation(line: 289, column: 26, scope: !291)
!302 = !DILocation(line: 304, column: 20, scope: !282)
!303 = !DILocation(line: 311, column: 17, scope: !282)
!304 = !DILocation(line: 256, column: 8, scope: !76)
!305 = !DILocation(line: 255, column: 25, scope: !76)
!306 = !DILocation(line: 317, column: 18, scope: !307)
!307 = distinct !DILexicalBlock(scope: !281, file: !1, line: 316, column: 7)
!308 = !DILocation(line: 316, column: 7, scope: !281)
!309 = !DILocation(line: 319, column: 20, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !1, line: 318, column: 33)
!311 = !DILocation(line: 256, column: 17, scope: !76)
!312 = !DILocation(line: 324, column: 23, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !1, line: 324, column: 15)
!314 = !DILocation(line: 324, column: 15, scope: !310)
!315 = !DILocation(line: 318, column: 26, scope: !307)
!316 = !DILocation(line: 329, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !282, file: !1, line: 329, column: 12)
!318 = !DILocation(line: 329, column: 12, scope: !282)
!319 = !DILocation(line: 330, column: 24, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !1, line: 329, column: 27)
!321 = !DILocation(line: 334, column: 7, scope: !320)
!322 = !DILocation(line: 335, column: 16, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !1, line: 334, column: 14)
!324 = !DILocation(line: 335, column: 21, scope: !323)
!325 = !DILocation(line: 340, column: 18, scope: !282)
!326 = !DILocation(line: 344, column: 32, scope: !282)
!327 = !DILocation(line: 344, column: 29, scope: !282)
!328 = !DILocation(line: 345, column: 23, scope: !282)
!329 = !DILocation(line: 346, column: 25, scope: !282)
!330 = !DILocation(line: 302, column: 17, scope: !283)
!331 = !DILocation(line: 357, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !76, file: !1, line: 357, column: 6)
!333 = !DILocation(line: 357, column: 20, scope: !332)
!334 = !DILocation(line: 357, column: 6, scope: !76)
!335 = !DILocation(line: 363, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 357, column: 30)
!337 = !DILocation(line: 363, column: 21, scope: !336)
!338 = !DILocation(line: 370, column: 4, scope: !336)
!339 = !DILocation(line: 371, column: 1, scope: !336)
!340 = !DILocation(line: 372, column: 1, scope: !76)
