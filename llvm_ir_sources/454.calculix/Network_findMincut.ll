; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [68 x i8] c"\0A fatal error in Network_findMincutFromSource(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"\0A Network_findMincutFromSource\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"\0A checking out node %d\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"\0A    out-arc (%d,%d), flow %d, capacity %d\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c", adding %d to X\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"\0A    in-arc (%d,%d), flow %d\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"\0A leaving FindMincutFromSource\00", align 1
@.str7 = private unnamed_addr constant [66 x i8] c"\0A fatal error in Network_findMincutFromSink(%p,%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"\0A Network_findMincutFromSink\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_findMincutFromSource(%struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !123, metadata !153), !dbg !154
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !124, metadata !153), !dbg !155
  tail call void @llvm.dbg.value(metadata i32* %mark, i64 0, metadata !125, metadata !153), !dbg !156
  %1 = icmp eq %struct._Network* %network, null, !dbg !157
  br i1 %1, label %8, label %2, !dbg !159

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !160
  %4 = load i32* %3, align 4, !dbg !160, !tbaa !161
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !131, metadata !153), !dbg !167
  %5 = icmp slt i32 %4, 1, !dbg !168
  %6 = icmp eq %struct._Ideq* %deq, null, !dbg !169
  %or.cond = or i1 %6, %5, !dbg !170
  %7 = icmp eq i32* %mark, null, !dbg !171
  %or.cond3 = or i1 %7, %or.cond, !dbg !170
  br i1 %or.cond3, label %8, label %11, !dbg !170

; <label>:8                                       ; preds = %2, %0
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !172, !tbaa !174
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #6, !dbg !175
  tail call void @exit(i32 -1) #7, !dbg !176
  unreachable, !dbg !176

; <label>:11                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !153), !dbg !177
  %12 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !178
  %13 = load %struct._Arc*** %12, align 8, !dbg !178, !tbaa !179
  tail call void @llvm.dbg.value(metadata %struct._Arc** %13, i64 0, metadata !127, metadata !153), !dbg !180
  %14 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !181
  %15 = load %struct._Arc*** %14, align 8, !dbg !181, !tbaa !182
  tail call void @llvm.dbg.value(metadata %struct._Arc** %15, i64 0, metadata !128, metadata !153), !dbg !183
  %16 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !184
  %17 = load i32* %16, align 4, !dbg !184, !tbaa !185
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !130, metadata !153), !dbg !186
  %18 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !187
  %19 = load %struct.__sFILE** %18, align 8, !dbg !187, !tbaa !188
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %19, i64 0, metadata !129, metadata !153), !dbg !189
  %20 = icmp sgt i32 %17, 2, !dbg !190
  br i1 %20, label %21, label %24, !dbg !192

; <label>:21                                      ; preds = %11
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %19), !dbg !193
  %23 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !195
  br label %24, !dbg !196

; <label>:24                                      ; preds = %21, %11
  tail call void @IVfill(i32 %4, i32* %mark, i32 2) #6, !dbg !197
  store i32 1, i32* %mark, align 4, !dbg !198, !tbaa !199
  tail call void @Ideq_clear(%struct._Ideq* %deq) #6, !dbg !200
  %25 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 0) #6, !dbg !201
  %26 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !133, metadata !153), !dbg !203
  %27 = icmp eq i32 %26, -1, !dbg !204
  br i1 %27, label %._crit_edge14, label %.lr.ph13, !dbg !205

.loopexit:                                        ; preds = %87, %._crit_edge
  %28 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !133, metadata !153), !dbg !203
  %29 = icmp eq i32 %28, -1, !dbg !204
  br i1 %29, label %._crit_edge14, label %.lr.ph13, !dbg !205

.lr.ph13:                                         ; preds = %24, %.loopexit
  %30 = phi i32 [ %28, %.loopexit ], [ %26, %24 ]
  br i1 %20, label %31, label %34, !dbg !206

; <label>:31                                      ; preds = %.lr.ph13
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %30) #6, !dbg !208
  %33 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !211
  br label %34, !dbg !212

; <label>:34                                      ; preds = %31, %.lr.ph13
  %35 = sext i32 %30 to i64, !dbg !213
  %36 = getelementptr inbounds %struct._Arc** %15, i64 %35, !dbg !213
  %arc.04 = load %struct._Arc** %36, align 8, !dbg !213
  %37 = icmp eq %struct._Arc* %arc.04, null, !dbg !215
  br i1 %37, label %._crit_edge, label %.lr.ph, !dbg !217

.lr.ph:                                           ; preds = %34, %62
  %arc.05 = phi %struct._Arc* [ %arc.0, %62 ], [ %arc.04, %34 ]
  %38 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 1, !dbg !218
  %39 = load i32* %38, align 4, !dbg !218, !tbaa !220
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !134, metadata !153), !dbg !222
  %40 = sext i32 %39 to i64, !dbg !223
  %41 = getelementptr inbounds i32* %mark, i64 %40, !dbg !223
  %42 = load i32* %41, align 4, !dbg !223, !tbaa !199
  %43 = icmp eq i32 %42, 1, !dbg !225
  br i1 %43, label %62, label %44, !dbg !226

; <label>:44                                      ; preds = %.lr.ph
  %45 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 3, !dbg !227
  br i1 %20, label %46, label %._crit_edge15, !dbg !231

._crit_edge15:                                    ; preds = %44
  %.pre19 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 2, !dbg !232
  br label %52, !dbg !231

; <label>:46                                      ; preds = %44
  %47 = load i32* %45, align 4, !dbg !227, !tbaa !234
  %48 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 2, !dbg !235
  %49 = load i32* %48, align 4, !dbg !235, !tbaa !236
  %50 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %30, i32 %39, i32 %47, i32 %49) #6, !dbg !237
  %51 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !238
  br label %52, !dbg !239

; <label>:52                                      ; preds = %._crit_edge15, %46
  %.pre-phi20 = phi i32* [ %.pre19, %._crit_edge15 ], [ %48, %46 ], !dbg !232
  %53 = load i32* %45, align 4, !dbg !240, !tbaa !234
  %54 = load i32* %.pre-phi20, align 4, !dbg !232, !tbaa !236
  %55 = icmp slt i32 %53, %54, !dbg !241
  br i1 %55, label %56, label %62, !dbg !242

; <label>:56                                      ; preds = %52
  br i1 %20, label %57, label %60, !dbg !243

; <label>:57                                      ; preds = %56
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %39) #6, !dbg !245
  %59 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !248
  br label %60, !dbg !249

; <label>:60                                      ; preds = %57, %56
  %61 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %39) #6, !dbg !250
  store i32 1, i32* %41, align 4, !dbg !251, !tbaa !199
  br label %62, !dbg !252

; <label>:62                                      ; preds = %.lr.ph, %60, %52
  %63 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 4, !dbg !253
  %arc.0 = load %struct._Arc** %63, align 8, !dbg !213
  %64 = icmp eq %struct._Arc* %arc.0, null, !dbg !215
  br i1 %64, label %._crit_edge, label %.lr.ph, !dbg !217

._crit_edge:                                      ; preds = %62, %34
  %65 = getelementptr inbounds %struct._Arc** %13, i64 %35, !dbg !254
  %arc.17 = load %struct._Arc** %65, align 8, !dbg !254
  %66 = icmp eq %struct._Arc* %arc.17, null, !dbg !256
  br i1 %66, label %.loopexit, label %.lr.ph11, !dbg !258

.lr.ph11:                                         ; preds = %._crit_edge, %87
  %arc.18 = phi %struct._Arc* [ %arc.1, %87 ], [ %arc.17, %._crit_edge ]
  %67 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 0, !dbg !259
  %68 = load i32* %67, align 4, !dbg !259, !tbaa !261
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !134, metadata !153), !dbg !222
  %69 = sext i32 %68 to i64, !dbg !262
  %70 = getelementptr inbounds i32* %mark, i64 %69, !dbg !262
  %71 = load i32* %70, align 4, !dbg !262, !tbaa !199
  %72 = icmp eq i32 %71, 1, !dbg !264
  br i1 %72, label %87, label %73, !dbg !265

; <label>:73                                      ; preds = %.lr.ph11
  %74 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 3, !dbg !266
  br i1 %20, label %75, label %._crit_edge16, !dbg !270

; <label>:75                                      ; preds = %73
  %76 = load i32* %74, align 4, !dbg !266, !tbaa !234
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %68, i32 %30, i32 %76) #6, !dbg !271
  %78 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !272
  br label %._crit_edge16, !dbg !273

._crit_edge16:                                    ; preds = %73, %75
  %79 = load i32* %74, align 4, !dbg !274, !tbaa !234
  %80 = icmp sgt i32 %79, 0, !dbg !276
  br i1 %80, label %81, label %87, !dbg !277

; <label>:81                                      ; preds = %._crit_edge16
  br i1 %20, label %82, label %85, !dbg !278

; <label>:82                                      ; preds = %81
  %83 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %68) #6, !dbg !280
  %84 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !283
  br label %85, !dbg !284

; <label>:85                                      ; preds = %82, %81
  %86 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %68) #6, !dbg !285
  store i32 1, i32* %70, align 4, !dbg !286, !tbaa !199
  br label %87, !dbg !287

; <label>:87                                      ; preds = %.lr.ph11, %85, %._crit_edge16
  %88 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 5, !dbg !288
  %arc.1 = load %struct._Arc** %88, align 8, !dbg !254
  %89 = icmp eq %struct._Arc* %arc.1, null, !dbg !256
  br i1 %89, label %.loopexit, label %.lr.ph11, !dbg !258

._crit_edge14:                                    ; preds = %.loopexit, %24
  br i1 %20, label %90, label %93, !dbg !289

; <label>:90                                      ; preds = %._crit_edge14
  %91 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %19), !dbg !290
  %92 = tail call i32 @fflush(%struct.__sFILE* %19) #6, !dbg !293
  br label %93, !dbg !294

; <label>:93                                      ; preds = %90, %._crit_edge14
  ret void, !dbg !295
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @Ideq_clear(%struct._Ideq*) #3

; Function Attrs: optsize
declare i32 @Ideq_insertAtHead(%struct._Ideq*, i32) #3

; Function Attrs: optsize
declare i32 @Ideq_removeFromHead(%struct._Ideq*) #3

; Function Attrs: optsize
declare i32 @Ideq_insertAtTail(%struct._Ideq*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_findMincutFromSink(%struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !137, metadata !153), !dbg !296
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !138, metadata !153), !dbg !297
  tail call void @llvm.dbg.value(metadata i32* %mark, i64 0, metadata !139, metadata !153), !dbg !298
  %1 = icmp eq %struct._Network* %network, null, !dbg !299
  br i1 %1, label %8, label %2, !dbg !301

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !302
  %4 = load i32* %3, align 4, !dbg !302, !tbaa !161
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !145, metadata !153), !dbg !303
  %5 = icmp slt i32 %4, 1, !dbg !304
  %6 = icmp eq %struct._Ideq* %deq, null, !dbg !305
  %or.cond = or i1 %6, %5, !dbg !306
  %7 = icmp eq i32* %mark, null, !dbg !307
  %or.cond3 = or i1 %7, %or.cond, !dbg !306
  br i1 %or.cond3, label %8, label %11, !dbg !306

; <label>:8                                       ; preds = %2, %0
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !308, !tbaa !174
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), %struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #6, !dbg !310
  tail call void @exit(i32 -1) #7, !dbg !311
  unreachable, !dbg !311

; <label>:11                                      ; preds = %2
  %12 = add nsw i32 %4, -1, !dbg !312
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !146, metadata !153), !dbg !313
  %13 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !314
  %14 = load %struct._Arc*** %13, align 8, !dbg !314, !tbaa !179
  tail call void @llvm.dbg.value(metadata %struct._Arc** %14, i64 0, metadata !141, metadata !153), !dbg !315
  %15 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !316
  %16 = load %struct._Arc*** %15, align 8, !dbg !316, !tbaa !182
  tail call void @llvm.dbg.value(metadata %struct._Arc** %16, i64 0, metadata !142, metadata !153), !dbg !317
  %17 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !318
  %18 = load i32* %17, align 4, !dbg !318, !tbaa !185
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !144, metadata !153), !dbg !319
  %19 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !320
  %20 = load %struct.__sFILE** %19, align 8, !dbg !320, !tbaa !188
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %20, i64 0, metadata !143, metadata !153), !dbg !321
  %21 = icmp sgt i32 %18, 2, !dbg !322
  br i1 %21, label %22, label %25, !dbg !324

; <label>:22                                      ; preds = %11
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %20), !dbg !325
  %24 = tail call i32 @fflush(%struct.__sFILE* %20) #6, !dbg !327
  br label %25, !dbg !328

; <label>:25                                      ; preds = %22, %11
  tail call void @IVfill(i32 %4, i32* %mark, i32 1) #6, !dbg !329
  %26 = sext i32 %12 to i64, !dbg !330
  %27 = getelementptr inbounds i32* %mark, i64 %26, !dbg !330
  store i32 2, i32* %27, align 4, !dbg !331, !tbaa !199
  tail call void @Ideq_clear(%struct._Ideq* %deq) #6, !dbg !332
  %28 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %12) #6, !dbg !333
  %29 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !147, metadata !153), !dbg !335
  %30 = icmp eq i32 %29, -1, !dbg !336
  br i1 %30, label %._crit_edge14, label %.lr.ph13, !dbg !337

.loopexit:                                        ; preds = %90, %._crit_edge
  %31 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !147, metadata !153), !dbg !335
  %32 = icmp eq i32 %31, -1, !dbg !336
  br i1 %32, label %._crit_edge14, label %.lr.ph13, !dbg !337

.lr.ph13:                                         ; preds = %25, %.loopexit
  %33 = phi i32 [ %31, %.loopexit ], [ %29, %25 ]
  br i1 %21, label %34, label %37, !dbg !338

; <label>:34                                      ; preds = %.lr.ph13
  %35 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %33) #6, !dbg !340
  %36 = tail call i32 @fflush(%struct.__sFILE* %20) #6, !dbg !343
  br label %37, !dbg !344

; <label>:37                                      ; preds = %34, %.lr.ph13
  %38 = sext i32 %33 to i64, !dbg !345
  %39 = getelementptr inbounds %struct._Arc** %16, i64 %38, !dbg !345
  %arc.04 = load %struct._Arc** %39, align 8, !dbg !345
  %40 = icmp eq %struct._Arc* %arc.04, null, !dbg !347
  br i1 %40, label %._crit_edge, label %.lr.ph, !dbg !349

.lr.ph:                                           ; preds = %37, %63
  %arc.05 = phi %struct._Arc* [ %arc.0, %63 ], [ %arc.04, %37 ]
  %41 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 1, !dbg !350
  %42 = load i32* %41, align 4, !dbg !350, !tbaa !220
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !148, metadata !153), !dbg !352
  %43 = sext i32 %42 to i64, !dbg !353
  %44 = getelementptr inbounds i32* %mark, i64 %43, !dbg !353
  %45 = load i32* %44, align 4, !dbg !353, !tbaa !199
  %46 = icmp eq i32 %45, 2, !dbg !355
  br i1 %46, label %63, label %47, !dbg !356

; <label>:47                                      ; preds = %.lr.ph
  %48 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 3, !dbg !357
  br i1 %21, label %49, label %._crit_edge15, !dbg !361

; <label>:49                                      ; preds = %47
  %50 = load i32* %48, align 4, !dbg !357, !tbaa !234
  %51 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 2, !dbg !362
  %52 = load i32* %51, align 4, !dbg !362, !tbaa !236
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %33, i32 %42, i32 %50, i32 %52) #6, !dbg !363
  %54 = tail call i32 @fflush(%struct.__sFILE* %20) #6, !dbg !364
  br label %._crit_edge15, !dbg !365

._crit_edge15:                                    ; preds = %47, %49
  %55 = load i32* %48, align 4, !dbg !366, !tbaa !234
  %56 = icmp sgt i32 %55, 0, !dbg !368
  br i1 %56, label %57, label %63, !dbg !369

; <label>:57                                      ; preds = %._crit_edge15
  br i1 %21, label %58, label %61, !dbg !370

; <label>:58                                      ; preds = %57
  %59 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %42) #6, !dbg !372
  %60 = tail call i32 @fflush(%struct.__sFILE* %20) #6, !dbg !375
  br label %61, !dbg !376

; <label>:61                                      ; preds = %58, %57
  %62 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %42) #6, !dbg !377
  store i32 2, i32* %44, align 4, !dbg !378, !tbaa !199
  br label %63, !dbg !379

; <label>:63                                      ; preds = %.lr.ph, %61, %._crit_edge15
  %64 = getelementptr inbounds %struct._Arc* %arc.05, i64 0, i32 4, !dbg !380
  %arc.0 = load %struct._Arc** %64, align 8, !dbg !345
  %65 = icmp eq %struct._Arc* %arc.0, null, !dbg !347
  br i1 %65, label %._crit_edge, label %.lr.ph, !dbg !349

._crit_edge:                                      ; preds = %63, %37
  %66 = getelementptr inbounds %struct._Arc** %14, i64 %38, !dbg !381
  %arc.17 = load %struct._Arc** %66, align 8, !dbg !381
  %67 = icmp eq %struct._Arc* %arc.17, null, !dbg !383
  br i1 %67, label %.loopexit, label %.lr.ph11, !dbg !385

.lr.ph11:                                         ; preds = %._crit_edge, %90
  %arc.18 = phi %struct._Arc* [ %arc.1, %90 ], [ %arc.17, %._crit_edge ]
  %68 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 0, !dbg !386
  %69 = load i32* %68, align 4, !dbg !386, !tbaa !261
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !148, metadata !153), !dbg !352
  %70 = sext i32 %69 to i64, !dbg !388
  %71 = getelementptr inbounds i32* %mark, i64 %70, !dbg !388
  %72 = load i32* %71, align 4, !dbg !388, !tbaa !199
  %73 = icmp eq i32 %72, 2, !dbg !390
  br i1 %73, label %90, label %74, !dbg !391

; <label>:74                                      ; preds = %.lr.ph11
  %75 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 3, !dbg !392
  br i1 %21, label %76, label %._crit_edge16, !dbg !396

; <label>:76                                      ; preds = %74
  %77 = load i32* %75, align 4, !dbg !392, !tbaa !234
  %78 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %69, i32 %33, i32 %77) #6, !dbg !397
  %79 = tail call i32 @fflush(%struct.__sFILE* %20) #6, !dbg !398
  br label %._crit_edge16, !dbg !399

._crit_edge16:                                    ; preds = %74, %76
  %80 = load i32* %75, align 4, !dbg !400, !tbaa !234
  %81 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 2, !dbg !402
  %82 = load i32* %81, align 4, !dbg !402, !tbaa !236
  %83 = icmp slt i32 %80, %82, !dbg !403
  br i1 %83, label %84, label %90, !dbg !404

; <label>:84                                      ; preds = %._crit_edge16
  br i1 %21, label %85, label %88, !dbg !405

; <label>:85                                      ; preds = %84
  %86 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %69) #6, !dbg !407
  %87 = tail call i32 @fflush(%struct.__sFILE* %20) #6, !dbg !410
  br label %88, !dbg !411

; <label>:88                                      ; preds = %85, %84
  %89 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %69) #6, !dbg !412
  store i32 2, i32* %71, align 4, !dbg !413, !tbaa !199
  br label %90, !dbg !414

; <label>:90                                      ; preds = %.lr.ph11, %88, %._crit_edge16
  %91 = getelementptr inbounds %struct._Arc* %arc.18, i64 0, i32 5, !dbg !415
  %arc.1 = load %struct._Arc** %91, align 8, !dbg !381
  %92 = icmp eq %struct._Arc* %arc.1, null, !dbg !383
  br i1 %92, label %.loopexit, label %.lr.ph11, !dbg !385

._crit_edge14:                                    ; preds = %.loopexit, %25
  ret void, !dbg !416
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!149, !150, !151}
!llvm.ident = !{!152}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !135}
!6 = !DISubprogram(name: "Network_findMincutFromSource", scope: !1, file: !1, line: 21, type: !7, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, %struct._Ideq*, i32*)* @Network_findMincutFromSource, variables: !122)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !104, !121}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Network", file: !11, line: 12, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Network", file: !11, line: 34, size: 448, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !30, !31, !40, !41}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nnode", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "narc", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ntrav", scope: !12, file: !11, line: 37, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "inheads", scope: !12, file: !11, line: 38, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Arc", file: !11, line: 13, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Arc", file: !11, line: 53, size: 256, align: 64, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !22, file: !11, line: 54, baseType: !15, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !22, file: !11, line: 55, baseType: !15, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !22, file: !11, line: 56, baseType: !15, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !22, file: !11, line: 57, baseType: !15, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nextOut", scope: !22, file: !11, line: 58, baseType: !20, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nextIn", scope: !22, file: !11, line: 59, baseType: !20, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "outheads", scope: !12, file: !11, line: 39, baseType: !19, size: 64, align: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !12, file: !11, line: 40, baseType: !32, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ArcChunk", file: !11, line: 14, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ArcChunk", file: !11, line: 74, size: 192, align: 64, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !11, line: 75, baseType: !15, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !34, file: !11, line: 76, baseType: !15, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !34, file: !11, line: 77, baseType: !20, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !11, line: 78, baseType: !32, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !12, file: !11, line: 41, baseType: !15, size: 32, align: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !12, file: !11, line: 42, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 153, baseType: !45)
!44 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !44, line: 122, size: 1216, align: 64, elements: !46)
!46 = !{!47, !50, !51, !52, !54, !55, !60, !61, !62, !66, !72, !82, !88, !89, !92, !93, !97, !101, !102, !103}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !45, file: !44, line: 123, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !45, file: !44, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !45, file: !44, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !44, line: 126, baseType: !53, size: 16, align: 16, offset: 128)
!53 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !45, file: !44, line: 127, baseType: !53, size: 16, align: 16, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !45, file: !44, line: 128, baseType: !56, size: 128, align: 64, offset: 192)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !44, line: 88, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !56, file: !44, line: 89, baseType: !48, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !56, file: !44, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !45, file: !44, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !45, file: !44, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !45, file: !44, line: 133, baseType: !63, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!15, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !45, file: !44, line: 134, baseType: !67, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!15, !4, !70, !15}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !45, file: !44, line: 135, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !4, !76, !15}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !44, line: 77, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !78, line: 71, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !45, file: !44, line: 136, baseType: !83, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!15, !4, !86, !15}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !45, file: !44, line: 139, baseType: !56, size: 128, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !45, file: !44, line: 140, baseType: !90, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !44, line: 94, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !45, file: !44, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !45, file: !44, line: 144, baseType: !94, size: 24, align: 8, offset: 928)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 3)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !45, file: !44, line: 145, baseType: !98, size: 8, align: 8, offset: 952)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !45, file: !44, line: 148, baseType: !56, size: 128, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !45, file: !44, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !44, line: 152, baseType: !76, size: 64, align: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ideq", file: !106, line: 19, baseType: !107)
!106 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../Ideq/Ideq.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ideq", file: !106, line: 20, size: 320, align: 64, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !107, file: !106, line: 21, baseType: !15, size: 32, align: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !107, file: !106, line: 22, baseType: !15, size: 32, align: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !107, file: !106, line: 23, baseType: !15, size: 32, align: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !107, file: !106, line: 24, baseType: !113, size: 192, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !114, line: 20, baseType: !115)
!114 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !114, line: 21, size: 192, align: 64, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !115, file: !114, line: 22, baseType: !15, size: 32, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !115, file: !114, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !115, file: !114, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !115, file: !114, line: 25, baseType: !121, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !6, file: !1, line: 22, type: !9)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 2, scope: !6, file: !1, line: 23, type: !104)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mark", arg: 3, scope: !6, file: !1, line: 24, type: !121)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !6, file: !1, line: 26, type: !20)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheads", scope: !6, file: !1, line: 27, type: !19)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outheads", scope: !6, file: !1, line: 27, type: !19)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgFile", scope: !6, file: !1, line: 28, type: !42)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msglvl", scope: !6, file: !1, line: 29, type: !15)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnode", scope: !6, file: !1, line: 29, type: !15)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "source", scope: !6, file: !1, line: 29, type: !15)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !6, file: !1, line: 29, type: !15)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !6, file: !1, line: 29, type: !15)
!135 = !DISubprogram(name: "Network_findMincutFromSink", scope: !1, file: !1, line: 133, type: !7, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, %struct._Ideq*, i32*)* @Network_findMincutFromSink, variables: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !135, file: !1, line: 134, type: !9)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 2, scope: !135, file: !1, line: 135, type: !104)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mark", arg: 3, scope: !135, file: !1, line: 136, type: !121)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !135, file: !1, line: 138, type: !20)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheads", scope: !135, file: !1, line: 139, type: !19)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outheads", scope: !135, file: !1, line: 139, type: !19)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgFile", scope: !135, file: !1, line: 140, type: !42)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msglvl", scope: !135, file: !1, line: 141, type: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnode", scope: !135, file: !1, line: 141, type: !15)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sink", scope: !135, file: !1, line: 141, type: !15)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !135, file: !1, line: 141, type: !15)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !135, file: !1, line: 141, type: !15)
!149 = !{i32 2, !"Dwarf Version", i32 2}
!150 = !{i32 2, !"Debug Info Version", i32 700000003}
!151 = !{i32 1, !"PIC Level", i32 2}
!152 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!153 = !DIExpression()
!154 = !DILocation(line: 22, column: 15, scope: !6)
!155 = !DILocation(line: 23, column: 15, scope: !6)
!156 = !DILocation(line: 24, column: 14, scope: !6)
!157 = !DILocation(line: 35, column: 15, scope: !158)
!158 = distinct !DILexicalBlock(scope: !6, file: !1, line: 35, column: 7)
!159 = !DILocation(line: 35, column: 23, scope: !158)
!160 = !DILocation(line: 35, column: 44, scope: !158)
!161 = !{!162, !163, i64 0}
!162 = !{!"_Network", !163, i64 0, !163, i64 4, !163, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !163, i64 40, !166, i64 48}
!163 = !{!"int", !164, i64 0}
!164 = !{!"omnipotent char", !165, i64 0}
!165 = !{!"Simple C/C++ TBAA"}
!166 = !{!"any pointer", !164, i64 0}
!167 = !DILocation(line: 29, column: 16, scope: !6)
!168 = !DILocation(line: 35, column: 51, scope: !158)
!169 = !DILocation(line: 36, column: 11, scope: !158)
!170 = !DILocation(line: 36, column: 4, scope: !158)
!171 = !DILocation(line: 36, column: 27, scope: !158)
!172 = !DILocation(line: 37, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !158, file: !1, line: 36, column: 37)
!174 = !{!166, !166, i64 0}
!175 = !DILocation(line: 37, column: 4, scope: !173)
!176 = !DILocation(line: 40, column: 4, scope: !173)
!177 = !DILocation(line: 29, column: 23, scope: !6)
!178 = !DILocation(line: 43, column: 21, scope: !6)
!179 = !{!162, !166, i64 16}
!180 = !DILocation(line: 27, column: 10, scope: !6)
!181 = !DILocation(line: 44, column: 21, scope: !6)
!182 = !{!162, !166, i64 24}
!183 = !DILocation(line: 27, column: 21, scope: !6)
!184 = !DILocation(line: 45, column: 21, scope: !6)
!185 = !{!162, !163, i64 40}
!186 = !DILocation(line: 29, column: 8, scope: !6)
!187 = !DILocation(line: 46, column: 21, scope: !6)
!188 = !{!162, !166, i64 48}
!189 = !DILocation(line: 28, column: 9, scope: !6)
!190 = !DILocation(line: 47, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !6, file: !1, line: 47, column: 6)
!192 = !DILocation(line: 47, column: 6, scope: !6)
!193 = !DILocation(line: 48, column: 4, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 47, column: 19)
!195 = !DILocation(line: 49, column: 4, scope: !194)
!196 = !DILocation(line: 50, column: 1, scope: !194)
!197 = !DILocation(line: 56, column: 1, scope: !6)
!198 = !DILocation(line: 57, column: 14, scope: !6)
!199 = !{!163, !163, i64 0}
!200 = !DILocation(line: 66, column: 1, scope: !6)
!201 = !DILocation(line: 67, column: 1, scope: !6)
!202 = !DILocation(line: 68, column: 14, scope: !6)
!203 = !DILocation(line: 29, column: 31, scope: !6)
!204 = !DILocation(line: 68, column: 40, scope: !6)
!205 = !DILocation(line: 68, column: 1, scope: !6)
!206 = !DILocation(line: 69, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !6, file: !1, line: 68, column: 48)
!208 = !DILocation(line: 70, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 69, column: 22)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 69, column: 9)
!211 = !DILocation(line: 71, column: 7, scope: !209)
!212 = !DILocation(line: 72, column: 4, scope: !209)
!213 = !DILocation(line: 73, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !1, line: 73, column: 4)
!215 = !DILocation(line: 73, column: 34, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !1, line: 73, column: 4)
!217 = !DILocation(line: 73, column: 4, scope: !214)
!218 = !DILocation(line: 74, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 73, column: 65)
!220 = !{!221, !163, i64 4}
!221 = !{!"_Arc", !163, i64 0, !163, i64 4, !163, i64 8, !163, i64 12, !166, i64 16, !166, i64 24}
!222 = !DILocation(line: 29, column: 34, scope: !6)
!223 = !DILocation(line: 75, column: 12, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 75, column: 12)
!225 = !DILocation(line: 75, column: 20, scope: !224)
!226 = !DILocation(line: 75, column: 12, scope: !219)
!227 = !DILocation(line: 79, column: 32, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 76, column: 28)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 76, column: 15)
!230 = distinct !DILexicalBlock(scope: !224, file: !1, line: 75, column: 27)
!231 = !DILocation(line: 76, column: 15, scope: !230)
!232 = !DILocation(line: 82, column: 32, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 82, column: 15)
!234 = !{!221, !163, i64 12}
!235 = !DILocation(line: 79, column: 43, scope: !228)
!236 = !{!221, !163, i64 8}
!237 = !DILocation(line: 77, column: 13, scope: !228)
!238 = !DILocation(line: 80, column: 13, scope: !228)
!239 = !DILocation(line: 81, column: 10, scope: !228)
!240 = !DILocation(line: 82, column: 20, scope: !233)
!241 = !DILocation(line: 82, column: 25, scope: !233)
!242 = !DILocation(line: 82, column: 15, scope: !230)
!243 = !DILocation(line: 83, column: 18, scope: !244)
!244 = distinct !DILexicalBlock(scope: !233, file: !1, line: 82, column: 43)
!245 = !DILocation(line: 84, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 83, column: 31)
!247 = distinct !DILexicalBlock(scope: !244, file: !1, line: 83, column: 18)
!248 = !DILocation(line: 85, column: 16, scope: !246)
!249 = !DILocation(line: 86, column: 13, scope: !246)
!250 = !DILocation(line: 87, column: 13, scope: !244)
!251 = !DILocation(line: 88, column: 21, scope: !244)
!252 = !DILocation(line: 89, column: 10, scope: !244)
!253 = !DILocation(line: 73, column: 55, scope: !216)
!254 = !DILocation(line: 92, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !207, file: !1, line: 92, column: 4)
!256 = !DILocation(line: 92, column: 33, scope: !257)
!257 = distinct !DILexicalBlock(scope: !255, file: !1, line: 92, column: 4)
!258 = !DILocation(line: 92, column: 4, scope: !255)
!259 = !DILocation(line: 93, column: 16, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 92, column: 63)
!261 = !{!221, !163, i64 0}
!262 = !DILocation(line: 94, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 94, column: 12)
!264 = !DILocation(line: 94, column: 20, scope: !263)
!265 = !DILocation(line: 94, column: 12, scope: !260)
!266 = !DILocation(line: 97, column: 32, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 95, column: 28)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 95, column: 15)
!269 = distinct !DILexicalBlock(scope: !263, file: !1, line: 94, column: 27)
!270 = !DILocation(line: 95, column: 15, scope: !269)
!271 = !DILocation(line: 96, column: 13, scope: !267)
!272 = !DILocation(line: 98, column: 13, scope: !267)
!273 = !DILocation(line: 99, column: 10, scope: !267)
!274 = !DILocation(line: 100, column: 20, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !1, line: 100, column: 15)
!276 = !DILocation(line: 100, column: 25, scope: !275)
!277 = !DILocation(line: 100, column: 15, scope: !269)
!278 = !DILocation(line: 101, column: 18, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 100, column: 31)
!280 = !DILocation(line: 102, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 101, column: 31)
!282 = distinct !DILexicalBlock(scope: !279, file: !1, line: 101, column: 18)
!283 = !DILocation(line: 103, column: 16, scope: !281)
!284 = !DILocation(line: 104, column: 13, scope: !281)
!285 = !DILocation(line: 105, column: 13, scope: !279)
!286 = !DILocation(line: 106, column: 21, scope: !279)
!287 = !DILocation(line: 107, column: 10, scope: !279)
!288 = !DILocation(line: 92, column: 54, scope: !257)
!289 = !DILocation(line: 111, column: 6, scope: !6)
!290 = !DILocation(line: 112, column: 4, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 111, column: 19)
!292 = distinct !DILexicalBlock(scope: !6, file: !1, line: 111, column: 6)
!293 = !DILocation(line: 113, column: 4, scope: !291)
!294 = !DILocation(line: 114, column: 1, scope: !291)
!295 = !DILocation(line: 115, column: 1, scope: !6)
!296 = !DILocation(line: 134, column: 15, scope: !135)
!297 = !DILocation(line: 135, column: 15, scope: !135)
!298 = !DILocation(line: 136, column: 14, scope: !135)
!299 = !DILocation(line: 147, column: 15, scope: !300)
!300 = distinct !DILexicalBlock(scope: !135, file: !1, line: 147, column: 7)
!301 = !DILocation(line: 147, column: 23, scope: !300)
!302 = !DILocation(line: 147, column: 44, scope: !300)
!303 = !DILocation(line: 141, column: 16, scope: !135)
!304 = !DILocation(line: 147, column: 51, scope: !300)
!305 = !DILocation(line: 148, column: 11, scope: !300)
!306 = !DILocation(line: 148, column: 4, scope: !300)
!307 = !DILocation(line: 148, column: 27, scope: !300)
!308 = !DILocation(line: 149, column: 12, scope: !309)
!309 = distinct !DILexicalBlock(scope: !300, file: !1, line: 148, column: 37)
!310 = !DILocation(line: 149, column: 4, scope: !309)
!311 = !DILocation(line: 152, column: 4, scope: !309)
!312 = !DILocation(line: 154, column: 18, scope: !135)
!313 = !DILocation(line: 141, column: 23, scope: !135)
!314 = !DILocation(line: 155, column: 21, scope: !135)
!315 = !DILocation(line: 139, column: 10, scope: !135)
!316 = !DILocation(line: 156, column: 21, scope: !135)
!317 = !DILocation(line: 139, column: 21, scope: !135)
!318 = !DILocation(line: 157, column: 21, scope: !135)
!319 = !DILocation(line: 141, column: 8, scope: !135)
!320 = !DILocation(line: 158, column: 21, scope: !135)
!321 = !DILocation(line: 140, column: 9, scope: !135)
!322 = !DILocation(line: 159, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !135, file: !1, line: 159, column: 6)
!324 = !DILocation(line: 159, column: 6, scope: !135)
!325 = !DILocation(line: 160, column: 4, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !1, line: 159, column: 19)
!327 = !DILocation(line: 161, column: 4, scope: !326)
!328 = !DILocation(line: 162, column: 1, scope: !326)
!329 = !DILocation(line: 168, column: 1, scope: !135)
!330 = !DILocation(line: 169, column: 1, scope: !135)
!331 = !DILocation(line: 169, column: 12, scope: !135)
!332 = !DILocation(line: 178, column: 1, scope: !135)
!333 = !DILocation(line: 179, column: 1, scope: !135)
!334 = !DILocation(line: 180, column: 14, scope: !135)
!335 = !DILocation(line: 141, column: 29, scope: !135)
!336 = !DILocation(line: 180, column: 40, scope: !135)
!337 = !DILocation(line: 180, column: 1, scope: !135)
!338 = !DILocation(line: 181, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !135, file: !1, line: 180, column: 48)
!340 = !DILocation(line: 182, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 181, column: 22)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 181, column: 9)
!343 = !DILocation(line: 183, column: 7, scope: !341)
!344 = !DILocation(line: 184, column: 4, scope: !341)
!345 = !DILocation(line: 185, column: 16, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !1, line: 185, column: 4)
!347 = !DILocation(line: 185, column: 34, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !1, line: 185, column: 4)
!349 = !DILocation(line: 185, column: 4, scope: !346)
!350 = !DILocation(line: 186, column: 16, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !1, line: 185, column: 65)
!352 = !DILocation(line: 141, column: 32, scope: !135)
!353 = !DILocation(line: 187, column: 12, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 187, column: 12)
!355 = !DILocation(line: 187, column: 20, scope: !354)
!356 = !DILocation(line: 187, column: 12, scope: !351)
!357 = !DILocation(line: 191, column: 32, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 188, column: 28)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 188, column: 15)
!360 = distinct !DILexicalBlock(scope: !354, file: !1, line: 187, column: 27)
!361 = !DILocation(line: 188, column: 15, scope: !360)
!362 = !DILocation(line: 191, column: 43, scope: !358)
!363 = !DILocation(line: 189, column: 13, scope: !358)
!364 = !DILocation(line: 192, column: 13, scope: !358)
!365 = !DILocation(line: 193, column: 10, scope: !358)
!366 = !DILocation(line: 194, column: 20, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !1, line: 194, column: 15)
!368 = !DILocation(line: 194, column: 25, scope: !367)
!369 = !DILocation(line: 194, column: 15, scope: !360)
!370 = !DILocation(line: 195, column: 18, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 194, column: 31)
!372 = !DILocation(line: 196, column: 16, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 195, column: 31)
!374 = distinct !DILexicalBlock(scope: !371, file: !1, line: 195, column: 18)
!375 = !DILocation(line: 197, column: 16, scope: !373)
!376 = !DILocation(line: 198, column: 13, scope: !373)
!377 = !DILocation(line: 199, column: 13, scope: !371)
!378 = !DILocation(line: 200, column: 21, scope: !371)
!379 = !DILocation(line: 201, column: 10, scope: !371)
!380 = !DILocation(line: 185, column: 55, scope: !348)
!381 = !DILocation(line: 204, column: 16, scope: !382)
!382 = distinct !DILexicalBlock(scope: !339, file: !1, line: 204, column: 4)
!383 = !DILocation(line: 204, column: 33, scope: !384)
!384 = distinct !DILexicalBlock(scope: !382, file: !1, line: 204, column: 4)
!385 = !DILocation(line: 204, column: 4, scope: !382)
!386 = !DILocation(line: 205, column: 16, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 204, column: 63)
!388 = !DILocation(line: 206, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !387, file: !1, line: 206, column: 12)
!390 = !DILocation(line: 206, column: 20, scope: !389)
!391 = !DILocation(line: 206, column: 12, scope: !387)
!392 = !DILocation(line: 209, column: 32, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 207, column: 28)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 207, column: 15)
!395 = distinct !DILexicalBlock(scope: !389, file: !1, line: 206, column: 27)
!396 = !DILocation(line: 207, column: 15, scope: !395)
!397 = !DILocation(line: 208, column: 13, scope: !393)
!398 = !DILocation(line: 210, column: 13, scope: !393)
!399 = !DILocation(line: 211, column: 10, scope: !393)
!400 = !DILocation(line: 212, column: 20, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !1, line: 212, column: 15)
!402 = !DILocation(line: 212, column: 32, scope: !401)
!403 = !DILocation(line: 212, column: 25, scope: !401)
!404 = !DILocation(line: 212, column: 15, scope: !395)
!405 = !DILocation(line: 213, column: 18, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !1, line: 212, column: 43)
!407 = !DILocation(line: 214, column: 16, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 213, column: 31)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 213, column: 18)
!410 = !DILocation(line: 215, column: 16, scope: !408)
!411 = !DILocation(line: 216, column: 13, scope: !408)
!412 = !DILocation(line: 217, column: 13, scope: !406)
!413 = !DILocation(line: 218, column: 21, scope: !406)
!414 = !DILocation(line: 219, column: 10, scope: !406)
!415 = !DILocation(line: 204, column: 54, scope: !384)
!416 = !DILocation(line: 223, column: 1, scope: !135)
