; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/obstack.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.fooalign = type { i8, double }

@obstack_alloc_failed_handler = global void ()* @print_and_abort, align 8
@obstack_exit_failure = global i32 1, align 4
@_obstack = common global %struct.obstack* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"memory exhausted\0A\00", align 1
@__stderrp = external global %struct.__sFILE*

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal void @print_and_abort() #0 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !145, !tbaa !146
  %2 = tail call i32 @"\01_fputs"(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), %struct.__sFILE* %1) #6, !dbg !150
  %3 = load i32* @obstack_exit_failure, align 4, !dbg !151, !tbaa !152
  tail call void @exit(i32 %3) #7, !dbg !154
  unreachable, !dbg !154
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @_obstack_begin(%struct.obstack* nocapture %h, i32 %size, i32 %alignment, i8* (i64)* %chunkfun, void (i8*)* %freefun) #1 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !63, metadata !155), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !64, metadata !155), !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %alignment, i64 0, metadata !65, metadata !155), !dbg !158
  tail call void @llvm.dbg.value(metadata i8* (i64)* %chunkfun, i64 0, metadata !66, metadata !155), !dbg !159
  tail call void @llvm.dbg.value(metadata void (i8*)* %freefun, i64 0, metadata !67, metadata !155), !dbg !160
  %1 = icmp eq i32 %alignment, 0, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 ptrtoint (double* getelementptr inbounds (%struct.fooalign* null, i32 0, i32 1) to i32), i64 0, metadata !65, metadata !155), !dbg !158
  %2 = icmp eq i32 %size, 0, !dbg !163
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !69, metadata !155), !dbg !164
  tail call void @llvm.dbg.value(metadata i32 4072, i64 0, metadata !64, metadata !155), !dbg !157
  %3 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 7, !dbg !165
  %4 = bitcast %struct._obstack_chunk* (i8*, i64)** %3 to i8* (i64)**, !dbg !166
  store i8* (i64)* %chunkfun, i8* (i64)** %4, align 8, !dbg !166, !tbaa !167
  %5 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 8, !dbg !170
  %6 = bitcast void (i8*, %struct._obstack_chunk*)** %5 to void (i8*)**, !dbg !171
  store void (i8*)* %freefun, void (i8*)** %6, align 8, !dbg !171, !tbaa !172
  %7 = sext i32 %size to i64, !dbg !173
  %8 = select i1 %2, i64 4072, i64 %7, !dbg !173
  %9 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 0, !dbg !174
  store i64 %8, i64* %9, align 8, !dbg !175, !tbaa !176
  %alignment.op = add i32 %alignment, -1, !dbg !177
  %10 = select i1 %1, i32 7, i32 %alignment.op, !dbg !177
  %11 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 6, !dbg !178
  store i32 %10, i32* %11, align 4, !dbg !179, !tbaa !180
  %12 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 10, !dbg !181
  %13 = load i8* %12, align 8, !dbg !182
  %14 = and i8 %13, -2, !dbg !182
  store i8 %14, i8* %12, align 8, !dbg !182
  %15 = bitcast i8* (i64)* %chunkfun to %struct._obstack_chunk* (i64)*
  %16 = tail call %struct._obstack_chunk* %15(i64 %8) #6, !dbg !183
  %17 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !184
  store %struct._obstack_chunk* %16, %struct._obstack_chunk** %17, align 8, !dbg !185, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, i64 0, metadata !68, metadata !155), !dbg !187
  %18 = icmp eq %struct._obstack_chunk* %16, null, !dbg !188
  br i1 %18, label %19, label %21, !dbg !190

; <label>:19                                      ; preds = %0
  %20 = load void ()** @obstack_alloc_failed_handler, align 8, !dbg !191, !tbaa !146
  tail call void %20() #6, !dbg !192
  br label %21, !dbg !192

; <label>:21                                      ; preds = %0, %19
  %22 = getelementptr inbounds %struct._obstack_chunk* %16, i64 0, i32 2, i64 0, !dbg !193
  %23 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 2, !dbg !194
  store i8* %22, i8** %23, align 8, !dbg !195, !tbaa !196
  %24 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 3, !dbg !197
  store i8* %22, i8** %24, align 8, !dbg !198, !tbaa !199
  %25 = bitcast %struct._obstack_chunk* %16 to i8*, !dbg !200
  %26 = load i64* %9, align 8, !dbg !201, !tbaa !176
  %27 = getelementptr inbounds i8* %25, i64 %26, !dbg !202
  %28 = getelementptr inbounds %struct._obstack_chunk* %16, i64 0, i32 0, !dbg !203
  store i8* %27, i8** %28, align 8, !dbg !204, !tbaa !205
  %29 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 4, !dbg !207
  store i8* %27, i8** %29, align 8, !dbg !208, !tbaa !209
  %30 = getelementptr inbounds %struct._obstack_chunk* %16, i64 0, i32 1, !dbg !210
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %30, align 8, !dbg !211, !tbaa !212
  %31 = load i8* %12, align 8, !dbg !213
  %32 = and i8 %31, -7, !dbg !214
  store i8 %32, i8* %12, align 8, !dbg !214
  ret i32 1, !dbg !215
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @_obstack_begin_1(%struct.obstack* nocapture %h, i32 %size, i32 %alignment, i8* (i8*, i64)* %chunkfun, void (i8*, i8*)* %freefun, i8* %arg) #1 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !82, metadata !155), !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !83, metadata !155), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %alignment, i64 0, metadata !84, metadata !155), !dbg !218
  tail call void @llvm.dbg.value(metadata i8* (i8*, i64)* %chunkfun, i64 0, metadata !85, metadata !155), !dbg !219
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %freefun, i64 0, metadata !86, metadata !155), !dbg !220
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !87, metadata !155), !dbg !221
  %1 = icmp eq i32 %alignment, 0, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 ptrtoint (double* getelementptr inbounds (%struct.fooalign* null, i32 0, i32 1) to i32), i64 0, metadata !84, metadata !155), !dbg !218
  %2 = icmp eq i32 %size, 0, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !89, metadata !155), !dbg !225
  tail call void @llvm.dbg.value(metadata i32 4072, i64 0, metadata !83, metadata !155), !dbg !217
  %3 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 7, !dbg !226
  %4 = bitcast %struct._obstack_chunk* (i8*, i64)** %3 to i8* (i8*, i64)**, !dbg !227
  store i8* (i8*, i64)* %chunkfun, i8* (i8*, i64)** %4, align 8, !dbg !227, !tbaa !167
  %5 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 8, !dbg !228
  %6 = bitcast void (i8*, %struct._obstack_chunk*)** %5 to void (i8*, i8*)**, !dbg !229
  store void (i8*, i8*)* %freefun, void (i8*, i8*)** %6, align 8, !dbg !229, !tbaa !172
  %7 = sext i32 %size to i64, !dbg !230
  %8 = select i1 %2, i64 4072, i64 %7, !dbg !230
  %9 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 0, !dbg !231
  store i64 %8, i64* %9, align 8, !dbg !232, !tbaa !176
  %alignment.op = add i32 %alignment, -1, !dbg !233
  %10 = select i1 %1, i32 7, i32 %alignment.op, !dbg !233
  %11 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 6, !dbg !234
  store i32 %10, i32* %11, align 4, !dbg !235, !tbaa !180
  %12 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 9, !dbg !236
  store i8* %arg, i8** %12, align 8, !dbg !237, !tbaa !238
  %13 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 10, !dbg !239
  %14 = load i8* %13, align 8, !dbg !240
  %15 = or i8 %14, 1, !dbg !240
  store i8 %15, i8* %13, align 8, !dbg !240
  %16 = bitcast i8* (i8*, i64)* %chunkfun to %struct._obstack_chunk* (i8*, i64)*
  %17 = tail call %struct._obstack_chunk* %16(i8* %arg, i64 %8) #6, !dbg !241
  %18 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !242
  store %struct._obstack_chunk* %17, %struct._obstack_chunk** %18, align 8, !dbg !243, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %17, i64 0, metadata !88, metadata !155), !dbg !244
  %19 = icmp eq %struct._obstack_chunk* %17, null, !dbg !245
  br i1 %19, label %20, label %22, !dbg !247

; <label>:20                                      ; preds = %0
  %21 = load void ()** @obstack_alloc_failed_handler, align 8, !dbg !248, !tbaa !146
  tail call void %21() #6, !dbg !249
  br label %22, !dbg !249

; <label>:22                                      ; preds = %0, %20
  %23 = getelementptr inbounds %struct._obstack_chunk* %17, i64 0, i32 2, i64 0, !dbg !250
  %24 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 2, !dbg !251
  store i8* %23, i8** %24, align 8, !dbg !252, !tbaa !196
  %25 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 3, !dbg !253
  store i8* %23, i8** %25, align 8, !dbg !254, !tbaa !199
  %26 = bitcast %struct._obstack_chunk* %17 to i8*, !dbg !255
  %27 = load i64* %9, align 8, !dbg !256, !tbaa !176
  %28 = getelementptr inbounds i8* %26, i64 %27, !dbg !257
  %29 = getelementptr inbounds %struct._obstack_chunk* %17, i64 0, i32 0, !dbg !258
  store i8* %28, i8** %29, align 8, !dbg !259, !tbaa !205
  %30 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 4, !dbg !260
  store i8* %28, i8** %30, align 8, !dbg !261, !tbaa !209
  %31 = getelementptr inbounds %struct._obstack_chunk* %17, i64 0, i32 1, !dbg !262
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %31, align 8, !dbg !263, !tbaa !212
  %32 = load i8* %13, align 8, !dbg !264
  %33 = and i8 %32, -7, !dbg !265
  store i8 %33, i8* %13, align 8, !dbg !265
  ret i32 1, !dbg !266
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_obstack_newchunk(%struct.obstack* nocapture %h, i32 %length) #1 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !96, metadata !155), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %length, i64 0, metadata !97, metadata !155), !dbg !268
  %1 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !269
  %2 = load %struct._obstack_chunk** %1, align 8, !dbg !269, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %2, i64 0, metadata !98, metadata !155), !dbg !270
  %3 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 3, !dbg !271
  %4 = load i8** %3, align 8, !dbg !271, !tbaa !199
  %5 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 2, !dbg !272
  %6 = load i8** %5, align 8, !dbg !272, !tbaa !196
  %7 = ptrtoint i8* %4 to i64, !dbg !273
  %8 = ptrtoint i8* %6 to i64, !dbg !273
  %9 = sub i64 %7, %8, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !101, metadata !155), !dbg !274
  %10 = sext i32 %length to i64, !dbg !275
  %11 = ashr i64 %9, 3, !dbg !276
  %12 = add nsw i64 %10, 100, !dbg !277
  %13 = add i64 %12, %9, !dbg !278
  %14 = add i64 %13, %11, !dbg !279
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !100, metadata !155), !dbg !280
  %15 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 0, !dbg !281
  %16 = load i64* %15, align 8, !dbg !281, !tbaa !176
  %17 = icmp slt i64 %14, %16, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !100, metadata !155), !dbg !280
  %. = select i1 %17, i64 %16, i64 %14, !dbg !284
  %18 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 10, !dbg !285
  %19 = load i8* %18, align 8, !dbg !285
  %20 = and i8 %19, 1, !dbg !285
  %21 = icmp eq i8 %20, 0, !dbg !285
  %22 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 7, !dbg !285
  %23 = load %struct._obstack_chunk* (i8*, i64)** %22, align 8, !dbg !285, !tbaa !167
  br i1 %21, label %28, label %24, !dbg !285

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 9, !dbg !285
  %26 = load i8** %25, align 8, !dbg !285, !tbaa !238
  %27 = tail call %struct._obstack_chunk* %23(i8* %26, i64 %.) #6, !dbg !285
  br label %31, !dbg !285

; <label>:28                                      ; preds = %0
  %29 = bitcast %struct._obstack_chunk* (i8*, i64)* %23 to %struct._obstack_chunk* (i64)*, !dbg !285
  %30 = tail call %struct._obstack_chunk* %29(i64 %.) #6, !dbg !285
  br label %31, !dbg !285

; <label>:31                                      ; preds = %28, %24
  %32 = phi %struct._obstack_chunk* [ %27, %24 ], [ %30, %28 ], !dbg !285
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %32, i64 0, metadata !99, metadata !155), !dbg !286
  %33 = icmp eq %struct._obstack_chunk* %32, null, !dbg !287
  br i1 %33, label %34, label %36, !dbg !289

; <label>:34                                      ; preds = %31
  %35 = load void ()** @obstack_alloc_failed_handler, align 8, !dbg !290, !tbaa !146
  tail call void %35() #6, !dbg !291
  br label %36, !dbg !291

; <label>:36                                      ; preds = %31, %34
  store %struct._obstack_chunk* %32, %struct._obstack_chunk** %1, align 8, !dbg !292, !tbaa !186
  %37 = getelementptr inbounds %struct._obstack_chunk* %32, i64 0, i32 1, !dbg !293
  store %struct._obstack_chunk* %2, %struct._obstack_chunk** %37, align 8, !dbg !294, !tbaa !212
  %38 = bitcast %struct._obstack_chunk* %32 to i8*, !dbg !295
  %39 = getelementptr inbounds i8* %38, i64 %., !dbg !296
  %40 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 4, !dbg !297
  store i8* %39, i8** %40, align 8, !dbg !298, !tbaa !209
  %41 = getelementptr inbounds %struct._obstack_chunk* %32, i64 0, i32 0, !dbg !299
  store i8* %39, i8** %41, align 8, !dbg !300, !tbaa !205
  %42 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 6, !dbg !301
  %43 = load i32* %42, align 4, !dbg !301, !tbaa !180
  %44 = icmp sgt i32 %43, 6, !dbg !303
  br i1 %44, label %45, label %.preheader, !dbg !304

; <label>:45                                      ; preds = %36
  %46 = lshr i64 %9, 2, !dbg !305
  %47 = icmp eq i64 %46, 0, !dbg !308
  br i1 %47, label %._crit_edge6, label %.lr.ph5, !dbg !310

.lr.ph5:                                          ; preds = %45
  %48 = bitcast i8** %5 to i32**, !dbg !311
  %49 = load i32** %48, align 8, !dbg !311, !tbaa !196
  %50 = getelementptr inbounds %struct._obstack_chunk* %32, i64 0, i32 2, i64 0, !dbg !312
  %51 = bitcast i8* %50 to i32*, !dbg !313
  br label %52, !dbg !310

; <label>:52                                      ; preds = %.lr.ph5, %52
  %i.03.in = phi i64 [ %46, %.lr.ph5 ], [ %i.03, %52 ]
  %i.03 = add nsw i64 %i.03.in, -1, !dbg !314
  %53 = getelementptr inbounds i32* %49, i64 %i.03, !dbg !315
  %54 = load i32* %53, align 4, !dbg !315, !tbaa !152
  %55 = getelementptr inbounds i32* %51, i64 %i.03, !dbg !316
  store i32 %54, i32* %55, align 4, !dbg !317, !tbaa !152
  %56 = icmp sgt i64 %i.03.in, 1, !dbg !308
  br i1 %56, label %52, label %._crit_edge6, !dbg !310

._crit_edge6:                                     ; preds = %52, %45
  %57 = shl nuw i64 %46, 2, !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !103, metadata !155), !dbg !319
  br label %.preheader, !dbg !320

.preheader:                                       ; preds = %36, %._crit_edge6
  %i.1.ph = phi i64 [ 0, %36 ], [ %57, %._crit_edge6 ]
  %58 = icmp slt i64 %i.1.ph, %9, !dbg !321
  %59 = load i8** %5, align 8, !dbg !324, !tbaa !196
  br i1 %58, label %.lr.ph, label %._crit_edge, !dbg !325

.lr.ph:                                           ; preds = %.preheader
  %60 = add i64 %7, -1, !dbg !325
  %61 = sub i64 %60, %8, !dbg !325
  br label %62, !dbg !325

; <label>:62                                      ; preds = %62, %.lr.ph
  %63 = phi i8* [ %59, %.lr.ph ], [ %68, %62 ]
  %i.11 = phi i64 [ %i.1.ph, %.lr.ph ], [ %67, %62 ]
  %64 = getelementptr inbounds i8* %63, i64 %i.11, !dbg !326
  %65 = load i8* %64, align 1, !dbg !326, !tbaa !327
  %66 = getelementptr inbounds %struct._obstack_chunk* %32, i64 0, i32 2, i64 %i.11, !dbg !328
  store i8 %65, i8* %66, align 1, !dbg !329, !tbaa !327
  %67 = add nsw i64 %i.11, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !102, metadata !155), !dbg !331
  %68 = load i8** %5, align 8, !dbg !324, !tbaa !196
  %exitcond = icmp eq i64 %i.11, %61, !dbg !325
  br i1 %exitcond, label %._crit_edge, label %62, !dbg !325

._crit_edge:                                      ; preds = %62, %.preheader
  %.lcssa = phi i8* [ %59, %.preheader ], [ %68, %62 ]
  %69 = getelementptr inbounds %struct._obstack_chunk* %2, i64 0, i32 2, i64 0, !dbg !332
  %70 = icmp eq i8* %.lcssa, %69, !dbg !334
  br i1 %70, label %71, label %91, !dbg !335

; <label>:71                                      ; preds = %._crit_edge
  %72 = load i8* %18, align 8, !dbg !336
  %73 = and i8 %72, 2, !dbg !336
  %74 = icmp eq i8 %73, 0, !dbg !337
  br i1 %74, label %75, label %91, !dbg !338

; <label>:75                                      ; preds = %71
  %76 = getelementptr inbounds %struct._obstack_chunk* %2, i64 0, i32 1, !dbg !339
  %77 = bitcast %struct._obstack_chunk** %76 to i64*, !dbg !339
  %78 = load i64* %77, align 8, !dbg !339, !tbaa !212
  %79 = bitcast %struct._obstack_chunk** %37 to i64*, !dbg !341
  store i64 %78, i64* %79, align 8, !dbg !341, !tbaa !212
  %80 = load i8* %18, align 8, !dbg !342
  %81 = and i8 %80, 1, !dbg !342
  %82 = icmp eq i8 %81, 0, !dbg !342
  %83 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 8, !dbg !342
  %84 = load void (i8*, %struct._obstack_chunk*)** %83, align 8, !dbg !342, !tbaa !172
  br i1 %82, label %88, label %85, !dbg !345

; <label>:85                                      ; preds = %75
  %86 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 9, !dbg !342
  %87 = load i8** %86, align 8, !dbg !342, !tbaa !238
  tail call void %84(i8* %87, %struct._obstack_chunk* %2) #6, !dbg !342
  br label %91, !dbg !342

; <label>:88                                      ; preds = %75
  %89 = bitcast void (i8*, %struct._obstack_chunk*)* %84 to void (i8*)*, !dbg !342
  %90 = bitcast %struct._obstack_chunk* %2 to i8*, !dbg !342
  tail call void %89(i8* %90) #6, !dbg !342
  br label %91

; <label>:91                                      ; preds = %71, %88, %85, %._crit_edge
  %92 = getelementptr inbounds %struct._obstack_chunk* %32, i64 0, i32 2, i64 0, !dbg !346
  store i8* %92, i8** %5, align 8, !dbg !347, !tbaa !196
  %93 = getelementptr inbounds %struct._obstack_chunk* %32, i64 0, i32 2, i64 %9, !dbg !348
  store i8* %93, i8** %3, align 8, !dbg !349, !tbaa !199
  %94 = load i8* %18, align 8, !dbg !350
  %95 = and i8 %94, -3, !dbg !350
  store i8 %95, i8* %18, align 8, !dbg !350
  ret void, !dbg !351
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly %h, i8* readnone %obj) #2 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !108, metadata !155), !dbg !352
  tail call void @llvm.dbg.value(metadata i8* %obj, i64 0, metadata !109, metadata !155), !dbg !353
  %1 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !354
  %lp.02 = load %struct._obstack_chunk** %1, align 8, !dbg !354
  %2 = icmp eq %struct._obstack_chunk* %lp.02, null, !dbg !355
  br i1 %2, label %.critedge, label %.lr.ph, !dbg !356

.lr.ph:                                           ; preds = %0, %.critedge1
  %lp.03 = phi %struct._obstack_chunk* [ %lp.0, %.critedge1 ], [ %lp.02, %0 ]
  %3 = bitcast %struct._obstack_chunk* %lp.03 to i8*, !dbg !357
  %4 = icmp ult i8* %3, %obj, !dbg !358
  br i1 %4, label %5, label %.critedge1, !dbg !359

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct._obstack_chunk* %lp.03, i64 0, i32 0, !dbg !360
  %7 = load i8** %6, align 8, !dbg !360, !tbaa !205
  %8 = icmp ult i8* %7, %obj, !dbg !361
  br i1 %8, label %.critedge1, label %.critedge, !dbg !362

.critedge1:                                       ; preds = %.lr.ph, %5
  %9 = getelementptr inbounds %struct._obstack_chunk* %lp.03, i64 0, i32 1, !dbg !363
  %lp.0 = load %struct._obstack_chunk** %9, align 8, !dbg !354
  %10 = icmp eq %struct._obstack_chunk* %lp.0, null, !dbg !355
  br i1 %10, label %.critedge, label %.lr.ph, !dbg !356

.critedge:                                        ; preds = %5, %.critedge1, %0
  %.lcssa = phi i32 [ 0, %0 ], [ 1, %5 ], [ 0, %.critedge1 ]
  ret i32 %.lcssa, !dbg !365
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_obstack_free(%struct.obstack* nocapture %h, i8* %obj) #1 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !116, metadata !155), !dbg !366
  tail call void @llvm.dbg.value(metadata i8* %obj, i64 0, metadata !117, metadata !155), !dbg !367
  %1 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !368
  %2 = load %struct._obstack_chunk** %1, align 8, !dbg !368, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %2, i64 0, metadata !118, metadata !155), !dbg !369
  %3 = icmp eq %struct._obstack_chunk* %2, null, !dbg !370
  br i1 %3, label %.critedge2, label %.lr.ph, !dbg !371

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 10, !dbg !372
  %5 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 8, !dbg !372
  %6 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 9, !dbg !372
  br label %7, !dbg !371

; <label>:7                                       ; preds = %.lr.ph, %24
  %lp.04 = phi %struct._obstack_chunk* [ %2, %.lr.ph ], [ %15, %24 ]
  %8 = bitcast %struct._obstack_chunk* %lp.04 to i8*, !dbg !376
  %9 = icmp ult i8* %8, %obj, !dbg !377
  br i1 %9, label %10, label %.critedge1, !dbg !378

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %struct._obstack_chunk* %lp.04, i64 0, i32 0, !dbg !379
  %12 = load i8** %11, align 8, !dbg !379, !tbaa !205
  %13 = icmp ult i8* %12, %obj, !dbg !380
  br i1 %13, label %.critedge1, label %.critedge, !dbg !381

.critedge1:                                       ; preds = %7, %10
  %14 = getelementptr inbounds %struct._obstack_chunk* %lp.04, i64 0, i32 1, !dbg !382
  %15 = load %struct._obstack_chunk** %14, align 8, !dbg !382, !tbaa !212
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !119, metadata !155), !dbg !383
  %16 = load i8* %4, align 8, !dbg !372
  %17 = and i8 %16, 1, !dbg !372
  %18 = icmp eq i8 %17, 0, !dbg !372
  %19 = load void (i8*, %struct._obstack_chunk*)** %5, align 8, !dbg !372, !tbaa !172
  br i1 %18, label %22, label %20, !dbg !384

; <label>:20                                      ; preds = %.critedge1
  %21 = load i8** %6, align 8, !dbg !372, !tbaa !238
  tail call void %19(i8* %21, %struct._obstack_chunk* %lp.04) #6, !dbg !372
  br label %24, !dbg !372

; <label>:22                                      ; preds = %.critedge1
  %23 = bitcast void (i8*, %struct._obstack_chunk*)* %19 to void (i8*)*, !dbg !372
  tail call void %23(i8* %8) #6, !dbg !372
  br label %24

; <label>:24                                      ; preds = %20, %22
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !118, metadata !155), !dbg !369
  %25 = load i8* %4, align 8, !dbg !385
  %26 = or i8 %25, 2, !dbg !385
  store i8 %26, i8* %4, align 8, !dbg !385
  %27 = icmp eq %struct._obstack_chunk* %15, null, !dbg !370
  br i1 %27, label %.critedge2, label %7, !dbg !371

.critedge:                                        ; preds = %10
  %28 = ptrtoint i8* %12 to i64
  %29 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 3, !dbg !386
  store i8* %obj, i8** %29, align 8, !dbg !389, !tbaa !199
  %30 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 2, !dbg !390
  store i8* %obj, i8** %30, align 8, !dbg !391, !tbaa !196
  %31 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 4, !dbg !392
  %32 = bitcast i8** %31 to i64*, !dbg !393
  store i64 %28, i64* %32, align 8, !dbg !393, !tbaa !209
  store %struct._obstack_chunk* %lp.04, %struct._obstack_chunk** %1, align 8, !dbg !394, !tbaa !186
  br label %35, !dbg !395

.critedge2:                                       ; preds = %24, %0
  %33 = icmp eq i8* %obj, null, !dbg !396
  br i1 %33, label %35, label %34, !dbg !398

; <label>:34                                      ; preds = %.critedge2
  tail call void @abort() #7, !dbg !399
  unreachable, !dbg !399

; <label>:35                                      ; preds = %.critedge2, %.critedge
  ret void, !dbg !400
}

; Function Attrs: noreturn optsize
declare void @abort() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @obstack_free(%struct.obstack* nocapture %h, i8* %obj) #1 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !122, metadata !155), !dbg !401
  tail call void @llvm.dbg.value(metadata i8* %obj, i64 0, metadata !123, metadata !155), !dbg !402
  %1 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !403
  %2 = load %struct._obstack_chunk** %1, align 8, !dbg !403, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %2, i64 0, metadata !124, metadata !155), !dbg !404
  %3 = icmp eq %struct._obstack_chunk* %2, null, !dbg !405
  br i1 %3, label %.critedge2, label %.lr.ph, !dbg !406

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 10, !dbg !407
  %5 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 8, !dbg !407
  %6 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 9, !dbg !407
  br label %7, !dbg !406

; <label>:7                                       ; preds = %.lr.ph, %24
  %lp.04 = phi %struct._obstack_chunk* [ %2, %.lr.ph ], [ %15, %24 ]
  %8 = bitcast %struct._obstack_chunk* %lp.04 to i8*, !dbg !411
  %9 = icmp ult i8* %8, %obj, !dbg !412
  br i1 %9, label %10, label %.critedge1, !dbg !413

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %struct._obstack_chunk* %lp.04, i64 0, i32 0, !dbg !414
  %12 = load i8** %11, align 8, !dbg !414, !tbaa !205
  %13 = icmp ult i8* %12, %obj, !dbg !415
  br i1 %13, label %.critedge1, label %.critedge, !dbg !416

.critedge1:                                       ; preds = %7, %10
  %14 = getelementptr inbounds %struct._obstack_chunk* %lp.04, i64 0, i32 1, !dbg !417
  %15 = load %struct._obstack_chunk** %14, align 8, !dbg !417, !tbaa !212
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !125, metadata !155), !dbg !418
  %16 = load i8* %4, align 8, !dbg !407
  %17 = and i8 %16, 1, !dbg !407
  %18 = icmp eq i8 %17, 0, !dbg !407
  %19 = load void (i8*, %struct._obstack_chunk*)** %5, align 8, !dbg !407, !tbaa !172
  br i1 %18, label %22, label %20, !dbg !419

; <label>:20                                      ; preds = %.critedge1
  %21 = load i8** %6, align 8, !dbg !407, !tbaa !238
  tail call void %19(i8* %21, %struct._obstack_chunk* %lp.04) #6, !dbg !407
  br label %24, !dbg !407

; <label>:22                                      ; preds = %.critedge1
  %23 = bitcast void (i8*, %struct._obstack_chunk*)* %19 to void (i8*)*, !dbg !407
  tail call void %23(i8* %8) #6, !dbg !407
  br label %24

; <label>:24                                      ; preds = %20, %22
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !124, metadata !155), !dbg !404
  %25 = load i8* %4, align 8, !dbg !420
  %26 = or i8 %25, 2, !dbg !420
  store i8 %26, i8* %4, align 8, !dbg !420
  %27 = icmp eq %struct._obstack_chunk* %15, null, !dbg !405
  br i1 %27, label %.critedge2, label %7, !dbg !406

.critedge:                                        ; preds = %10
  %28 = ptrtoint i8* %12 to i64
  %29 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 3, !dbg !421
  store i8* %obj, i8** %29, align 8, !dbg !424, !tbaa !199
  %30 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 2, !dbg !425
  store i8* %obj, i8** %30, align 8, !dbg !426, !tbaa !196
  %31 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 4, !dbg !427
  %32 = bitcast i8** %31 to i64*, !dbg !428
  store i64 %28, i64* %32, align 8, !dbg !428, !tbaa !209
  store %struct._obstack_chunk* %lp.04, %struct._obstack_chunk** %1, align 8, !dbg !429, !tbaa !186
  br label %35, !dbg !430

.critedge2:                                       ; preds = %24, %0
  %33 = icmp eq i8* %obj, null, !dbg !431
  br i1 %33, label %35, label %34, !dbg !433

; <label>:34                                      ; preds = %.critedge2
  tail call void @abort() #7, !dbg !434
  unreachable, !dbg !434

; <label>:35                                      ; preds = %.critedge2, %.critedge
  ret void, !dbg !435
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @_obstack_memory_used(%struct.obstack* nocapture readonly %h) #2 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %h, i64 0, metadata !130, metadata !155), !dbg !436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !155), !dbg !437
  %1 = getelementptr inbounds %struct.obstack* %h, i64 0, i32 1, !dbg !438
  %lp.01 = load %struct._obstack_chunk** %1, align 8, !dbg !438
  %2 = icmp eq %struct._obstack_chunk* %lp.01, null, !dbg !440
  br i1 %2, label %13, label %.lr.ph, !dbg !442

.lr.ph:                                           ; preds = %0, %.lr.ph
  %lp.03 = phi %struct._obstack_chunk* [ %lp.0, %.lr.ph ], [ %lp.01, %0 ]
  %nbytes.02 = phi i64 [ %9, %.lr.ph ], [ 0, %0 ]
  %3 = getelementptr inbounds %struct._obstack_chunk* %lp.03, i64 0, i32 0, !dbg !443
  %4 = load i8** %3, align 8, !dbg !443, !tbaa !205
  %5 = ptrtoint i8* %4 to i64, !dbg !445
  %6 = ptrtoint %struct._obstack_chunk* %lp.03 to i64, !dbg !445
  %7 = and i64 %nbytes.02, 4294967295, !dbg !446
  %8 = sub i64 %7, %6, !dbg !445
  %9 = add i64 %8, %5, !dbg !446
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !132, metadata !155), !dbg !437
  %10 = getelementptr inbounds %struct._obstack_chunk* %lp.03, i64 0, i32 1, !dbg !447
  %lp.0 = load %struct._obstack_chunk** %10, align 8, !dbg !438
  %11 = icmp eq %struct._obstack_chunk* %lp.0, null, !dbg !440
  br i1 %11, label %._crit_edge, label %.lr.ph, !dbg !442

._crit_edge:                                      ; preds = %.lr.ph
  %12 = trunc i64 %9 to i32, !dbg !446
  br label %13, !dbg !442

; <label>:13                                      ; preds = %._crit_edge, %0
  %nbytes.0.lcssa = phi i32 [ %12, %._crit_edge ], [ 0, %0 ]
  ret i32 %nbytes.0.lcssa, !dbg !448
}

; Function Attrs: optsize
declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #4

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!141, !142, !143}
!llvm.ident = !{!144}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !38, globals: !136, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/obstack.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !8, !14, !28, !31, !34, !35, !27}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "fooalign", file: !1, line: 60, size: 128, align: 64, elements: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !9, file: !1, line: 60, baseType: !7, size: 8, align: 8)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !9, file: !1, line: 60, baseType: !13, size: 64, align: 64, offset: 64)
!13 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !27, !5}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !19, line: 161, size: 192, align: 64, elements: !20)
!19 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/obstack.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !{!21, !22, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !18, file: !19, line: 163, baseType: !6, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !18, file: !19, line: 164, baseType: !17, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !18, file: !19, line: 165, baseType: !24, size: 32, align: 8, offset: 128)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, align: 8, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 4)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !27, !17}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!17, !5}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !27}
!38 = !{!39, !72, !92, !104, !112, !120, !126, !133}
!39 = !DISubprogram(name: "_obstack_begin", scope: !1, file: !1, line: 149, type: !40, isLocal: false, isDefinition: true, scopeLine: 160, isOptimized: true, function: i32 (%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*)* @_obstack_begin, variables: !62)
!40 = !DISubroutineType(types: !41)
!41 = !{!4, !42, !4, !4, !59, !35}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !19, line: 168, size: 704, align: 64, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !43, file: !19, line: 170, baseType: !5, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !43, file: !19, line: 171, baseType: !17, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !43, file: !19, line: 172, baseType: !6, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !43, file: !19, line: 173, baseType: !6, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !43, file: !19, line: 174, baseType: !6, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !43, file: !19, line: 175, baseType: !5, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !43, file: !19, line: 176, baseType: !4, size: 32, align: 32, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !43, file: !19, line: 181, baseType: !14, size: 64, align: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !43, file: !19, line: 182, baseType: !28, size: 64, align: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !43, file: !19, line: 183, baseType: !27, size: 64, align: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !43, file: !19, line: 189, baseType: !56, size: 1, align: 32, offset: 640)
!56 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !43, file: !19, line: 190, baseType: !56, size: 1, align: 32, offset: 641)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !43, file: !19, line: 194, baseType: !56, size: 1, align: 32, offset: 642)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!27, !5}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !39, file: !1, line: 150, type: !42)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !39, file: !1, line: 151, type: !4)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alignment", arg: 3, scope: !39, file: !1, line: 152, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chunkfun", arg: 4, scope: !39, file: !1, line: 154, type: !59)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freefun", arg: 5, scope: !39, file: !1, line: 155, type: !35)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunk", scope: !39, file: !1, line: 161, type: !17)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "extra", scope: !70, file: !1, line: 176, type: !4)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 167, column: 5)
!71 = distinct !DILexicalBlock(scope: !39, file: !1, line: 165, column: 7)
!72 = !DISubprogram(name: "_obstack_begin_1", scope: !1, file: !1, line: 207, type: !73, isLocal: false, isDefinition: true, scopeLine: 219, isOptimized: true, function: i32 (%struct.obstack*, i32, i32, i8* (i8*, i64)*, void (i8*, i8*)*, i8*)* @_obstack_begin_1, variables: !81)
!73 = !DISubroutineType(types: !74)
!74 = !{!4, !42, !4, !4, !75, !78, !27}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!27, !27, !5}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !27, !27}
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !72, file: !1, line: 208, type: !42)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !72, file: !1, line: 209, type: !4)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alignment", arg: 3, scope: !72, file: !1, line: 210, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chunkfun", arg: 4, scope: !72, file: !1, line: 212, type: !75)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freefun", arg: 5, scope: !72, file: !1, line: 213, type: !78)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 6, scope: !72, file: !1, line: 218, type: !27)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunk", scope: !72, file: !1, line: 220, type: !17)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "extra", scope: !90, file: !1, line: 235, type: !4)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 226, column: 5)
!91 = distinct !DILexicalBlock(scope: !72, file: !1, line: 224, column: 7)
!92 = !DISubprogram(name: "_obstack_newchunk", scope: !1, file: !1, line: 273, type: !93, isLocal: false, isDefinition: true, scopeLine: 276, isOptimized: true, function: void (%struct.obstack*, i32)* @_obstack_newchunk, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !42, !4}
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !92, file: !1, line: 274, type: !42)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !92, file: !1, line: 275, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_chunk", scope: !92, file: !1, line: 277, type: !17)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_chunk", scope: !92, file: !1, line: 278, type: !17)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !92, file: !1, line: 279, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj_size", scope: !92, file: !1, line: 280, type: !5)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !92, file: !1, line: 281, type: !5)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "already", scope: !92, file: !1, line: 282, type: !5)
!104 = !DISubprogram(name: "_obstack_allocated_p", scope: !1, file: !1, line: 343, type: !105, isLocal: false, isDefinition: true, scopeLine: 346, isOptimized: true, function: i32 (%struct.obstack*, i8*)* @_obstack_allocated_p, variables: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!4, !42, !27}
!107 = !{!108, !109, !110, !111}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !104, file: !1, line: 344, type: !42)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !104, file: !1, line: 345, type: !27)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lp", scope: !104, file: !1, line: 347, type: !17)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "plp", scope: !104, file: !1, line: 348, type: !17)
!112 = !DISubprogram(name: "_obstack_free", scope: !1, file: !1, line: 371, type: !113, isLocal: false, isDefinition: true, scopeLine: 374, isOptimized: true, function: void (%struct.obstack*, i8*)* @_obstack_free, variables: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !42, !27}
!115 = !{!116, !117, !118, !119}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !112, file: !1, line: 372, type: !42)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !112, file: !1, line: 373, type: !27)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lp", scope: !112, file: !1, line: 375, type: !17)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "plp", scope: !112, file: !1, line: 376, type: !17)
!120 = !DISubprogram(name: "obstack_free", scope: !1, file: !1, line: 405, type: !113, isLocal: false, isDefinition: true, scopeLine: 408, isOptimized: true, function: void (%struct.obstack*, i8*)* @obstack_free, variables: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !120, file: !1, line: 406, type: !42)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !120, file: !1, line: 407, type: !27)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lp", scope: !120, file: !1, line: 409, type: !17)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "plp", scope: !120, file: !1, line: 410, type: !17)
!126 = !DISubprogram(name: "_obstack_memory_used", scope: !1, file: !1, line: 437, type: !127, isLocal: false, isDefinition: true, scopeLine: 439, isOptimized: true, function: i32 (%struct.obstack*)* @_obstack_memory_used, variables: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!4, !42}
!129 = !{!130, !131, !132}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 1, scope: !126, file: !1, line: 438, type: !42)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lp", scope: !126, file: !1, line: 440, type: !17)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !126, file: !1, line: 441, type: !4)
!133 = !DISubprogram(name: "print_and_abort", scope: !1, file: !1, line: 463, type: !134, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @print_and_abort, variables: !2)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !{!137, !139, !140}
!137 = !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !0, file: !1, line: 84, type: !138, isLocal: false, isDefinition: true, variable: void ()** @obstack_alloc_failed_handler)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!139 = !DIGlobalVariable(name: "obstack_exit_failure", scope: !0, file: !1, line: 97, type: !4, isLocal: false, isDefinition: true, variable: i32* @obstack_exit_failure)
!140 = !DIGlobalVariable(name: "_obstack", scope: !0, file: !1, line: 102, type: !42, isLocal: false, isDefinition: true, variable: %struct.obstack** @_obstack)
!141 = !{i32 2, !"Dwarf Version", i32 2}
!142 = !{i32 2, !"Debug Info Version", i32 700000003}
!143 = !{i32 1, !"PIC Level", i32 2}
!144 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!145 = !DILocation(line: 465, column: 35, scope: !133)
!146 = !{!147, !147, i64 0}
!147 = !{!"any pointer", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C/C++ TBAA"}
!150 = !DILocation(line: 465, column: 3, scope: !133)
!151 = !DILocation(line: 466, column: 9, scope: !133)
!152 = !{!153, !153, i64 0}
!153 = !{!"int", !148, i64 0}
!154 = !DILocation(line: 466, column: 3, scope: !133)
!155 = !DIExpression()
!156 = !DILocation(line: 150, column: 22, scope: !39)
!157 = !DILocation(line: 151, column: 10, scope: !39)
!158 = !DILocation(line: 152, column: 10, scope: !39)
!159 = !DILocation(line: 154, column: 16, scope: !39)
!160 = !DILocation(line: 155, column: 13, scope: !39)
!161 = !DILocation(line: 163, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !39, file: !1, line: 163, column: 7)
!163 = !DILocation(line: 165, column: 12, scope: !71)
!164 = !DILocation(line: 176, column: 11, scope: !70)
!165 = !DILocation(line: 183, column: 6, scope: !39)
!166 = !DILocation(line: 183, column: 15, scope: !39)
!167 = !{!168, !147, i64 56}
!168 = !{!"obstack", !169, i64 0, !147, i64 8, !147, i64 16, !147, i64 24, !147, i64 32, !169, i64 40, !153, i64 48, !147, i64 56, !147, i64 64, !147, i64 72, !153, i64 80, !153, i64 80, !153, i64 80}
!169 = !{!"long", !148, i64 0}
!170 = !DILocation(line: 184, column: 6, scope: !39)
!171 = !DILocation(line: 184, column: 14, scope: !39)
!172 = !{!168, !147, i64 64}
!173 = !DILocation(line: 189, column: 19, scope: !39)
!174 = !DILocation(line: 189, column: 6, scope: !39)
!175 = !DILocation(line: 189, column: 17, scope: !39)
!176 = !{!168, !169, i64 0}
!177 = !DILocation(line: 190, column: 33, scope: !39)
!178 = !DILocation(line: 190, column: 6, scope: !39)
!179 = !DILocation(line: 190, column: 21, scope: !39)
!180 = !{!168, !153, i64 48}
!181 = !DILocation(line: 191, column: 6, scope: !39)
!182 = !DILocation(line: 191, column: 20, scope: !39)
!183 = !DILocation(line: 193, column: 22, scope: !39)
!184 = !DILocation(line: 193, column: 14, scope: !39)
!185 = !DILocation(line: 193, column: 20, scope: !39)
!186 = !{!168, !147, i64 8}
!187 = !DILocation(line: 161, column: 35, scope: !39)
!188 = !DILocation(line: 194, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !39, file: !1, line: 194, column: 7)
!190 = !DILocation(line: 194, column: 7, scope: !39)
!191 = !DILocation(line: 195, column: 7, scope: !189)
!192 = !DILocation(line: 195, column: 5, scope: !189)
!193 = !DILocation(line: 196, column: 35, scope: !39)
!194 = !DILocation(line: 196, column: 21, scope: !39)
!195 = !DILocation(line: 196, column: 33, scope: !39)
!196 = !{!168, !147, i64 16}
!197 = !DILocation(line: 196, column: 6, scope: !39)
!198 = !DILocation(line: 196, column: 16, scope: !39)
!199 = !{!168, !147, i64 24}
!200 = !DILocation(line: 198, column: 7, scope: !39)
!201 = !DILocation(line: 198, column: 27, scope: !39)
!202 = !DILocation(line: 198, column: 22, scope: !39)
!203 = !DILocation(line: 197, column: 27, scope: !39)
!204 = !DILocation(line: 198, column: 5, scope: !39)
!205 = !{!206, !147, i64 0}
!206 = !{!"_obstack_chunk", !147, i64 0, !147, i64 8, !148, i64 16}
!207 = !DILocation(line: 197, column: 6, scope: !39)
!208 = !DILocation(line: 197, column: 18, scope: !39)
!209 = !{!168, !147, i64 32}
!210 = !DILocation(line: 199, column: 10, scope: !39)
!211 = !DILocation(line: 199, column: 15, scope: !39)
!212 = !{!206, !147, i64 8}
!213 = !DILocation(line: 201, column: 25, scope: !39)
!214 = !DILocation(line: 202, column: 19, scope: !39)
!215 = !DILocation(line: 203, column: 3, scope: !39)
!216 = !DILocation(line: 208, column: 22, scope: !72)
!217 = !DILocation(line: 209, column: 10, scope: !72)
!218 = !DILocation(line: 210, column: 10, scope: !72)
!219 = !DILocation(line: 212, column: 16, scope: !72)
!220 = !DILocation(line: 213, column: 13, scope: !72)
!221 = !DILocation(line: 218, column: 14, scope: !72)
!222 = !DILocation(line: 222, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !72, file: !1, line: 222, column: 7)
!224 = !DILocation(line: 224, column: 12, scope: !91)
!225 = !DILocation(line: 235, column: 11, scope: !90)
!226 = !DILocation(line: 242, column: 6, scope: !72)
!227 = !DILocation(line: 242, column: 15, scope: !72)
!228 = !DILocation(line: 243, column: 6, scope: !72)
!229 = !DILocation(line: 243, column: 14, scope: !72)
!230 = !DILocation(line: 248, column: 19, scope: !72)
!231 = !DILocation(line: 248, column: 6, scope: !72)
!232 = !DILocation(line: 248, column: 17, scope: !72)
!233 = !DILocation(line: 249, column: 33, scope: !72)
!234 = !DILocation(line: 249, column: 6, scope: !72)
!235 = !DILocation(line: 249, column: 21, scope: !72)
!236 = !DILocation(line: 250, column: 6, scope: !72)
!237 = !DILocation(line: 250, column: 16, scope: !72)
!238 = !{!168, !147, i64 72}
!239 = !DILocation(line: 251, column: 6, scope: !72)
!240 = !DILocation(line: 251, column: 20, scope: !72)
!241 = !DILocation(line: 253, column: 22, scope: !72)
!242 = !DILocation(line: 253, column: 14, scope: !72)
!243 = !DILocation(line: 253, column: 20, scope: !72)
!244 = !DILocation(line: 220, column: 35, scope: !72)
!245 = !DILocation(line: 254, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !72, file: !1, line: 254, column: 7)
!247 = !DILocation(line: 254, column: 7, scope: !72)
!248 = !DILocation(line: 255, column: 7, scope: !246)
!249 = !DILocation(line: 255, column: 5, scope: !246)
!250 = !DILocation(line: 256, column: 35, scope: !72)
!251 = !DILocation(line: 256, column: 21, scope: !72)
!252 = !DILocation(line: 256, column: 33, scope: !72)
!253 = !DILocation(line: 256, column: 6, scope: !72)
!254 = !DILocation(line: 256, column: 16, scope: !72)
!255 = !DILocation(line: 258, column: 7, scope: !72)
!256 = !DILocation(line: 258, column: 27, scope: !72)
!257 = !DILocation(line: 258, column: 22, scope: !72)
!258 = !DILocation(line: 257, column: 27, scope: !72)
!259 = !DILocation(line: 258, column: 5, scope: !72)
!260 = !DILocation(line: 257, column: 6, scope: !72)
!261 = !DILocation(line: 257, column: 18, scope: !72)
!262 = !DILocation(line: 259, column: 10, scope: !72)
!263 = !DILocation(line: 259, column: 15, scope: !72)
!264 = !DILocation(line: 261, column: 25, scope: !72)
!265 = !DILocation(line: 262, column: 19, scope: !72)
!266 = !DILocation(line: 263, column: 3, scope: !72)
!267 = !DILocation(line: 274, column: 22, scope: !92)
!268 = !DILocation(line: 275, column: 10, scope: !92)
!269 = !DILocation(line: 277, column: 50, scope: !92)
!270 = !DILocation(line: 277, column: 35, scope: !92)
!271 = !DILocation(line: 280, column: 31, scope: !92)
!272 = !DILocation(line: 280, column: 46, scope: !92)
!273 = !DILocation(line: 280, column: 41, scope: !92)
!274 = !DILocation(line: 280, column: 17, scope: !92)
!275 = !DILocation(line: 285, column: 26, scope: !92)
!276 = !DILocation(line: 285, column: 46, scope: !92)
!277 = !DILocation(line: 285, column: 24, scope: !92)
!278 = !DILocation(line: 285, column: 34, scope: !92)
!279 = !DILocation(line: 285, column: 52, scope: !92)
!280 = !DILocation(line: 279, column: 17, scope: !92)
!281 = !DILocation(line: 286, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !92, file: !1, line: 286, column: 7)
!283 = !DILocation(line: 286, column: 16, scope: !282)
!284 = !DILocation(line: 286, column: 7, scope: !92)
!285 = !DILocation(line: 290, column: 15, scope: !92)
!286 = !DILocation(line: 278, column: 35, scope: !92)
!287 = !DILocation(line: 291, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !92, file: !1, line: 291, column: 7)
!289 = !DILocation(line: 291, column: 7, scope: !92)
!290 = !DILocation(line: 292, column: 7, scope: !288)
!291 = !DILocation(line: 292, column: 5, scope: !288)
!292 = !DILocation(line: 293, column: 12, scope: !92)
!293 = !DILocation(line: 294, column: 14, scope: !92)
!294 = !DILocation(line: 294, column: 19, scope: !92)
!295 = !DILocation(line: 295, column: 39, scope: !92)
!296 = !DILocation(line: 295, column: 58, scope: !92)
!297 = !DILocation(line: 295, column: 25, scope: !92)
!298 = !DILocation(line: 295, column: 37, scope: !92)
!299 = !DILocation(line: 295, column: 14, scope: !92)
!300 = !DILocation(line: 295, column: 20, scope: !92)
!301 = !DILocation(line: 300, column: 10, scope: !302)
!302 = distinct !DILexicalBlock(scope: !92, file: !1, line: 300, column: 7)
!303 = !DILocation(line: 300, column: 29, scope: !302)
!304 = !DILocation(line: 300, column: 7, scope: !92)
!305 = !DILocation(line: 302, column: 25, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 302, column: 7)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 301, column: 5)
!308 = !DILocation(line: 303, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 302, column: 7)
!310 = !DILocation(line: 302, column: 7, scope: !306)
!311 = !DILocation(line: 305, column: 26, scope: !309)
!312 = !DILocation(line: 304, column: 19, scope: !309)
!313 = !DILocation(line: 304, column: 3, scope: !309)
!314 = !DILocation(line: 302, column: 49, scope: !306)
!315 = !DILocation(line: 305, column: 6, scope: !309)
!316 = !DILocation(line: 304, column: 2, scope: !309)
!317 = !DILocation(line: 305, column: 4, scope: !309)
!318 = !DILocation(line: 309, column: 50, scope: !307)
!319 = !DILocation(line: 282, column: 8, scope: !92)
!320 = !DILocation(line: 310, column: 5, scope: !307)
!321 = !DILocation(line: 314, column: 23, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 314, column: 3)
!323 = distinct !DILexicalBlock(scope: !92, file: !1, line: 314, column: 3)
!324 = !DILocation(line: 315, column: 33, scope: !322)
!325 = !DILocation(line: 314, column: 3, scope: !323)
!326 = !DILocation(line: 315, column: 30, scope: !322)
!327 = !{!148, !148, i64 0}
!328 = !DILocation(line: 315, column: 5, scope: !322)
!329 = !DILocation(line: 315, column: 28, scope: !322)
!330 = !DILocation(line: 314, column: 36, scope: !322)
!331 = !DILocation(line: 281, column: 17, scope: !92)
!332 = !DILocation(line: 320, column: 25, scope: !333)
!333 = distinct !DILexicalBlock(scope: !92, file: !1, line: 320, column: 7)
!334 = !DILocation(line: 320, column: 22, scope: !333)
!335 = !DILocation(line: 320, column: 45, scope: !333)
!336 = !DILocation(line: 320, column: 53, scope: !333)
!337 = !DILocation(line: 320, column: 50, scope: !333)
!338 = !DILocation(line: 320, column: 7, scope: !92)
!339 = !DILocation(line: 322, column: 36, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !1, line: 321, column: 5)
!341 = !DILocation(line: 322, column: 23, scope: !340)
!342 = !DILocation(line: 323, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 323, column: 7)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 323, column: 7)
!345 = !DILocation(line: 323, column: 7, scope: !344)
!346 = !DILocation(line: 326, column: 20, scope: !92)
!347 = !DILocation(line: 326, column: 18, scope: !92)
!348 = !DILocation(line: 327, column: 33, scope: !92)
!349 = !DILocation(line: 327, column: 16, scope: !92)
!350 = !DILocation(line: 329, column: 25, scope: !92)
!351 = !DILocation(line: 330, column: 1, scope: !92)
!352 = !DILocation(line: 344, column: 22, scope: !104)
!353 = !DILocation(line: 345, column: 14, scope: !104)
!354 = !DILocation(line: 350, column: 13, scope: !104)
!355 = !DILocation(line: 354, column: 13, scope: !104)
!356 = !DILocation(line: 354, column: 18, scope: !104)
!357 = !DILocation(line: 354, column: 22, scope: !104)
!358 = !DILocation(line: 354, column: 35, scope: !104)
!359 = !DILocation(line: 354, column: 42, scope: !104)
!360 = !DILocation(line: 354, column: 61, scope: !104)
!361 = !DILocation(line: 354, column: 67, scope: !104)
!362 = !DILocation(line: 354, column: 3, scope: !104)
!363 = !DILocation(line: 356, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !104, file: !1, line: 355, column: 5)
!365 = !DILocation(line: 359, column: 3, scope: !104)
!366 = !DILocation(line: 372, column: 22, scope: !112)
!367 = !DILocation(line: 373, column: 14, scope: !112)
!368 = !DILocation(line: 378, column: 11, scope: !112)
!369 = !DILocation(line: 375, column: 35, scope: !112)
!370 = !DILocation(line: 382, column: 13, scope: !112)
!371 = !DILocation(line: 382, column: 18, scope: !112)
!372 = !DILocation(line: 385, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 385, column: 7)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 385, column: 7)
!375 = distinct !DILexicalBlock(scope: !112, file: !1, line: 383, column: 5)
!376 = !DILocation(line: 382, column: 22, scope: !112)
!377 = !DILocation(line: 382, column: 35, scope: !112)
!378 = !DILocation(line: 382, column: 42, scope: !112)
!379 = !DILocation(line: 382, column: 61, scope: !112)
!380 = !DILocation(line: 382, column: 67, scope: !112)
!381 = !DILocation(line: 382, column: 3, scope: !112)
!382 = !DILocation(line: 384, column: 17, scope: !375)
!383 = !DILocation(line: 376, column: 35, scope: !112)
!384 = !DILocation(line: 385, column: 7, scope: !374)
!385 = !DILocation(line: 389, column: 29, scope: !375)
!386 = !DILocation(line: 393, column: 27, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 392, column: 5)
!388 = distinct !DILexicalBlock(scope: !112, file: !1, line: 391, column: 7)
!389 = !DILocation(line: 393, column: 37, scope: !387)
!390 = !DILocation(line: 393, column: 10, scope: !387)
!391 = !DILocation(line: 393, column: 22, scope: !387)
!392 = !DILocation(line: 394, column: 10, scope: !387)
!393 = !DILocation(line: 394, column: 22, scope: !387)
!394 = !DILocation(line: 395, column: 16, scope: !387)
!395 = !DILocation(line: 396, column: 5, scope: !387)
!396 = !DILocation(line: 397, column: 16, scope: !397)
!397 = distinct !DILexicalBlock(scope: !388, file: !1, line: 397, column: 12)
!398 = !DILocation(line: 397, column: 12, scope: !388)
!399 = !DILocation(line: 399, column: 5, scope: !397)
!400 = !DILocation(line: 400, column: 1, scope: !112)
!401 = !DILocation(line: 406, column: 22, scope: !120)
!402 = !DILocation(line: 407, column: 14, scope: !120)
!403 = !DILocation(line: 412, column: 11, scope: !120)
!404 = !DILocation(line: 409, column: 35, scope: !120)
!405 = !DILocation(line: 416, column: 13, scope: !120)
!406 = !DILocation(line: 416, column: 18, scope: !120)
!407 = !DILocation(line: 419, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 419, column: 7)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 419, column: 7)
!410 = distinct !DILexicalBlock(scope: !120, file: !1, line: 417, column: 5)
!411 = !DILocation(line: 416, column: 22, scope: !120)
!412 = !DILocation(line: 416, column: 35, scope: !120)
!413 = !DILocation(line: 416, column: 42, scope: !120)
!414 = !DILocation(line: 416, column: 61, scope: !120)
!415 = !DILocation(line: 416, column: 67, scope: !120)
!416 = !DILocation(line: 416, column: 3, scope: !120)
!417 = !DILocation(line: 418, column: 17, scope: !410)
!418 = !DILocation(line: 410, column: 35, scope: !120)
!419 = !DILocation(line: 419, column: 7, scope: !409)
!420 = !DILocation(line: 423, column: 29, scope: !410)
!421 = !DILocation(line: 427, column: 27, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 426, column: 5)
!423 = distinct !DILexicalBlock(scope: !120, file: !1, line: 425, column: 7)
!424 = !DILocation(line: 427, column: 37, scope: !422)
!425 = !DILocation(line: 427, column: 10, scope: !422)
!426 = !DILocation(line: 427, column: 22, scope: !422)
!427 = !DILocation(line: 428, column: 10, scope: !422)
!428 = !DILocation(line: 428, column: 22, scope: !422)
!429 = !DILocation(line: 429, column: 16, scope: !422)
!430 = !DILocation(line: 430, column: 5, scope: !422)
!431 = !DILocation(line: 431, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !423, file: !1, line: 431, column: 12)
!433 = !DILocation(line: 431, column: 12, scope: !423)
!434 = !DILocation(line: 433, column: 5, scope: !432)
!435 = !DILocation(line: 434, column: 1, scope: !120)
!436 = !DILocation(line: 438, column: 22, scope: !126)
!437 = !DILocation(line: 441, column: 16, scope: !126)
!438 = !DILocation(line: 443, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !126, file: !1, line: 443, column: 3)
!440 = !DILocation(line: 443, column: 26, scope: !441)
!441 = distinct !DILexicalBlock(scope: !439, file: !1, line: 443, column: 3)
!442 = !DILocation(line: 443, column: 3, scope: !439)
!443 = !DILocation(line: 445, column: 21, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !1, line: 444, column: 5)
!445 = !DILocation(line: 445, column: 27, scope: !444)
!446 = !DILocation(line: 445, column: 14, scope: !444)
!447 = !DILocation(line: 443, column: 41, scope: !441)
!448 = !DILocation(line: 447, column: 3, scope: !126)
