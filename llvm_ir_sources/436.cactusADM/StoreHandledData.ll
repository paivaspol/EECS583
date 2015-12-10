; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/Cactus/src/util/StoreHandledData.c,v 1.13 2001/07/03 21:49:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StoreHandledData_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0), !dbg !82
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_NewHandle(%struct.cHandledData** nocapture %storage, i8* %name, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cHandledData** %storage, i64 0, metadata !35, metadata !83), !dbg !84
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !36, metadata !83), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !37, metadata !83), !dbg !86
  %1 = load %struct.cHandledData** %storage, align 8, !dbg !87, !tbaa !89
  %2 = icmp eq %struct.cHandledData* %1, null, !dbg !93
  br i1 %2, label %3, label %.thread, !dbg !94

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @malloc(i64 16) #6, !dbg !95
  %5 = bitcast %struct.cHandledData** %storage to i8**, !dbg !97
  store i8* %4, i8** %5, align 8, !dbg !97, !tbaa !89
  %6 = icmp eq i8* %4, null, !dbg !98
  br i1 %6, label %13, label %.thread2, !dbg !100

.thread2:                                         ; preds = %3
  %7 = bitcast i8* %4 to %struct.cHandledData*
  %8 = bitcast i8* %4 to %struct.cHandleStorage**, !dbg !101
  store %struct.cHandleStorage* null, %struct.cHandleStorage** %8, align 8, !dbg !103, !tbaa !104
  %9 = getelementptr inbounds i8* %4, i64 8, !dbg !107
  %10 = bitcast i8* %9 to i32*, !dbg !107
  store i32 0, i32* %10, align 4, !dbg !108, !tbaa !109
  %11 = getelementptr inbounds i8* %4, i64 12, !dbg !110
  %12 = bitcast i8* %11 to i32*, !dbg !110
  store i32 0, i32* %12, align 4, !dbg !111, !tbaa !112
  br label %.thread, !dbg !113

; <label>:13                                      ; preds = %3
  br label %95, !dbg !113

.thread:                                          ; preds = %.thread2, %0
  %14 = phi %struct.cHandledData* [ %1, %0 ], [ %7, %.thread2 ]
  %15 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 2, !dbg !114
  %16 = load i32* %15, align 4, !dbg !114, !tbaa !112
  %17 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 1, !dbg !118
  %18 = load i32* %17, align 4, !dbg !118, !tbaa !109
  %19 = icmp ugt i32 %16, %18, !dbg !119
  br i1 %19, label %67, label %20, !dbg !120

; <label>:20                                      ; preds = %.thread
  %21 = bitcast %struct.cHandledData* %14 to i8**, !dbg !121
  %22 = load i8** %21, align 8, !dbg !121, !tbaa !104
  %23 = add i32 %18, 1, !dbg !124
  %24 = zext i32 %23 to i64, !dbg !125
  %25 = mul nuw nsw i64 %24, 24, !dbg !126
  %26 = tail call i8* @realloc(i8* %22, i64 %25) #6, !dbg !127
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !39, metadata !83), !dbg !128
  %27 = icmp eq i8* %26, null, !dbg !129
  br i1 %27, label %95, label %28, !dbg !130

; <label>:28                                      ; preds = %20
  %29 = bitcast %struct.cHandledData** %storage to i8***, !dbg !131
  %30 = load i8*** %29, align 8, !dbg !131, !tbaa !89
  store i8* %26, i8** %30, align 8, !dbg !133, !tbaa !104
  %31 = load %struct.cHandledData** %storage, align 8, !dbg !134, !tbaa !89
  %32 = getelementptr inbounds %struct.cHandledData* %31, i64 0, i32 1, !dbg !135
  %33 = load i32* %32, align 4, !dbg !135, !tbaa !109
  %34 = zext i32 %33 to i64, !dbg !136
  %35 = getelementptr inbounds %struct.cHandledData* %31, i64 0, i32 0, !dbg !137
  %36 = load %struct.cHandleStorage** %35, align 8, !dbg !137, !tbaa !104
  %37 = getelementptr inbounds %struct.cHandleStorage* %36, i64 %34, i32 0, !dbg !138
  store i32 1, i32* %37, align 4, !dbg !139, !tbaa !140
  %38 = getelementptr inbounds %struct.cHandleStorage* %36, i64 %34, i32 2, !dbg !142
  store i8* %data, i8** %38, align 8, !dbg !143, !tbaa !144
  %39 = tail call i64 @strlen(i8* %name) #6, !dbg !145
  %40 = add i64 %39, 1, !dbg !146
  %41 = tail call i8* @malloc(i64 %40) #6, !dbg !147
  %42 = load %struct.cHandledData** %storage, align 8, !dbg !148, !tbaa !89
  %43 = getelementptr inbounds %struct.cHandledData* %42, i64 0, i32 1, !dbg !149
  %44 = load i32* %43, align 4, !dbg !149, !tbaa !109
  %45 = zext i32 %44 to i64, !dbg !150
  %46 = getelementptr inbounds %struct.cHandledData* %42, i64 0, i32 0, !dbg !151
  %47 = load %struct.cHandleStorage** %46, align 8, !dbg !151, !tbaa !104
  %48 = getelementptr inbounds %struct.cHandleStorage* %47, i64 %45, i32 1, !dbg !152
  store i8* %41, i8** %48, align 8, !dbg !153, !tbaa !154
  %49 = load %struct.cHandledData** %storage, align 8, !dbg !155, !tbaa !89
  %50 = getelementptr inbounds %struct.cHandledData* %49, i64 0, i32 1, !dbg !157
  %51 = load i32* %50, align 4, !dbg !157, !tbaa !109
  %52 = zext i32 %51 to i64, !dbg !158
  %53 = getelementptr inbounds %struct.cHandledData* %49, i64 0, i32 0, !dbg !159
  %54 = load %struct.cHandleStorage** %53, align 8, !dbg !159, !tbaa !104
  %55 = getelementptr inbounds %struct.cHandleStorage* %54, i64 %52, i32 1, !dbg !160
  %56 = load i8** %55, align 8, !dbg !160, !tbaa !154
  %57 = icmp eq i8* %56, null, !dbg !158
  br i1 %57, label %61, label %58, !dbg !161

; <label>:58                                      ; preds = %28
  %59 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %56, i1 false), !dbg !162
  %60 = tail call i8* @__strcpy_chk(i8* %56, i8* %name, i64 %59) #6, !dbg !162
  %.pre = load %struct.cHandledData** %storage, align 8, !dbg !164, !tbaa !89
  %.phi.trans.insert = getelementptr inbounds %struct.cHandledData* %.pre, i64 0, i32 1
  %.pre1 = load i32* %.phi.trans.insert, align 4, !dbg !165, !tbaa !109
  br label %61, !dbg !166

; <label>:61                                      ; preds = %28, %58
  %62 = phi i32 [ %51, %28 ], [ %.pre1, %58 ]
  %63 = phi %struct.cHandledData* [ %49, %28 ], [ %.pre, %58 ]
  %64 = getelementptr inbounds %struct.cHandledData* %63, i64 0, i32 1, !dbg !165
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !38, metadata !83), !dbg !167
  %65 = add i32 %62, 1, !dbg !168
  store i32 %65, i32* %64, align 4, !dbg !168, !tbaa !109
  %66 = getelementptr inbounds %struct.cHandledData* %63, i64 0, i32 2, !dbg !169
  store i32 %65, i32* %66, align 4, !dbg !170, !tbaa !112
  br label %95

; <label>:67                                      ; preds = %.thread
  %68 = zext i32 %16 to i64, !dbg !171
  %69 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 0, !dbg !174
  %70 = load %struct.cHandleStorage** %69, align 8, !dbg !174, !tbaa !104
  %71 = getelementptr inbounds %struct.cHandleStorage* %70, i64 %68, i32 0, !dbg !175
  %72 = load i32* %71, align 4, !dbg !175, !tbaa !140
  %73 = icmp eq i32 %72, 1, !dbg !176
  br i1 %73, label %95, label %74, !dbg !177

; <label>:74                                      ; preds = %67
  store i32 1, i32* %71, align 4, !dbg !178, !tbaa !140
  %75 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 2, !dbg !180
  %76 = load i32* %75, align 4, !dbg !180, !tbaa !112
  %77 = zext i32 %76 to i64, !dbg !181
  %78 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 0, !dbg !182
  %79 = load %struct.cHandleStorage** %78, align 8, !dbg !182, !tbaa !104
  %80 = getelementptr inbounds %struct.cHandleStorage* %79, i64 %77, i32 2, !dbg !183
  store i8* %data, i8** %80, align 8, !dbg !184, !tbaa !144
  %81 = load %struct.cHandledData** %storage, align 8, !dbg !185, !tbaa !89
  %82 = getelementptr inbounds %struct.cHandledData* %81, i64 0, i32 2, !dbg !186
  %83 = load i32* %82, align 4, !dbg !186, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !38, metadata !83), !dbg !167
  tail call void @llvm.dbg.value(metadata %struct.cHandledData* %81, i64 0, metadata !73, metadata !83), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !74, metadata !83), !dbg !189
  %84 = getelementptr inbounds %struct.cHandledData* %81, i64 0, i32 1, !dbg !190
  %85 = load i32* %84, align 4, !dbg !190, !tbaa !109
  %86 = getelementptr inbounds %struct.cHandledData* %81, i64 0, i32 0, !dbg !191
  br label %87, !dbg !194

; <label>:87                                      ; preds = %89, %74
  %current.0.in.i = phi i32 [ %83, %74 ], [ %current.0.i, %89 ], !dbg !195
  %current.0.i = add i32 %current.0.in.i, 1, !dbg !196
  %88 = icmp ult i32 %current.0.i, %85, !dbg !197
  br i1 %88, label %89, label %FindNextUnused.exit, !dbg !194

; <label>:89                                      ; preds = %87
  %90 = zext i32 %current.0.i to i64, !dbg !198
  %91 = load %struct.cHandleStorage** %86, align 8, !dbg !191, !tbaa !104
  %92 = getelementptr inbounds %struct.cHandleStorage* %91, i64 %90, i32 0, !dbg !199
  %93 = load i32* %92, align 4, !dbg !199, !tbaa !140
  %94 = icmp eq i32 %93, 0, !dbg !200
  br i1 %94, label %FindNextUnused.exit, label %87, !dbg !201

FindNextUnused.exit:                              ; preds = %87, %89
  store i32 %current.0.i, i32* %82, align 4, !dbg !202, !tbaa !112
  br label %95

; <label>:95                                      ; preds = %13, %67, %20, %61, %FindNextUnused.exit
  %return_code.0 = phi i32 [ %62, %61 ], [ %83, %FindNextUnused.exit ], [ -2, %20 ], [ -2, %67 ], [ -1, %13 ]
  ret i32 %return_code.0, !dbg !203
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_DeleteHandle(%struct.cHandledData* nocapture %storage, i32 %handle) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cHandledData* %storage, i64 0, metadata !44, metadata !83), !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !45, metadata !83), !dbg !205
  %1 = icmp sgt i32 %handle, -1, !dbg !206
  br i1 %1, label %2, label %20, !dbg !208

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !209
  %4 = load i32* %3, align 4, !dbg !209, !tbaa !109
  %5 = icmp ugt i32 %4, %handle, !dbg !210
  br i1 %5, label %6, label %20, !dbg !211

; <label>:6                                       ; preds = %2
  %7 = sext i32 %handle to i64, !dbg !212
  %8 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !214
  %9 = load %struct.cHandleStorage** %8, align 8, !dbg !214, !tbaa !104
  %10 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %7, i32 0, !dbg !215
  store i32 0, i32* %10, align 4, !dbg !216, !tbaa !140
  %11 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %7, i32 2, !dbg !217
  store i8* null, i8** %11, align 8, !dbg !218, !tbaa !144
  %12 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %7, i32 1, !dbg !219
  %13 = load i8** %12, align 8, !dbg !219, !tbaa !154
  tail call void @free(i8* %13) #7, !dbg !220
  %14 = load %struct.cHandleStorage** %8, align 8, !dbg !221, !tbaa !104
  %15 = getelementptr inbounds %struct.cHandleStorage* %14, i64 %7, i32 1, !dbg !222
  store i8* null, i8** %15, align 8, !dbg !223, !tbaa !154
  %16 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 2, !dbg !224
  %17 = load i32* %16, align 4, !dbg !224, !tbaa !112
  %18 = icmp ugt i32 %17, %handle, !dbg !226
  br i1 %18, label %19, label %20, !dbg !227

; <label>:19                                      ; preds = %6
  store i32 %handle, i32* %16, align 4, !dbg !228, !tbaa !112
  br label %20, !dbg !230

; <label>:20                                      ; preds = %0, %2, %6, %19
  %return_code.0 = phi i32 [ 0, %19 ], [ 0, %6 ], [ 1, %2 ], [ 1, %0 ]
  ret i32 %return_code.0, !dbg !231
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @Util_GetHandledData(%struct.cHandledData* readonly %storage, i32 %handle) #5 {
  tail call void @llvm.dbg.value(metadata %struct.cHandledData* %storage, i64 0, metadata !51, metadata !83), !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !52, metadata !83), !dbg !233
  %1 = icmp ne %struct.cHandledData* %storage, null, !dbg !234
  %2 = icmp sgt i32 %handle, -1, !dbg !236
  %or.cond = and i1 %1, %2, !dbg !239
  br i1 %or.cond, label %3, label %17, !dbg !239

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !240
  %5 = load i32* %4, align 4, !dbg !240, !tbaa !109
  %6 = icmp ugt i32 %5, %handle, !dbg !241
  br i1 %6, label %7, label %17, !dbg !242

; <label>:7                                       ; preds = %3
  %8 = sext i32 %handle to i64, !dbg !243
  %9 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !244
  %10 = load %struct.cHandleStorage** %9, align 8, !dbg !244, !tbaa !104
  %11 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 0, !dbg !245
  %12 = load i32* %11, align 4, !dbg !245, !tbaa !140
  %13 = icmp eq i32 %12, 1, !dbg !246
  br i1 %13, label %14, label %17, !dbg !247

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 2, !dbg !248
  %16 = load i8** %15, align 8, !dbg !248, !tbaa !144
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !53, metadata !83), !dbg !250
  br label %17, !dbg !251

; <label>:17                                      ; preds = %0, %3, %7, %14
  %data.0 = phi i8* [ %16, %14 ], [ null, %7 ], [ null, %3 ], [ null, %0 ]
  ret i8* %data.0, !dbg !252
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_GetHandle(%struct.cHandledData* readonly %storage, i8* nocapture readonly %name, i8** %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cHandledData* %storage, i64 0, metadata !59, metadata !83), !dbg !253
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !60, metadata !83), !dbg !254
  tail call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !61, metadata !83), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !62, metadata !83), !dbg !256
  %1 = icmp ne i8** %data, null, !dbg !257
  br i1 %1, label %2, label %3, !dbg !259

; <label>:2                                       ; preds = %0
  store i8* null, i8** %data, align 8, !dbg !260, !tbaa !89
  br label %3, !dbg !262

; <label>:3                                       ; preds = %2, %0
  %4 = icmp eq %struct.cHandledData* %storage, null, !dbg !263
  br i1 %4, label %.loopexit, label %.preheader, !dbg !265

.preheader:                                       ; preds = %3
  %5 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !266
  %6 = load i32* %5, align 4, !dbg !266, !tbaa !109
  %7 = icmp eq i32 %6, 0, !dbg !270
  br i1 %7, label %.loopexit, label %.lr.ph, !dbg !271

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !272
  %9 = load %struct.cHandleStorage** %8, align 8, !dbg !272, !tbaa !104
  br label %10, !dbg !271

; <label>:10                                      ; preds = %.lr.ph, %26
  %current.03 = phi i32 [ 0, %.lr.ph ], [ %27, %26 ]
  %11 = zext i32 %current.03 to i64, !dbg !275
  %12 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %11, i32 0, !dbg !276
  %13 = load i32* %12, align 4, !dbg !276, !tbaa !140
  %14 = icmp eq i32 %13, 1, !dbg !277
  br i1 %14, label %15, label %26, !dbg !278

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %11, i32 1, !dbg !279
  %17 = load i8** %16, align 8, !dbg !279, !tbaa !154
  %18 = tail call i32 @strcmp(i8* %name, i8* %17) #6, !dbg !282
  %19 = icmp eq i32 %18, 0, !dbg !282
  br i1 %19, label %20, label %26, !dbg !283

; <label>:20                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !62, metadata !83), !dbg !256
  br i1 %1, label %21, label %.loopexit, !dbg !284

; <label>:21                                      ; preds = %20
  %22 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %11, i32 2, !dbg !286
  %23 = bitcast i8** %22 to i64*, !dbg !286
  %24 = load i64* %23, align 8, !dbg !286, !tbaa !144
  %25 = bitcast i8** %data to i64*, !dbg !289
  store i64 %24, i64* %25, align 8, !dbg !289, !tbaa !89
  br label %.loopexit, !dbg !290

; <label>:26                                      ; preds = %15, %10
  %27 = add nuw i32 %current.03, 1, !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !63, metadata !83), !dbg !292
  %28 = icmp ult i32 %27, %6, !dbg !270
  br i1 %28, label %10, label %.loopexit, !dbg !271

.loopexit:                                        ; preds = %26, %.preheader, %3, %21, %20
  %handle.0 = phi i32 [ %current.03, %21 ], [ %current.03, %20 ], [ -2, %3 ], [ -1, %.preheader ], [ -1, %26 ]
  ret i32 %handle.0, !dbg !293
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @Util_GetHandleName(%struct.cHandledData* readonly %storage, i32 %handle) #5 {
  tail call void @llvm.dbg.value(metadata %struct.cHandledData* %storage, i64 0, metadata !68, metadata !83), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !69, metadata !83), !dbg !295
  %1 = icmp ne %struct.cHandledData* %storage, null, !dbg !296
  %2 = icmp sgt i32 %handle, -1, !dbg !298
  %or.cond = and i1 %1, %2, !dbg !301
  br i1 %or.cond, label %3, label %17, !dbg !301

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !302
  %5 = load i32* %4, align 4, !dbg !302, !tbaa !109
  %6 = icmp ugt i32 %5, %handle, !dbg !303
  br i1 %6, label %7, label %17, !dbg !304

; <label>:7                                       ; preds = %3
  %8 = sext i32 %handle to i64, !dbg !305
  %9 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !306
  %10 = load %struct.cHandleStorage** %9, align 8, !dbg !306, !tbaa !104
  %11 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 0, !dbg !307
  %12 = load i32* %11, align 4, !dbg !307, !tbaa !140
  %13 = icmp eq i32 %12, 1, !dbg !308
  br i1 %13, label %14, label %17, !dbg !309

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 1, !dbg !310
  %16 = load i8** %15, align 8, !dbg !310, !tbaa !154
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !70, metadata !83), !dbg !312
  br label %17, !dbg !313

; <label>:17                                      ; preds = %0, %3, %7, %14
  %name.0 = phi i8* [ %16, %14 ], [ null, %7 ], [ null, %3 ], [ null, %0 ]
  ret i8* %name.0, !dbg !314
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !23, globals: !76, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !18, !16}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandledData", file: !7, line: 28, baseType: !8)
!7 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 23, size: 128, align: 64, elements: !9)
!9 = !{!10, !21, !22}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !8, file: !7, line: 25, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandleStorage", file: !7, line: 21, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 16, size: 192, align: 64, elements: !14)
!14 = !{!15, !17, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !13, file: !7, line: 18, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !7, line: 19, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !7, line: 20, baseType: !4, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !8, file: !7, line: 26, baseType: !16, size: 32, align: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused", scope: !8, file: !7, line: 27, baseType: !16, size: 32, align: 32, offset: 96)
!23 = !{!24, !29, !40, !47, !54, !64, !71}
!24 = !DISubprogram(name: "CCTKi_version_util_StoreHandledData_c", scope: !1, file: !1, line: 22, type: !25, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_StoreHandledData_c, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!29 = !DISubprogram(name: "Util_NewHandle", scope: !1, file: !1, line: 53, type: !30, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cHandledData**, i8*, i8*)* @Util_NewHandle, variables: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !27, !4}
!32 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !29, file: !1, line: 53, type: !33)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !29, file: !1, line: 53, type: !27)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !29, file: !1, line: 53, type: !4)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !29, file: !1, line: 55, type: !32)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !29, file: !1, line: 57, type: !4)
!40 = !DISubprogram(name: "Util_DeleteHandle", scope: !1, file: !1, line: 158, type: !41, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cHandledData*, i32)* @Util_DeleteHandle, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!32, !5, !32}
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !40, file: !1, line: 158, type: !5)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 2, scope: !40, file: !1, line: 158, type: !32)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !40, file: !1, line: 160, type: !32)
!47 = !DISubprogram(name: "Util_GetHandledData", scope: !1, file: !1, line: 238, type: !48, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.cHandledData*, i32)* @Util_GetHandledData, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!4, !5, !32}
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !47, file: !1, line: 238, type: !5)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 2, scope: !47, file: !1, line: 238, type: !32)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !47, file: !1, line: 240, type: !4)
!54 = !DISubprogram(name: "Util_GetHandle", scope: !1, file: !1, line: 281, type: !55, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cHandledData*, i8*, i8**)* @Util_GetHandle, variables: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!32, !5, !27, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!58 = !{!59, !60, !61, !62, !63}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !54, file: !1, line: 281, type: !5)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !54, file: !1, line: 281, type: !27)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !54, file: !1, line: 281, type: !57)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !54, file: !1, line: 283, type: !32)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !54, file: !1, line: 284, type: !16)
!64 = !DISubprogram(name: "Util_GetHandleName", scope: !1, file: !1, line: 334, type: !65, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.cHandledData*, i32)* @Util_GetHandleName, variables: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!27, !5, !32}
!67 = !{!68, !69, !70}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !64, file: !1, line: 334, type: !5)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 2, scope: !64, file: !1, line: 334, type: !32)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !64, file: !1, line: 336, type: !27)
!71 = !DISubprogram(name: "FindNextUnused", scope: !1, file: !1, line: 205, type: !41, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, variables: !72)
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !71, file: !1, line: 205, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "first", arg: 2, scope: !71, file: !1, line: 205, type: !32)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !71, file: !1, line: 207, type: !16)
!76 = !{!77}
!77 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !27, isLocal: true, isDefinition: true)
!78 = !{i32 2, !"Dwarf Version", i32 2}
!79 = !{i32 2, !"Debug Info Version", i32 700000003}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!82 = !DILocation(line: 22, column: 1, scope: !24)
!83 = !DIExpression()
!84 = !DILocation(line: 53, column: 35, scope: !29)
!85 = !DILocation(line: 53, column: 56, scope: !29)
!86 = !DILocation(line: 53, column: 68, scope: !29)
!87 = !DILocation(line: 59, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !29, file: !1, line: 59, column: 6)
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !DILocation(line: 59, column: 15, scope: !88)
!94 = !DILocation(line: 59, column: 6, scope: !29)
!95 = !DILocation(line: 61, column: 32, scope: !96)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 60, column: 3)
!97 = !DILocation(line: 61, column: 14, scope: !96)
!98 = !DILocation(line: 63, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 63, column: 8)
!100 = !DILocation(line: 63, column: 8, scope: !96)
!101 = !DILocation(line: 65, column: 19, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 64, column: 5)
!103 = !DILocation(line: 65, column: 25, scope: !102)
!104 = !{!105, !90, i64 0}
!105 = !{!"", !90, i64 0, !106, i64 8, !106, i64 12}
!106 = !{!"int", !91, i64 0}
!107 = !DILocation(line: 66, column: 19, scope: !102)
!108 = !DILocation(line: 66, column: 30, scope: !102)
!109 = !{!105, !106, i64 8}
!110 = !DILocation(line: 67, column: 19, scope: !102)
!111 = !DILocation(line: 67, column: 32, scope: !102)
!112 = !{!105, !106, i64 12}
!113 = !DILocation(line: 75, column: 6, scope: !29)
!114 = !DILocation(line: 78, column: 20, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 78, column: 8)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 76, column: 3)
!117 = distinct !DILexicalBlock(scope: !29, file: !1, line: 75, column: 6)
!118 = !DILocation(line: 78, column: 48, scope: !115)
!119 = !DILocation(line: 78, column: 33, scope: !115)
!120 = !DILocation(line: 78, column: 8, scope: !116)
!121 = !DILocation(line: 80, column: 47, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 80, column: 10)
!123 = distinct !DILexicalBlock(scope: !115, file: !1, line: 79, column: 5)
!124 = !DILocation(line: 80, column: 77, scope: !122)
!125 = !DILocation(line: 80, column: 54, scope: !122)
!126 = !DILocation(line: 80, column: 80, scope: !122)
!127 = !DILocation(line: 80, column: 27, scope: !122)
!128 = !DILocation(line: 57, column: 9, scope: !29)
!129 = !DILocation(line: 80, column: 17, scope: !122)
!130 = !DILocation(line: 80, column: 10, scope: !123)
!131 = !DILocation(line: 88, column: 10, scope: !132)
!132 = distinct !DILexicalBlock(scope: !122, file: !1, line: 87, column: 7)
!133 = !DILocation(line: 88, column: 27, scope: !132)
!134 = !DILocation(line: 91, column: 28, scope: !132)
!135 = !DILocation(line: 91, column: 39, scope: !132)
!136 = !DILocation(line: 91, column: 9, scope: !132)
!137 = !DILocation(line: 91, column: 21, scope: !132)
!138 = !DILocation(line: 91, column: 51, scope: !132)
!139 = !DILocation(line: 91, column: 58, scope: !132)
!140 = !{!141, !106, i64 0}
!141 = !{!"", !106, i64 0, !90, i64 8, !90, i64 16}
!142 = !DILocation(line: 92, column: 51, scope: !132)
!143 = !DILocation(line: 92, column: 56, scope: !132)
!144 = !{!141, !90, i64 16}
!145 = !DILocation(line: 93, column: 74, scope: !132)
!146 = !DILocation(line: 93, column: 86, scope: !132)
!147 = !DILocation(line: 93, column: 66, scope: !132)
!148 = !DILocation(line: 93, column: 28, scope: !132)
!149 = !DILocation(line: 93, column: 39, scope: !132)
!150 = !DILocation(line: 93, column: 9, scope: !132)
!151 = !DILocation(line: 93, column: 21, scope: !132)
!152 = !DILocation(line: 93, column: 51, scope: !132)
!153 = !DILocation(line: 93, column: 56, scope: !132)
!154 = !{!141, !90, i64 8}
!155 = !DILocation(line: 95, column: 31, scope: !156)
!156 = distinct !DILexicalBlock(scope: !132, file: !1, line: 95, column: 12)
!157 = !DILocation(line: 95, column: 42, scope: !156)
!158 = !DILocation(line: 95, column: 12, scope: !156)
!159 = !DILocation(line: 95, column: 24, scope: !156)
!160 = !DILocation(line: 95, column: 54, scope: !156)
!161 = !DILocation(line: 95, column: 12, scope: !132)
!162 = !DILocation(line: 97, column: 11, scope: !163)
!163 = distinct !DILexicalBlock(scope: !156, file: !1, line: 96, column: 9)
!164 = !DILocation(line: 100, column: 24, scope: !132)
!165 = !DILocation(line: 100, column: 35, scope: !132)
!166 = !DILocation(line: 98, column: 9, scope: !163)
!167 = !DILocation(line: 55, column: 7, scope: !29)
!168 = !DILocation(line: 103, column: 31, scope: !132)
!169 = !DILocation(line: 106, column: 21, scope: !132)
!170 = !DILocation(line: 106, column: 34, scope: !132)
!171 = !DILocation(line: 113, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 113, column: 10)
!173 = distinct !DILexicalBlock(scope: !115, file: !1, line: 110, column: 5)
!174 = !DILocation(line: 113, column: 22, scope: !172)
!175 = !DILocation(line: 113, column: 54, scope: !172)
!176 = !DILocation(line: 113, column: 61, scope: !172)
!177 = !DILocation(line: 113, column: 10, scope: !173)
!178 = !DILocation(line: 125, column: 60, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !1, line: 123, column: 7)
!180 = !DILocation(line: 126, column: 39, scope: !179)
!181 = !DILocation(line: 126, column: 9, scope: !179)
!182 = !DILocation(line: 126, column: 21, scope: !179)
!183 = !DILocation(line: 126, column: 53, scope: !179)
!184 = !DILocation(line: 126, column: 58, scope: !179)
!185 = !DILocation(line: 128, column: 24, scope: !179)
!186 = !DILocation(line: 128, column: 35, scope: !179)
!187 = !DILocation(line: 205, column: 41, scope: !71, inlinedAt: !188)
!188 = distinct !DILocation(line: 131, column: 36, scope: !179)
!189 = !DILocation(line: 205, column: 54, scope: !71, inlinedAt: !188)
!190 = !DILocation(line: 213, column: 28, scope: !71, inlinedAt: !188)
!191 = !DILocation(line: 215, column: 17, scope: !192, inlinedAt: !188)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 215, column: 8)
!193 = distinct !DILexicalBlock(scope: !71, file: !1, line: 214, column: 3)
!194 = !DILocation(line: 213, column: 3, scope: !71, inlinedAt: !188)
!195 = !DILocation(line: 131, column: 36, scope: !179)
!196 = !DILocation(line: 209, column: 18, scope: !71, inlinedAt: !188)
!197 = !DILocation(line: 213, column: 17, scope: !71, inlinedAt: !188)
!198 = !DILocation(line: 215, column: 8, scope: !192, inlinedAt: !188)
!199 = !DILocation(line: 215, column: 32, scope: !192, inlinedAt: !188)
!200 = !DILocation(line: 215, column: 38, scope: !192, inlinedAt: !188)
!201 = !DILocation(line: 215, column: 8, scope: !193, inlinedAt: !188)
!202 = !DILocation(line: 131, column: 34, scope: !179)
!203 = !DILocation(line: 140, column: 3, scope: !29)
!204 = !DILocation(line: 158, column: 37, scope: !40)
!205 = !DILocation(line: 158, column: 50, scope: !40)
!206 = !DILocation(line: 162, column: 14, scope: !207)
!207 = distinct !DILexicalBlock(scope: !40, file: !1, line: 162, column: 6)
!208 = !DILocation(line: 162, column: 19, scope: !207)
!209 = !DILocation(line: 162, column: 54, scope: !207)
!210 = !DILocation(line: 162, column: 43, scope: !207)
!211 = !DILocation(line: 162, column: 6, scope: !40)
!212 = !DILocation(line: 165, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !207, file: !1, line: 163, column: 3)
!214 = !DILocation(line: 165, column: 14, scope: !213)
!215 = !DILocation(line: 165, column: 28, scope: !213)
!216 = !DILocation(line: 165, column: 35, scope: !213)
!217 = !DILocation(line: 166, column: 28, scope: !213)
!218 = !DILocation(line: 166, column: 33, scope: !213)
!219 = !DILocation(line: 167, column: 33, scope: !213)
!220 = !DILocation(line: 167, column: 5, scope: !213)
!221 = !DILocation(line: 168, column: 14, scope: !213)
!222 = !DILocation(line: 168, column: 28, scope: !213)
!223 = !DILocation(line: 168, column: 33, scope: !213)
!224 = !DILocation(line: 170, column: 40, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !1, line: 170, column: 8)
!226 = !DILocation(line: 170, column: 29, scope: !225)
!227 = !DILocation(line: 170, column: 8, scope: !213)
!228 = !DILocation(line: 172, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 171, column: 5)
!230 = !DILocation(line: 173, column: 5, scope: !229)
!231 = !DILocation(line: 183, column: 3, scope: !40)
!232 = !DILocation(line: 238, column: 41, scope: !47)
!233 = !DILocation(line: 238, column: 54, scope: !47)
!234 = !DILocation(line: 242, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !47, file: !1, line: 242, column: 6)
!236 = !DILocation(line: 244, column: 16, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 244, column: 8)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 243, column: 3)
!239 = !DILocation(line: 242, column: 6, scope: !47)
!240 = !DILocation(line: 245, column: 41, scope: !237)
!241 = !DILocation(line: 245, column: 30, scope: !237)
!242 = !DILocation(line: 245, column: 52, scope: !237)
!243 = !DILocation(line: 246, column: 9, scope: !237)
!244 = !DILocation(line: 246, column: 18, scope: !237)
!245 = !DILocation(line: 246, column: 32, scope: !237)
!246 = !DILocation(line: 246, column: 39, scope: !237)
!247 = !DILocation(line: 244, column: 8, scope: !238)
!248 = !DILocation(line: 249, column: 37, scope: !249)
!249 = distinct !DILexicalBlock(scope: !237, file: !1, line: 247, column: 5)
!250 = !DILocation(line: 240, column: 9, scope: !47)
!251 = !DILocation(line: 250, column: 5, scope: !249)
!252 = !DILocation(line: 263, column: 3, scope: !47)
!253 = !DILocation(line: 281, column: 34, scope: !54)
!254 = !DILocation(line: 281, column: 55, scope: !54)
!255 = !DILocation(line: 281, column: 68, scope: !54)
!256 = !DILocation(line: 283, column: 7, scope: !54)
!257 = !DILocation(line: 288, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !54, file: !1, line: 288, column: 6)
!259 = !DILocation(line: 288, column: 6, scope: !54)
!260 = !DILocation(line: 290, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 289, column: 3)
!262 = !DILocation(line: 291, column: 3, scope: !261)
!263 = !DILocation(line: 293, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !54, file: !1, line: 293, column: 6)
!265 = !DILocation(line: 293, column: 6, scope: !54)
!266 = !DILocation(line: 295, column: 41, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 295, column: 5)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 295, column: 5)
!269 = distinct !DILexicalBlock(scope: !264, file: !1, line: 294, column: 3)
!270 = !DILocation(line: 295, column: 30, scope: !267)
!271 = !DILocation(line: 295, column: 5, scope: !268)
!272 = !DILocation(line: 297, column: 19, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 297, column: 10)
!274 = distinct !DILexicalBlock(scope: !267, file: !1, line: 296, column: 5)
!275 = !DILocation(line: 297, column: 10, scope: !273)
!276 = !DILocation(line: 297, column: 34, scope: !273)
!277 = !DILocation(line: 297, column: 41, scope: !273)
!278 = !DILocation(line: 297, column: 10, scope: !274)
!279 = !DILocation(line: 299, column: 50, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 299, column: 12)
!281 = distinct !DILexicalBlock(scope: !273, file: !1, line: 298, column: 7)
!282 = !DILocation(line: 299, column: 13, scope: !280)
!283 = !DILocation(line: 299, column: 12, scope: !281)
!284 = !DILocation(line: 303, column: 14, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 300, column: 9)
!286 = !DILocation(line: 305, column: 45, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 304, column: 11)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 303, column: 14)
!289 = !DILocation(line: 305, column: 19, scope: !287)
!290 = !DILocation(line: 306, column: 11, scope: !287)
!291 = !DILocation(line: 295, column: 60, scope: !267)
!292 = !DILocation(line: 284, column: 16, scope: !54)
!293 = !DILocation(line: 317, column: 3, scope: !54)
!294 = !DILocation(line: 334, column: 46, scope: !64)
!295 = !DILocation(line: 334, column: 59, scope: !64)
!296 = !DILocation(line: 338, column: 6, scope: !297)
!297 = distinct !DILexicalBlock(scope: !64, file: !1, line: 338, column: 6)
!298 = !DILocation(line: 340, column: 16, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 340, column: 8)
!300 = distinct !DILexicalBlock(scope: !297, file: !1, line: 339, column: 3)
!301 = !DILocation(line: 338, column: 6, scope: !64)
!302 = !DILocation(line: 341, column: 41, scope: !299)
!303 = !DILocation(line: 341, column: 30, scope: !299)
!304 = !DILocation(line: 341, column: 52, scope: !299)
!305 = !DILocation(line: 342, column: 9, scope: !299)
!306 = !DILocation(line: 342, column: 18, scope: !299)
!307 = !DILocation(line: 342, column: 32, scope: !299)
!308 = !DILocation(line: 342, column: 39, scope: !299)
!309 = !DILocation(line: 340, column: 8, scope: !300)
!310 = !DILocation(line: 345, column: 37, scope: !311)
!311 = distinct !DILexicalBlock(scope: !299, file: !1, line: 343, column: 5)
!312 = !DILocation(line: 336, column: 15, scope: !64)
!313 = !DILocation(line: 346, column: 5, scope: !311)
!314 = !DILocation(line: 359, column: 3, scope: !64)
