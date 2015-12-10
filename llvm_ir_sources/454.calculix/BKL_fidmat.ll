; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._cell = type { i32, i32, i32, i32, %struct._cell*, %struct._cell* }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in BKL_fidmat(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"\0A fatal error in BKL_fidmatPass(%p,%p,%p,%p,%d)\0A bad input\0A\00", align 1
@Head = internal global %struct._cell zeroinitializer, align 8
@Undo = internal global %struct._cell zeroinitializer, align 8

; Function Attrs: nounwind optsize ssp uwtable
define float @BKL_fidmat(%struct._BKL* %bkl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !93, metadata !137), !dbg !138
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !139
  br i1 %1, label %2, label %5, !dbg !141

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !142, !tbaa !144
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #5, !dbg !148
  tail call void @exit(i32 -1) #6, !dbg !149
  unreachable, !dbg !149

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !150
  %7 = load i32* %6, align 4, !dbg !150, !tbaa !151
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !95, metadata !137), !dbg !155
  %8 = icmp slt i32 %7, 9, !dbg !156
  br i1 %8, label %9, label %15, !dbg !157

; <label>:9                                       ; preds = %5
  %10 = add nsw i32 %7, -1, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !96, metadata !137), !dbg !159
  %11 = tail call i32* @IVinit(i32 %10, i32 -1) #5, !dbg !160
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !99, metadata !137), !dbg !161
  %12 = tail call i32* @IVinit(i32 %10, i32 -1) #5, !dbg !162
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !100, metadata !137), !dbg !163
  tail call void @IVramp(i32 %10, i32* %11, i32 1, i32 1) #5, !dbg !164
  %13 = tail call float @BKL_exhSearch(%struct._BKL* %bkl, i32 %10, i32* %11, i32* %12) #5, !dbg !165
  tail call void @IVfree(i32* %11) #5, !dbg !166
  tail call void @IVfree(i32* %12) #5, !dbg !167
  %14 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !168
  tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !94, metadata !137), !dbg !169
  br label %46, !dbg !170

; <label>:15                                      ; preds = %5
  %16 = sext i32 %7 to i64, !dbg !171
  %17 = shl nsw i64 %16, 5, !dbg !171
  %18 = tail call i8* @malloc(i64 %17) #5, !dbg !171
  %19 = bitcast i8* %18 to %struct._cell*, !dbg !171
  tail call void @llvm.dbg.value(metadata %struct._cell* %19, i64 0, metadata !103, metadata !137), !dbg !175
  %20 = icmp eq i8* %18, null, !dbg !171
  br i1 %20, label %21, label %.lr.ph, !dbg !176

; <label>:21                                      ; preds = %15
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !177, !tbaa !144
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %17, i32 98, i8* getelementptr inbounds ([87 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !177
  tail call void @exit(i32 -1) #6, !dbg !177
  unreachable, !dbg !177

.lr.ph:                                           ; preds = %15
  %24 = tail call i32* @IVinit(i32 %7, i32 -1) #5, !dbg !179
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !107, metadata !137), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !106, metadata !137), !dbg !181
  tail call void @llvm.dbg.value(metadata %struct._cell* %19, i64 0, metadata !101, metadata !137), !dbg !182
  %25 = add i32 %7, -1, !dbg !183
  br label %26, !dbg !183

; <label>:26                                      ; preds = %26, %.lr.ph
  %idom.02 = phi i32 [ 0, %.lr.ph ], [ %33, %26 ]
  %cell.01 = phi %struct._cell* [ %19, %.lr.ph ], [ %34, %26 ]
  %27 = getelementptr inbounds %struct._cell* %cell.01, i64 0, i32 0, !dbg !185
  store i32 %idom.02, i32* %27, align 4, !dbg !188, !tbaa !189
  %28 = getelementptr inbounds %struct._cell* %cell.01, i64 0, i32 3, !dbg !191
  store i32 0, i32* %28, align 4, !dbg !192, !tbaa !193
  %29 = getelementptr inbounds %struct._cell* %cell.01, i64 0, i32 2, !dbg !194
  store i32 0, i32* %29, align 4, !dbg !195, !tbaa !196
  %30 = getelementptr inbounds %struct._cell* %cell.01, i64 0, i32 1, !dbg !197
  store i32 0, i32* %30, align 4, !dbg !198, !tbaa !199
  %31 = getelementptr inbounds %struct._cell* %cell.01, i64 0, i32 5, !dbg !200
  store %struct._cell* %cell.01, %struct._cell** %31, align 8, !dbg !201, !tbaa !202
  %32 = getelementptr inbounds %struct._cell* %cell.01, i64 0, i32 4, !dbg !203
  store %struct._cell* %cell.01, %struct._cell** %32, align 8, !dbg !204, !tbaa !205
  %33 = add nuw nsw i32 %idom.02, 1, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !106, metadata !137), !dbg !181
  %34 = getelementptr inbounds %struct._cell* %cell.01, i64 1, !dbg !207
  tail call void @llvm.dbg.value(metadata %struct._cell* %34, i64 0, metadata !101, metadata !137), !dbg !182
  %exitcond = icmp eq i32 %idom.02, %25, !dbg !183
  br i1 %exitcond, label %._crit_edge, label %26, !dbg !183

._crit_edge:                                      ; preds = %26
  %35 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !208
  %36 = load %struct._BPG** %35, align 8, !dbg !208, !tbaa !209
  %37 = tail call %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG* %36) #5, !dbg !210
  tail call void @llvm.dbg.value(metadata %struct._Graph* %37, i64 0, metadata !105, metadata !137), !dbg !211
  %38 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 5, !dbg !212
  store i32 1, i32* %38, align 4, !dbg !213, !tbaa !214
  %39 = tail call fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %19, i32* %24, %struct._Graph* %37, i32 1) #7, !dbg !215
  tail call void @llvm.dbg.value(metadata float %39, i64 0, metadata !104, metadata !137), !dbg !216
  br label %40, !dbg !217

; <label>:40                                      ; preds = %40, %._crit_edge
  %bestcost.0 = phi float [ %39, %._crit_edge ], [ %43, %40 ]
  %41 = load i32* %38, align 4, !dbg !218, !tbaa !214
  %42 = add nsw i32 %41, 1, !dbg !218
  store i32 %42, i32* %38, align 4, !dbg !218, !tbaa !214
  %43 = tail call fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %19, i32* %24, %struct._Graph* %37, i32 %42) #7, !dbg !220
  tail call void @llvm.dbg.value(metadata float %43, i64 0, metadata !94, metadata !137), !dbg !169
  %44 = fcmp olt float %43, %bestcost.0, !dbg !221
  br i1 %44, label %40, label %45, !dbg !223

; <label>:45                                      ; preds = %40
  tail call void @free(i8* %18) #7, !dbg !224
  tail call void @llvm.dbg.value(metadata %struct._cell* null, i64 0, metadata !103, metadata !137), !dbg !175
  tail call void @IVfree(i32* %24) #5, !dbg !227
  tail call void @Graph_free(%struct._Graph* %37) #5, !dbg !228
  br label %46

; <label>:46                                      ; preds = %45, %9
  %cost.0 = phi float [ %14, %9 ], [ %43, %45 ]
  ret float %cost.0, !dbg !229
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare float @BKL_exhSearch(%struct._BKL*, i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %cells, i32* %tags, %struct._Graph* %DomByDom, i32 %npass) #0 {
  %size = alloca i32, align 4
  %doms = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !112, metadata !137), !dbg !230
  tail call void @llvm.dbg.value(metadata %struct._cell* %cells, i64 0, metadata !113, metadata !137), !dbg !231
  tail call void @llvm.dbg.value(metadata i32* %tags, i64 0, metadata !114, metadata !137), !dbg !232
  tail call void @llvm.dbg.value(metadata %struct._Graph* %DomByDom, i64 0, metadata !115, metadata !137), !dbg !233
  tail call void @llvm.dbg.value(metadata i32 %npass, i64 0, metadata !116, metadata !137), !dbg !234
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !235
  %2 = icmp eq %struct._cell* %cells, null, !dbg !237
  %or.cond = or i1 %1, %2, !dbg !238
  %3 = icmp eq i32* %tags, null, !dbg !239
  %or.cond3 = or i1 %or.cond, %3, !dbg !238
  %4 = icmp eq %struct._Graph* %DomByDom, null, !dbg !240
  %or.cond5 = or i1 %or.cond3, %4, !dbg !238
  br i1 %or.cond5, label %5, label %8, !dbg !238

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !241, !tbaa !144
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), %struct._BKL* %bkl, %struct._cell* %cells, i32* %tags, %struct._Graph* %DomByDom, i32 %npass) #5, !dbg !243
  tail call void @exit(i32 -1) #6, !dbg !244
  unreachable, !dbg !244

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !245
  %10 = load i32* %9, align 4, !dbg !245, !tbaa !151
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !124, metadata !137), !dbg !246
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0, !dbg !247
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !126, metadata !137), !dbg !248
  %12 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !249
  tail call void @llvm.dbg.value(metadata float %12, i64 0, metadata !118, metadata !137), !dbg !250
  store <2 x %struct._cell*> <%struct._cell* @Head, %struct._cell* @Head>, <2 x %struct._cell*>* bitcast (%struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4) to <2 x %struct._cell*>*), align 8, !dbg !251, !tbaa !144
  store <2 x %struct._cell*> <%struct._cell* @Undo, %struct._cell* @Undo>, <2 x %struct._cell*>* bitcast (%struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4) to <2 x %struct._cell*>*), align 8, !dbg !252, !tbaa !144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !121, metadata !137), !dbg !253
  %13 = icmp sgt i32 %10, 0, !dbg !254
  br i1 %13, label %.lr.ph15, label %._crit_edge, !dbg !257

.lr.ph15:                                         ; preds = %8
  %14 = add i32 %10, -1, !dbg !257
  br label %19, !dbg !257

.preheader6:                                      ; preds = %33
  %.pre = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !dbg !258, !tbaa !202
  %15 = icmp eq %struct._cell* %.pre, @Head, !dbg !259
  br i1 %15, label %.preheader, label %.lr.ph12, !dbg !260

.lr.ph12:                                         ; preds = %.preheader6
  %16 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !261
  %17 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !263
  %18 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 8, !dbg !264
  br label %37, !dbg !260

; <label>:19                                      ; preds = %33, %.lr.ph15
  %indvars.iv17 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next18, %33 ]
  %20 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv17, !dbg !267
  tail call void @llvm.dbg.value(metadata %struct._cell* %20, i64 0, metadata !117, metadata !137), !dbg !269
  %21 = getelementptr inbounds %struct._cell* %20, i64 0, i32 0, !dbg !270
  %22 = trunc i64 %indvars.iv17 to i32, !dbg !271
  store i32 %22, i32* %21, align 4, !dbg !271, !tbaa !189
  %23 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv17, i32 5, !dbg !272
  store %struct._cell* %20, %struct._cell** %23, align 8, !dbg !273, !tbaa !202
  %24 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv17, i32 4, !dbg !274
  store %struct._cell* %20, %struct._cell** %24, align 8, !dbg !275, !tbaa !205
  %25 = tail call i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %22) #5, !dbg !276
  %26 = icmp eq i32 %25, 1, !dbg !278
  br i1 %26, label %27, label %33, !dbg !279

; <label>:27                                      ; preds = %19
  %28 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv17, i32 1, !dbg !280
  %29 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv17, i32 2, !dbg !282
  %30 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv17, i32 3, !dbg !283
  tail call void @BKL_evalgain(%struct._BKL* %bkl, i32 %22, i32* %28, i32* %29, i32* %30) #5, !dbg !284
  %31 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !285, !tbaa !205
  store %struct._cell* %31, %struct._cell** %24, align 8, !dbg !285, !tbaa !205
  %32 = getelementptr inbounds %struct._cell* %31, i64 0, i32 5, !dbg !285
  store %struct._cell* %20, %struct._cell** %32, align 8, !dbg !285, !tbaa !202
  store %struct._cell* %20, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !285, !tbaa !205
  store %struct._cell* @Head, %struct._cell** %23, align 8, !dbg !285, !tbaa !202
  br label %33, !dbg !286

; <label>:33                                      ; preds = %19, %27
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !257
  %exitcond = icmp eq i32 %22, %14, !dbg !257
  br i1 %exitcond, label %.preheader6, label %19, !dbg !257

.loopexit:                                        ; preds = %133, %107
  %34 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !dbg !258, !tbaa !202
  %35 = icmp eq %struct._cell* %34, @Head, !dbg !259
  br i1 %35, label %.preheader, label %37, !dbg !260

.preheader:                                       ; preds = %.loopexit, %.preheader6
  %bestcost.0.lcssa.ph = phi float [ %12, %.preheader6 ], [ %bestcost.1, %.loopexit ]
  %.pr = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !287, !tbaa !202
  call void @llvm.dbg.value(metadata %struct._cell* %.pr, i64 0, metadata !117, metadata !137), !dbg !269
  %36 = icmp eq %struct._cell* %.pr, @Undo, !dbg !288
  br i1 %36, label %._crit_edge, label %.lr.ph, !dbg !289

; <label>:37                                      ; preds = %.lr.ph12, %.loopexit
  %38 = phi %struct._cell* [ %.pre, %.lr.ph12 ], [ %34, %.loopexit ]
  %bestcost.011 = phi float [ %12, %.lr.ph12 ], [ %bestcost.1, %.loopexit ]
  call void @llvm.dbg.value(metadata %struct._cell* %34, i64 0, metadata !117, metadata !137), !dbg !269
  %39 = getelementptr inbounds %struct._cell* %38, i64 0, i32 0, !dbg !290
  %40 = load i32* %39, align 4, !dbg !290, !tbaa !189
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !121, metadata !137), !dbg !253
  %41 = load i32* %11, align 4, !dbg !291, !tbaa !292
  %42 = getelementptr inbounds %struct._cell* %38, i64 0, i32 1, !dbg !293
  %43 = load i32* %42, align 4, !dbg !293, !tbaa !199
  %44 = add nsw i32 %43, %41, !dbg !294
  %45 = load i32* %16, align 4, !dbg !261, !tbaa !292
  %46 = getelementptr inbounds %struct._cell* %38, i64 0, i32 2, !dbg !295
  %47 = load i32* %46, align 4, !dbg !295, !tbaa !196
  %48 = add nsw i32 %47, %45, !dbg !296
  %49 = load i32* %17, align 4, !dbg !263, !tbaa !292
  %50 = getelementptr inbounds %struct._cell* %38, i64 0, i32 3, !dbg !297
  %51 = load i32* %50, align 4, !dbg !297, !tbaa !193
  %52 = add nsw i32 %51, %49, !dbg !298
  %53 = call float @BKL_eval(%struct._BKL* %bkl, i32 %44, i32 %48, i32 %52) #5, !dbg !299
  call void @llvm.dbg.value(metadata float %53, i64 0, metadata !119, metadata !137), !dbg !300
  br label %.outer, !dbg !301

.outer:                                           ; preds = %71, %37
  %dom.1.ph = phi i32 [ %73, %71 ], [ %40, %37 ]
  %bettercost.0.ph = phi float [ %69, %71 ], [ %53, %37 ]
  %.pn.ph = phi %struct._cell* [ %cell.0, %71 ], [ %38, %37 ]
  br label %54

; <label>:54                                      ; preds = %.outer, %56
  %.pn = phi %struct._cell* [ %cell.0, %56 ], [ %.pn.ph, %.outer ]
  %cell.0.in = getelementptr inbounds %struct._cell* %.pn, i64 0, i32 5, !dbg !303
  %cell.0 = load %struct._cell** %cell.0.in, align 8, !dbg !303
  %55 = icmp eq %struct._cell* %cell.0, @Head, !dbg !304
  br i1 %55, label %74, label %56, !dbg !306

; <label>:56                                      ; preds = %54
  %57 = load i32* %11, align 4, !dbg !307, !tbaa !292
  %58 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 1, !dbg !309
  %59 = load i32* %58, align 4, !dbg !309, !tbaa !199
  %60 = add nsw i32 %59, %57, !dbg !310
  %61 = load i32* %16, align 4, !dbg !311, !tbaa !292
  %62 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 2, !dbg !312
  %63 = load i32* %62, align 4, !dbg !312, !tbaa !196
  %64 = add nsw i32 %63, %61, !dbg !313
  %65 = load i32* %17, align 4, !dbg !314, !tbaa !292
  %66 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 3, !dbg !315
  %67 = load i32* %66, align 4, !dbg !315, !tbaa !193
  %68 = add nsw i32 %67, %65, !dbg !316
  %69 = call float @BKL_eval(%struct._BKL* %bkl, i32 %60, i32 %64, i32 %68) #5, !dbg !317
  call void @llvm.dbg.value(metadata float %69, i64 0, metadata !120, metadata !137), !dbg !318
  %70 = fcmp olt float %69, %bettercost.0.ph, !dbg !319
  br i1 %70, label %71, label %54, !dbg !321

; <label>:71                                      ; preds = %56
  %72 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 0, !dbg !322
  %73 = load i32* %72, align 4, !dbg !322, !tbaa !189
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !121, metadata !137), !dbg !253
  call void @llvm.dbg.value(metadata float %69, i64 0, metadata !119, metadata !137), !dbg !300
  br label %.outer, !dbg !324

; <label>:74                                      ; preds = %54
  %75 = sext i32 %dom.1.ph to i64, !dbg !325
  %76 = getelementptr inbounds %struct._cell* %cells, i64 %75, !dbg !325
  call void @llvm.dbg.value(metadata %struct._cell* %76, i64 0, metadata !117, metadata !137), !dbg !269
  %77 = getelementptr inbounds %struct._cell* %cells, i64 %75, i32 5, !dbg !326
  %78 = bitcast %struct._cell** %77 to i64*, !dbg !326
  %79 = load i64* %78, align 8, !dbg !326, !tbaa !202
  %80 = getelementptr inbounds %struct._cell* %cells, i64 %75, i32 4, !dbg !326
  %81 = load %struct._cell** %80, align 8, !dbg !326, !tbaa !205
  %82 = getelementptr inbounds %struct._cell* %81, i64 0, i32 5, !dbg !326
  %83 = bitcast %struct._cell** %82 to i64*, !dbg !326
  store i64 %79, i64* %83, align 8, !dbg !326, !tbaa !202
  %84 = ptrtoint %struct._cell* %81 to i64
  %85 = load %struct._cell** %77, align 8, !dbg !326, !tbaa !202
  %86 = getelementptr inbounds %struct._cell* %85, i64 0, i32 4, !dbg !326
  %87 = bitcast %struct._cell** %86 to i64*, !dbg !326
  store i64 %84, i64* %87, align 8, !dbg !326, !tbaa !205
  store %struct._cell* %76, %struct._cell** %77, align 8, !dbg !326, !tbaa !202
  store %struct._cell* %76, %struct._cell** %80, align 8, !dbg !326, !tbaa !205
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %dom.1.ph) #5, !dbg !327
  %88 = load i32* %11, align 4, !dbg !328, !tbaa !292
  %89 = load i32* %16, align 4, !dbg !329, !tbaa !292
  %90 = load i32* %17, align 4, !dbg !330, !tbaa !292
  %91 = call float @BKL_eval(%struct._BKL* %bkl, i32 %88, i32 %89, i32 %90) #5, !dbg !331
  call void @llvm.dbg.value(metadata float %91, i64 0, metadata !120, metadata !137), !dbg !318
  %92 = fcmp ogt float %bestcost.011, %91, !dbg !332
  br i1 %92, label %93, label %104, !dbg !333

; <label>:93                                      ; preds = %74
  call void @llvm.dbg.value(metadata float %91, i64 0, metadata !118, metadata !137), !dbg !250
  %94 = load i64* bitcast (%struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5) to i64*), align 8, !dbg !334, !tbaa !202
  %95 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !dbg !334, !tbaa !205
  %96 = getelementptr inbounds %struct._cell* %95, i64 0, i32 5, !dbg !334
  %97 = bitcast %struct._cell** %96 to i64*, !dbg !334
  store i64 %94, i64* %97, align 8, !dbg !334, !tbaa !202
  %98 = ptrtoint %struct._cell* %95 to i64
  %99 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !334, !tbaa !202
  %100 = getelementptr inbounds %struct._cell* %99, i64 0, i32 4, !dbg !334
  %101 = bitcast %struct._cell** %100 to i64*, !dbg !334
  store i64 %98, i64* %101, align 8, !dbg !334, !tbaa !205
  store <2 x %struct._cell*> <%struct._cell* @Undo, %struct._cell* @Undo>, <2 x %struct._cell*>* bitcast (%struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4) to <2 x %struct._cell*>*), align 8, !dbg !334, !tbaa !144
  %102 = load i32* %18, align 4, !dbg !335, !tbaa !336
  %103 = add nsw i32 %102, 1, !dbg !335
  store i32 %103, i32* %18, align 4, !dbg !335, !tbaa !336
  br label %107, !dbg !337

; <label>:104                                     ; preds = %74
  %105 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !338, !tbaa !202
  store %struct._cell* %105, %struct._cell** %77, align 8, !dbg !338, !tbaa !202
  %106 = getelementptr inbounds %struct._cell* %105, i64 0, i32 4, !dbg !338
  store %struct._cell* %76, %struct._cell** %106, align 8, !dbg !338, !tbaa !205
  store %struct._cell* %76, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !338, !tbaa !202
  store %struct._cell* @Undo, %struct._cell** %80, align 8, !dbg !338, !tbaa !205
  br label %107

; <label>:107                                     ; preds = %104, %93
  %bestcost.1 = phi float [ %91, %93 ], [ %bestcost.011, %104 ]
  %108 = getelementptr inbounds i32* %tags, i64 %75, !dbg !340
  store i32 %npass, i32* %108, align 4, !dbg !341, !tbaa !292
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !125, metadata !137), !dbg !342
  call void @llvm.dbg.value(metadata i32** %doms, i64 0, metadata !127, metadata !137), !dbg !343
  call void @Graph_adjAndSize(%struct._Graph* %DomByDom, i32 %dom.1.ph, i32* %size, i32** %doms) #5, !dbg !344
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !123, metadata !137), !dbg !345
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !125, metadata !137), !dbg !342
  %109 = load i32* %size, align 4, !dbg !346, !tbaa !292
  %110 = icmp sgt i32 %109, 0, !dbg !349
  br i1 %110, label %.lr.ph10, label %.loopexit, !dbg !350

.lr.ph10:                                         ; preds = %107, %133
  %indvars.iv = phi i64 [ %indvars.iv.next, %133 ], [ 0, %107 ]
  call void @llvm.dbg.value(metadata i32** %doms, i64 0, metadata !127, metadata !137), !dbg !343
  %111 = load i32** %doms, align 8, !dbg !351, !tbaa !144
  %112 = getelementptr inbounds i32* %111, i64 %indvars.iv, !dbg !351
  %113 = load i32* %112, align 4, !dbg !351, !tbaa !292
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !122, metadata !137), !dbg !353
  %114 = sext i32 %113 to i64, !dbg !354
  %115 = getelementptr inbounds i32* %tags, i64 %114, !dbg !354
  %116 = load i32* %115, align 4, !dbg !354, !tbaa !292
  %117 = icmp slt i32 %116, %npass, !dbg !356
  br i1 %117, label %118, label %133, !dbg !357

; <label>:118                                     ; preds = %.lr.ph10
  %119 = call i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %113) #5, !dbg !358
  %120 = icmp eq i32 %119, 1, !dbg !359
  br i1 %120, label %121, label %133, !dbg !360

; <label>:121                                     ; preds = %118
  %122 = getelementptr inbounds %struct._cell* %cells, i64 %114, !dbg !361
  call void @llvm.dbg.value(metadata %struct._cell* %122, i64 0, metadata !117, metadata !137), !dbg !269
  %123 = getelementptr inbounds %struct._cell* %cells, i64 %114, i32 1, !dbg !363
  %124 = getelementptr inbounds %struct._cell* %cells, i64 %114, i32 2, !dbg !364
  %125 = getelementptr inbounds %struct._cell* %cells, i64 %114, i32 3, !dbg !365
  call void @BKL_evalgain(%struct._BKL* %bkl, i32 %113, i32* %123, i32* %124, i32* %125) #5, !dbg !366
  %126 = getelementptr inbounds %struct._cell* %cells, i64 %114, i32 4, !dbg !367
  %127 = load %struct._cell** %126, align 8, !dbg !367, !tbaa !205
  %128 = icmp eq %struct._cell* %127, %122, !dbg !369
  br i1 %128, label %129, label %133, !dbg !370

; <label>:129                                     ; preds = %121
  %130 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !371, !tbaa !205
  store %struct._cell* %130, %struct._cell** %126, align 8, !dbg !371, !tbaa !205
  %131 = getelementptr inbounds %struct._cell* %130, i64 0, i32 5, !dbg !371
  store %struct._cell* %122, %struct._cell** %131, align 8, !dbg !371, !tbaa !202
  store %struct._cell* %122, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !371, !tbaa !205
  %132 = getelementptr inbounds %struct._cell* %cells, i64 %114, i32 5, !dbg !371
  store %struct._cell* @Head, %struct._cell** %132, align 8, !dbg !371, !tbaa !202
  br label %133, !dbg !373

; <label>:133                                     ; preds = %.lr.ph10, %118, %129, %121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !125, metadata !137), !dbg !342
  %134 = load i32* %size, align 4, !dbg !346, !tbaa !292
  %135 = sext i32 %134 to i64, !dbg !349
  %136 = icmp slt i64 %indvars.iv.next, %135, !dbg !349
  br i1 %136, label %.lr.ph10, label %.loopexit, !dbg !350

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %137 = phi %struct._cell* [ %151, %.lr.ph ], [ %.pr, %.preheader ]
  %138 = getelementptr inbounds %struct._cell* %137, i64 0, i32 5, !dbg !374
  %139 = bitcast %struct._cell** %138 to i64*, !dbg !374
  %140 = load i64* %139, align 8, !dbg !374, !tbaa !202
  %141 = getelementptr inbounds %struct._cell* %137, i64 0, i32 4, !dbg !374
  %142 = load %struct._cell** %141, align 8, !dbg !374, !tbaa !205
  %143 = getelementptr inbounds %struct._cell* %142, i64 0, i32 5, !dbg !374
  %144 = bitcast %struct._cell** %143 to i64*, !dbg !374
  store i64 %140, i64* %144, align 8, !dbg !374, !tbaa !202
  %145 = ptrtoint %struct._cell* %142 to i64
  %146 = load %struct._cell** %138, align 8, !dbg !374, !tbaa !202
  %147 = getelementptr inbounds %struct._cell* %146, i64 0, i32 4, !dbg !374
  %148 = bitcast %struct._cell** %147 to i64*, !dbg !374
  store i64 %145, i64* %148, align 8, !dbg !374, !tbaa !205
  store %struct._cell* %137, %struct._cell** %138, align 8, !dbg !374, !tbaa !202
  store %struct._cell* %137, %struct._cell** %141, align 8, !dbg !374, !tbaa !205
  %149 = getelementptr inbounds %struct._cell* %137, i64 0, i32 0, !dbg !376
  %150 = load i32* %149, align 4, !dbg !376, !tbaa !189
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %150) #5, !dbg !377
  %151 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !287, !tbaa !202
  call void @llvm.dbg.value(metadata %struct._cell* %151, i64 0, metadata !117, metadata !137), !dbg !269
  %152 = icmp eq %struct._cell* %151, @Undo, !dbg !288
  br i1 %152, label %._crit_edge, label %.lr.ph, !dbg !289

._crit_edge:                                      ; preds = %.lr.ph, %8, %.preheader
  %bestcost.0.lcssa19 = phi float [ %bestcost.0.lcssa.ph, %.preheader ], [ %12, %8 ], [ %bestcost.0.lcssa.ph, %.lr.ph ]
  ret float %bestcost.0.lcssa19, !dbg !378
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @Graph_free(%struct._Graph*) #3

; Function Attrs: optsize
declare i32 @BKL_domAdjToSep(%struct._BKL*, i32) #3

; Function Attrs: optsize
declare void @BKL_evalgain(%struct._BKL*, i32, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare float @BKL_eval(%struct._BKL*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @BKL_flipDomain(%struct._BKL*, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

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
!llvm.module.flags = !{!133, !134, !135}
!llvm.ident = !{!136}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !20, globals: !128, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !17, !18}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cell", file: !1, line: 15, size: 256, align: 64, elements: !7)
!7 = !{!8, !10, !11, !12, !13, !16}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !6, file: !1, line: 16, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "deltaS", scope: !6, file: !1, line: 17, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "deltaB", scope: !6, file: !1, line: 18, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "deltaW", scope: !6, file: !1, line: 19, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6, file: !1, line: 20, baseType: !14, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cell", file: !1, line: 14, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 21, baseType: !14, size: 64, align: 64, offset: 192)
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !{!21, !108}
!21 = !DISubprogram(name: "BKL_fidmat", scope: !1, file: !1, line: 47, type: !22, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct._BKL*)* @BKL_fidmat, variables: !92)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25}
!24 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "BKL", file: !27, line: 45, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BKL", file: !27, line: 46, size: 704, align: 64, elements: !29)
!29 = !{!30, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !90, !91}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "bpg", scope: !28, file: !27, line: 47, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !33, line: 22, size: 128, align: 64, elements: !35)
!35 = !{!36, !37, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !34, file: !33, line: 23, baseType: !9, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !34, file: !33, line: 24, baseType: !9, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !34, file: !33, line: 25, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !41, line: 49, baseType: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !41, line: 50, size: 384, align: 64, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !74, !75}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !41, line: 51, baseType: !9, size: 32, align: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !42, file: !41, line: 52, baseType: !9, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !42, file: !41, line: 53, baseType: !9, size: 32, align: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !42, file: !41, line: 54, baseType: !9, size: 32, align: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !42, file: !41, line: 55, baseType: !9, size: 32, align: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !42, file: !41, line: 56, baseType: !9, size: 32, align: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !42, file: !41, line: 57, baseType: !51, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !53, line: 55, baseType: !54)
!53 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !53, line: 79, size: 384, align: 64, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !62, !64, !65}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !53, line: 80, baseType: !9, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !54, file: !53, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !54, file: !53, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !54, file: !53, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !54, file: !53, line: 84, baseType: !61, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !54, file: !53, line: 85, baseType: !63, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !54, file: !53, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !54, file: !53, line: 87, baseType: !66, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !53, line: 56, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !53, line: 102, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !68, file: !53, line: 103, baseType: !9, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !68, file: !53, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !68, file: !53, line: 105, baseType: !61, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !53, line: 106, baseType: !66, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !42, file: !41, line: 58, baseType: !61, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !42, file: !41, line: 59, baseType: !51, size: 64, align: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !28, file: !27, line: 48, baseType: !9, size: 32, align: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "nseg", scope: !28, file: !27, line: 49, baseType: !9, size: 32, align: 32, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !28, file: !27, line: 50, baseType: !9, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "totweight", scope: !28, file: !27, line: 51, baseType: !9, size: 32, align: 32, offset: 160)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "npass", scope: !28, file: !27, line: 52, baseType: !9, size: 32, align: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "npatch", scope: !28, file: !27, line: 53, baseType: !9, size: 32, align: 32, offset: 224)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nflips", scope: !28, file: !27, line: 54, baseType: !9, size: 32, align: 32, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nimprove", scope: !28, file: !27, line: 55, baseType: !9, size: 32, align: 32, offset: 288)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ngaineval", scope: !28, file: !27, line: 56, baseType: !9, size: 32, align: 32, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !28, file: !27, line: 57, baseType: !61, size: 64, align: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cweights", scope: !28, file: !27, line: 58, baseType: !87, size: 96, align: 32, offset: 448)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, align: 32, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 3)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "regwghts", scope: !28, file: !27, line: 59, baseType: !61, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !28, file: !27, line: 60, baseType: !24, size: 32, align: 32, offset: 640)
!92 = !{!93, !94, !95, !96, !99, !100, !101, !103, !104, !105, !106, !107}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !21, file: !1, line: 48, type: !25)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cost", scope: !21, file: !1, line: 50, type: !24)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndom", scope: !21, file: !1, line: 51, type: !9)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mdom", scope: !97, file: !1, line: 73, type: !9)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 72, column: 46)
!98 = distinct !DILexicalBlock(scope: !21, file: !1, line: 72, column: 6)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domids", scope: !97, file: !1, line: 73, type: !61)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tcolors", scope: !97, file: !1, line: 73, type: !61)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cell", scope: !102, file: !1, line: 88, type: !14)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 87, column: 8)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cells", scope: !102, file: !1, line: 88, type: !14)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bestcost", scope: !102, file: !1, line: 89, type: !24)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DomByDom", scope: !102, file: !1, line: 90, type: !39)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idom", scope: !102, file: !1, line: 91, type: !9)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tags", scope: !102, file: !1, line: 92, type: !61)
!108 = !DISubprogram(name: "BKL_fidmatPass", scope: !1, file: !1, line: 176, type: !109, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct._BKL*, %struct._cell*, i32*, %struct._Graph*, i32)* @BKL_fidmatPass, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!24, !25, !14, !61, !39, !9}
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !108, file: !1, line: 177, type: !25)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cells", arg: 2, scope: !108, file: !1, line: 178, type: !14)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tags", arg: 3, scope: !108, file: !1, line: 179, type: !61)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DomByDom", arg: 4, scope: !108, file: !1, line: 180, type: !39)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npass", arg: 5, scope: !108, file: !1, line: 181, type: !9)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cell", scope: !108, file: !1, line: 183, type: !14)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bestcost", scope: !108, file: !1, line: 184, type: !24)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bettercost", scope: !108, file: !1, line: 184, type: !24)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cost", scope: !108, file: !1, line: 184, type: !24)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dom", scope: !108, file: !1, line: 185, type: !9)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dom2", scope: !108, file: !1, line: 185, type: !9)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !108, file: !1, line: 185, type: !9)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndom", scope: !108, file: !1, line: 185, type: !9)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !108, file: !1, line: 185, type: !9)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cweights", scope: !108, file: !1, line: 186, type: !61)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doms", scope: !108, file: !1, line: 186, type: !61)
!128 = !{!129, !130, !131, !132}
!129 = !DIGlobalVariable(name: "head", scope: !0, file: !1, line: 24, type: !14, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariable(name: "Head", scope: !0, file: !1, line: 24, type: !15, isLocal: true, isDefinition: true, variable: %struct._cell* @Head)
!131 = !DIGlobalVariable(name: "undo", scope: !0, file: !1, line: 25, type: !14, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariable(name: "Undo", scope: !0, file: !1, line: 25, type: !15, isLocal: true, isDefinition: true, variable: %struct._cell* @Undo)
!133 = !{i32 2, !"Dwarf Version", i32 2}
!134 = !{i32 2, !"Debug Info Version", i32 700000003}
!135 = !{i32 1, !"PIC Level", i32 2}
!136 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!137 = !DIExpression()
!138 = !DILocation(line: 48, column: 11, scope: !21)
!139 = !DILocation(line: 57, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !21, file: !1, line: 57, column: 6)
!141 = !DILocation(line: 57, column: 6, scope: !21)
!142 = !DILocation(line: 58, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 57, column: 20)
!144 = !{!145, !145, i64 0}
!145 = !{!"any pointer", !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C/C++ TBAA"}
!148 = !DILocation(line: 58, column: 4, scope: !143)
!149 = !DILocation(line: 60, column: 4, scope: !143)
!150 = !DILocation(line: 62, column: 13, scope: !21)
!151 = !{!152, !153, i64 8}
!152 = !{!"_BKL", !145, i64 0, !153, i64 8, !153, i64 12, !153, i64 16, !153, i64 20, !153, i64 24, !153, i64 28, !153, i64 32, !153, i64 36, !153, i64 40, !145, i64 48, !146, i64 56, !145, i64 72, !154, i64 80}
!153 = !{!"int", !146, i64 0}
!154 = !{!"float", !146, i64 0}
!155 = !DILocation(line: 51, column: 9, scope: !21)
!156 = !DILocation(line: 72, column: 11, scope: !98)
!157 = !DILocation(line: 72, column: 6, scope: !21)
!158 = !DILocation(line: 79, column: 19, scope: !97)
!159 = !DILocation(line: 73, column: 10, scope: !97)
!160 = !DILocation(line: 80, column: 14, scope: !97)
!161 = !DILocation(line: 73, column: 17, scope: !97)
!162 = !DILocation(line: 81, column: 14, scope: !97)
!163 = !DILocation(line: 73, column: 26, scope: !97)
!164 = !DILocation(line: 82, column: 4, scope: !97)
!165 = !DILocation(line: 83, column: 4, scope: !97)
!166 = !DILocation(line: 84, column: 4, scope: !97)
!167 = !DILocation(line: 85, column: 4, scope: !97)
!168 = !DILocation(line: 86, column: 11, scope: !97)
!169 = !DILocation(line: 50, column: 9, scope: !21)
!170 = !DILocation(line: 87, column: 1, scope: !97)
!171 = !DILocation(line: 98, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 98, column: 4)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 98, column: 4)
!174 = distinct !DILexicalBlock(scope: !102, file: !1, line: 98, column: 4)
!175 = !DILocation(line: 88, column: 20, scope: !102)
!176 = !DILocation(line: 98, column: 4, scope: !173)
!177 = !DILocation(line: 98, column: 4, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !1, line: 98, column: 4)
!179 = !DILocation(line: 99, column: 11, scope: !102)
!180 = !DILocation(line: 92, column: 13, scope: !102)
!181 = !DILocation(line: 91, column: 12, scope: !102)
!182 = !DILocation(line: 88, column: 13, scope: !102)
!183 = !DILocation(line: 100, column: 4, scope: !184)
!184 = distinct !DILexicalBlock(scope: !102, file: !1, line: 100, column: 4)
!185 = !DILocation(line: 101, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 100, column: 66)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 100, column: 4)
!188 = !DILocation(line: 101, column: 19, scope: !186)
!189 = !{!190, !153, i64 0}
!190 = !{!"_cell", !153, i64 0, !153, i64 4, !153, i64 8, !153, i64 12, !145, i64 16, !145, i64 24}
!191 = !DILocation(line: 102, column: 43, scope: !186)
!192 = !DILocation(line: 102, column: 50, scope: !186)
!193 = !{!190, !153, i64 12}
!194 = !DILocation(line: 102, column: 28, scope: !186)
!195 = !DILocation(line: 102, column: 35, scope: !186)
!196 = !{!190, !153, i64 8}
!197 = !DILocation(line: 102, column: 13, scope: !186)
!198 = !DILocation(line: 102, column: 20, scope: !186)
!199 = !{!190, !153, i64 4}
!200 = !DILocation(line: 103, column: 28, scope: !186)
!201 = !DILocation(line: 103, column: 33, scope: !186)
!202 = !{!190, !145, i64 24}
!203 = !DILocation(line: 103, column: 13, scope: !186)
!204 = !DILocation(line: 103, column: 20, scope: !186)
!205 = !{!190, !145, i64 16}
!206 = !DILocation(line: 100, column: 53, scope: !187)
!207 = !DILocation(line: 100, column: 61, scope: !187)
!208 = !DILocation(line: 110, column: 38, scope: !102)
!209 = !{!152, !145, i64 0}
!210 = !DILocation(line: 110, column: 15, scope: !102)
!211 = !DILocation(line: 90, column: 13, scope: !102)
!212 = !DILocation(line: 127, column: 9, scope: !102)
!213 = !DILocation(line: 127, column: 15, scope: !102)
!214 = !{!152, !153, i64 24}
!215 = !DILocation(line: 128, column: 15, scope: !102)
!216 = !DILocation(line: 89, column: 12, scope: !102)
!217 = !DILocation(line: 140, column: 4, scope: !102)
!218 = !DILocation(line: 141, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !102, file: !1, line: 140, column: 16)
!220 = !DILocation(line: 142, column: 14, scope: !219)
!221 = !DILocation(line: 149, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 149, column: 12)
!223 = !DILocation(line: 149, column: 12, scope: !219)
!224 = !DILocation(line: 160, column: 4, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 160, column: 4)
!226 = distinct !DILexicalBlock(scope: !102, file: !1, line: 160, column: 4)
!227 = !DILocation(line: 161, column: 4, scope: !102)
!228 = !DILocation(line: 162, column: 4, scope: !102)
!229 = !DILocation(line: 165, column: 1, scope: !21)
!230 = !DILocation(line: 177, column: 13, scope: !108)
!231 = !DILocation(line: 178, column: 12, scope: !108)
!232 = !DILocation(line: 179, column: 12, scope: !108)
!233 = !DILocation(line: 180, column: 13, scope: !108)
!234 = !DILocation(line: 181, column: 12, scope: !108)
!235 = !DILocation(line: 192, column: 10, scope: !236)
!236 = distinct !DILexicalBlock(scope: !108, file: !1, line: 192, column: 6)
!237 = !DILocation(line: 192, column: 27, scope: !236)
!238 = !DILocation(line: 192, column: 18, scope: !236)
!239 = !DILocation(line: 192, column: 43, scope: !236)
!240 = !DILocation(line: 192, column: 63, scope: !236)
!241 = !DILocation(line: 193, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 192, column: 72)
!243 = !DILocation(line: 193, column: 4, scope: !242)
!244 = !DILocation(line: 195, column: 4, scope: !242)
!245 = !DILocation(line: 197, column: 17, scope: !108)
!246 = !DILocation(line: 185, column: 24, scope: !108)
!247 = !DILocation(line: 198, column: 12, scope: !108)
!248 = !DILocation(line: 186, column: 10, scope: !108)
!249 = !DILocation(line: 204, column: 12, scope: !108)
!250 = !DILocation(line: 184, column: 9, scope: !108)
!251 = !DILocation(line: 210, column: 25, scope: !108)
!252 = !DILocation(line: 211, column: 25, scope: !108)
!253 = !DILocation(line: 185, column: 9, scope: !108)
!254 = !DILocation(line: 212, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 212, column: 1)
!256 = distinct !DILexicalBlock(scope: !108, file: !1, line: 212, column: 1)
!257 = !DILocation(line: 212, column: 1, scope: !256)
!258 = !DILocation(line: 238, column: 15, scope: !108)
!259 = !DILocation(line: 238, column: 20, scope: !108)
!260 = !DILocation(line: 238, column: 1, scope: !108)
!261 = !DILocation(line: 247, column: 31, scope: !262)
!262 = distinct !DILexicalBlock(scope: !108, file: !1, line: 238, column: 30)
!263 = !DILocation(line: 248, column: 31, scope: !262)
!264 = !DILocation(line: 305, column: 12, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 297, column: 27)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 297, column: 9)
!267 = !DILocation(line: 213, column: 12, scope: !268)
!268 = distinct !DILexicalBlock(scope: !255, file: !1, line: 212, column: 38)
!269 = !DILocation(line: 183, column: 10, scope: !108)
!270 = !DILocation(line: 214, column: 10, scope: !268)
!271 = !DILocation(line: 214, column: 16, scope: !268)
!272 = !DILocation(line: 215, column: 24, scope: !268)
!273 = !DILocation(line: 215, column: 29, scope: !268)
!274 = !DILocation(line: 215, column: 10, scope: !268)
!275 = !DILocation(line: 215, column: 16, scope: !268)
!276 = !DILocation(line: 216, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !1, line: 216, column: 9)
!278 = !DILocation(line: 216, column: 35, scope: !277)
!279 = !DILocation(line: 216, column: 9, scope: !268)
!280 = !DILocation(line: 223, column: 37, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 216, column: 42)
!282 = !DILocation(line: 224, column: 27, scope: !281)
!283 = !DILocation(line: 224, column: 42, scope: !281)
!284 = !DILocation(line: 223, column: 7, scope: !281)
!285 = !DILocation(line: 230, column: 7, scope: !281)
!286 = !DILocation(line: 231, column: 4, scope: !281)
!287 = !DILocation(line: 361, column: 23, scope: !108)
!288 = !DILocation(line: 361, column: 29, scope: !108)
!289 = !DILocation(line: 361, column: 1, scope: !108)
!290 = !DILocation(line: 245, column: 17, scope: !262)
!291 = !DILocation(line: 246, column: 31, scope: !262)
!292 = !{!153, !153, i64 0}
!293 = !DILocation(line: 246, column: 51, scope: !262)
!294 = !DILocation(line: 246, column: 43, scope: !262)
!295 = !DILocation(line: 247, column: 51, scope: !262)
!296 = !DILocation(line: 247, column: 43, scope: !262)
!297 = !DILocation(line: 248, column: 51, scope: !262)
!298 = !DILocation(line: 248, column: 43, scope: !262)
!299 = !DILocation(line: 246, column: 17, scope: !262)
!300 = !DILocation(line: 184, column: 19, scope: !108)
!301 = !DILocation(line: 254, column: 10, scope: !302)
!302 = distinct !DILexicalBlock(scope: !262, file: !1, line: 254, column: 4)
!303 = !DILocation(line: 254, column: 23, scope: !302)
!304 = !DILocation(line: 254, column: 35, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !1, line: 254, column: 4)
!306 = !DILocation(line: 254, column: 4, scope: !302)
!307 = !DILocation(line: 255, column: 28, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 254, column: 65)
!309 = !DILocation(line: 255, column: 48, scope: !308)
!310 = !DILocation(line: 255, column: 40, scope: !308)
!311 = !DILocation(line: 256, column: 28, scope: !308)
!312 = !DILocation(line: 256, column: 48, scope: !308)
!313 = !DILocation(line: 256, column: 40, scope: !308)
!314 = !DILocation(line: 257, column: 28, scope: !308)
!315 = !DILocation(line: 257, column: 48, scope: !308)
!316 = !DILocation(line: 257, column: 40, scope: !308)
!317 = !DILocation(line: 255, column: 14, scope: !308)
!318 = !DILocation(line: 184, column: 31, scope: !108)
!319 = !DILocation(line: 263, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !308, file: !1, line: 263, column: 12)
!321 = !DILocation(line: 263, column: 12, scope: !308)
!322 = !DILocation(line: 268, column: 22, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !1, line: 263, column: 32)
!324 = !DILocation(line: 270, column: 7, scope: !323)
!325 = !DILocation(line: 277, column: 12, scope: !262)
!326 = !DILocation(line: 278, column: 4, scope: !262)
!327 = !DILocation(line: 291, column: 4, scope: !262)
!328 = !DILocation(line: 292, column: 25, scope: !262)
!329 = !DILocation(line: 292, column: 38, scope: !262)
!330 = !DILocation(line: 292, column: 51, scope: !262)
!331 = !DILocation(line: 292, column: 11, scope: !262)
!332 = !DILocation(line: 297, column: 18, scope: !266)
!333 = !DILocation(line: 297, column: 9, scope: !262)
!334 = !DILocation(line: 304, column: 7, scope: !265)
!335 = !DILocation(line: 305, column: 20, scope: !265)
!336 = !{!152, !153, i64 36}
!337 = !DILocation(line: 306, column: 4, scope: !265)
!338 = !DILocation(line: 312, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !266, file: !1, line: 306, column: 11)
!340 = !DILocation(line: 319, column: 4, scope: !262)
!341 = !DILocation(line: 319, column: 14, scope: !262)
!342 = !DILocation(line: 185, column: 30, scope: !108)
!343 = !DILocation(line: 186, column: 21, scope: !108)
!344 = !DILocation(line: 320, column: 4, scope: !262)
!345 = !DILocation(line: 185, column: 20, scope: !108)
!346 = !DILocation(line: 321, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 321, column: 4)
!348 = distinct !DILexicalBlock(scope: !262, file: !1, line: 321, column: 4)
!349 = !DILocation(line: 321, column: 22, scope: !347)
!350 = !DILocation(line: 321, column: 4, scope: !348)
!351 = !DILocation(line: 322, column: 14, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 321, column: 38)
!353 = !DILocation(line: 185, column: 14, scope: !108)
!354 = !DILocation(line: 323, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 323, column: 12)
!356 = !DILocation(line: 323, column: 23, scope: !355)
!357 = !DILocation(line: 323, column: 31, scope: !355)
!358 = !DILocation(line: 323, column: 34, scope: !355)
!359 = !DILocation(line: 323, column: 61, scope: !355)
!360 = !DILocation(line: 323, column: 12, scope: !352)
!361 = !DILocation(line: 336, column: 18, scope: !362)
!362 = distinct !DILexicalBlock(scope: !355, file: !1, line: 323, column: 68)
!363 = !DILocation(line: 337, column: 41, scope: !362)
!364 = !DILocation(line: 338, column: 30, scope: !362)
!365 = !DILocation(line: 338, column: 45, scope: !362)
!366 = !DILocation(line: 337, column: 10, scope: !362)
!367 = !DILocation(line: 344, column: 21, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !1, line: 344, column: 15)
!369 = !DILocation(line: 344, column: 26, scope: !368)
!370 = !DILocation(line: 344, column: 15, scope: !362)
!371 = !DILocation(line: 351, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !1, line: 344, column: 36)
!373 = !DILocation(line: 352, column: 10, scope: !372)
!374 = !DILocation(line: 366, column: 4, scope: !375)
!375 = distinct !DILexicalBlock(scope: !108, file: !1, line: 361, column: 39)
!376 = !DILocation(line: 367, column: 30, scope: !375)
!377 = !DILocation(line: 367, column: 4, scope: !375)
!378 = !DILocation(line: 369, column: 1, scope: !108)
