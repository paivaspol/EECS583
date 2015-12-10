; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_externalDegree(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_adjAndSize(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"\0A fatal error in Graph_adjAndSize(%p,%d,%p,%p)\0A g->adjIVL == NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [64 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A g->adjIVL == NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [91 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A g->type = %d and g->ewghtIVL == NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Graph_sizeOf(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Graph_componentMap(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Graph_componentStats(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_subGraph(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [84 x i8] c"\0A fatal error in Graph_subGraph(%p,%d,%p,%p)\0A g->type = 0 or 1 currently supported\0A\00", align 1
@.str11 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Graph_isSymmetric(%p)\0A bad input\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str12 = private unnamed_addr constant [44 x i8] c"\0A edge (%d,%d) present, edge (%d,%d) is not\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Graph_externalDegree(%struct._Graph* %g, i32 %v) #0 {
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !48, metadata !165), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !49, metadata !165), !dbg !167
  %1 = icmp eq %struct._Graph* %g, null, !dbg !168
  %2 = icmp slt i32 %v, 0, !dbg !170
  %or.cond = or i1 %1, %2, !dbg !171
  br i1 %or.cond, label %10, label %3, !dbg !171

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !172
  %5 = load i32* %4, align 4, !dbg !172, !tbaa !173
  %6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !179
  %7 = load i32* %6, align 4, !dbg !179, !tbaa !180
  %8 = add nsw i32 %7, %5, !dbg !181
  %9 = icmp sgt i32 %8, %v, !dbg !182
  br i1 %9, label %13, label %10, !dbg !183

; <label>:10                                      ; preds = %3, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !184, !tbaa !186
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g, i32 %v) #5, !dbg !187
  tail call void @exit(i32 -1) #6, !dbg !188
  unreachable, !dbg !188

; <label>:13                                      ; preds = %3
  %14 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !189
  %15 = load i32** %14, align 8, !dbg !189, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !55, metadata !165), !dbg !191
  tail call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !51, metadata !165), !dbg !192
  tail call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !54, metadata !165), !dbg !193
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %v, i32* %vsize, i32** %vadj) #7, !dbg !194
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !50, metadata !165), !dbg !195
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !165), !dbg !196
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !51, metadata !165), !dbg !192
  %16 = load i32* %vsize, align 4, !dbg !197, !tbaa !200
  %17 = icmp sgt i32 %16, 0, !dbg !201
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !202

.lr.ph:                                           ; preds = %13
  %18 = load i32** %vadj, align 8, !dbg !203, !tbaa !186
  %19 = icmp eq i32* %15, null, !dbg !206
  %20 = sext i32 %16 to i64, !dbg !202
  br label %21, !dbg !202

; <label>:21                                      ; preds = %.lr.ph, %33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  %weight.02 = phi i32 [ 0, %.lr.ph ], [ %weight.1, %33 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !54, metadata !165), !dbg !193
  %22 = getelementptr inbounds i32* %18, i64 %indvars.iv, !dbg !203
  %23 = load i32* %22, align 4, !dbg !203, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !52, metadata !165), !dbg !208
  %24 = icmp eq i32 %23, %v, !dbg !209
  br i1 %24, label %33, label %25, !dbg !210

; <label>:25                                      ; preds = %21
  br i1 %19, label %30, label %26, !dbg !211

; <label>:26                                      ; preds = %25
  %27 = sext i32 %23 to i64, !dbg !212
  %28 = getelementptr inbounds i32* %15, i64 %27, !dbg !212
  %29 = load i32* %28, align 4, !dbg !212, !tbaa !200
  br label %30, !dbg !211

; <label>:30                                      ; preds = %25, %26
  %31 = phi i32 [ %29, %26 ], [ 1, %25 ], !dbg !211
  %32 = add nsw i32 %31, %weight.02, !dbg !213
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !53, metadata !165), !dbg !196
  br label %33, !dbg !214

; <label>:33                                      ; preds = %21, %30
  %weight.1 = phi i32 [ %32, %30 ], [ %weight.02, %21 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !202
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !51, metadata !165), !dbg !192
  %34 = icmp slt i64 %indvars.iv.next, %20, !dbg !201
  br i1 %34, label %21, label %._crit_edge, !dbg !202

._crit_edge:                                      ; preds = %33, %13
  %weight.0.lcssa = phi i32 [ 0, %13 ], [ %weight.1, %33 ]
  ret i32 %weight.0.lcssa, !dbg !215
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Graph_adjAndSize(%struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !60, metadata !165), !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %jvtx, i64 0, metadata !61, metadata !165), !dbg !217
  tail call void @llvm.dbg.value(metadata i32* %psize, i64 0, metadata !62, metadata !165), !dbg !218
  tail call void @llvm.dbg.value(metadata i32** %padj, i64 0, metadata !63, metadata !165), !dbg !219
  %1 = icmp eq %struct._Graph* %g, null, !dbg !220
  %2 = icmp slt i32 %jvtx, 0, !dbg !222
  %or.cond = or i1 %1, %2, !dbg !223
  br i1 %or.cond, label %12, label %3, !dbg !223

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !224
  %5 = load i32* %4, align 4, !dbg !224, !tbaa !173
  %6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !225
  %7 = load i32* %6, align 4, !dbg !225, !tbaa !180
  %8 = add nsw i32 %7, %5, !dbg !226
  %9 = icmp sle i32 %8, %jvtx, !dbg !227
  %10 = icmp eq i32* %psize, null, !dbg !228
  %or.cond3 = or i1 %10, %9, !dbg !229
  %11 = icmp eq i32** %padj, null, !dbg !230
  %or.cond5 = or i1 %11, %or.cond3, !dbg !229
  br i1 %or.cond5, label %12, label %15, !dbg !229

; <label>:12                                      ; preds = %3, %0
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !231, !tbaa !186
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !233
  tail call void @exit(i32 -1) #6, !dbg !234
  unreachable, !dbg !234

; <label>:15                                      ; preds = %3
  %16 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !235
  %17 = load %struct._IVL** %16, align 8, !dbg !235, !tbaa !237
  %18 = icmp eq %struct._IVL* %17, null, !dbg !238
  br i1 %18, label %19, label %22, !dbg !239

; <label>:19                                      ; preds = %15
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !240, !tbaa !186
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !242
  tail call void @exit(i32 -1) #6, !dbg !243
  unreachable, !dbg !243

; <label>:22                                      ; preds = %15
  tail call void @IVL_listAndSize(%struct._IVL* %17, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Graph_adjAndEweights(%struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !68, metadata !165), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %jvtx, i64 0, metadata !69, metadata !165), !dbg !247
  tail call void @llvm.dbg.value(metadata i32* %psize, i64 0, metadata !70, metadata !165), !dbg !248
  tail call void @llvm.dbg.value(metadata i32** %padj, i64 0, metadata !71, metadata !165), !dbg !249
  tail call void @llvm.dbg.value(metadata i32** %pewghts, i64 0, metadata !72, metadata !165), !dbg !250
  %1 = icmp eq %struct._Graph* %g, null, !dbg !251
  %2 = icmp slt i32 %jvtx, 0, !dbg !253
  %or.cond = or i1 %1, %2, !dbg !254
  br i1 %or.cond, label %13, label %3, !dbg !254

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !255
  %5 = load i32* %4, align 4, !dbg !255, !tbaa !173
  %6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !256
  %7 = load i32* %6, align 4, !dbg !256, !tbaa !180
  %8 = add nsw i32 %7, %5, !dbg !257
  %9 = icmp sle i32 %8, %jvtx, !dbg !258
  %10 = icmp eq i32* %psize, null, !dbg !259
  %or.cond3 = or i1 %10, %9, !dbg !260
  %11 = icmp eq i32** %padj, null, !dbg !261
  %or.cond5 = or i1 %11, %or.cond3, !dbg !260
  %12 = icmp eq i32** %pewghts, null, !dbg !262
  %or.cond7 = or i1 %12, %or.cond5, !dbg !260
  br i1 %or.cond7, label %13, label %16, !dbg !260

; <label>:13                                      ; preds = %3, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !263, !tbaa !186
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([64 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #5, !dbg !265
  tail call void @exit(i32 -1) #6, !dbg !266
  unreachable, !dbg !266

; <label>:16                                      ; preds = %3
  %17 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !267
  %18 = load %struct._IVL** %17, align 8, !dbg !267, !tbaa !237
  %19 = icmp eq %struct._IVL* %18, null, !dbg !269
  br i1 %19, label %20, label %23, !dbg !270

; <label>:20                                      ; preds = %16
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !271, !tbaa !186
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #5, !dbg !273
  tail call void @exit(i32 -1) #6, !dbg !274
  unreachable, !dbg !274

; <label>:23                                      ; preds = %16
  %24 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !275
  %25 = load i32* %24, align 4, !dbg !275, !tbaa !277
  %26 = icmp sgt i32 %25, 1, !dbg !278
  br i1 %26, label %27, label %34, !dbg !279

; <label>:27                                      ; preds = %23
  %28 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !280
  %29 = load %struct._IVL** %28, align 8, !dbg !280, !tbaa !281
  %30 = icmp eq %struct._IVL* %29, null, !dbg !282
  br i1 %30, label %31, label %34, !dbg !283

; <label>:31                                      ; preds = %27
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !284, !tbaa !186
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts, i32 %25) #5, !dbg !286
  tail call void @exit(i32 -1) #6, !dbg !287
  unreachable, !dbg !287

; <label>:34                                      ; preds = %27, %23
  tail call void @IVL_listAndSize(%struct._IVL* %18, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !288
  %35 = load i32* %24, align 4, !dbg !289, !tbaa !277
  %36 = icmp sgt i32 %35, 1, !dbg !291
  br i1 %36, label %37, label %40, !dbg !292

; <label>:37                                      ; preds = %34
  %38 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !293
  %39 = load %struct._IVL** %38, align 8, !dbg !293, !tbaa !281
  tail call void @IVL_listAndSize(%struct._IVL* %39, i32 %jvtx, i32* %psize, i32** %pewghts) #5, !dbg !295
  br label %41, !dbg !296

; <label>:40                                      ; preds = %34
  store i32* null, i32** %pewghts, align 8, !dbg !297, !tbaa !186
  br label %41

; <label>:41                                      ; preds = %40, %37
  ret void, !dbg !299
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Graph_sizeOf(%struct._Graph* %g) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !77, metadata !165), !dbg !300
  %1 = icmp eq %struct._Graph* %g, null, !dbg !301
  br i1 %1, label %2, label %5, !dbg !303

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !304, !tbaa !186
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), %struct._Graph* null) #5, !dbg !306
  tail call void @exit(i32 -1) #6, !dbg !307
  unreachable, !dbg !307

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 48, i64 0, metadata !78, metadata !165), !dbg !308
  %6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !309
  %7 = load i32** %6, align 8, !dbg !309, !tbaa !190
  %8 = icmp eq i32* %7, null, !dbg !311
  br i1 %8, label %17, label %9, !dbg !312

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !313
  %11 = load i32* %10, align 4, !dbg !313, !tbaa !173
  %12 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !315
  %13 = load i32* %12, align 4, !dbg !315, !tbaa !180
  %14 = add nsw i32 %13, %11, !dbg !316
  %15 = shl i32 %14, 2, !dbg !317
  %16 = add i32 %15, 48, !dbg !318
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !78, metadata !165), !dbg !308
  br label %17, !dbg !319

; <label>:17                                      ; preds = %5, %9
  %nbytes.0 = phi i32 [ %16, %9 ], [ 48, %5 ]
  %18 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !320
  %19 = load %struct._IVL** %18, align 8, !dbg !320, !tbaa !237
  %20 = icmp eq %struct._IVL* %19, null, !dbg !322
  br i1 %20, label %24, label %21, !dbg !323

; <label>:21                                      ; preds = %17
  %22 = tail call i32 @IVL_sizeOf(%struct._IVL* %19) #5, !dbg !324
  %23 = add nsw i32 %22, %nbytes.0, !dbg !326
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !78, metadata !165), !dbg !308
  br label %24, !dbg !327

; <label>:24                                      ; preds = %17, %21
  %nbytes.1 = phi i32 [ %23, %21 ], [ %nbytes.0, %17 ]
  %25 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !328
  %26 = load %struct._IVL** %25, align 8, !dbg !328, !tbaa !281
  %27 = icmp eq %struct._IVL* %26, null, !dbg !330
  br i1 %27, label %31, label %28, !dbg !331

; <label>:28                                      ; preds = %24
  %29 = tail call i32 @IVL_sizeOf(%struct._IVL* %26) #5, !dbg !332
  %30 = add nsw i32 %29, %nbytes.1, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !78, metadata !165), !dbg !308
  br label %31, !dbg !335

; <label>:31                                      ; preds = %24, %28
  %nbytes.2 = phi i32 [ %30, %28 ], [ %nbytes.1, %24 ]
  ret i32 %nbytes.2, !dbg !336
}

; Function Attrs: optsize
declare i32 @IVL_sizeOf(%struct._IVL*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Graph_componentMap(%struct._Graph* %g) #0 {
  %usize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !92, metadata !165), !dbg !337
  %1 = icmp eq %struct._Graph* %g, null, !dbg !338
  br i1 %1, label %2, label %5, !dbg !340

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !341, !tbaa !186
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), %struct._Graph* null) #5, !dbg !343
  tail call void @exit(i32 -1) #6, !dbg !344
  unreachable, !dbg !344

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !345
  %7 = load i32* %6, align 4, !dbg !345, !tbaa !173
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !97, metadata !165), !dbg !347
  %8 = icmp slt i32 %7, 1, !dbg !348
  br i1 %8, label %45, label %.lr.ph7, !dbg !349

.lr.ph7:                                          ; preds = %5
  %9 = tail call %struct._IV* @IV_new() #5, !dbg !350
  tail call void @llvm.dbg.value(metadata %struct._IV* %9, i64 0, metadata !105, metadata !165), !dbg !351
  tail call void @IV_init(%struct._IV* %9, i32 %7, i32* null) #5, !dbg !352
  %10 = tail call i32* @IV_entries(%struct._IV* %9) #5, !dbg !353
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !103, metadata !165), !dbg !354
  %11 = tail call i32* @IVinit(i32 %7, i32 -1) #5, !dbg !355
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !102, metadata !165), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !100, metadata !165), !dbg !357
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !95, metadata !165), !dbg !358
  %12 = add i32 %7, -1, !dbg !359
  br label %13, !dbg !359

; <label>:13                                      ; preds = %44, %.lr.ph7
  %indvars.iv10 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next11, %44 ]
  %ncomp.06 = phi i32 [ 0, %.lr.ph7 ], [ %ncomp.1, %44 ]
  %14 = getelementptr inbounds i32* %10, i64 %indvars.iv10, !dbg !361
  %15 = load i32* %14, align 4, !dbg !361, !tbaa !200
  %16 = icmp eq i32 %15, -1, !dbg !365
  br i1 %16, label %17, label %._crit_edge13, !dbg !366

._crit_edge13:                                    ; preds = %13
  %.pre14 = trunc i64 %indvars.iv10 to i32, !dbg !359
  br label %44, !dbg !366

; <label>:17                                      ; preds = %13
  store i32 %ncomp.06, i32* %14, align 4, !dbg !367, !tbaa !200
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !165), !dbg !369
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !96, metadata !165), !dbg !370
  %18 = trunc i64 %indvars.iv10 to i32, !dbg !371
  store i32 %18, i32* %11, align 4, !dbg !371, !tbaa !200
  br label %21, !dbg !372

.loopexit:                                        ; preds = %38, %21
  %last.1.lcssa = phi i32 [ %last.04, %21 ], [ %last.2, %38 ]
  %19 = sext i32 %last.1.lcssa to i64, !dbg !373
  %20 = icmp slt i64 %indvars.iv8, %19, !dbg !373
  br i1 %20, label %.loopexit._crit_edge, label %42, !dbg !372

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds i32* %11, i64 %indvars.iv.next9
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !374, !tbaa !200
  br label %21, !dbg !372

; <label>:21                                      ; preds = %.loopexit._crit_edge, %17
  %22 = phi i32 [ %.pre, %.loopexit._crit_edge ], [ %18, %17 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %.loopexit._crit_edge ], [ 0, %17 ]
  %last.04 = phi i32 [ %last.1.lcssa, %.loopexit._crit_edge ], [ 0, %17 ]
  %indvars.iv.next9 = add nuw i64 %indvars.iv8, 1, !dbg !372
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !98, metadata !165), !dbg !376
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !99, metadata !165), !dbg !377
  call void @llvm.dbg.value(metadata i32** %uadj, i64 0, metadata !104, metadata !165), !dbg !378
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %22, i32* %usize, i32** %uadj) #7, !dbg !379
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !165), !dbg !380
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !99, metadata !165), !dbg !377
  %23 = load i32* %usize, align 4, !dbg !381, !tbaa !200
  %24 = icmp sgt i32 %23, 0, !dbg !384
  br i1 %24, label %.lr.ph, label %.loopexit, !dbg !385

.lr.ph:                                           ; preds = %21
  %25 = load i32** %uadj, align 8, !dbg !386, !tbaa !186
  br label %26, !dbg !385

; <label>:26                                      ; preds = %.lr.ph, %38
  %27 = phi i32 [ %23, %.lr.ph ], [ %39, %38 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %38 ]
  %last.11 = phi i32 [ %last.04, %.lr.ph ], [ %last.2, %38 ]
  call void @llvm.dbg.value(metadata i32** %uadj, i64 0, metadata !104, metadata !165), !dbg !378
  %28 = getelementptr inbounds i32* %25, i64 %indvars.iv, !dbg !386
  %29 = load i32* %28, align 4, !dbg !386, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !101, metadata !165), !dbg !388
  %30 = sext i32 %29 to i64, !dbg !389
  %31 = getelementptr inbounds i32* %10, i64 %30, !dbg !389
  %32 = load i32* %31, align 4, !dbg !389, !tbaa !200
  %33 = icmp eq i32 %32, -1, !dbg !391
  br i1 %33, label %34, label %38, !dbg !392

; <label>:34                                      ; preds = %26
  %35 = add nsw i32 %last.11, 1, !dbg !393
  call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !94, metadata !165), !dbg !369
  %36 = sext i32 %35 to i64, !dbg !395
  %37 = getelementptr inbounds i32* %11, i64 %36, !dbg !395
  store i32 %29, i32* %37, align 4, !dbg !396, !tbaa !200
  store i32 %ncomp.06, i32* %31, align 4, !dbg !397, !tbaa !200
  %.pre12 = load i32* %usize, align 4, !dbg !381, !tbaa !200
  br label %38, !dbg !398

; <label>:38                                      ; preds = %26, %34
  %39 = phi i32 [ %.pre12, %34 ], [ %27, %26 ], !dbg !385
  %last.2 = phi i32 [ %35, %34 ], [ %last.11, %26 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !385
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !99, metadata !165), !dbg !377
  %40 = sext i32 %39 to i64, !dbg !384
  %41 = icmp slt i64 %indvars.iv.next, %40, !dbg !384
  br i1 %41, label %26, label %.loopexit, !dbg !385

; <label>:42                                      ; preds = %.loopexit
  %43 = add nsw i32 %ncomp.06, 1, !dbg !399
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !95, metadata !165), !dbg !358
  br label %44, !dbg !400

; <label>:44                                      ; preds = %._crit_edge13, %42
  %lftr.wideiv.pre-phi = phi i32 [ %.pre14, %._crit_edge13 ], [ %18, %42 ], !dbg !359
  %ncomp.1 = phi i32 [ %ncomp.06, %._crit_edge13 ], [ %43, %42 ]
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !359
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %12, !dbg !359
  br i1 %exitcond, label %._crit_edge, label %13, !dbg !359

._crit_edge:                                      ; preds = %44
  call void @IVfree(i32* %11) #5, !dbg !401
  br label %45, !dbg !402

; <label>:45                                      ; preds = %5, %._crit_edge
  %.0 = phi %struct._IV* [ %9, %._crit_edge ], [ null, %5 ]
  ret %struct._IV* %.0, !dbg !403
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Graph_componentStats(%struct._Graph* %g, i32* %map, i32* %counts, i32* %weights) #0 {
  %v = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !110, metadata !165), !dbg !404
  tail call void @llvm.dbg.value(metadata i32* %map, i64 0, metadata !111, metadata !165), !dbg !405
  tail call void @llvm.dbg.value(metadata i32* %counts, i64 0, metadata !112, metadata !165), !dbg !406
  tail call void @llvm.dbg.value(metadata i32* %weights, i64 0, metadata !113, metadata !165), !dbg !407
  %1 = icmp eq %struct._Graph* %g, null, !dbg !408
  %2 = icmp eq i32* %map, null, !dbg !410
  %or.cond = or i1 %1, %2, !dbg !411
  %3 = icmp eq i32* %counts, null, !dbg !412
  %or.cond3 = or i1 %or.cond, %3, !dbg !411
  %4 = icmp eq i32* %weights, null, !dbg !413
  %or.cond5 = or i1 %or.cond3, %4, !dbg !411
  br i1 %or.cond5, label %5, label %8, !dbg !411

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !414, !tbaa !186
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([63 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32* %map, i32* %counts, i32* %weights) #5, !dbg !416
  tail call void @exit(i32 -1) #6, !dbg !417
  unreachable, !dbg !417

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !418
  %10 = load i32* %9, align 4, !dbg !418, !tbaa !173
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !115, metadata !165), !dbg !419
  tail call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %11 = call i32 @IVmax(i32 %10, i32* %map, i32* %v) #5, !dbg !421
  %12 = add nsw i32 %11, 1, !dbg !422
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !114, metadata !165), !dbg !423
  %13 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !424
  %14 = load i32** %13, align 8, !dbg !424, !tbaa !190
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !118, metadata !165), !dbg !426
  %15 = icmp eq i32* %14, null, !dbg !427
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !116, metadata !165), !dbg !420
  store i32 0, i32* %v, align 4, !dbg !428, !tbaa !200
  call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %16 = icmp sgt i32 %10, 0, !dbg !431
  br i1 %15, label %.preheader, label %.preheader6, !dbg !435

.preheader6:                                      ; preds = %8
  br i1 %16, label %.lr.ph7, label %.loopexit, !dbg !436

.preheader:                                       ; preds = %8
  br i1 %16, label %.lr.ph, label %44, !dbg !437

.lr.ph:                                           ; preds = %.preheader
  %17 = icmp sgt i32 %10, 1
  br label %33, !dbg !437

.lr.ph7:                                          ; preds = %.preheader6, %.lr.ph7
  %18 = phi i32 [ %31, %.lr.ph7 ], [ 0, %.preheader6 ]
  %19 = sext i32 %18 to i64, !dbg !438
  %20 = getelementptr inbounds i32* %map, i64 %19, !dbg !438
  %21 = load i32* %20, align 4, !dbg !438, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !117, metadata !165), !dbg !441
  %22 = sext i32 %21 to i64, !dbg !442
  %23 = getelementptr inbounds i32* %counts, i64 %22, !dbg !442
  %24 = load i32* %23, align 4, !dbg !443, !tbaa !200
  %25 = add nsw i32 %24, 1, !dbg !443
  store i32 %25, i32* %23, align 4, !dbg !443, !tbaa !200
  call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %26 = getelementptr inbounds i32* %14, i64 %19, !dbg !444
  %27 = load i32* %26, align 4, !dbg !444, !tbaa !200
  %28 = getelementptr inbounds i32* %weights, i64 %22, !dbg !445
  %29 = load i32* %28, align 4, !dbg !446, !tbaa !200
  %30 = add nsw i32 %29, %27, !dbg !446
  store i32 %30, i32* %28, align 4, !dbg !446, !tbaa !200
  call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %31 = add nsw i32 %18, 1, !dbg !447
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !116, metadata !165), !dbg !420
  store i32 %31, i32* %v, align 4, !dbg !447, !tbaa !200
  call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %32 = icmp slt i32 %31, %10, !dbg !448
  br i1 %32, label %.lr.ph7, label %.loopexit, !dbg !436

; <label>:33                                      ; preds = %.lr.ph, %33
  %34 = phi i32 [ 0, %.lr.ph ], [ %42, %33 ], !dbg !449
  %35 = sext i32 %34 to i64, !dbg !449
  %36 = getelementptr inbounds i32* %map, i64 %35, !dbg !449
  %37 = load i32* %36, align 4, !dbg !449, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !117, metadata !165), !dbg !441
  %38 = sext i32 %37 to i64, !dbg !451
  %39 = getelementptr inbounds i32* %counts, i64 %38, !dbg !451
  %40 = load i32* %39, align 4, !dbg !452, !tbaa !200
  %41 = add nsw i32 %40, 1, !dbg !452
  store i32 %41, i32* %39, align 4, !dbg !452, !tbaa !200
  call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %42 = add nsw i32 %34, 1, !dbg !453
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !116, metadata !165), !dbg !420
  call void @llvm.dbg.value(metadata i32* %v, i64 0, metadata !116, metadata !165), !dbg !420
  %43 = icmp slt i32 %42, %10, !dbg !431
  br i1 %43, label %33, label %._crit_edge, !dbg !437

._crit_edge:                                      ; preds = %33
  %smax = select i1 %17, i32 %10, i32 1
  store i32 %smax, i32* %v, align 4, !dbg !453, !tbaa !200
  br label %44, !dbg !437

; <label>:44                                      ; preds = %._crit_edge, %.preheader
  call void @IVcopy(i32 %12, i32* %weights, i32* %counts) #5, !dbg !454
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph7, %.preheader6, %44
  ret void, !dbg !455
}

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Graph* @Graph_subGraph(%struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #0 {
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !123, metadata !165), !dbg !456
  tail call void @llvm.dbg.value(metadata i32 %icomp, i64 0, metadata !124, metadata !165), !dbg !457
  tail call void @llvm.dbg.value(metadata i32* %compids, i64 0, metadata !125, metadata !165), !dbg !458
  tail call void @llvm.dbg.value(metadata i32** %pmap, i64 0, metadata !126, metadata !165), !dbg !459
  %1 = icmp eq %struct._Graph* %g, null, !dbg !460
  %2 = icmp slt i32 %icomp, 1, !dbg !462
  %or.cond = or i1 %1, %2, !dbg !463
  %3 = icmp eq i32* %compids, null, !dbg !464
  %or.cond3 = or i1 %or.cond, %3, !dbg !463
  %4 = icmp eq i32** %pmap, null, !dbg !465
  %or.cond5 = or i1 %or.cond3, %4, !dbg !463
  br i1 %or.cond5, label %5, label %8, !dbg !463

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !466, !tbaa !186
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #5, !dbg !468
  tail call void @exit(i32 -1) #6, !dbg !469
  unreachable, !dbg !469

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !470
  %10 = load i32* %9, align 4, !dbg !470, !tbaa !277
  %11 = icmp ugt i32 %10, 1, !dbg !472
  br i1 %11, label %12, label %15, !dbg !472

; <label>:12                                      ; preds = %8
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !473, !tbaa !186
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([84 x i8]* @.str10, i64 0, i64 0), %struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #5, !dbg !475
  tail call void @exit(i32 -1) #6, !dbg !476
  unreachable, !dbg !476

; <label>:15                                      ; preds = %8
  %16 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !477
  %17 = load i32* %16, align 4, !dbg !477, !tbaa !173
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !133, metadata !165), !dbg !478
  %18 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !479
  %19 = load i32* %18, align 4, !dbg !479, !tbaa !180
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !131, metadata !165), !dbg !480
  %20 = add nsw i32 %19, %17, !dbg !481
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !135, metadata !165), !dbg !482
  %21 = tail call i32* @IVinit(i32 %20, i32 -1) #5, !dbg !483
  tail call void @llvm.dbg.value(metadata i32* %21, i64 0, metadata !143, metadata !165), !dbg !484
  %22 = tail call i32* @IVinit(i32 %20, i32 -1) #5, !dbg !485
  tail call void @llvm.dbg.value(metadata i32* %22, i64 0, metadata !142, metadata !165), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !137, metadata !165), !dbg !487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !128, metadata !165), !dbg !488
  %23 = icmp sgt i32 %17, 0, !dbg !489
  br i1 %23, label %.lr.ph42, label %._crit_edge37, !dbg !492

.lr.ph42:                                         ; preds = %15
  %24 = add i32 %17, -1, !dbg !492
  br label %27, !dbg !492

.preheader:                                       ; preds = %37
  %25 = icmp sgt i32 %count.1, 0, !dbg !493
  br i1 %25, label %.lr.ph36, label %._crit_edge37, !dbg !496

.lr.ph36:                                         ; preds = %.preheader
  %26 = add i32 %count.1, -1, !dbg !496
  br label %38, !dbg !496

; <label>:27                                      ; preds = %37, %.lr.ph42
  %indvars.iv67 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next68, %37 ]
  %count.040 = phi i32 [ 0, %.lr.ph42 ], [ %count.1, %37 ]
  %28 = getelementptr inbounds i32* %compids, i64 %indvars.iv67, !dbg !497
  %29 = load i32* %28, align 4, !dbg !497, !tbaa !200
  %30 = icmp eq i32 %29, %icomp, !dbg !500
  br i1 %30, label %31, label %._crit_edge75, !dbg !501

._crit_edge75:                                    ; preds = %27
  %.pre76 = trunc i64 %indvars.iv67 to i32, !dbg !492
  br label %37, !dbg !501

; <label>:31                                      ; preds = %27
  %32 = sext i32 %count.040 to i64, !dbg !502
  %33 = getelementptr inbounds i32* %21, i64 %32, !dbg !502
  %34 = trunc i64 %indvars.iv67 to i32, !dbg !504
  store i32 %34, i32* %33, align 4, !dbg !504, !tbaa !200
  %35 = add nsw i32 %count.040, 1, !dbg !505
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !128, metadata !165), !dbg !488
  %36 = getelementptr inbounds i32* %22, i64 %indvars.iv67, !dbg !506
  store i32 %count.040, i32* %36, align 4, !dbg !507, !tbaa !200
  br label %37, !dbg !508

; <label>:37                                      ; preds = %._crit_edge75, %31
  %lftr.wideiv69.pre-phi = phi i32 [ %.pre76, %._crit_edge75 ], [ %34, %31 ], !dbg !492
  %count.1 = phi i32 [ %count.040, %._crit_edge75 ], [ %35, %31 ]
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1, !dbg !492
  %exitcond70 = icmp eq i32 %lftr.wideiv69.pre-phi, %24, !dbg !492
  br i1 %exitcond70, label %.preheader, label %27, !dbg !492

; <label>:38                                      ; preds = %._crit_edge32, %.lr.ph36
  %indvars.iv63 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next64, %._crit_edge32 ]
  %count.235 = phi i32 [ %count.1, %.lr.ph36 ], [ %count.3.lcssa, %._crit_edge32 ]
  %39 = getelementptr inbounds i32* %21, i64 %indvars.iv63, !dbg !509
  %40 = load i32* %39, align 4, !dbg !509, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !137, metadata !165), !dbg !487
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %40, i32* %vsize, i32** %vadj) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !129, metadata !165), !dbg !514
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %41 = load i32* %vsize, align 4, !dbg !515, !tbaa !200
  %42 = icmp sgt i32 %41, 0, !dbg !518
  br i1 %42, label %.lr.ph31, label %._crit_edge32, !dbg !519

.lr.ph31:                                         ; preds = %38
  %43 = load i32** %vadj, align 8, !dbg !520, !tbaa !186
  br label %44, !dbg !519

; <label>:44                                      ; preds = %.lr.ph31, %69
  %indvars.iv61 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next62, %69 ]
  %count.329 = phi i32 [ %count.235, %.lr.ph31 ], [ %count.4, %69 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  %45 = getelementptr inbounds i32* %43, i64 %indvars.iv61, !dbg !520
  %46 = load i32* %45, align 4, !dbg !520, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !140, metadata !165), !dbg !522
  %47 = icmp slt i32 %46, %17, !dbg !523
  %48 = sext i32 %46 to i64, !dbg !525
  br i1 %47, label %49, label %61, !dbg !528

; <label>:49                                      ; preds = %44
  %50 = getelementptr inbounds i32* %compids, i64 %48, !dbg !525
  %51 = load i32* %50, align 4, !dbg !525, !tbaa !200
  %52 = icmp eq i32 %51, 0, !dbg !529
  br i1 %52, label %53, label %69, !dbg !530

; <label>:53                                      ; preds = %49
  %54 = getelementptr inbounds i32* %22, i64 %48, !dbg !531
  %55 = load i32* %54, align 4, !dbg !531, !tbaa !200
  %56 = icmp eq i32 %55, -1, !dbg !532
  br i1 %56, label %57, label %69, !dbg !533

; <label>:57                                      ; preds = %53
  %58 = sext i32 %count.329 to i64, !dbg !534
  %59 = getelementptr inbounds i32* %21, i64 %58, !dbg !534
  store i32 %46, i32* %59, align 4, !dbg !536, !tbaa !200
  %60 = add nsw i32 %count.329, 1, !dbg !537
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !128, metadata !165), !dbg !488
  store i32 %count.329, i32* %54, align 4, !dbg !538, !tbaa !200
  br label %69, !dbg !539

; <label>:61                                      ; preds = %44
  %62 = getelementptr inbounds i32* %22, i64 %48, !dbg !540
  %63 = load i32* %62, align 4, !dbg !540, !tbaa !200
  %64 = icmp eq i32 %63, -1, !dbg !542
  br i1 %64, label %65, label %69, !dbg !543

; <label>:65                                      ; preds = %61
  %66 = sext i32 %count.329 to i64, !dbg !544
  %67 = getelementptr inbounds i32* %21, i64 %66, !dbg !544
  store i32 %46, i32* %67, align 4, !dbg !546, !tbaa !200
  %68 = add nsw i32 %count.329, 1, !dbg !547
  call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !128, metadata !165), !dbg !488
  store i32 %count.329, i32* %62, align 4, !dbg !548, !tbaa !200
  br label %69, !dbg !549

; <label>:69                                      ; preds = %57, %53, %49, %65, %61
  %count.4 = phi i32 [ %60, %57 ], [ %count.329, %53 ], [ %count.329, %49 ], [ %68, %65 ], [ %count.329, %61 ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !519
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %70 = load i32* %vsize, align 4, !dbg !515, !tbaa !200
  %71 = sext i32 %70 to i64, !dbg !518
  %72 = icmp slt i64 %indvars.iv.next62, %71, !dbg !518
  br i1 %72, label %44, label %._crit_edge32, !dbg !519

._crit_edge32:                                    ; preds = %69, %38
  %count.3.lcssa = phi i32 [ %count.235, %38 ], [ %count.4, %69 ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1, !dbg !496
  %lftr.wideiv65 = trunc i64 %indvars.iv63 to i32, !dbg !496
  %exitcond66 = icmp eq i32 %lftr.wideiv65, %26, !dbg !496
  br i1 %exitcond66, label %._crit_edge37, label %38, !dbg !496

._crit_edge37:                                    ; preds = %._crit_edge32, %15, %.preheader
  %73 = phi i1 [ false, %.preheader ], [ false, %15 ], [ %25, %._crit_edge32 ]
  %count.0.lcssa77 = phi i32 [ %count.1, %.preheader ], [ 0, %15 ], [ %count.1, %._crit_edge32 ]
  %count.2.lcssa = phi i32 [ %count.1, %.preheader ], [ 0, %15 ], [ %count.3.lcssa, %._crit_edge32 ]
  %74 = sub nsw i32 %count.2.lcssa, %count.0.lcssa77, !dbg !550
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !132, metadata !165), !dbg !551
  call void @llvm.dbg.value(metadata i32 %count.3.lcssa, i64 0, metadata !136, metadata !165), !dbg !552
  %75 = sext i32 %count.0.lcssa77 to i64, !dbg !553
  %76 = getelementptr inbounds i32* %21, i64 %75, !dbg !553
  call void @IVqsortUp(i32 %74, i32* %76) #5, !dbg !554
  call void @llvm.dbg.value(metadata i32 %count.1, i64 0, metadata !129, metadata !165), !dbg !514
  %77 = icmp sgt i32 %count.2.lcssa, %count.0.lcssa77, !dbg !555
  br i1 %77, label %.lr.ph26, label %._crit_edge27, !dbg !558

.lr.ph26:                                         ; preds = %._crit_edge37
  %78 = add i32 %count.2.lcssa, -1, !dbg !558
  br label %79, !dbg !558

; <label>:79                                      ; preds = %79, %.lr.ph26
  %indvars.iv57 = phi i64 [ %75, %.lr.ph26 ], [ %indvars.iv.next58, %79 ]
  %80 = getelementptr inbounds i32* %21, i64 %indvars.iv57, !dbg !559
  %81 = load i32* %80, align 4, !dbg !559, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !137, metadata !165), !dbg !487
  %82 = sext i32 %81 to i64, !dbg !561
  %83 = getelementptr inbounds i32* %22, i64 %82, !dbg !561
  %84 = trunc i64 %indvars.iv57 to i32, !dbg !562
  store i32 %84, i32* %83, align 4, !dbg !562, !tbaa !200
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, 1, !dbg !558
  %exitcond60 = icmp eq i32 %84, %78, !dbg !558
  br i1 %exitcond60, label %._crit_edge27, label %79, !dbg !558

._crit_edge27:                                    ; preds = %79, %._crit_edge37
  %85 = call %struct._Graph* @Graph_new() #5, !dbg !563
  call void @llvm.dbg.value(metadata %struct._Graph* %85, i64 0, metadata !127, metadata !165), !dbg !564
  %86 = load i32* %9, align 4, !dbg !565, !tbaa !277
  call void @Graph_init1(%struct._Graph* %85, i32 %86, i32 %count.0.lcssa77, i32 %74, i32 0, i32 1, i32 3) #5, !dbg !566
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !138, metadata !165), !dbg !567
  br i1 %73, label %.lr.ph22, label %._crit_edge23, !dbg !568

.lr.ph22:                                         ; preds = %._crit_edge27
  %87 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 6, !dbg !570
  %88 = add i32 %count.0.lcssa77, -1, !dbg !568
  br label %89, !dbg !568

; <label>:89                                      ; preds = %._crit_edge18, %.lr.ph22
  %indvars.iv53 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next54, %._crit_edge18 ]
  %90 = getelementptr inbounds i32* %21, i64 %indvars.iv53, !dbg !573
  %91 = load i32* %90, align 4, !dbg !573, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !137, metadata !165), !dbg !487
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %91, i32* %vsize, i32** %vadj) #7, !dbg !574
  %92 = load %struct._IVL** %87, align 8, !dbg !570, !tbaa !237
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %93 = load i32* %vsize, align 4, !dbg !575, !tbaa !200
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  %94 = load i32** %vadj, align 8, !dbg !576, !tbaa !186
  %95 = trunc i64 %indvars.iv53 to i32, !dbg !577
  call void @IVL_setPointerToList(%struct._IVL* %92, i32 %95, i32 %93, i32* %94) #5, !dbg !577
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !129, metadata !165), !dbg !514
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %96 = load i32* %vsize, align 4, !dbg !578, !tbaa !200
  %97 = icmp sgt i32 %96, 0, !dbg !581
  %98 = load i32** %vadj, align 8, !dbg !582, !tbaa !186
  br i1 %97, label %.lr.ph17, label %._crit_edge18, !dbg !584

.lr.ph17:                                         ; preds = %89, %.lr.ph17
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph17 ], [ 0, %89 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  %99 = getelementptr inbounds i32* %98, i64 %indvars.iv51, !dbg !582
  %100 = load i32* %99, align 4, !dbg !582, !tbaa !200
  %101 = sext i32 %100 to i64, !dbg !585
  %102 = getelementptr inbounds i32* %22, i64 %101, !dbg !585
  %103 = load i32* %102, align 4, !dbg !585, !tbaa !200
  store i32 %103, i32* %99, align 4, !dbg !586, !tbaa !200
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !584
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %104 = load i32* %vsize, align 4, !dbg !578, !tbaa !200
  %105 = sext i32 %104 to i64, !dbg !581
  %106 = icmp slt i64 %indvars.iv.next52, %105, !dbg !581
  br i1 %106, label %.lr.ph17, label %._crit_edge18, !dbg !584

._crit_edge18:                                    ; preds = %.lr.ph17, %89
  %.lcssa = phi i32 [ %96, %89 ], [ %104, %.lr.ph17 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  call void @IVqsortUp(i32 %.lcssa, i32* %98) #5, !dbg !587
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !568
  %exitcond56 = icmp eq i32 %95, %88, !dbg !568
  br i1 %exitcond56, label %._crit_edge23, label %89, !dbg !568

._crit_edge23:                                    ; preds = %._crit_edge18, %._crit_edge27
  %107 = icmp sgt i32 %74, 0, !dbg !588
  br i1 %107, label %108, label %136, !dbg !589

; <label>:108                                     ; preds = %._crit_edge23
  %109 = call i32* @IVinit(i32 %20, i32 -1) #5, !dbg !590
  call void @llvm.dbg.value(metadata i32* %109, i64 0, metadata !145, metadata !165), !dbg !591
  call void @llvm.dbg.value(metadata i32 %count.1, i64 0, metadata !138, metadata !165), !dbg !567
  br i1 %77, label %.lr.ph13, label %._crit_edge14, !dbg !592

.lr.ph13:                                         ; preds = %108
  %110 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 6, !dbg !594
  %111 = add i32 %count.2.lcssa, -1, !dbg !592
  br label %112, !dbg !592

; <label>:112                                     ; preds = %._crit_edge, %.lr.ph13
  %indvars.iv47 = phi i64 [ %75, %.lr.ph13 ], [ %indvars.iv.next48, %._crit_edge ]
  %113 = getelementptr inbounds i32* %21, i64 %indvars.iv47, !dbg !597
  %114 = load i32* %113, align 4, !dbg !597, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !137, metadata !165), !dbg !487
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %114, i32* %vsize, i32** %vadj) #7, !dbg !598
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !129, metadata !165), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !128, metadata !165), !dbg !488
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %115 = load i32* %vsize, align 4, !dbg !599, !tbaa !200
  %116 = icmp sgt i32 %115, 0, !dbg !602
  br i1 %116, label %.lr.ph10, label %._crit_edge, !dbg !603

.lr.ph10:                                         ; preds = %112
  %117 = load i32** %vadj, align 8, !dbg !604, !tbaa !186
  br label %118, !dbg !603

; <label>:118                                     ; preds = %.lr.ph10, %130
  %119 = phi i32 [ %115, %.lr.ph10 ], [ %131, %130 ]
  %indvars.iv45 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next46, %130 ]
  %count.59 = phi i32 [ 0, %.lr.ph10 ], [ %count.6, %130 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !144, metadata !165), !dbg !512
  %120 = getelementptr inbounds i32* %117, i64 %indvars.iv45, !dbg !604
  %121 = load i32* %120, align 4, !dbg !604, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !140, metadata !165), !dbg !522
  %122 = sext i32 %121 to i64, !dbg !606
  %123 = getelementptr inbounds i32* %22, i64 %122, !dbg !606
  %124 = load i32* %123, align 4, !dbg !606, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !141, metadata !165), !dbg !608
  %125 = icmp eq i32 %124, -1, !dbg !609
  br i1 %125, label %130, label %126, !dbg !610

; <label>:126                                     ; preds = %118
  %127 = add nsw i32 %count.59, 1, !dbg !611
  call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !128, metadata !165), !dbg !488
  %128 = sext i32 %count.59 to i64, !dbg !613
  %129 = getelementptr inbounds i32* %109, i64 %128, !dbg !613
  store i32 %124, i32* %129, align 4, !dbg !614, !tbaa !200
  %.pre72 = load i32* %vsize, align 4, !dbg !599, !tbaa !200
  br label %130, !dbg !615

; <label>:130                                     ; preds = %118, %126
  %131 = phi i32 [ %.pre72, %126 ], [ %119, %118 ], !dbg !603
  %count.6 = phi i32 [ %127, %126 ], [ %count.59, %118 ]
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !603
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !139, metadata !165), !dbg !511
  %132 = sext i32 %131 to i64, !dbg !602
  %133 = icmp slt i64 %indvars.iv.next46, %132, !dbg !602
  br i1 %133, label %118, label %._crit_edge, !dbg !603

._crit_edge:                                      ; preds = %130, %112
  %count.5.lcssa = phi i32 [ 0, %112 ], [ %count.6, %130 ]
  call void @IVqsortUp(i32 %count.5.lcssa, i32* %109) #5, !dbg !616
  %134 = load %struct._IVL** %110, align 8, !dbg !594, !tbaa !237
  %135 = trunc i64 %indvars.iv47 to i32, !dbg !617
  call void @IVL_setList(%struct._IVL* %134, i32 %135, i32 %count.5.lcssa, i32* %109) #5, !dbg !617
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1, !dbg !592
  %exitcond50 = icmp eq i32 %135, %111, !dbg !592
  br i1 %exitcond50, label %._crit_edge14, label %112, !dbg !592

._crit_edge14:                                    ; preds = %._crit_edge, %108
  call void @IVfree(i32* %109) #5, !dbg !618
  br label %136, !dbg !619

; <label>:136                                     ; preds = %._crit_edge14, %._crit_edge23
  %137 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 0, !dbg !620
  %138 = load i32* %137, align 4, !dbg !620, !tbaa !277
  %139 = srem i32 %138, 2, !dbg !622
  %140 = icmp eq i32 %139, 1, !dbg !623
  br i1 %140, label %141, label %162, !dbg !624

; <label>:141                                     ; preds = %136
  %142 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 4, !dbg !625
  store i32 0, i32* %142, align 4, !dbg !627, !tbaa !628
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !138, metadata !165), !dbg !567
  %143 = icmp sgt i32 %count.2.lcssa, 0, !dbg !629
  br i1 %143, label %.lr.ph, label %.loopexit, !dbg !632

.lr.ph:                                           ; preds = %141
  %144 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !633
  %145 = load i32** %144, align 8, !dbg !633, !tbaa !190
  %146 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 7, !dbg !635
  %147 = load i32** %146, align 8, !dbg !635, !tbaa !190
  %148 = add i32 %count.2.lcssa, -1, !dbg !632
  %149 = load i32* %21, align 4, !dbg !636, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !137, metadata !165), !dbg !487
  %150 = sext i32 %149 to i64, !dbg !637
  %151 = getelementptr inbounds i32* %145, i64 %150, !dbg !637
  %152 = load i32* %151, align 4, !dbg !637, !tbaa !200
  store i32 %152, i32* %142, align 4, !dbg !638, !tbaa !628
  %153 = load i32* %151, align 4, !dbg !639, !tbaa !200
  store i32 %153, i32* %147, align 4, !dbg !640, !tbaa !200
  %exitcond79 = icmp eq i32 %148, 0, !dbg !632
  br i1 %exitcond79, label %.loopexit, label %._crit_edge73, !dbg !632

._crit_edge73:                                    ; preds = %.lr.ph, %._crit_edge73
  %indvars.iv80 = phi i64 [ %indvars.iv.next, %._crit_edge73 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv80, 1, !dbg !632
  %.pre74 = load i32* %142, align 4, !dbg !638, !tbaa !628
  %154 = getelementptr inbounds i32* %21, i64 %indvars.iv.next, !dbg !636
  %155 = load i32* %154, align 4, !dbg !636, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !137, metadata !165), !dbg !487
  %156 = sext i32 %155 to i64, !dbg !637
  %157 = getelementptr inbounds i32* %145, i64 %156, !dbg !637
  %158 = load i32* %157, align 4, !dbg !637, !tbaa !200
  %159 = add nsw i32 %.pre74, %158, !dbg !638
  store i32 %159, i32* %142, align 4, !dbg !638, !tbaa !628
  %160 = load i32* %157, align 4, !dbg !639, !tbaa !200
  %161 = getelementptr inbounds i32* %147, i64 %indvars.iv.next, !dbg !641
  store i32 %160, i32* %161, align 4, !dbg !640, !tbaa !200
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !632
  %exitcond = icmp eq i32 %lftr.wideiv, %148, !dbg !632
  br i1 %exitcond, label %.loopexit, label %._crit_edge73, !dbg !632

; <label>:162                                     ; preds = %136
  %163 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 1, !dbg !642
  %164 = load i32* %163, align 4, !dbg !642, !tbaa !173
  %165 = getelementptr inbounds %struct._Graph* %85, i64 0, i32 4, !dbg !644
  store i32 %164, i32* %165, align 4, !dbg !645, !tbaa !628
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge73, %141, %162
  call void @IVfree(i32* %22) #5, !dbg !646
  %166 = call i32* @IVinit(i32 %count.2.lcssa, i32 -1) #5, !dbg !647
  store i32* %166, i32** %pmap, align 8, !dbg !648, !tbaa !186
  call void @IVcopy(i32 %count.2.lcssa, i32* %166, i32* %21) #5, !dbg !649
  call void @IVfree(i32* %21) #5, !dbg !650
  ret %struct._Graph* %85, !dbg !651
}

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #3

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @IVL_setPointerToList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Graph_isSymmetric(%struct._Graph* %graph) #0 {
  %vsize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %wadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Graph* %graph, i64 0, metadata !150, metadata !165), !dbg !652
  %1 = icmp eq %struct._Graph* %graph, null, !dbg !653
  br i1 %1, label %2, label %5, !dbg !655

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !656, !tbaa !186
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str11, i64 0, i64 0), %struct._Graph* null) #5, !dbg !658
  tail call void @exit(i32 -1) #6, !dbg !659
  unreachable, !dbg !659

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !154, metadata !165), !dbg !660
  %6 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !661
  %7 = load i32* %6, align 4, !dbg !661, !tbaa !173
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !153, metadata !165), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !155, metadata !165), !dbg !663
  %8 = icmp sgt i32 %7, 0, !dbg !664
  br i1 %8, label %.lr.ph13, label %._crit_edge14, !dbg !667

.lr.ph13:                                         ; preds = %5
  %9 = add i32 %7, -1, !dbg !667
  br label %10, !dbg !667

; <label>:10                                      ; preds = %._crit_edge8, %.lr.ph13
  %v.011 = phi i32 [ 0, %.lr.ph13 ], [ %37, %._crit_edge8 ]
  %rc.010 = phi i32 [ 1, %.lr.ph13 ], [ %rc.1.lcssa, %._crit_edge8 ]
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !156, metadata !165), !dbg !668
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !159, metadata !165), !dbg !669
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %v.011, i32* %vsize, i32** %vadj) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !151, metadata !165), !dbg !672
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !156, metadata !165), !dbg !668
  %11 = load i32* %vsize, align 4, !dbg !673, !tbaa !200
  %12 = icmp sgt i32 %11, 0, !dbg !676
  br i1 %12, label %.lr.ph7, label %._crit_edge8, !dbg !677

.lr.ph7:                                          ; preds = %10, %33
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %33 ], [ 0, %10 ]
  %rc.14 = phi i32 [ %rc.2, %33 ], [ %rc.010, %10 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !159, metadata !165), !dbg !669
  %13 = load i32** %vadj, align 8, !dbg !678, !tbaa !186
  %14 = getelementptr inbounds i32* %13, i64 %indvars.iv17, !dbg !678
  %15 = load i32* %14, align 4, !dbg !678, !tbaa !200
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !157, metadata !165), !dbg !680
  call void @llvm.dbg.value(metadata i32* %wsize, i64 0, metadata !158, metadata !165), !dbg !681
  call void @llvm.dbg.value(metadata i32** %wadj, i64 0, metadata !160, metadata !165), !dbg !682
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %15, i32* %wsize, i32** %wadj) #7, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !152, metadata !165), !dbg !684
  call void @llvm.dbg.value(metadata i32* %wsize, i64 0, metadata !158, metadata !165), !dbg !681
  %16 = load i32* %wsize, align 4, !dbg !685, !tbaa !200
  %17 = icmp sgt i32 %16, 0, !dbg !688
  br i1 %17, label %.lr.ph, label %28, !dbg !689

.lr.ph:                                           ; preds = %.lr.ph7
  %18 = load i32** %wadj, align 8, !dbg !690, !tbaa !186
  %19 = sext i32 %16 to i64, !dbg !689
  br label %20, !dbg !689

; <label>:20                                      ; preds = %.lr.ph, %24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  call void @llvm.dbg.value(metadata i32** %wadj, i64 0, metadata !160, metadata !165), !dbg !682
  %21 = getelementptr inbounds i32* %18, i64 %indvars.iv, !dbg !690
  %22 = load i32* %21, align 4, !dbg !690, !tbaa !200
  %23 = icmp eq i32 %22, %v.011, !dbg !693
  br i1 %23, label %._crit_edge, label %24, !dbg !694

; <label>:24                                      ; preds = %20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !689
  call void @llvm.dbg.value(metadata i32* %wsize, i64 0, metadata !158, metadata !165), !dbg !681
  %25 = icmp slt i64 %indvars.iv.next, %19, !dbg !688
  br i1 %25, label %20, label %._crit_edge2, !dbg !689

._crit_edge:                                      ; preds = %20
  %26 = trunc i64 %indvars.iv to i32, !dbg !694
  br label %28, !dbg !694

._crit_edge2:                                     ; preds = %24
  %27 = trunc i64 %indvars.iv.next to i32, !dbg !689
  br label %28, !dbg !689

; <label>:28                                      ; preds = %._crit_edge2, %._crit_edge, %.lr.ph7
  %jj.0.lcssa = phi i32 [ %26, %._crit_edge ], [ %27, %._crit_edge2 ], [ 0, %.lr.ph7 ]
  call void @llvm.dbg.value(metadata i32* %wsize, i64 0, metadata !158, metadata !165), !dbg !681
  %29 = icmp eq i32 %jj.0.lcssa, %16, !dbg !695
  br i1 %29, label %30, label %33, !dbg !697

; <label>:30                                      ; preds = %28
  %31 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !698, !tbaa !186
  %32 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([44 x i8]* @.str12, i64 0, i64 0), i32 %v.011, i32 %15, i32 %15, i32 %v.011) #5, !dbg !700
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !165), !dbg !660
  br label %33, !dbg !701

; <label>:33                                      ; preds = %28, %30
  %rc.2 = phi i32 [ 0, %30 ], [ %rc.14, %28 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !677
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !156, metadata !165), !dbg !668
  %34 = load i32* %vsize, align 4, !dbg !673, !tbaa !200
  %35 = sext i32 %34 to i64, !dbg !676
  %36 = icmp slt i64 %indvars.iv.next18, %35, !dbg !676
  br i1 %36, label %.lr.ph7, label %._crit_edge8, !dbg !677

._crit_edge8:                                     ; preds = %33, %10
  %rc.1.lcssa = phi i32 [ %rc.010, %10 ], [ %rc.2, %33 ]
  %37 = add nuw nsw i32 %v.011, 1, !dbg !702
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !155, metadata !165), !dbg !663
  %exitcond = icmp eq i32 %v.011, %9, !dbg !667
  br i1 %exitcond, label %._crit_edge14, label %10, !dbg !667

._crit_edge14:                                    ; preds = %._crit_edge8, %5
  %rc.0.lcssa = phi i32 [ 1, %5 ], [ %rc.1.lcssa, %._crit_edge8 ]
  ret i32 %rc.0.lcssa, !dbg !703
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
!llvm.module.flags = !{!161, !162, !163}
!llvm.ident = !{!164}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !56, !64, !73, !79, !106, !119, !148}
!6 = !DISubprogram(name: "Graph_externalDegree", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Graph*, i32)* @Graph_externalDegree, variables: !47)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !12, line: 49, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !12, line: 50, size: 384, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !45, !46}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 51, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !13, file: !12, line: 52, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !13, file: !12, line: 53, baseType: !9, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !13, file: !12, line: 54, baseType: !9, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !13, file: !12, line: 55, baseType: !9, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !13, file: !12, line: 56, baseType: !9, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !13, file: !12, line: 57, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !24, line: 55, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !24, line: 79, size: 384, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !33, !35, !36}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 80, baseType: !9, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !25, file: !24, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !25, file: !24, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !25, file: !24, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !25, file: !24, line: 84, baseType: !32, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !25, file: !24, line: 85, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !25, file: !24, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !25, file: !24, line: 87, baseType: !37, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !24, line: 56, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !24, line: 102, size: 192, align: 64, elements: !40)
!40 = !{!41, !42, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !24, line: 103, baseType: !9, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !39, file: !24, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !39, file: !24, line: 105, baseType: !32, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !24, line: 106, baseType: !37, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !13, file: !12, line: 58, baseType: !32, size: 64, align: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !13, file: !12, line: 59, baseType: !22, size: 64, align: 64, offset: 320)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !6, file: !1, line: 17, type: !10)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !6, file: !1, line: 18, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 20, type: !9)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !6, file: !1, line: 20, type: !9)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !6, file: !1, line: 20, type: !9)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weight", scope: !6, file: !1, line: 20, type: !9)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !6, file: !1, line: 21, type: !32)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vwghts", scope: !6, file: !1, line: 21, type: !32)
!56 = !DISubprogram(name: "Graph_adjAndSize", scope: !1, file: !1, line: 50, type: !57, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Graph*, i32, i32*, i32**)* @Graph_adjAndSize, variables: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !10, !9, !32, !34}
!59 = !{!60, !61, !62, !63}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !56, file: !1, line: 51, type: !10)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jvtx", arg: 2, scope: !56, file: !1, line: 52, type: !9)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psize", arg: 3, scope: !56, file: !1, line: 53, type: !32)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "padj", arg: 4, scope: !56, file: !1, line: 54, type: !34)
!64 = !DISubprogram(name: "Graph_adjAndEweights", scope: !1, file: !1, line: 94, type: !65, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Graph*, i32, i32*, i32**, i32**)* @Graph_adjAndEweights, variables: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !10, !9, !32, !34, !34}
!67 = !{!68, !69, !70, !71, !72}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !64, file: !1, line: 95, type: !10)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jvtx", arg: 2, scope: !64, file: !1, line: 96, type: !9)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psize", arg: 3, scope: !64, file: !1, line: 97, type: !32)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "padj", arg: 4, scope: !64, file: !1, line: 98, type: !34)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pewghts", arg: 5, scope: !64, file: !1, line: 99, type: !34)
!73 = !DISubprogram(name: "Graph_sizeOf", scope: !1, file: !1, line: 145, type: !74, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Graph*)* @Graph_sizeOf, variables: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!9, !10}
!76 = !{!77, !78}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !73, file: !1, line: 146, type: !10)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !73, file: !1, line: 148, type: !9)
!79 = !DISubprogram(name: "Graph_componentMap", scope: !1, file: !1, line: 181, type: !80, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Graph*)* @Graph_componentMap, variables: !91)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !10}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !84, line: 20, baseType: !85)
!84 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !84, line: 21, size: 192, align: 64, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !85, file: !84, line: 22, baseType: !9, size: 32, align: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !85, file: !84, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !85, file: !84, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !85, file: !84, line: 25, baseType: !32, size: 64, align: 64, offset: 128)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !79, file: !1, line: 182, type: !10)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !79, file: !1, line: 184, type: !9)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !79, file: !1, line: 184, type: !9)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncomp", scope: !79, file: !1, line: 184, type: !9)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now", scope: !79, file: !1, line: 184, type: !9)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !79, file: !1, line: 184, type: !9)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !79, file: !1, line: 184, type: !9)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "usize", scope: !79, file: !1, line: 184, type: !9)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !79, file: !1, line: 184, type: !9)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !79, file: !1, line: 184, type: !9)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !79, file: !1, line: 185, type: !32)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !79, file: !1, line: 185, type: !32)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uadj", scope: !79, file: !1, line: 185, type: !32)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !79, file: !1, line: 186, type: !82)
!106 = !DISubprogram(name: "Graph_componentStats", scope: !1, file: !1, line: 249, type: !107, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Graph*, i32*, i32*, i32*)* @Graph_componentStats, variables: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !10, !32, !32, !32}
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !106, file: !1, line: 250, type: !10)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "map", arg: 2, scope: !106, file: !1, line: 251, type: !32)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "counts", arg: 3, scope: !106, file: !1, line: 252, type: !32)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "weights", arg: 4, scope: !106, file: !1, line: 253, type: !32)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncomp", scope: !106, file: !1, line: 255, type: !9)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !106, file: !1, line: 255, type: !9)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !106, file: !1, line: 255, type: !9)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vcomp", scope: !106, file: !1, line: 255, type: !9)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vwghts", scope: !106, file: !1, line: 256, type: !32)
!119 = !DISubprogram(name: "Graph_subGraph", scope: !1, file: !1, line: 308, type: !120, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Graph* (%struct._Graph*, i32, i32*, i32**)* @Graph_subGraph, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!10, !10, !9, !32, !34}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !119, file: !1, line: 309, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "icomp", arg: 2, scope: !119, file: !1, line: 310, type: !9)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compids", arg: 3, scope: !119, file: !1, line: 311, type: !32)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pmap", arg: 4, scope: !119, file: !1, line: 312, type: !34)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gsub", scope: !119, file: !1, line: 314, type: !10)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !119, file: !1, line: 315, type: !9)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !119, file: !1, line: 315, type: !9)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iv", scope: !119, file: !1, line: 315, type: !9)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvbnd", scope: !119, file: !1, line: 315, type: !9)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvbndsub", scope: !119, file: !1, line: 315, type: !9)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !119, file: !1, line: 315, type: !9)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtxsub", scope: !119, file: !1, line: 315, type: !9)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtot", scope: !119, file: !1, line: 315, type: !9)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtotsub", scope: !119, file: !1, line: 315, type: !9)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !119, file: !1, line: 316, type: !9)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsub", scope: !119, file: !1, line: 316, type: !9)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !119, file: !1, line: 316, type: !9)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !119, file: !1, line: 316, type: !9)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wsub", scope: !119, file: !1, line: 316, type: !9)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "invmap", scope: !119, file: !1, line: 317, type: !32)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !119, file: !1, line: 317, type: !32)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !119, file: !1, line: 317, type: !32)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ind", scope: !146, file: !1, line: 407, type: !32)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 406, column: 21)
!147 = distinct !DILexicalBlock(scope: !119, file: !1, line: 406, column: 6)
!148 = !DISubprogram(name: "Graph_isSymmetric", scope: !1, file: !1, line: 460, type: !74, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Graph*)* @Graph_isSymmetric, variables: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "graph", arg: 1, scope: !148, file: !1, line: 461, type: !10)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !148, file: !1, line: 463, type: !9)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !148, file: !1, line: 463, type: !9)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !148, file: !1, line: 463, type: !9)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !148, file: !1, line: 463, type: !9)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !148, file: !1, line: 463, type: !9)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !148, file: !1, line: 463, type: !9)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !148, file: !1, line: 463, type: !9)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wsize", scope: !148, file: !1, line: 463, type: !9)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !148, file: !1, line: 464, type: !32)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wadj", scope: !148, file: !1, line: 464, type: !32)
!161 = !{i32 2, !"Dwarf Version", i32 2}
!162 = !{i32 2, !"Debug Info Version", i32 700000003}
!163 = !{i32 1, !"PIC Level", i32 2}
!164 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!165 = !DIExpression()
!166 = !DILocation(line: 17, column: 16, scope: !6)
!167 = !DILocation(line: 18, column: 15, scope: !6)
!168 = !DILocation(line: 27, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !6, file: !1, line: 27, column: 7)
!170 = !DILocation(line: 27, column: 22, scope: !169)
!171 = !DILocation(line: 27, column: 17, scope: !169)
!172 = !DILocation(line: 27, column: 32, scope: !169)
!173 = !{!174, !175, i64 4}
!174 = !{!"_Graph", !175, i64 0, !175, i64 4, !175, i64 8, !175, i64 12, !175, i64 16, !175, i64 20, !178, i64 24, !178, i64 32, !178, i64 40}
!175 = !{!"int", !176, i64 0}
!176 = !{!"omnipotent char", !177, i64 0}
!177 = !{!"Simple C/C++ TBAA"}
!178 = !{!"any pointer", !176, i64 0}
!179 = !DILocation(line: 27, column: 42, scope: !169)
!180 = !{!174, !175, i64 8}
!181 = !DILocation(line: 27, column: 37, scope: !169)
!182 = !DILocation(line: 27, column: 48, scope: !169)
!183 = !DILocation(line: 27, column: 7, scope: !6)
!184 = !DILocation(line: 28, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !169, file: !1, line: 27, column: 55)
!186 = !{!178, !178, i64 0}
!187 = !DILocation(line: 28, column: 4, scope: !185)
!188 = !DILocation(line: 30, column: 4, scope: !185)
!189 = !DILocation(line: 32, column: 13, scope: !6)
!190 = !{!174, !178, i64 32}
!191 = !DILocation(line: 21, column: 15, scope: !6)
!192 = !DILocation(line: 20, column: 11, scope: !6)
!193 = !DILocation(line: 21, column: 8, scope: !6)
!194 = !DILocation(line: 33, column: 1, scope: !6)
!195 = !DILocation(line: 20, column: 7, scope: !6)
!196 = !DILocation(line: 20, column: 21, scope: !6)
!197 = !DILocation(line: 34, column: 33, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 34, column: 1)
!199 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 1)
!200 = !{!175, !175, i64 0}
!201 = !DILocation(line: 34, column: 31, scope: !198)
!202 = !DILocation(line: 34, column: 1, scope: !199)
!203 = !DILocation(line: 35, column: 14, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 35, column: 9)
!205 = distinct !DILexicalBlock(scope: !198, file: !1, line: 34, column: 48)
!206 = !DILocation(line: 36, column: 25, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 35, column: 31)
!208 = !DILocation(line: 20, column: 18, scope: !6)
!209 = !DILocation(line: 35, column: 24, scope: !204)
!210 = !DILocation(line: 35, column: 9, scope: !205)
!211 = !DILocation(line: 36, column: 17, scope: !207)
!212 = !DILocation(line: 36, column: 36, scope: !207)
!213 = !DILocation(line: 36, column: 14, scope: !207)
!214 = !DILocation(line: 37, column: 4, scope: !207)
!215 = !DILocation(line: 39, column: 1, scope: !6)
!216 = !DILocation(line: 51, column: 13, scope: !56)
!217 = !DILocation(line: 52, column: 12, scope: !56)
!218 = !DILocation(line: 53, column: 13, scope: !56)
!219 = !DILocation(line: 54, column: 14, scope: !56)
!220 = !DILocation(line: 61, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !56, file: !1, line: 61, column: 7)
!222 = !DILocation(line: 61, column: 25, scope: !221)
!223 = !DILocation(line: 61, column: 17, scope: !221)
!224 = !DILocation(line: 61, column: 35, scope: !221)
!225 = !DILocation(line: 61, column: 45, scope: !221)
!226 = !DILocation(line: 61, column: 40, scope: !221)
!227 = !DILocation(line: 61, column: 51, scope: !221)
!228 = !DILocation(line: 62, column: 13, scope: !221)
!229 = !DILocation(line: 62, column: 4, scope: !221)
!230 = !DILocation(line: 62, column: 29, scope: !221)
!231 = !DILocation(line: 63, column: 12, scope: !232)
!232 = distinct !DILexicalBlock(scope: !221, file: !1, line: 62, column: 39)
!233 = !DILocation(line: 63, column: 4, scope: !232)
!234 = !DILocation(line: 66, column: 4, scope: !232)
!235 = !DILocation(line: 68, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !56, file: !1, line: 68, column: 6)
!237 = !{!174, !178, i64 24}
!238 = !DILocation(line: 68, column: 16, scope: !236)
!239 = !DILocation(line: 68, column: 6, scope: !56)
!240 = !DILocation(line: 69, column: 12, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 68, column: 26)
!242 = !DILocation(line: 69, column: 4, scope: !241)
!243 = !DILocation(line: 71, column: 4, scope: !241)
!244 = !DILocation(line: 73, column: 1, scope: !56)
!245 = !DILocation(line: 82, column: 1, scope: !56)
!246 = !DILocation(line: 95, column: 13, scope: !64)
!247 = !DILocation(line: 96, column: 12, scope: !64)
!248 = !DILocation(line: 97, column: 13, scope: !64)
!249 = !DILocation(line: 98, column: 14, scope: !64)
!250 = !DILocation(line: 99, column: 14, scope: !64)
!251 = !DILocation(line: 106, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !64, file: !1, line: 106, column: 7)
!253 = !DILocation(line: 106, column: 25, scope: !252)
!254 = !DILocation(line: 106, column: 17, scope: !252)
!255 = !DILocation(line: 106, column: 35, scope: !252)
!256 = !DILocation(line: 106, column: 45, scope: !252)
!257 = !DILocation(line: 106, column: 40, scope: !252)
!258 = !DILocation(line: 106, column: 51, scope: !252)
!259 = !DILocation(line: 107, column: 13, scope: !252)
!260 = !DILocation(line: 107, column: 4, scope: !252)
!261 = !DILocation(line: 107, column: 29, scope: !252)
!262 = !DILocation(line: 107, column: 48, scope: !252)
!263 = !DILocation(line: 108, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !1, line: 107, column: 58)
!265 = !DILocation(line: 108, column: 4, scope: !264)
!266 = !DILocation(line: 112, column: 4, scope: !264)
!267 = !DILocation(line: 114, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !64, file: !1, line: 114, column: 6)
!269 = !DILocation(line: 114, column: 16, scope: !268)
!270 = !DILocation(line: 114, column: 6, scope: !64)
!271 = !DILocation(line: 115, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 114, column: 26)
!273 = !DILocation(line: 115, column: 4, scope: !272)
!274 = !DILocation(line: 119, column: 4, scope: !272)
!275 = !DILocation(line: 121, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !64, file: !1, line: 121, column: 6)
!277 = !{!174, !175, i64 0}
!278 = !DILocation(line: 121, column: 14, scope: !276)
!279 = !DILocation(line: 121, column: 19, scope: !276)
!280 = !DILocation(line: 121, column: 25, scope: !276)
!281 = !{!174, !178, i64 40}
!282 = !DILocation(line: 121, column: 34, scope: !276)
!283 = !DILocation(line: 121, column: 6, scope: !64)
!284 = !DILocation(line: 122, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !276, file: !1, line: 121, column: 44)
!286 = !DILocation(line: 122, column: 4, scope: !285)
!287 = !DILocation(line: 126, column: 4, scope: !285)
!288 = !DILocation(line: 128, column: 1, scope: !64)
!289 = !DILocation(line: 129, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !64, file: !1, line: 129, column: 6)
!291 = !DILocation(line: 129, column: 14, scope: !290)
!292 = !DILocation(line: 129, column: 6, scope: !64)
!293 = !DILocation(line: 130, column: 23, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 129, column: 21)
!295 = !DILocation(line: 130, column: 4, scope: !294)
!296 = !DILocation(line: 131, column: 1, scope: !294)
!297 = !DILocation(line: 132, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !1, line: 131, column: 8)
!299 = !DILocation(line: 134, column: 1, scope: !64)
!300 = !DILocation(line: 146, column: 13, scope: !73)
!301 = !DILocation(line: 154, column: 8, scope: !302)
!302 = distinct !DILexicalBlock(scope: !73, file: !1, line: 154, column: 6)
!303 = !DILocation(line: 154, column: 6, scope: !73)
!304 = !DILocation(line: 155, column: 12, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !1, line: 154, column: 18)
!306 = !DILocation(line: 155, column: 4, scope: !305)
!307 = !DILocation(line: 157, column: 4, scope: !305)
!308 = !DILocation(line: 148, column: 7, scope: !73)
!309 = !DILocation(line: 160, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !73, file: !1, line: 160, column: 6)
!311 = !DILocation(line: 160, column: 16, scope: !310)
!312 = !DILocation(line: 160, column: 6, scope: !73)
!313 = !DILocation(line: 161, column: 18, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !1, line: 160, column: 26)
!315 = !DILocation(line: 161, column: 28, scope: !314)
!316 = !DILocation(line: 161, column: 23, scope: !314)
!317 = !DILocation(line: 161, column: 34, scope: !314)
!318 = !DILocation(line: 161, column: 11, scope: !314)
!319 = !DILocation(line: 162, column: 1, scope: !314)
!320 = !DILocation(line: 163, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !73, file: !1, line: 163, column: 6)
!322 = !DILocation(line: 163, column: 16, scope: !321)
!323 = !DILocation(line: 163, column: 6, scope: !73)
!324 = !DILocation(line: 164, column: 14, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 163, column: 26)
!326 = !DILocation(line: 164, column: 11, scope: !325)
!327 = !DILocation(line: 165, column: 1, scope: !325)
!328 = !DILocation(line: 166, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !73, file: !1, line: 166, column: 6)
!330 = !DILocation(line: 166, column: 18, scope: !329)
!331 = !DILocation(line: 166, column: 6, scope: !73)
!332 = !DILocation(line: 167, column: 14, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 166, column: 28)
!334 = !DILocation(line: 167, column: 11, scope: !333)
!335 = !DILocation(line: 168, column: 1, scope: !333)
!336 = !DILocation(line: 169, column: 1, scope: !73)
!337 = !DILocation(line: 182, column: 13, scope: !79)
!338 = !DILocation(line: 192, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !79, file: !1, line: 192, column: 6)
!340 = !DILocation(line: 192, column: 6, scope: !79)
!341 = !DILocation(line: 193, column: 12, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 192, column: 18)
!343 = !DILocation(line: 193, column: 4, scope: !342)
!344 = !DILocation(line: 195, column: 4, scope: !342)
!345 = !DILocation(line: 197, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !79, file: !1, line: 197, column: 6)
!347 = !DILocation(line: 184, column: 29, scope: !79)
!348 = !DILocation(line: 197, column: 23, scope: !346)
!349 = !DILocation(line: 197, column: 6, scope: !79)
!350 = !DILocation(line: 200, column: 9, scope: !79)
!351 = !DILocation(line: 186, column: 8, scope: !79)
!352 = !DILocation(line: 201, column: 1, scope: !79)
!353 = !DILocation(line: 202, column: 7, scope: !79)
!354 = !DILocation(line: 185, column: 15, scope: !79)
!355 = !DILocation(line: 204, column: 8, scope: !79)
!356 = !DILocation(line: 185, column: 8, scope: !79)
!357 = !DILocation(line: 184, column: 45, scope: !79)
!358 = !DILocation(line: 184, column: 17, scope: !79)
!359 = !DILocation(line: 205, column: 1, scope: !360)
!360 = distinct !DILexicalBlock(scope: !79, file: !1, line: 205, column: 1)
!361 = !DILocation(line: 206, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 206, column: 9)
!363 = distinct !DILexicalBlock(scope: !364, file: !1, line: 205, column: 43)
!364 = distinct !DILexicalBlock(scope: !360, file: !1, line: 205, column: 1)
!365 = !DILocation(line: 206, column: 16, scope: !362)
!366 = !DILocation(line: 206, column: 9, scope: !363)
!367 = !DILocation(line: 212, column: 14, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !1, line: 206, column: 24)
!369 = !DILocation(line: 184, column: 11, scope: !79)
!370 = !DILocation(line: 184, column: 24, scope: !79)
!371 = !DILocation(line: 214, column: 15, scope: !368)
!372 = !DILocation(line: 215, column: 7, scope: !368)
!373 = !DILocation(line: 215, column: 19, scope: !368)
!374 = !DILocation(line: 216, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !1, line: 215, column: 29)
!376 = !DILocation(line: 184, column: 35, scope: !79)
!377 = !DILocation(line: 184, column: 38, scope: !79)
!378 = !DILocation(line: 185, column: 21, scope: !79)
!379 = !DILocation(line: 217, column: 10, scope: !375)
!380 = !DILocation(line: 184, column: 7, scope: !79)
!381 = !DILocation(line: 218, column: 30, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 218, column: 10)
!383 = distinct !DILexicalBlock(scope: !375, file: !1, line: 218, column: 10)
!384 = !DILocation(line: 218, column: 28, scope: !382)
!385 = !DILocation(line: 218, column: 10, scope: !383)
!386 = !DILocation(line: 219, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 218, column: 45)
!388 = !DILocation(line: 184, column: 48, scope: !79)
!389 = !DILocation(line: 220, column: 18, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 220, column: 18)
!391 = !DILocation(line: 220, column: 25, scope: !390)
!392 = !DILocation(line: 220, column: 18, scope: !387)
!393 = !DILocation(line: 226, column: 21, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 220, column: 33)
!395 = !DILocation(line: 226, column: 16, scope: !394)
!396 = !DILocation(line: 226, column: 29, scope: !394)
!397 = !DILocation(line: 227, column: 23, scope: !394)
!398 = !DILocation(line: 228, column: 13, scope: !394)
!399 = !DILocation(line: 231, column: 12, scope: !368)
!400 = !DILocation(line: 232, column: 4, scope: !368)
!401 = !DILocation(line: 234, column: 1, scope: !79)
!402 = !DILocation(line: 236, column: 1, scope: !79)
!403 = !DILocation(line: 236, column: 17, scope: !79)
!404 = !DILocation(line: 250, column: 13, scope: !106)
!405 = !DILocation(line: 251, column: 12, scope: !106)
!406 = !DILocation(line: 252, column: 12, scope: !106)
!407 = !DILocation(line: 253, column: 12, scope: !106)
!408 = !DILocation(line: 262, column: 8, scope: !409)
!409 = distinct !DILexicalBlock(scope: !106, file: !1, line: 262, column: 6)
!410 = !DILocation(line: 262, column: 23, scope: !409)
!411 = !DILocation(line: 262, column: 16, scope: !409)
!412 = !DILocation(line: 262, column: 41, scope: !409)
!413 = !DILocation(line: 262, column: 60, scope: !409)
!414 = !DILocation(line: 263, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !1, line: 262, column: 70)
!416 = !DILocation(line: 263, column: 4, scope: !415)
!417 = !DILocation(line: 265, column: 4, scope: !415)
!418 = !DILocation(line: 272, column: 11, scope: !106)
!419 = !DILocation(line: 255, column: 14, scope: !106)
!420 = !DILocation(line: 255, column: 20, scope: !106)
!421 = !DILocation(line: 273, column: 13, scope: !106)
!422 = !DILocation(line: 273, column: 11, scope: !106)
!423 = !DILocation(line: 255, column: 7, scope: !106)
!424 = !DILocation(line: 274, column: 19, scope: !425)
!425 = distinct !DILexicalBlock(scope: !106, file: !1, line: 274, column: 6)
!426 = !DILocation(line: 256, column: 8, scope: !106)
!427 = !DILocation(line: 274, column: 27, scope: !425)
!428 = !DILocation(line: 275, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 275, column: 4)
!430 = distinct !DILexicalBlock(scope: !425, file: !1, line: 274, column: 37)
!431 = !DILocation(line: 281, column: 20, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 281, column: 4)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 281, column: 4)
!434 = distinct !DILexicalBlock(scope: !425, file: !1, line: 280, column: 8)
!435 = !DILocation(line: 274, column: 6, scope: !106)
!436 = !DILocation(line: 275, column: 4, scope: !429)
!437 = !DILocation(line: 281, column: 4, scope: !433)
!438 = !DILocation(line: 276, column: 15, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 275, column: 35)
!440 = distinct !DILexicalBlock(scope: !429, file: !1, line: 275, column: 4)
!441 = !DILocation(line: 255, column: 23, scope: !106)
!442 = !DILocation(line: 277, column: 7, scope: !439)
!443 = !DILocation(line: 277, column: 20, scope: !439)
!444 = !DILocation(line: 278, column: 25, scope: !439)
!445 = !DILocation(line: 278, column: 7, scope: !439)
!446 = !DILocation(line: 278, column: 22, scope: !439)
!447 = !DILocation(line: 275, column: 30, scope: !440)
!448 = !DILocation(line: 275, column: 20, scope: !440)
!449 = !DILocation(line: 282, column: 15, scope: !450)
!450 = distinct !DILexicalBlock(scope: !432, file: !1, line: 281, column: 35)
!451 = !DILocation(line: 283, column: 7, scope: !450)
!452 = !DILocation(line: 283, column: 20, scope: !450)
!453 = !DILocation(line: 281, column: 30, scope: !432)
!454 = !DILocation(line: 285, column: 4, scope: !434)
!455 = !DILocation(line: 287, column: 1, scope: !106)
!456 = !DILocation(line: 309, column: 13, scope: !119)
!457 = !DILocation(line: 310, column: 12, scope: !119)
!458 = !DILocation(line: 311, column: 12, scope: !119)
!459 = !DILocation(line: 312, column: 14, scope: !119)
!460 = !DILocation(line: 323, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !119, file: !1, line: 323, column: 6)
!462 = !DILocation(line: 323, column: 25, scope: !461)
!463 = !DILocation(line: 323, column: 16, scope: !461)
!464 = !DILocation(line: 323, column: 41, scope: !461)
!465 = !DILocation(line: 323, column: 57, scope: !461)
!466 = !DILocation(line: 324, column: 12, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !1, line: 323, column: 67)
!468 = !DILocation(line: 324, column: 4, scope: !467)
!469 = !DILocation(line: 326, column: 4, scope: !467)
!470 = !DILocation(line: 328, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !119, file: !1, line: 328, column: 6)
!472 = !DILocation(line: 328, column: 18, scope: !471)
!473 = !DILocation(line: 329, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 328, column: 36)
!475 = !DILocation(line: 329, column: 4, scope: !474)
!476 = !DILocation(line: 332, column: 4, scope: !474)
!477 = !DILocation(line: 334, column: 12, scope: !119)
!478 = !DILocation(line: 315, column: 41, scope: !119)
!479 = !DILocation(line: 335, column: 12, scope: !119)
!480 = !DILocation(line: 315, column: 24, scope: !119)
!481 = !DILocation(line: 336, column: 14, scope: !119)
!482 = !DILocation(line: 315, column: 56, scope: !119)
!483 = !DILocation(line: 344, column: 10, scope: !119)
!484 = !DILocation(line: 317, column: 19, scope: !119)
!485 = !DILocation(line: 345, column: 10, scope: !119)
!486 = !DILocation(line: 317, column: 10, scope: !119)
!487 = !DILocation(line: 316, column: 9, scope: !119)
!488 = !DILocation(line: 315, column: 9, scope: !119)
!489 = !DILocation(line: 346, column: 28, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 346, column: 1)
!491 = distinct !DILexicalBlock(scope: !119, file: !1, line: 346, column: 1)
!492 = !DILocation(line: 346, column: 1, scope: !491)
!493 = !DILocation(line: 358, column: 19, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 358, column: 1)
!495 = distinct !DILexicalBlock(scope: !119, file: !1, line: 358, column: 1)
!496 = !DILocation(line: 358, column: 1, scope: !495)
!497 = !DILocation(line: 347, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 347, column: 9)
!499 = distinct !DILexicalBlock(scope: !490, file: !1, line: 346, column: 43)
!500 = !DILocation(line: 347, column: 20, scope: !498)
!501 = !DILocation(line: 347, column: 9, scope: !499)
!502 = !DILocation(line: 348, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !1, line: 347, column: 31)
!504 = !DILocation(line: 348, column: 18, scope: !503)
!505 = !DILocation(line: 349, column: 25, scope: !503)
!506 = !DILocation(line: 349, column: 7, scope: !503)
!507 = !DILocation(line: 349, column: 18, scope: !503)
!508 = !DILocation(line: 350, column: 4, scope: !503)
!509 = !DILocation(line: 359, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !494, file: !1, line: 358, column: 38)
!511 = !DILocation(line: 316, column: 18, scope: !119)
!512 = !DILocation(line: 317, column: 25, scope: !119)
!513 = !DILocation(line: 360, column: 4, scope: !510)
!514 = !DILocation(line: 315, column: 16, scope: !119)
!515 = !DILocation(line: 361, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 361, column: 4)
!517 = distinct !DILexicalBlock(scope: !510, file: !1, line: 361, column: 4)
!518 = !DILocation(line: 361, column: 22, scope: !516)
!519 = !DILocation(line: 361, column: 4, scope: !517)
!520 = !DILocation(line: 362, column: 11, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !1, line: 361, column: 39)
!522 = !DILocation(line: 316, column: 25, scope: !119)
!523 = !DILocation(line: 363, column: 14, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !1, line: 363, column: 12)
!525 = !DILocation(line: 364, column: 15, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 364, column: 15)
!527 = distinct !DILexicalBlock(scope: !524, file: !1, line: 363, column: 23)
!528 = !DILocation(line: 363, column: 12, scope: !521)
!529 = !DILocation(line: 364, column: 26, scope: !526)
!530 = !DILocation(line: 364, column: 31, scope: !526)
!531 = !DILocation(line: 364, column: 34, scope: !526)
!532 = !DILocation(line: 364, column: 44, scope: !526)
!533 = !DILocation(line: 364, column: 15, scope: !527)
!534 = !DILocation(line: 365, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !526, file: !1, line: 364, column: 52)
!536 = !DILocation(line: 365, column: 24, scope: !535)
!537 = !DILocation(line: 366, column: 31, scope: !535)
!538 = !DILocation(line: 366, column: 24, scope: !535)
!539 = !DILocation(line: 367, column: 10, scope: !535)
!540 = !DILocation(line: 368, column: 19, scope: !541)
!541 = distinct !DILexicalBlock(scope: !524, file: !1, line: 368, column: 19)
!542 = !DILocation(line: 368, column: 29, scope: !541)
!543 = !DILocation(line: 368, column: 19, scope: !524)
!544 = !DILocation(line: 369, column: 10, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !1, line: 368, column: 37)
!546 = !DILocation(line: 369, column: 21, scope: !545)
!547 = !DILocation(line: 370, column: 28, scope: !545)
!548 = !DILocation(line: 370, column: 21, scope: !545)
!549 = !DILocation(line: 371, column: 7, scope: !545)
!550 = !DILocation(line: 374, column: 18, scope: !119)
!551 = !DILocation(line: 315, column: 31, scope: !119)
!552 = !DILocation(line: 315, column: 63, scope: !119)
!553 = !DILocation(line: 376, column: 22, scope: !119)
!554 = !DILocation(line: 376, column: 1, scope: !119)
!555 = !DILocation(line: 377, column: 25, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 377, column: 1)
!557 = distinct !DILexicalBlock(scope: !119, file: !1, line: 377, column: 1)
!558 = !DILocation(line: 377, column: 1, scope: !557)
!559 = !DILocation(line: 378, column: 16, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 377, column: 45)
!561 = !DILocation(line: 379, column: 4, scope: !560)
!562 = !DILocation(line: 379, column: 14, scope: !560)
!563 = !DILocation(line: 386, column: 8, scope: !119)
!564 = !DILocation(line: 314, column: 10, scope: !119)
!565 = !DILocation(line: 387, column: 22, scope: !119)
!566 = !DILocation(line: 387, column: 1, scope: !119)
!567 = !DILocation(line: 316, column: 12, scope: !119)
!568 = !DILocation(line: 397, column: 1, scope: !569)
!569 = distinct !DILexicalBlock(scope: !119, file: !1, line: 397, column: 1)
!570 = !DILocation(line: 400, column: 31, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 397, column: 44)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 397, column: 1)
!573 = !DILocation(line: 398, column: 8, scope: !571)
!574 = !DILocation(line: 399, column: 4, scope: !571)
!575 = !DILocation(line: 400, column: 45, scope: !571)
!576 = !DILocation(line: 400, column: 52, scope: !571)
!577 = !DILocation(line: 400, column: 4, scope: !571)
!578 = !DILocation(line: 401, column: 24, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 401, column: 4)
!580 = distinct !DILexicalBlock(scope: !571, file: !1, line: 401, column: 4)
!581 = !DILocation(line: 401, column: 22, scope: !579)
!582 = !DILocation(line: 402, column: 25, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !1, line: 401, column: 39)
!584 = !DILocation(line: 401, column: 4, scope: !580)
!585 = !DILocation(line: 402, column: 18, scope: !583)
!586 = !DILocation(line: 402, column: 16, scope: !583)
!587 = !DILocation(line: 404, column: 4, scope: !571)
!588 = !DILocation(line: 406, column: 15, scope: !147)
!589 = !DILocation(line: 406, column: 6, scope: !119)
!590 = !DILocation(line: 407, column: 17, scope: !146)
!591 = !DILocation(line: 407, column: 11, scope: !146)
!592 = !DILocation(line: 408, column: 4, scope: !593)
!593 = distinct !DILexicalBlock(scope: !146, file: !1, line: 408, column: 4)
!594 = !DILocation(line: 418, column: 25, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 408, column: 54)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 408, column: 4)
!597 = !DILocation(line: 409, column: 11, scope: !595)
!598 = !DILocation(line: 410, column: 7, scope: !595)
!599 = !DILocation(line: 411, column: 38, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 411, column: 7)
!601 = distinct !DILexicalBlock(scope: !595, file: !1, line: 411, column: 7)
!602 = !DILocation(line: 411, column: 36, scope: !600)
!603 = !DILocation(line: 411, column: 7, scope: !601)
!604 = !DILocation(line: 412, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !1, line: 411, column: 53)
!606 = !DILocation(line: 413, column: 23, scope: !607)
!607 = distinct !DILexicalBlock(scope: !605, file: !1, line: 413, column: 15)
!608 = !DILocation(line: 316, column: 28, scope: !119)
!609 = !DILocation(line: 413, column: 34, scope: !607)
!610 = !DILocation(line: 413, column: 15, scope: !605)
!611 = !DILocation(line: 414, column: 22, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !1, line: 413, column: 42)
!613 = !DILocation(line: 414, column: 13, scope: !612)
!614 = !DILocation(line: 414, column: 26, scope: !612)
!615 = !DILocation(line: 415, column: 10, scope: !612)
!616 = !DILocation(line: 417, column: 7, scope: !595)
!617 = !DILocation(line: 418, column: 7, scope: !595)
!618 = !DILocation(line: 420, column: 4, scope: !146)
!619 = !DILocation(line: 421, column: 1, scope: !146)
!620 = !DILocation(line: 427, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !119, file: !1, line: 427, column: 6)
!622 = !DILocation(line: 427, column: 17, scope: !621)
!623 = !DILocation(line: 427, column: 21, scope: !621)
!624 = !DILocation(line: 427, column: 6, scope: !119)
!625 = !DILocation(line: 428, column: 10, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !1, line: 427, column: 28)
!627 = !DILocation(line: 428, column: 19, scope: !626)
!628 = !{!174, !175, i64 16}
!629 = !DILocation(line: 429, column: 26, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 429, column: 4)
!631 = distinct !DILexicalBlock(scope: !626, file: !1, line: 429, column: 4)
!632 = !DILocation(line: 429, column: 4, scope: !631)
!633 = !DILocation(line: 431, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !1, line: 429, column: 48)
!635 = !DILocation(line: 432, column: 13, scope: !634)
!636 = !DILocation(line: 430, column: 11, scope: !634)
!637 = !DILocation(line: 431, column: 25, scope: !634)
!638 = !DILocation(line: 431, column: 22, scope: !634)
!639 = !DILocation(line: 432, column: 28, scope: !634)
!640 = !DILocation(line: 432, column: 26, scope: !634)
!641 = !DILocation(line: 432, column: 7, scope: !634)
!642 = !DILocation(line: 435, column: 27, scope: !643)
!643 = distinct !DILexicalBlock(scope: !621, file: !1, line: 434, column: 8)
!644 = !DILocation(line: 435, column: 10, scope: !643)
!645 = !DILocation(line: 435, column: 19, scope: !643)
!646 = !DILocation(line: 443, column: 1, scope: !119)
!647 = !DILocation(line: 444, column: 9, scope: !119)
!648 = !DILocation(line: 444, column: 7, scope: !119)
!649 = !DILocation(line: 445, column: 1, scope: !119)
!650 = !DILocation(line: 446, column: 1, scope: !119)
!651 = !DILocation(line: 448, column: 1, scope: !119)
!652 = !DILocation(line: 461, column: 13, scope: !148)
!653 = !DILocation(line: 470, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !148, file: !1, line: 470, column: 6)
!655 = !DILocation(line: 470, column: 6, scope: !148)
!656 = !DILocation(line: 471, column: 12, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !1, line: 470, column: 22)
!658 = !DILocation(line: 471, column: 4, scope: !657)
!659 = !DILocation(line: 473, column: 4, scope: !657)
!660 = !DILocation(line: 463, column: 21, scope: !148)
!661 = !DILocation(line: 481, column: 15, scope: !148)
!662 = !DILocation(line: 463, column: 15, scope: !148)
!663 = !DILocation(line: 463, column: 25, scope: !148)
!664 = !DILocation(line: 482, column: 17, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 482, column: 1)
!666 = distinct !DILexicalBlock(scope: !148, file: !1, line: 482, column: 1)
!667 = !DILocation(line: 482, column: 1, scope: !666)
!668 = !DILocation(line: 463, column: 28, scope: !148)
!669 = !DILocation(line: 464, column: 8, scope: !148)
!670 = !DILocation(line: 483, column: 4, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !1, line: 482, column: 32)
!672 = !DILocation(line: 463, column: 7, scope: !148)
!673 = !DILocation(line: 484, column: 24, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 484, column: 4)
!675 = distinct !DILexicalBlock(scope: !671, file: !1, line: 484, column: 4)
!676 = !DILocation(line: 484, column: 22, scope: !674)
!677 = !DILocation(line: 484, column: 4, scope: !675)
!678 = !DILocation(line: 485, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !1, line: 484, column: 39)
!680 = !DILocation(line: 463, column: 35, scope: !148)
!681 = !DILocation(line: 463, column: 38, scope: !148)
!682 = !DILocation(line: 464, column: 15, scope: !148)
!683 = !DILocation(line: 486, column: 7, scope: !679)
!684 = !DILocation(line: 463, column: 11, scope: !148)
!685 = !DILocation(line: 487, column: 27, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 487, column: 7)
!687 = distinct !DILexicalBlock(scope: !679, file: !1, line: 487, column: 7)
!688 = !DILocation(line: 487, column: 25, scope: !686)
!689 = !DILocation(line: 487, column: 7, scope: !687)
!690 = !DILocation(line: 488, column: 15, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 488, column: 15)
!692 = distinct !DILexicalBlock(scope: !686, file: !1, line: 487, column: 42)
!693 = !DILocation(line: 488, column: 24, scope: !691)
!694 = !DILocation(line: 488, column: 15, scope: !692)
!695 = !DILocation(line: 492, column: 15, scope: !696)
!696 = distinct !DILexicalBlock(scope: !679, file: !1, line: 492, column: 12)
!697 = !DILocation(line: 492, column: 12, scope: !679)
!698 = !DILocation(line: 493, column: 18, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !1, line: 492, column: 26)
!700 = !DILocation(line: 493, column: 10, scope: !699)
!701 = !DILocation(line: 499, column: 7, scope: !699)
!702 = !DILocation(line: 482, column: 27, scope: !665)
!703 = !DILocation(line: 502, column: 1, scope: !148)
