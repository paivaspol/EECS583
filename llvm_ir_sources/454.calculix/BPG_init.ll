; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in BPG_init(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"\0A fatal error in BPG_initFromColoring(%p,%p,%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in BPG_initFromColoring\0A nX = %d, nY = %d\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"\0A colors\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"\0A graph\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @BPG_init(%struct._BPG* %bpg, i32 %nX, i32 %nY, %struct._Graph* %graph) #0 {
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !56, metadata !103), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %nX, i64 0, metadata !57, metadata !103), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %nY, i64 0, metadata !58, metadata !103), !dbg !106
  tail call void @llvm.dbg.value(metadata %struct._Graph* %graph, i64 0, metadata !59, metadata !103), !dbg !107
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !108
  %2 = icmp slt i32 %nX, 1, !dbg !110
  %or.cond = or i1 %1, %2, !dbg !111
  %3 = icmp slt i32 %nY, 1, !dbg !112
  %or.cond3 = or i1 %or.cond, %3, !dbg !111
  %4 = icmp eq %struct._Graph* %graph, null, !dbg !113
  %or.cond5 = or i1 %or.cond3, %4, !dbg !111
  br i1 %or.cond5, label %5, label %8, !dbg !111

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !114, !tbaa !116
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* %bpg, i32 %nX, i32 %nY, %struct._Graph* %graph) #6, !dbg !120
  tail call void @exit(i32 -1) #7, !dbg !121
  unreachable, !dbg !121

; <label>:8                                       ; preds = %0
  tail call void @BPG_clearData(%struct._BPG* %bpg) #6, !dbg !122
  %9 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !123
  store i32 %nX, i32* %9, align 4, !dbg !124, !tbaa !125
  %10 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !128
  store i32 %nY, i32* %10, align 4, !dbg !129, !tbaa !130
  %11 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !131
  store %struct._Graph* %graph, %struct._Graph** %11, align 8, !dbg !132, !tbaa !133
  %12 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !134
  %13 = load %struct._IVL** %12, align 8, !dbg !134, !tbaa !135
  tail call void @llvm.dbg.value(metadata %struct._IVL* %13, i64 0, metadata !67, metadata !103), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !103), !dbg !138
  %14 = icmp sgt i32 %nX, 0, !dbg !139
  %15 = add nsw i32 %nY, %nX
  br i1 %14, label %.lr.ph35, label %.preheader, !dbg !142

.lr.ph35:                                         ; preds = %8
  %16 = add i32 %nX, -1, !dbg !142
  br label %18, !dbg !142

.preheader:                                       ; preds = %.outer9._crit_edge, %8
  %17 = icmp sgt i32 %nY, 0, !dbg !143
  br i1 %17, label %.lr.ph23, label %._crit_edge24, !dbg !146

; <label>:18                                      ; preds = %.outer9._crit_edge, %.lr.ph35
  %v.033 = phi i32 [ 0, %.lr.ph35 ], [ %38, %.outer9._crit_edge ]
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !64, metadata !103), !dbg !147
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  call void @IVL_listAndSize(%struct._IVL* %13, i32 %v.033, i32* %vsize, i32** %vadj) #6, !dbg !149
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !103), !dbg !151
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !64, metadata !103), !dbg !147
  %19 = load i32* %vsize, align 4, !dbg !152, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !62, metadata !103), !dbg !154
  %20 = icmp slt i32 %19, 1, !dbg !155
  br i1 %20, label %.outer9._crit_edge, label %.lr.ph26.lr.ph, !dbg !156

.lr.ph26.lr.ph:                                   ; preds = %18
  %21 = add nsw i32 %19, -1, !dbg !157
  %22 = load i32** %vadj, align 8, !dbg !158, !tbaa !116
  %23 = sext i32 %19 to i64
  br label %.lr.ph26, !dbg !156

.lr.ph26:                                         ; preds = %.lr.ph26.lr.ph, %.outer9
  %indvars.iv51.in = phi i64 [ %23, %.lr.ph26.lr.ph ], [ %indvars.iv51, %.outer9 ]
  %ii.0.ph31 = phi i32 [ 0, %.lr.ph26.lr.ph ], [ %33, %.outer9 ]
  %jj.0.ph30 = phi i32 [ %21, %.lr.ph26.lr.ph ], [ %36, %.outer9 ]
  %indvars.iv51 = add i64 %indvars.iv51.in, -1, !dbg !156
  %24 = sext i32 %ii.0.ph31 to i64
  br label %25, !dbg !156

; <label>:25                                      ; preds = %30, %.lr.ph26
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %30 ], [ %24, %.lr.ph26 ]
  %ii.025 = phi i32 [ %31, %30 ], [ %ii.0.ph31, %.lr.ph26 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  %26 = getelementptr inbounds i32* %22, i64 %indvars.iv49, !dbg !158
  %27 = load i32* %26, align 4, !dbg !158, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !65, metadata !103), !dbg !160
  %28 = icmp sge i32 %27, %nX, !dbg !161
  %29 = icmp slt i32 %27, %15, !dbg !163
  %or.cond7 = and i1 %28, %29, !dbg !164
  br i1 %or.cond7, label %30, label %.outer9, !dbg !164

; <label>:30                                      ; preds = %25
  %31 = add nsw i32 %ii.025, 1, !dbg !165
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !61, metadata !103), !dbg !151
  %32 = icmp slt i64 %indvars.iv49, %indvars.iv51, !dbg !155
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1, !dbg !156
  br i1 %32, label %25, label %.outer9._crit_edge, !dbg !156

.outer9:                                          ; preds = %25
  %33 = trunc i64 %indvars.iv49 to i32, !dbg !167
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  %34 = getelementptr inbounds i32* %22, i64 %indvars.iv51, !dbg !167
  %35 = load i32* %34, align 4, !dbg !167, !tbaa !153
  store i32 %35, i32* %26, align 4, !dbg !169, !tbaa !153
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  store i32 %27, i32* %34, align 4, !dbg !170, !tbaa !153
  %36 = add nsw i32 %jj.0.ph30, -1, !dbg !171
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !62, metadata !103), !dbg !154
  %37 = icmp sgt i32 %33, %36, !dbg !155
  br i1 %37, label %.outer9._crit_edge, label %.lr.ph26, !dbg !156

.outer9._crit_edge:                               ; preds = %.outer9, %30, %18
  %ii.0.lcssa = phi i32 [ 0, %18 ], [ %31, %30 ], [ %33, %.outer9 ]
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !64, metadata !103), !dbg !147
  store i32 %ii.0.lcssa, i32* %vsize, align 4, !dbg !172, !tbaa !153
  call void @IVL_setList(%struct._IVL* %13, i32 %v.033, i32 %ii.0.lcssa, i32* null) #6, !dbg !173
  %38 = add nuw nsw i32 %v.033, 1, !dbg !174
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !63, metadata !103), !dbg !138
  %exitcond = icmp eq i32 %v.033, %16, !dbg !142
  br i1 %exitcond, label %.preheader, label %18, !dbg !142

.lr.ph23:                                         ; preds = %.preheader, %.outer._crit_edge
  %v.122 = phi i32 [ %58, %.outer._crit_edge ], [ %nX, %.preheader ]
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !64, metadata !103), !dbg !147
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  call void @IVL_listAndSize(%struct._IVL* %13, i32 %v.122, i32* %vsize, i32** %vadj) #6, !dbg !175
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !103), !dbg !151
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !64, metadata !103), !dbg !147
  %39 = load i32* %vsize, align 4, !dbg !177, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !62, metadata !103), !dbg !154
  %40 = icmp slt i32 %39, 1, !dbg !178
  br i1 %40, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !179

.lr.ph.lr.ph:                                     ; preds = %.lr.ph23
  %41 = add nsw i32 %39, -1, !dbg !180
  %42 = load i32** %vadj, align 8, !dbg !181, !tbaa !116
  %43 = sext i32 %39 to i64
  br label %.lr.ph, !dbg !179

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %indvars.iv47.in = phi i64 [ %43, %.lr.ph.lr.ph ], [ %indvars.iv47, %.outer ]
  %ii.1.ph20 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %53, %.outer ]
  %jj.1.ph19 = phi i32 [ %41, %.lr.ph.lr.ph ], [ %56, %.outer ]
  %indvars.iv47 = add i64 %indvars.iv47.in, -1, !dbg !179
  %44 = sext i32 %ii.1.ph20 to i64
  br label %45, !dbg !179

; <label>:45                                      ; preds = %50, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %50 ], [ %44, %.lr.ph ]
  %ii.117 = phi i32 [ %51, %50 ], [ %ii.1.ph20, %.lr.ph ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  %46 = getelementptr inbounds i32* %42, i64 %indvars.iv, !dbg !181
  %47 = load i32* %46, align 4, !dbg !181, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !65, metadata !103), !dbg !160
  %48 = icmp sgt i32 %47, -1, !dbg !183
  %49 = icmp slt i32 %47, %nX, !dbg !185
  %or.cond8 = and i1 %48, %49, !dbg !186
  br i1 %or.cond8, label %50, label %.outer, !dbg !186

; <label>:50                                      ; preds = %45
  %51 = add nsw i32 %ii.117, 1, !dbg !187
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !61, metadata !103), !dbg !151
  %52 = icmp slt i64 %indvars.iv, %indvars.iv47, !dbg !178
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !179
  br i1 %52, label %45, label %.outer._crit_edge, !dbg !179

.outer:                                           ; preds = %45
  %53 = trunc i64 %indvars.iv to i32, !dbg !189
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  %54 = getelementptr inbounds i32* %42, i64 %indvars.iv47, !dbg !189
  %55 = load i32* %54, align 4, !dbg !189, !tbaa !153
  store i32 %55, i32* %46, align 4, !dbg !191, !tbaa !153
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !66, metadata !103), !dbg !148
  store i32 %47, i32* %54, align 4, !dbg !192, !tbaa !153
  %56 = add nsw i32 %jj.1.ph19, -1, !dbg !193
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !62, metadata !103), !dbg !154
  %57 = icmp sgt i32 %53, %56, !dbg !178
  br i1 %57, label %.outer._crit_edge, label %.lr.ph, !dbg !179

.outer._crit_edge:                                ; preds = %.outer, %50, %.lr.ph23
  %ii.1.lcssa = phi i32 [ 0, %.lr.ph23 ], [ %51, %50 ], [ %53, %.outer ]
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !64, metadata !103), !dbg !147
  store i32 %ii.1.lcssa, i32* %vsize, align 4, !dbg !194, !tbaa !153
  call void @IVL_setList(%struct._IVL* %13, i32 %v.122, i32 %ii.1.lcssa, i32* null) #6, !dbg !195
  %58 = add nsw i32 %v.122, 1, !dbg !196
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !63, metadata !103), !dbg !138
  %59 = icmp slt i32 %58, %15, !dbg !143
  br i1 %59, label %.lr.ph23, label %._crit_edge24, !dbg !146

._crit_edge24:                                    ; preds = %.outer._crit_edge, %.preheader
  ret void, !dbg !197
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @BPG_clearData(%struct._BPG*) #3

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @BPG_initFromColoring(%struct._BPG* %bpg, %struct._Graph* %graph, i32* %colors, i32 %cX, i32 %cY, i32* %cmap, i32* nocapture %indX, i32* nocapture %indY) #0 {
  %ierr = alloca i32, align 4
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %vewghts = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !72, metadata !103), !dbg !198
  tail call void @llvm.dbg.value(metadata %struct._Graph* %graph, i64 0, metadata !73, metadata !103), !dbg !199
  tail call void @llvm.dbg.value(metadata i32* %colors, i64 0, metadata !74, metadata !103), !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %cX, i64 0, metadata !75, metadata !103), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %cY, i64 0, metadata !76, metadata !103), !dbg !202
  tail call void @llvm.dbg.value(metadata i32* %cmap, i64 0, metadata !77, metadata !103), !dbg !203
  tail call void @llvm.dbg.value(metadata i32* %indX, i64 0, metadata !78, metadata !103), !dbg !204
  tail call void @llvm.dbg.value(metadata i32* %indY, i64 0, metadata !79, metadata !103), !dbg !205
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !206
  %2 = icmp eq %struct._Graph* %graph, null, !dbg !208
  %or.cond = or i1 %1, %2, !dbg !209
  %3 = icmp eq i32* %colors, null, !dbg !210
  %or.cond3 = or i1 %or.cond, %3, !dbg !209
  %4 = or i32 %cY, %cX, !dbg !209
  %5 = icmp slt i32 %4, 0, !dbg !209
  %6 = or i1 %or.cond3, %5, !dbg !209
  br i1 %6, label %10, label %7, !dbg !209

; <label>:7                                       ; preds = %0
  %8 = icmp eq i32 %cX, %cY, !dbg !211
  %9 = icmp eq i32* %cmap, null, !dbg !212
  %or.cond9 = or i1 %8, %9, !dbg !213
  br i1 %or.cond9, label %10, label %13, !dbg !213

; <label>:10                                      ; preds = %7, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !214, !tbaa !116
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), %struct._BPG* %bpg, %struct._Graph* %graph, i32* %colors, i32 %cX, i32 %cY, i32* %cmap) #6, !dbg !216
  tail call void @exit(i32 -1) #7, !dbg !217
  unreachable, !dbg !217

; <label>:13                                      ; preds = %7
  tail call void @BPG_clearData(%struct._BPG* %bpg) #6, !dbg !218
  %14 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !219
  %15 = load i32* %14, align 4, !dbg !219, !tbaa !220
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !87, metadata !103), !dbg !221
  tail call void @IVfill(i32 %15, i32* %cmap, i32 -1) #6, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !90, metadata !103), !dbg !223
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !103), !dbg !224
  %16 = icmp sgt i32 %15, 0, !dbg !225
  br i1 %16, label %.lr.ph70, label %._crit_edge65, !dbg !228

.lr.ph70:                                         ; preds = %13
  %17 = add i32 %15, -1, !dbg !228
  br label %20, !dbg !228

.preheader15:                                     ; preds = %30
  %18 = icmp sgt i32 %nX.1, 0, !dbg !229
  br i1 %18, label %.lr.ph64, label %._crit_edge65, !dbg !232

.lr.ph64:                                         ; preds = %.preheader15
  %19 = add i32 %nX.1, -1, !dbg !232
  br label %31, !dbg !232

; <label>:20                                      ; preds = %30, %.lr.ph70
  %indvars.iv108 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next109, %30 ]
  %nX.067 = phi i32 [ 0, %.lr.ph70 ], [ %nX.1, %30 ]
  %21 = getelementptr inbounds i32* %colors, i64 %indvars.iv108, !dbg !233
  %22 = load i32* %21, align 4, !dbg !233, !tbaa !153
  %23 = icmp eq i32 %22, %cX, !dbg !236
  br i1 %23, label %24, label %._crit_edge116, !dbg !237

._crit_edge116:                                   ; preds = %20
  %.pre117 = trunc i64 %indvars.iv108 to i32, !dbg !228
  br label %30, !dbg !237

; <label>:24                                      ; preds = %20
  %25 = sext i32 %nX.067 to i64, !dbg !238
  %26 = getelementptr inbounds i32* %indX, i64 %25, !dbg !238
  %27 = trunc i64 %indvars.iv108 to i32, !dbg !240
  store i32 %27, i32* %26, align 4, !dbg !240, !tbaa !153
  %28 = add nsw i32 %nX.067, 1, !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !88, metadata !103), !dbg !224
  %29 = getelementptr inbounds i32* %cmap, i64 %indvars.iv108, !dbg !242
  store i32 %nX.067, i32* %29, align 4, !dbg !243, !tbaa !153
  br label %30, !dbg !244

; <label>:30                                      ; preds = %._crit_edge116, %24
  %lftr.wideiv110.pre-phi = phi i32 [ %.pre117, %._crit_edge116 ], [ %27, %24 ], !dbg !228
  %nX.1 = phi i32 [ %nX.067, %._crit_edge116 ], [ %28, %24 ]
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1, !dbg !228
  %exitcond111 = icmp eq i32 %lftr.wideiv110.pre-phi, %17, !dbg !228
  br i1 %exitcond111, label %.preheader15, label %20, !dbg !228

; <label>:31                                      ; preds = %._crit_edge60, %.lr.ph64
  %indvars.iv104 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next105, %._crit_edge60 ]
  %nY.063 = phi i32 [ 0, %.lr.ph64 ], [ %nY.1.lcssa, %._crit_edge60 ]
  %32 = getelementptr inbounds i32* %indX, i64 %indvars.iv104, !dbg !245
  %33 = load i32* %32, align 4, !dbg !245, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !90, metadata !103), !dbg !223
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %33, i32* %vsize, i32** %vadj) #6, !dbg !249
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !103), !dbg !250
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %34 = load i32* %vsize, align 4, !dbg !251, !tbaa !153
  %35 = icmp sgt i32 %34, 0, !dbg !254
  br i1 %35, label %.lr.ph59, label %._crit_edge60, !dbg !255

.lr.ph59:                                         ; preds = %31
  %36 = load i32** %vadj, align 8, !dbg !256, !tbaa !116
  br label %37, !dbg !255

; <label>:37                                      ; preds = %.lr.ph59, %55
  %indvars.iv102 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next103, %55 ]
  %nY.156 = phi i32 [ %nY.063, %.lr.ph59 ], [ %nY.2, %55 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  %38 = getelementptr inbounds i32* %36, i64 %indvars.iv102, !dbg !256
  %39 = load i32* %38, align 4, !dbg !256, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !92, metadata !103), !dbg !259
  %40 = icmp slt i32 %39, %15, !dbg !260
  br i1 %40, label %41, label %55, !dbg !261

; <label>:41                                      ; preds = %37
  %42 = sext i32 %39 to i64, !dbg !262
  %43 = getelementptr inbounds i32* %colors, i64 %42, !dbg !262
  %44 = load i32* %43, align 4, !dbg !262, !tbaa !153
  %45 = icmp eq i32 %44, %cY, !dbg !263
  br i1 %45, label %46, label %55, !dbg !264

; <label>:46                                      ; preds = %41
  %47 = getelementptr inbounds i32* %cmap, i64 %42, !dbg !265
  %48 = load i32* %47, align 4, !dbg !265, !tbaa !153
  %49 = icmp eq i32 %48, -1, !dbg !266
  br i1 %49, label %50, label %55, !dbg !267

; <label>:50                                      ; preds = %46
  %51 = sext i32 %nY.156 to i64, !dbg !268
  %52 = getelementptr inbounds i32* %indY, i64 %51, !dbg !268
  store i32 %39, i32* %52, align 4, !dbg !270, !tbaa !153
  %53 = add nsw i32 %nY.156, 1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !89, metadata !103), !dbg !272
  %54 = add nsw i32 %nY.156, %nX.1, !dbg !273
  store i32 %54, i32* %47, align 4, !dbg !274, !tbaa !153
  br label %55, !dbg !275

; <label>:55                                      ; preds = %37, %41, %46, %50
  %nY.2 = phi i32 [ %53, %50 ], [ %nY.156, %46 ], [ %nY.156, %41 ], [ %nY.156, %37 ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1, !dbg !255
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %56 = sext i32 %34 to i64, !dbg !254
  %57 = icmp slt i64 %indvars.iv.next103, %56, !dbg !254
  br i1 %57, label %37, label %._crit_edge60, !dbg !255

._crit_edge60:                                    ; preds = %55, %31
  %nY.1.lcssa = phi i32 [ %nY.063, %31 ], [ %nY.2, %55 ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1, !dbg !232
  %lftr.wideiv106 = trunc i64 %indvars.iv104 to i32, !dbg !232
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %19, !dbg !232
  br i1 %exitcond107, label %._crit_edge65, label %31, !dbg !232

._crit_edge65:                                    ; preds = %._crit_edge60, %13, %.preheader15
  %58 = phi i1 [ false, %.preheader15 ], [ false, %13 ], [ %18, %._crit_edge60 ]
  %nX.0.lcssa118 = phi i32 [ %nX.1, %.preheader15 ], [ 0, %13 ], [ %nX.1, %._crit_edge60 ]
  %nY.0.lcssa = phi i32 [ 0, %.preheader15 ], [ 0, %13 ], [ %nY.1.lcssa, %._crit_edge60 ]
  %59 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !276
  store i32 %nX.0.lcssa118, i32* %59, align 4, !dbg !277, !tbaa !125
  %60 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !278
  store i32 %nY.0.lcssa, i32* %60, align 4, !dbg !279, !tbaa !130
  %61 = icmp eq i32 %nX.0.lcssa118, 0, !dbg !280
  %62 = icmp eq i32 %nY.0.lcssa, 0, !dbg !282
  %or.cond10 = or i1 %62, %61, !dbg !283
  br i1 %or.cond10, label %63, label %74, !dbg !283

; <label>:63                                      ; preds = %._crit_edge65
  %64 = load %struct.__sFILE** @__stderrp, align 8, !dbg !284, !tbaa !116
  %65 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %64, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 %nX.0.lcssa118, i32 %nY.0.lcssa) #6, !dbg !286
  %66 = load %struct.__sFILE** @__stderrp, align 8, !dbg !287, !tbaa !116
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %66), !dbg !288
  %68 = load %struct.__sFILE** @__stderrp, align 8, !dbg !289, !tbaa !116
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !82, metadata !103), !dbg !290
  %69 = call i32 @IVfp80(%struct.__sFILE* %68, i32 %15, i32* %colors, i32 80, i32* %ierr) #6, !dbg !291
  %70 = load %struct.__sFILE** @__stderrp, align 8, !dbg !292, !tbaa !116
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %70), !dbg !293
  %72 = load %struct.__sFILE** @__stderrp, align 8, !dbg !294, !tbaa !116
  %73 = call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct.__sFILE* %72) #6, !dbg !295
  call void @exit(i32 -1) #7, !dbg !296
  unreachable, !dbg !296

; <label>:74                                      ; preds = %._crit_edge65
  %75 = call %struct._Graph* @Graph_new() #6, !dbg !297
  call void @llvm.dbg.value(metadata %struct._Graph* %75, i64 0, metadata !80, metadata !103), !dbg !298
  %76 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !299
  store %struct._Graph* %75, %struct._Graph** %76, align 8, !dbg !300, !tbaa !133
  %77 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !301
  %78 = load i32* %77, align 4, !dbg !301, !tbaa !302
  %79 = add nsw i32 %nY.0.lcssa, %nX.0.lcssa118, !dbg !303
  call void @Graph_init1(%struct._Graph* %75, i32 %78, i32 %79, i32 0, i32 0, i32 1, i32 1) #6, !dbg !304
  %80 = load i32* %77, align 4, !dbg !305, !tbaa !302
  %81 = srem i32 %80, 2, !dbg !307
  %82 = icmp eq i32 %81, 1, !dbg !308
  br i1 %82, label %.preheader14, label %112, !dbg !309

.preheader14:                                     ; preds = %74
  br i1 %58, label %.lr.ph55, label %.preheader13, !dbg !310

.lr.ph55:                                         ; preds = %.preheader14
  %83 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !313
  %84 = load i32** %83, align 8, !dbg !313, !tbaa !316
  %85 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 7, !dbg !317
  %86 = load i32** %85, align 8, !dbg !317, !tbaa !316
  %87 = add i32 %nX.0.lcssa118, -1, !dbg !310
  br label %95, !dbg !310

.preheader13:                                     ; preds = %95, %.preheader14
  %88 = icmp sgt i32 %nY.0.lcssa, 0, !dbg !318
  br i1 %88, label %.lr.ph52, label %.preheader13._crit_edge, !dbg !321

.preheader13._crit_edge:                          ; preds = %.preheader13
  %.phi.trans.insert = getelementptr inbounds %struct._Graph* %75, i64 0, i32 7
  %.pre = load i32** %.phi.trans.insert, align 8, !dbg !322, !tbaa !316
  br label %._crit_edge53, !dbg !321

.lr.ph52:                                         ; preds = %.preheader13
  %89 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !323
  %90 = load i32** %89, align 8, !dbg !323, !tbaa !316
  %91 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 7, !dbg !325
  %92 = load i32** %91, align 8, !dbg !325, !tbaa !316
  %93 = sext i32 %nX.0.lcssa118 to i64
  %94 = add i32 %nY.0.lcssa, -1, !dbg !321
  br label %102, !dbg !321

; <label>:95                                      ; preds = %95, %.lr.ph55
  %indvars.iv98 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next99, %95 ]
  %96 = getelementptr inbounds i32* %indX, i64 %indvars.iv98, !dbg !326
  %97 = load i32* %96, align 4, !dbg !326, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !90, metadata !103), !dbg !223
  %98 = sext i32 %97 to i64, !dbg !327
  %99 = getelementptr inbounds i32* %84, i64 %98, !dbg !327
  %100 = load i32* %99, align 4, !dbg !327, !tbaa !153
  %101 = getelementptr inbounds i32* %86, i64 %indvars.iv98, !dbg !328
  store i32 %100, i32* %101, align 4, !dbg !329, !tbaa !153
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1, !dbg !310
  %lftr.wideiv100 = trunc i64 %indvars.iv98 to i32, !dbg !310
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %87, !dbg !310
  br i1 %exitcond101, label %.preheader13, label %95, !dbg !310

; <label>:102                                     ; preds = %102, %.lr.ph52
  %indvars.iv94 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next95, %102 ]
  %indvars.iv92 = phi i64 [ %93, %.lr.ph52 ], [ %indvars.iv.next93, %102 ]
  %103 = getelementptr inbounds i32* %indY, i64 %indvars.iv94, !dbg !330
  %104 = load i32* %103, align 4, !dbg !330, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !90, metadata !103), !dbg !223
  %105 = sext i32 %104 to i64, !dbg !331
  %106 = getelementptr inbounds i32* %90, i64 %105, !dbg !331
  %107 = load i32* %106, align 4, !dbg !331, !tbaa !153
  %108 = getelementptr inbounds i32* %92, i64 %indvars.iv92, !dbg !332
  store i32 %107, i32* %108, align 4, !dbg !333, !tbaa !153
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1, !dbg !321
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1, !dbg !321
  %lftr.wideiv96 = trunc i64 %indvars.iv94 to i32, !dbg !321
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %94, !dbg !321
  br i1 %exitcond97, label %._crit_edge53, label %102, !dbg !321

._crit_edge53:                                    ; preds = %102, %.preheader13._crit_edge
  %109 = phi i32* [ %.pre, %.preheader13._crit_edge ], [ %92, %102 ]
  %110 = call i32 @IVsum(i32 %79, i32* %109) #6, !dbg !334
  %111 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 4, !dbg !335
  store i32 %110, i32* %111, align 4, !dbg !336, !tbaa !337
  %.pr = load i32* %77, align 4, !dbg !338, !tbaa !302
  br label %112, !dbg !340

; <label>:112                                     ; preds = %._crit_edge53, %74
  %113 = phi i32 [ %.pr, %._crit_edge53 ], [ %80, %74 ], !dbg !338
  %114 = icmp slt i32 %113, 2, !dbg !341
  %115 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !342
  %116 = load %struct._IVL** %115, align 8, !dbg !342, !tbaa !135
  %117 = call i32 @IVL_maxListSize(%struct._IVL* %116) #6, !dbg !344
  call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !86, metadata !103), !dbg !345
  %118 = call i32* @IVinit2(i32 %117) #6, !dbg !346
  call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !96, metadata !103), !dbg !347
  br i1 %114, label %.preheader11, label %180, !dbg !348

.preheader11:                                     ; preds = %112
  br i1 %58, label %.lr.ph30, label %.preheader, !dbg !349

.lr.ph30:                                         ; preds = %.preheader11
  %119 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 6, !dbg !351
  %120 = add i32 %nX.0.lcssa118, -1, !dbg !349
  br label %124, !dbg !349

.preheader:                                       ; preds = %._crit_edge27, %.preheader11
  %121 = icmp sgt i32 %nY.0.lcssa, 0, !dbg !354
  br i1 %121, label %.lr.ph21, label %._crit_edge22, !dbg !357

.lr.ph21:                                         ; preds = %.preheader
  %122 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 6, !dbg !358
  %123 = add i32 %nY.0.lcssa, -1, !dbg !357
  br label %152, !dbg !357

; <label>:124                                     ; preds = %._crit_edge27, %.lr.ph30
  %indvars.iv76 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next77, %._crit_edge27 ]
  %125 = getelementptr inbounds i32* %indX, i64 %indvars.iv76, !dbg !360
  %126 = load i32* %125, align 4, !dbg !360, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !90, metadata !103), !dbg !223
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %126, i32* %vsize, i32** %vadj) #6, !dbg !361
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !103), !dbg !250
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !103), !dbg !362
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %127 = load i32* %vsize, align 4, !dbg !363, !tbaa !153
  %128 = icmp sgt i32 %127, 0, !dbg !366
  br i1 %128, label %.lr.ph26, label %._crit_edge27, !dbg !367

.lr.ph26:                                         ; preds = %124
  %129 = load i32** %vadj, align 8, !dbg !368, !tbaa !116
  br label %130, !dbg !367

; <label>:130                                     ; preds = %.lr.ph26, %146
  %131 = phi i32 [ %127, %.lr.ph26 ], [ %147, %146 ]
  %indvars.iv74 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next75, %146 ]
  %count.024 = phi i32 [ 0, %.lr.ph26 ], [ %count.1, %146 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  %132 = getelementptr inbounds i32* %129, i64 %indvars.iv74, !dbg !368
  %133 = load i32* %132, align 4, !dbg !368, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !92, metadata !103), !dbg !259
  %134 = icmp slt i32 %133, %15, !dbg !371
  br i1 %134, label %135, label %146, !dbg !372

; <label>:135                                     ; preds = %130
  %136 = sext i32 %133 to i64, !dbg !373
  %137 = getelementptr inbounds i32* %colors, i64 %136, !dbg !373
  %138 = load i32* %137, align 4, !dbg !373, !tbaa !153
  %139 = icmp eq i32 %138, %cY, !dbg !374
  br i1 %139, label %140, label %146, !dbg !375

; <label>:140                                     ; preds = %135
  %141 = getelementptr inbounds i32* %cmap, i64 %136, !dbg !376
  %142 = load i32* %141, align 4, !dbg !376, !tbaa !153
  %143 = add nsw i32 %count.024, 1, !dbg !378
  call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !81, metadata !103), !dbg !362
  %144 = sext i32 %count.024 to i64, !dbg !379
  %145 = getelementptr inbounds i32* %118, i64 %144, !dbg !379
  store i32 %142, i32* %145, align 4, !dbg !380, !tbaa !153
  %.pre114 = load i32* %vsize, align 4, !dbg !363, !tbaa !153
  br label %146, !dbg !381

; <label>:146                                     ; preds = %130, %135, %140
  %147 = phi i32 [ %.pre114, %140 ], [ %131, %135 ], [ %131, %130 ], !dbg !367
  %count.1 = phi i32 [ %143, %140 ], [ %count.024, %135 ], [ %count.024, %130 ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1, !dbg !367
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %148 = sext i32 %147 to i64, !dbg !366
  %149 = icmp slt i64 %indvars.iv.next75, %148, !dbg !366
  br i1 %149, label %130, label %._crit_edge27, !dbg !367

._crit_edge27:                                    ; preds = %146, %124
  %count.0.lcssa = phi i32 [ 0, %124 ], [ %count.1, %146 ]
  call void @IVqsortUp(i32 %count.0.lcssa, i32* %118) #6, !dbg !382
  %150 = load %struct._IVL** %119, align 8, !dbg !351, !tbaa !135
  %151 = trunc i64 %indvars.iv76 to i32, !dbg !383
  call void @IVL_setList(%struct._IVL* %150, i32 %151, i32 %count.0.lcssa, i32* %118) #6, !dbg !383
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1, !dbg !349
  %exitcond79 = icmp eq i32 %151, %120, !dbg !349
  br i1 %exitcond79, label %.preheader, label %124, !dbg !349

; <label>:152                                     ; preds = %._crit_edge, %.lr.ph21
  %indvars.iv72 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next73, %._crit_edge ]
  %y.120 = phi i32 [ %nX.0.lcssa118, %.lr.ph21 ], [ %179, %._crit_edge ]
  %153 = getelementptr inbounds i32* %indY, i64 %indvars.iv72, !dbg !384
  %154 = load i32* %153, align 4, !dbg !384, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !90, metadata !103), !dbg !223
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %154, i32* %vsize, i32** %vadj) #6, !dbg !385
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !103), !dbg !250
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !103), !dbg !362
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %155 = load i32* %vsize, align 4, !dbg !386, !tbaa !153
  %156 = icmp sgt i32 %155, 0, !dbg !389
  br i1 %156, label %.lr.ph, label %._crit_edge, !dbg !390

.lr.ph:                                           ; preds = %152
  %157 = load i32** %vadj, align 8, !dbg !391, !tbaa !116
  br label %158, !dbg !390

; <label>:158                                     ; preds = %.lr.ph, %174
  %159 = phi i32 [ %155, %.lr.ph ], [ %175, %174 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %174 ]
  %count.218 = phi i32 [ 0, %.lr.ph ], [ %count.3, %174 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  %160 = getelementptr inbounds i32* %157, i64 %indvars.iv, !dbg !391
  %161 = load i32* %160, align 4, !dbg !391, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !92, metadata !103), !dbg !259
  %162 = icmp slt i32 %161, %15, !dbg !394
  br i1 %162, label %163, label %174, !dbg !395

; <label>:163                                     ; preds = %158
  %164 = sext i32 %161 to i64, !dbg !396
  %165 = getelementptr inbounds i32* %colors, i64 %164, !dbg !396
  %166 = load i32* %165, align 4, !dbg !396, !tbaa !153
  %167 = icmp eq i32 %166, %cX, !dbg !397
  br i1 %167, label %168, label %174, !dbg !398

; <label>:168                                     ; preds = %163
  %169 = getelementptr inbounds i32* %cmap, i64 %164, !dbg !399
  %170 = load i32* %169, align 4, !dbg !399, !tbaa !153
  %171 = add nsw i32 %count.218, 1, !dbg !401
  call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !81, metadata !103), !dbg !362
  %172 = sext i32 %count.218 to i64, !dbg !402
  %173 = getelementptr inbounds i32* %118, i64 %172, !dbg !402
  store i32 %170, i32* %173, align 4, !dbg !403, !tbaa !153
  %.pre115 = load i32* %vsize, align 4, !dbg !386, !tbaa !153
  br label %174, !dbg !404

; <label>:174                                     ; preds = %158, %163, %168
  %175 = phi i32 [ %.pre115, %168 ], [ %159, %163 ], [ %159, %158 ], !dbg !390
  %count.3 = phi i32 [ %171, %168 ], [ %count.218, %163 ], [ %count.218, %158 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !390
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %176 = sext i32 %175 to i64, !dbg !389
  %177 = icmp slt i64 %indvars.iv.next, %176, !dbg !389
  br i1 %177, label %158, label %._crit_edge, !dbg !390

._crit_edge:                                      ; preds = %174, %152
  %count.2.lcssa = phi i32 [ 0, %152 ], [ %count.3, %174 ]
  call void @IVqsortUp(i32 %count.2.lcssa, i32* %118) #6, !dbg !405
  %178 = load %struct._IVL** %122, align 8, !dbg !358, !tbaa !135
  call void @IVL_setList(%struct._IVL* %178, i32 %y.120, i32 %count.2.lcssa, i32* %118) #6, !dbg !406
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1, !dbg !357
  %179 = add nsw i32 %y.120, 1, !dbg !407
  call void @llvm.dbg.value(metadata i32 %179, i64 0, metadata !94, metadata !103), !dbg !408
  %lftr.wideiv = trunc i64 %indvars.iv72 to i32, !dbg !357
  %exitcond = icmp eq i32 %lftr.wideiv, %123, !dbg !357
  br i1 %exitcond, label %._crit_edge22, label %152, !dbg !357

._crit_edge22:                                    ; preds = %._crit_edge, %.preheader
  call void @IVfree(i32* %118) #6, !dbg !409
  br label %253, !dbg !410

; <label>:180                                     ; preds = %112
  %181 = call i32* @IVinit2(i32 %117) #6, !dbg !411
  call void @llvm.dbg.value(metadata i32* %181, i64 0, metadata !95, metadata !103), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !103), !dbg !414
  br i1 %58, label %.lr.ph49, label %.preheader12, !dbg !415

.lr.ph49:                                         ; preds = %180
  %182 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 6, !dbg !417
  %183 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 8, !dbg !420
  %184 = add i32 %nX.0.lcssa118, -1, !dbg !415
  br label %189, !dbg !415

.preheader12:                                     ; preds = %._crit_edge45, %180
  %185 = icmp sgt i32 %nY.0.lcssa, 0, !dbg !421
  br i1 %185, label %.lr.ph39, label %._crit_edge40, !dbg !424

.lr.ph39:                                         ; preds = %.preheader12
  %186 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 6, !dbg !425
  %187 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 8, !dbg !427
  %188 = add i32 %nY.0.lcssa, -1, !dbg !424
  br label %222, !dbg !424

; <label>:189                                     ; preds = %._crit_edge45, %.lr.ph49
  %indvars.iv88 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next89, %._crit_edge45 ]
  %190 = getelementptr inbounds i32* %indX, i64 %indvars.iv88, !dbg !428
  %191 = load i32* %190, align 4, !dbg !428, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !90, metadata !103), !dbg !223
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  call void @llvm.dbg.value(metadata i32** %vewghts, i64 0, metadata !98, metadata !103), !dbg !429
  call void @Graph_adjAndEweights(%struct._Graph* %graph, i32 %191, i32* %vsize, i32** %vadj, i32** %vewghts) #6, !dbg !430
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !103), !dbg !250
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !103), !dbg !362
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %192 = load i32* %vsize, align 4, !dbg !431, !tbaa !153
  %193 = icmp sgt i32 %192, 0, !dbg !434
  br i1 %193, label %.lr.ph44, label %._crit_edge45, !dbg !435

.lr.ph44:                                         ; preds = %189
  %194 = load i32** %vadj, align 8, !dbg !436, !tbaa !116
  %195 = load i32** %vewghts, align 8, !dbg !439, !tbaa !116
  br label %196, !dbg !435

; <label>:196                                     ; preds = %.lr.ph44, %215
  %197 = phi i32 [ %192, %.lr.ph44 ], [ %216, %215 ]
  %indvars.iv86 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next87, %215 ]
  %count.442 = phi i32 [ 0, %.lr.ph44 ], [ %count.5, %215 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  %198 = getelementptr inbounds i32* %194, i64 %indvars.iv86, !dbg !436
  %199 = load i32* %198, align 4, !dbg !436, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %199, i64 0, metadata !92, metadata !103), !dbg !259
  %200 = icmp slt i32 %199, %15, !dbg !441
  br i1 %200, label %201, label %215, !dbg !442

; <label>:201                                     ; preds = %196
  %202 = sext i32 %199 to i64, !dbg !443
  %203 = getelementptr inbounds i32* %colors, i64 %202, !dbg !443
  %204 = load i32* %203, align 4, !dbg !443, !tbaa !153
  %205 = icmp eq i32 %204, %cY, !dbg !444
  br i1 %205, label %206, label %215, !dbg !445

; <label>:206                                     ; preds = %201
  %207 = getelementptr inbounds i32* %cmap, i64 %202, !dbg !446
  %208 = load i32* %207, align 4, !dbg !446, !tbaa !153
  %209 = sext i32 %count.442 to i64, !dbg !447
  %210 = getelementptr inbounds i32* %118, i64 %209, !dbg !447
  store i32 %208, i32* %210, align 4, !dbg !448, !tbaa !153
  call void @llvm.dbg.value(metadata i32** %vewghts, i64 0, metadata !98, metadata !103), !dbg !429
  %211 = getelementptr inbounds i32* %195, i64 %indvars.iv86, !dbg !439
  %212 = load i32* %211, align 4, !dbg !439, !tbaa !153
  %213 = getelementptr inbounds i32* %181, i64 %209, !dbg !449
  store i32 %212, i32* %213, align 4, !dbg !450, !tbaa !153
  %214 = add nsw i32 %count.442, 1, !dbg !451
  call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !81, metadata !103), !dbg !362
  %.pre112 = load i32* %vsize, align 4, !dbg !431, !tbaa !153
  br label %215, !dbg !452

; <label>:215                                     ; preds = %196, %201, %206
  %216 = phi i32 [ %.pre112, %206 ], [ %197, %201 ], [ %197, %196 ], !dbg !435
  %count.5 = phi i32 [ %214, %206 ], [ %count.442, %201 ], [ %count.442, %196 ]
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1, !dbg !435
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %217 = sext i32 %216 to i64, !dbg !434
  %218 = icmp slt i64 %indvars.iv.next87, %217, !dbg !434
  br i1 %218, label %196, label %._crit_edge45, !dbg !435

._crit_edge45:                                    ; preds = %215, %189
  %count.4.lcssa = phi i32 [ 0, %189 ], [ %count.5, %215 ]
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %118, i32* %181) #6, !dbg !453
  %219 = load %struct._IVL** %182, align 8, !dbg !417, !tbaa !135
  %220 = trunc i64 %indvars.iv88 to i32, !dbg !454
  call void @IVL_setList(%struct._IVL* %219, i32 %220, i32 %count.4.lcssa, i32* %118) #6, !dbg !454
  %221 = load %struct._IVL** %183, align 8, !dbg !420, !tbaa !455
  call void @IVL_setList(%struct._IVL* %221, i32 %220, i32 %count.4.lcssa, i32* %181) #6, !dbg !456
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1, !dbg !415
  %exitcond91 = icmp eq i32 %220, %184, !dbg !415
  br i1 %exitcond91, label %.preheader12, label %189, !dbg !415

; <label>:222                                     ; preds = %._crit_edge35, %.lr.ph39
  %indvars.iv82 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next83, %._crit_edge35 ]
  %y.238 = phi i32 [ %nX.0.lcssa118, %.lr.ph39 ], [ %252, %._crit_edge35 ]
  %223 = getelementptr inbounds i32* %indY, i64 %indvars.iv82, !dbg !457
  %224 = load i32* %223, align 4, !dbg !457, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !90, metadata !103), !dbg !223
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  call void @llvm.dbg.value(metadata i32** %vewghts, i64 0, metadata !98, metadata !103), !dbg !429
  call void @Graph_adjAndEweights(%struct._Graph* %graph, i32 %224, i32* %vsize, i32** %vadj, i32** %vewghts) #6, !dbg !458
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !103), !dbg !250
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !103), !dbg !362
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %225 = load i32* %vsize, align 4, !dbg !459, !tbaa !153
  %226 = icmp sgt i32 %225, 0, !dbg !462
  br i1 %226, label %.lr.ph34, label %._crit_edge35, !dbg !463

.lr.ph34:                                         ; preds = %222
  %227 = load i32** %vadj, align 8, !dbg !464, !tbaa !116
  %228 = load i32** %vewghts, align 8, !dbg !466, !tbaa !116
  br label %229, !dbg !463

; <label>:229                                     ; preds = %.lr.ph34, %246
  %230 = phi i32 [ %225, %.lr.ph34 ], [ %247, %246 ]
  %indvars.iv80 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next81, %246 ]
  %count.632 = phi i32 [ 0, %.lr.ph34 ], [ %count.7, %246 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !97, metadata !103), !dbg !248
  %231 = getelementptr inbounds i32* %227, i64 %indvars.iv80, !dbg !464
  %232 = load i32* %231, align 4, !dbg !464, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %232, i64 0, metadata !92, metadata !103), !dbg !259
  %233 = sext i32 %232 to i64, !dbg !469
  %234 = getelementptr inbounds i32* %colors, i64 %233, !dbg !469
  %235 = load i32* %234, align 4, !dbg !469, !tbaa !153
  %236 = icmp eq i32 %235, %cX, !dbg !470
  br i1 %236, label %237, label %246, !dbg !471

; <label>:237                                     ; preds = %229
  %238 = getelementptr inbounds i32* %cmap, i64 %233, !dbg !472
  %239 = load i32* %238, align 4, !dbg !472, !tbaa !153
  %240 = sext i32 %count.632 to i64, !dbg !473
  %241 = getelementptr inbounds i32* %118, i64 %240, !dbg !473
  store i32 %239, i32* %241, align 4, !dbg !474, !tbaa !153
  call void @llvm.dbg.value(metadata i32** %vewghts, i64 0, metadata !98, metadata !103), !dbg !429
  %242 = getelementptr inbounds i32* %228, i64 %indvars.iv80, !dbg !466
  %243 = load i32* %242, align 4, !dbg !466, !tbaa !153
  %244 = getelementptr inbounds i32* %181, i64 %240, !dbg !475
  store i32 %243, i32* %244, align 4, !dbg !476, !tbaa !153
  %245 = add nsw i32 %count.632, 1, !dbg !477
  call void @llvm.dbg.value(metadata i32 %245, i64 0, metadata !81, metadata !103), !dbg !362
  %.pre113 = load i32* %vsize, align 4, !dbg !459, !tbaa !153
  br label %246, !dbg !478

; <label>:246                                     ; preds = %229, %237
  %247 = phi i32 [ %.pre113, %237 ], [ %230, %229 ], !dbg !463
  %count.7 = phi i32 [ %245, %237 ], [ %count.632, %229 ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1, !dbg !463
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !91, metadata !103), !dbg !247
  %248 = sext i32 %247 to i64, !dbg !462
  %249 = icmp slt i64 %indvars.iv.next81, %248, !dbg !462
  br i1 %249, label %229, label %._crit_edge35, !dbg !463

._crit_edge35:                                    ; preds = %246, %222
  %count.6.lcssa = phi i32 [ 0, %222 ], [ %count.7, %246 ]
  call void @IV2qsortUp(i32 %count.6.lcssa, i32* %118, i32* %181) #6, !dbg !479
  %250 = load %struct._IVL** %186, align 8, !dbg !425, !tbaa !135
  call void @IVL_setList(%struct._IVL* %250, i32 %y.238, i32 %count.6.lcssa, i32* %118) #6, !dbg !480
  %251 = load %struct._IVL** %187, align 8, !dbg !427, !tbaa !455
  call void @IVL_setList(%struct._IVL* %251, i32 %y.238, i32 %count.6.lcssa, i32* %181) #6, !dbg !481
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !424
  %252 = add nsw i32 %y.238, 1, !dbg !482
  call void @llvm.dbg.value(metadata i32 %252, i64 0, metadata !94, metadata !103), !dbg !408
  %lftr.wideiv84 = trunc i64 %indvars.iv82 to i32, !dbg !424
  %exitcond85 = icmp eq i32 %lftr.wideiv84, %188, !dbg !424
  br i1 %exitcond85, label %._crit_edge40, label %222, !dbg !424

._crit_edge40:                                    ; preds = %._crit_edge35, %.preheader12
  call void @IVfree(i32* %118) #6, !dbg !483
  call void @IVfree(i32* %181) #6, !dbg !484
  br label %253

; <label>:253                                     ; preds = %._crit_edge40, %._crit_edge22
  %254 = load %struct._IVL** %115, align 8, !dbg !485, !tbaa !135
  %255 = getelementptr inbounds %struct._IVL* %254, i64 0, i32 4, !dbg !486
  %256 = load i32** %255, align 8, !dbg !486, !tbaa !487
  %257 = call i32 @IVsum(i32 %79, i32* %256) #6, !dbg !489
  %258 = getelementptr inbounds %struct._Graph* %75, i64 0, i32 3, !dbg !490
  store i32 %257, i32* %258, align 4, !dbg !491, !tbaa !492
  ret void, !dbg !493
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct.__sFILE*) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #3

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare i32 @IVL_maxListSize(%struct._IVL*) #3

; Function Attrs: optsize
declare i32* @IVinit2(i32) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Graph_adjAndEweights(%struct._Graph*, i32, i32*, i32**, i32**) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

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
!llvm.module.flags = !{!99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !68}
!6 = !DISubprogram(name: "BPG_init", scope: !1, file: !1, line: 19, type: !7, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BPG*, i32, i32, %struct._Graph*)* @BPG_init, variables: !55)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !15, !18}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !11, line: 21, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !11, line: 22, size: 128, align: 64, elements: !13)
!13 = !{!14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !12, file: !11, line: 25, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !20, line: 49, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !20, line: 50, size: 384, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !53, !54}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 51, baseType: !15, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !21, file: !20, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !21, file: !20, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !21, file: !20, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !21, file: !20, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !21, file: !20, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !21, file: !20, line: 57, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !32, line: 55, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !32, line: 79, size: 384, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !41, !43, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 80, baseType: !15, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !33, file: !32, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !33, file: !32, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !33, file: !32, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !33, file: !32, line: 84, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !33, file: !32, line: 85, baseType: !42, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !33, file: !32, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !33, file: !32, line: 87, baseType: !45, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !32, line: 56, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !32, line: 102, size: 192, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !32, line: 103, baseType: !15, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !47, file: !32, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !47, file: !32, line: 105, baseType: !40, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !32, line: 106, baseType: !45, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !21, file: !20, line: 58, baseType: !40, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !21, file: !20, line: 59, baseType: !30, size: 64, align: 64, offset: 320)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !6, file: !1, line: 20, type: !9)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nX", arg: 2, scope: !6, file: !1, line: 21, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nY", arg: 3, scope: !6, file: !1, line: 22, type: !15)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "graph", arg: 4, scope: !6, file: !1, line: 23, type: !18)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 25, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 25, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !6, file: !1, line: 25, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 25, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !6, file: !1, line: 25, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !6, file: !1, line: 25, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !6, file: !1, line: 26, type: !40)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adjIVL", scope: !6, file: !1, line: 27, type: !30)
!68 = !DISubprogram(name: "BPG_initFromColoring", scope: !1, file: !1, line: 129, type: !69, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BPG*, %struct._Graph*, i32*, i32, i32, i32*, i32*, i32*)* @BPG_initFromColoring, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !9, !18, !40, !15, !15, !40, !40, !40}
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !68, file: !1, line: 130, type: !9)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "graph", arg: 2, scope: !68, file: !1, line: 131, type: !18)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colors", arg: 3, scope: !68, file: !1, line: 132, type: !40)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cX", arg: 4, scope: !68, file: !1, line: 133, type: !15)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cY", arg: 5, scope: !68, file: !1, line: 134, type: !15)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cmap", arg: 6, scope: !68, file: !1, line: 135, type: !40)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "indX", arg: 7, scope: !68, file: !1, line: 136, type: !40)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "indY", arg: 8, scope: !68, file: !1, line: 137, type: !40)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bpg_g", scope: !68, file: !1, line: 139, type: !18)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !68, file: !1, line: 140, type: !15)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !68, file: !1, line: 140, type: !15)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !68, file: !1, line: 140, type: !15)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iX", scope: !68, file: !1, line: 140, type: !15)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iy", scope: !68, file: !1, line: 140, type: !15)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msize", scope: !68, file: !1, line: 140, type: !15)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nV", scope: !68, file: !1, line: 140, type: !15)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nX", scope: !68, file: !1, line: 140, type: !15)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nY", scope: !68, file: !1, line: 140, type: !15)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !68, file: !1, line: 140, type: !15)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !68, file: !1, line: 140, type: !15)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !68, file: !1, line: 140, type: !15)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !68, file: !1, line: 140, type: !15)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !68, file: !1, line: 140, type: !15)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ewghts", scope: !68, file: !1, line: 141, type: !40)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !68, file: !1, line: 141, type: !40)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !68, file: !1, line: 141, type: !40)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vewghts", scope: !68, file: !1, line: 141, type: !40)
!99 = !{i32 2, !"Dwarf Version", i32 2}
!100 = !{i32 2, !"Debug Info Version", i32 700000003}
!101 = !{i32 1, !"PIC Level", i32 2}
!102 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!103 = !DIExpression()
!104 = !DILocation(line: 20, column: 13, scope: !6)
!105 = !DILocation(line: 21, column: 12, scope: !6)
!106 = !DILocation(line: 22, column: 12, scope: !6)
!107 = !DILocation(line: 23, column: 13, scope: !6)
!108 = !DILocation(line: 33, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!110 = !DILocation(line: 33, column: 24, scope: !109)
!111 = !DILocation(line: 33, column: 18, scope: !109)
!112 = !DILocation(line: 33, column: 35, scope: !109)
!113 = !DILocation(line: 33, column: 49, scope: !109)
!114 = !DILocation(line: 34, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !109, file: !1, line: 33, column: 59)
!116 = !{!117, !117, i64 0}
!117 = !{!"any pointer", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !DILocation(line: 34, column: 4, scope: !115)
!121 = !DILocation(line: 36, column: 4, scope: !115)
!122 = !DILocation(line: 43, column: 1, scope: !6)
!123 = !DILocation(line: 44, column: 6, scope: !6)
!124 = !DILocation(line: 44, column: 12, scope: !6)
!125 = !{!126, !127, i64 0}
!126 = !{!"_BPG", !127, i64 0, !127, i64 4, !117, i64 8}
!127 = !{!"int", !118, i64 0}
!128 = !DILocation(line: 45, column: 6, scope: !6)
!129 = !DILocation(line: 45, column: 12, scope: !6)
!130 = !{!126, !127, i64 4}
!131 = !DILocation(line: 46, column: 6, scope: !6)
!132 = !DILocation(line: 46, column: 12, scope: !6)
!133 = !{!126, !117, i64 8}
!134 = !DILocation(line: 53, column: 17, scope: !6)
!135 = !{!136, !117, i64 24}
!136 = !{!"_Graph", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !117, i64 24, !117, i64 32, !117, i64 40}
!137 = !DILocation(line: 27, column: 8, scope: !6)
!138 = !DILocation(line: 25, column: 21, scope: !6)
!139 = !DILocation(line: 54, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 54, column: 1)
!141 = distinct !DILexicalBlock(scope: !6, file: !1, line: 54, column: 1)
!142 = !DILocation(line: 54, column: 1, scope: !141)
!143 = !DILocation(line: 80, column: 18, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 80, column: 1)
!145 = distinct !DILexicalBlock(scope: !6, file: !1, line: 80, column: 1)
!146 = !DILocation(line: 80, column: 1, scope: !145)
!147 = !DILocation(line: 25, column: 24, scope: !6)
!148 = !DILocation(line: 26, column: 8, scope: !6)
!149 = !DILocation(line: 55, column: 4, scope: !150)
!150 = distinct !DILexicalBlock(scope: !140, file: !1, line: 54, column: 30)
!151 = !DILocation(line: 25, column: 13, scope: !6)
!152 = !DILocation(line: 61, column: 17, scope: !150)
!153 = !{!127, !127, i64 0}
!154 = !DILocation(line: 25, column: 17, scope: !6)
!155 = !DILocation(line: 62, column: 15, scope: !150)
!156 = !DILocation(line: 62, column: 4, scope: !150)
!157 = !DILocation(line: 61, column: 23, scope: !150)
!158 = !DILocation(line: 63, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !150, file: !1, line: 62, column: 23)
!160 = !DILocation(line: 25, column: 31, scope: !6)
!161 = !DILocation(line: 64, column: 15, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !1, line: 64, column: 12)
!163 = !DILocation(line: 64, column: 25, scope: !162)
!164 = !DILocation(line: 64, column: 20, scope: !162)
!165 = !DILocation(line: 65, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 64, column: 37)
!167 = !DILocation(line: 67, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !162, file: !1, line: 66, column: 14)
!169 = !DILocation(line: 67, column: 19, scope: !168)
!170 = !DILocation(line: 68, column: 19, scope: !168)
!171 = !DILocation(line: 69, column: 12, scope: !168)
!172 = !DILocation(line: 72, column: 10, scope: !150)
!173 = !DILocation(line: 78, column: 4, scope: !150)
!174 = !DILocation(line: 54, column: 25, scope: !140)
!175 = !DILocation(line: 81, column: 4, scope: !176)
!176 = distinct !DILexicalBlock(scope: !144, file: !1, line: 80, column: 36)
!177 = !DILocation(line: 87, column: 17, scope: !176)
!178 = !DILocation(line: 88, column: 15, scope: !176)
!179 = !DILocation(line: 88, column: 4, scope: !176)
!180 = !DILocation(line: 87, column: 23, scope: !176)
!181 = !DILocation(line: 89, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !1, line: 88, column: 23)
!183 = !DILocation(line: 90, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !182, file: !1, line: 90, column: 12)
!185 = !DILocation(line: 90, column: 24, scope: !184)
!186 = !DILocation(line: 90, column: 19, scope: !184)
!187 = !DILocation(line: 91, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 90, column: 31)
!189 = !DILocation(line: 93, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !1, line: 92, column: 14)
!191 = !DILocation(line: 93, column: 19, scope: !190)
!192 = !DILocation(line: 94, column: 19, scope: !190)
!193 = !DILocation(line: 95, column: 12, scope: !190)
!194 = !DILocation(line: 98, column: 10, scope: !176)
!195 = !DILocation(line: 99, column: 4, scope: !176)
!196 = !DILocation(line: 80, column: 31, scope: !144)
!197 = !DILocation(line: 107, column: 1, scope: !6)
!198 = !DILocation(line: 130, column: 13, scope: !68)
!199 = !DILocation(line: 131, column: 13, scope: !68)
!200 = !DILocation(line: 132, column: 12, scope: !68)
!201 = !DILocation(line: 133, column: 12, scope: !68)
!202 = !DILocation(line: 134, column: 12, scope: !68)
!203 = !DILocation(line: 135, column: 12, scope: !68)
!204 = !DILocation(line: 136, column: 12, scope: !68)
!205 = !DILocation(line: 137, column: 12, scope: !68)
!206 = !DILocation(line: 147, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !68, file: !1, line: 147, column: 6)
!208 = !DILocation(line: 147, column: 27, scope: !207)
!209 = !DILocation(line: 147, column: 18, scope: !207)
!210 = !DILocation(line: 147, column: 45, scope: !207)
!211 = !DILocation(line: 148, column: 30, scope: !207)
!212 = !DILocation(line: 148, column: 44, scope: !207)
!213 = !DILocation(line: 148, column: 36, scope: !207)
!214 = !DILocation(line: 149, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !207, file: !1, line: 148, column: 54)
!216 = !DILocation(line: 149, column: 4, scope: !215)
!217 = !DILocation(line: 152, column: 4, scope: !215)
!218 = !DILocation(line: 154, column: 1, scope: !68)
!219 = !DILocation(line: 155, column: 13, scope: !68)
!220 = !{!136, !127, i64 4}
!221 = !DILocation(line: 140, column: 41, scope: !68)
!222 = !DILocation(line: 156, column: 1, scope: !68)
!223 = !DILocation(line: 140, column: 53, scope: !68)
!224 = !DILocation(line: 140, column: 45, scope: !68)
!225 = !DILocation(line: 168, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 168, column: 1)
!227 = distinct !DILexicalBlock(scope: !68, file: !1, line: 168, column: 1)
!228 = !DILocation(line: 168, column: 1, scope: !227)
!229 = !DILocation(line: 180, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 180, column: 1)
!231 = distinct !DILexicalBlock(scope: !68, file: !1, line: 180, column: 1)
!232 = !DILocation(line: 180, column: 1, scope: !231)
!233 = !DILocation(line: 169, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 169, column: 9)
!235 = distinct !DILexicalBlock(scope: !226, file: !1, line: 168, column: 38)
!236 = !DILocation(line: 169, column: 19, scope: !234)
!237 = !DILocation(line: 169, column: 9, scope: !235)
!238 = !DILocation(line: 170, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 169, column: 27)
!240 = !DILocation(line: 170, column: 16, scope: !239)
!241 = !DILocation(line: 171, column: 20, scope: !239)
!242 = !DILocation(line: 171, column: 7, scope: !239)
!243 = !DILocation(line: 171, column: 16, scope: !239)
!244 = !DILocation(line: 172, column: 4, scope: !239)
!245 = !DILocation(line: 181, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !230, file: !1, line: 180, column: 33)
!247 = !DILocation(line: 140, column: 56, scope: !68)
!248 = !DILocation(line: 141, column: 26, scope: !68)
!249 = !DILocation(line: 182, column: 4, scope: !246)
!250 = !DILocation(line: 140, column: 22, scope: !68)
!251 = !DILocation(line: 183, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 183, column: 4)
!253 = distinct !DILexicalBlock(scope: !246, file: !1, line: 183, column: 4)
!254 = !DILocation(line: 183, column: 22, scope: !252)
!255 = !DILocation(line: 183, column: 4, scope: !253)
!256 = !DILocation(line: 184, column: 18, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 184, column: 13)
!258 = distinct !DILexicalBlock(scope: !252, file: !1, line: 183, column: 39)
!259 = !DILocation(line: 140, column: 63, scope: !68)
!260 = !DILocation(line: 184, column: 28, scope: !257)
!261 = !DILocation(line: 185, column: 10, scope: !257)
!262 = !DILocation(line: 185, column: 13, scope: !257)
!263 = !DILocation(line: 185, column: 23, scope: !257)
!264 = !DILocation(line: 185, column: 29, scope: !257)
!265 = !DILocation(line: 185, column: 32, scope: !257)
!266 = !DILocation(line: 185, column: 40, scope: !257)
!267 = !DILocation(line: 184, column: 13, scope: !258)
!268 = !DILocation(line: 186, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !257, file: !1, line: 185, column: 48)
!270 = !DILocation(line: 186, column: 19, scope: !269)
!271 = !DILocation(line: 187, column: 28, scope: !269)
!272 = !DILocation(line: 140, column: 49, scope: !68)
!273 = !DILocation(line: 187, column: 24, scope: !269)
!274 = !DILocation(line: 187, column: 19, scope: !269)
!275 = !DILocation(line: 188, column: 7, scope: !269)
!276 = !DILocation(line: 191, column: 6, scope: !68)
!277 = !DILocation(line: 191, column: 9, scope: !68)
!278 = !DILocation(line: 192, column: 6, scope: !68)
!279 = !DILocation(line: 192, column: 9, scope: !68)
!280 = !DILocation(line: 205, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !68, file: !1, line: 205, column: 6)
!282 = !DILocation(line: 205, column: 30, scope: !281)
!283 = !DILocation(line: 205, column: 19, scope: !281)
!284 = !DILocation(line: 206, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 205, column: 37)
!286 = !DILocation(line: 206, column: 4, scope: !285)
!287 = !DILocation(line: 208, column: 12, scope: !285)
!288 = !DILocation(line: 208, column: 4, scope: !285)
!289 = !DILocation(line: 209, column: 11, scope: !285)
!290 = !DILocation(line: 140, column: 16, scope: !68)
!291 = !DILocation(line: 209, column: 4, scope: !285)
!292 = !DILocation(line: 210, column: 12, scope: !285)
!293 = !DILocation(line: 210, column: 4, scope: !285)
!294 = !DILocation(line: 211, column: 34, scope: !285)
!295 = !DILocation(line: 211, column: 4, scope: !285)
!296 = !DILocation(line: 212, column: 4, scope: !285)
!297 = !DILocation(line: 219, column: 22, scope: !68)
!298 = !DILocation(line: 139, column: 10, scope: !68)
!299 = !DILocation(line: 219, column: 6, scope: !68)
!300 = !DILocation(line: 219, column: 12, scope: !68)
!301 = !DILocation(line: 220, column: 27, scope: !68)
!302 = !{!136, !127, i64 0}
!303 = !DILocation(line: 221, column: 16, scope: !68)
!304 = !DILocation(line: 220, column: 1, scope: !68)
!305 = !DILocation(line: 227, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !68, file: !1, line: 227, column: 6)
!307 = !DILocation(line: 227, column: 18, scope: !306)
!308 = !DILocation(line: 227, column: 22, scope: !306)
!309 = !DILocation(line: 227, column: 6, scope: !68)
!310 = !DILocation(line: 228, column: 4, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 228, column: 4)
!312 = distinct !DILexicalBlock(scope: !306, file: !1, line: 227, column: 29)
!313 = !DILocation(line: 230, column: 33, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 228, column: 33)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 228, column: 4)
!316 = !{!136, !117, i64 32}
!317 = !DILocation(line: 230, column: 14, scope: !314)
!318 = !DILocation(line: 232, column: 30, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 232, column: 4)
!320 = distinct !DILexicalBlock(scope: !312, file: !1, line: 232, column: 4)
!321 = !DILocation(line: 232, column: 4, scope: !320)
!322 = !DILocation(line: 236, column: 44, scope: !312)
!323 = !DILocation(line: 234, column: 33, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !1, line: 232, column: 49)
!325 = !DILocation(line: 234, column: 14, scope: !324)
!326 = !DILocation(line: 229, column: 11, scope: !314)
!327 = !DILocation(line: 230, column: 26, scope: !314)
!328 = !DILocation(line: 230, column: 7, scope: !314)
!329 = !DILocation(line: 230, column: 24, scope: !314)
!330 = !DILocation(line: 233, column: 11, scope: !324)
!331 = !DILocation(line: 234, column: 26, scope: !324)
!332 = !DILocation(line: 234, column: 7, scope: !324)
!333 = !DILocation(line: 234, column: 24, scope: !324)
!334 = !DILocation(line: 236, column: 22, scope: !312)
!335 = !DILocation(line: 236, column: 11, scope: !312)
!336 = !DILocation(line: 236, column: 20, scope: !312)
!337 = !{!136, !127, i64 16}
!338 = !DILocation(line: 252, column: 13, scope: !339)
!339 = distinct !DILexicalBlock(scope: !68, file: !1, line: 252, column: 6)
!340 = !DILocation(line: 246, column: 1, scope: !312)
!341 = !DILocation(line: 252, column: 18, scope: !339)
!342 = !DILocation(line: 258, column: 36, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !1, line: 252, column: 24)
!344 = !DILocation(line: 258, column: 13, scope: !343)
!345 = !DILocation(line: 140, column: 34, scope: !68)
!346 = !DILocation(line: 259, column: 13, scope: !343)
!347 = !DILocation(line: 141, column: 19, scope: !68)
!348 = !DILocation(line: 252, column: 6, scope: !68)
!349 = !DILocation(line: 260, column: 4, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !1, line: 260, column: 4)
!351 = !DILocation(line: 269, column: 26, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 260, column: 33)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 260, column: 4)
!354 = !DILocation(line: 276, column: 30, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 276, column: 4)
!356 = distinct !DILexicalBlock(scope: !343, file: !1, line: 276, column: 4)
!357 = !DILocation(line: 276, column: 4, scope: !356)
!358 = !DILocation(line: 285, column: 26, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 276, column: 49)
!360 = !DILocation(line: 261, column: 11, scope: !352)
!361 = !DILocation(line: 262, column: 7, scope: !352)
!362 = !DILocation(line: 140, column: 9, scope: !68)
!363 = !DILocation(line: 263, column: 38, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 263, column: 7)
!365 = distinct !DILexicalBlock(scope: !352, file: !1, line: 263, column: 7)
!366 = !DILocation(line: 263, column: 36, scope: !364)
!367 = !DILocation(line: 263, column: 7, scope: !365)
!368 = !DILocation(line: 264, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 264, column: 15)
!370 = distinct !DILexicalBlock(scope: !364, file: !1, line: 263, column: 53)
!371 = !DILocation(line: 264, column: 30, scope: !369)
!372 = !DILocation(line: 264, column: 35, scope: !369)
!373 = !DILocation(line: 264, column: 38, scope: !369)
!374 = !DILocation(line: 264, column: 48, scope: !369)
!375 = !DILocation(line: 264, column: 15, scope: !370)
!376 = !DILocation(line: 265, column: 29, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !1, line: 264, column: 56)
!378 = !DILocation(line: 265, column: 23, scope: !377)
!379 = !DILocation(line: 265, column: 13, scope: !377)
!380 = !DILocation(line: 265, column: 27, scope: !377)
!381 = !DILocation(line: 266, column: 10, scope: !377)
!382 = !DILocation(line: 268, column: 7, scope: !352)
!383 = !DILocation(line: 269, column: 7, scope: !352)
!384 = !DILocation(line: 277, column: 11, scope: !359)
!385 = !DILocation(line: 278, column: 7, scope: !359)
!386 = !DILocation(line: 279, column: 38, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 279, column: 7)
!388 = distinct !DILexicalBlock(scope: !359, file: !1, line: 279, column: 7)
!389 = !DILocation(line: 279, column: 36, scope: !387)
!390 = !DILocation(line: 279, column: 7, scope: !388)
!391 = !DILocation(line: 280, column: 20, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 280, column: 15)
!393 = distinct !DILexicalBlock(scope: !387, file: !1, line: 279, column: 53)
!394 = !DILocation(line: 280, column: 30, scope: !392)
!395 = !DILocation(line: 280, column: 35, scope: !392)
!396 = !DILocation(line: 280, column: 38, scope: !392)
!397 = !DILocation(line: 280, column: 48, scope: !392)
!398 = !DILocation(line: 280, column: 15, scope: !393)
!399 = !DILocation(line: 281, column: 29, scope: !400)
!400 = distinct !DILexicalBlock(scope: !392, file: !1, line: 280, column: 56)
!401 = !DILocation(line: 281, column: 23, scope: !400)
!402 = !DILocation(line: 281, column: 13, scope: !400)
!403 = !DILocation(line: 281, column: 27, scope: !400)
!404 = !DILocation(line: 282, column: 10, scope: !400)
!405 = !DILocation(line: 284, column: 7, scope: !359)
!406 = !DILocation(line: 285, column: 7, scope: !359)
!407 = !DILocation(line: 276, column: 44, scope: !355)
!408 = !DILocation(line: 140, column: 69, scope: !68)
!409 = !DILocation(line: 292, column: 4, scope: !343)
!410 = !DILocation(line: 293, column: 1, scope: !343)
!411 = !DILocation(line: 301, column: 13, scope: !412)
!412 = distinct !DILexicalBlock(scope: !339, file: !1, line: 293, column: 8)
!413 = !DILocation(line: 141, column: 10, scope: !68)
!414 = !DILocation(line: 140, column: 66, scope: !68)
!415 = !DILocation(line: 302, column: 4, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 302, column: 4)
!417 = !DILocation(line: 313, column: 26, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 302, column: 33)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 302, column: 4)
!420 = !DILocation(line: 314, column: 26, scope: !418)
!421 = !DILocation(line: 316, column: 30, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 316, column: 4)
!423 = distinct !DILexicalBlock(scope: !412, file: !1, line: 316, column: 4)
!424 = !DILocation(line: 316, column: 4, scope: !423)
!425 = !DILocation(line: 328, column: 26, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !1, line: 316, column: 49)
!427 = !DILocation(line: 329, column: 26, scope: !426)
!428 = !DILocation(line: 303, column: 11, scope: !418)
!429 = !DILocation(line: 141, column: 33, scope: !68)
!430 = !DILocation(line: 304, column: 7, scope: !418)
!431 = !DILocation(line: 305, column: 38, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 305, column: 7)
!433 = distinct !DILexicalBlock(scope: !418, file: !1, line: 305, column: 7)
!434 = !DILocation(line: 305, column: 36, scope: !432)
!435 = !DILocation(line: 305, column: 7, scope: !433)
!436 = !DILocation(line: 306, column: 20, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 306, column: 15)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 305, column: 53)
!439 = !DILocation(line: 308, column: 29, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !1, line: 306, column: 56)
!441 = !DILocation(line: 306, column: 30, scope: !437)
!442 = !DILocation(line: 306, column: 35, scope: !437)
!443 = !DILocation(line: 306, column: 38, scope: !437)
!444 = !DILocation(line: 306, column: 48, scope: !437)
!445 = !DILocation(line: 306, column: 15, scope: !438)
!446 = !DILocation(line: 307, column: 29, scope: !440)
!447 = !DILocation(line: 307, column: 13, scope: !440)
!448 = !DILocation(line: 307, column: 27, scope: !440)
!449 = !DILocation(line: 308, column: 13, scope: !440)
!450 = !DILocation(line: 308, column: 27, scope: !440)
!451 = !DILocation(line: 309, column: 18, scope: !440)
!452 = !DILocation(line: 310, column: 10, scope: !440)
!453 = !DILocation(line: 312, column: 7, scope: !418)
!454 = !DILocation(line: 313, column: 7, scope: !418)
!455 = !{!136, !117, i64 40}
!456 = !DILocation(line: 314, column: 7, scope: !418)
!457 = !DILocation(line: 317, column: 11, scope: !426)
!458 = !DILocation(line: 318, column: 7, scope: !426)
!459 = !DILocation(line: 319, column: 38, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 319, column: 7)
!461 = distinct !DILexicalBlock(scope: !426, file: !1, line: 319, column: 7)
!462 = !DILocation(line: 319, column: 36, scope: !460)
!463 = !DILocation(line: 319, column: 7, scope: !461)
!464 = !DILocation(line: 320, column: 14, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !1, line: 319, column: 53)
!466 = !DILocation(line: 323, column: 29, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 321, column: 33)
!468 = distinct !DILexicalBlock(scope: !465, file: !1, line: 321, column: 15)
!469 = !DILocation(line: 321, column: 15, scope: !468)
!470 = !DILocation(line: 321, column: 25, scope: !468)
!471 = !DILocation(line: 321, column: 15, scope: !465)
!472 = !DILocation(line: 322, column: 29, scope: !467)
!473 = !DILocation(line: 322, column: 13, scope: !467)
!474 = !DILocation(line: 322, column: 27, scope: !467)
!475 = !DILocation(line: 323, column: 13, scope: !467)
!476 = !DILocation(line: 323, column: 27, scope: !467)
!477 = !DILocation(line: 324, column: 18, scope: !467)
!478 = !DILocation(line: 325, column: 10, scope: !467)
!479 = !DILocation(line: 327, column: 7, scope: !426)
!480 = !DILocation(line: 328, column: 7, scope: !426)
!481 = !DILocation(line: 329, column: 7, scope: !426)
!482 = !DILocation(line: 316, column: 44, scope: !422)
!483 = !DILocation(line: 331, column: 4, scope: !412)
!484 = !DILocation(line: 332, column: 4, scope: !412)
!485 = !DILocation(line: 334, column: 39, scope: !68)
!486 = !DILocation(line: 334, column: 47, scope: !68)
!487 = !{!488, !117, i64 16}
!488 = !{!"_IVL", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !117, i64 16, !117, i64 24, !127, i64 32, !117, i64 40}
!489 = !DILocation(line: 334, column: 17, scope: !68)
!490 = !DILocation(line: 334, column: 8, scope: !68)
!491 = !DILocation(line: 334, column: 15, scope: !68)
!492 = !{!136, !127, i64 12}
!493 = !DILocation(line: 336, column: 1, scope: !68)
