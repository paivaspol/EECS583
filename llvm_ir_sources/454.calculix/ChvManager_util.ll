; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [70 x i8] c"\0A fatal error in ChvMananger_newObjectOfSizeNbytes(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in ChvMananger_releaseObject(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ChvManager_releaseListOfObjects(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager* %manager, i32 %nbytesNeeded) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !62, metadata !91), !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %nbytesNeeded, i64 0, metadata !63, metadata !91), !dbg !93
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !94
  %2 = icmp slt i32 %nbytesNeeded, 1, !dbg !96
  %or.cond = or i1 %1, %2, !dbg !97
  br i1 %or.cond, label %3, label %6, !dbg !97

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !98, !tbaa !100
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), %struct._ChvManager* %manager, i32 %nbytesNeeded) #5, !dbg !104
  tail call void @exit(i32 -1) #6, !dbg !105
  unreachable, !dbg !105

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !106
  %8 = load %struct._Lock** %7, align 8, !dbg !106, !tbaa !108
  %9 = icmp eq %struct._Lock* %8, null, !dbg !111
  br i1 %9, label %14, label %10, !dbg !112

; <label>:10                                      ; preds = %6
  tail call void @Lock_lock(%struct._Lock* %8) #5, !dbg !113
  %11 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 9, !dbg !115
  %12 = load i32* %11, align 4, !dbg !116, !tbaa !117
  %13 = add nsw i32 %12, 1, !dbg !116
  store i32 %13, i32* %11, align 4, !dbg !116, !tbaa !117
  br label %14, !dbg !118

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !119
  tail call void @llvm.dbg.value(metadata %struct._Chv* null, i64 0, metadata !65, metadata !91), !dbg !121
  %chv.05 = load %struct._Chv** %15, align 8, !dbg !119
  %16 = icmp eq %struct._Chv* %chv.05, null, !dbg !122
  br i1 %16, label %._crit_edge, label %.lr.ph, !dbg !124

.lr.ph:                                           ; preds = %14, %19
  %chv.07 = phi %struct._Chv* [ %chv.0, %19 ], [ %chv.05, %14 ]
  %prev.06 = phi %struct._Chv* [ %chv.07, %19 ], [ null, %14 ]
  %17 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv.07) #5, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !66, metadata !91), !dbg !127
  %18 = icmp slt i32 %17, %nbytesNeeded, !dbg !128
  br i1 %18, label %19, label %22, !dbg !130

; <label>:19                                      ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv.0, i64 0, metadata !65, metadata !91), !dbg !121
  %20 = getelementptr inbounds %struct._Chv* %chv.07, i64 0, i32 10, !dbg !131
  %chv.0 = load %struct._Chv** %20, align 8, !dbg !119
  %21 = icmp eq %struct._Chv* %chv.0, null, !dbg !122
  br i1 %21, label %._crit_edge, label %.lr.ph, !dbg !124

; <label>:22                                      ; preds = %.lr.ph
  %23 = icmp eq %struct._Chv* %prev.06, null, !dbg !132
  %24 = getelementptr inbounds %struct._Chv* %chv.07, i64 0, i32 10, !dbg !136
  %25 = bitcast %struct._Chv** %24 to i64*, !dbg !136
  %26 = load i64* %25, align 8, !dbg !136, !tbaa !138
  br i1 %23, label %27, label %29, !dbg !141

; <label>:27                                      ; preds = %22
  %28 = bitcast %struct._ChvManager* %manager to i64*, !dbg !142
  store i64 %26, i64* %28, align 8, !dbg !142, !tbaa !143
  br label %.thread, !dbg !144

; <label>:29                                      ; preds = %22
  %30 = getelementptr inbounds %struct._Chv* %prev.06, i64 0, i32 10, !dbg !145
  %31 = bitcast %struct._Chv** %30 to i64*, !dbg !147
  store i64 %26, i64* %31, align 8, !dbg !147, !tbaa !138
  br label %.thread

._crit_edge:                                      ; preds = %19, %14
  %32 = tail call %struct._Chv* @Chv_new() #5, !dbg !148
  tail call void @llvm.dbg.value(metadata %struct._Chv* %32, i64 0, metadata !64, metadata !91), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !67, metadata !91), !dbg !151
  %33 = getelementptr inbounds %struct._Chv* %32, i64 0, i32 9, !dbg !152
  %34 = sext i32 %nbytesNeeded to i64, !dbg !153
  %35 = lshr i64 %34, 3, !dbg !154
  %36 = trunc i64 %35 to i32, !dbg !153
  tail call void @DV_setSize(%struct._DV* %33, i32 %36) #5, !dbg !155
  %37 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %32) #5, !dbg !156
  %38 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 6, !dbg !159
  %39 = load i32* %38, align 4, !dbg !160, !tbaa !161
  %40 = add nsw i32 %39, %37, !dbg !160
  store i32 %40, i32* %38, align 4, !dbg !160, !tbaa !161
  br label %.thread, !dbg !162

.thread:                                          ; preds = %27, %29, %._crit_edge
  %chv.12 = phi %struct._Chv* [ %32, %._crit_edge ], [ %chv.07, %29 ], [ %chv.07, %27 ]
  %41 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !163
  %42 = load i32* %41, align 4, !dbg !164, !tbaa !165
  %43 = add nsw i32 %42, 1, !dbg !164
  store i32 %43, i32* %41, align 4, !dbg !164, !tbaa !165
  %44 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv.12) #5, !dbg !166
  %45 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !167
  %46 = load i32* %45, align 4, !dbg !168, !tbaa !169
  %47 = add nsw i32 %46, %44, !dbg !168
  store i32 %47, i32* %45, align 4, !dbg !168, !tbaa !169
  %48 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 5, !dbg !170
  %49 = load i32* %48, align 4, !dbg !171, !tbaa !172
  %50 = add nsw i32 %49, %nbytesNeeded, !dbg !171
  store i32 %50, i32* %48, align 4, !dbg !171, !tbaa !172
  %51 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 7, !dbg !173
  %52 = load i32* %51, align 4, !dbg !174, !tbaa !175
  %53 = add nsw i32 %52, 1, !dbg !174
  store i32 %53, i32* %51, align 4, !dbg !174, !tbaa !175
  %54 = load %struct._Lock** %7, align 8, !dbg !176, !tbaa !108
  %55 = icmp eq %struct._Lock* %54, null, !dbg !178
  br i1 %55, label %60, label %56, !dbg !179

; <label>:56                                      ; preds = %.thread
  %57 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 10, !dbg !180
  %58 = load i32* %57, align 4, !dbg !182, !tbaa !183
  %59 = add nsw i32 %58, 1, !dbg !182
  store i32 %59, i32* %57, align 4, !dbg !182, !tbaa !183
  tail call void @Lock_unlock(%struct._Lock* %54) #5, !dbg !184
  br label %60, !dbg !185

; <label>:60                                      ; preds = %.thread, %56
  ret %struct._Chv* %chv.12, !dbg !186
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare i32 @Chv_nbytesInWorkspace(%struct._Chv*) #3

; Function Attrs: optsize
declare %struct._Chv* @Chv_new() #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvManager_releaseObject(%struct._ChvManager* %manager, %struct._Chv* %chv1) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !72, metadata !91), !dbg !187
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv1, i64 0, metadata !73, metadata !91), !dbg !188
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !189
  %2 = icmp eq %struct._Chv* %chv1, null, !dbg !191
  %or.cond = or i1 %1, %2, !dbg !192
  br i1 %or.cond, label %3, label %6, !dbg !192

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !193, !tbaa !100
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._ChvManager* %manager, %struct._Chv* %chv1) #5, !dbg !195
  tail call void @exit(i32 -1) #6, !dbg !196
  unreachable, !dbg !196

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !197
  %8 = load %struct._Lock** %7, align 8, !dbg !197, !tbaa !108
  %9 = icmp eq %struct._Lock* %8, null, !dbg !199
  br i1 %9, label %14, label %10, !dbg !200

; <label>:10                                      ; preds = %6
  tail call void @Lock_lock(%struct._Lock* %8) #5, !dbg !201
  %11 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 9, !dbg !203
  %12 = load i32* %11, align 4, !dbg !204, !tbaa !117
  %13 = add nsw i32 %12, 1, !dbg !204
  store i32 %13, i32* %11, align 4, !dbg !204, !tbaa !117
  br label %14, !dbg !205

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 8, !dbg !206
  %16 = load i32* %15, align 4, !dbg !207, !tbaa !208
  %17 = add nsw i32 %16, 1, !dbg !207
  store i32 %17, i32* %15, align 4, !dbg !207, !tbaa !208
  %18 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv1) #5, !dbg !209
  %19 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !210
  %20 = load i32* %19, align 4, !dbg !211, !tbaa !169
  %21 = sub nsw i32 %20, %18, !dbg !211
  store i32 %21, i32* %19, align 4, !dbg !211, !tbaa !169
  %22 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !212
  %23 = load i32* %22, align 4, !dbg !213, !tbaa !165
  %24 = add nsw i32 %23, -1, !dbg !213
  store i32 %24, i32* %22, align 4, !dbg !213, !tbaa !165
  %25 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2, !dbg !214
  %26 = load i32* %25, align 4, !dbg !214, !tbaa !216
  %27 = icmp eq i32 %26, 0, !dbg !217
  br i1 %27, label %28, label %29, !dbg !218

; <label>:28                                      ; preds = %14
  tail call void @Chv_free(%struct._Chv* %chv1) #5, !dbg !219
  br label %42, !dbg !221

; <label>:29                                      ; preds = %14
  %30 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv1) #5, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !76, metadata !91), !dbg !224
  %31 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !225
  tail call void @llvm.dbg.value(metadata %struct._Chv* null, i64 0, metadata !75, metadata !91), !dbg !227
  %chv2.02 = load %struct._Chv** %31, align 8, !dbg !225
  %32 = icmp eq %struct._Chv* %chv2.02, null, !dbg !228
  br i1 %32, label %._crit_edge.thread, label %.lr.ph, !dbg !230

.lr.ph:                                           ; preds = %29, %35
  %chv2.04 = phi %struct._Chv* [ %chv2.0, %35 ], [ %chv2.02, %29 ]
  %prev.03 = phi %struct._Chv* [ %chv2.04, %35 ], [ null, %29 ]
  %33 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv2.04) #5, !dbg !231
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !77, metadata !91), !dbg !233
  %34 = icmp sgt i32 %33, %30, !dbg !234
  br i1 %34, label %._crit_edge, label %35, !dbg !236

; <label>:35                                      ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv2.0, i64 0, metadata !75, metadata !91), !dbg !227
  %36 = getelementptr inbounds %struct._Chv* %chv2.04, i64 0, i32 10, !dbg !237
  %chv2.0 = load %struct._Chv** %36, align 8, !dbg !225
  %37 = icmp eq %struct._Chv* %chv2.0, null, !dbg !228
  br i1 %37, label %._crit_edge.thread14, label %.lr.ph, !dbg !230

._crit_edge:                                      ; preds = %.lr.ph
  %38 = icmp eq %struct._Chv* %prev.03, null, !dbg !238
  br i1 %38, label %._crit_edge.thread, label %._crit_edge.thread14, !dbg !240

._crit_edge.thread:                               ; preds = %29, %._crit_edge
  %chv2.0.lcssa13 = phi %struct._Chv* [ %chv2.04, %._crit_edge ], [ null, %29 ]
  store %struct._Chv* %chv1, %struct._Chv** %31, align 8, !dbg !241, !tbaa !143
  br label %40, !dbg !243

._crit_edge.thread14:                             ; preds = %35, %._crit_edge
  %prev.0.lcssa16 = phi %struct._Chv* [ %prev.03, %._crit_edge ], [ %chv2.04, %35 ]
  %chv2.0.lcssa15 = phi %struct._Chv* [ %chv2.04, %._crit_edge ], [ null, %35 ]
  %39 = getelementptr inbounds %struct._Chv* %prev.0.lcssa16, i64 0, i32 10, !dbg !244
  store %struct._Chv* %chv1, %struct._Chv** %39, align 8, !dbg !246, !tbaa !138
  br label %40

; <label>:40                                      ; preds = %._crit_edge.thread14, %._crit_edge.thread
  %chv2.0.lcssa12 = phi %struct._Chv* [ %chv2.0.lcssa15, %._crit_edge.thread14 ], [ %chv2.0.lcssa13, %._crit_edge.thread ]
  %41 = getelementptr inbounds %struct._Chv* %chv1, i64 0, i32 10, !dbg !247
  store %struct._Chv* %chv2.0.lcssa12, %struct._Chv** %41, align 8, !dbg !248, !tbaa !138
  br label %42

; <label>:42                                      ; preds = %40, %28
  %43 = load %struct._Lock** %7, align 8, !dbg !249, !tbaa !108
  %44 = icmp eq %struct._Lock* %43, null, !dbg !251
  br i1 %44, label %49, label %45, !dbg !252

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 10, !dbg !253
  %47 = load i32* %46, align 4, !dbg !255, !tbaa !183
  %48 = add nsw i32 %47, 1, !dbg !255
  store i32 %48, i32* %46, align 4, !dbg !255, !tbaa !183
  tail call void @Lock_unlock(%struct._Lock* %43) #5, !dbg !256
  br label %49, !dbg !257

; <label>:49                                      ; preds = %42, %45
  ret void, !dbg !258
}

; Function Attrs: optsize
declare void @Chv_free(%struct._Chv*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvManager_releaseListOfObjects(%struct._ChvManager* %manager, %struct._Chv* %head) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !80, metadata !91), !dbg !259
  tail call void @llvm.dbg.value(metadata %struct._Chv* %head, i64 0, metadata !81, metadata !91), !dbg !260
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !261
  %2 = icmp eq %struct._Chv* %head, null, !dbg !263
  %or.cond = or i1 %1, %2, !dbg !264
  br i1 %or.cond, label %3, label %6, !dbg !264

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !265, !tbaa !100
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), %struct._ChvManager* %manager, %struct._Chv* %head) #5, !dbg !267
  tail call void @exit(i32 -1) #6, !dbg !268
  unreachable, !dbg !268

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !269
  %8 = load %struct._Lock** %7, align 8, !dbg !269, !tbaa !108
  %9 = icmp eq %struct._Lock* %8, null, !dbg !271
  br i1 %9, label %14, label %10, !dbg !272

; <label>:10                                      ; preds = %6
  tail call void @Lock_lock(%struct._Lock* %8) #5, !dbg !273
  %11 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 9, !dbg !275
  %12 = load i32* %11, align 4, !dbg !276, !tbaa !117
  %13 = add nsw i32 %12, 1, !dbg !276
  store i32 %13, i32* %11, align 4, !dbg !276, !tbaa !117
  br label %14, !dbg !277

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2, !dbg !278
  %16 = load i32* %15, align 4, !dbg !278, !tbaa !216
  %17 = icmp eq i32 %16, 0, !dbg !280
  br i1 %17, label %.lr.ph, label %.lr.ph14, !dbg !281

.lr.ph14:                                         ; preds = %14
  %18 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !282
  %19 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !286
  %20 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !287
  %21 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 8, !dbg !288
  br label %36, !dbg !289

.lr.ph:                                           ; preds = %14
  tail call void @llvm.dbg.value(metadata %struct._Chv* %head, i64 0, metadata !82, metadata !91), !dbg !290
  %22 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !291
  %23 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !294
  %24 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 8, !dbg !295
  br label %25, !dbg !296

; <label>:25                                      ; preds = %.lr.ph, %25
  %.04 = phi %struct._Chv* [ %head, %.lr.ph ], [ %27, %25 ]
  %26 = getelementptr inbounds %struct._Chv* %.04, i64 0, i32 10, !dbg !297
  %27 = load %struct._Chv** %26, align 8, !dbg !297, !tbaa !138
  tail call void @llvm.dbg.value(metadata %struct._Chv* %27, i64 0, metadata !81, metadata !91), !dbg !260
  %28 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %.04) #5, !dbg !298
  %29 = load i32* %22, align 4, !dbg !299, !tbaa !169
  %30 = sub nsw i32 %29, %28, !dbg !299
  store i32 %30, i32* %22, align 4, !dbg !299, !tbaa !169
  %31 = load i32* %23, align 4, !dbg !300, !tbaa !165
  %32 = add nsw i32 %31, -1, !dbg !300
  store i32 %32, i32* %23, align 4, !dbg !300, !tbaa !165
  %33 = load i32* %24, align 4, !dbg !301, !tbaa !208
  %34 = add nsw i32 %33, 1, !dbg !301
  store i32 %34, i32* %24, align 4, !dbg !301, !tbaa !208
  tail call void @Chv_free(%struct._Chv* %.04) #5, !dbg !302
  tail call void @llvm.dbg.value(metadata %struct._Chv* %27, i64 0, metadata !82, metadata !91), !dbg !290
  %35 = icmp eq %struct._Chv* %27, null, !dbg !303
  br i1 %35, label %.loopexit, label %25, !dbg !296

; <label>:36                                      ; preds = %.lr.ph14, %48
  %.113 = phi %struct._Chv* [ %head, %.lr.ph14 ], [ %38, %48 ]
  tail call void @llvm.dbg.value(metadata %struct._Chv* %38, i64 0, metadata !82, metadata !91), !dbg !290
  %37 = getelementptr inbounds %struct._Chv* %.113, i64 0, i32 10, !dbg !304
  %38 = load %struct._Chv** %37, align 8, !dbg !304, !tbaa !138
  tail call void @llvm.dbg.value(metadata %struct._Chv* %38, i64 0, metadata !81, metadata !91), !dbg !260
  %39 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %.113) #5, !dbg !305
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !85, metadata !91), !dbg !306
  tail call void @llvm.dbg.value(metadata %struct._Chv* null, i64 0, metadata !84, metadata !91), !dbg !307
  %chv2.05 = load %struct._Chv** %18, align 8, !dbg !282
  %40 = icmp eq %struct._Chv* %chv2.05, null, !dbg !308
  br i1 %40, label %._crit_edge.thread, label %.lr.ph8, !dbg !310

.lr.ph8:                                          ; preds = %36, %43
  %chv2.07 = phi %struct._Chv* [ %chv2.0, %43 ], [ %chv2.05, %36 ]
  %prev.06 = phi %struct._Chv* [ %chv2.07, %43 ], [ null, %36 ]
  %41 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv2.07) #5, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !86, metadata !91), !dbg !313
  %42 = icmp sgt i32 %41, %39, !dbg !314
  br i1 %42, label %._crit_edge, label %43, !dbg !316

; <label>:43                                      ; preds = %.lr.ph8
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv2.0, i64 0, metadata !84, metadata !91), !dbg !307
  %44 = getelementptr inbounds %struct._Chv* %chv2.07, i64 0, i32 10, !dbg !317
  %chv2.0 = load %struct._Chv** %44, align 8, !dbg !282
  %45 = icmp eq %struct._Chv* %chv2.0, null, !dbg !308
  br i1 %45, label %._crit_edge.thread20, label %.lr.ph8, !dbg !310

._crit_edge:                                      ; preds = %.lr.ph8
  %46 = icmp eq %struct._Chv* %prev.06, null, !dbg !318
  br i1 %46, label %._crit_edge.thread, label %._crit_edge.thread20, !dbg !320

._crit_edge.thread:                               ; preds = %36, %._crit_edge
  %chv2.0.lcssa19 = phi %struct._Chv* [ %chv2.07, %._crit_edge ], [ null, %36 ]
  store %struct._Chv* %.113, %struct._Chv** %18, align 8, !dbg !321, !tbaa !143
  br label %48, !dbg !323

._crit_edge.thread20:                             ; preds = %43, %._crit_edge
  %prev.0.lcssa22 = phi %struct._Chv* [ %prev.06, %._crit_edge ], [ %chv2.07, %43 ]
  %chv2.0.lcssa21 = phi %struct._Chv* [ %chv2.07, %._crit_edge ], [ null, %43 ]
  %47 = getelementptr inbounds %struct._Chv* %prev.0.lcssa22, i64 0, i32 10, !dbg !324
  store %struct._Chv* %.113, %struct._Chv** %47, align 8, !dbg !326, !tbaa !138
  br label %48

; <label>:48                                      ; preds = %._crit_edge.thread20, %._crit_edge.thread
  %chv2.0.lcssa18 = phi %struct._Chv* [ %chv2.0.lcssa21, %._crit_edge.thread20 ], [ %chv2.0.lcssa19, %._crit_edge.thread ]
  store %struct._Chv* %chv2.0.lcssa18, %struct._Chv** %37, align 8, !dbg !327, !tbaa !138
  %49 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %.113) #5, !dbg !328
  %50 = load i32* %19, align 4, !dbg !329, !tbaa !169
  %51 = sub nsw i32 %50, %49, !dbg !329
  store i32 %51, i32* %19, align 4, !dbg !329, !tbaa !169
  %52 = load i32* %20, align 4, !dbg !330, !tbaa !165
  %53 = add nsw i32 %52, -1, !dbg !330
  store i32 %53, i32* %20, align 4, !dbg !330, !tbaa !165
  %54 = load i32* %21, align 4, !dbg !331, !tbaa !208
  %55 = add nsw i32 %54, 1, !dbg !331
  store i32 %55, i32* %21, align 4, !dbg !331, !tbaa !208
  %56 = icmp eq %struct._Chv* %38, null, !dbg !332
  br i1 %56, label %.loopexit, label %36, !dbg !289

.loopexit:                                        ; preds = %48, %25
  %57 = load %struct._Lock** %7, align 8, !dbg !333, !tbaa !108
  %58 = icmp eq %struct._Lock* %57, null, !dbg !335
  br i1 %58, label %63, label %59, !dbg !336

; <label>:59                                      ; preds = %.loopexit
  %60 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 10, !dbg !337
  %61 = load i32* %60, align 4, !dbg !339, !tbaa !183
  %62 = add nsw i32 %61, 1, !dbg !339
  store i32 %62, i32* %60, align 4, !dbg !339, !tbaa !183
  tail call void @Lock_unlock(%struct._Lock* %57) #5, !dbg !340
  br label %63, !dbg !341

; <label>:63                                      ; preds = %.loopexit, %59
  ret void, !dbg !342
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
!llvm.module.flags = !{!87, !88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !68, !78}
!6 = !DISubprogram(name: "ChvManager_newObjectOfSizeNbytes", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Chv* (%struct._ChvManager*, i32)* @ChvManager_newObjectOfSizeNbytes, variables: !61)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !37, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !11, line: 30, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Chv/Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !11, line: 31, size: 640, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !23, !24, !27, !36}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 32, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !12, file: !11, line: 33, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !12, file: !11, line: 34, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !12, file: !11, line: 37, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !12, file: !11, line: 38, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !12, file: !11, line: 39, baseType: !22, size: 64, align: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 40, baseType: !25, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 41, baseType: !28, size: 192, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !29, line: 20, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !29, line: 21, size: 192, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 22, baseType: !15, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !30, file: !29, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !30, file: !29, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !30, file: !29, line: 25, baseType: !25, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 42, baseType: !9, size: 64, align: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChvManager", file: !39, line: 9, baseType: !40)
!39 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../ChvManager.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ChvManager", file: !39, line: 10, size: 448, align: 64, elements: !41)
!41 = !{!42, !43, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !40, file: !39, line: 11, baseType: !9, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !40, file: !39, line: 12, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !46, line: 36, baseType: !47)
!46 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !46, line: 37, size: 128, align: 64, elements: !48)
!48 = !{!49, !50, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !46, line: 45, baseType: !4, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !47, file: !46, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !47, file: !46, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !40, file: !39, line: 13, baseType: !15, size: 32, align: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !40, file: !39, line: 14, baseType: !15, size: 32, align: 32, offset: 160)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesactive", scope: !40, file: !39, line: 15, baseType: !15, size: 32, align: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesrequested", scope: !40, file: !39, line: 16, baseType: !15, size: 32, align: 32, offset: 224)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesalloc", scope: !40, file: !39, line: 17, baseType: !15, size: 32, align: 32, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !40, file: !39, line: 18, baseType: !15, size: 32, align: 32, offset: 288)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nreleases", scope: !40, file: !39, line: 19, baseType: !15, size: 32, align: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !40, file: !39, line: 20, baseType: !15, size: 32, align: 32, offset: 352)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !40, file: !39, line: 21, baseType: !15, size: 32, align: 32, offset: 384)
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !6, file: !1, line: 18, type: !37)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytesNeeded", arg: 2, scope: !6, file: !1, line: 19, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv", scope: !6, file: !1, line: 21, type: !9)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !6, file: !1, line: 21, type: !9)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytesAvailable", scope: !6, file: !1, line: 22, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newinstance", scope: !6, file: !1, line: 22, type: !15)
!68 = !DISubprogram(name: "ChvManager_releaseObject", scope: !1, file: !1, line: 146, type: !69, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvManager*, %struct._Chv*)* @ChvManager_releaseObject, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !37, !9}
!71 = !{!72, !73, !74, !75, !76, !77}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !68, file: !1, line: 147, type: !37)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv1", arg: 2, scope: !68, file: !1, line: 148, type: !9)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv2", scope: !68, file: !1, line: 150, type: !9)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !68, file: !1, line: 150, type: !9)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes1", scope: !68, file: !1, line: 151, type: !15)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes2", scope: !68, file: !1, line: 151, type: !15)
!78 = !DISubprogram(name: "ChvManager_releaseListOfObjects", scope: !1, file: !1, line: 242, type: !69, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvManager*, %struct._Chv*)* @ChvManager_releaseListOfObjects, variables: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !78, file: !1, line: 243, type: !37)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 2, scope: !78, file: !1, line: 244, type: !9)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv1", scope: !78, file: !1, line: 246, type: !9)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv2", scope: !78, file: !1, line: 246, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !78, file: !1, line: 246, type: !9)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes1", scope: !78, file: !1, line: 247, type: !15)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes2", scope: !78, file: !1, line: 247, type: !15)
!87 = !{i32 2, !"Dwarf Version", i32 2}
!88 = !{i32 2, !"Debug Info Version", i32 700000003}
!89 = !{i32 1, !"PIC Level", i32 2}
!90 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!91 = !DIExpression()
!92 = !DILocation(line: 18, column: 18, scope: !6)
!93 = !DILocation(line: 19, column: 17, scope: !6)
!94 = !DILocation(line: 28, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!96 = !DILocation(line: 28, column: 38, scope: !95)
!97 = !DILocation(line: 28, column: 22, scope: !95)
!98 = !DILocation(line: 29, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 28, column: 45)
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 29, column: 4, scope: !99)
!105 = !DILocation(line: 32, column: 4, scope: !99)
!106 = !DILocation(line: 38, column: 15, scope: !107)
!107 = distinct !DILexicalBlock(scope: !6, file: !1, line: 38, column: 6)
!108 = !{!109, !101, i64 8}
!109 = !{!"_ChvManager", !101, i64 0, !101, i64 8, !110, i64 16, !110, i64 20, !110, i64 24, !110, i64 28, !110, i64 32, !110, i64 36, !110, i64 40, !110, i64 44, !110, i64 48}
!110 = !{!"int", !102, i64 0}
!111 = !DILocation(line: 38, column: 20, scope: !107)
!112 = !DILocation(line: 38, column: 6, scope: !6)
!113 = !DILocation(line: 48, column: 4, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 38, column: 30)
!115 = !DILocation(line: 49, column: 13, scope: !114)
!116 = !DILocation(line: 49, column: 19, scope: !114)
!117 = !{!109, !110, i64 44}
!118 = !DILocation(line: 54, column: 1, scope: !114)
!119 = !DILocation(line: 60, column: 22, scope: !120)
!120 = distinct !DILexicalBlock(scope: !6, file: !1, line: 60, column: 1)
!121 = !DILocation(line: 21, column: 14, scope: !6)
!122 = !DILocation(line: 61, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 60, column: 1)
!124 = !DILocation(line: 60, column: 1, scope: !120)
!125 = !DILocation(line: 63, column: 22, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 62, column: 25)
!127 = !DILocation(line: 22, column: 8, scope: !6)
!128 = !DILocation(line: 69, column: 22, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 69, column: 9)
!130 = !DILocation(line: 69, column: 9, scope: !126)
!131 = !DILocation(line: 62, column: 18, scope: !123)
!132 = !DILocation(line: 85, column: 14, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 85, column: 9)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 74, column: 20)
!135 = distinct !DILexicalBlock(scope: !6, file: !1, line: 74, column: 6)
!136 = !DILocation(line: 86, column: 28, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 85, column: 24)
!138 = !{!139, !101, i64 72}
!139 = !{!"_Chv", !110, i64 0, !110, i64 4, !110, i64 8, !110, i64 12, !110, i64 16, !110, i64 20, !101, i64 24, !101, i64 32, !101, i64 40, !140, i64 48, !101, i64 72}
!140 = !{!"_DV", !110, i64 0, !110, i64 4, !110, i64 8, !101, i64 16}
!141 = !DILocation(line: 85, column: 9, scope: !134)
!142 = !DILocation(line: 86, column: 21, scope: !137)
!143 = !{!109, !101, i64 0}
!144 = !DILocation(line: 87, column: 4, scope: !137)
!145 = !DILocation(line: 88, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !133, file: !1, line: 87, column: 11)
!147 = !DILocation(line: 88, column: 18, scope: !146)
!148 = !DILocation(line: 97, column: 10, scope: !149)
!149 = distinct !DILexicalBlock(scope: !135, file: !1, line: 91, column: 8)
!150 = !DILocation(line: 21, column: 8, scope: !6)
!151 = !DILocation(line: 22, column: 25, scope: !6)
!152 = !DILocation(line: 103, column: 21, scope: !149)
!153 = !DILocation(line: 103, column: 28, scope: !149)
!154 = !DILocation(line: 103, column: 40, scope: !149)
!155 = !DILocation(line: 103, column: 4, scope: !149)
!156 = !DILocation(line: 111, column: 28, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 110, column: 25)
!158 = distinct !DILexicalBlock(scope: !6, file: !1, line: 110, column: 6)
!159 = !DILocation(line: 111, column: 13, scope: !157)
!160 = !DILocation(line: 111, column: 25, scope: !157)
!161 = !{!109, !110, i64 32}
!162 = !DILocation(line: 112, column: 1, scope: !157)
!163 = !DILocation(line: 113, column: 10, scope: !6)
!164 = !DILocation(line: 113, column: 17, scope: !6)
!165 = !{!109, !110, i64 20}
!166 = !DILocation(line: 114, column: 26, scope: !6)
!167 = !DILocation(line: 114, column: 10, scope: !6)
!168 = !DILocation(line: 114, column: 23, scope: !6)
!169 = !{!109, !110, i64 24}
!170 = !DILocation(line: 115, column: 10, scope: !6)
!171 = !DILocation(line: 115, column: 26, scope: !6)
!172 = !{!109, !110, i64 28}
!173 = !DILocation(line: 120, column: 10, scope: !6)
!174 = !DILocation(line: 120, column: 19, scope: !6)
!175 = !{!109, !110, i64 36}
!176 = !DILocation(line: 121, column: 15, scope: !177)
!177 = distinct !DILexicalBlock(scope: !6, file: !1, line: 121, column: 6)
!178 = !DILocation(line: 121, column: 20, scope: !177)
!179 = !DILocation(line: 121, column: 6, scope: !6)
!180 = !DILocation(line: 127, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 121, column: 30)
!182 = !DILocation(line: 127, column: 21, scope: !181)
!183 = !{!109, !110, i64 48}
!184 = !DILocation(line: 128, column: 4, scope: !181)
!185 = !DILocation(line: 134, column: 1, scope: !181)
!186 = !DILocation(line: 135, column: 1, scope: !6)
!187 = !DILocation(line: 147, column: 18, scope: !68)
!188 = !DILocation(line: 148, column: 18, scope: !68)
!189 = !DILocation(line: 157, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !68, file: !1, line: 157, column: 6)
!191 = !DILocation(line: 157, column: 30, scope: !190)
!192 = !DILocation(line: 157, column: 22, scope: !190)
!193 = !DILocation(line: 158, column: 12, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 157, column: 40)
!195 = !DILocation(line: 158, column: 4, scope: !194)
!196 = !DILocation(line: 161, column: 4, scope: !194)
!197 = !DILocation(line: 163, column: 15, scope: !198)
!198 = distinct !DILexicalBlock(scope: !68, file: !1, line: 163, column: 6)
!199 = !DILocation(line: 163, column: 20, scope: !198)
!200 = !DILocation(line: 163, column: 6, scope: !68)
!201 = !DILocation(line: 169, column: 4, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 163, column: 30)
!203 = !DILocation(line: 170, column: 13, scope: !202)
!204 = !DILocation(line: 170, column: 19, scope: !202)
!205 = !DILocation(line: 171, column: 1, scope: !202)
!206 = !DILocation(line: 172, column: 10, scope: !68)
!207 = !DILocation(line: 172, column: 19, scope: !68)
!208 = !{!109, !110, i64 40}
!209 = !DILocation(line: 173, column: 26, scope: !68)
!210 = !DILocation(line: 173, column: 10, scope: !68)
!211 = !DILocation(line: 173, column: 23, scope: !68)
!212 = !DILocation(line: 174, column: 10, scope: !68)
!213 = !DILocation(line: 174, column: 17, scope: !68)
!214 = !DILocation(line: 175, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !68, file: !1, line: 175, column: 6)
!216 = !{!109, !110, i64 16}
!217 = !DILocation(line: 175, column: 20, scope: !215)
!218 = !DILocation(line: 175, column: 6, scope: !68)
!219 = !DILocation(line: 181, column: 4, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 175, column: 27)
!221 = !DILocation(line: 182, column: 1, scope: !220)
!222 = !DILocation(line: 189, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !215, file: !1, line: 182, column: 8)
!224 = !DILocation(line: 151, column: 8, scope: !68)
!225 = !DILocation(line: 194, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 194, column: 4)
!227 = !DILocation(line: 150, column: 15, scope: !68)
!228 = !DILocation(line: 195, column: 15, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 194, column: 4)
!230 = !DILocation(line: 194, column: 4, scope: !226)
!231 = !DILocation(line: 197, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 196, column: 30)
!233 = !DILocation(line: 151, column: 17, scope: !68)
!234 = !DILocation(line: 201, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 201, column: 12)
!236 = !DILocation(line: 201, column: 12, scope: !232)
!237 = !DILocation(line: 196, column: 23, scope: !229)
!238 = !DILocation(line: 206, column: 14, scope: !239)
!239 = distinct !DILexicalBlock(scope: !223, file: !1, line: 206, column: 9)
!240 = !DILocation(line: 206, column: 9, scope: !223)
!241 = !DILocation(line: 207, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 206, column: 24)
!243 = !DILocation(line: 211, column: 4, scope: !242)
!244 = !DILocation(line: 212, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 211, column: 11)
!246 = !DILocation(line: 212, column: 18, scope: !245)
!247 = !DILocation(line: 217, column: 10, scope: !223)
!248 = !DILocation(line: 217, column: 15, scope: !223)
!249 = !DILocation(line: 222, column: 15, scope: !250)
!250 = distinct !DILexicalBlock(scope: !68, file: !1, line: 222, column: 6)
!251 = !DILocation(line: 222, column: 20, scope: !250)
!252 = !DILocation(line: 222, column: 6, scope: !68)
!253 = !DILocation(line: 228, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 222, column: 30)
!255 = !DILocation(line: 228, column: 21, scope: !254)
!256 = !DILocation(line: 229, column: 4, scope: !254)
!257 = !DILocation(line: 230, column: 1, scope: !254)
!258 = !DILocation(line: 231, column: 1, scope: !68)
!259 = !DILocation(line: 243, column: 18, scope: !78)
!260 = !DILocation(line: 244, column: 18, scope: !78)
!261 = !DILocation(line: 253, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !78, file: !1, line: 253, column: 6)
!263 = !DILocation(line: 253, column: 30, scope: !262)
!264 = !DILocation(line: 253, column: 22, scope: !262)
!265 = !DILocation(line: 254, column: 12, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 253, column: 40)
!267 = !DILocation(line: 254, column: 4, scope: !266)
!268 = !DILocation(line: 257, column: 4, scope: !266)
!269 = !DILocation(line: 259, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !78, file: !1, line: 259, column: 6)
!271 = !DILocation(line: 259, column: 20, scope: !270)
!272 = !DILocation(line: 259, column: 6, scope: !78)
!273 = !DILocation(line: 265, column: 4, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 259, column: 30)
!275 = !DILocation(line: 266, column: 13, scope: !274)
!276 = !DILocation(line: 266, column: 19, scope: !274)
!277 = !DILocation(line: 267, column: 1, scope: !274)
!278 = !DILocation(line: 268, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !78, file: !1, line: 268, column: 6)
!280 = !DILocation(line: 268, column: 20, scope: !279)
!281 = !DILocation(line: 268, column: 6, scope: !78)
!282 = !DILocation(line: 301, column: 29, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 301, column: 7)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 287, column: 27)
!285 = distinct !DILexicalBlock(scope: !279, file: !1, line: 281, column: 8)
!286 = !DILocation(line: 329, column: 16, scope: !284)
!287 = !DILocation(line: 330, column: 16, scope: !284)
!288 = !DILocation(line: 331, column: 16, scope: !284)
!289 = !DILocation(line: 287, column: 4, scope: !285)
!290 = !DILocation(line: 246, column: 8, scope: !78)
!291 = !DILocation(line: 276, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 274, column: 36)
!293 = distinct !DILexicalBlock(scope: !279, file: !1, line: 268, column: 27)
!294 = !DILocation(line: 277, column: 16, scope: !292)
!295 = !DILocation(line: 278, column: 16, scope: !292)
!296 = !DILocation(line: 274, column: 4, scope: !293)
!297 = !DILocation(line: 275, column: 20, scope: !292)
!298 = !DILocation(line: 276, column: 32, scope: !292)
!299 = !DILocation(line: 276, column: 29, scope: !292)
!300 = !DILocation(line: 277, column: 23, scope: !292)
!301 = !DILocation(line: 278, column: 25, scope: !292)
!302 = !DILocation(line: 279, column: 7, scope: !292)
!303 = !DILocation(line: 274, column: 26, scope: !293)
!304 = !DILocation(line: 289, column: 20, scope: !284)
!305 = !DILocation(line: 296, column: 17, scope: !284)
!306 = !DILocation(line: 247, column: 8, scope: !78)
!307 = !DILocation(line: 246, column: 22, scope: !78)
!308 = !DILocation(line: 302, column: 18, scope: !309)
!309 = distinct !DILexicalBlock(scope: !283, file: !1, line: 301, column: 7)
!310 = !DILocation(line: 301, column: 7, scope: !283)
!311 = !DILocation(line: 304, column: 20, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 303, column: 33)
!313 = !DILocation(line: 247, column: 17, scope: !78)
!314 = !DILocation(line: 309, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !1, line: 309, column: 15)
!316 = !DILocation(line: 309, column: 15, scope: !312)
!317 = !DILocation(line: 303, column: 26, scope: !309)
!318 = !DILocation(line: 314, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !284, file: !1, line: 314, column: 12)
!320 = !DILocation(line: 314, column: 12, scope: !284)
!321 = !DILocation(line: 315, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !1, line: 314, column: 27)
!323 = !DILocation(line: 319, column: 7, scope: !322)
!324 = !DILocation(line: 320, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !1, line: 319, column: 14)
!326 = !DILocation(line: 320, column: 21, scope: !325)
!327 = !DILocation(line: 325, column: 18, scope: !284)
!328 = !DILocation(line: 329, column: 32, scope: !284)
!329 = !DILocation(line: 329, column: 29, scope: !284)
!330 = !DILocation(line: 330, column: 23, scope: !284)
!331 = !DILocation(line: 331, column: 25, scope: !284)
!332 = !DILocation(line: 287, column: 17, scope: !285)
!333 = !DILocation(line: 334, column: 15, scope: !334)
!334 = distinct !DILexicalBlock(scope: !78, file: !1, line: 334, column: 6)
!335 = !DILocation(line: 334, column: 20, scope: !334)
!336 = !DILocation(line: 334, column: 6, scope: !78)
!337 = !DILocation(line: 340, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 334, column: 30)
!339 = !DILocation(line: 340, column: 21, scope: !338)
!340 = !DILocation(line: 341, column: 4, scope: !338)
!341 = !DILocation(line: 342, column: 1, scope: !338)
!342 = !DILocation(line: 343, column: 1, scope: !78)
