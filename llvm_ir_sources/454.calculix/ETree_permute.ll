; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_newToOldFrontPerm(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_oldToNewFrontPerm(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ETree_newToOldVtxPerm(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ETree_oldToNewVtxPerm(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in ETree_permuteVertices(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"\0A etree->nvtx = %d, IV_size(vtxOldToNewIV) = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_newToOldFrontPerm(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !42, metadata !93), !dbg !94
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !95
  br i1 %1, label %10, label %2, !dbg !97

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !98
  %4 = load i32* %3, align 4, !dbg !98, !tbaa !99
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !43, metadata !93), !dbg !105
  %5 = icmp slt i32 %4, 1, !dbg !106
  br i1 %5, label %10, label %6, !dbg !107

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !108
  %8 = load i32* %7, align 4, !dbg !108, !tbaa !109
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !44, metadata !93), !dbg !110
  %9 = icmp slt i32 %8, 1, !dbg !111
  br i1 %9, label %10, label %13, !dbg !112

; <label>:10                                      ; preds = %6, %2, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !115
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !116
  tail call void @exit(i32 -1) #6, !dbg !117
  unreachable, !dbg !117

; <label>:13                                      ; preds = %6
  %14 = tail call %struct._IV* @IV_new() #5, !dbg !118
  tail call void @llvm.dbg.value(metadata %struct._IV* %14, i64 0, metadata !45, metadata !93), !dbg !119
  tail call void @IV_init(%struct._IV* %14, i32 %4, i32* null) #5, !dbg !120
  %15 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !121
  %16 = load %struct._Tree** %15, align 8, !dbg !121, !tbaa !122
  %17 = tail call i32* @IV_entries(%struct._IV* %14) #5, !dbg !123
  tail call void @Tree_fillNewToOldPerm(%struct._Tree* %16, i32* %17) #5, !dbg !124
  ret %struct._IV* %14, !dbg !125
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @Tree_fillNewToOldPerm(%struct._Tree*, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_oldToNewFrontPerm(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !48, metadata !93), !dbg !126
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !127
  br i1 %1, label %10, label %2, !dbg !129

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !130
  %4 = load i32* %3, align 4, !dbg !130, !tbaa !99
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !49, metadata !93), !dbg !131
  %5 = icmp slt i32 %4, 1, !dbg !132
  br i1 %5, label %10, label %6, !dbg !133

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !134
  %8 = load i32* %7, align 4, !dbg !134, !tbaa !109
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !50, metadata !93), !dbg !135
  %9 = icmp slt i32 %8, 1, !dbg !136
  br i1 %9, label %10, label %13, !dbg !137

; <label>:10                                      ; preds = %6, %2, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !138, !tbaa !115
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !140
  tail call void @exit(i32 -1) #6, !dbg !141
  unreachable, !dbg !141

; <label>:13                                      ; preds = %6
  %14 = tail call %struct._IV* @IV_new() #5, !dbg !142
  tail call void @llvm.dbg.value(metadata %struct._IV* %14, i64 0, metadata !51, metadata !93), !dbg !143
  tail call void @IV_init(%struct._IV* %14, i32 %4, i32* null) #5, !dbg !144
  %15 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !145
  %16 = load %struct._Tree** %15, align 8, !dbg !145, !tbaa !122
  %17 = tail call i32* @IV_entries(%struct._IV* %14) #5, !dbg !146
  tail call void @Tree_fillOldToNewPerm(%struct._Tree* %16, i32* %17) #5, !dbg !147
  ret %struct._IV* %14, !dbg !148
}

; Function Attrs: optsize
declare void @Tree_fillOldToNewPerm(%struct._Tree*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_newToOldVtxPerm(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !54, metadata !93), !dbg !149
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !150
  br i1 %1, label %10, label %2, !dbg !152

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !153
  %4 = load i32* %3, align 4, !dbg !153, !tbaa !99
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !57, metadata !93), !dbg !154
  %5 = icmp slt i32 %4, 1, !dbg !155
  br i1 %5, label %10, label %6, !dbg !156

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !157
  %8 = load i32* %7, align 4, !dbg !157, !tbaa !109
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !58, metadata !93), !dbg !158
  %9 = icmp slt i32 %8, 1, !dbg !159
  br i1 %9, label %10, label %.lr.ph12, !dbg !160

; <label>:10                                      ; preds = %6, %2, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !161, !tbaa !115
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !163
  tail call void @exit(i32 -1) #6, !dbg !164
  unreachable, !dbg !164

.lr.ph12:                                         ; preds = %6
  %13 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !165
  %14 = load %struct._IV** %13, align 8, !dbg !165, !tbaa !166
  %15 = tail call i32* @IV_entries(%struct._IV* %14) #5, !dbg !167
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !63, metadata !93), !dbg !168
  %16 = tail call %struct._IV* @IV_new() #5, !dbg !169
  tail call void @llvm.dbg.value(metadata %struct._IV* %16, i64 0, metadata !64, metadata !93), !dbg !170
  tail call void @IV_init(%struct._IV* %16, i32 %8, i32* null) #5, !dbg !171
  %17 = tail call i32* @IV_entries(%struct._IV* %16) #5, !dbg !172
  tail call void @llvm.dbg.value(metadata i32* %17, i64 0, metadata !62, metadata !93), !dbg !173
  %18 = tail call i32* @IVinit(i32 %4, i32 -1) #5, !dbg !174
  tail call void @llvm.dbg.value(metadata i32* %18, i64 0, metadata !60, metadata !93), !dbg !175
  %19 = tail call i32* @IVinit(i32 %8, i32 -1) #5, !dbg !176
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !61, metadata !93), !dbg !177
  %20 = sext i32 %8 to i64
  br label %21, !dbg !178

; <label>:21                                      ; preds = %.lr.ph12, %21
  %indvars.iv14 = phi i64 [ %20, %.lr.ph12 ], [ %indvars.iv.next15, %21 ]
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, -1, !dbg !178
  %22 = getelementptr inbounds i32* %15, i64 %indvars.iv.next15, !dbg !180
  %23 = load i32* %22, align 4, !dbg !180, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !56, metadata !93), !dbg !184
  %24 = sext i32 %23 to i64, !dbg !185
  %25 = getelementptr inbounds i32* %18, i64 %24, !dbg !185
  %26 = load i32* %25, align 4, !dbg !185, !tbaa !183
  %27 = getelementptr inbounds i32* %19, i64 %indvars.iv.next15, !dbg !186
  store i32 %26, i32* %27, align 4, !dbg !187, !tbaa !183
  %28 = trunc i64 %indvars.iv.next15 to i32, !dbg !188
  store i32 %28, i32* %25, align 4, !dbg !188, !tbaa !183
  %29 = icmp sgt i64 %indvars.iv14, 1, !dbg !189
  br i1 %29, label %21, label %._crit_edge13, !dbg !178

._crit_edge13:                                    ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !55, metadata !93), !dbg !190
  %30 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !191
  %31 = load %struct._Tree** %30, align 8, !dbg !191, !tbaa !122
  %32 = tail call i32 @Tree_postOTfirst(%struct._Tree* %31) #5, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !56, metadata !93), !dbg !184
  %33 = icmp eq i32 %32, -1, !dbg !194
  br i1 %33, label %._crit_edge8, label %.lr.ph7, !dbg !196

.lr.ph7:                                          ; preds = %._crit_edge13, %44
  %count.05 = phi i32 [ %count.1.lcssa, %44 ], [ 0, %._crit_edge13 ]
  %front.04 = phi i32 [ %46, %44 ], [ %32, %._crit_edge13 ]
  %34 = sext i32 %front.04 to i64, !dbg !197
  %35 = getelementptr inbounds i32* %18, i64 %34, !dbg !197
  %v.11 = load i32* %35, align 4, !dbg !197
  %36 = icmp eq i32 %v.11, -1, !dbg !200
  br i1 %36, label %44, label %.lr.ph, !dbg !202

.lr.ph:                                           ; preds = %.lr.ph7
  %37 = sext i32 %count.05 to i64
  br label %38, !dbg !202

; <label>:38                                      ; preds = %.lr.ph, %38
  %indvars.iv = phi i64 [ %37, %.lr.ph ], [ %indvars.iv.next, %38 ]
  %v.13 = phi i32 [ %v.11, %.lr.ph ], [ %v.1, %38 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !202
  %39 = getelementptr inbounds i32* %17, i64 %indvars.iv, !dbg !203
  store i32 %v.13, i32* %39, align 4, !dbg !205, !tbaa !183
  %40 = sext i32 %v.13 to i64, !dbg !206
  %41 = getelementptr inbounds i32* %19, i64 %40, !dbg !206
  %v.1 = load i32* %41, align 4, !dbg !197
  %42 = icmp eq i32 %v.1, -1, !dbg !200
  br i1 %42, label %._crit_edge, label %38, !dbg !202

._crit_edge:                                      ; preds = %38
  %43 = trunc i64 %indvars.iv.next to i32, !dbg !202
  br label %44, !dbg !202

; <label>:44                                      ; preds = %._crit_edge, %.lr.ph7
  %count.1.lcssa = phi i32 [ %43, %._crit_edge ], [ %count.05, %.lr.ph7 ]
  %45 = load %struct._Tree** %30, align 8, !dbg !207, !tbaa !122
  %46 = tail call i32 @Tree_postOTnext(%struct._Tree* %45, i32 %front.04) #5, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !56, metadata !93), !dbg !184
  %47 = icmp eq i32 %46, -1, !dbg !194
  br i1 %47, label %._crit_edge8, label %.lr.ph7, !dbg !196

._crit_edge8:                                     ; preds = %44, %._crit_edge13
  tail call void @IVfree(i32* %18) #5, !dbg !209
  tail call void @IVfree(i32* %19) #5, !dbg !210
  ret %struct._IV* %16, !dbg !211
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_oldToNewVtxPerm(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !67, metadata !93), !dbg !212
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !213
  br i1 %1, label %10, label %2, !dbg !215

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !216
  %4 = load i32* %3, align 4, !dbg !216, !tbaa !99
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !70, metadata !93), !dbg !217
  %5 = icmp slt i32 %4, 1, !dbg !218
  br i1 %5, label %10, label %6, !dbg !219

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !220
  %8 = load i32* %7, align 4, !dbg !220, !tbaa !109
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !71, metadata !93), !dbg !221
  %9 = icmp slt i32 %8, 1, !dbg !222
  br i1 %9, label %10, label %.lr.ph12, !dbg !223

; <label>:10                                      ; preds = %6, %2, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !224, !tbaa !115
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !226
  tail call void @exit(i32 -1) #6, !dbg !227
  unreachable, !dbg !227

.lr.ph12:                                         ; preds = %6
  %13 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !228
  %14 = load %struct._IV** %13, align 8, !dbg !228, !tbaa !166
  %15 = tail call i32* @IV_entries(%struct._IV* %14) #5, !dbg !229
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !76, metadata !93), !dbg !230
  %16 = tail call %struct._IV* @IV_new() #5, !dbg !231
  tail call void @llvm.dbg.value(metadata %struct._IV* %16, i64 0, metadata !77, metadata !93), !dbg !232
  tail call void @IV_init(%struct._IV* %16, i32 %8, i32* null) #5, !dbg !233
  %17 = tail call i32* @IV_entries(%struct._IV* %16) #5, !dbg !234
  tail call void @llvm.dbg.value(metadata i32* %17, i64 0, metadata !75, metadata !93), !dbg !235
  %18 = tail call i32* @IVinit(i32 %4, i32 -1) #5, !dbg !236
  tail call void @llvm.dbg.value(metadata i32* %18, i64 0, metadata !73, metadata !93), !dbg !237
  %19 = tail call i32* @IVinit(i32 %8, i32 -1) #5, !dbg !238
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !74, metadata !93), !dbg !239
  %20 = sext i32 %8 to i64
  br label %21, !dbg !240

; <label>:21                                      ; preds = %.lr.ph12, %21
  %indvars.iv = phi i64 [ %20, %.lr.ph12 ], [ %indvars.iv.next, %21 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !240
  %22 = getelementptr inbounds i32* %15, i64 %indvars.iv.next, !dbg !242
  %23 = load i32* %22, align 4, !dbg !242, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !69, metadata !93), !dbg !245
  %24 = sext i32 %23 to i64, !dbg !246
  %25 = getelementptr inbounds i32* %18, i64 %24, !dbg !246
  %26 = load i32* %25, align 4, !dbg !246, !tbaa !183
  %27 = getelementptr inbounds i32* %19, i64 %indvars.iv.next, !dbg !247
  store i32 %26, i32* %27, align 4, !dbg !248, !tbaa !183
  %28 = trunc i64 %indvars.iv.next to i32, !dbg !249
  store i32 %28, i32* %25, align 4, !dbg !249, !tbaa !183
  %29 = icmp sgt i64 %indvars.iv, 1, !dbg !250
  br i1 %29, label %21, label %._crit_edge13, !dbg !240

._crit_edge13:                                    ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !93), !dbg !251
  %30 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !252
  %31 = load %struct._Tree** %30, align 8, !dbg !252, !tbaa !122
  %32 = tail call i32 @Tree_postOTfirst(%struct._Tree* %31) #5, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !69, metadata !93), !dbg !245
  %33 = icmp eq i32 %32, -1, !dbg !255
  br i1 %33, label %._crit_edge8, label %.lr.ph7, !dbg !257

.lr.ph7:                                          ; preds = %._crit_edge13, %._crit_edge
  %count.05 = phi i32 [ %count.1.lcssa, %._crit_edge ], [ 0, %._crit_edge13 ]
  %front.04 = phi i32 [ %43, %._crit_edge ], [ %32, %._crit_edge13 ]
  %34 = sext i32 %front.04 to i64, !dbg !258
  %35 = getelementptr inbounds i32* %18, i64 %34, !dbg !258
  %v.11 = load i32* %35, align 4, !dbg !258
  %36 = icmp eq i32 %v.11, -1, !dbg !261
  br i1 %36, label %._crit_edge, label %.lr.ph, !dbg !263

.lr.ph:                                           ; preds = %.lr.ph7, %.lr.ph
  %v.13 = phi i32 [ %v.1, %.lr.ph ], [ %v.11, %.lr.ph7 ]
  %count.12 = phi i32 [ %37, %.lr.ph ], [ %count.05, %.lr.ph7 ]
  %37 = add nsw i32 %count.12, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !68, metadata !93), !dbg !251
  %38 = sext i32 %v.13 to i64, !dbg !266
  %39 = getelementptr inbounds i32* %17, i64 %38, !dbg !266
  store i32 %count.12, i32* %39, align 4, !dbg !267, !tbaa !183
  %40 = getelementptr inbounds i32* %19, i64 %38, !dbg !268
  %v.1 = load i32* %40, align 4, !dbg !258
  %41 = icmp eq i32 %v.1, -1, !dbg !261
  br i1 %41, label %._crit_edge, label %.lr.ph, !dbg !263

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph7
  %count.1.lcssa = phi i32 [ %count.05, %.lr.ph7 ], [ %37, %.lr.ph ]
  %42 = load %struct._Tree** %30, align 8, !dbg !269, !tbaa !122
  %43 = tail call i32 @Tree_postOTnext(%struct._Tree* %42, i32 %front.04) #5, !dbg !270
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !69, metadata !93), !dbg !245
  %44 = icmp eq i32 %43, -1, !dbg !255
  br i1 %44, label %._crit_edge8, label %.lr.ph7, !dbg !257

._crit_edge8:                                     ; preds = %._crit_edge, %._crit_edge13
  tail call void @IVfree(i32* %18) #5, !dbg !271
  tail call void @IVfree(i32* %19) #5, !dbg !272
  ret %struct._IV* %16, !dbg !273
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ETree_permuteVertices(%struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !82, metadata !93), !dbg !274
  tail call void @llvm.dbg.value(metadata %struct._IV* %vtxOldToNewIV, i64 0, metadata !83, metadata !93), !dbg !275
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !276
  %2 = icmp eq %struct._IV* %vtxOldToNewIV, null, !dbg !278
  %or.cond = or i1 %1, %2, !dbg !279
  br i1 %or.cond, label %10, label %3, !dbg !279

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !280
  %5 = load i32* %4, align 4, !dbg !280, !tbaa !109
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !84, metadata !93), !dbg !281
  %6 = icmp slt i32 %5, 1, !dbg !282
  br i1 %6, label %10, label %7, !dbg !283

; <label>:7                                       ; preds = %3
  %8 = tail call i32 @IV_size(%struct._IV* %vtxOldToNewIV) #5, !dbg !284
  %9 = icmp eq i32 %5, %8, !dbg !285
  br i1 %9, label %.lr.ph, label %10, !dbg !286

; <label>:10                                      ; preds = %7, %3, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !287, !tbaa !115
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #5, !dbg !289
  %13 = icmp ne %struct._ETree* %etree, null, !dbg !290
  %14 = icmp ne %struct._IV* %vtxOldToNewIV, null, !dbg !292
  %or.cond3 = and i1 %13, %14, !dbg !293
  br i1 %or.cond3, label %15, label %21, !dbg !293

; <label>:15                                      ; preds = %10
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !294, !tbaa !115
  %17 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !296
  %18 = load i32* %17, align 4, !dbg !296, !tbaa !109
  %19 = tail call i32 @IV_size(%struct._IV* %vtxOldToNewIV) #5, !dbg !297
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i32 %18, i32 %19) #5, !dbg !298
  br label %21, !dbg !299

; <label>:21                                      ; preds = %15, %10
  tail call void @exit(i32 -1) #6, !dbg !300
  unreachable, !dbg !300

.lr.ph:                                           ; preds = %7
  %22 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !301
  %23 = load %struct._IV** %22, align 8, !dbg !301, !tbaa !166
  %24 = tail call i32* @IV_entries(%struct._IV* %23) #5, !dbg !302
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !88, metadata !93), !dbg !303
  %25 = tail call i32* @IV_entries(%struct._IV* %vtxOldToNewIV) #5, !dbg !304
  tail call void @llvm.dbg.value(metadata i32* %25, i64 0, metadata !86, metadata !93), !dbg !305
  %26 = tail call i32* @IVinit(i32 %5, i32 -1) #5, !dbg !306
  tail call void @llvm.dbg.value(metadata i32* %26, i64 0, metadata !87, metadata !93), !dbg !307
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !93), !dbg !308
  %27 = add i32 %5, -1, !dbg !309
  br label %28, !dbg !309

; <label>:28                                      ; preds = %28, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %29 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !311
  %30 = load i32* %29, align 4, !dbg !311, !tbaa !183
  %31 = getelementptr inbounds i32* %25, i64 %indvars.iv, !dbg !314
  %32 = load i32* %31, align 4, !dbg !314, !tbaa !183
  %33 = sext i32 %32 to i64, !dbg !315
  %34 = getelementptr inbounds i32* %26, i64 %33, !dbg !315
  store i32 %30, i32* %34, align 4, !dbg !316, !tbaa !183
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !309
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !309
  %exitcond = icmp eq i32 %lftr.wideiv, %27, !dbg !309
  br i1 %exitcond, label %._crit_edge, label %28, !dbg !309

._crit_edge:                                      ; preds = %28
  tail call void @IVcopy(i32 %5, i32* %24, i32* %26) #5, !dbg !317
  tail call void @IVfree(i32* %26) #5, !dbg !318
  ret void, !dbg !319
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

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
!llvm.module.flags = !{!89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !46, !52, !65, !78}
!6 = !DISubprogram(name: "ETree_newToOldFrontPerm", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_newToOldFrontPerm, variables: !41)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !20}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ETree", file: !22, line: 31, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ETree", file: !22, line: 32, size: 320, align: 64, elements: !24)
!24 = !{!25, !26, !27, !38, !39, !40}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nfront", scope: !23, file: !22, line: 33, baseType: !15, size: 32, align: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !23, file: !22, line: 34, baseType: !15, size: 32, align: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !23, file: !22, line: 35, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !30, line: 15, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !30, line: 16, size: 256, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !31, file: !30, line: 17, baseType: !15, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !31, file: !30, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !31, file: !30, line: 19, baseType: !19, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !31, file: !30, line: 20, baseType: !19, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !31, file: !30, line: 21, baseType: !19, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nodwghtsIV", scope: !23, file: !22, line: 36, baseType: !9, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "bndwghtsIV", scope: !23, file: !22, line: 37, baseType: !9, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "vtxToFrontIV", scope: !23, file: !22, line: 38, baseType: !9, size: 64, align: 64, offset: 256)
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !6, file: !1, line: 15, type: !20)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfront", scope: !6, file: !1, line: 17, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !6, file: !1, line: 17, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newToOldIV", scope: !6, file: !1, line: 18, type: !9)
!46 = !DISubprogram(name: "ETree_oldToNewFrontPerm", scope: !1, file: !1, line: 51, type: !7, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_oldToNewFrontPerm, variables: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !46, file: !1, line: 52, type: !20)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfront", scope: !46, file: !1, line: 54, type: !15)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !46, file: !1, line: 54, type: !15)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldToNewIV", scope: !46, file: !1, line: 55, type: !9)
!52 = !DISubprogram(name: "ETree_newToOldVtxPerm", scope: !1, file: !1, line: 88, type: !7, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_newToOldVtxPerm, variables: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !52, file: !1, line: 89, type: !20)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !52, file: !1, line: 91, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "front", scope: !52, file: !1, line: 91, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfront", scope: !52, file: !1, line: 91, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !52, file: !1, line: 91, type: !15)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !52, file: !1, line: 91, type: !15)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "head", scope: !52, file: !1, line: 92, type: !19)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "link", scope: !52, file: !1, line: 92, type: !19)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newToOld", scope: !52, file: !1, line: 92, type: !19)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtxToFront", scope: !52, file: !1, line: 92, type: !19)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newToOldVtxIV", scope: !52, file: !1, line: 93, type: !9)
!65 = !DISubprogram(name: "ETree_oldToNewVtxPerm", scope: !1, file: !1, line: 154, type: !7, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_oldToNewVtxPerm, variables: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !65, file: !1, line: 155, type: !20)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !65, file: !1, line: 157, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "front", scope: !65, file: !1, line: 157, type: !15)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfront", scope: !65, file: !1, line: 157, type: !15)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !65, file: !1, line: 157, type: !15)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !65, file: !1, line: 157, type: !15)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "head", scope: !65, file: !1, line: 158, type: !19)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "link", scope: !65, file: !1, line: 158, type: !19)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldToNew", scope: !65, file: !1, line: 158, type: !19)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtxToFront", scope: !65, file: !1, line: 158, type: !19)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldToNewVtxIV", scope: !65, file: !1, line: 159, type: !9)
!78 = !DISubprogram(name: "ETree_permuteVertices", scope: !1, file: !1, line: 221, type: !79, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ETree*, %struct._IV*)* @ETree_permuteVertices, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !20, !9}
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !78, file: !1, line: 222, type: !20)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vtxOldToNewIV", arg: 2, scope: !78, file: !1, line: 223, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !78, file: !1, line: 225, type: !15)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !78, file: !1, line: 225, type: !15)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldToNew", scope: !78, file: !1, line: 226, type: !19)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !78, file: !1, line: 226, type: !19)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtxToFront", scope: !78, file: !1, line: 226, type: !19)
!89 = !{i32 2, !"Dwarf Version", i32 2}
!90 = !{i32 2, !"Debug Info Version", i32 700000003}
!91 = !{i32 1, !"PIC Level", i32 2}
!92 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!93 = !DIExpression()
!94 = !DILocation(line: 15, column: 12, scope: !6)
!95 = !DILocation(line: 24, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 7)
!97 = !DILocation(line: 25, column: 4, scope: !96)
!98 = !DILocation(line: 25, column: 24, scope: !96)
!99 = !{!100, !101, i64 0}
!100 = !{!"_ETree", !101, i64 0, !101, i64 4, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!"any pointer", !102, i64 0}
!105 = !DILocation(line: 17, column: 7, scope: !6)
!106 = !DILocation(line: 25, column: 32, scope: !96)
!107 = !DILocation(line: 26, column: 4, scope: !96)
!108 = !DILocation(line: 26, column: 22, scope: !96)
!109 = !{!100, !101, i64 4}
!110 = !DILocation(line: 17, column: 15, scope: !6)
!111 = !DILocation(line: 26, column: 28, scope: !96)
!112 = !DILocation(line: 24, column: 7, scope: !6)
!113 = !DILocation(line: 27, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !96, file: !1, line: 26, column: 35)
!115 = !{!104, !104, i64 0}
!116 = !DILocation(line: 27, column: 4, scope: !114)
!117 = !DILocation(line: 29, column: 4, scope: !114)
!118 = !DILocation(line: 31, column: 14, scope: !6)
!119 = !DILocation(line: 18, column: 8, scope: !6)
!120 = !DILocation(line: 32, column: 1, scope: !6)
!121 = !DILocation(line: 38, column: 30, scope: !6)
!122 = !{!100, !104, i64 8}
!123 = !DILocation(line: 38, column: 36, scope: !6)
!124 = !DILocation(line: 38, column: 1, scope: !6)
!125 = !DILocation(line: 40, column: 1, scope: !6)
!126 = !DILocation(line: 52, column: 12, scope: !46)
!127 = !DILocation(line: 61, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !46, file: !1, line: 61, column: 7)
!129 = !DILocation(line: 62, column: 4, scope: !128)
!130 = !DILocation(line: 62, column: 24, scope: !128)
!131 = !DILocation(line: 54, column: 7, scope: !46)
!132 = !DILocation(line: 62, column: 32, scope: !128)
!133 = !DILocation(line: 63, column: 4, scope: !128)
!134 = !DILocation(line: 63, column: 22, scope: !128)
!135 = !DILocation(line: 54, column: 15, scope: !46)
!136 = !DILocation(line: 63, column: 28, scope: !128)
!137 = !DILocation(line: 61, column: 7, scope: !46)
!138 = !DILocation(line: 64, column: 12, scope: !139)
!139 = distinct !DILexicalBlock(scope: !128, file: !1, line: 63, column: 35)
!140 = !DILocation(line: 64, column: 4, scope: !139)
!141 = !DILocation(line: 66, column: 4, scope: !139)
!142 = !DILocation(line: 68, column: 14, scope: !46)
!143 = !DILocation(line: 55, column: 8, scope: !46)
!144 = !DILocation(line: 69, column: 1, scope: !46)
!145 = !DILocation(line: 75, column: 30, scope: !46)
!146 = !DILocation(line: 75, column: 36, scope: !46)
!147 = !DILocation(line: 75, column: 1, scope: !46)
!148 = !DILocation(line: 77, column: 1, scope: !46)
!149 = !DILocation(line: 89, column: 12, scope: !52)
!150 = !DILocation(line: 99, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !52, file: !1, line: 99, column: 7)
!152 = !DILocation(line: 100, column: 4, scope: !151)
!153 = !DILocation(line: 100, column: 24, scope: !151)
!154 = !DILocation(line: 91, column: 21, scope: !52)
!155 = !DILocation(line: 100, column: 32, scope: !151)
!156 = !DILocation(line: 101, column: 4, scope: !151)
!157 = !DILocation(line: 101, column: 22, scope: !151)
!158 = !DILocation(line: 91, column: 29, scope: !52)
!159 = !DILocation(line: 101, column: 28, scope: !151)
!160 = !DILocation(line: 99, column: 7, scope: !52)
!161 = !DILocation(line: 102, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !151, file: !1, line: 101, column: 35)
!163 = !DILocation(line: 102, column: 4, scope: !162)
!164 = !DILocation(line: 104, column: 4, scope: !162)
!165 = !DILocation(line: 106, column: 32, scope: !52)
!166 = !{!100, !104, i64 32}
!167 = !DILocation(line: 106, column: 14, scope: !52)
!168 = !DILocation(line: 92, column: 33, scope: !52)
!169 = !DILocation(line: 112, column: 17, scope: !52)
!170 = !DILocation(line: 93, column: 8, scope: !52)
!171 = !DILocation(line: 113, column: 1, scope: !52)
!172 = !DILocation(line: 114, column: 12, scope: !52)
!173 = !DILocation(line: 92, column: 22, scope: !52)
!174 = !DILocation(line: 120, column: 8, scope: !52)
!175 = !DILocation(line: 92, column: 8, scope: !52)
!176 = !DILocation(line: 121, column: 8, scope: !52)
!177 = !DILocation(line: 92, column: 15, scope: !52)
!178 = !DILocation(line: 122, column: 1, scope: !179)
!179 = distinct !DILexicalBlock(scope: !52, file: !1, line: 122, column: 1)
!180 = !DILocation(line: 123, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 122, column: 37)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 122, column: 1)
!183 = !{!101, !101, i64 0}
!184 = !DILocation(line: 91, column: 14, scope: !52)
!185 = !DILocation(line: 124, column: 14, scope: !181)
!186 = !DILocation(line: 124, column: 4, scope: !181)
!187 = !DILocation(line: 124, column: 12, scope: !181)
!188 = !DILocation(line: 125, column: 16, scope: !181)
!189 = !DILocation(line: 122, column: 24, scope: !182)
!190 = !DILocation(line: 91, column: 7, scope: !52)
!191 = !DILocation(line: 133, column: 39, scope: !192)
!192 = distinct !DILexicalBlock(scope: !52, file: !1, line: 133, column: 1)
!193 = !DILocation(line: 133, column: 15, scope: !192)
!194 = !DILocation(line: 134, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 133, column: 1)
!196 = !DILocation(line: 133, column: 1, scope: !192)
!197 = !DILocation(line: 136, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 136, column: 4)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 135, column: 53)
!200 = !DILocation(line: 136, column: 30, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 136, column: 4)
!202 = !DILocation(line: 136, column: 4, scope: !198)
!203 = !DILocation(line: 137, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 136, column: 52)
!205 = !DILocation(line: 137, column: 25, scope: !204)
!206 = !DILocation(line: 136, column: 42, scope: !201)
!207 = !DILocation(line: 135, column: 38, scope: !195)
!208 = !DILocation(line: 135, column: 15, scope: !195)
!209 = !DILocation(line: 140, column: 1, scope: !52)
!210 = !DILocation(line: 141, column: 1, scope: !52)
!211 = !DILocation(line: 143, column: 1, scope: !52)
!212 = !DILocation(line: 155, column: 12, scope: !65)
!213 = !DILocation(line: 165, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !65, file: !1, line: 165, column: 7)
!215 = !DILocation(line: 166, column: 4, scope: !214)
!216 = !DILocation(line: 166, column: 24, scope: !214)
!217 = !DILocation(line: 157, column: 21, scope: !65)
!218 = !DILocation(line: 166, column: 32, scope: !214)
!219 = !DILocation(line: 167, column: 4, scope: !214)
!220 = !DILocation(line: 167, column: 22, scope: !214)
!221 = !DILocation(line: 157, column: 29, scope: !65)
!222 = !DILocation(line: 167, column: 28, scope: !214)
!223 = !DILocation(line: 165, column: 7, scope: !65)
!224 = !DILocation(line: 168, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !214, file: !1, line: 167, column: 35)
!226 = !DILocation(line: 168, column: 4, scope: !225)
!227 = !DILocation(line: 170, column: 4, scope: !225)
!228 = !DILocation(line: 172, column: 32, scope: !65)
!229 = !DILocation(line: 172, column: 14, scope: !65)
!230 = !DILocation(line: 158, column: 33, scope: !65)
!231 = !DILocation(line: 178, column: 17, scope: !65)
!232 = !DILocation(line: 159, column: 8, scope: !65)
!233 = !DILocation(line: 179, column: 1, scope: !65)
!234 = !DILocation(line: 180, column: 12, scope: !65)
!235 = !DILocation(line: 158, column: 22, scope: !65)
!236 = !DILocation(line: 186, column: 8, scope: !65)
!237 = !DILocation(line: 158, column: 8, scope: !65)
!238 = !DILocation(line: 187, column: 8, scope: !65)
!239 = !DILocation(line: 158, column: 15, scope: !65)
!240 = !DILocation(line: 188, column: 1, scope: !241)
!241 = distinct !DILexicalBlock(scope: !65, file: !1, line: 188, column: 1)
!242 = !DILocation(line: 189, column: 12, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 188, column: 37)
!244 = distinct !DILexicalBlock(scope: !241, file: !1, line: 188, column: 1)
!245 = !DILocation(line: 157, column: 14, scope: !65)
!246 = !DILocation(line: 190, column: 14, scope: !243)
!247 = !DILocation(line: 190, column: 4, scope: !243)
!248 = !DILocation(line: 190, column: 12, scope: !243)
!249 = !DILocation(line: 191, column: 16, scope: !243)
!250 = !DILocation(line: 188, column: 24, scope: !244)
!251 = !DILocation(line: 157, column: 7, scope: !65)
!252 = !DILocation(line: 199, column: 39, scope: !253)
!253 = distinct !DILexicalBlock(scope: !65, file: !1, line: 199, column: 1)
!254 = !DILocation(line: 199, column: 15, scope: !253)
!255 = !DILocation(line: 200, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 199, column: 1)
!257 = !DILocation(line: 199, column: 1, scope: !253)
!258 = !DILocation(line: 202, column: 14, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 202, column: 4)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 201, column: 53)
!261 = !DILocation(line: 202, column: 30, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 202, column: 4)
!263 = !DILocation(line: 202, column: 4, scope: !259)
!264 = !DILocation(line: 203, column: 26, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 202, column: 52)
!266 = !DILocation(line: 203, column: 7, scope: !265)
!267 = !DILocation(line: 203, column: 19, scope: !265)
!268 = !DILocation(line: 202, column: 42, scope: !262)
!269 = !DILocation(line: 201, column: 38, scope: !256)
!270 = !DILocation(line: 201, column: 15, scope: !256)
!271 = !DILocation(line: 206, column: 1, scope: !65)
!272 = !DILocation(line: 207, column: 1, scope: !65)
!273 = !DILocation(line: 209, column: 1, scope: !65)
!274 = !DILocation(line: 222, column: 13, scope: !78)
!275 = !DILocation(line: 223, column: 13, scope: !78)
!276 = !DILocation(line: 232, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !78, file: !1, line: 232, column: 6)
!278 = !DILocation(line: 232, column: 37, scope: !277)
!279 = !DILocation(line: 232, column: 20, scope: !277)
!280 = !DILocation(line: 233, column: 22, scope: !277)
!281 = !DILocation(line: 225, column: 7, scope: !78)
!282 = !DILocation(line: 233, column: 28, scope: !277)
!283 = !DILocation(line: 233, column: 33, scope: !277)
!284 = !DILocation(line: 233, column: 44, scope: !277)
!285 = !DILocation(line: 233, column: 41, scope: !277)
!286 = !DILocation(line: 232, column: 6, scope: !78)
!287 = !DILocation(line: 234, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !277, file: !1, line: 233, column: 69)
!289 = !DILocation(line: 234, column: 4, scope: !288)
!290 = !DILocation(line: 236, column: 15, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !1, line: 236, column: 9)
!292 = !DILocation(line: 236, column: 40, scope: !291)
!293 = !DILocation(line: 236, column: 23, scope: !291)
!294 = !DILocation(line: 237, column: 15, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 236, column: 50)
!296 = !DILocation(line: 239, column: 22, scope: !295)
!297 = !DILocation(line: 239, column: 28, scope: !295)
!298 = !DILocation(line: 237, column: 7, scope: !295)
!299 = !DILocation(line: 240, column: 4, scope: !295)
!300 = !DILocation(line: 241, column: 4, scope: !288)
!301 = !DILocation(line: 243, column: 32, scope: !78)
!302 = !DILocation(line: 243, column: 14, scope: !78)
!303 = !DILocation(line: 226, column: 26, scope: !78)
!304 = !DILocation(line: 244, column: 14, scope: !78)
!305 = !DILocation(line: 226, column: 8, scope: !78)
!306 = !DILocation(line: 245, column: 8, scope: !78)
!307 = !DILocation(line: 226, column: 19, scope: !78)
!308 = !DILocation(line: 225, column: 13, scope: !78)
!309 = !DILocation(line: 246, column: 1, scope: !310)
!310 = distinct !DILexicalBlock(scope: !78, file: !1, line: 246, column: 1)
!311 = !DILocation(line: 247, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 246, column: 32)
!313 = distinct !DILexicalBlock(scope: !310, file: !1, line: 246, column: 1)
!314 = !DILocation(line: 247, column: 9, scope: !312)
!315 = !DILocation(line: 247, column: 4, scope: !312)
!316 = !DILocation(line: 247, column: 22, scope: !312)
!317 = !DILocation(line: 249, column: 1, scope: !78)
!318 = !DILocation(line: 250, column: 1, scope: !78)
!319 = !DILocation(line: 252, column: 1, scope: !78)
